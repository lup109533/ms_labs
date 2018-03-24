
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_acc_N32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_acc_N32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_95 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_95;

architecture SYN_ARCH2 of ND2_95 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_94 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_94;

architecture SYN_ARCH2 of ND2_94 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_93 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_93;

architecture SYN_ARCH2 of ND2_93 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_92 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_92;

architecture SYN_ARCH2 of ND2_92 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_91 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_91;

architecture SYN_ARCH2 of ND2_91 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_90 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_90;

architecture SYN_ARCH2 of ND2_90 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_89 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_89;

architecture SYN_ARCH2 of ND2_89 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_88 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_88;

architecture SYN_ARCH2 of ND2_88 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_87 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_87;

architecture SYN_ARCH2 of ND2_87 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_86 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_86;

architecture SYN_ARCH2 of ND2_86 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_85 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_85;

architecture SYN_ARCH2 of ND2_85 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_84 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_84;

architecture SYN_ARCH2 of ND2_84 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_83 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_83;

architecture SYN_ARCH2 of ND2_83 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_82 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_82;

architecture SYN_ARCH2 of ND2_82 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_81 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_81;

architecture SYN_ARCH2 of ND2_81 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_80 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_80;

architecture SYN_ARCH2 of ND2_80 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_79 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_79;

architecture SYN_ARCH2 of ND2_79 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_78 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_78;

architecture SYN_ARCH2 of ND2_78 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_77 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_77;

architecture SYN_ARCH2 of ND2_77 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_76 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_76;

architecture SYN_ARCH2 of ND2_76 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_75 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_75;

architecture SYN_ARCH2 of ND2_75 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_74 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_74;

architecture SYN_ARCH2 of ND2_74 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_73 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_73;

architecture SYN_ARCH2 of ND2_73 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_72 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_72;

architecture SYN_ARCH2 of ND2_72 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_71 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_71;

architecture SYN_ARCH2 of ND2_71 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_70 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_70;

architecture SYN_ARCH2 of ND2_70 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_69 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_69;

architecture SYN_ARCH2 of ND2_69 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_68 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_68;

architecture SYN_ARCH2 of ND2_68 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_67 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_67;

architecture SYN_ARCH2 of ND2_67 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_66 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_66;

architecture SYN_ARCH2 of ND2_66 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_65 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_65;

architecture SYN_ARCH2 of ND2_65 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_64 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_64;

architecture SYN_ARCH2 of ND2_64 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_63 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_63;

architecture SYN_ARCH2 of ND2_63 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_62 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_62;

architecture SYN_ARCH2 of ND2_62 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_61 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_61;

architecture SYN_ARCH2 of ND2_61 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_60 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_60;

architecture SYN_ARCH2 of ND2_60 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_59 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_59;

architecture SYN_ARCH2 of ND2_59 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_58 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_58;

architecture SYN_ARCH2 of ND2_58 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_57 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_57;

architecture SYN_ARCH2 of ND2_57 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_56 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_56;

architecture SYN_ARCH2 of ND2_56 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_55 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_55;

architecture SYN_ARCH2 of ND2_55 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_54 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_54;

architecture SYN_ARCH2 of ND2_54 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_53 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_53;

architecture SYN_ARCH2 of ND2_53 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_52 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_52;

architecture SYN_ARCH2 of ND2_52 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_51 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_51;

architecture SYN_ARCH2 of ND2_51 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_50 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_50;

architecture SYN_ARCH2 of ND2_50 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_49 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_49;

architecture SYN_ARCH2 of ND2_49 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_48 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_48;

architecture SYN_ARCH2 of ND2_48 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_47 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_47;

architecture SYN_ARCH2 of ND2_47 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_46 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_46;

architecture SYN_ARCH2 of ND2_46 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_45 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_45;

architecture SYN_ARCH2 of ND2_45 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_44 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_44;

architecture SYN_ARCH2 of ND2_44 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_43 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_43;

architecture SYN_ARCH2 of ND2_43 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_42 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_42;

architecture SYN_ARCH2 of ND2_42 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_41 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_41;

architecture SYN_ARCH2 of ND2_41 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_40 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_40;

architecture SYN_ARCH2 of ND2_40 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_39 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_39;

architecture SYN_ARCH2 of ND2_39 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_38 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_38;

architecture SYN_ARCH2 of ND2_38 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_37 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_37;

architecture SYN_ARCH2 of ND2_37 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_36 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_36;

architecture SYN_ARCH2 of ND2_36 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_35 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_35;

architecture SYN_ARCH2 of ND2_35 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_34 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_34;

architecture SYN_ARCH2 of ND2_34 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_33 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_33;

architecture SYN_ARCH2 of ND2_33 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_32 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_32;

architecture SYN_ARCH2 of ND2_32 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_31 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_31;

architecture SYN_ARCH2 of ND2_31 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_30 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_30;

architecture SYN_ARCH2 of ND2_30 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_29 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_29;

architecture SYN_ARCH2 of ND2_29 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_28 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_28;

architecture SYN_ARCH2 of ND2_28 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_27 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_27;

architecture SYN_ARCH2 of ND2_27 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_26 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_26;

architecture SYN_ARCH2 of ND2_26 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_25 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_25;

architecture SYN_ARCH2 of ND2_25 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_24 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_24;

architecture SYN_ARCH2 of ND2_24 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_23 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_23;

architecture SYN_ARCH2 of ND2_23 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_22 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_22;

architecture SYN_ARCH2 of ND2_22 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_21 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_21;

architecture SYN_ARCH2 of ND2_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_20 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_20;

architecture SYN_ARCH2 of ND2_20 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_19 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_19;

architecture SYN_ARCH2 of ND2_19 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_18 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_18;

architecture SYN_ARCH2 of ND2_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_17 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_17;

architecture SYN_ARCH2 of ND2_17 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_16 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_16;

