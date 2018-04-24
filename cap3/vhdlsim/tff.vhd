library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

--------------------------------------------------------------------
-------         T-flip-flop with synchronous reset.          -------
--------------------------------------------------------------------

entity TFF is
	port (
		CLK	:	in	std_logic;
		RESET	:	in	std_logic;
		T	:	in	std_logic;
		Q	:	out	std_logic
	);
end entity;

architecture STRUCTURAL of TFF is

	signal q_s : std_logic;

begin

	Q <= q_s;

	process (CLK, RESET) is begin

		if rising_edge(CLK) then

			if (RESET = '1') then
				q_s <= '0';
			elsif (T = '1') then
				q_s <= not q_s;
			end if;

		end if;

	end process;

end architecture;
