library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity G_BLOCK is 
	port (
		Gi   : in  std_logic_vector(1 downto 0);
		Pi   : in  std_logic;
		Go   : out std_logic
	);
end G_BLOCK;

architecture BEHAVIORAL of G_BLOCK is begin

	Go <= Gi(1) or (Gi(0) and Pi);

end architecture;
