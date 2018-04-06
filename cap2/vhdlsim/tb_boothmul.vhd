library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use WORK.constants.all;

entity BOOTHMUL_TB is
end BOOTHMUL_TB;

architecture TEST of BOOTHMUL_TB is

	component BOOTHMUL
		generic (N : natural);
		port (
			A, B : in  std_logic_vector(N-1 downto 0);
			P    : out std_logic_vector(2*N-1 downto 0)
		);
	end component;

	signal A_s, B_s : std_logic_vector(8-1 downto 0);
	signal P_s      : std_logic_vector(8*2-1 downto 0);
	signal ok       : boolean;

begin

	DUT : BOOTHMUL generic map (8) port map (A_s, B_s, P_s);

	ok <= (to_integer(unsigned(A_s)) * to_integer(unsigned(B_s))) = to_integer(unsigned(P_s));

	stimulus: process is
	
		variable A_v, B_v, P_v : integer;	

	begin

		for A_v in 0 to 2**8-1 loop
			for B_v in 0 to 2**8-1 loop

				A_s    <= std_logic_vector(to_unsigned(A_v, A_s'length));	
				B_s    <= std_logic_vector(to_unsigned(B_v, B_s'length));	
				wait for 10 ns;

			end loop;
		end loop;
		
		wait;

	end process;

end architecture;
