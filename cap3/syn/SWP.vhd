library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;
use WORK.utils.all;
use WORK.all;

----------------------------------------------------------------------------------------------------
-------         SWP controller. The F-bit (number of windows * 2) circular buffer            -------
-------         enables the register files to spill/fill in the current window. A            -------
-------         FSM drives the interactions between the files and the bus. The               -------
-------         addresses required for reading/writing from/to the RFs are generated         -------
-------         by an overflowing counter.                                                   -------
----------------------------------------------------------------------------------------------------

entity SWP is
	generic (reg_size, N, F: natural);
	port (
		CLK		:	in	std_logic;
		RESET		:	in	std_logic;
		OVERRIDE	:	out	std_logic;				-- Allow SWP to override RF signals with its own.
		ENABLE		:	out	std_logic_vector(F-1 downto 0);
		IOMODE		:	out	std_logic;				-- Selects between I/O RF input or output mode.
		SAVE		:	in	std_logic;
		RESTORE		:	in	std_logic;
		SPILL		:	out	std_logic;
		FILL		:	out	std_logic;
		SELIO		:	out	std_logic;				-- I/O RF selected
		SELLOC		:	out	std_logic;				-- Local RF selected.
		ADDR		:	out	std_logic_vector(log2(N)-1 downto 0);
		DATAIN		:	in	std_logic_vector(reg_size-1 downto 0);
		DATAOUT		:	out	std_logic_vector(reg_size-1 downto 0);
		MBUS		: 	inout	std_logic_vector(reg_size-1 downto 0);
		ACK		: 	in 	std_logic;
		DONE		:	out	std_logic
	);
end entity;

architecture BEHAVIORAL of SWP is

	component CIRCULAR_BUFFER_SHFT2
		generic (N: natural);
		port (
			CLK		:	in	std_logic;
			RESET		:	in	std_logic;			-- Synchronous active-high reset.
			ROTR		:	in	std_logic;			-- Active high.
			ROTL		:	in	std_logic;			-- Active high.
			INIT		:	in	std_logic_vector(N-1 downto 0);	-- Initial configuration of the buffer.
			OUTPUT		:	out	std_logic_vector(N-1 downto 0)
		);
	end component;

	component COUNTER
		generic (N: natural);
		port (
			CLK	:	in	std_logic;
			RESET	:	in	std_logic;
			ENABLE	:	in	std_logic;
			OUTPUT	:	out	std_logic_vector(N-1 downto 0)
		);
	end component;

	signal rotr, rotl : std_logic;
	signal init       : std_logic_vector(F-1 downto 0);

	signal io_mode : std_logic;

	signal counter_enable : std_logic;
	signal addr_s         : std_logic_vector(log2(N)-1 downto 0);
	signal addr_ovf       : std_logic;				-- Detects if add_s is all '1's.

	type SWP_state is (
			s_IDLE,			-- Idle.
			s_SPILL_ACK,		-- Wait for ACK.
			s_SPILL_IO_INIT,	-- Prepare to read from I/O RF.
			s_SPILL_IO,		-- Read from I/O RF.
			s_SPILL_LOC_INIT,	-- Prepare to read from local RF.
			s_SPILL_LOC,		-- Read from local RF.
			s_FILL_ACK,		-- Wait for ACK.
			s_FILL_IO_INIT,		-- Prepare to write to I/O RF.
			s_FILL_IO,		-- Write to I/O RF.
			s_FILL_LOC_INIT,	-- Prepare to write to local RF.
			s_FILL_LOC,		-- Write to local RF.
			s_SPILL_DONE,		-- Signal end of spill.
			s_FILL_DONE);		-- Signal end of fill.

	signal state : SWP_state;

