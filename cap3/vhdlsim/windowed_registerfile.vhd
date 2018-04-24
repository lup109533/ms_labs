library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

entity windowed_register_file is
 generic (reg_size, M, N, F : natural);
 port ( CLK: 		IN 	std_logic;
        RESET:		IN 	std_logic;
	ENABLE: 	IN 	std_logic;
	RD1: 		IN 	std_logic;
	RD2: 		IN 	std_logic;
	WR: 		IN 	std_logic;
	CALL:		IN 	std_logic;
	RETN:		IN 	std_logic;
	SPILL:		OUT 	std_logic;
	FILL:		OUT 	std_logic;
	ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
	ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
	ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
	DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
        OUT1: 		OUT 	std_logic_vector(reg_size-1 downto 0);
	OUT2: 		OUT 	std_logic_vector(reg_size-1 downto 0);
	MBUS:		INOUT 	std_logic_vector(reg_size-1 downto 0));
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

	signal CWP   : std_logic_vector(log2(F)-1 downto 0);
	signal CWP_i : integer := 0;
	--signal SWP : std_logic_vector(log2(F)-1 downto 0);


	signal enable_global : std_logic;
	signal global_write, global_read1, global_read2 : std_logic;
	signal addr_global_write, addr_global_read1, addr_global_read2 : std_logic_vector(log2(M)-1 downto 0);
	signal global_out1, global_out2 : std_logic_vector(reg_size-1 downto 0);


	type addr_vector is array(natural range<>) of std_logic_vector(log2(N)-1 downto 0);
	type io_vector is array(natural range<>) of std_logic_vector(reg_size-1 downto 0);

	signal enable_io : std_logic_vector(F-1 downto 0);
	signal io_write, io_read1, io_read2 : std_logic_vector(F-1 downto 0);
	signal addr_io_write, addr_io_read1, addr_io_read2 : addr_vector(F-1 downto 0);
	signal io_out1, io_out2 : io_vector(F-1 downto 0);

	signal enable_loc : std_logic_vector(F-1 downto 0);
	signal loc_write, loc_read1, loc_read2 : std_logic_vector(F-1 downto 0);
	signal addr_loc_write, addr_loc_read1, addr_loc_read2 : addr_vector(F-1 downto 0);
	signal loc_out1, loc_out2 : io_vector(F-1 downto 0);

	signal ADD_WR_global, ADD_RD1_global, ADD_RD2_global : std_logic_vector(log2(M)-1 downto 0);
	signal ADD_WR_io,     ADD_RD1_io,     ADD_RD2_io  : std_logic_vector(log2(N)-1 downto 0);
	signal ADD_WR_local,  ADD_RD1_local,  ADD_RD2_local  : std_logic_vector(log2(N)-1 downto 0);

	signal write_flag1, write_flag2 : std_logic;
	signal read1_flag1, read1_flag2 : std_logic;
	signal read2_flag1, read2_flag2 : std_logic;
	
	constant undefined : std_logic_vector(log2(F)-1 downto 0) := (others => 'U');
