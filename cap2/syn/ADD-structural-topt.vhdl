
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4ADD_N32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4ADD_N32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1071 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1071;

architecture SYN_BEHAVIORAL of FA_1071 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1070 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1070;

architecture SYN_BEHAVIORAL of FA_1070 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1069 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1069;

architecture SYN_BEHAVIORAL of FA_1069 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1068 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1068;

architecture SYN_BEHAVIORAL of FA_1068 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1067 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1067;

architecture SYN_BEHAVIORAL of FA_1067 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1066 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1066;

architecture SYN_BEHAVIORAL of FA_1066 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1065 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1065;

architecture SYN_BEHAVIORAL of FA_1065 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1064 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1064;

architecture SYN_BEHAVIORAL of FA_1064 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1063 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1063;

architecture SYN_BEHAVIORAL of FA_1063 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1062 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1062;

architecture SYN_BEHAVIORAL of FA_1062 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1061 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1061;

architecture SYN_BEHAVIORAL of FA_1061 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1060 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1060;

architecture SYN_BEHAVIORAL of FA_1060 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1059 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1059;

architecture SYN_BEHAVIORAL of FA_1059 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1058 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1058;

architecture SYN_BEHAVIORAL of FA_1058 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1057 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1057;

architecture SYN_BEHAVIORAL of FA_1057 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1056 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1056;

architecture SYN_BEHAVIORAL of FA_1056 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1055 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1055;

architecture SYN_BEHAVIORAL of FA_1055 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1054 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1054;

architecture SYN_BEHAVIORAL of FA_1054 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1053 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1053;

architecture SYN_BEHAVIORAL of FA_1053 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1052 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1052;

architecture SYN_BEHAVIORAL of FA_1052 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1051 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1051;

architecture SYN_BEHAVIORAL of FA_1051 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1050 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1050;

architecture SYN_BEHAVIORAL of FA_1050 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1049 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1049;

architecture SYN_BEHAVIORAL of FA_1049 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1048 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1048;

architecture SYN_BEHAVIORAL of FA_1048 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1047 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1047;

architecture SYN_BEHAVIORAL of FA_1047 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1046 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1046;

architecture SYN_BEHAVIORAL of FA_1046 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1045 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1045;

architecture SYN_BEHAVIORAL of FA_1045 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1044 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1044;

architecture SYN_BEHAVIORAL of FA_1044 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1043 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1043;

architecture SYN_BEHAVIORAL of FA_1043 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1042 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1042;

architecture SYN_BEHAVIORAL of FA_1042 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1041 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1041;

architecture SYN_BEHAVIORAL of FA_1041 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1040 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1040;

architecture SYN_BEHAVIORAL of FA_1040 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1039 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1039;

architecture SYN_BEHAVIORAL of FA_1039 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1038 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1038;

architecture SYN_BEHAVIORAL of FA_1038 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1037 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1037;

architecture SYN_BEHAVIORAL of FA_1037 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1036 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1036;

architecture SYN_BEHAVIORAL of FA_1036 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1035 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1035;