begin
	
	init(  1 downto 0) <= (others => '1');
	init(F-1 downto 2) <= (others => '0');

	buff: CIRCULAR_BUFFER_SHFT2 generic map (F) port map (CLK, RESET, rotr, rotl, init, ENABLE);
	
	state_update: process (CLK, RESET) is begin
		if rising_edge(CLK) then			

			if (RESET = '1') then
				state <= s_IDLE;
			
			else
				case state is
				
					when s_IDLE =>
						if (SAVE = '1') then
							state <= s_SPILL_ACK;
						elsif (RESTORE = '1') then
							state <= s_FILL_ACK;
						else
							state <= s_IDLE;
						end if;

					when s_SPILL_ACK =>
						if (ACK = '1') then
							state <= s_SPILL_IO_INIT;
						else
							state <= s_SPILL_ACK;
						end if;

					when s_SPILL_IO_INIT =>
						state <= s_SPILL_IO;

					when s_SPILL_IO =>
						if (addr_ovf = '1') then
							state <= s_SPILL_LOC_INIT;
						else
							state <= s_SPILL_IO;
						end if;
					
					when s_SPILL_LOC_INIT =>
						state <= s_SPILL_LOC;

					when s_SPILL_LOC =>
						if (addr_ovf = '1') then
							state <= s_SPILL_DONE;
						else
							state <= s_SPILL_LOC;
						end if;

					when s_FILL_ACK =>
						if (ACK = '1') then
							state <= s_FILL_IO_INIT;
						else
							state <= s_FILL_ACK;
						end if;

					when s_FILL_IO_INIT =>
						state <= s_FILL_IO;

					when s_FILL_IO =>
						if (addr_ovf = '1') then
							state <= s_FILL_LOC_INIT;
						else
							state <= s_FILL_IO;
						end if;

					when s_FILL_LOC_INIT =>
						state <= s_FILL_LOC;

					when s_FILL_LOC =>
						if (addr_ovf = '1') then
							state <= s_FILL_DONE;
						else
							state <= s_FILL_LOC;
						end if;

					when s_SPILL_DONE =>
						state <= s_IDLE;

					when s_FILL_DONE =>
						state <= s_IDLE;
						
				end case;
				
			end if;
					
		end if;
	end process;

	
	----- Combinational outputs & internal signals
	IOMODE   <= io_mode;
	rotr     <= '1' when     (state = s_SPILL_DONE)														else '0';
	rotl     <= '1' when     (state = s_FILL_IO_INIT)													else '0';
	OVERRIDE <= '1' when not (state = s_IDLE)														else '0';
	SPILL    <= '1' when     (state = s_SPILL_ACK      or state = s_SPILL_IO_INIT or state = s_SPILL_LOC_INIT or state = s_SPILL_IO or state = s_SPILL_LOC)	else '0';
	FILL     <= '1' when     (state = s_FILL_ACK       or state = s_FILL_IO_INIT  or state = s_FILL_LOC_INIT  or state = s_FILL_IO  or state = s_FILL_LOC)	else '0';
	SELIO    <= '1' when     (state = s_SPILL_IO_INIT  or state = s_SPILL_IO      or state = s_FILL_IO_INIT   or state = s_FILL_IO)				else '0';
	SELLOC   <= '1' when     (state = s_SPILL_LOC_INIT or state = s_SPILL_LOC     or state = s_FILL_LOC_INIT  or state = s_FILL_LOC)			else '0';
	DONE     <= '1' when     (state = s_SPILL_DONE or state = s_FILL_DONE)											else '0';
	

	----- Bus manager
	bus_manager: process (state, addr_ovf, DATAIN, MBUS) is begin
		
		if (state = s_SPILL_IO or state = s_SPILL_LOC) then
			MBUS <= DATAIN;
		elsif (state = s_FILL_IO or state = s_FILL_LOC) then
			DATAOUT <= MBUS;
		else
			MBUS <= (others => 'Z');
		end if;

	end process;

	
	----- Address counter
	addr_counter: COUNTER generic map (log2(N)) port map (CLK, RESET, counter_enable, addr_s);
	
	ADDR           <= addr_s;
	addr_ovf       <= and_reduce(addr_s);
	counter_enable <= '1' when (state = s_SPILL_IO or state = s_SPILL_LOC or state = s_FILL_IO or state = s_FILL_LOC) else '0';


	----- Sequential signals
	seq: process (CLK, RESET, state) is begin

		if rising_edge(CLK) then
			
			if (RESET = '1') then
				io_mode <= '0';
			else
				if (state = s_SPILL_DONE or state = s_FILL_IO_INIT) then
					io_mode <= not io_mode;
				end if;
			end if;

		end if;

	end process;
	

end architecture;
