library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity acc_behavioral is 
    generic (N: integer := numBit
            );
    port (
      A          : in  std_logic_vector(N - 1 downto 0);
      B          : in  std_logic_vector(N - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      -- ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(N - 1 downto 0));

end acc_behavioral;

architecture behavioral of acc_behavioral is

	signal mux_o : std_logic_vector(N-1 downto 0);
	signal reg_o : std_logic_vector(N-1 downto 0);
	signal add_o : std_logic_vector(N-1 downto 0);

begin
      
	adder: process (A, mux_o) is
	begin
		
		add_o <= A + mux_o;

	end process;

	mux: process (B, reg_o, ACCUMULATE) is
	begin		

		if (ACCUMULATE = '0') then
			mux_o <= B;

		else
			mux_o <= reg_o;

		end if;

	end process;

	reg: process (CLK, RST_n,add_o) is
	begin
		
		if (RST_n = '1') then
			reg_o <= (others => '0');

		else
			if rising_edge(CLK) then

				reg_o <= add_o;

			end if;

		end if;

	end process;

	Y <= reg_o;

end architecture;