architecture SYN_ARCH2 of ND2_16 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_ARCH2 of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_14 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_14;

architecture SYN_ARCH2 of ND2_14 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_13 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_13;

architecture SYN_ARCH2 of ND2_13 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_12 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_12;

architecture SYN_ARCH2 of ND2_12 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_11;

architecture SYN_ARCH2 of ND2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_10;

architecture SYN_ARCH2 of ND2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_9;

architecture SYN_ARCH2 of ND2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_8;

architecture SYN_ARCH2 of ND2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_7;

architecture SYN_ARCH2 of ND2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_6;

architecture SYN_ARCH2 of ND2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_5;

architecture SYN_ARCH2 of ND2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_4;

architecture SYN_ARCH2 of ND2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_ARCH2 of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_ARCH2 of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_ARCH2 of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_31 is

   port( A : in std_logic;  Y : out std_logic);

end IV_31;

architecture SYN_BEHAVIORAL of IV_31 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_30 is

   port( A : in std_logic;  Y : out std_logic);

end IV_30;

architecture SYN_BEHAVIORAL of IV_30 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_29 is

   port( A : in std_logic;  Y : out std_logic);

end IV_29;

architecture SYN_BEHAVIORAL of IV_29 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_28 is

   port( A : in std_logic;  Y : out std_logic);

end IV_28;

architecture SYN_BEHAVIORAL of IV_28 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_27 is

   port( A : in std_logic;  Y : out std_logic);

end IV_27;

architecture SYN_BEHAVIORAL of IV_27 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_26 is

   port( A : in std_logic;  Y : out std_logic);

end IV_26;

architecture SYN_BEHAVIORAL of IV_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_25 is

   port( A : in std_logic;  Y : out std_logic);

end IV_25;

architecture SYN_BEHAVIORAL of IV_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_24 is

   port( A : in std_logic;  Y : out std_logic);

end IV_24;

architecture SYN_BEHAVIORAL of IV_24 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_23 is

   port( A : in std_logic;  Y : out std_logic);

end IV_23;

architecture SYN_BEHAVIORAL of IV_23 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_22 is

   port( A : in std_logic;  Y : out std_logic);

end IV_22;

architecture SYN_BEHAVIORAL of IV_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_21 is

   port( A : in std_logic;  Y : out std_logic);

end IV_21;

architecture SYN_BEHAVIORAL of IV_21 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_20 is

   port( A : in std_logic;  Y : out std_logic);

end IV_20;

architecture SYN_BEHAVIORAL of IV_20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_19 is

   port( A : in std_logic;  Y : out std_logic);

end IV_19;

architecture SYN_BEHAVIORAL of IV_19 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_18 is

   port( A : in std_logic;  Y : out std_logic);

end IV_18;

architecture SYN_BEHAVIORAL of IV_18 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_17 is

   port( A : in std_logic;  Y : out std_logic);

end IV_17;

architecture SYN_BEHAVIORAL of IV_17 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_16 is

   port( A : in std_logic;  Y : out std_logic);

end IV_16;

architecture SYN_BEHAVIORAL of IV_16 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_15 is

   port( A : in std_logic;  Y : out std_logic);

end IV_15;

architecture SYN_BEHAVIORAL of IV_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_14 is

   port( A : in std_logic;  Y : out std_logic);

end IV_14;

architecture SYN_BEHAVIORAL of IV_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_13 is

   port( A : in std_logic;  Y : out std_logic);

end IV_13;

architecture SYN_BEHAVIORAL of IV_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_12 is

   port( A : in std_logic;  Y : out std_logic);

end IV_12;

architecture SYN_BEHAVIORAL of IV_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_11 is

   port( A : in std_logic;  Y : out std_logic);

end IV_11;

architecture SYN_BEHAVIORAL of IV_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_10 is

   port( A : in std_logic;  Y : out std_logic);

end IV_10;

architecture SYN_BEHAVIORAL of IV_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_9 is

   port( A : in std_logic;  Y : out std_logic);

end IV_9;

architecture SYN_BEHAVIORAL of IV_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_8 is

   port( A : in std_logic;  Y : out std_logic);

end IV_8;

architecture SYN_BEHAVIORAL of IV_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_7 is

   port( A : in std_logic;  Y : out std_logic);

end IV_7;

architecture SYN_BEHAVIORAL of IV_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_6 is

   port( A : in std_logic;  Y : out std_logic);

end IV_6;

architecture SYN_BEHAVIORAL of IV_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_5 is

   port( A : in std_logic;  Y : out std_logic);

end IV_5;

architecture SYN_BEHAVIORAL of IV_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_4 is

   port( A : in std_logic;  Y : out std_logic);

end IV_4;

architecture SYN_BEHAVIORAL of IV_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_3 is

   port( A : in std_logic;  Y : out std_logic);

end IV_3;

architecture SYN_BEHAVIORAL of IV_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_2 is

   port( A : in std_logic;  Y : out std_logic);

end IV_2;

architecture SYN_BEHAVIORAL of IV_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_1 is

   port( A : in std_logic;  Y : out std_logic);

end IV_1;

architecture SYN_BEHAVIORAL of IV_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : INV_X1 port map( A => n4, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n4);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_ARCH2 of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity IV_0 is

   port( A : in std_logic;  Y : out std_logic);

end IV_0;

