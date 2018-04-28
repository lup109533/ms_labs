library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;
use WORK.utils.all;
use WORK.all;

entity windowed_register_file is
 generic (reg_size, M, N, F : natural);
 port ( CLK: 		IN 	std_logic;
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
	OUT2: 		OUT 	std_logic_vector(reg_size-1 downto 0));
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

	
	signal rf_rollover_flag				: std_logic;
	signal INDEX_io, INDEX_loc			: integer;
	signal encoded_index_io, encoded_index_loc	: std_logic_vector(log2(N)-1 downto 0);

	signal left_extra_addr  : integer := log2(M+3*N)-1;
	signal right_extra_addr : integer := log2(N)-1+3;

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
	-----                 This extra bit is used to extend the lower log2(N) bits to be used as address       ------
	-----                 for the global rf (could be more than 1 bit, if M <= N, this bit is unnecessary)    ------
	----------------------------------------------------------------------------------------------------------------

	write_flag1 <= ADD_WR(log2(N)-1+2);
	write_flag2 <= ADD_WR(log2(N)-1+1);

	read1_flag1 <= ADD_RD1(log2(N)-1+2);
	read1_flag2 <= ADD_RD1(log2(N)-1+1);

	read2_flag1 <= ADD_RD2(log2(N)-1+2);
	read2_flag2 <= ADD_RD2(log2(N)-1+1);

	input_write_selected  <= (not write_flag1 and not write_flag2) and not extra_write_flag;
	local_write_selected  <= (not write_flag1 and     write_flag2) and not extra_write_flag;
	output_write_selected <= (   write_flag1  and not write_flag2) and not extra_write_flag;
	global_write_selected <= (   write_flag1  and     write_flag2) or      extra_write_flag;

	input_read1_selected  <= (not read1_flag1 and not read1_flag2) and not extra_read1_flag;
	local_read1_selected  <= (not read1_flag1 and     read1_flag2) and not extra_read1_flag;
	output_read1_selected <= (    read1_flag1 and not read1_flag2) and not extra_read1_flag;
	global_read1_selected <= (    read1_flag1 and     read1_flag2) or      extra_read1_flag;

	input_read2_selected  <= (not read2_flag1 and not read2_flag2) and not extra_read2_flag;
	local_read2_selected  <= (not read2_flag1 and     read2_flag2) and not extra_read2_flag;
	output_read2_selected <= (    read2_flag1 and not read2_flag2) and not extra_read2_flag;
	global_read2_selected <= (    read2_flag1 and     read2_flag2) or      extra_read2_flag;


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
	global_address_M_grt_N: if (M > N) generate
		ADD_WR_global  <= ADD_WR(log2(M+3*N)-1  downto log2(N)-1+3) & ADD_WR(log2(N)-1  downto 0);
		ADD_RD1_global <= ADD_RD1(log2(M+3*N)-1 downto log2(N)-1+3) & ADD_RD1(log2(N)-1 downto 0);
		ADD_RD2_global <= ADD_RD2(log2(M+3*N)-1 downto log2(N)-1+3) & ADD_RD2(log2(N)-1 downto 0);

		extra_write_flag <= or_reduce(ADD_WR(log2(M+3*N)-1   downto log2(N)-1+3));
		extra_read1_flag <= or_reduce(ADD_RD1(log2(M+3*N)-1  downto log2(N)-1+3));
		extra_read2_flag <= or_reduce(ADD_RD2(log2(M+3*N)-1  downto log2(N)-1+3));
	end generate; 

	global_address_M_let_N: if (M <= N) generate
		ADD_WR_global  <= ADD_WR(log2(M)-1 downto 0);
		ADD_RD1_global <= ADD_RD1(log2(M)-1 downto 0);
		ADD_RD2_global <= ADD_RD2(log2(M)-1 downto 0);

		extra_write_flag <= '0';
		extra_read1_flag <= '0';
		extra_read2_flag <= '0';
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
	global_write <= global_write_selected and WR;
	global_read1 <= global_read1_selected and RD1;
	global_read2 <= global_read2_selected and RD2;

	read_write_signal_proc: process (WR, RD1, RD2,
					 input_write_selected,  input_read1_selected,  input_read2_selected,
					 local_write_selected,  local_read1_selected,  local_read2_selected,
					 output_write_selected, output_read1_selected, output_read2_selected) is
	begin

		for i in 0 to F-1 loop
			loc_write(i) <= local_write_selected and WR;
			loc_read1(i) <= local_read1_selected and RD1;
			loc_read2(i) <= local_read2_selected and RD2;
		end loop;

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
	enable_global <= ENABLE(0);
	IO_LOC_enables: for i in 0 to F-1 generate
		
		enable_io(i)  <= ENABLE(2*F - 2*i);
		enable_loc(i) <= ENABLE(2*F - (2*i+1));

	end generate;

	----- Output management
	-----------------------------------------------------------------------------------------------

	rf_rollover_flag <= ENABLE(1) and ENABLE(2*F) and ENABLE(2*F-1);	-- Checks whether register files has been saved: in this case, the first RF is the output while the last two are the input and the local RFs.

	output_manager: process (IOMODE, rf_rollover_flag, read1_flag1, read1_flag2, read2_flag1, read2_flag2) is begin
		
		----- Read1
		if (read1_flag1 = '0' and read1_flag2 = '0') then	-- Input = 00
			if (IOMODE = '0') then
				OUT1 <= io_out1(INDEX_io);
			else
				OUT1 <= io_out1(INDEX_io+1);
			end if;

		elsif (read1_flag1 = '0' and read1_flag2 = '1') then	-- Local = 01
			OUT1 <= loc_out1(INDEX_loc);

		elsif (read1_flag1 = '1' and read1_flag2 = '0') then	-- Output = 10
			if (rf_rollover_flag = '0') then
				if (IOMODE = '0') then
					OUT1 <= io_out1(INDEX_io+1);
				else
					OUT1 <= io_out1(INDEX_io);
				end if;
			else
				OUT1 <= io_out1(0);
			end if;
		else							-- Global = 11
			OUT1 <= global_out1;
		end if;

		----- Read2
		if (read2_flag1 = '0' and read2_flag2 = '0') then	-- Input = 00
			if (IOMODE = '0') then
				OUT2 <= io_out2(INDEX_io);
			else
				OUT2 <= io_out2(INDEX_io+1);
			end if;

		elsif (read2_flag1 = '0' and read2_flag2 = '1') then	-- Local = 01
			OUT2 <= loc_out2(INDEX_loc);

		elsif (read2_flag1 = '1' and read2_flag2 = '0') then	-- Output = 10
			if (rf_rollover_flag = '0') then
				if (IOMODE = '0') then
					OUT2 <= io_out2(INDEX_io+1);
				else
					OUT2 <= io_out2(INDEX_io);
				end if;
			else
				OUT2 <= io_out2(0);
			end if;
		else							-- Global = 11
			OUT2 <= global_out2;
		end if;

	end process;


	----- INDEX management
	-----------------------------------------------------------------------------------------------
	INDEX_io  <= to_integer(unsigned(encoded_index_io));
	INDEX_loc <= to_integer(unsigned(encoded_index_loc));
	index_gen_io:  PRIORITY_ENCODER generic map (F) port map (enable_io,  encoded_index_io);
	index_gen_loc: PRIORITY_ENCODER generic map (F) port map (enable_loc, encoded_index_loc);

end architecture;
