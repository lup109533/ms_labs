library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

entity TB_PRIORITY_ENCODER is
end TB_PRIORITY_ENCODER;

architecture TEST of TB_PRIORITY_ENCODER is

	component PRIORITY_ENCODER
		generic (N: natural);
		port (
			INPUT	:	in	std_logic_vector(N-1 downto 0);
			OUTPUT	:	out	std_logic_vector(log2(N)-1 downto 0)
		);
	end component;

	constant N : natural := 8;

	signal INPUT  : std_logic_vector(N-1 downto 0);
	signal OUTPUT : std_logic_vector(log2(N)-1 downto 0);

begin

	UUT:PRIORITY_ENCODER generic map (N) port map (INPUT, OUTPUT);

	stimulus: process is
	begin

		for i in 0 to 2**N-1 loop
			INPUT    <= std_logic_vector(to_unsigned(i, INPUT'length));
			wait for 2 ns;
		end loop;

	end process;

end architecture;
