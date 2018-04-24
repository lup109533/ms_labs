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
		OUTPUT	:	out	std_logic_vector(N downto 0)
	);
end entity;

architecture STRUCTURAL of COUNTER is

	component TFF is
		port (
			CLK	:	in	std_logic;
			RESET	:	in	std_logic;
			T	:	in	std_logic;
			Q	:	out	std_logic
		);
	end component;

	signal ff_out : std_logic_vector(N downto 0);

begin

	ff_out(0) <= CLK;

	gen: for i in 0 to N-1 generate

		tff_i: TFF port map (ff_out(i), RESET, ENABLE, ff_out(i+1));

	end generate;

	OUTPUT <= ff_out;

end architecture;
