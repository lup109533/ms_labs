library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;
use WORK.utils.all;
use WORK.all;

----- GENERAL IDEA
----- 
----- The windowed register file (WRF) is composed of F pairs of register files (RFs) of N entries + 1 M-entry global register file.
----- Each pair is composed of an I/O RF and a local RF.
----- To allow access to only a single window at a time, a 2F-bit circular buffer, stored in a separate CWP control unit, provides
----- a 1-bit enable signal for each RF, except for the global RF, which is controlled by a master enable signal at the top level.
----- Only 3 RFs + 1 global are active at a time. The string of enable bits is read from LSB to MSB (bit 0 goes to I/O RF 0, bit 1 to
----- local RF 0, bit 3 to I/O RF 1 and so on).
----- When a CALL or RETN signal is received by the CWP control unit, the buffer is rotated by two places to left or right respectively,
----- and if a SPILL or FILL condition has been achieved, the CWP controller communicates the proper signal to a separate SWP controller,
----- which reads or writes to the RFs in the WRF accordingly. The SWP controller also employs a 2F-bit circular buffer to access the
----- correct RFs, but this one only activates 2 RFs at a time (a single I/O & local pair). This buffer is also rotated left or right to keep
----- track of the RFs to SPILL next (the buffer is rotated right before FILLing).
----- Read and write signals for the single RFs are derived from the input ADD_WR, ADD_RD1 and ADD_RD2 addresses (more than one RF will receive
----- the same read/write signal, but this is not a problem since only one RF of any kind is active at a time).
----- Of course, if the WR, RD1 or RD2 are not active, no reading or writing will occurr.
----- A final thing to note is the IOMODE signal, employed by both the CWP and SWP controllers, which controls the behaviour of the I/O RF,
----- causing them to behave as inputs or outputs:
-----
----- 		+ IOMODE = '0' is even inputs, odd outputs mode (for example, in window 0, I/O RF 0 is an input while I/O RF 1 is an output)
----- 		+ IOMODE = '1' is odd inputs, even outputs mode (for example, in window 1, I/O RF 1 is an input while I/O RF 2 is an output)
-----
----- The IOMODE signal is toggled at every CALL or RETN for the CWP controller, and at every SPILL or FILL for the SWP controller.

entity windowed_register_file is
	generic (reg_size, M, N, F : natural);
	port (
		CLK: 		IN 	std_logic;
       		RESET:		IN 	std_logic;
		ENABLE: 	IN 	std_logic_vector(2*F downto 0);
		IOMODE:		IN	std_logic;
		RD1: 		IN 	std_logic;
		RD2: 		IN 	std_logic;
		WR: 		IN 	std_logic;
		ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
		OUT1: 		OUT 	std_logic_vector(reg_size-1 downto 0);
		OUT2: 		OUT 	std_logic_vector(reg_size-1 downto 0)
	);
end windowed_register_file;