begin 

	---- Signal to represent integer version of CWP (makes indexing easier)
	---------------------------------------------------------------------------------------------------------
	CWP_i <= to_integer(unsigned(CWP));

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
		ADD_WR_global  <= ADD_WR(log2(M+3*N)-1  downto log2(N)-1+3) & ADD_WR(log2(N)-1 downto 0);
		ADD_RD1_global <= ADD_RD1(log2(M+3*N)-1 downto log2(N)-1+3) & ADD_RD1(log2(N)-1 downto 0);
		ADD_RD2_global <= ADD_RD2(log2(M+3*N)-1 downto log2(N)-1+3) & ADD_RD2(log2(N)-1 downto 0);
	end generate; 

	global_address_M_let_N: if (M <= N) generate
		ADD_WR_global  <= ADD_WR(log2(M)-1 downto 0);
		ADD_RD1_global <= ADD_RD1(log2(M)-1 downto 0);
		ADD_RD2_global <= ADD_RD2(log2(M)-1 downto 0);
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
	global_write <= write_flag1 and write_flag2 and WR;
	global_read1 <= read1_flag1 and read1_flag2 and RD1;
	global_read2 <= read2_flag1 and read2_flag2 and RD2;

	read_write_signal_proc: process (CLK, WR, RD1, RD2, CWP_i, write_flag1, write_flag2, read1_flag1, read1_flag2, read2_flag1, read2_flag2) is begin

		for i in 0 to F-1 loop
			loc_write(i) <= not write_flag1 and write_flag2 and WR;
			loc_read1(i) <= not read1_flag1 and read1_flag2 and RD1;
			loc_read2(i) <= not read2_flag1 and read2_flag2 and RD2;
		end loop;

		if (CWP_i mod 2 = 0) then
			for i in 0 to F/2-1 loop
				io_write(2*i)   <= not write_flag1 and not write_flag2 and WR;
				io_write(2*i+1) <=     write_flag1 and not write_flag2 and WR;
				io_read1(2*i)   <= not read1_flag1 and not read1_flag2 and RD1;
				io_read1(2*i+1) <=     read1_flag1 and not read1_flag2 and RD1;
				io_read2(2*i)   <= not read2_flag1 and not read2_flag2 and RD2;
				io_read2(2*i+1) <=     read2_flag1 and not read2_flag2 and RD2;
			end loop;
		else
			for i in 0 to F/2-1 loop
				io_write(2*i)   <=     write_flag1 and not write_flag2 and WR;
				io_write(2*i+1) <= not write_flag1 and not write_flag2 and WR;
				io_read1(2*i)   <=     read1_flag1 and not read1_flag2 and RD1;
				io_read1(2*i+1) <= not read1_flag1 and not read1_flag2 and RD1;
				io_read2(2*i)   <=     read2_flag1 and not read2_flag2 and RD2;
				io_read2(2*i+1) <= not read2_flag1 and not read2_flag2 and RD2;
			end loop;
		end if;

	end process;

	
	----- Enable management
	-----------------------------------------------------------------------------------------------
	enable_global <= ENABLE;
	enable_window: process (CLK, ENABLE, CWP, CWP_i) is begin
	
		if (CWP = std_logic_vector(to_unsigned(F-1, CWP'length))) then
			enable_io         <= (others => '0');
			enable_io(0)      <= ENABLE;
			enable_io(F-1)    <= ENABLE;
			enable_loc        <= (others => '0');
			enable_loc(CWP_i) <= ENABLE;
		else
			enable_io           <= (others => '0');
			enable_io(CWP_i)    <= ENABLE;
			enable_io(CWP_i+1)  <= ENABLE;
			enable_loc          <= (others => '0');
			enable_loc(CWP_i)   <= ENABLE;
		end if;

	end process;

	
	----- CANSAVE register
	-----------------------------------------------------------------------------------------------
	cansave_proc: process (CLK, CWP) is begin

		if rising_edge(CLK) then
			if (CWP = std_logic_vector(to_unsigned(F-1, CWP'length))) then
				CANSAVE <= '0';
			else
				CANSAVE <= '1';
			end if;
		end if;

	end process;

	----- CWP management
	-----------------------------------------------------------------------------------------------
	cwp_manager: process (CLK, RESET, CALL, RETN) is begin

		if rising_edge(CLK) then

			if RESET = '1' then
				CWP <= (others => '0');
			elsif (CALL = '1') then
				if (CANSAVE = '1') then
					CWP     <= std_logic_vector(unsigned(CWP) + 1);
					spill_s <= '0';
				else
					CWP     <= (others => '0');
					spill_s <= '1';
				end if;
			elsif (RETN = '1') then
				if (CWP = std_logic_vector(to_unsigned(0, CWP'length))) then -- TODO also check SWP 
					CWP <= std_logic_vector(to_unsigned(F-1, CWP'length));
					--SWP = unsigned(SWP) - 1;
				else
					CWP <= std_logic_vector(unsigned(CWP) - 1);
				end if;
			end if;
		end if;

	end process;


	----- Save/Restore management
	-----------------------------------------------------------------------------------------------
	SPILL <= spill_s;
	swp_manager: process (CLK, spill_s) is begin
		
		if (spill_s = '1') then	
			SWP = std_logic_vector(unsigned(SWP) + 1);
			for i in 0 to N-1 loop
				---- 
			end loop;

	end process;

	----- Output management
	-----------------------------------------------------------------------------------------------
	output_manager: process (CLK, CWP, CWP_i, read1_flag1, read1_flag2, read2_flag1, read2_flag2) is begin
		
		----- Read1
		if (read1_flag1 = '0' and read1_flag2 = '0') then	-- 00 = Input
			OUT1 <= io_out1(CWP_i);

		elsif (read1_flag1 = '0' and read1_flag2 = '1') then	-- 01 = Local
			OUT1 <= loc_out1(CWP_i);

		elsif (read1_flag1 = '1' and read1_flag2 = '0') then	-- 10 = Output
			if (CWP = std_logic_vector(to_unsigned(F-1, CWP'length))) then
				OUT1 <= io_out1(0);
			else
				OUT1 <= io_out1(CWP_i+1);
			end if;

		elsif (read1_flag1 = '1' and read1_flag2 = '1') then	-- 11 = Global
			OUT1 <= global_out1;
		
		else
			OUT1 <= global_out1;

		end if;

		----- Read2
		if (read2_flag1 = '0' and read2_flag2 = '0') then	-- 00 = Input
			OUT2 <= io_out2(CWP_i);

		elsif (read2_flag1 = '0' and read2_flag2 = '1') then	-- 01 = Local
			OUT2 <= loc_out2(CWP_i);

		elsif (read2_flag1 = '1' and read2_flag2 = '0') then	-- 10 = Output
			if (CWP = std_logic_vector(to_unsigned(F-1, CWP'length))) then
				OUT2 <= io_out2(0);
			else
				OUT2 <= io_out2(CWP_i+1);
			end if;

		elsif (read1_flag1 = '1' and read1_flag2 = '1') then	-- 11 = Global
			OUT2 <= global_out2;
		
		else
			OUT2 <= global_out2;

		end if;

	end process;

end architecture;
