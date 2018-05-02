library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

---------------------------------------------------------------------------------------------------------------------------------
-----     Top-level entity to connect all components together. See windowed_registerfile.vhd for more information about     -----
-----     the operation of the overall architecture.                                                                        -----
---------------------------------------------------------------------------------------------------------------------------------


entity TOP_LEVEL_WINDOWED_REGISTER_FILE is
	generic (reg_size, M, N, F : natural);
	port (
		CLK: 		IN 	std_logic;
		RESET:		IN 	std_logic;
		ENABLE: 	IN 	std_logic;
		RD1: 		IN 	std_logic;
		RD2: 		IN 	std_logic;
		WR: 		IN 	std_logic;
		ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
		OUT1: 		OUT 	std_logic_vector(reg_size-1 downto 0);
		OUT2: 		OUT 	std_logic_vector(reg_size-1 downto 0);
		CALL:		IN	std_logic;
		RETN:		IN	std_logic;
		SPILL:		OUT	std_logic;
		FILL:		OUT	std_logic;
		CANSAVE:	IN	std_logic;
		CANRESTORE:	IN	std_logic;
		ACK:		IN	std_logic;
		MBUS:		INOUT	std_logic_vector(reg_size-1 downto 0)
	);
end entity;

architecture STRUCTURAL of TOP_LEVEL_WINDOWED_REGISTER_FILE is

	component INPUT_FILTER
		generic (reg_size, M, N, F : natural);
		port (
			--- Master enable
			MASTER_ENABLE:	IN	std_logic;
			--- Input signals
			IN_ENABLE: 	IN 	std_logic_vector(2*F-1 downto 0);
			IN_IOMODE:	IN	std_logic;
			IN_RD1: 	IN 	std_logic;
			IN_RD2: 	IN 	std_logic;
			IN_WR: 		IN 	std_logic;
			IN_ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			IN_ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			IN_ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			IN_DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
			--- Override signal
			OV_ENABLE: 	IN 	std_logic_vector(2*F-1 downto 0);
			OV_IOMODE:	IN	std_logic;
			OV_RD1: 	IN 	std_logic;
			OV_RD2: 	IN 	std_logic;
			OV_WR: 		IN 	std_logic;
			OV_ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			OV_ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			OV_ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			OV_DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
			--- Override
			OVERRIDE:	IN	std_logic;
			--- Outputs
			OUT_ENABLE: 	OUT 	std_logic_vector(2*F-1 downto 0);
			OUT_IOMODE:	OUT	std_logic;
			OUT_RD1: 	OUT 	std_logic;
			OUT_RD2: 	OUT 	std_logic;
			OUT_WR: 	OUT 	std_logic;
			OUT_ADD_WR: 	OUT 	std_logic_vector(log2((N*3+M))-1 downto 0);
			OUT_ADD_RD1: 	OUT 	std_logic_vector(log2((N*3+M))-1 downto 0);
			OUT_ADD_RD2: 	OUT 	std_logic_vector(log2((N*3+M))-1 downto 0);
			OUT_DATAIN: 	OUT 	std_logic_vector(reg_size-1 downto 0)
		);
	end component;

	component CWP
		generic (N: natural);
		port (
			CLK		:	in	std_logic;
			RESET		:	in	std_logic;
			CANSAVE		:	in 	std_logic;
			CANRESTORE	:	in 	std_logic;
			CALL		:	in	std_logic;
			RETN		:	in	std_logic;
			ENABLE		:	out	std_logic_vector(N-1 downto 0);
			SAVE		:	out 	std_logic;
			RESTORE		:	out 	std_logic;
			IOMODE		:	out	std_logic;			-- Used to alternate between I/O modes of the I/O RFs (even inputs, odd outputs = '0', or viceversa = '1').
			DONE		:	in	std_logic			-- To check whether SAVE or RESTORE operation is complete.
		);
	end component;

	component SWP
		generic (reg_size, N, F: natural);
		port (
			CLK		:	in	std_logic;
			RESET		:	in	std_logic;
			OVERRIDE	:	out	std_logic;
			ENABLE		:	out	std_logic_vector(F-1 downto 0);
			IOMODE		:	out	std_logic;
			SAVE		:	in	std_logic;
			RESTORE		:	in	std_logic;
			SPILL		:	out	std_logic;
			FILL		:	out	std_logic;
			SELIO		:	out	std_logic;
			SELLOC		:	out	std_logic;
			ADDR		:	out	std_logic_vector(log2(N)-1 downto 0);
			DATAIN		:	in	std_logic_vector(reg_size-1 downto 0);
			DATAOUT		:	out	std_logic_vector(reg_size-1 downto 0);
			MBUS		: 	inout	std_logic_vector(reg_size-1 downto 0);
			ACK		: 	in 	std_logic;
			DONE		:	out	std_logic
		);
	end component;

	component WINDOWED_REGISTER_FILE
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
	end component;

	-- Input filter signals
	signal ov_read1  : std_logic;
	signal ov_write  : std_logic;
	signal ov_addr   : std_logic_vector(log2((N*3+M))-1 downto 0);
	signal if_enable : std_logic_vector(2*F-1 downto 0);

	-- CWP signals
	signal cwp_enable  : std_logic_vector(2*F-1 downto 0);
	signal cwp_save    : std_logic;
	signal cwp_restore : std_logic;
	signal cwp_iomode  : std_logic;

	-- SWP signal
	signal swp_override : std_logic;
	signal swp_enable   : std_logic_vector(2*F-1 downto 0);
	signal swp_iomode   : std_logic;
	signal swp_spill    : std_logic;
	signal swp_fill     : std_logic;
	signal swp_selio    : std_logic;
	signal swp_selloc   : std_logic;
	signal swp_addr     : std_logic_vector(log2(N)-1 downto 0);
	signal swp_dataout  : std_logic_vector(reg_size-1 downto 0);
	signal swp_done     : std_logic;

	-- Top level signals
	signal s_enable     : std_logic_vector(2*F downto 0);
	signal s_iomode     : std_logic;
	signal s_rd1        : std_logic;
	signal s_rd2        : std_logic;
	signal s_wr         : std_logic;
	signal s_add_rd1    : std_logic_vector(log2((N*3+M))-1 downto 0);
	signal s_add_rd2    : std_logic_vector(log2((N*3+M))-1 downto 0);
	signal s_add_wr     : std_logic_vector(log2((N*3+M))-1 downto 0);
	signal s_datain     : std_logic_vector(reg_size-1 downto 0);
	signal s_out1       : std_logic_vector(reg_size-1 downto 0);
	signal s_out2       : std_logic_vector(reg_size-1 downto 0);
	signal s_cansave    : std_logic;
	signal s_canrestore : std_logic;
	signal s_call       : std_logic;
	signal s_retn       : std_logic;

