library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

----------------------------------------------------------------------------------------------------------------------------
-------         N-bit priority encoder. Encoding stops at first '1' bit from the right, e.g 1100 = 0100 = 3.         -------
----------------------------------------------------------------------------------------------------------------------------

entity PRIORITY_ENCODER is
	generic (N: natural);
	port (
		INPUT	:	in	std_logic_vector(N-1 downto 0);
		OUTPUT	:	out	std_logic_vector(log2(N)-1 downto 0)
	);
end entity;

architecture STRUCTURAL of PRIORITY_ENCODER is
begin

	compress: process (INPUT) is
	begin

		for i in 0 to N-1 loop
			if (INPUT(i) = '1') then
				OUTPUT <= std_logic_vector(to_unsigned(i, OUTPUT'length));
				exit;
			else
				OUTPUT <= (others => '0');
			end if;
		end loop;

	end process;

end architecture;