architecture SYN_BEHAVIORAL of FA_1035 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);
   U2 : INV_X1 port map( A => n4, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1034 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1034;

architecture SYN_BEHAVIORAL of FA_1034 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1033 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1033;

architecture SYN_BEHAVIORAL of FA_1033 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1032 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1032;

architecture SYN_BEHAVIORAL of FA_1032 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1031 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1031;

architecture SYN_BEHAVIORAL of FA_1031 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1030 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1030;

architecture SYN_BEHAVIORAL of FA_1030 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1029 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1029;

architecture SYN_BEHAVIORAL of FA_1029 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1028 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1028;

architecture SYN_BEHAVIORAL of FA_1028 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1027 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1027;

architecture SYN_BEHAVIORAL of FA_1027 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1026 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1026;

architecture SYN_BEHAVIORAL of FA_1026 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1025 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1025;

architecture SYN_BEHAVIORAL of FA_1025 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1024 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1024;

architecture SYN_BEHAVIORAL of FA_1024 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1023 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1023;

architecture SYN_BEHAVIORAL of FA_1023 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1022 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1022;

architecture SYN_BEHAVIORAL of FA_1022 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1021 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1021;

architecture SYN_BEHAVIORAL of FA_1021 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1020 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1020;

architecture SYN_BEHAVIORAL of FA_1020 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1019 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1019;

architecture SYN_BEHAVIORAL of FA_1019 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1018 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1018;

architecture SYN_BEHAVIORAL of FA_1018 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1017 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1017;

architecture SYN_BEHAVIORAL of FA_1017 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1016 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1016;

architecture SYN_BEHAVIORAL of FA_1016 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1015 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1015;

architecture SYN_BEHAVIORAL of FA_1015 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1014 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1014;

architecture SYN_BEHAVIORAL of FA_1014 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1013 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1013;

architecture SYN_BEHAVIORAL of FA_1013 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1012 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1012;

architecture SYN_BEHAVIORAL of FA_1012 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1011 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1011;

architecture SYN_BEHAVIORAL of FA_1011 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1010 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1010;

architecture SYN_BEHAVIORAL of FA_1010 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1009 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1009;

architecture SYN_BEHAVIORAL of FA_1009 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n4, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_7;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Y(1));
   U2 : INV_X1 port map( A => n3, ZN => Y(2));
   U3 : INV_X1 port map( A => n1, ZN => Y(0));
   U4 : INV_X1 port map( A => n5, ZN => Y(3));
   U5 : AOI22_X1 port map( A1 => A(3), A2 => n4, B1 => SEL, B2 => B(3), ZN => 
                           n5);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n4, B1 => B(2), B2 => SEL, ZN => 
                           n3);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => n4, B1 => B(1), B2 => SEL, ZN => 
                           n2);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => n4, B1 => B(0), B2 => SEL, ZN => 
                           n1);
   U9 : INV_X1 port map( A => SEL, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_6;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Y(1));
   U2 : INV_X1 port map( A => n3, ZN => Y(2));
   U3 : INV_X1 port map( A => n1, ZN => Y(0));
   U4 : INV_X1 port map( A => n5, ZN => Y(3));
   U5 : AOI22_X1 port map( A1 => A(3), A2 => n4, B1 => SEL, B2 => B(3), ZN => 
                           n5);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n4, B1 => B(2), B2 => SEL, ZN => 
                           n3);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => n4, B1 => B(1), B2 => SEL, ZN => 
                           n2);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => n4, B1 => B(0), B2 => SEL, ZN => 
                           n1);
   U9 : INV_X1 port map( A => SEL, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_5;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => SEL, ZN => n4);
   U2 : INV_X1 port map( A => n2, ZN => Y(1));
   U3 : AOI22_X1 port map( A1 => A(1), A2 => n4, B1 => B(1), B2 => SEL, ZN => 
                           n2);
   U4 : INV_X1 port map( A => n3, ZN => Y(2));
   U5 : AOI22_X1 port map( A1 => A(2), A2 => n4, B1 => B(2), B2 => SEL, ZN => 
                           n3);
   U6 : INV_X1 port map( A => n1, ZN => Y(0));
   U7 : AOI22_X1 port map( A1 => A(0), A2 => n4, B1 => B(0), B2 => SEL, ZN => 
                           n1);
   U8 : INV_X1 port map( A => n5, ZN => Y(3));
   U9 : AOI22_X1 port map( A1 => A(3), A2 => n4, B1 => SEL, B2 => B(3), ZN => 
                           n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_4;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal net167137, n1, n2 : std_logic;

begin
   
   syn42 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   syn40 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U1 : INV_X1 port map( A => SEL, ZN => net167137);
   U2 : INV_X1 port map( A => n2, ZN => Y(1));
   U3 : INV_X1 port map( A => n1, ZN => Y(0));
   U4 : AOI22_X1 port map( A1 => net167137, A2 => A(0), B1 => SEL, B2 => B(0), 
                           ZN => n1);
   U5 : AOI22_X1 port map( A1 => net167137, A2 => A(1), B1 => SEL, B2 => B(1), 
                           ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_3;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   syn61 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   syn57 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_2;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   syn61 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   syn57 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_1;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   syn61 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   syn57 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_15;

architecture SYN_STRUCTURAL of RCA_generic_N4_15 is

   component FA_1065
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1066
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1067
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1068
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1068 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1067 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1066 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1065 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_14;

architecture SYN_STRUCTURAL of RCA_generic_N4_14 is

   component FA_1061
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1062
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1063
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1064
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1064 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1063 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1062 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1061 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_13;

architecture SYN_STRUCTURAL of RCA_generic_N4_13 is

   component FA_1057
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1058
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1059
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1060
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1060 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1059 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1058 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1057 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_12;

architecture SYN_STRUCTURAL of RCA_generic_N4_12 is

   component FA_1053
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1054
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1055
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1056
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1056 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1055 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1054 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1053 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_11;

architecture SYN_STRUCTURAL of RCA_generic_N4_11 is

   component FA_1049
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1050
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1051
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1052
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1052 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1051 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1050 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1049 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_10;

architecture SYN_STRUCTURAL of RCA_generic_N4_10 is

   component FA_1045
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1046
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1047
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1048
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1048 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1047 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1046 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1045 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_9;

architecture SYN_STRUCTURAL of RCA_generic_N4_9 is

   component FA_1041
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1042
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1043
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1044
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1044 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1043 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1042 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1041 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_8;

architecture SYN_STRUCTURAL of RCA_generic_N4_8 is

   component FA_1037
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1038
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1039
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1040
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1040 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1039 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1038 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1037 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_7;

architecture SYN_STRUCTURAL of RCA_generic_N4_7 is

   component FA_1033
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1034
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1035
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1036
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1036 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1035 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1034 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1033 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_6;

architecture SYN_STRUCTURAL of RCA_generic_N4_6 is

   component FA_1029
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1030
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1031
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1032
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1032 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1031 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1030 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1029 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_5;

architecture SYN_STRUCTURAL of RCA_generic_N4_5 is

   component FA_1025
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1026
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1027
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1028
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1028 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1027 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1026 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1025 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_4;

architecture SYN_STRUCTURAL of RCA_generic_N4_4 is

   component FA_1021
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1022
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1023
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1024
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1024 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1023 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1022 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1021 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_3;

architecture SYN_STRUCTURAL of RCA_generic_N4_3 is

   component FA_1017
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1018
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1019
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1020
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1020 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1019 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1018 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1017 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_2;

architecture SYN_STRUCTURAL of RCA_generic_N4_2 is

   component FA_1013
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1014
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1015
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1016
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1016 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1015 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1014 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1013 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_1;

architecture SYN_STRUCTURAL of RCA_generic_N4_1 is

   component FA_1009
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1010
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1011
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1012
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1012 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1011 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1010 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1009 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_7;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_7 is

   component MUX21_GENERIC_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_14 port map( A(3) => A(3), A(2) => A(2), A(1) =>
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_13 port map( A(3) => A(3), A(2) => A(2), A(1) =>
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_7 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_6;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_6 is

   component MUX21_GENERIC_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_12 port map( A(3) => A(3), A(2) => A(2), A(1) =>
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_11 port map( A(3) => A(3), A(2) => A(2), A(1) =>
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_6 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_5;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_5 is

   component MUX21_GENERIC_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_10 port map( A(3) => A(3), A(2) => A(2), A(1) =>
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_5 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_4;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_4 is

   component MUX21_GENERIC_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_4 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_3;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_3 is

   component MUX21_GENERIC_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_3 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_2;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_2 is

   component MUX21_GENERIC_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_2 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_1;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_1 is

   component MUX21_GENERIC_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_1 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_26 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_26;

architecture SYN_BEHAVIORAL of PG_BLOCK_26 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U3 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_25 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_25;

architecture SYN_BEHAVIORAL of PG_BLOCK_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Pi(1), B2 => Gi(0), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_24 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_24;

architecture SYN_BEHAVIORAL of PG_BLOCK_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Go);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_23 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_23;

architecture SYN_BEHAVIORAL of PG_BLOCK_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : AOI21_X1 port map( B1 => Pi(1), B2 => Gi(0), A => Gi(1), ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_22 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_22;

architecture SYN_BEHAVIORAL of PG_BLOCK_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U2 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_21 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_21;

architecture SYN_BEHAVIORAL of PG_BLOCK_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Pi(1), B2 => Gi(0), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_20 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_20;

architecture SYN_BEHAVIORAL of PG_BLOCK_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U2 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_19 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_19;

architecture SYN_BEHAVIORAL of PG_BLOCK_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U2 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_18 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_18;

architecture SYN_BEHAVIORAL of PG_BLOCK_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_17 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_17;

architecture SYN_BEHAVIORAL of PG_BLOCK_17 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : INV_X1 port map( A => n3, ZN => Go);
   U3 : AOI21_X1 port map( B1 => Pi(1), B2 => Gi(0), A => Gi(1), ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_16 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_16;

architecture SYN_BEHAVIORAL of PG_BLOCK_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_15 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_15;

architecture SYN_BEHAVIORAL of PG_BLOCK_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_14 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_14;

architecture SYN_BEHAVIORAL of PG_BLOCK_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_13 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_13;

architecture SYN_BEHAVIORAL of PG_BLOCK_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_12 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_12;

architecture SYN_BEHAVIORAL of PG_BLOCK_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_11 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_11;

architecture SYN_BEHAVIORAL of PG_BLOCK_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_10 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_10;

architecture SYN_BEHAVIORAL of PG_BLOCK_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_9 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_9;

architecture SYN_BEHAVIORAL of PG_BLOCK_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : INV_X1 port map( A => n3, ZN => Go);
   U3 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_8 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_8;

architecture SYN_BEHAVIORAL of PG_BLOCK_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_7 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_7;

architecture SYN_BEHAVIORAL of PG_BLOCK_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_6 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_6;

architecture SYN_BEHAVIORAL of PG_BLOCK_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Go);
   U3 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_5 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_5;

architecture SYN_BEHAVIORAL of PG_BLOCK_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gi(1), ZN => n3);
   U2 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U3 : NAND2_X1 port map( A1 => Gi(0), A2 => Pi(1), ZN => n4);
   U4 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_4 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_4;

architecture SYN_BEHAVIORAL of PG_BLOCK_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_3 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_3;

architecture SYN_BEHAVIORAL of PG_BLOCK_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : INV_X1 port map( A => n3, ZN => Go);
   U3 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_2 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_2;

architecture SYN_BEHAVIORAL of PG_BLOCK_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_1 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_1;

architecture SYN_BEHAVIORAL of PG_BLOCK_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U2 : INV_X1 port map( A => n3, ZN => Go);
   U3 : AOI21_X1 port map( B1 => Gi(0), B2 => Pi(1), A => Gi(1), ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_8 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_8;

architecture SYN_BEHAVIORAL of G_BLOCK_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pi, B2 => Gi(0), A => Gi(1), ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_7 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_7;

architecture SYN_BEHAVIORAL of G_BLOCK_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gi(1), ZN => n2);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Go);
   U3 : NAND2_X1 port map( A1 => Gi(0), A2 => Pi, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_6 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_6;

architecture SYN_BEHAVIORAL of G_BLOCK_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Pi, B2 => Gi(0), A => Gi(1), ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_5 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_5;

architecture SYN_BEHAVIORAL of G_BLOCK_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Go);
   U2 : INV_X1 port map( A => Gi(1), ZN => n2);
   U3 : NAND2_X1 port map( A1 => Gi(0), A2 => Pi, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_4 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_4;

architecture SYN_BEHAVIORAL of G_BLOCK_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gi(1), ZN => n2);
   U2 : NAND2_X1 port map( A1 => Gi(0), A2 => Pi, ZN => n3);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_3 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_3;

architecture SYN_BEHAVIORAL of G_BLOCK_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gi(1), ZN => n2);
   U2 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Go);
   U3 : NAND2_X1 port map( A1 => Gi(0), A2 => Pi, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_2 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_2;

architecture SYN_BEHAVIORAL of G_BLOCK_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => n3, A2 => n2, ZN => Go);
   U2 : INV_X1 port map( A => Gi(1), ZN => n2);
   U3 : NAND2_X1 port map( A1 => Gi(0), A2 => Pi, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_1 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_1;

architecture SYN_BEHAVIORAL of G_BLOCK_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Go);
   U2 : AOI21_X1 port map( B1 => Pi, B2 => Gi(0), A => Gi(1), ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity FA_1008 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1008;

architecture SYN_BEHAVIORAL of FA_1008 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n2, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n2);
   U1 : INV_X1 port map( A => n3, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n2, B2 => Ci, ZN => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity MUX21_GENERIC_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_0;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_N4_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n7, n8, n9, n10 : std_logic;

begin
   
   U1 : INV_X1 port map( A => SEL, ZN => n7);
   U2 : INV_X1 port map( A => n9, ZN => Y(1));
   U3 : AOI22_X1 port map( A1 => A(1), A2 => n7, B1 => B(1), B2 => SEL, ZN => 
                           n9);
   U4 : INV_X1 port map( A => n8, ZN => Y(2));
   U5 : AOI22_X1 port map( A1 => A(2), A2 => n7, B1 => B(2), B2 => SEL, ZN => 
                           n8);
   U6 : INV_X1 port map( A => n10, ZN => Y(0));
   U7 : AOI22_X1 port map( A1 => A(0), A2 => n7, B1 => B(0), B2 => SEL, ZN => 
                           n10);
   U8 : INV_X1 port map( A => n6, ZN => Y(3));
   U9 : AOI22_X1 port map( A1 => A(3), A2 => n7, B1 => SEL, B2 => B(3), ZN => 
                           n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity RCA_generic_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_generic_N4_0;

architecture SYN_STRUCTURAL of RCA_generic_N4_0 is

   component FA_1069
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1070
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1071
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_1008
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_1008 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_1071 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1)
                           , Co => CTMP_2_port);
   FAI_3 : FA_1070 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2)
                           , Co => CTMP_3_port);
   FAI_4 : FA_1069 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3)
                           , Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_SELECT_BLOCK_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O : 
         out std_logic_vector (3 downto 0);  C_o : out std_logic);

