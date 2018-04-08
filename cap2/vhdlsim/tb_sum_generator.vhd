library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use WORK.constants.all;

entity CARRY_SELECT_BLOCK_TB is
end CARRY_SELECT_BLOCK_TB;

architecture TEST of CARRY_SELECT_BLOCK_TB is

	component CARRY_SELECT_BLOCK
		generic (N : natural := Numbit);
		port (
			A, B : in  std_logic_vector(N-1 downto 0);
			C_in : in  std_logic_vector(N/4-1 downto 0);
			O    : out std_logic_vector(N-1 downto 0);
			C_o  : out std_logic
		);
	end component;

	signal A_s, B_s, O_s : std_logic_vector(8-1 downto 0);
	signal C_in_s        : std_logic_vector(8/4-1 downto 0);
	signal C_o_s         : std_logic;
	signal ok            : boolean;

begin

	DUT : CARRY_SELECT_BLOCK generic map (8) port map (A_s, B_s, C_in_s, O_s, C_o_s);

	ok <= (to_integer(unsigned(A_s)) + to_integer(unsigned(B_s))) = to_integer(unsigned(O_s));

	stimulus: process is
	
		variable A_v, B_v, C_in_v : integer;	

	begin

		for A_v in 0 to 2**8-1 loop
			for B_v in 0 to 2**8-1 loop
				for C_in_v in 0 to 2**(8/4)-1 loop

					A_s    <= std_logic_vector(to_unsigned(A_v, A_s'length));	
					B_s    <= std_logic_vector(to_unsigned(B_v, B_s'length));	
					C_in_s <= std_logic_vector(to_unsigned(C_in_v, C_in_s'length));	
					wait for 10 ns;

				end loop;
			end loop;
		end loop;
		
		wait;

	end process;

end architecture;