architecture SYN_BEHAVIORAL of IV_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity FD_GEN_N32 is

   port( D : in std_logic_vector (31 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (31 downto 0));

end FD_GEN_N32;

architecture SYN_ASYNC of FD_GEN_N32 is

   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33 : std_logic;

begin
   
   Q_reg_31_inst : DFFR_X1 port map( D => D(31), CK => CK, RN => n32, Q => 
                           Q(31), QN => n33);
   Q_reg_30_inst : DFFR_X1 port map( D => D(30), CK => CK, RN => n32, Q => 
                           Q(30), QN => n31);
   Q_reg_29_inst : DFFR_X1 port map( D => D(29), CK => CK, RN => n32, Q => 
                           Q(29), QN => n30);
   Q_reg_28_inst : DFFR_X1 port map( D => D(28), CK => CK, RN => n32, Q => 
                           Q(28), QN => n29);
   Q_reg_27_inst : DFFR_X1 port map( D => D(27), CK => CK, RN => n32, Q => 
                           Q(27), QN => n28);
   Q_reg_26_inst : DFFR_X1 port map( D => D(26), CK => CK, RN => n32, Q => 
                           Q(26), QN => n27);
   Q_reg_25_inst : DFFR_X1 port map( D => D(25), CK => CK, RN => n32, Q => 
                           Q(25), QN => n26);
   Q_reg_24_inst : DFFR_X1 port map( D => D(24), CK => CK, RN => n32, Q => 
                           Q(24), QN => n25);
   Q_reg_23_inst : DFFR_X1 port map( D => D(23), CK => CK, RN => n32, Q => 
                           Q(23), QN => n24);
   Q_reg_22_inst : DFFR_X1 port map( D => D(22), CK => CK, RN => n32, Q => 
                           Q(22), QN => n23);
   Q_reg_21_inst : DFFR_X1 port map( D => D(21), CK => CK, RN => n32, Q => 
                           Q(21), QN => n22);
   Q_reg_20_inst : DFFR_X1 port map( D => D(20), CK => CK, RN => n32, Q => 
                           Q(20), QN => n21);
   Q_reg_19_inst : DFFR_X1 port map( D => D(19), CK => CK, RN => n32, Q => 
                           Q(19), QN => n20);
   Q_reg_18_inst : DFFR_X1 port map( D => D(18), CK => CK, RN => n32, Q => 
                           Q(18), QN => n19);
   Q_reg_17_inst : DFFR_X1 port map( D => D(17), CK => CK, RN => n32, Q => 
                           Q(17), QN => n18);
   Q_reg_16_inst : DFFR_X1 port map( D => D(16), CK => CK, RN => n32, Q => 
                           Q(16), QN => n17);
   Q_reg_15_inst : DFFR_X1 port map( D => D(15), CK => CK, RN => n32, Q => 
                           Q(15), QN => n16);
   Q_reg_14_inst : DFFR_X1 port map( D => D(14), CK => CK, RN => n32, Q => 
                           Q(14), QN => n15);
   Q_reg_13_inst : DFFR_X1 port map( D => D(13), CK => CK, RN => n32, Q => 
                           Q(13), QN => n14);
   Q_reg_12_inst : DFFR_X1 port map( D => D(12), CK => CK, RN => n32, Q => 
                           Q(12), QN => n13);
   Q_reg_11_inst : DFFR_X1 port map( D => D(11), CK => CK, RN => n32, Q => 
                           Q(11), QN => n12);
   Q_reg_10_inst : DFFR_X1 port map( D => D(10), CK => CK, RN => n32, Q => 
                           Q(10), QN => n11);
   Q_reg_9_inst : DFFR_X1 port map( D => D(9), CK => CK, RN => n32, Q => Q(9), 
                           QN => n10);
   Q_reg_8_inst : DFFR_X1 port map( D => D(8), CK => CK, RN => n32, Q => Q(8), 
                           QN => n9);
   Q_reg_7_inst : DFFR_X1 port map( D => D(7), CK => CK, RN => n32, Q => Q(7), 
                           QN => n8);
   Q_reg_6_inst : DFFR_X1 port map( D => D(6), CK => CK, RN => n32, Q => Q(6), 
                           QN => n7);
   Q_reg_5_inst : DFFR_X1 port map( D => D(5), CK => CK, RN => n32, Q => Q(5), 
                           QN => n6);
   Q_reg_4_inst : DFFR_X1 port map( D => D(4), CK => CK, RN => n32, Q => Q(4), 
                           QN => n5);
   Q_reg_3_inst : DFFR_X1 port map( D => D(3), CK => CK, RN => n32, Q => Q(3), 
                           QN => n4);
   Q_reg_2_inst : DFFR_X1 port map( D => D(2), CK => CK, RN => n32, Q => Q(2), 
                           QN => n3);
   Q_reg_1_inst : DFFR_X1 port map( D => D(1), CK => CK, RN => n32, Q => Q(1), 
                           QN => n2);
   Q_reg_0_inst : DFFR_X1 port map( D => D(0), CK => CK, RN => n32, Q => Q(0), 
                           QN => n1);
   U4 : INV_X2 port map( A => RESET, ZN => n32);

end SYN_ASYNC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity RCA_generic_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end RCA_generic_N32;

architecture SYN_STRUCTURAL of RCA_generic_N32 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_31_port, CTMP_30_port, CTMP_29_port, CTMP_28_port, CTMP_27_port,
      CTMP_26_port, CTMP_25_port, CTMP_24_port, CTMP_23_port, CTMP_22_port, 
      CTMP_21_port, CTMP_20_port, CTMP_19_port, CTMP_18_port, CTMP_17_port, 
      CTMP_16_port, CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, 
      CTMP_11_port, CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, 
      CTMP_6_port, CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, 
      CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_28 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_27 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_26 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_25 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_24 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_23 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_22 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_21 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_20 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_19 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_18 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_17 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => CTMP_16_port);
   FAI_17 : FA_16 port map( A => A(16), B => B(16), Ci => CTMP_16_port, S => 
                           S(16), Co => CTMP_17_port);
   FAI_18 : FA_15 port map( A => A(17), B => B(17), Ci => CTMP_17_port, S => 
                           S(17), Co => CTMP_18_port);
   FAI_19 : FA_14 port map( A => A(18), B => B(18), Ci => CTMP_18_port, S => 
                           S(18), Co => CTMP_19_port);
   FAI_20 : FA_13 port map( A => A(19), B => B(19), Ci => CTMP_19_port, S => 
                           S(19), Co => CTMP_20_port);
   FAI_21 : FA_12 port map( A => A(20), B => B(20), Ci => CTMP_20_port, S => 
                           S(20), Co => CTMP_21_port);
   FAI_22 : FA_11 port map( A => A(21), B => B(21), Ci => CTMP_21_port, S => 
                           S(21), Co => CTMP_22_port);
   FAI_23 : FA_10 port map( A => A(22), B => B(22), Ci => CTMP_22_port, S => 
                           S(22), Co => CTMP_23_port);
   FAI_24 : FA_9 port map( A => A(23), B => B(23), Ci => CTMP_23_port, S => 
                           S(23), Co => CTMP_24_port);
   FAI_25 : FA_8 port map( A => A(24), B => B(24), Ci => CTMP_24_port, S => 
                           S(24), Co => CTMP_25_port);
   FAI_26 : FA_7 port map( A => A(25), B => B(25), Ci => CTMP_25_port, S => 
                           S(25), Co => CTMP_26_port);
   FAI_27 : FA_6 port map( A => A(26), B => B(26), Ci => CTMP_26_port, S => 
                           S(26), Co => CTMP_27_port);
   FAI_28 : FA_5 port map( A => A(27), B => B(27), Ci => CTMP_27_port, S => 
                           S(27), Co => CTMP_28_port);
   FAI_29 : FA_4 port map( A => A(28), B => B(28), Ci => CTMP_28_port, S => 
                           S(28), Co => CTMP_29_port);
   FAI_30 : FA_3 port map( A => A(29), B => B(29), Ci => CTMP_29_port, S => 
                           S(29), Co => CTMP_30_port);
   FAI_31 : FA_2 port map( A => A(30), B => B(30), Ci => CTMP_30_port, S => 
                           S(30), Co => CTMP_31_port);
   FAI_32 : FA_1 port map( A => A(31), B => B(31), Ci => CTMP_31_port, S => 
                           S(31), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity MUX21_GENERIC_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (31 downto 0));

