library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity SUM_GENERATOR is
	generic (N : natural := Numbit);
	port (
		A, B : in  std_logic_vector(N-1 downto 0);
		C_in : in  std_logic_vector(N/4 downto 0);
		O    : out std_logic_vector(N-1 downto 0);
		C_o  : out std_logic
	);
end SUM_GENERATOR;

architecture STRUCTURAL of SUM_GENERATOR is

	component CARRY_SELECT_BLOCK
		generic (N : natural := Numbit);
		port (
			A, B : in  std_logic_vector(N-1 downto 0);
			C_in : in  std_logic;
			O    : out std_logic_vector(N-1 downto 0)
		);
	end component;

begin

	---- CARRY SELECT BLOCK
	csa_block_gen: for i in 0 to N/4-1 generate

		csa_block: CARRY_SELECT_BLOCK generic map (N => 4)
					  	 port map (
							A     =>   A(i*4+3 downto i*4),
							B     =>   B(i*4+3 downto i*4),
							C_in  =>   C_in(i),
							O     =>   O(i*4+3 downto i*4)
					  	 );
	end generate;
	
	
	---- CARRY OUT
					 
	C_o <= C_in(N/4);

end architecture;