end CARRY_SELECT_BLOCK_N4_0;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_N4_0 is

   component MUX21_GENERIC_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_generic_N4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, mux_A_3_port, mux_A_2_port, 
      mux_A_1_port, mux_A_0_port, mux_B_3_port, mux_B_2_port, mux_B_1_port, 
      mux_B_0_port, net165160, net165161 : std_logic;

begin
   
   carry_in_0 : RCA_generic_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           mux_A_3_port, S(2) => mux_A_2_port, S(1) => 
                           mux_A_1_port, S(0) => mux_A_0_port, Co => net165161)
                           ;
   carry_in_1 : RCA_generic_N4_15 port map( A(3) => A(3), A(2) => A(2), A(1) =>
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           mux_B_3_port, S(2) => mux_B_2_port, S(1) => 
                           mux_B_1_port, S(0) => mux_B_0_port, Co => net165160)
                           ;
   mux_sum : MUX21_GENERIC_N4_0 port map( A(3) => mux_A_3_port, A(2) => 
                           mux_A_2_port, A(1) => mux_A_1_port, A(0) => 
                           mux_A_0_port, B(3) => mux_B_3_port, B(2) => 
                           mux_B_2_port, B(1) => mux_B_1_port, B(0) => 
                           mux_B_0_port, SEL => C_in, Y(3) => O(3), Y(2) => 
                           O(2), Y(1) => O(1), Y(0) => O(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity PG_BLOCK_0 is

   port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic);

end PG_BLOCK_0;

architecture SYN_BEHAVIORAL of PG_BLOCK_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Go);
   U2 : AND2_X1 port map( A1 => Pi(1), A2 => Pi(0), ZN => Po);
   U3 : AOI21_X1 port map( B1 => Pi(1), B2 => Gi(0), A => Gi(1), ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity G_BLOCK_0 is

   port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : out 
         std_logic);

