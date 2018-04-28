library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

entity TB_COUNTER is
end TB_COUNTER;

architecture TEST of TB_COUNTER is

	component COUNTER
		generic (N: natural);
		port (
			CLK	:	in	std_logic;
			RESET	:	in	std_logic;
			ENABLE	:	in	std_logic;
			OUTPUT	:	out	std_logic_vector(N downto 0)
		);
	end component;

	constant N : natural := 4;
	constant runtime :time := 17 ns;
	
	signal CLK, RESET, ENABLE :std_logic;
	signal OUTPUT : std_logic_vector(N downto 0);
	signal sum    : std_logic_vector(N-1 downto 0);
	signal carry  : std_logic;

begin

	UUT:COUNTER generic map (N) port map (CLK, RESET, ENABLE, OUTPUT);
	sum   <= OUTPUT(N-1 downto 0);
	carry <= OUTPUT(N);

	stimulus: process is begin

		RESET <= '1';
		wait for 1 ns;

		RESET  <= '0';
		ENABLE <= '1';
		wait for runtime;

		ENABLE <= '0';
		wait for 2 ns;

		wait;

	end process;

	clock: process (CLK) is begin
		if not (CLK = '0' or CLK = '1') then
			CLK <= '0';
		else
			CLK <= not(CLK) after 0.5 ns;
		end if;
	end process;

end architecture;
