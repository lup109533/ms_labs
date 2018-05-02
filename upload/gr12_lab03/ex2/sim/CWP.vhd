library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

----------------------------------------------------------------------------------------------------
-------         CWP controller. Consists of a N-bit circular buffer, where N is the          -------
-------         total number of register files in the windowed register file, which          -------
-------         drives the enables of said register files, and a simple FSM to               -------
-------         control its behavior in response to CALL and SUB, and also to                -------
-------         generate SAVE and RESTORE signals.                                           -------
----------------------------------------------------------------------------------------------------

entity CWP is
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
end entity;

architecture BEHAVIORAL of CWP is

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

	type CWP_state is (
		s_IDLE,		-- Idle.
		s_CALL,		-- Activate rotation (move window forwards). If spill is required, go to s_SAVE.
		s_RETN,		-- Activate rotation (move window backwards). If fill is required, go to s_RESTORE.
		s_SAVE,		-- Raise the SPILL signal and wait until DONE is raised.
		s_RESTORE);	-- Raise the FILL signal and wait until DONE is raised.
	
	signal rotr, rotl : std_logic;
	signal init       : std_logic_vector(N-1 downto 0);

	signal io_mode    : std_logic;
	
	signal state : CWP_state;

begin

	init(  2 downto 0) <= (others => '1');
	init(N-1 downto 3) <= (others => '0');

	buff: CIRCULAR_BUFFER_SHFT2 generic map (N) port map (CLK, RESET, rotr, rotl, init, ENABLE);
	

	----- State update logic
	state_update: process (CLK, RESET) is begin
		if rising_edge(CLK) then
		
			if (RESET = '1') then
				state   <= s_IDLE;
			
			else
				case state is
				
					when s_IDLE =>
						if (CALL = '1') then
							state <= s_CALL;
						elsif (RETN = '1') then
							state <= s_RETN;
						else
							state <= s_IDLE;
						end if;			
					
					when s_CALL =>
						if (CANSAVE = '0') then
							state <= s_SAVE;
						elsif (CALL = '1') then
							state <= s_CALL;
						elsif (RETN = '1') then
							state <= s_RETN;
						else
							state <= s_IDLE;
						end if;
						
					when s_SAVE =>
						if (DONE = '1') then
							if (CALL = '1') then
								state <= s_CALL;
							elsif (RETN = '1') then
								state <= s_RETN;
							else
								state <= s_IDLE;
							end if;
						else
							state <= s_SAVE;
						end if;
					
						
					when s_RETN =>
						if (CANRESTORE = '0') then
							state <= s_RESTORE;
						elsif (CALL = '1') then
							state <= s_CALL;
						elsif (RETN = '1') then
							state <= s_RETN;
						else
							state <= s_IDLE;
						end if;
				
					when s_RESTORE =>
						if (DONE = '1') then
							if (CALL = '1') then
								state <= s_CALL;
							elsif (RETN = '1') then
								state <= s_RETN;
							else
								state <= s_IDLE;
							end if;
						else
							state <= s_RESTORE;
						end if;	

				end case;
				
			end if;
					
		end if;
	end process;


	----- Combinatorial outputs & internal signals
	IOMODE  <= io_mode;
	SAVE    <= '1' when (state = s_SAVE)    else '0';
	RESTORE <= '1' when (state = s_RESTORE) else '0';
	rotr    <= '1' when (state = s_CALL)    else '0';
	rotl    <= '1' when (state = s_RETN)    else '0';


	----- Sequential signals
	seq: process (CLK, RESET, state) is begin

		if rising_edge(CLK) then
			
			if (RESET = '1') then
				io_mode <= '0';
			else
				if (state = s_CALL or state = s_RETN) then
					io_mode <= not io_mode;
				end if;
			end if;

		end if;

	end process;

end architecture;
