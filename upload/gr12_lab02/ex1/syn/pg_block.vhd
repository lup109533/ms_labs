library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity PG_BLOCK is 
	port (
		Gi   : in  std_logic_vector(1 downto 0);
		Pi   : in  std_logic_vector(1 downto 0);
		Po   : out std_logic;
		Go   : out std_logic
	);
end PG_BLOCK;

architecture BEHAVIORAL of PG_BLOCK is begin

	Po <= Pi(1) and Pi(0);
	Go <= Gi(1) or (Gi(0) and Pi(1));

end architecture;
