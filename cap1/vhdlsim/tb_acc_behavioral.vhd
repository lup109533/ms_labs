-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
-------------------------------------------------------------------------------

entity acc_behavioral_tb is

end acc_behavioral_tb;

-------------------------------------------------------------------------------

architecture TEST of acc_behavioral_tb is

  component acc_behavioral
    generic (N : integer := numBit
	);
    port (
      A          : in  std_logic_vector(N - 1 downto 0);
      B          : in  std_logic_vector(N - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      --- acc_behavioral_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(N - 1 downto 0));
  end component;

  signal A_i          : std_logic_vector(31 downto 0);
  signal B_i          : std_logic_vector(31 downto 0);
  signal CLK_i        : std_logic := '0';
  signal RST_n_i      : std_logic;
  signal ACCUMULATE_i : std_logic;
  --- signal acc_behavioral_EN_n_i   : std_logic; -- optional
  signal Y_i          : std_logic_vector(31 downto 0);

begin  -- TEST

  DUT: acc_behavioral
    generic map (32)
    port map (
        A          => A_i,
        B          => B_i,
        CLK        => CLK_i,
        RST_n      => RST_n_i,
        ACCUMULATE => ACCUMULATE_i,
        -- acc_behavioral_EN_n   => acc_behavioral_EN_n_i, -- optional
        Y          => Y_i);

  
  p_clock: process (CLK_i)

  begin  -- process p_clock
    CLK_i <= not(CLK_i) after 6 ns;
  end process p_clock;

  test: process

  begin  -- process test
  
  A_i          <= "00000000000000000000000000000001";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '1';
  ---- acc_behavioral_EN_n_i   <= '0';  -- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 12 ns;

  A_i          <= "00000000000000000000000000000001";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  ---- acc_behavioral_EN_n_i   <= '0';   -- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 7 ns;

  A_i          <= "00000000000000000000000000000001";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  ---- acc_behavioral_EN_n_i   <= '0';   -- optional
  ACCUMULATE_i <= '0';                  -- seleziona ingresso B del mux

  wait for 12 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  -- acc_behavioral_EN_n_i   <= '0';
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 19 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  ---- acc_behavioral_EN_n_i   <= '1';    --- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 20 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000000000010";
  RST_n_i      <= '0';
  --- acc_behavioral_EN_n_i   <= '0'; -- optional
  ACCUMULATE_i <= '1';

  wait for 5 ns;

  A_i          <= "00000000000000000000000000010000";
  B_i          <= "00000000000000000000000100000000";
  RST_n_i      <= '0';
  --- acc_behavioral_EN_n_i   <= '0';  -- optional
  ACCUMULATE_i <= '0';

  wait ;
    
  end process test;

end TEST;

-------------------------------------------------------------------------------


--configuration CFG_TESTACC of acc_behavioral_tb is
--  for TEST
--      for DUT : acc_behavioral
 --       use configuration WORK.CFG_acc_behavioral_BEHAVIORAL;
 --     end for;
 -- end for;
--end CFG_TESTACC;
