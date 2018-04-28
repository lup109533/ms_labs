library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

----------------------------------------------------------------------------------
-------         N-bit overflowing counter with synchronous reset.          -------
----------------------------------------------------------------------------------

entity COUNTER is
	generic (N: natural);
	port (
		CLK	:	in	std_logic;
		RESET	:	in	std_logic;
		ENABLE	:	in	std_logic;
		OUTPUT	:	out	std_logic_vector(N-1 downto 0)
	);
end entity;

architecture STRUCTURAL of COUNTER is

	signal counter : unsigned(N-1 downto 0);

begin

	count:process (CLK, RESET, ENABLE) is begin

		if (RESET = '1') then
			counter <= (others => '0');
		elsif rising_edge(CLK) and (ENABLE = '1') then
			counter <= counter + 1;
		end if; 

	end process;

	OUTPUT <= std_logic_vector(counter);

end architecture;