end G_BLOCK_0;

architecture SYN_BEHAVIORAL of G_BLOCK_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pi, B2 => Gi(0), A => Gi(1), ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Go);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity SUM_GENERATOR_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  C_in : in std_logic_vector 
         (8 downto 0);  O : out std_logic_vector (31 downto 0);  C_o : out 
         std_logic);

end SUM_GENERATOR_N32;

architecture SYN_STRUCTURAL of SUM_GENERATOR_N32 is

   component CARRY_SELECT_BLOCK_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   component CARRY_SELECT_BLOCK_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   component CARRY_SELECT_BLOCK_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   component CARRY_SELECT_BLOCK_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   component CARRY_SELECT_BLOCK_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   component CARRY_SELECT_BLOCK_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   component CARRY_SELECT_BLOCK_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   component CARRY_SELECT_BLOCK_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  C_in : in std_logic;  O :
            out std_logic_vector (3 downto 0);  C_o : out std_logic);
   end component;
   
   signal net165152, net165153, net165154, net165155, net165156, net165157, 
      net165158, net165159 : std_logic;

begin
   C_o <= C_in(8);
   
   csa_block_0 : CARRY_SELECT_BLOCK_N4_0 port map( A(3) => A(3), A(2) => A(2), 
                           A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), C_in => C_in(0), 
                           O(3) => O(3), O(2) => O(2), O(1) => O(1), O(0) => 
                           O(0), C_o => net165159);
   csa_block_1 : CARRY_SELECT_BLOCK_N4_7 port map( A(3) => A(7), A(2) => A(6), 
                           A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2) => 
                           B(6), B(1) => B(5), B(0) => B(4), C_in => C_in(1), 
                           O(3) => O(7), O(2) => O(6), O(1) => O(5), O(0) => 
                           O(4), C_o => net165158);
   csa_block_2 : CARRY_SELECT_BLOCK_N4_6 port map( A(3) => A(11), A(2) => A(10)
                           , A(1) => A(9), A(0) => A(8), B(3) => B(11), B(2) =>
                           B(10), B(1) => B(9), B(0) => B(8), C_in => C_in(2), 
                           O(3) => O(11), O(2) => O(10), O(1) => O(9), O(0) => 
                           O(8), C_o => net165157);
   csa_block_3 : CARRY_SELECT_BLOCK_N4_5 port map( A(3) => A(15), A(2) => A(14)
                           , A(1) => A(13), A(0) => A(12), B(3) => B(15), B(2) 
                           => B(14), B(1) => B(13), B(0) => B(12), C_in => 
                           C_in(3), O(3) => O(15), O(2) => O(14), O(1) => O(13)
                           , O(0) => O(12), C_o => net165156);
   csa_block_4 : CARRY_SELECT_BLOCK_N4_4 port map( A(3) => A(19), A(2) => A(18)
                           , A(1) => A(17), A(0) => A(16), B(3) => B(19), B(2) 
                           => B(18), B(1) => B(17), B(0) => B(16), C_in => 
                           C_in(4), O(3) => O(19), O(2) => O(18), O(1) => O(17)
                           , O(0) => O(16), C_o => net165155);
   csa_block_5 : CARRY_SELECT_BLOCK_N4_3 port map( A(3) => A(23), A(2) => A(22)
                           , A(1) => A(21), A(0) => A(20), B(3) => B(23), B(2) 
                           => B(22), B(1) => B(21), B(0) => B(20), C_in => 
                           C_in(5), O(3) => O(23), O(2) => O(22), O(1) => O(21)
                           , O(0) => O(20), C_o => net165154);
   csa_block_6 : CARRY_SELECT_BLOCK_N4_2 port map( A(3) => A(27), A(2) => A(26)
                           , A(1) => A(25), A(0) => A(24), B(3) => B(27), B(2) 
                           => B(26), B(1) => B(25), B(0) => B(24), C_in => 
                           C_in(6), O(3) => O(27), O(2) => O(26), O(1) => O(25)
                           , O(0) => O(24), C_o => net165153);
   csa_block_7 : CARRY_SELECT_BLOCK_N4_1 port map( A(3) => A(31), A(2) => A(30)
                           , A(1) => A(29), A(0) => A(28), B(3) => B(31), B(2) 
                           => B(30), B(1) => B(29), B(0) => B(28), C_in => 
                           C_in(7), O(3) => O(31), O(2) => O(30), O(1) => O(29)
                           , O(0) => O(28), C_o => net165152);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity CARRY_GENERATOR_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  C_in : in std_logic;  C_o :
         out std_logic_vector (8 downto 0));