architecture BEHAVIORAL of windowed_register_file is

        component register_file
 		generic (reg_size, file_size : natural);
 		port (  CLK: 		IN std_logic;
			RESET:		IN std_logic;
			ENABLE: 	IN std_logic;
			RD1: 		IN std_logic;
			RD2: 		IN std_logic;
			WR: 		IN std_logic;
			ADD_WR: 	IN std_logic_vector(log2(file_size)-1 downto 0);
			ADD_RD1: 	IN std_logic_vector(log2(file_size)-1 downto 0);
			ADD_RD2: 	IN std_logic_vector(log2(file_size)-1 downto 0);
			DATAIN: 	IN std_logic_vector(reg_size-1 downto 0);
			OUT1: 		OUT std_logic_vector(reg_size-1 downto 0);
			OUT2: 		OUT std_logic_vector(reg_size-1 downto 0));
	end component;
	
	component PRIORITY_ENCODER
		generic (N: natural);
		port (
			INPUT	:	in	std_logic_vector(N-1 downto 0);
			OUTPUT	:	out	std_logic_vector(log2(N)-1 downto 0)
		);
	end component;

	constant EXTRA_HIGH : natural := log2(M+3*N)-1;				-- MSB of higher part of addresses; used if M > N
	constant EXTRA_LOW  : natural := log2(N)-1+3;				-- LSB of higher part of addresses; used if M > N
	subtype  extra_addr is natural range EXTRA_HIGH downto EXTRA_LOW;

	signal enable_global : std_logic;
	signal global_write, global_read1, global_read2 : std_logic;
	signal addr_global_write, addr_global_read1, addr_global_read2 : std_logic_vector(log2(M)-1 downto 0);
	signal global_out1, global_out2 : std_logic_vector(reg_size-1 downto 0);


	type addr_vector is array(natural range<>) of std_logic_vector(log2(N)-1 downto 0);
	type io_vector is array(natural range<>) of std_logic_vector(reg_size-1 downto 0);

	signal enable_io					: std_logic_vector(F-1 downto 0);
	signal io_write, io_read1, io_read2			: std_logic_vector(F-1 downto 0);
	signal addr_io_write, addr_io_read1, addr_io_read2	: addr_vector(F-1 downto 0);
	signal io_out1, io_out2					: io_vector(F-1 downto 0);

	signal enable_loc					: std_logic_vector(F-1 downto 0);
	signal loc_write, loc_read1, loc_read2			: std_logic_vector(F-1 downto 0);
	signal addr_loc_write, addr_loc_read1, addr_loc_read2	: addr_vector(F-1 downto 0);
	signal loc_out1, loc_out2				: io_vector(F-1 downto 0);

	signal ADD_WR_global, ADD_RD1_global, ADD_RD2_global	: std_logic_vector(log2(M)-1 downto 0);
	signal ADD_WR_io,     ADD_RD1_io,     ADD_RD2_io	: std_logic_vector(log2(N)-1 downto 0);
	signal ADD_WR_local,  ADD_RD1_local,  ADD_RD2_local	: std_logic_vector(log2(N)-1 downto 0);

	signal write_flag1, write_flag2 : std_logic;
	signal read1_flag1, read1_flag2 : std_logic;
	signal read2_flag1, read2_flag2 : std_logic;
	signal extra_write_flag		: std_logic;
	signal extra_read1_flag		: std_logic;
	signal extra_read2_flag		: std_logic;

	signal input_write_selected	: std_logic;
	signal local_write_selected	: std_logic;
	signal output_write_selected	: std_logic;
	signal global_write_selected	: std_logic;

	signal input_read1_selected	: std_logic;
	signal local_read1_selected	: std_logic;
	signal output_read1_selected	: std_logic;
	signal global_read1_selected	: std_logic;

	signal input_read2_selected	: std_logic;
	signal local_read2_selected	: std_logic;
	signal output_read2_selected	: std_logic;
	signal global_read2_selected	: std_logic;

	signal lut_addr_write		: std_logic_vector(extra_addr);
	signal lut_addr_read1		: std_logic_vector(extra_addr);
	signal lut_addr_read2		: std_logic_vector(extra_addr);

	
	signal rf_rollover_flag				: std_logic;
	signal INDEX_io, INDEX_loc			: integer;
	signal encoded_index_io, encoded_index_loc	: std_logic_vector(log2(N)-1 downto 0);