end MUX21_GENERIC_N32;

architecture SYN_STRUCTURAL of MUX21_GENERIC_N32 is

   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_12
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_13
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_14
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_15
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_5
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_16
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_17
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_18
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_6
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_19
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_20
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_21
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_7
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_22
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_23
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_24
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_25
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_26
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_27
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_9
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_28
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_29
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_30
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_10
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_31
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_32
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_33
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_11
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_34
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_35
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_36
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_12
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_37
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_38
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_39
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_13
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_40
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_41
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_42
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_14
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_43
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_44
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_45
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_15
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_46
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_47
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_48
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_16
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_49
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_50
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_51
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_17
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_52
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_53
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_54
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_18
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_55
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_56
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_57
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_19
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_58
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_59
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_60
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_20
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_61
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_62
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_63
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_21
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_64
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_65
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_66
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_22
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_67
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_68
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_69
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_23
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_70
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_71
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_72
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_24
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_73
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_74
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_75
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_25
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_76
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_77
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_78
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_26
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_79
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_80
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_81
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_27
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_82
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_83
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_84
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_28
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_85
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_86
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_87
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_29
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_88
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_89
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_90
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_30
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_91
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_92
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_93
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_31
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_94
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_95
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_0
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1_31_port, Y1_30_port, Y1_29_port, Y1_28_port, Y1_27_port, 
      Y1_26_port, Y1_25_port, Y1_24_port, Y1_23_port, Y1_22_port, Y1_21_port, 
      Y1_20_port, Y1_19_port, Y1_18_port, Y1_17_port, Y1_16_port, Y1_15_port, 
      Y1_14_port, Y1_13_port, Y1_12_port, Y1_11_port, Y1_10_port, Y1_9_port, 
      Y1_8_port, Y1_7_port, Y1_6_port, Y1_5_port, Y1_4_port, Y1_3_port, 
      Y1_2_port, Y1_1_port, Y1_0_port, Y2_31_port, Y2_30_port, Y2_29_port, 
      Y2_28_port, Y2_27_port, Y2_26_port, Y2_25_port, Y2_24_port, Y2_23_port, 
      Y2_22_port, Y2_21_port, Y2_20_port, Y2_19_port, Y2_18_port, Y2_17_port, 
      Y2_16_port, Y2_15_port, Y2_14_port, Y2_13_port, Y2_12_port, Y2_11_port, 
      Y2_10_port, Y2_9_port, Y2_8_port, Y2_7_port, Y2_6_port, Y2_5_port, 
      Y2_4_port, Y2_3_port, Y2_2_port, Y2_1_port, Y2_0_port : std_logic;