end CARRY_GENERATOR_N32;

architecture SYN_STRUCTURAL of CARRY_GENERATOR_N32 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component G_BLOCK_1
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component G_BLOCK_2
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component G_BLOCK_3
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component G_BLOCK_4
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component PG_BLOCK_1
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_2
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component G_BLOCK_5
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component G_BLOCK_6
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component PG_BLOCK_3
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_4
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_5
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component G_BLOCK_7
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component PG_BLOCK_6
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_7
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_8
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_9
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_10
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_11
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_12
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component G_BLOCK_8
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   component PG_BLOCK_13
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_14
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_15
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_16
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_17
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_18
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_19
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_20
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_21
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_22
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_23
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_24
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_25
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_26
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component PG_BLOCK_0
      port( Gi, Pi : in std_logic_vector (1 downto 0);  Po, Go : out std_logic
            );
   end component;
   
   component G_BLOCK_0
      port( Gi : in std_logic_vector (1 downto 0);  Pi : in std_logic;  Go : 
            out std_logic);
   end component;
   
   signal C_o_8_port, C_o_7_port, C_o_6_port, C_o_5_port, n22, C_o_3_port, n23,
      n24, p_32_port, p_31_port, p_30_port, p_29_port, p_28_port, p_27_port, 
      p_26_port, p_25_port, p_24_port, p_23_port, p_22_port, p_21_port, 
      p_20_port, p_19_port, p_18_port, p_17_port, p_16_port, p_15_port, 
      p_14_port, p_13_port, p_12_port, p_11_port, p_10_port, p_9_port, p_8_port
      , p_7_port, p_6_port, p_5_port, p_4_port, p_3_port, p_2_port, g_32_port, 
      g_31_port, g_30_port, g_29_port, g_28_port, g_27_port, g_26_port, 
      g_25_port, g_24_port, g_23_port, g_22_port, g_21_port, g_20_port, 
      g_19_port, g_18_port, g_17_port, g_16_port, g_15_port, g_14_port, 
      g_13_port, g_12_port, g_11_port, g_10_port, g_9_port, g_8_port, g_7_port,
      g_6_port, g_5_port, g_4_port, g_3_port, g_2_port, G_10, first_g_15_port, 
      first_g_14_port, first_g_13_port, first_g_12_port, first_g_11_port, 
      first_g_10_port, first_g_9_port, first_g_8_port, first_g_7_port, 
      first_g_6_port, first_g_5_port, first_g_4_port, first_g_3_port, 
      first_g_2_port, first_g_1_port, first_g_0_port, first_p_15_port, 
      first_p_14_port, first_p_13_port, first_p_12_port, first_p_11_port, 
      first_p_10_port, first_p_9_port, first_p_8_port, first_p_7_port, 
      first_p_6_port, first_p_5_port, first_p_4_port, first_p_3_port, 
      first_p_2_port, first_p_1_port, GG_2_7_port, GG_2_6_port, GG_1_7_port, 
      GG_1_5_port, GG_1_3_port, GG_0_7_port, GG_0_6_port, GG_0_5_port, 
      GG_0_4_port, GG_0_3_port, GG_0_2_port, GG_0_1_port, PP_2_7_port, 
      PP_2_6_port, PP_1_7_port, PP_1_5_port, PP_1_3_port, PP_0_7_port, 
      PP_0_6_port, PP_0_5_port, PP_0_4_port, PP_0_3_port, PP_0_2_port, 
      PP_0_1_port, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, 
      C_o_2_port, n16, n17, n18, n19, C_o_1_port, C_o_4_port : std_logic;

