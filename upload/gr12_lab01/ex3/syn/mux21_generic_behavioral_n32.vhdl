
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_N32_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_N32_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N32_1.all;

entity MUX21_GENERIC_N32_1 is

   port( A, B : in std_logic_vector (31 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (31 downto 0));

end MUX21_GENERIC_N32_1;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N32_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U66 : MUX2_X1 port map( A => A(9), B => B(9), S => SEL, Z => Y(9));
   U67 : MUX2_X1 port map( A => A(8), B => B(8), S => SEL, Z => Y(8));
   U68 : MUX2_X1 port map( A => A(7), B => B(7), S => SEL, Z => Y(7));
   U69 : MUX2_X1 port map( A => A(6), B => B(6), S => SEL, Z => Y(6));
   U70 : MUX2_X1 port map( A => A(5), B => B(5), S => SEL, Z => Y(5));
   U71 : MUX2_X1 port map( A => A(4), B => B(4), S => SEL, Z => Y(4));
   U72 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   U73 : MUX2_X1 port map( A => A(31), B => B(31), S => SEL, Z => Y(31));
   U74 : MUX2_X1 port map( A => A(30), B => B(30), S => SEL, Z => Y(30));
   U75 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U76 : MUX2_X1 port map( A => A(29), B => B(29), S => SEL, Z => Y(29));
   U77 : MUX2_X1 port map( A => A(28), B => B(28), S => SEL, Z => Y(28));
   U78 : MUX2_X1 port map( A => A(27), B => B(27), S => SEL, Z => Y(27));
   U79 : MUX2_X1 port map( A => A(26), B => B(26), S => SEL, Z => Y(26));
   U80 : MUX2_X1 port map( A => A(25), B => B(25), S => SEL, Z => Y(25));
   U81 : MUX2_X1 port map( A => A(24), B => B(24), S => SEL, Z => Y(24));
   U82 : MUX2_X1 port map( A => A(23), B => B(23), S => SEL, Z => Y(23));
   U83 : MUX2_X1 port map( A => A(22), B => B(22), S => SEL, Z => Y(22));
   U84 : MUX2_X1 port map( A => A(21), B => B(21), S => SEL, Z => Y(21));
   U85 : MUX2_X1 port map( A => A(20), B => B(20), S => SEL, Z => Y(20));
   U86 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U87 : MUX2_X1 port map( A => A(19), B => B(19), S => SEL, Z => Y(19));
   U88 : MUX2_X1 port map( A => A(18), B => B(18), S => SEL, Z => Y(18));
   U89 : MUX2_X1 port map( A => A(17), B => B(17), S => SEL, Z => Y(17));
   U90 : MUX2_X1 port map( A => A(16), B => B(16), S => SEL, Z => Y(16));
   U91 : MUX2_X1 port map( A => A(15), B => B(15), S => SEL, Z => Y(15));
   U92 : MUX2_X1 port map( A => A(14), B => B(14), S => SEL, Z => Y(14));
   U93 : MUX2_X1 port map( A => A(13), B => B(13), S => SEL, Z => Y(13));
   U94 : MUX2_X1 port map( A => A(12), B => B(12), S => SEL, Z => Y(12));
   U95 : MUX2_X1 port map( A => A(11), B => B(11), S => SEL, Z => Y(11));
   U96 : MUX2_X1 port map( A => A(10), B => B(10), S => SEL, Z => Y(10));
   U97 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;