begin
   
   UIVi_0 : IV_0 port map( A => SEL, Y => SB);
   UND1i_0 : ND2_0 port map( A => A(0), B => SEL, Y => Y1_0_port);
   UND2i_0 : ND2_95 port map( A => B(0), B => SB, Y => Y2_0_port);
   UND3i_0 : ND2_94 port map( A => Y1_0_port, B => Y2_0_port, Y => Y(0));
   UIVi_1 : IV_31 port map( A => SEL, Y => SB);
   UND1i_1 : ND2_93 port map( A => A(1), B => SEL, Y => Y1_1_port);
   UND2i_1 : ND2_92 port map( A => B(1), B => SB, Y => Y2_1_port);
   UND3i_1 : ND2_91 port map( A => Y1_1_port, B => Y2_1_port, Y => Y(1));
   UIVi_2 : IV_30 port map( A => SEL, Y => SB);
   UND1i_2 : ND2_90 port map( A => A(2), B => SEL, Y => Y1_2_port);
   UND2i_2 : ND2_89 port map( A => B(2), B => SB, Y => Y2_2_port);
   UND3i_2 : ND2_88 port map( A => Y1_2_port, B => Y2_2_port, Y => Y(2));
   UIVi_3 : IV_29 port map( A => SEL, Y => SB);
   UND1i_3 : ND2_87 port map( A => A(3), B => SEL, Y => Y1_3_port);
   UND2i_3 : ND2_86 port map( A => B(3), B => SB, Y => Y2_3_port);
   UND3i_3 : ND2_85 port map( A => Y1_3_port, B => Y2_3_port, Y => Y(3));
   UIVi_4 : IV_28 port map( A => SEL, Y => SB);
   UND1i_4 : ND2_84 port map( A => A(4), B => SEL, Y => Y1_4_port);
   UND2i_4 : ND2_83 port map( A => B(4), B => SB, Y => Y2_4_port);
   UND3i_4 : ND2_82 port map( A => Y1_4_port, B => Y2_4_port, Y => Y(4));
   UIVi_5 : IV_27 port map( A => SEL, Y => SB);
   UND1i_5 : ND2_81 port map( A => A(5), B => SEL, Y => Y1_5_port);
   UND2i_5 : ND2_80 port map( A => B(5), B => SB, Y => Y2_5_port);
   UND3i_5 : ND2_79 port map( A => Y1_5_port, B => Y2_5_port, Y => Y(5));
   UIVi_6 : IV_26 port map( A => SEL, Y => SB);
   UND1i_6 : ND2_78 port map( A => A(6), B => SEL, Y => Y1_6_port);
   UND2i_6 : ND2_77 port map( A => B(6), B => SB, Y => Y2_6_port);
   UND3i_6 : ND2_76 port map( A => Y1_6_port, B => Y2_6_port, Y => Y(6));
   UIVi_7 : IV_25 port map( A => SEL, Y => SB);
   UND1i_7 : ND2_75 port map( A => A(7), B => SEL, Y => Y1_7_port);
   UND2i_7 : ND2_74 port map( A => B(7), B => SB, Y => Y2_7_port);
   UND3i_7 : ND2_73 port map( A => Y1_7_port, B => Y2_7_port, Y => Y(7));
   UIVi_8 : IV_24 port map( A => SEL, Y => SB);
   UND1i_8 : ND2_72 port map( A => A(8), B => SEL, Y => Y1_8_port);
   UND2i_8 : ND2_71 port map( A => B(8), B => SB, Y => Y2_8_port);
   UND3i_8 : ND2_70 port map( A => Y1_8_port, B => Y2_8_port, Y => Y(8));
   UIVi_9 : IV_23 port map( A => SEL, Y => SB);
   UND1i_9 : ND2_69 port map( A => A(9), B => SEL, Y => Y1_9_port);
   UND2i_9 : ND2_68 port map( A => B(9), B => SB, Y => Y2_9_port);
   UND3i_9 : ND2_67 port map( A => Y1_9_port, B => Y2_9_port, Y => Y(9));
   UIVi_10 : IV_22 port map( A => SEL, Y => SB);
   UND1i_10 : ND2_66 port map( A => A(10), B => SEL, Y => Y1_10_port);
   UND2i_10 : ND2_65 port map( A => B(10), B => SB, Y => Y2_10_port);
   UND3i_10 : ND2_64 port map( A => Y1_10_port, B => Y2_10_port, Y => Y(10));
   UIVi_11 : IV_21 port map( A => SEL, Y => SB);
   UND1i_11 : ND2_63 port map( A => A(11), B => SEL, Y => Y1_11_port);
   UND2i_11 : ND2_62 port map( A => B(11), B => SB, Y => Y2_11_port);
   UND3i_11 : ND2_61 port map( A => Y1_11_port, B => Y2_11_port, Y => Y(11));
   UIVi_12 : IV_20 port map( A => SEL, Y => SB);
   UND1i_12 : ND2_60 port map( A => A(12), B => SEL, Y => Y1_12_port);
   UND2i_12 : ND2_59 port map( A => B(12), B => SB, Y => Y2_12_port);
   UND3i_12 : ND2_58 port map( A => Y1_12_port, B => Y2_12_port, Y => Y(12));
   UIVi_13 : IV_19 port map( A => SEL, Y => SB);
   UND1i_13 : ND2_57 port map( A => A(13), B => SEL, Y => Y1_13_port);
   UND2i_13 : ND2_56 port map( A => B(13), B => SB, Y => Y2_13_port);
   UND3i_13 : ND2_55 port map( A => Y1_13_port, B => Y2_13_port, Y => Y(13));
   UIVi_14 : IV_18 port map( A => SEL, Y => SB);
   UND1i_14 : ND2_54 port map( A => A(14), B => SEL, Y => Y1_14_port);
   UND2i_14 : ND2_53 port map( A => B(14), B => SB, Y => Y2_14_port);
   UND3i_14 : ND2_52 port map( A => Y1_14_port, B => Y2_14_port, Y => Y(14));
   UIVi_15 : IV_17 port map( A => SEL, Y => SB);
   UND1i_15 : ND2_51 port map( A => A(15), B => SEL, Y => Y1_15_port);
   UND2i_15 : ND2_50 port map( A => B(15), B => SB, Y => Y2_15_port);
   UND3i_15 : ND2_49 port map( A => Y1_15_port, B => Y2_15_port, Y => Y(15));
   UIVi_16 : IV_16 port map( A => SEL, Y => SB);
   UND1i_16 : ND2_48 port map( A => A(16), B => SEL, Y => Y1_16_port);
   UND2i_16 : ND2_47 port map( A => B(16), B => SB, Y => Y2_16_port);
   UND3i_16 : ND2_46 port map( A => Y1_16_port, B => Y2_16_port, Y => Y(16));
   UIVi_17 : IV_15 port map( A => SEL, Y => SB);
   UND1i_17 : ND2_45 port map( A => A(17), B => SEL, Y => Y1_17_port);
   UND2i_17 : ND2_44 port map( A => B(17), B => SB, Y => Y2_17_port);
   UND3i_17 : ND2_43 port map( A => Y1_17_port, B => Y2_17_port, Y => Y(17));
   UIVi_18 : IV_14 port map( A => SEL, Y => SB);
   UND1i_18 : ND2_42 port map( A => A(18), B => SEL, Y => Y1_18_port);
   UND2i_18 : ND2_41 port map( A => B(18), B => SB, Y => Y2_18_port);
   UND3i_18 : ND2_40 port map( A => Y1_18_port, B => Y2_18_port, Y => Y(18));
   UIVi_19 : IV_13 port map( A => SEL, Y => SB);
   UND1i_19 : ND2_39 port map( A => A(19), B => SEL, Y => Y1_19_port);
   UND2i_19 : ND2_38 port map( A => B(19), B => SB, Y => Y2_19_port);
   UND3i_19 : ND2_37 port map( A => Y1_19_port, B => Y2_19_port, Y => Y(19));
   UIVi_20 : IV_12 port map( A => SEL, Y => SB);
   UND1i_20 : ND2_36 port map( A => A(20), B => SEL, Y => Y1_20_port);
   UND2i_20 : ND2_35 port map( A => B(20), B => SB, Y => Y2_20_port);
   UND3i_20 : ND2_34 port map( A => Y1_20_port, B => Y2_20_port, Y => Y(20));
   UIVi_21 : IV_11 port map( A => SEL, Y => SB);
   UND1i_21 : ND2_33 port map( A => A(21), B => SEL, Y => Y1_21_port);
   UND2i_21 : ND2_32 port map( A => B(21), B => SB, Y => Y2_21_port);
   UND3i_21 : ND2_31 port map( A => Y1_21_port, B => Y2_21_port, Y => Y(21));
   UIVi_22 : IV_10 port map( A => SEL, Y => SB);
   UND1i_22 : ND2_30 port map( A => A(22), B => SEL, Y => Y1_22_port);
   UND2i_22 : ND2_29 port map( A => B(22), B => SB, Y => Y2_22_port);
   UND3i_22 : ND2_28 port map( A => Y1_22_port, B => Y2_22_port, Y => Y(22));
   UIVi_23 : IV_9 port map( A => SEL, Y => SB);
   UND1i_23 : ND2_27 port map( A => A(23), B => SEL, Y => Y1_23_port);
   UND2i_23 : ND2_26 port map( A => B(23), B => SB, Y => Y2_23_port);
   UND3i_23 : ND2_25 port map( A => Y1_23_port, B => Y2_23_port, Y => Y(23));
   UIVi_24 : IV_8 port map( A => SEL, Y => SB);
   UND1i_24 : ND2_24 port map( A => A(24), B => SEL, Y => Y1_24_port);
   UND2i_24 : ND2_23 port map( A => B(24), B => SB, Y => Y2_24_port);
   UND3i_24 : ND2_22 port map( A => Y1_24_port, B => Y2_24_port, Y => Y(24));
   UIVi_25 : IV_7 port map( A => SEL, Y => SB);
   UND1i_25 : ND2_21 port map( A => A(25), B => SEL, Y => Y1_25_port);
   UND2i_25 : ND2_20 port map( A => B(25), B => SB, Y => Y2_25_port);
   UND3i_25 : ND2_19 port map( A => Y1_25_port, B => Y2_25_port, Y => Y(25));
   UIVi_26 : IV_6 port map( A => SEL, Y => SB);
   UND1i_26 : ND2_18 port map( A => A(26), B => SEL, Y => Y1_26_port);
   UND2i_26 : ND2_17 port map( A => B(26), B => SB, Y => Y2_26_port);
   UND3i_26 : ND2_16 port map( A => Y1_26_port, B => Y2_26_port, Y => Y(26));
   UIVi_27 : IV_5 port map( A => SEL, Y => SB);
   UND1i_27 : ND2_15 port map( A => A(27), B => SEL, Y => Y1_27_port);
   UND2i_27 : ND2_14 port map( A => B(27), B => SB, Y => Y2_27_port);
   UND3i_27 : ND2_13 port map( A => Y1_27_port, B => Y2_27_port, Y => Y(27));
   UIVi_28 : IV_4 port map( A => SEL, Y => SB);
   UND1i_28 : ND2_12 port map( A => A(28), B => SEL, Y => Y1_28_port);
   UND2i_28 : ND2_11 port map( A => B(28), B => SB, Y => Y2_28_port);
   UND3i_28 : ND2_10 port map( A => Y1_28_port, B => Y2_28_port, Y => Y(28));
   UIVi_29 : IV_3 port map( A => SEL, Y => SB);
   UND1i_29 : ND2_9 port map( A => A(29), B => SEL, Y => Y1_29_port);
   UND2i_29 : ND2_8 port map( A => B(29), B => SB, Y => Y2_29_port);
   UND3i_29 : ND2_7 port map( A => Y1_29_port, B => Y2_29_port, Y => Y(29));
   UIVi_30 : IV_2 port map( A => SEL, Y => SB);
   UND1i_30 : ND2_6 port map( A => A(30), B => SEL, Y => Y1_30_port);
   UND2i_30 : ND2_5 port map( A => B(30), B => SB, Y => Y2_30_port);
   UND3i_30 : ND2_4 port map( A => Y1_30_port, B => Y2_30_port, Y => Y(30));
   UIVi_31 : IV_1 port map( A => SEL, Y => SB);
   UND1i_31 : ND2_3 port map( A => A(31), B => SEL, Y => Y1_31_port);
   UND2i_31 : ND2_2 port map( A => B(31), B => SB, Y => Y2_31_port);
   UND3i_31 : ND2_1 port map( A => Y1_31_port, B => Y2_31_port, Y => Y(31));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_N32.all;

