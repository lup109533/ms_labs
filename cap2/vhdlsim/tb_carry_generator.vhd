library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use WORK.constants.all;

entity CARRY_GENERATOR_TB is
end CARRY_GENERATOR_TB;

architecture TEST of CARRY_GENERATOR_TB is

	component CARRY_GENERATOR
		generic (N : natural);
		port (
			A, B : in  std_logic_vector(N-1 downto 0);
			C_in : in  std_logic;
			C_o  : out std_logic_vector(N/4 downto 0)
		);
	end component;

	signal A_s, B_s : std_logic_vector(8-1 downto 0);
	signal C_in_s   : std_logic_vector(0 downto 0);
	signal C_o_s    : std_logic_vector(8/4 downto 0);

begin

	DUT : CARRY_GENERATOR generic map (8) port map (A_s, B_s, C_in_s(0), C_o_s);

	stimulus: process is
	
		variable A_v, B_v, C_in_v : integer;	

	begin

		for A_v in 0 to 2**8-1 loop
			for B_v in 0 to 2**8-1 loop
				for C_in_v in 0 to 1 loop

				A_s       <= std_logic_vector(to_unsigned(A_v, A_s'length));	
				B_s       <= std_logic_vector(to_unsigned(B_v, B_s'length));	
				C_in_s    <= std_logic_vector(to_unsigned(C_in_v, C_in_s'length));	
				wait for 10 ns;

				end loop;
			end loop;
		end loop;
		
		wait;

	end process;

end architecture;
