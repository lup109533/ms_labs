
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_N8_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_N8_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N8_1.all;

entity MUX21_GENERIC_N8_1 is

   port( A, B : in std_logic_vector (7 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (7 downto 0));

end MUX21_GENERIC_N8_1;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N8_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U18 : MUX2_X1 port map( A => A(7), B => B(7), S => SEL, Z => Y(7));
   U19 : MUX2_X1 port map( A => A(6), B => B(6), S => SEL, Z => Y(6));
   U20 : MUX2_X1 port map( A => A(5), B => B(5), S => SEL, Z => Y(5));
   U21 : MUX2_X1 port map( A => A(4), B => B(4), S => SEL, Z => Y(4));
   U22 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   U23 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U24 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U25 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;