begin
   C_o <= ( C_o_8_port, C_o_7_port, C_o_6_port, C_o_5_port, C_o_4_port, 
      C_o_3_port, C_o_2_port, C_o_1_port, C_in );
   
   g_i_0 : G_BLOCK_0 port map( Gi(1) => g_2_port, Gi(0) => G_10, Pi => p_2_port
                           , Go => first_g_0_port);
   pg_i_1 : PG_BLOCK_0 port map( Gi(1) => g_4_port, Gi(0) => g_3_port, Pi(1) =>
                           p_4_port, Pi(0) => p_3_port, Po => first_p_1_port, 
                           Go => first_g_1_port);
   pg_i_2 : PG_BLOCK_26 port map( Gi(1) => g_6_port, Gi(0) => g_5_port, Pi(1) 
                           => p_6_port, Pi(0) => p_5_port, Po => first_p_2_port
                           , Go => first_g_2_port);
   pg_i_3 : PG_BLOCK_25 port map( Gi(1) => g_8_port, Gi(0) => g_7_port, Pi(1) 
                           => p_8_port, Pi(0) => p_7_port, Po => first_p_3_port
                           , Go => first_g_3_port);
   pg_i_4 : PG_BLOCK_24 port map( Gi(1) => g_10_port, Gi(0) => g_9_port, Pi(1) 
                           => p_10_port, Pi(0) => p_9_port, Po => 
                           first_p_4_port, Go => first_g_4_port);
   pg_i_5 : PG_BLOCK_23 port map( Gi(1) => g_12_port, Gi(0) => g_11_port, Pi(1)
                           => p_12_port, Pi(0) => p_11_port, Po => 
                           first_p_5_port, Go => first_g_5_port);
   pg_i_6 : PG_BLOCK_22 port map( Gi(1) => g_14_port, Gi(0) => g_13_port, Pi(1)
                           => p_14_port, Pi(0) => p_13_port, Po => 
                           first_p_6_port, Go => first_g_6_port);
   pg_i_7 : PG_BLOCK_21 port map( Gi(1) => g_16_port, Gi(0) => g_15_port, Pi(1)
                           => p_16_port, Pi(0) => p_15_port, Po => 
                           first_p_7_port, Go => first_g_7_port);
   pg_i_8 : PG_BLOCK_20 port map( Gi(1) => g_18_port, Gi(0) => g_17_port, Pi(1)
                           => p_18_port, Pi(0) => p_17_port, Po => 
                           first_p_8_port, Go => first_g_8_port);
   pg_i_9 : PG_BLOCK_19 port map( Gi(1) => g_20_port, Gi(0) => g_19_port, Pi(1)
                           => p_20_port, Pi(0) => p_19_port, Po => 
                           first_p_9_port, Go => first_g_9_port);
   pg_i_10 : PG_BLOCK_18 port map( Gi(1) => g_22_port, Gi(0) => g_21_port, 
                           Pi(1) => p_22_port, Pi(0) => p_21_port, Po => 
                           first_p_10_port, Go => first_g_10_port);
   pg_i_11 : PG_BLOCK_17 port map( Gi(1) => g_24_port, Gi(0) => g_23_port, 
                           Pi(1) => p_24_port, Pi(0) => p_23_port, Po => 
                           first_p_11_port, Go => first_g_11_port);
   pg_i_12 : PG_BLOCK_16 port map( Gi(1) => g_26_port, Gi(0) => g_25_port, 
                           Pi(1) => p_26_port, Pi(0) => p_25_port, Po => 
                           first_p_12_port, Go => first_g_12_port);
   pg_i_13 : PG_BLOCK_15 port map( Gi(1) => g_28_port, Gi(0) => g_27_port, 
                           Pi(1) => p_28_port, Pi(0) => p_27_port, Po => 
                           first_p_13_port, Go => first_g_13_port);
   pg_i_14 : PG_BLOCK_14 port map( Gi(1) => g_30_port, Gi(0) => g_29_port, 
                           Pi(1) => p_30_port, Pi(0) => p_29_port, Po => 
                           first_p_14_port, Go => first_g_14_port);
   pg_i_15 : PG_BLOCK_13 port map( Gi(1) => g_32_port, Gi(0) => g_31_port, 
                           Pi(1) => p_32_port, Pi(0) => p_31_port, Po => 
                           first_p_15_port, Go => first_g_15_port);
   g_i_0_0 : G_BLOCK_8 port map( Gi(1) => first_g_1_port, Gi(0) => 
                           first_g_0_port, Pi => first_p_1_port, Go => n24);
   pg_i_1_0 : PG_BLOCK_12 port map( Gi(1) => first_g_3_port, Gi(0) => 
                           first_g_2_port, Pi(1) => first_p_3_port, Pi(0) => 
                           first_p_2_port, Po => PP_0_1_port, Go => GG_0_1_port
                           );
   pg_i_2_0 : PG_BLOCK_11 port map( Gi(1) => first_g_5_port, Gi(0) => 
                           first_g_4_port, Pi(1) => first_p_5_port, Pi(0) => 
                           first_p_4_port, Po => PP_0_2_port, Go => GG_0_2_port
                           );
   pg_i_3_0 : PG_BLOCK_10 port map( Gi(1) => first_g_7_port, Gi(0) => 
                           first_g_6_port, Pi(1) => first_p_7_port, Pi(0) => 
                           first_p_6_port, Po => PP_0_3_port, Go => GG_0_3_port
                           );
   pg_i_4_0 : PG_BLOCK_9 port map( Gi(1) => first_g_9_port, Gi(0) => 
                           first_g_8_port, Pi(1) => first_p_9_port, Pi(0) => 
                           first_p_8_port, Po => PP_0_4_port, Go => GG_0_4_port
                           );
   pg_i_5_0 : PG_BLOCK_8 port map( Gi(1) => first_g_11_port, Gi(0) => 
                           first_g_10_port, Pi(1) => first_p_11_port, Pi(0) => 
                           first_p_10_port, Po => PP_0_5_port, Go => 
                           GG_0_5_port);
   pg_i_6_0 : PG_BLOCK_7 port map( Gi(1) => first_g_13_port, Gi(0) => 
                           first_g_12_port, Pi(1) => first_p_13_port, Pi(0) => 
                           first_p_12_port, Po => PP_0_6_port, Go => 
                           GG_0_6_port);
   pg_i_7_0 : PG_BLOCK_6 port map( Gi(1) => first_g_15_port, Gi(0) => 
                           first_g_14_port, Pi(1) => first_p_15_port, Pi(0) => 
                           first_p_14_port, Po => PP_0_7_port, Go => 
                           GG_0_7_port);
   g_i_0_1 : G_BLOCK_7 port map( Gi(1) => GG_0_1_port, Gi(0) => n24, Pi => 
                           PP_0_1_port, Go => n23);
   pg_i_0_3 : PG_BLOCK_5 port map( Gi(1) => GG_0_3_port, Gi(0) => GG_0_2_port, 
                           Pi(1) => PP_0_3_port, Pi(0) => PP_0_2_port, Po => 
                           PP_1_3_port, Go => GG_1_3_port);
   pg_i_0_5 : PG_BLOCK_4 port map( Gi(1) => GG_0_5_port, Gi(0) => GG_0_4_port, 
                           Pi(1) => PP_0_5_port, Pi(0) => PP_0_4_port, Po => 
                           PP_1_5_port, Go => GG_1_5_port);
   pg_i_0_7 : PG_BLOCK_3 port map( Gi(1) => GG_0_7_port, Gi(0) => GG_0_6_port, 
                           Pi(1) => PP_0_7_port, Pi(0) => PP_0_6_port, Po => 
                           PP_1_7_port, Go => GG_1_7_port);
   g_i_1_2 : G_BLOCK_6 port map( Gi(1) => GG_0_2_port, Gi(0) => n23, Pi => 
                           PP_0_2_port, Go => C_o_3_port);
   g_i_1_3 : G_BLOCK_5 port map( Gi(1) => GG_1_3_port, Gi(0) => n23, Pi => 
                           PP_1_3_port, Go => n22);
   pg_i_1_6 : PG_BLOCK_2 port map( Gi(1) => GG_0_6_port, Gi(0) => GG_1_5_port, 
                           Pi(1) => PP_0_6_port, Pi(0) => PP_1_5_port, Po => 
                           PP_2_6_port, Go => GG_2_6_port);
   pg_i_1_7 : PG_BLOCK_1 port map( Gi(1) => GG_1_7_port, Gi(0) => n14, Pi(1) =>
                           PP_1_7_port, Pi(0) => PP_1_5_port, Po => PP_2_7_port
                           , Go => GG_2_7_port);
   g_i_2_4 : G_BLOCK_4 port map( Gi(1) => GG_0_4_port, Gi(0) => n22, Pi => 
                           PP_0_4_port, Go => C_o_5_port);
   g_i_2_5 : G_BLOCK_3 port map( Gi(1) => n14, Gi(0) => n22, Pi => PP_1_5_port,
                           Go => C_o_6_port);
   g_i_2_6 : G_BLOCK_2 port map( Gi(1) => GG_2_6_port, Gi(0) => n22, Pi => 
                           PP_2_6_port, Go => C_o_7_port);
   g_i_2_7 : G_BLOCK_1 port map( Gi(1) => GG_2_7_port, Gi(0) => C_o_4_port, Pi 
                           => PP_2_7_port, Go => C_o_8_port);
   U36 : XOR2_X1 port map( A => B(8), B => A(8), Z => p_9_port);
   U38 : XOR2_X1 port map( A => B(6), B => A(6), Z => p_7_port);
   U39 : XOR2_X1 port map( A => B(5), B => A(5), Z => p_6_port);
   U40 : XOR2_X1 port map( A => B(4), B => A(4), Z => p_5_port);
   U41 : XOR2_X1 port map( A => B(3), B => A(3), Z => p_4_port);
   U42 : XOR2_X1 port map( A => B(2), B => A(2), Z => p_3_port);
   U43 : XOR2_X1 port map( A => B(31), B => A(31), Z => p_32_port);
   U44 : XOR2_X1 port map( A => B(30), B => A(30), Z => p_31_port);
   U45 : XOR2_X1 port map( A => B(29), B => A(29), Z => p_30_port);
   U46 : XOR2_X1 port map( A => B(1), B => A(1), Z => p_2_port);
   U47 : XOR2_X1 port map( A => B(28), B => A(28), Z => p_29_port);
   U48 : XOR2_X1 port map( A => B(27), B => A(27), Z => p_28_port);
   U49 : XOR2_X1 port map( A => B(26), B => A(26), Z => p_27_port);
   U50 : XOR2_X1 port map( A => B(25), B => A(25), Z => p_26_port);
   U51 : XOR2_X1 port map( A => B(24), B => A(24), Z => p_25_port);
   U52 : XOR2_X1 port map( A => B(23), B => A(23), Z => p_24_port);
   U53 : XOR2_X1 port map( A => B(22), B => A(22), Z => p_23_port);
   U54 : XOR2_X1 port map( A => B(21), B => A(21), Z => p_22_port);
   U55 : XOR2_X1 port map( A => B(20), B => A(20), Z => p_21_port);
   U56 : XOR2_X1 port map( A => B(19), B => A(19), Z => p_20_port);
   U57 : XOR2_X1 port map( A => B(18), B => A(18), Z => p_19_port);
   U58 : XOR2_X1 port map( A => B(17), B => A(17), Z => p_18_port);
   U59 : XOR2_X1 port map( A => B(16), B => A(16), Z => p_17_port);
   U61 : XOR2_X1 port map( A => B(14), B => A(14), Z => p_15_port);
   U62 : XOR2_X1 port map( A => B(13), B => A(13), Z => p_14_port);
   U63 : XOR2_X1 port map( A => B(12), B => A(12), Z => p_13_port);
   U65 : XOR2_X1 port map( A => B(10), B => A(10), Z => p_11_port);
   U66 : XOR2_X1 port map( A => B(9), B => A(9), Z => p_10_port);
   U1 : BUF_X1 port map( A => n23, Z => C_o_2_port);
   U2 : BUF_X2 port map( A => n22, Z => C_o_4_port);
   U3 : AND2_X1 port map( A1 => B(14), A2 => A(14), ZN => g_15_port);
   U4 : AND2_X1 port map( A1 => B(18), A2 => A(18), ZN => g_19_port);
   U5 : AND2_X1 port map( A1 => B(19), A2 => A(19), ZN => g_20_port);
   U6 : AND2_X1 port map( A1 => B(22), A2 => A(22), ZN => g_23_port);
   U7 : AND2_X1 port map( A1 => B(23), A2 => A(23), ZN => g_24_port);
   U8 : AND2_X1 port map( A1 => B(12), A2 => A(12), ZN => g_13_port);
   U9 : AND2_X1 port map( A1 => B(13), A2 => A(13), ZN => g_14_port);
   U10 : AND2_X1 port map( A1 => B(10), A2 => A(10), ZN => g_11_port);
   U11 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => g_12_port);
   U12 : AND2_X1 port map( A1 => B(8), A2 => A(8), ZN => g_9_port);
   U13 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => g_10_port);
   U14 : AND2_X1 port map( A1 => B(6), A2 => A(6), ZN => g_7_port);
   U15 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => g_8_port);
   U16 : AND2_X1 port map( A1 => B(26), A2 => A(26), ZN => g_27_port);
   U17 : AND2_X1 port map( A1 => B(27), A2 => A(27), ZN => g_28_port);
   U18 : AND2_X1 port map( A1 => B(24), A2 => A(24), ZN => g_25_port);
   U19 : AND2_X1 port map( A1 => B(25), A2 => A(25), ZN => g_26_port);
   U20 : AND2_X1 port map( A1 => B(30), A2 => A(30), ZN => g_31_port);
   U21 : AND2_X1 port map( A1 => B(31), A2 => A(31), ZN => g_32_port);
   U22 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => g_2_port);
   U23 : AND2_X1 port map( A1 => B(16), A2 => A(16), ZN => g_17_port);
   U24 : AND2_X1 port map( A1 => B(17), A2 => A(17), ZN => g_18_port);
   U25 : AND2_X1 port map( A1 => B(29), A2 => A(29), ZN => g_30_port);
   U26 : AND2_X1 port map( A1 => B(28), A2 => A(28), ZN => g_29_port);
   U27 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => g_3_port);
   U28 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => g_4_port);
   U29 : AND2_X1 port map( A1 => B(20), A2 => A(20), ZN => g_21_port);
   U30 : AND2_X1 port map( A1 => B(21), A2 => A(21), ZN => g_22_port);
   U31 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => g_5_port);
   U32 : AND2_X1 port map( A1 => B(5), A2 => A(5), ZN => g_6_port);
   U33 : INV_X1 port map( A => A(0), ZN => n3);
   U34 : BUF_X1 port map( A => GG_1_5_port, Z => n14);
   U35 : AND2_X1 port map( A1 => B(15), A2 => A(15), ZN => g_16_port);
   U37 : NAND2_X1 port map( A1 => n7, A2 => B(15), ZN => n8);
   U60 : NAND2_X1 port map( A1 => n6, A2 => A(15), ZN => n9);
   U64 : NAND2_X1 port map( A1 => n9, A2 => n8, ZN => p_16_port);
   U67 : INV_X1 port map( A => B(15), ZN => n6);
   U68 : INV_X1 port map( A => A(15), ZN => n7);
   U69 : NAND2_X1 port map( A1 => B(11), A2 => n11, ZN => n12);
   U70 : NAND2_X1 port map( A1 => n10, A2 => A(11), ZN => n13);
   U71 : NAND2_X1 port map( A1 => n12, A2 => n13, ZN => p_12_port);
   U72 : INV_X1 port map( A => B(11), ZN => n10);
   U73 : INV_X1 port map( A => A(11), ZN => n11);
   U74 : NAND2_X1 port map( A1 => n17, A2 => B(7), ZN => n18);
   U75 : NAND2_X1 port map( A1 => n16, A2 => A(7), ZN => n19);
   U76 : NAND2_X1 port map( A1 => n18, A2 => n19, ZN => p_8_port);
   U77 : INV_X1 port map( A => B(7), ZN => n16);
   U78 : INV_X1 port map( A => A(7), ZN => n17);
   U79 : OAI21_X1 port map( B1 => n3, B2 => n4, A => n5, ZN => G_10);
   U80 : INV_X1 port map( A => B(0), ZN => n4);
   U81 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => C_in, ZN => n5);
   U82 : CLKBUF_X1 port map( A => n24, Z => C_o_1_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4ADD_N32.all;

entity P4ADD_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  C_in : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  C_o : out std_logic);