begin 

	----- Generate global register file
	---------------------------------------------------------------------------------------------------------
	global_rf: register_file generic map (reg_size, M) port map(CLK,
								    RESET,
								    enable_global,
								    global_read1,
								    global_read2,
								    global_write,
								    addr_global_write,
								    addr_global_read1,
								    addr_global_read2,
								    DATAIN,
								    global_out1,
								    global_out2
							);


	----- Generate i/o and local register files (I/O register files and local register files handled separately)
	--------------------------------------------------------------------------------------------------------------
	make_rf: for i in 0 to F-1 generate
		
		io_rf: register_file generic map (reg_size, N) port map(CLK,
									 RESET,
									 enable_io(i),
									 io_read1(i),
									 io_read2(i),
									 io_write(i),
									 addr_io_write(i),
									 addr_io_read1(i),
									 addr_io_read2(i),
									 DATAIN,
									 io_out1(i),
									 io_out2(i)
								);
		loc_rf: register_file generic map (reg_size, N) port map(CLK,
									 RESET,
									 enable_loc(i),
									 loc_read1(i),
									 loc_read2(i),
									 loc_write(i),
									 addr_loc_write(i),
									 addr_loc_read1(i),
									 addr_loc_read2(i),
									 DATAIN,
									 loc_out1(i),
									 loc_out2(i)
								);

	end generate;


	----- Address management
	----------------------------------------------------------------------------------------------------------------
	----- Each sub-rf receives a portion of the input address. As an example, assume N = 4 and M = 8:         ------
	----- Total address size log2(M+3*N) = 4.~~ = 5                                                           ------
	-----                                                                                                     ------
	-----                 00000                                                                               ------
	-----                    ^^                                                                               ------
	-----                    ||                                                                               ------
	-----                    These log2(N) bits are used as address for the local and I/O RFs                 ------
	-----                                                                                                     ------
	-----                 00000                                                                               ------
	-----                  ^^                                                                                 ------
	-----                  ||                                                                                 ------
	-----                  These 2 bits are used to distinguish between sub-RFs:                              ------
	-----                                00 = input                                                           ------
	-----                                01 = local                                                           ------
	-----                                10 = output                                                          ------
	-----                                11 = global                                                          ------
	-----                                                                                                     ------
	-----                 00000                                                                               ------
	-----                 ^                                                                                   ------
	-----                 |                                                                                   ------
	-----                 This extra bit is used as an extra flag to check for the global RF selection,       ------
	-----                 as well as being used to extedn the lower log2(N) bits of the address.              ------
	-----                 If more than one extra bit is present, an or reduction of all the bits is used      ------
	-----                 as the extra flag and the correct address is obtained by means of a LUT             ------
	-----                 (correct_address = current_address - 3).                                            ------
	----------------------------------------------------------------------------------------------------------------

	write_flag1 <= ADD_WR(log2(N)-1+2);
	write_flag2 <= ADD_WR(log2(N)-1+1);

	read1_flag1 <= ADD_RD1(log2(N)-1+2);
	read1_flag2 <= ADD_RD1(log2(N)-1+1);

	read2_flag1 <= ADD_RD2(log2(N)-1+2);
	read2_flag2 <= ADD_RD2(log2(N)-1+1);

	input_write_selected  <= (not write_flag1 and not write_flag2) and not extra_write_flag;	-- "00" = input
	local_write_selected  <= (not write_flag1 and     write_flag2) and not extra_write_flag;	-- "01" = local
	output_write_selected <= (   write_flag1  and not write_flag2) and not extra_write_flag;	-- "10" = output
	global_write_selected <= (   write_flag1  and     write_flag2) or      extra_write_flag;	-- "11" = global

	input_read1_selected  <= (not read1_flag1 and not read1_flag2) and not extra_read1_flag;	-- "00" = input
	local_read1_selected  <= (not read1_flag1 and     read1_flag2) and not extra_read1_flag;	-- "01" = local
	output_read1_selected <= (    read1_flag1 and not read1_flag2) and not extra_read1_flag;	-- "10" = output
	global_read1_selected <= (    read1_flag1 and     read1_flag2) or      extra_read1_flag;	-- "11" = global

	input_read2_selected  <= (not read2_flag1 and not read2_flag2) and not extra_read2_flag;	-- "00" = input
	local_read2_selected  <= (not read2_flag1 and     read2_flag2) and not extra_read2_flag;	-- "01" = local
	output_read2_selected <= (    read2_flag1 and not read2_flag2) and not extra_read2_flag;	-- "10" = output
	global_read2_selected <= (    read2_flag1 and     read2_flag2) or      extra_read2_flag;	-- "11" = global


	----- I/O addresses
	----------------------------------------------------------------------------------------------------------------
	ADD_WR_io  <= ADD_WR(log2(N)-1 downto 0);
	ADD_RD1_io <= ADD_RD1(log2(N)-1 downto 0);
	ADD_RD2_io <= ADD_RD2(log2(N)-1 downto 0);

	----- Local addresses
	----------------------------------------------------------------------------------------------------------------
	ADD_WR_local  <= ADD_WR(log2(N)-1 downto 0);
	ADD_RD1_local <= ADD_RD1(log2(N)-1 downto 0);
	ADD_RD2_local <= ADD_RD2(log2(N)-1 downto 0);

	----- Global addresses
	----------------------------------------------------------------------------------------------------------------
	-- M > N; address exceeds other RF addresses by 1: extend with MSB
	----------------------------------------------------------------------------------------------------------------
	global_address_M_grt_N_1: if (M > N and log2(M) = log2(N)+1) generate
		ADD_WR_global  <= ADD_WR(log2(M+3*N)-1)  & ADD_WR(log2(N)-1  downto 0);
		ADD_RD1_global <= ADD_RD1(log2(M+3*N)-1)  & ADD_RD1(log2(N)-1 downto 0);
		ADD_RD2_global <= ADD_RD2(log2(M+3*N)-1) & ADD_RD2(log2(N)-1 downto 0);

		extra_write_flag <= ADD_WR(log2(M+3*N)-1);	-- Extra flag is MSB of address
		extra_read1_flag <= ADD_RD1(log2(M+3*N)-1);	--
		extra_read2_flag <= ADD_RD2(log2(M+3*N)-1);	--
	end generate; 

	----------------------------------------------------------------------------------------------------------------
	-- M > N; address exceeds other RF addresses by more than 1: use LUT to extend
	----------------------------------------------------------------------------------------------------------------
	global_address_M_grt_N_2: if (M > N and log2(M) > log2(N)+1) generate
		global_addr_LUT: process (ADD_WR, ADD_RD1, ADD_RD2) is
			variable write_temp : integer;
			variable read1_temp : integer;
			variable read2_temp : integer;
		begin
			write_temp := to_integer(unsigned(ADD_WR(extra_addr)))  - 3;
			read1_temp := to_integer(unsigned(ADD_RD1(extra_addr))) - 3;
			read2_temp := to_integer(unsigned(ADD_RD2(extra_addr))) - 3;
		
			lut_addr_write <= std_logic_vector(to_unsigned(write_temp, lut_addr_write'length));
			lut_addr_read1 <= std_logic_vector(to_unsigned(read1_temp, lut_addr_read1'length));
			lut_addr_read2 <= std_logic_vector(to_unsigned(read2_temp, lut_addr_read2'length));
		end process;

		ADD_WR_global  <= lut_addr_write & ADD_WR(log2(N)-1  downto 0);
		ADD_RD1_global <= lut_addr_read1 & ADD_RD1(log2(N)-1 downto 0);
		ADD_RD2_global <= lut_addr_read2 & ADD_RD2(log2(N)-1 downto 0);

		extra_write_flag <= or_reduce(ADD_WR(extra_addr));	-- Extra flag is or reduction of MSBs of address
		extra_read1_flag <= or_reduce(ADD_RD1(extra_addr));	--
		extra_read2_flag <= or_reduce(ADD_RD2(extra_addr));	--
	end generate; 

	----------------------------------------------------------------------------------------------------------------
	-- M <= N: no extension necessary
	----------------------------------------------------------------------------------------------------------------
	global_address_M_let_N: if (M <= N) generate
		ADD_WR_global  <= ADD_WR(log2(M)-1 downto 0);
		ADD_RD1_global <= ADD_RD1(log2(M)-1 downto 0);
		ADD_RD2_global <= ADD_RD2(log2(M)-1 downto 0);

		extra_write_flag <= '0';	-- No extra flag
		extra_read1_flag <= '0';	--
		extra_read2_flag <= '0';	--
	end generate; 


	----- Address assignment
	----------------------------------------------------------------------------------------------------------------
	addr_global_write <= ADD_WR_global;
	addr_global_read1 <= ADD_RD1_global;
	addr_global_read2 <= ADD_RD2_global;

	addr_io_write <= (others => ADD_WR_io);
	addr_io_read1 <= (others => ADD_RD1_io);
	addr_io_read2 <= (others => ADD_RD2_io);

	addr_loc_write <= (others => ADD_WR_local);
	addr_loc_read1 <= (others => ADD_RD1_local);
	addr_loc_read2 <= (others => ADD_RD2_local);


	----- Write & read signal management
	-----------------------------------------------------------------------------------------------
	----- Global RF has fixed read/write signals
	-----------------------------------------------------------------------------------------------
	global_write <= global_write_selected and WR;
	global_read1 <= global_read1_selected and RD1;
	global_read2 <= global_read2_selected and RD2;

	read_write_signal_proc: process (WR, RD1, RD2, IOMODE,
					 input_write_selected,  input_read1_selected,  input_read2_selected,
					 local_write_selected,  local_read1_selected,  local_read2_selected,
					 output_write_selected, output_read1_selected, output_read2_selected) is
	begin
		-----------------------------------------------------------------------------------------------
		----- All local RFs have same read/write signals (disabled RFs cannot write or read)
		-----------------------------------------------------------------------------------------------
		for i in 0 to F-1 loop
			loc_write(i) <= local_write_selected and WR;
			loc_read1(i) <= local_read1_selected and RD1;
			loc_read2(i) <= local_read2_selected and RD2;
		end loop;

		-----------------------------------------------------------------------------------------------
		----- I/O RFs receive different read/write signals according to their mode,
		----- e.g I/O RF 1 is the output RF of window 0, but the input RF of window 1
		-----------------------------------------------------------------------------------------------
		if (IOMODE = '0') then
			for i in 0 to F/2-1 loop
				io_write(2*i)   <=  input_write_selected and WR;
				io_write(2*i+1) <= output_write_selected and WR;
				io_read1(2*i)   <=  input_read1_selected and RD1;
				io_read1(2*i+1) <= output_read1_selected and RD1;
				io_read2(2*i)   <=  input_read2_selected and RD2;
				io_read2(2*i+1) <= output_read2_selected and RD2;
			end loop;
		else
			for i in 0 to F/2-1 loop
				io_write(2*i)   <= output_write_selected and WR;
				io_write(2*i+1) <=  input_write_selected and WR;
				io_read1(2*i)   <= output_read1_selected and RD1;
				io_read1(2*i+1) <=  input_read1_selected and RD1;
				io_read2(2*i)   <= output_read2_selected and RD2;
				io_read2(2*i+1) <=  input_read2_selected and RD2;
			end loop;
		end if;

	end process;

	
	----- Enable management
	-----------------------------------------------------------------------------------------------
	----- Assigns the enables to their corresponding RFs, for example:                        -----
	-----                                                                                     -----
	-----            enable = 0_0_0_0_0_1_1_1_1                                               -----
	-----                                                                                     -----
	-----            enable(0) = 1   <-- Always for global RF                                 -----
	-----            enable(1) = 1   <-- For I/O   RF 0 (in this case input)                  -----
	-----            enable(2) = 1   <-- For local RF 0                                       -----
	-----            enable(3) = 1   <-- For I/O   RF 1 (in this case output)                 -----
	-----            enable(4) = 0   <-- For local RF 1 (disabled)                            -----
	-----            enable(5) = 0   <-- For I/O   RF 2 (disabled)                            -----
	-----            enable(6) = 0   <-- For local RF 2 (disabled)                            -----
	-----            enable(7) = 0   <-- For I/O   RF 3 (disabled)                            -----
	-----            enable(8) = 0   <-- For local RF 3 (disabled)                            -----
	-----------------------------------------------------------------------------------------------
	enable_global <= ENABLE(0);
	IO_LOC_enables: for i in 0 to F-1 generate
		
		enable_io(i)  <= ENABLE(2*i+1);
		enable_loc(i) <= ENABLE(2*i+2);

	end generate;

	----- Output management
	-----------------------------------------------------------------------------------------------------
	---- Checks whether register files have been saved: in this case, the first RF is the output
	---- while the last two are the input and the local RFs. E.g. 11000001_1 is a cas of rollover
	---- (RF 1 is output while RF 7 and 8 are the input and output respectively, RF 0 is the global RF).
	-----------------------------------------------------------------------------------------------------
	rf_rollover_flag <= ENABLE(1) and ENABLE(2*F) and ENABLE(2*F-1); 


	-----------------------------------------------------------------------------------------------------
	----- Connects the output of the correct RF to the output of the whole entity.
	-----------------------------------------------------------------------------------------------------
	output_manager: process (IOMODE, rf_rollover_flag, INDEX_io, INDEX_loc,
				 io_out1, io_out2, loc_out1, loc_out2, global_out1, global_out2,
				 input_read1_selected,  input_read2_selected,
				 local_read1_selected,  local_read2_selected,
				 output_read1_selected, output_read2_selected,
				 global_read1_selected, global_read2_selected) is
	begin
		
	----------------------------------------------------------------- Read1
		if (input_read1_selected = '1') then
		--------
			if (IOMODE = '0') then
				OUT1 <= io_out1(INDEX_io);	-- Even inputs, odd outputs mode
			else
				OUT1 <= io_out1(INDEX_io+1);	-- Odd inputs, even outputs mode
			end if;
		--------

		elsif (local_read1_selected = '1') then
		--------
			OUT1 <= loc_out1(INDEX_loc);
		--------

		elsif (output_read1_selected = '1') then
		--------
			if (rf_rollover_flag = '0') then		----- No rollover, check IOMODE as usual
				if (IOMODE = '0') then
					OUT1 <= io_out1(INDEX_io+1);	-- Even inputs, odd outputs mode
				else
					OUT1 <= io_out1(INDEX_io);	-- Odd inputs, even outputs mode
				end if;
			else
				OUT1 <= io_out1(0);			----- Rollover has occurred, output is I/O RF 0
			end if;
		--------

		elsif (global_read1_selected = '1') then
		--------
			OUT1 <= global_out1;
		--------

		end if;
	----------------------------------------------------------------- End Read1
	--||||||||||||--
	--||||||||||||--
	----------------------------------------------------------------- Read2 (same comments of Read1 apply here)
		if (input_read2_selected = '1') then
		--------
			if (IOMODE = '0') then
				OUT2 <= io_out2(INDEX_io);
			else
				OUT2 <= io_out2(INDEX_io+1);
			end if;
		--------

		elsif (local_read2_selected = '1') then
		--------
			OUT2 <= loc_out2(INDEX_loc);
		--------

		elsif (output_read2_selected = '1') then
		--------
			if (rf_rollover_flag = '0') then
				if (IOMODE = '0') then
					OUT2 <= io_out2(INDEX_io+1);
				else
					OUT2 <= io_out2(INDEX_io);
				end if;
			else
				OUT2 <= io_out2(0);
			end if;
		--------

		elsif (global_read2_selected = '1') then
		--------
			OUT2 <= global_out2;
		--------

		end if;
	----------------------------------------------------------------- End Read2

	end process;


	----- INDEX management
	---------------------------------------------------------------------------------------------------------
	----- The index  of the output is obtained by means of a priority encoder that encodes the          -----
	----- enable signal of the I/O and local RFs respectively, e.g. enable_io = 0101 --> INDEX_io = 0.  -----
	---------------------------------------------------------------------------------------------------------
	INDEX_io  <= to_integer(unsigned(encoded_index_io));
	INDEX_loc <= to_integer(unsigned(encoded_index_loc));
	index_gen_io:  PRIORITY_ENCODER generic map (F) port map (enable_io,  encoded_index_io);
	index_gen_loc: PRIORITY_ENCODER generic map (F) port map (enable_loc, encoded_index_loc);

end architecture;
