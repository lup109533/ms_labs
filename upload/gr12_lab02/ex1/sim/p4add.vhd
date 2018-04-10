library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity P4ADD is
	generic (N : natural);
	port (
		A, B : in  std_logic_vector(N-1 downto 0);
		C_in : in  std_logic;
		S    : out std_logic_vector(N-1 downto 0);
		C_o  : out std_logic
	);
end p4ADD;

architecture STRUCTURAL of P4ADD is

	component SUM_GENERATOR
		generic (N : natural := Numbit);
		port (
			A, B : in  std_logic_vector(N-1 downto 0);
			C_in : in  std_logic_vector(N/4 downto 0);
			O    : out std_logic_vector(N-1 downto 0);
			C_o  : out std_logic
		);
	end component;

	component CARRY_GENERATOR
		generic (N : natural);
		port (
			A, B : in  std_logic_vector(N-1 downto 0);
			C_in : in  std_logic;
			C_o  : out std_logic_vector(N/4 downto 0)
		);
	end component;

	signal carry : std_logic_vector(N/4 downto 0);

begin

	carry_gen : CARRY_GENERATOR generic map (N) port map(A, B, C_in, carry);
	sum_gen   : SUM_GENERATOR   generic map (N) port map(A, B, carry, S, C_o);

end architecture;
