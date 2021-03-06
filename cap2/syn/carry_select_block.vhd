library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity CARRY_SELECT_BLOCK is
	generic (N : natural := Numbit);
	port (
		A, B : in  std_logic_vector(N-1 downto 0);
		C_in : in  std_logic;
		O    : out std_logic_vector(N-1 downto 0);
		C_o  : out std_logic
	);
end CARRY_SELECT_BLOCK;


architecture STRUCTURAL of CARRY_SELECT_BLOCK is

	component MUX21_GENERIC
		generic (N: integer:= numBit);
		port (	A:	In	std_logic_vector(N-1 downto 0) ;
				B:	In	std_logic_vector(N-1 downto 0);
				SEL:	In	std_logic;
				Y:	Out	std_logic_vector(N-1 downto 0));
	end component;

	component RCA_generic
		generic (N: integer := numBit);
		port (	A:	In	std_logic_vector(N-1 downto 0);
				B:	In	std_logic_vector(N-1 downto 0);
				Ci:	In	std_logic;
				S:	Out	std_logic_vector(N-1 downto 0);
				Co:	Out	std_logic);
	end component;

	signal mux_A : std_logic_vector(N-1 downto 0);
	signal mux_B : std_logic_vector(N-1 downto 0);

begin

	carry_in_0: RCA_GENERIC generic map (N => N)
				port map(
					A    => A,
					B    => B,
					Ci   => '0',
					S    => mux_A,
					Co   => open 
				);

	carry_in_1: RCA_GENERIC generic map (N => N)
				port map(
					A    => A,
					B    => B,
					Ci   => '1',
					S    => mux_B,
					Co   => open
				);

	mux_sum: MUX21_GENERIC generic map (N => N)
			       port map (
					A   => mux_A,
					B   => mux_B,
					SEL => C_in,
					Y   => O
				);

end architecture;