end P4ADD_N32;

architecture SYN_STRUCTURAL of P4ADD_N32 is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SUM_GENERATOR_N32
      port( A, B : in std_logic_vector (31 downto 0);  C_in : in 
            std_logic_vector (8 downto 0);  O : out std_logic_vector (31 downto
            0);  C_o : out std_logic);
   end component;
   
   component CARRY_GENERATOR_N32
      port( A, B : in std_logic_vector (31 downto 0);  C_in : in std_logic;  
            C_o : out std_logic_vector (8 downto 0));
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, carry_1_port, carry_0_port, n1 : std_logic;

begin
   
   carry_gen : CARRY_GENERATOR_N32 port map( A(31) => A(31), A(30) => A(30), 
                           A(29) => A(29), A(28) => A(28), A(27) => A(27), 
                           A(26) => A(26), A(25) => A(25), A(24) => A(24), 
                           A(23) => A(23), A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => A(7), A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), C_in => C_in, C_o(8) => 
                           carry_8_port, C_o(7) => carry_7_port, C_o(6) => 
                           carry_6_port, C_o(5) => carry_5_port, C_o(4) => 
                           carry_4_port, C_o(3) => carry_3_port, C_o(2) => 
                           carry_2_port, C_o(1) => carry_1_port, C_o(0) => 
                           carry_0_port);
   sum_gen : SUM_GENERATOR_N32 port map( A(31) => A(31), A(30) => A(30), A(29) 
                           => A(29), A(28) => A(28), A(27) => A(27), A(26) => 
                           A(26), A(25) => A(25), A(24) => A(24), A(23) => 
                           A(23), A(22) => A(22), A(21) => A(21), A(20) => 
                           A(20), A(19) => A(19), A(18) => A(18), A(17) => 
                           A(17), A(16) => A(16), A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => n1, A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(31) => B(31), B(30) => B(30), B(29) => 
                           B(29), B(28) => B(28), B(27) => B(27), B(26) => 
                           B(26), B(25) => B(25), B(24) => B(24), B(23) => 
                           B(23), B(22) => B(22), B(21) => B(21), B(20) => 
                           B(20), B(19) => B(19), B(18) => B(18), B(17) => 
                           B(17), B(16) => B(16), B(15) => B(15), B(14) => 
                           B(14), B(13) => B(13), B(12) => B(12), B(11) => 
                           B(11), B(10) => B(10), B(9) => B(9), B(8) => B(8), 
                           B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), C_in(8) => carry_8_port, C_in(7) => 
                           carry_7_port, C_in(6) => carry_6_port, C_in(5) => 
                           carry_5_port, C_in(4) => carry_4_port, C_in(3) => 
                           carry_3_port, C_in(2) => carry_2_port, C_in(1) => 
                           carry_1_port, C_in(0) => carry_0_port, O(31) => 
                           S(31), O(30) => S(30), O(29) => S(29), O(28) => 
                           S(28), O(27) => S(27), O(26) => S(26), O(25) => 
                           S(25), O(24) => S(24), O(23) => S(23), O(22) => 
                           S(22), O(21) => S(21), O(20) => S(20), O(19) => 
                           S(19), O(18) => S(18), O(17) => S(17), O(16) => 
                           S(16), O(15) => S(15), O(14) => S(14), O(13) => 
                           S(13), O(12) => S(12), O(11) => S(11), O(10) => 
                           S(10), O(9) => S(9), O(8) => S(8), O(7) => S(7), 
                           O(6) => S(6), O(5) => S(5), O(4) => S(4), O(3) => 
                           S(3), O(2) => S(2), O(1) => S(1), O(0) => S(0), C_o 
                           => C_o);
   U1 : BUF_X1 port map( A => A(3), Z => n1);

end SYN_STRUCTURAL;
