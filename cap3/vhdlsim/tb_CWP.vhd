library IEEE;

use IEEE.std_logic_1164.all;
use WORK.utils.all;

entity TB_CWP is
end TB_CWP;

architecture TESTA of TB_CWP is

	component CWP
		generic (N: natural);
		port (
			CLK		:	in	std_logic;
			RESET		:	in	std_logic;
			CANSAVE		:	in	std_logic;
			CANRESTORE	:	in	std_logic;
			CALL		:	in	std_logic;
			RETN		:	in	std_logic;
			ENABLE		:	out	std_logic_vector(N-1 downto 0);
			SAVE		:	out	std_logic;
			RESTORE		:	out	std_logic;
			IOMODE		:	out	std_logic;			-- Used to alternate between I/O modes of the I/O RFs (even inputs, odd outputs = '0', or viceversa = '1').
			DONE		:	in	std_logic			-- To check whether SAVE or RESTORE operation is complete.
		);
	end component;

	signal CLK        : std_logic := '0';
	signal RESET      : std_logic;
	signal CANSAVE    : std_logic;
	signal CANRESTORE : std_logic;
	signal CALL       : std_logic;
	signal RETN       : std_logic;
	signal ENABLE     : std_logic_vector(31 downto 0);
	signal SAVE       : std_logic;
	signal RESTORE    : std_logic;
	signal IOMODE     : std_logic;
	signal DONE       : std_logic;

begin 

	UUT: CWP generic map(32) port map(CLK, RESET, CANSAVE, CANRESTORE, CALL, RETN, ENABLE, SAVE, RESTORE, IOMODE, DONE);
	
	CANSAVE    <= '0';
	CANRESTORE <= '0';

	stimulus: process is begin

		RESET <= '1';
		wait for 2 ns;

		RESET <= '0';
		CALL  <= '1';
		RETN  <= '0';
		DONE  <= '0';
		wait for 4 ns;

		CALL  <= '0';
		RETN  <= '1';
		DONE  <= '0';
		wait for 4 ns;

		CALL  <= '1';
		RETN  <= '0';
		DONE  <= '0';
		wait for 100 ns;

		CALL  <= '0';
		RETN  <= '1';
		DONE  <= '0';
		wait for 100 ns;

		wait;

	end process;


	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;