entity acc_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (31 downto 0));

end acc_N32;

architecture SYN_structural of acc_N32 is

   component FD_GEN_N32
      port( D : in std_logic_vector (31 downto 0);  CK, RESET : in std_logic;  
            Q : out std_logic_vector (31 downto 0));
   end component;
   
   component RCA_generic_N32
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (31 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_GENERIC_N32
      port( A, B : in std_logic_vector (31 downto 0);  SEL : in std_logic;  Y :
            out std_logic_vector (31 downto 0));
   end component;
   
   signal X_Logic0_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port,
      Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, 
      Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, 
      Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port
      , Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, 
      Y_0_port, muxoutput_31_port, muxoutput_30_port, muxoutput_29_port, 
      muxoutput_28_port, muxoutput_27_port, muxoutput_26_port, 
      muxoutput_25_port, muxoutput_24_port, muxoutput_23_port, 
      muxoutput_22_port, muxoutput_21_port, muxoutput_20_port, 
      muxoutput_19_port, muxoutput_18_port, muxoutput_17_port, 
      muxoutput_16_port, muxoutput_15_port, muxoutput_14_port, 
      muxoutput_13_port, muxoutput_12_port, muxoutput_11_port, 
      muxoutput_10_port, muxoutput_9_port, muxoutput_8_port, muxoutput_7_port, 
      muxoutput_6_port, muxoutput_5_port, muxoutput_4_port, muxoutput_3_port, 
      muxoutput_2_port, muxoutput_1_port, muxoutput_0_port, rcaoutput_31_port, 
      rcaoutput_30_port, rcaoutput_29_port, rcaoutput_28_port, 
      rcaoutput_27_port, rcaoutput_26_port, rcaoutput_25_port, 
      rcaoutput_24_port, rcaoutput_23_port, rcaoutput_22_port, 
      rcaoutput_21_port, rcaoutput_20_port, rcaoutput_19_port, 
      rcaoutput_18_port, rcaoutput_17_port, rcaoutput_16_port, 
      rcaoutput_15_port, rcaoutput_14_port, rcaoutput_13_port, 
      rcaoutput_12_port, rcaoutput_11_port, rcaoutput_10_port, rcaoutput_9_port
      , rcaoutput_8_port, rcaoutput_7_port, rcaoutput_6_port, rcaoutput_5_port,
      rcaoutput_4_port, rcaoutput_3_port, rcaoutput_2_port, rcaoutput_1_port, 
      rcaoutput_0_port, net1981 : std_logic;

begin
   Y <= ( Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, 
      Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, 
      Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, 
      Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port,
      Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   acc_mux : MUX21_GENERIC_N32 port map( A(31) => Y_31_port, A(30) => Y_30_port
                           , A(29) => Y_29_port, A(28) => Y_28_port, A(27) => 
                           Y_27_port, A(26) => Y_26_port, A(25) => Y_25_port, 
                           A(24) => Y_24_port, A(23) => Y_23_port, A(22) => 
                           Y_22_port, A(21) => Y_21_port, A(20) => Y_20_port, 
                           A(19) => Y_19_port, A(18) => Y_18_port, A(17) => 
                           Y_17_port, A(16) => Y_16_port, A(15) => Y_15_port, 
                           A(14) => Y_14_port, A(13) => Y_13_port, A(12) => 
                           Y_12_port, A(11) => Y_11_port, A(10) => Y_10_port, 
                           A(9) => Y_9_port, A(8) => Y_8_port, A(7) => Y_7_port
                           , A(6) => Y_6_port, A(5) => Y_5_port, A(4) => 
                           Y_4_port, A(3) => Y_3_port, A(2) => Y_2_port, A(1) 
                           => Y_1_port, A(0) => Y_0_port, B(31) => B(31), B(30)
                           => B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), SEL => ACCUMULATE, Y(31) => 
                           muxoutput_31_port, Y(30) => muxoutput_30_port, Y(29)
                           => muxoutput_29_port, Y(28) => muxoutput_28_port, 
                           Y(27) => muxoutput_27_port, Y(26) => 
                           muxoutput_26_port, Y(25) => muxoutput_25_port, Y(24)
                           => muxoutput_24_port, Y(23) => muxoutput_23_port, 
                           Y(22) => muxoutput_22_port, Y(21) => 
                           muxoutput_21_port, Y(20) => muxoutput_20_port, Y(19)
                           => muxoutput_19_port, Y(18) => muxoutput_18_port, 
                           Y(17) => muxoutput_17_port, Y(16) => 
                           muxoutput_16_port, Y(15) => muxoutput_15_port, Y(14)
                           => muxoutput_14_port, Y(13) => muxoutput_13_port, 
                           Y(12) => muxoutput_12_port, Y(11) => 
                           muxoutput_11_port, Y(10) => muxoutput_10_port, Y(9) 
                           => muxoutput_9_port, Y(8) => muxoutput_8_port, Y(7) 
                           => muxoutput_7_port, Y(6) => muxoutput_6_port, Y(5) 
                           => muxoutput_5_port, Y(4) => muxoutput_4_port, Y(3) 
                           => muxoutput_3_port, Y(2) => muxoutput_2_port, Y(1) 
                           => muxoutput_1_port, Y(0) => muxoutput_0_port);
   acc_rca : RCA_generic_N32 port map( A(31) => A(31), A(30) => A(30), A(29) =>
                           A(29), A(28) => A(28), A(27) => A(27), A(26) => 
                           A(26), A(25) => A(25), A(24) => A(24), A(23) => 
                           A(23), A(22) => A(22), A(21) => A(21), A(20) => 
                           A(20), A(19) => A(19), A(18) => A(18), A(17) => 
                           A(17), A(16) => A(16), A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(31) => muxoutput_31_port, B(30) => 
                           muxoutput_30_port, B(29) => muxoutput_29_port, B(28)
                           => muxoutput_28_port, B(27) => muxoutput_27_port, 
                           B(26) => muxoutput_26_port, B(25) => 
                           muxoutput_25_port, B(24) => muxoutput_24_port, B(23)
                           => muxoutput_23_port, B(22) => muxoutput_22_port, 
                           B(21) => muxoutput_21_port, B(20) => 
                           muxoutput_20_port, B(19) => muxoutput_19_port, B(18)
                           => muxoutput_18_port, B(17) => muxoutput_17_port, 
                           B(16) => muxoutput_16_port, B(15) => 
                           muxoutput_15_port, B(14) => muxoutput_14_port, B(13)
                           => muxoutput_13_port, B(12) => muxoutput_12_port, 
                           B(11) => muxoutput_11_port, B(10) => 
                           muxoutput_10_port, B(9) => muxoutput_9_port, B(8) =>
                           muxoutput_8_port, B(7) => muxoutput_7_port, B(6) => 
                           muxoutput_6_port, B(5) => muxoutput_5_port, B(4) => 
                           muxoutput_4_port, B(3) => muxoutput_3_port, B(2) => 
                           muxoutput_2_port, B(1) => muxoutput_1_port, B(0) => 
                           muxoutput_0_port, Ci => X_Logic0_port, S(31) => 
                           rcaoutput_31_port, S(30) => rcaoutput_30_port, S(29)
                           => rcaoutput_29_port, S(28) => rcaoutput_28_port, 
                           S(27) => rcaoutput_27_port, S(26) => 
                           rcaoutput_26_port, S(25) => rcaoutput_25_port, S(24)
                           => rcaoutput_24_port, S(23) => rcaoutput_23_port, 
                           S(22) => rcaoutput_22_port, S(21) => 
                           rcaoutput_21_port, S(20) => rcaoutput_20_port, S(19)
                           => rcaoutput_19_port, S(18) => rcaoutput_18_port, 
                           S(17) => rcaoutput_17_port, S(16) => 
                           rcaoutput_16_port, S(15) => rcaoutput_15_port, S(14)
                           => rcaoutput_14_port, S(13) => rcaoutput_13_port, 
                           S(12) => rcaoutput_12_port, S(11) => 
                           rcaoutput_11_port, S(10) => rcaoutput_10_port, S(9) 
                           => rcaoutput_9_port, S(8) => rcaoutput_8_port, S(7) 
                           => rcaoutput_7_port, S(6) => rcaoutput_6_port, S(5) 
                           => rcaoutput_5_port, S(4) => rcaoutput_4_port, S(3) 
                           => rcaoutput_3_port, S(2) => rcaoutput_2_port, S(1) 
                           => rcaoutput_1_port, S(0) => rcaoutput_0_port, Co =>
                           net1981);
   acc_fd : FD_GEN_N32 port map( D(31) => rcaoutput_31_port, D(30) => 
                           rcaoutput_30_port, D(29) => rcaoutput_29_port, D(28)
                           => rcaoutput_28_port, D(27) => rcaoutput_27_port, 
                           D(26) => rcaoutput_26_port, D(25) => 
                           rcaoutput_25_port, D(24) => rcaoutput_24_port, D(23)
                           => rcaoutput_23_port, D(22) => rcaoutput_22_port, 
                           D(21) => rcaoutput_21_port, D(20) => 
                           rcaoutput_20_port, D(19) => rcaoutput_19_port, D(18)
                           => rcaoutput_18_port, D(17) => rcaoutput_17_port, 
                           D(16) => rcaoutput_16_port, D(15) => 
                           rcaoutput_15_port, D(14) => rcaoutput_14_port, D(13)
                           => rcaoutput_13_port, D(12) => rcaoutput_12_port, 
                           D(11) => rcaoutput_11_port, D(10) => 
                           rcaoutput_10_port, D(9) => rcaoutput_9_port, D(8) =>
                           rcaoutput_8_port, D(7) => rcaoutput_7_port, D(6) => 
                           rcaoutput_6_port, D(5) => rcaoutput_5_port, D(4) => 
                           rcaoutput_4_port, D(3) => rcaoutput_3_port, D(2) => 
                           rcaoutput_2_port, D(1) => rcaoutput_1_port, D(0) => 
                           rcaoutput_0_port, CK => CLK, RESET => RST_n, Q(31) 
                           => Y_31_port, Q(30) => Y_30_port, Q(29) => Y_29_port
                           , Q(28) => Y_28_port, Q(27) => Y_27_port, Q(26) => 
                           Y_26_port, Q(25) => Y_25_port, Q(24) => Y_24_port, 
                           Q(23) => Y_23_port, Q(22) => Y_22_port, Q(21) => 
                           Y_21_port, Q(20) => Y_20_port, Q(19) => Y_19_port, 
                           Q(18) => Y_18_port, Q(17) => Y_17_port, Q(16) => 
                           Y_16_port, Q(15) => Y_15_port, Q(14) => Y_14_port, 
                           Q(13) => Y_13_port, Q(12) => Y_12_port, Q(11) => 
                           Y_11_port, Q(10) => Y_10_port, Q(9) => Y_9_port, 
                           Q(8) => Y_8_port, Q(7) => Y_7_port, Q(6) => Y_6_port
                           , Q(5) => Y_5_port, Q(4) => Y_4_port, Q(3) => 
                           Y_3_port, Q(2) => Y_2_port, Q(1) => Y_1_port, Q(0) 
                           => Y_0_port);
   X_Logic0_port <= '0';

end SYN_structural;
