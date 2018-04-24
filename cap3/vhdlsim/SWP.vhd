library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
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
	generic (N, F: natural);
	port (
		CLK		:	in	std_logic;
		RESET		:	in	std_logic;
		OVERRIDE	:	out	std_logic;
		ENABLE		:	out	std_logic_vector(F-1 downto 0);
		SAVE		:	in	std_logic;
		RESTORE		:	in	std_logic;
		SPILL		:	out	std_logic;
		FILL		:	out	std_logic;
		SELIO		:	out	std_logic;
		SELLOC		:	out	std_logic;
		ADDR		:	out	std_logic_vector(log2(N)-1 downto 0);
		DATAIN		:	in	std_logic_vector(N-1 downto 0);
		DATAOUT		:	out	std_logic_vector(N-1 downto 0);
		MBUS		: 	inout	std_logic_vector(N-1 downto 0);
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
			OUTPUT	:	out	std_logic_vector(N downto 0)
		);
	end component;

	signal rotr, rotl : std_logic;
	signal init       : std_logic_vector(F-1 downto 0);

	signal counter_enable : std_logic;
	signal addr_s         : std_logic_vector(log2(N) downto 0);
	signal addr_ovf       : std_logic;				-- Carry of the counter; used to detect overflow.

	type SWP_state is (s_IDLE, s_SPILL_ACK, s_SPILL_IO, s_SPILL_LOC, s_FILL_ACK, s_FILL_IO, s_FILL_LOC, s_SPILL_DONE, s_FILL_DONE);

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
							state <= s_SPILL_IO;
						else
							state <= s_SPILL_ACK;
						end if;

					when s_SPILL_IO =>
						if (addr_ovf = '1') then
							state <= s_SPILL_LOC;
						else
							state <= s_SPILL_IO;
						end if;

					when s_SPILL_LOC =>
						if (addr_ovf = '1') then
							state <= s_SPILL_DONE;
						else
							state <= s_SPILL_LOC;
						end if;

					when s_FILL_ACK =>
						if (ACK = '1') then
							state <= s_FILL_IO;
						else
							state <= s_FILL_ACK;
						end if;

					when s_FILL_IO =>
						if (addr_ovf = '1') then
							state <= s_FILL_LOC;
						else
							state <= s_FILL_IO;
						end if;

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
	ADDR     <= std_logic_vector(addr_s);
	rotr     <= '1' when     (state = s_SPILL_DONE)                                              else '0';
	rotl     <= '1' when     (state = s_FILL_DONE)                                               else '0';
	OVERRIDE <= '1' when not (state = s_IDLE)                                                    else '0';
	SPILL    <= '1' when     (state = s_SPILL_ACK  or state = s_SPILL_IO or state = s_SPILL_LOC) else '0';
	FILL     <= '1' when     (state = s_FILL_ACK   or state = s_FILL_IO  or state = s_FILL_LOC)  else '0';
	SELIO    <= '1' when     (state = s_SPILL_IO   or state = s_FILL_IO)                         else '0';
	SELLOC   <= '1' when     (state = s_SPILL_LOC  or state = s_FILL_LOC)                        else '0';
	DONE     <= '1' when     (state = s_SPILL_DONE or state = s_FILL_DONE)                       else '0';
	

	----- Bus manager
	bus_manager: process (state) is begin
		
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
	
	ADDR           <= addr_s(log2(N)-1 downto 0);
	addr_ovf       <= addr_s(log2(N));
	counter_enable <= '1' when (state = s_SPILL_IO or state = s_SPILL_LOC or state = s_FILL_IO or state = s_FILL_LOC) else '0';
	

end architecture;