begin

	----- Input filter
	----------------------------------------------------------
	input: INPUT_FILTER generic map (reg_size, M, N, F)
			    port map (
				MASTER_ENABLE =>	ENABLE,
				---- Input signals
				IN_ENABLE     =>	cwp_enable,
				IN_IOMODE     =>	cwp_iomode,
				IN_RD1        =>	RD1,
				IN_RD2        =>	RD2,
				IN_WR         =>	WR,
				IN_ADD_WR     =>	ADD_WR,
				IN_ADD_RD1    =>	ADD_RD1,
				IN_ADD_RD2    =>	ADD_RD2,
				IN_DATAIN     =>	DATAIN,
				---- Override signals
				OV_ENABLE     =>	swp_enable,
				OV_IOMODE     =>	swp_iomode,
				OV_RD1        =>	ov_read1,
				OV_RD2        =>	'0',
				OV_WR         =>	ov_write,
				OV_ADD_WR     =>	ov_addr,
				OV_ADD_RD1    =>	ov_addr,
				OV_ADD_RD2    =>	ov_addr,
				OV_DATAIN     =>	swp_dataout,
				---- Override
				OVERRIDE      =>	swp_override,
				---- Outputs
				OUT_ENABLE     =>	if_enable,
				OUT_IOMODE     =>	s_iomode,
				OUT_RD1        =>	s_rd1,
				OUT_RD2        =>	s_rd2,
				OUT_WR         =>	s_wr,
				OUT_ADD_WR     =>	s_add_wr,
				OUT_ADD_RD1    =>	s_add_rd1,
				OUT_ADD_RD2    =>	s_add_rd2,
				OUT_DATAIN     =>	s_datain
			    );
	---- Override read and write only active during spills or fills.
	ov_read1  <= swp_spill and (swp_selio or swp_selloc);
	ov_write  <= swp_fill  and (swp_selio or swp_selloc);


	---- Extend address provided by SWP according to SELIO and SELLOC (SWP only provides the lower log2(N) bits).
	ov_addr_proc: process (swp_addr, swp_selio, swp_selloc) is begin

		ov_addr <= (others => '0');

		if (swp_selio = '1') then				-- "00" = input
			ov_addr(log2(N)+1 downto log2(N)) <= "00";
		elsif (swp_selloc = '1') then				-- "11" = local
			ov_addr(log2(N)+1 downto log2(N)) <= "01";
		else							-- Error checking
			ov_addr(log2(N)+1 downto log2(N)) <= "11";
		end if;

		ov_addr(log2(N)-1 downto 0) <= swp_addr;

	end process;

	---- Extend enable signal (global RF active only if ENABLE is high).
	s_enable <= if_enable & (ENABLE and not swp_override);


	----- CWP controller
	----------------------------------------------------------
	cwp_controller: CWP generic map (2*F)
			    port map (
				CLK        =>	CLK,
				RESET      =>	RESET,
				CANSAVE    =>	s_cansave,
				CANRESTORE =>	s_canrestore,
				CALL       =>   s_call,
				RETN       =>	s_retn,
				ENABLE     =>	cwp_enable(2*F-1 downto 0),
				SAVE       =>	cwp_save,
				RESTORE    =>	cwp_restore,
				IOMODE     =>	cwp_iomode,
				DONE       =>	swp_done
			    );
	---- Can receive CALL and RETN signals only if ENABLE is high.
	---- RETN is also disabled if CANRESTORE is low and the LSBs of the enable signal are '1' (another RETN would cause a FILL, which cannot happen).
	s_call <= CALL and ENABLE;
	s_retn <= RETN and ENABLE and (CANRESTORE or not(cwp_enable(0) and cwp_enable(1) and cwp_enable(2)));

	----- CANSAVE & CANRESTORE
	-----------------------------------------------------------------------
	----- CANSAVE and CANRESTORE are external signals that are low    -----
	----- only if RF have already been saved to an external memory.   -----
	----- CANSAVE or CANRESTORE = '0' are sufficient conditions for   -----
	----- SPILL and FILL into/from memory respectively. Another       -----
	----- condition for spill is if the MSBs of the enable signal     -----
	----- are '1', in which case another CALL will cause the buffer   -----
	----- to rotate, thus requiring a SPILL.                          -----
	-----------------------------------------------------------------------
	s_cansave    <= not(cwp_enable(2*F-2) and cwp_enable(2*F-3) and cwp_enable(2*F-4)) and CANSAVE;
	s_canrestore <= CANRESTORE;


	----- SWP controller
	----------------------------------------------------------
	swp_controller: SWP generic map (reg_size, N, 2*F)
			    port map (
				CLK      =>	CLK,
				RESET    =>	RESET,
				OVERRIDE =>	swp_override,
				ENABLE   =>	swp_enable,
				IOMODE   =>	swp_iomode,
				SAVE     =>	cwp_save,
				RESTORE  =>	cwp_restore,
				SPILL    =>	swp_spill,
				FILL     =>	swp_fill,
				SELIO    =>	swp_selio,
				SELLOC   =>	swp_selloc,
				ADDR     =>	swp_addr,
				DATAIN   =>	s_out1,
				DATAOUT  =>	swp_dataout,
				MBUS     =>	MBUS,
				ACK      =>	ACK,
				DONE     =>	swp_done
			    );
	SPILL <= swp_spill;
	FILL  <= swp_fill;


	----- Register file
	----------------------------------------------------------
	rf: WINDOWED_REGISTER_FILE generic map(reg_size, M, N, F)
				   port map (
					CLK     =>	CLK,
					RESET   =>	RESET,
					ENABLE  =>	s_enable,
					IOMODE  =>	s_iomode,
					RD1     =>	s_rd1,
					RD2     =>	s_rd2,
					WR      =>	s_wr,
					ADD_WR  =>	s_add_wr,
					ADD_RD1 =>	s_add_rd1,
					ADD_RD2 =>	s_add_rd2,
					DATAIN  =>	s_datain,
					OUT1    =>	s_out1,
					OUT2    =>	s_out2
				   );
	
	
	----- Output
	----------------------------------------------------------
	out_manager: process (swp_override, s_out1, s_out2) is begin
		if (swp_override = '0') then
			OUT1 <= s_out1;
		end if;

		if (swp_override = '0') then
			OUT2 <= s_out2;
		end if;
	end process;

end architecture;
