
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL_N8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL_N8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_95 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_95;

architecture SYN_BEHAVIORAL of FA_95 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17956, net17848, net17146, n3, n4, n5 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n5, ZN => n4);
   U2 : NAND2_X1 port map( A1 => n4, A2 => net17146, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n5);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => n3);
   U6 : CLKBUF_X1 port map( A => B, Z => net17956);
   U7 : CLKBUF_X1 port map( A => A, Z => net17848);
   U8 : NAND2_X1 port map( A1 => net17848, A2 => net17956, ZN => net17146);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_94 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_94;

architecture SYN_BEHAVIORAL of FA_94 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => n4, Z => n3);
   U2 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n6);
   U3 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => Co);
   U4 : INV_X1 port map( A => n4, ZN => n7);
   U5 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U6 : XNOR2_X1 port map( A => A, B => B, ZN => n4);
   U7 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_93 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_93;

architecture SYN_BEHAVIORAL of FA_93 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_92 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_92;

architecture SYN_BEHAVIORAL of FA_92 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17135, net17134, n3, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => net17135);
   U2 : NAND2_X1 port map( A1 => net17135, A2 => net17134, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n4);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => net17134);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_91 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_91;

architecture SYN_BEHAVIORAL of FA_91 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_90 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_90;

architecture SYN_BEHAVIORAL of FA_90 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_89 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_89;

architecture SYN_BEHAVIORAL of FA_89 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_88 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_88;

architecture SYN_BEHAVIORAL of FA_88 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_87 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_87;

architecture SYN_BEHAVIORAL of FA_87 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_86 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_86;

architecture SYN_BEHAVIORAL of FA_86 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_85 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_85;

architecture SYN_BEHAVIORAL of FA_85 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_84 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_84;

architecture SYN_BEHAVIORAL of FA_84 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_83 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_83;

architecture SYN_BEHAVIORAL of FA_83 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_82 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_82;

architecture SYN_BEHAVIORAL of FA_82 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n5);
   U2 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => Co);
   U3 : INV_X1 port map( A => n3, ZN => n6);
   U4 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U5 : XNOR2_X1 port map( A => A, B => B, ZN => n3);
   U6 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_81 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_81;

architecture SYN_BEHAVIORAL of FA_81 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n5, ZN => S);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n6);
   U3 : XNOR2_X1 port map( A => A, B => B, ZN => n5);
   U4 : INV_X1 port map( A => n5, ZN => n4);
   U5 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => n6, ZN => n3);
   U6 : INV_X1 port map( A => n3, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_80 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_80;

architecture SYN_BEHAVIORAL of FA_80 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => A, Z => n3);
   U2 : XOR2_X1 port map( A => A, B => Ci, Z => n4);
   U3 : XOR2_X1 port map( A => B, B => n4, Z => S);
   U4 : NAND2_X1 port map( A1 => n3, A2 => B, ZN => n6);
   U5 : OAI21_X1 port map( B1 => B, B2 => n3, A => Ci, ZN => n5);
   U6 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_79 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_79;

architecture SYN_BEHAVIORAL of FA_79 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n6, A2 => Ci, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => n9, B => Ci, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_78 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_78;

architecture SYN_BEHAVIORAL of FA_78 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : BUF_X1 port map( A => Ci, Z => n3);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => n4, A2 => Ci, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => n3, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_77 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_77;

architecture SYN_BEHAVIORAL of FA_77 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U2 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U3 : NAND2_X1 port map( A1 => Ci, A2 => n3, ZN => n4);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U6 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_76 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_76;

architecture SYN_BEHAVIORAL of FA_76 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_75 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_75;

architecture SYN_BEHAVIORAL of FA_75 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n3);
   U2 : OR2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => n3, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_74 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_74;

architecture SYN_BEHAVIORAL of FA_74 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n6, A2 => Ci, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_73 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_73;

architecture SYN_BEHAVIORAL of FA_73 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_72 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_72;

architecture SYN_BEHAVIORAL of FA_72 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_71 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_71;

architecture SYN_BEHAVIORAL of FA_71 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => A, A2 => n3, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_70 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_70;

architecture SYN_BEHAVIORAL of FA_70 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_69 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_69;

architecture SYN_BEHAVIORAL of FA_69 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n3);
   U2 : NAND2_X1 port map( A1 => A, A2 => n3, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_68 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_68;

architecture SYN_BEHAVIORAL of FA_68 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_67 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_67;

architecture SYN_BEHAVIORAL of FA_67 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_66 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_66;

architecture SYN_BEHAVIORAL of FA_66 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n4, ZN => n3);
   U2 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n8);
   U3 : INV_X1 port map( A => A, ZN => n5);
   U4 : INV_X1 port map( A => B, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n6);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);
   U8 : XNOR2_X1 port map( A => B, B => A, ZN => n9);
   U9 : XNOR2_X1 port map( A => Ci, B => n9, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_65 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_65;

architecture SYN_BEHAVIORAL of FA_65 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17001, net17003, net17923, n3, n4, n5 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => B, B => A, ZN => n3);
   U2 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U3 : CLKBUF_X1 port map( A => B, Z => n4);
   U4 : OR2_X1 port map( A1 => A, A2 => n4, ZN => net17003);
   U5 : NAND2_X1 port map( A1 => n4, A2 => A, ZN => net17001);
   U6 : CLKBUF_X1 port map( A => Ci, Z => net17923);
   U7 : NAND2_X1 port map( A1 => net17923, A2 => net17003, ZN => n5);
   U8 : NAND2_X1 port map( A1 => net17001, A2 => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_64 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_64;

architecture SYN_BEHAVIORAL of FA_64 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => n6, Z => n3);
   U2 : OR2_X1 port map( A1 => n6, A2 => n7, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U4 : XOR2_X1 port map( A => n3, B => n7, Z => S);
   U5 : XNOR2_X1 port map( A => B, B => A, ZN => n6);
   U6 : INV_X1 port map( A => Ci, ZN => n7);
   U7 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => n3, B => Ci, Z => S);
   U2 : XOR2_X1 port map( A => B, B => A, Z => n3);
   U3 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n8);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => n5, A2 => n4, ZN => n6);
   U7 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U8 : NAND2_X1 port map( A1 => n8, A2 => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n3);
   U3 : NAND2_X1 port map( A1 => A, A2 => n3, ZN => n6);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => A, B => B, ZN => n7);
   U7 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U2 : XOR2_X1 port map( A => B, B => A, Z => n3);
   U3 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n8);
   U4 : INV_X1 port map( A => A, ZN => n5);
   U5 : INV_X1 port map( A => B, ZN => n4);
   U6 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => n6);
   U7 : NAND2_X1 port map( A1 => Ci, A2 => n6, ZN => n7);
   U8 : NAND2_X1 port map( A1 => n7, A2 => n8, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n3);
   U2 : XOR2_X1 port map( A => n3, B => n4, Z => S);
   U3 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U4 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n9);
   U5 : INV_X1 port map( A => A, ZN => n6);
   U6 : INV_X1 port map( A => B, ZN => n5);
   U7 : NAND2_X1 port map( A1 => n6, A2 => n5, ZN => n7);
   U8 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n8);
   U9 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => B, Z => n3);
   U2 : XOR2_X1 port map( A => n5, B => n4, Z => S);
   U3 : XOR2_X1 port map( A => n3, B => A, Z => n4);
   U4 : CLKBUF_X1 port map( A => Ci, Z => n5);
   U5 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n10);
   U6 : INV_X1 port map( A => A, ZN => n7);
   U7 : INV_X1 port map( A => B, ZN => n6);
   U8 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => n8);
   U9 : NAND2_X1 port map( A1 => Ci, A2 => n8, ZN => n9);
   U10 : NAND2_X1 port map( A1 => n10, A2 => n9, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : CLKBUF_X1 port map( A => Ci, Z => n3);
   U3 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n6);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => n3, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n3);
   U2 : OR2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => B, A2 => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => n3, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n3);
   U2 : XOR2_X1 port map( A => n4, B => n3, Z => S);
   U3 : XOR2_X1 port map( A => B, B => A, Z => n4);
   U4 : OR2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n5, ZN => n6);
   U7 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Ci, Z => n3);
   U2 : XOR2_X1 port map( A => n3, B => n4, Z => S);
   U3 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U4 : OR2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U5 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n7);
   U6 : NAND2_X1 port map( A1 => Ci, A2 => n5, ZN => n6);
   U7 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => A, ZN => n3);
   U2 : XNOR2_X1 port map( A => Ci, B => n6, ZN => S);
   U3 : NAND2_X1 port map( A1 => A, A2 => B, ZN => n5);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n3, ZN => n4);
   U5 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => A, ZN => n5);
   U2 : CLKBUF_X1 port map( A => B, Z => n3);
   U3 : CLKBUF_X1 port map( A => Ci, Z => n4);
   U4 : NAND2_X1 port map( A1 => A, A2 => n3, ZN => n7);
   U5 : NAND2_X1 port map( A1 => Ci, A2 => n5, ZN => n6);
   U6 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => Co);
   U7 : XNOR2_X1 port map( A => B, B => A, ZN => n8);
   U8 : XNOR2_X1 port map( A => n4, B => n8, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U2 : CLKBUF_X1 port map( A => B, Z => n3);
   U3 : NAND2_X1 port map( A1 => A, A2 => n3, ZN => n6);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => Ci, B => n7, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n10 : std_logic;

begin
   
   U1 : BUF_X1 port map( A => Ci, Z => n3);
   U2 : CLKBUF_X1 port map( A => B, Z => n4);
   U3 : NAND2_X1 port map( A1 => A, A2 => n4, ZN => n9);
   U4 : INV_X1 port map( A => A, ZN => n6);
   U5 : INV_X1 port map( A => B, ZN => n5);
   U6 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => n7);
   U7 : NAND2_X1 port map( A1 => Ci, A2 => n7, ZN => n8);
   U8 : NAND2_X1 port map( A1 => n8, A2 => n9, ZN => Co);
   U9 : XNOR2_X1 port map( A => B, B => A, ZN => n10);
   U10 : XNOR2_X1 port map( A => n3, B => n10, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => B, Z => n3);
   U2 : OR2_X1 port map( A1 => B, A2 => A, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => A, ZN => n6);
   U4 : NAND2_X1 port map( A1 => Ci, A2 => n4, ZN => n5);
   U5 : NAND2_X1 port map( A1 => n5, A2 => n6, ZN => Co);
   U6 : XNOR2_X1 port map( A => B, B => A, ZN => n7);
   U7 : XNOR2_X1 port map( A => n7, B => Ci, ZN => S);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net16907, net16910, net16911, net17829, net17832, n3, n4, n5 : 
      std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => Ci, B => n3, ZN => S);
   U2 : XNOR2_X1 port map( A => B, B => A, ZN => n3);
   U3 : CLKBUF_X1 port map( A => Ci, Z => net17832);
   U4 : CLKBUF_X1 port map( A => B, Z => net17829);
   U5 : INV_X1 port map( A => A, ZN => net16910);
   U6 : NAND2_X1 port map( A1 => A, A2 => net17829, ZN => net16907);
   U7 : INV_X1 port map( A => net17829, ZN => net16911);
   U8 : NAND2_X1 port map( A1 => net16910, A2 => net16911, ZN => n4);
   U9 : NAND2_X1 port map( A1 => net17832, A2 => n4, ZN => n5);
   U10 : NAND2_X1 port map( A1 => net16907, A2 => n5, ZN => Co);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity RCA_generic_N16_5 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_generic_N16_5;

architecture SYN_STRUCTURAL of RCA_generic_N16_5 is

   component FA_65
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_66
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_67
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_68
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_69
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_70
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_71
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_72
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_73
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_74
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_75
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_76
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_77
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_78
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_79
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_80
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_80 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_79 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_78 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_77 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_76 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_75 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_74 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_73 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_72 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_71 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_70 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_69 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_68 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_67 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_66 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_65 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity RCA_generic_N16_4 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_generic_N16_4;

architecture SYN_STRUCTURAL of RCA_generic_N16_4 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_64
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_64 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_60 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_59 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_58 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_57 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_56 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_55 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_54 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_53 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_52 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_51 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_50 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_49 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity MUX51_GENERIC_N16_7 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX51_GENERIC_N16_7;

architecture SYN_BEHAVIORAL of MUX51_GENERIC_N16_7 is

   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17328, net17330, net17435, net17440, net17443, net17447, net17449,
      net17450, net17818, net17850, net17914, net17937, net17968, net17967, 
      net17966, net18335, net17934, net17911, net17893, net17825, net17465, 
      net17464, net17460, net17459, net17457, net17454, net17871, net17468, 
      net17944, net17452, net17438, net17437, n40, n41, n42, n43, n44, n45, n46
      , n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, 
      n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
      n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, 
      n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, 
      n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, 
      n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, 
      n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, 
      n164 : std_logic;

begin
   
   U1 : AND4_X1 port map( A1 => net17435, A2 => net17437, A3 => net17438, A4 =>
                           net17447, ZN => n40);
   U2 : NAND3_X1 port map( A1 => net17944, A2 => net17438, A3 => net17437, ZN 
                           => n42);
   U3 : OAI211_X1 port map( C1 => n42, C2 => net17457, A => net17460, B => 
                           net17459, ZN => Y(0));
   U4 : CLKBUF_X1 port map( A => n41, Z => net17944);
   U5 : INV_X1 port map( A => net17944, ZN => net17850);
   U6 : OR2_X1 port map( A1 => net17452, A2 => net17465, ZN => net17438);
   U7 : NOR2_X1 port map( A1 => net17438, A2 => net17450, ZN => net17449);
   U8 : INV_X1 port map( A => SEL(1), ZN => net17452);
   U9 : NAND2_X1 port map( A1 => net17452, A2 => net18335, ZN => net17437);
   U10 : NAND2_X1 port map( A1 => net17871, A2 => n43, ZN => n41);
   U11 : INV_X1 port map( A => n41, ZN => net17464);
   U12 : INV_X1 port map( A => SEL(1), ZN => n43);
   U13 : OR2_X2 port map( A1 => net17465, A2 => n43, ZN => net17328);
   U14 : INV_X1 port map( A => n43, ZN => net17825);
   U15 : NOR2_X1 port map( A1 => net17452, A2 => net17465, ZN => net17934);
   U16 : AND2_X1 port map( A1 => net17452, A2 => net18335, ZN => net17911);
   U17 : AND2_X2 port map( A1 => net17452, A2 => net18335, ZN => net17818);
   U18 : AND2_X1 port map( A1 => net17452, A2 => net17871, ZN => net17914);
   U19 : NAND2_X1 port map( A1 => net17452, A2 => net17871, ZN => net17447);
   U20 : AND2_X1 port map( A1 => n44, A2 => SEL(0), ZN => net17871);
   U21 : INV_X1 port map( A => SEL(2), ZN => n44);
   U22 : AND2_X1 port map( A1 => net17468, A2 => n44, ZN => net18335);
   U23 : AND2_X1 port map( A1 => n44, A2 => net17468, ZN => net17893);
   U24 : NAND2_X1 port map( A1 => n44, A2 => SEL(0), ZN => net17465);
   U25 : INV_X1 port map( A => SEL(0), ZN => net17468);
   U26 : AOI22_X1 port map( A1 => net17911, A2 => A(0), B1 => net17464, B2 => 
                           B(0), ZN => net17459);
   U27 : NOR2_X1 port map( A1 => n46, A2 => n48, ZN => net17460);
   U28 : AND2_X1 port map( A1 => D(0), A2 => net17934, ZN => n48);
   U29 : NOR2_X1 port map( A1 => n45, A2 => n47, ZN => n46);
   U30 : INV_X1 port map( A => C(0), ZN => n47);
   U31 : NAND2_X1 port map( A1 => net17435, A2 => E(0), ZN => net17457);
   U32 : AOI22_X1 port map( A1 => C(1), A2 => net17454, B1 => A(1), B2 => 
                           net17911, ZN => net17440);
   U33 : NAND2_X1 port map( A1 => net17825, A2 => net17893, ZN => n45);
   U34 : CLKBUF_X1 port map( A => n45, Z => net17937);
   U35 : NAND2_X1 port map( A1 => net17825, A2 => net17893, ZN => net17435);
   U36 : INV_X1 port map( A => net17435, ZN => net17454);
   U37 : NOR2_X1 port map( A1 => net17914, A2 => net17911, ZN => net17443);
   U38 : INV_X1 port map( A => n40, ZN => net17966);
   U39 : INV_X1 port map( A => n40, ZN => net17968);
   U40 : INV_X1 port map( A => n40, ZN => net17967);
   U41 : NOR2_X1 port map( A1 => net17328, A2 => n55, ZN => n132);
   U42 : NOR2_X1 port map( A1 => net17328, A2 => n56, ZN => n138);
   U43 : NOR2_X1 port map( A1 => net17328, A2 => n57, ZN => n144);
   U44 : NOR2_X1 port map( A1 => net17328, A2 => n59, ZN => n156);
   U45 : NOR2_X1 port map( A1 => net17328, A2 => n60, ZN => n162);
   U46 : NOR2_X1 port map( A1 => net17328, A2 => n58, ZN => n150);
   U47 : NOR2_X1 port map( A1 => net17328, A2 => n81, ZN => n85);
   U48 : NOR2_X1 port map( A1 => net17328, A2 => n121, ZN => n125);
   U49 : NOR2_X1 port map( A1 => net17328, A2 => n73, ZN => n77);
   U50 : NOR2_X1 port map( A1 => net17328, A2 => n89, ZN => n93);
   U51 : NOR2_X1 port map( A1 => net17328, A2 => n113, ZN => n117);
   U52 : NOR2_X1 port map( A1 => net17328, A2 => n65, ZN => n69);
   U53 : NOR2_X1 port map( A1 => net17328, A2 => n105, ZN => n109);
   U54 : NOR2_X1 port map( A1 => net17328, A2 => n97, ZN => n101);
   U55 : NOR2_X1 port map( A1 => net17447, A2 => n61, ZN => n62);
   U56 : INV_X2 port map( A => net17435, ZN => net17330);
   U57 : INV_X1 port map( A => E(10), ZN => n49);
   U58 : INV_X1 port map( A => E(11), ZN => n50);
   U59 : INV_X1 port map( A => E(12), ZN => n51);
   U60 : INV_X1 port map( A => E(13), ZN => n52);
   U61 : INV_X1 port map( A => E(14), ZN => n53);
   U62 : INV_X1 port map( A => E(15), ZN => n54);
   U63 : INV_X1 port map( A => D(10), ZN => n55);
   U64 : INV_X1 port map( A => D(11), ZN => n56);
   U65 : INV_X1 port map( A => D(12), ZN => n57);
   U66 : INV_X1 port map( A => D(13), ZN => n58);
   U67 : INV_X1 port map( A => D(14), ZN => n59);
   U68 : INV_X1 port map( A => D(15), ZN => n60);
   U69 : INV_X1 port map( A => B(1), ZN => n61);
   U70 : INV_X1 port map( A => D(1), ZN => net17450);
   U71 : NOR2_X1 port map( A1 => n62, A2 => net17449, ZN => n64);
   U72 : NAND4_X1 port map( A1 => net17443, A2 => net17328, A3 => E(1), A4 => 
                           net17937, ZN => n63);
   U73 : NAND3_X1 port map( A1 => n63, A2 => n64, A3 => net17440, ZN => Y(1));
   U74 : INV_X1 port map( A => E(2), ZN => n72);
   U75 : NAND2_X1 port map( A1 => C(2), A2 => net17330, ZN => n71);
   U76 : INV_X1 port map( A => D(2), ZN => n65);
   U77 : NAND2_X1 port map( A1 => A(2), A2 => net17818, ZN => n67);
   U78 : NAND2_X1 port map( A1 => B(2), A2 => net17914, ZN => n66);
   U79 : NAND2_X1 port map( A1 => n67, A2 => n66, ZN => n68);
   U80 : NOR2_X1 port map( A1 => n69, A2 => n68, ZN => n70);
   U81 : OAI211_X1 port map( C1 => net17966, C2 => n72, A => n71, B => n70, ZN 
                           => Y(2));
   U82 : INV_X1 port map( A => E(3), ZN => n80);
   U83 : NAND2_X1 port map( A1 => C(3), A2 => net17330, ZN => n79);
   U84 : INV_X1 port map( A => D(3), ZN => n73);
   U85 : NAND2_X1 port map( A1 => A(3), A2 => net17818, ZN => n75);
   U86 : NAND2_X1 port map( A1 => B(3), A2 => net17850, ZN => n74);
   U87 : NAND2_X1 port map( A1 => n75, A2 => n74, ZN => n76);
   U88 : NOR2_X1 port map( A1 => n77, A2 => n76, ZN => n78);
   U89 : OAI211_X1 port map( C1 => net17967, C2 => n80, A => n79, B => n78, ZN 
                           => Y(3));
   U90 : INV_X1 port map( A => E(4), ZN => n88);
   U91 : NAND2_X1 port map( A1 => C(4), A2 => net17330, ZN => n87);
   U92 : INV_X1 port map( A => D(4), ZN => n81);
   U93 : NAND2_X1 port map( A1 => A(4), A2 => net17818, ZN => n83);
   U94 : NAND2_X1 port map( A1 => B(4), A2 => net17850, ZN => n82);
   U95 : NAND2_X1 port map( A1 => n83, A2 => n82, ZN => n84);
   U96 : NOR2_X1 port map( A1 => n85, A2 => n84, ZN => n86);
   U97 : OAI211_X1 port map( C1 => net17968, C2 => n88, A => n87, B => n86, ZN 
                           => Y(4));
   U98 : INV_X1 port map( A => E(5), ZN => n96);
   U99 : NAND2_X1 port map( A1 => C(5), A2 => net17330, ZN => n95);
   U100 : INV_X1 port map( A => D(5), ZN => n89);
   U101 : NAND2_X1 port map( A1 => A(5), A2 => net17818, ZN => n91);
   U102 : NAND2_X1 port map( A1 => B(5), A2 => net17850, ZN => n90);
   U103 : NAND2_X1 port map( A1 => n91, A2 => n90, ZN => n92);
   U104 : NOR2_X1 port map( A1 => n93, A2 => n92, ZN => n94);
   U105 : OAI211_X1 port map( C1 => net17967, C2 => n96, A => n95, B => n94, ZN
                           => Y(5));
   U106 : INV_X1 port map( A => E(6), ZN => n104);
   U107 : NAND2_X1 port map( A1 => C(6), A2 => net17330, ZN => n103);
   U108 : INV_X1 port map( A => D(6), ZN => n97);
   U109 : NAND2_X1 port map( A1 => A(6), A2 => net17818, ZN => n99);
   U110 : NAND2_X1 port map( A1 => B(6), A2 => net17850, ZN => n98);
   U111 : NAND2_X1 port map( A1 => n99, A2 => n98, ZN => n100);
   U112 : NOR2_X1 port map( A1 => n101, A2 => n100, ZN => n102);
   U113 : OAI211_X1 port map( C1 => net17968, C2 => n104, A => n103, B => n102,
                           ZN => Y(6));
   U114 : INV_X1 port map( A => E(7), ZN => n112);
   U115 : NAND2_X1 port map( A1 => C(7), A2 => net17330, ZN => n111);
   U116 : INV_X1 port map( A => D(7), ZN => n105);
   U117 : NAND2_X1 port map( A1 => A(7), A2 => net17818, ZN => n107);
   U118 : NAND2_X1 port map( A1 => B(7), A2 => net17850, ZN => n106);
   U119 : NAND2_X1 port map( A1 => n107, A2 => n106, ZN => n108);
   U120 : NOR2_X1 port map( A1 => n109, A2 => n108, ZN => n110);
   U121 : OAI211_X1 port map( C1 => net17967, C2 => n112, A => n111, B => n110,
                           ZN => Y(7));
   U122 : INV_X1 port map( A => E(8), ZN => n120);
   U123 : NAND2_X1 port map( A1 => C(8), A2 => net17330, ZN => n119);
   U124 : INV_X1 port map( A => D(8), ZN => n113);
   U125 : NAND2_X1 port map( A1 => A(8), A2 => net17818, ZN => n115);
   U126 : NAND2_X1 port map( A1 => B(8), A2 => net17850, ZN => n114);
   U127 : NAND2_X1 port map( A1 => n115, A2 => n114, ZN => n116);
   U128 : NOR2_X1 port map( A1 => n117, A2 => n116, ZN => n118);
   U129 : OAI211_X1 port map( C1 => net17968, C2 => n120, A => n119, B => n118,
                           ZN => Y(8));
   U130 : INV_X1 port map( A => E(9), ZN => n128);
   U131 : NAND2_X1 port map( A1 => C(9), A2 => net17330, ZN => n127);
   U132 : INV_X1 port map( A => D(9), ZN => n121);
   U133 : NAND2_X1 port map( A1 => A(9), A2 => net17818, ZN => n123);
   U134 : NAND2_X1 port map( A1 => B(9), A2 => net17850, ZN => n122);
   U135 : NAND2_X1 port map( A1 => n123, A2 => n122, ZN => n124);
   U136 : NOR2_X1 port map( A1 => n125, A2 => n124, ZN => n126);
   U137 : OAI211_X1 port map( C1 => net17967, C2 => n128, A => n127, B => n126,
                           ZN => Y(9));
   U138 : NAND2_X1 port map( A1 => C(10), A2 => net17330, ZN => n134);
   U139 : NAND2_X1 port map( A1 => A(10), A2 => net17818, ZN => n130);
   U140 : NAND2_X1 port map( A1 => B(10), A2 => net17850, ZN => n129);
   U141 : NAND2_X1 port map( A1 => n130, A2 => n129, ZN => n131);
   U142 : NOR2_X1 port map( A1 => n132, A2 => n131, ZN => n133);
   U143 : OAI211_X1 port map( C1 => net17968, C2 => n49, A => n134, B => n133, 
                           ZN => Y(10));
   U144 : NAND2_X1 port map( A1 => C(11), A2 => net17330, ZN => n140);
   U145 : NAND2_X1 port map( A1 => A(11), A2 => net17818, ZN => n136);
   U146 : NAND2_X1 port map( A1 => B(11), A2 => net17850, ZN => n135);
   U147 : NAND2_X1 port map( A1 => n136, A2 => n135, ZN => n137);
   U148 : NOR2_X1 port map( A1 => n138, A2 => n137, ZN => n139);
   U149 : OAI211_X1 port map( C1 => net17967, C2 => n50, A => n140, B => n139, 
                           ZN => Y(11));
   U150 : NAND2_X1 port map( A1 => C(12), A2 => net17330, ZN => n146);
   U151 : NAND2_X1 port map( A1 => A(12), A2 => net17818, ZN => n142);
   U152 : NAND2_X1 port map( A1 => B(12), A2 => net17914, ZN => n141);
   U153 : NAND2_X1 port map( A1 => n142, A2 => n141, ZN => n143);
   U154 : NOR2_X1 port map( A1 => n144, A2 => n143, ZN => n145);
   U155 : OAI211_X1 port map( C1 => net17968, C2 => n51, A => n146, B => n145, 
                           ZN => Y(12));
   U156 : NAND2_X1 port map( A1 => C(13), A2 => net17330, ZN => n152);
   U157 : NAND2_X1 port map( A1 => A(13), A2 => net17818, ZN => n148);
   U158 : NAND2_X1 port map( A1 => B(13), A2 => net17914, ZN => n147);
   U159 : NAND2_X1 port map( A1 => n148, A2 => n147, ZN => n149);
   U160 : NOR2_X1 port map( A1 => n150, A2 => n149, ZN => n151);
   U161 : OAI211_X1 port map( C1 => net17967, C2 => n52, A => n152, B => n151, 
                           ZN => Y(13));
   U162 : NAND2_X1 port map( A1 => C(14), A2 => net17330, ZN => n158);
   U163 : NAND2_X1 port map( A1 => A(14), A2 => net17818, ZN => n154);
   U164 : NAND2_X1 port map( A1 => B(14), A2 => net17914, ZN => n153);
   U165 : NAND2_X1 port map( A1 => n154, A2 => n153, ZN => n155);
   U166 : NOR2_X1 port map( A1 => n156, A2 => n155, ZN => n157);
   U167 : OAI211_X1 port map( C1 => net17968, C2 => n53, A => n158, B => n157, 
                           ZN => Y(14));
   U168 : NAND2_X1 port map( A1 => C(15), A2 => net17330, ZN => n164);
   U169 : NAND2_X1 port map( A1 => A(15), A2 => net17818, ZN => n160);
   U170 : NAND2_X1 port map( A1 => B(15), A2 => net17914, ZN => n159);
   U171 : NAND2_X1 port map( A1 => n160, A2 => n159, ZN => n161);
   U172 : NOR2_X1 port map( A1 => n162, A2 => n161, ZN => n163);
   U173 : OAI211_X1 port map( C1 => net17967, C2 => n54, A => n164, B => n163, 
                           ZN => Y(15));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity MUX51_GENERIC_N16_6 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX51_GENERIC_N16_6;

architecture SYN_BEHAVIORAL of MUX51_GENERIC_N16_6 is

   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, 
      n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97
      , n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121 : 
      std_logic;

begin
   
   U1 : NAND4_X1 port map( A1 => n53, A2 => n54, A3 => n56, A4 => n55, ZN => 
                           n52);
   U2 : NAND2_X1 port map( A1 => n41, A2 => n40, ZN => n53);
   U3 : INV_X2 port map( A => n52, ZN => n113);
   U4 : INV_X2 port map( A => n53, ZN => n114);
   U5 : INV_X2 port map( A => n54, ZN => n115);
   U6 : INV_X2 port map( A => n55, ZN => n117);
   U7 : INV_X2 port map( A => n56, ZN => n116);
   U8 : INV_X1 port map( A => SEL(0), ZN => n41);
   U9 : NOR2_X1 port map( A1 => SEL(2), A2 => SEL(1), ZN => n40);
   U10 : INV_X1 port map( A => SEL(2), ZN => n43);
   U11 : NAND3_X1 port map( A1 => SEL(0), A2 => SEL(1), A3 => n43, ZN => n54);
   U12 : NAND3_X1 port map( A1 => SEL(1), A2 => n43, A3 => n41, ZN => n56);
   U13 : INV_X1 port map( A => SEL(1), ZN => n42);
   U14 : NAND3_X1 port map( A1 => SEL(0), A2 => n43, A3 => n42, ZN => n55);
   U15 : INV_X1 port map( A => E(0), ZN => n51);
   U16 : INV_X1 port map( A => C(0), ZN => n45);
   U17 : INV_X1 port map( A => B(0), ZN => n44);
   U18 : OAI22_X1 port map( A1 => n56, A2 => n45, B1 => n55, B2 => n44, ZN => 
                           n49);
   U19 : INV_X1 port map( A => A(0), ZN => n47);
   U20 : INV_X1 port map( A => D(0), ZN => n46);
   U21 : OAI22_X1 port map( A1 => n53, A2 => n47, B1 => n54, B2 => n46, ZN => 
                           n48);
   U22 : NOR2_X1 port map( A1 => n49, A2 => n48, ZN => n50);
   U23 : OAI21_X1 port map( B1 => n52, B2 => n51, A => n50, ZN => Y(0));
   U24 : NAND2_X1 port map( A1 => E(1), A2 => n113, ZN => n60);
   U25 : NAND2_X1 port map( A1 => A(1), A2 => n114, ZN => n59);
   U26 : NAND2_X1 port map( A1 => D(1), A2 => n115, ZN => n58);
   U27 : AOI22_X1 port map( A1 => B(1), A2 => n117, B1 => C(1), B2 => n116, ZN 
                           => n57);
   U28 : NAND4_X1 port map( A1 => n60, A2 => n59, A3 => n58, A4 => n57, ZN => 
                           Y(1));
   U29 : NAND2_X1 port map( A1 => E(2), A2 => n113, ZN => n64);
   U30 : NAND2_X1 port map( A1 => A(2), A2 => n114, ZN => n63);
   U31 : NAND2_X1 port map( A1 => D(2), A2 => n115, ZN => n62);
   U32 : AOI22_X1 port map( A1 => B(2), A2 => n117, B1 => C(2), B2 => n116, ZN 
                           => n61);
   U33 : NAND4_X1 port map( A1 => n64, A2 => n63, A3 => n62, A4 => n61, ZN => 
                           Y(2));
   U34 : NAND2_X1 port map( A1 => E(3), A2 => n113, ZN => n68);
   U35 : NAND2_X1 port map( A1 => A(3), A2 => n114, ZN => n67);
   U36 : NAND2_X1 port map( A1 => D(3), A2 => n115, ZN => n66);
   U37 : AOI22_X1 port map( A1 => B(3), A2 => n117, B1 => C(3), B2 => n116, ZN 
                           => n65);
   U38 : NAND4_X1 port map( A1 => n68, A2 => n67, A3 => n66, A4 => n65, ZN => 
                           Y(3));
   U39 : NAND2_X1 port map( A1 => E(4), A2 => n113, ZN => n72);
   U40 : NAND2_X1 port map( A1 => A(4), A2 => n114, ZN => n71);
   U41 : NAND2_X1 port map( A1 => D(4), A2 => n115, ZN => n70);
   U42 : AOI22_X1 port map( A1 => B(4), A2 => n117, B1 => C(4), B2 => n116, ZN 
                           => n69);
   U43 : NAND4_X1 port map( A1 => n72, A2 => n71, A3 => n70, A4 => n69, ZN => 
                           Y(4));
   U44 : NAND2_X1 port map( A1 => E(5), A2 => n113, ZN => n76);
   U45 : NAND2_X1 port map( A1 => A(5), A2 => n114, ZN => n75);
   U46 : NAND2_X1 port map( A1 => D(5), A2 => n115, ZN => n74);
   U47 : AOI22_X1 port map( A1 => B(5), A2 => n117, B1 => C(5), B2 => n116, ZN 
                           => n73);
   U48 : NAND4_X1 port map( A1 => n76, A2 => n75, A3 => n74, A4 => n73, ZN => 
                           Y(5));
   U49 : NAND2_X1 port map( A1 => E(6), A2 => n113, ZN => n80);
   U50 : NAND2_X1 port map( A1 => A(6), A2 => n114, ZN => n79);
   U51 : NAND2_X1 port map( A1 => D(6), A2 => n115, ZN => n78);
   U52 : AOI22_X1 port map( A1 => B(6), A2 => n117, B1 => C(6), B2 => n116, ZN 
                           => n77);
   U53 : NAND4_X1 port map( A1 => n80, A2 => n79, A3 => n78, A4 => n77, ZN => 
                           Y(6));
   U54 : NAND2_X1 port map( A1 => E(7), A2 => n113, ZN => n84);
   U55 : NAND2_X1 port map( A1 => A(7), A2 => n114, ZN => n83);
   U56 : NAND2_X1 port map( A1 => D(7), A2 => n115, ZN => n82);
   U57 : AOI22_X1 port map( A1 => B(7), A2 => n117, B1 => C(7), B2 => n116, ZN 
                           => n81);
   U58 : NAND4_X1 port map( A1 => n84, A2 => n83, A3 => n82, A4 => n81, ZN => 
                           Y(7));
   U59 : NAND2_X1 port map( A1 => E(8), A2 => n113, ZN => n88);
   U60 : NAND2_X1 port map( A1 => A(8), A2 => n114, ZN => n87);
   U61 : NAND2_X1 port map( A1 => D(8), A2 => n115, ZN => n86);
   U62 : AOI22_X1 port map( A1 => B(8), A2 => n117, B1 => C(8), B2 => n116, ZN 
                           => n85);
   U63 : NAND4_X1 port map( A1 => n88, A2 => n87, A3 => n86, A4 => n85, ZN => 
                           Y(8));
   U64 : NAND2_X1 port map( A1 => E(9), A2 => n113, ZN => n92);
   U65 : NAND2_X1 port map( A1 => A(9), A2 => n114, ZN => n91);
   U66 : NAND2_X1 port map( A1 => D(9), A2 => n115, ZN => n90);
   U67 : AOI22_X1 port map( A1 => B(9), A2 => n117, B1 => C(9), B2 => n116, ZN 
                           => n89);
   U68 : NAND4_X1 port map( A1 => n92, A2 => n91, A3 => n90, A4 => n89, ZN => 
                           Y(9));
   U69 : NAND2_X1 port map( A1 => E(10), A2 => n113, ZN => n96);
   U70 : NAND2_X1 port map( A1 => A(10), A2 => n114, ZN => n95);
   U71 : NAND2_X1 port map( A1 => D(10), A2 => n115, ZN => n94);
   U72 : AOI22_X1 port map( A1 => B(10), A2 => n117, B1 => C(10), B2 => n116, 
                           ZN => n93);
   U73 : NAND4_X1 port map( A1 => n96, A2 => n95, A3 => n94, A4 => n93, ZN => 
                           Y(10));
   U74 : NAND2_X1 port map( A1 => E(11), A2 => n113, ZN => n100);
   U75 : NAND2_X1 port map( A1 => A(11), A2 => n114, ZN => n99);
   U76 : NAND2_X1 port map( A1 => D(11), A2 => n115, ZN => n98);
   U77 : AOI22_X1 port map( A1 => B(11), A2 => n117, B1 => C(11), B2 => n116, 
                           ZN => n97);
   U78 : NAND4_X1 port map( A1 => n100, A2 => n99, A3 => n98, A4 => n97, ZN => 
                           Y(11));
   U79 : NAND2_X1 port map( A1 => E(12), A2 => n113, ZN => n104);
   U80 : NAND2_X1 port map( A1 => A(12), A2 => n114, ZN => n103);
   U81 : NAND2_X1 port map( A1 => D(12), A2 => n115, ZN => n102);
   U82 : AOI22_X1 port map( A1 => B(12), A2 => n117, B1 => C(12), B2 => n116, 
                           ZN => n101);
   U83 : NAND4_X1 port map( A1 => n104, A2 => n103, A3 => n102, A4 => n101, ZN 
                           => Y(12));
   U84 : NAND2_X1 port map( A1 => E(13), A2 => n113, ZN => n108);
   U85 : NAND2_X1 port map( A1 => A(13), A2 => n114, ZN => n107);
   U86 : NAND2_X1 port map( A1 => D(13), A2 => n115, ZN => n106);
   U87 : AOI22_X1 port map( A1 => B(13), A2 => n117, B1 => C(13), B2 => n116, 
                           ZN => n105);
   U88 : NAND4_X1 port map( A1 => n108, A2 => n107, A3 => n106, A4 => n105, ZN 
                           => Y(13));
   U89 : NAND2_X1 port map( A1 => E(14), A2 => n113, ZN => n112);
   U90 : NAND2_X1 port map( A1 => A(14), A2 => n114, ZN => n111);
   U91 : NAND2_X1 port map( A1 => D(14), A2 => n115, ZN => n110);
   U92 : AOI22_X1 port map( A1 => B(14), A2 => n117, B1 => C(14), B2 => n116, 
                           ZN => n109);
   U93 : NAND4_X1 port map( A1 => n112, A2 => n111, A3 => n110, A4 => n109, ZN 
                           => Y(14));
   U94 : NAND2_X1 port map( A1 => E(15), A2 => n113, ZN => n121);
   U95 : NAND2_X1 port map( A1 => A(15), A2 => n114, ZN => n120);
   U96 : NAND2_X1 port map( A1 => D(15), A2 => n115, ZN => n119);
   U97 : AOI22_X1 port map( A1 => B(15), A2 => n117, B1 => C(15), B2 => n116, 
                           ZN => n118);
   U98 : NAND4_X1 port map( A1 => n121, A2 => n120, A3 => n119, A4 => n118, ZN 
                           => Y(15));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity MUX51_GENERIC_N16_5 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX51_GENERIC_N16_5;

architecture SYN_BEHAVIORAL of MUX51_GENERIC_N16_5 is

   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, 
      n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97
      , n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116 : std_logic;

begin
   
   U1 : AND4_X2 port map( A1 => n45, A2 => n46, A3 => n48, A4 => n47, ZN => n40
                           );
   U2 : NAND2_X1 port map( A1 => n42, A2 => n41, ZN => n45);
   U3 : INV_X2 port map( A => n45, ZN => n109);
   U4 : INV_X2 port map( A => n46, ZN => n110);
   U5 : INV_X2 port map( A => n47, ZN => n112);
   U6 : INV_X2 port map( A => n48, ZN => n111);
   U7 : INV_X1 port map( A => SEL(0), ZN => n42);
   U8 : NOR2_X1 port map( A1 => SEL(2), A2 => SEL(1), ZN => n41);
   U9 : INV_X1 port map( A => SEL(2), ZN => n44);
   U10 : NAND3_X1 port map( A1 => SEL(0), A2 => SEL(1), A3 => n44, ZN => n46);
   U11 : NAND3_X1 port map( A1 => SEL(1), A2 => n44, A3 => n42, ZN => n48);
   U12 : INV_X1 port map( A => SEL(1), ZN => n43);
   U13 : NAND3_X1 port map( A1 => SEL(0), A2 => n44, A3 => n43, ZN => n47);
   U14 : NAND2_X1 port map( A1 => E(0), A2 => n40, ZN => n52);
   U15 : NAND2_X1 port map( A1 => A(0), A2 => n109, ZN => n51);
   U16 : NAND2_X1 port map( A1 => D(0), A2 => n110, ZN => n50);
   U17 : AOI22_X1 port map( A1 => B(0), A2 => n112, B1 => C(0), B2 => n111, ZN 
                           => n49);
   U18 : NAND4_X1 port map( A1 => n52, A2 => n51, A3 => n50, A4 => n49, ZN => 
                           Y(0));
   U19 : NAND2_X1 port map( A1 => E(1), A2 => n40, ZN => n56);
   U20 : NAND2_X1 port map( A1 => A(1), A2 => n109, ZN => n55);
   U21 : NAND2_X1 port map( A1 => D(1), A2 => n110, ZN => n54);
   U22 : AOI22_X1 port map( A1 => B(1), A2 => n112, B1 => C(1), B2 => n111, ZN 
                           => n53);
   U23 : NAND4_X1 port map( A1 => n56, A2 => n55, A3 => n54, A4 => n53, ZN => 
                           Y(1));
   U24 : NAND2_X1 port map( A1 => E(2), A2 => n40, ZN => n60);
   U25 : NAND2_X1 port map( A1 => A(2), A2 => n109, ZN => n59);
   U26 : NAND2_X1 port map( A1 => D(2), A2 => n110, ZN => n58);
   U27 : AOI22_X1 port map( A1 => B(2), A2 => n112, B1 => C(2), B2 => n111, ZN 
                           => n57);
   U28 : NAND4_X1 port map( A1 => n60, A2 => n59, A3 => n58, A4 => n57, ZN => 
                           Y(2));
   U29 : NAND2_X1 port map( A1 => E(3), A2 => n40, ZN => n64);
   U30 : NAND2_X1 port map( A1 => A(3), A2 => n109, ZN => n63);
   U31 : NAND2_X1 port map( A1 => D(3), A2 => n110, ZN => n62);
   U32 : AOI22_X1 port map( A1 => B(3), A2 => n112, B1 => C(3), B2 => n111, ZN 
                           => n61);
   U33 : NAND4_X1 port map( A1 => n64, A2 => n63, A3 => n62, A4 => n61, ZN => 
                           Y(3));
   U34 : NAND2_X1 port map( A1 => E(4), A2 => n40, ZN => n68);
   U35 : NAND2_X1 port map( A1 => A(4), A2 => n109, ZN => n67);
   U36 : NAND2_X1 port map( A1 => D(4), A2 => n110, ZN => n66);
   U37 : AOI22_X1 port map( A1 => B(4), A2 => n112, B1 => C(4), B2 => n111, ZN 
                           => n65);
   U38 : NAND4_X1 port map( A1 => n68, A2 => n67, A3 => n66, A4 => n65, ZN => 
                           Y(4));
   U39 : NAND2_X1 port map( A1 => E(5), A2 => n40, ZN => n72);
   U40 : NAND2_X1 port map( A1 => A(5), A2 => n109, ZN => n71);
   U41 : NAND2_X1 port map( A1 => D(5), A2 => n110, ZN => n70);
   U42 : AOI22_X1 port map( A1 => B(5), A2 => n112, B1 => C(5), B2 => n111, ZN 
                           => n69);
   U43 : NAND4_X1 port map( A1 => n72, A2 => n71, A3 => n70, A4 => n69, ZN => 
                           Y(5));
   U44 : NAND2_X1 port map( A1 => E(6), A2 => n40, ZN => n76);
   U45 : NAND2_X1 port map( A1 => A(6), A2 => n109, ZN => n75);
   U46 : NAND2_X1 port map( A1 => D(6), A2 => n110, ZN => n74);
   U47 : AOI22_X1 port map( A1 => B(6), A2 => n112, B1 => C(6), B2 => n111, ZN 
                           => n73);
   U48 : NAND4_X1 port map( A1 => n76, A2 => n75, A3 => n74, A4 => n73, ZN => 
                           Y(6));
   U49 : NAND2_X1 port map( A1 => E(7), A2 => n40, ZN => n80);
   U50 : NAND2_X1 port map( A1 => A(7), A2 => n109, ZN => n79);
   U51 : NAND2_X1 port map( A1 => D(7), A2 => n110, ZN => n78);
   U52 : AOI22_X1 port map( A1 => B(7), A2 => n112, B1 => C(7), B2 => n111, ZN 
                           => n77);
   U53 : NAND4_X1 port map( A1 => n80, A2 => n79, A3 => n78, A4 => n77, ZN => 
                           Y(7));
   U54 : NAND2_X1 port map( A1 => E(8), A2 => n40, ZN => n84);
   U55 : NAND2_X1 port map( A1 => A(8), A2 => n109, ZN => n83);
   U56 : NAND2_X1 port map( A1 => D(8), A2 => n110, ZN => n82);
   U57 : AOI22_X1 port map( A1 => B(8), A2 => n112, B1 => C(8), B2 => n111, ZN 
                           => n81);
   U58 : NAND4_X1 port map( A1 => n84, A2 => n83, A3 => n82, A4 => n81, ZN => 
                           Y(8));
   U59 : NAND2_X1 port map( A1 => E(9), A2 => n40, ZN => n88);
   U60 : NAND2_X1 port map( A1 => A(9), A2 => n109, ZN => n87);
   U61 : NAND2_X1 port map( A1 => D(9), A2 => n110, ZN => n86);
   U62 : AOI22_X1 port map( A1 => B(9), A2 => n112, B1 => C(9), B2 => n111, ZN 
                           => n85);
   U63 : NAND4_X1 port map( A1 => n88, A2 => n87, A3 => n86, A4 => n85, ZN => 
                           Y(9));
   U64 : NAND2_X1 port map( A1 => E(10), A2 => n40, ZN => n92);
   U65 : NAND2_X1 port map( A1 => A(10), A2 => n109, ZN => n91);
   U66 : NAND2_X1 port map( A1 => D(10), A2 => n110, ZN => n90);
   U67 : AOI22_X1 port map( A1 => B(10), A2 => n112, B1 => C(10), B2 => n111, 
                           ZN => n89);
   U68 : NAND4_X1 port map( A1 => n92, A2 => n91, A3 => n90, A4 => n89, ZN => 
                           Y(10));
   U69 : NAND2_X1 port map( A1 => E(11), A2 => n40, ZN => n96);
   U70 : NAND2_X1 port map( A1 => A(11), A2 => n109, ZN => n95);
   U71 : NAND2_X1 port map( A1 => D(11), A2 => n110, ZN => n94);
   U72 : AOI22_X1 port map( A1 => B(11), A2 => n112, B1 => C(11), B2 => n111, 
                           ZN => n93);
   U73 : NAND4_X1 port map( A1 => n96, A2 => n95, A3 => n94, A4 => n93, ZN => 
                           Y(11));
   U74 : NAND2_X1 port map( A1 => E(12), A2 => n40, ZN => n100);
   U75 : NAND2_X1 port map( A1 => A(12), A2 => n109, ZN => n99);
   U76 : NAND2_X1 port map( A1 => D(12), A2 => n110, ZN => n98);
   U77 : AOI22_X1 port map( A1 => B(12), A2 => n112, B1 => C(12), B2 => n111, 
                           ZN => n97);
   U78 : NAND4_X1 port map( A1 => n100, A2 => n99, A3 => n98, A4 => n97, ZN => 
                           Y(12));
   U79 : NAND2_X1 port map( A1 => E(13), A2 => n40, ZN => n104);
   U80 : NAND2_X1 port map( A1 => A(13), A2 => n109, ZN => n103);
   U81 : NAND2_X1 port map( A1 => D(13), A2 => n110, ZN => n102);
   U82 : AOI22_X1 port map( A1 => B(13), A2 => n112, B1 => C(13), B2 => n111, 
                           ZN => n101);
   U83 : NAND4_X1 port map( A1 => n104, A2 => n103, A3 => n102, A4 => n101, ZN 
                           => Y(13));
   U84 : NAND2_X1 port map( A1 => E(14), A2 => n40, ZN => n108);
   U85 : NAND2_X1 port map( A1 => A(14), A2 => n109, ZN => n107);
   U86 : NAND2_X1 port map( A1 => D(14), A2 => n110, ZN => n106);
   U87 : AOI22_X1 port map( A1 => B(14), A2 => n112, B1 => C(14), B2 => n111, 
                           ZN => n105);
   U88 : NAND4_X1 port map( A1 => n108, A2 => n107, A3 => n106, A4 => n105, ZN 
                           => Y(14));
   U89 : NAND2_X1 port map( A1 => E(15), A2 => n40, ZN => n116);
   U90 : NAND2_X1 port map( A1 => A(15), A2 => n109, ZN => n115);
   U91 : NAND2_X1 port map( A1 => D(15), A2 => n110, ZN => n114);
   U92 : AOI22_X1 port map( A1 => B(15), A2 => n112, B1 => C(15), B2 => n111, 
                           ZN => n113);
   U93 : NAND4_X1 port map( A1 => n116, A2 => n115, A3 => n114, A4 => n113, ZN 
                           => Y(15));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTH_ENCODER_7 is

   port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
         downto 0));

end BOOTH_ENCODER_7;

architecture SYN_BEHAVIORAL of BOOTH_ENCODER_7 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17634, net18302, net18311, net18291, net17640, net17639, net18332,
      net18310, net18304, n4 : std_logic;

begin
   
   U1 : NAND2_X1 port map( A1 => I(0), A2 => I(1), ZN => n4);
   U2 : XNOR2_X1 port map( A => n4, B => net18332, ZN => net18304);
   U3 : INV_X1 port map( A => I(0), ZN => net18291);
   U4 : NOR2_X1 port map( A1 => I(0), A2 => I(1), ZN => net18310);
   U5 : INV_X1 port map( A => I(0), ZN => net17640);
   U6 : INV_X1 port map( A => I(1), ZN => net17639);
   U7 : NOR2_X1 port map( A1 => net18304, A2 => net18311, ZN => O(1));
   U8 : INV_X1 port map( A => I(2), ZN => net18332);
   U9 : INV_X1 port map( A => I(2), ZN => net18302);
   U10 : NOR2_X1 port map( A1 => I(2), A2 => net18310, ZN => O(0));
   U11 : AND2_X1 port map( A1 => net18291, A2 => net17639, ZN => net18311);
   U12 : NAND2_X1 port map( A1 => net17639, A2 => net17640, ZN => net17634);
   U13 : NOR2_X1 port map( A1 => net17634, A2 => net18302, ZN => O(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTH_ENCODER_6 is

   port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
         downto 0));

end BOOTH_ENCODER_6;

architecture SYN_BEHAVIORAL of BOOTH_ENCODER_6 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => I(0), B2 => I(1), A => n4, ZN => n5);
   U2 : NAND2_X1 port map( A1 => I(1), A2 => I(0), ZN => n7);
   U3 : NAND2_X1 port map( A1 => I(1), A2 => I(0), ZN => n4);
   U4 : AOI21_X1 port map( B1 => n5, B2 => n7, A => I(2), ZN => O(0));
   U5 : INV_X1 port map( A => n7, ZN => n6);
   U6 : INV_X1 port map( A => n5, ZN => n8);
   U7 : MUX2_X1 port map( A => n6, B => n8, S => I(2), Z => O(1));
   U8 : NAND2_X1 port map( A1 => I(2), A2 => n7, ZN => n9);
   U9 : NOR2_X1 port map( A1 => n9, A2 => n8, ZN => O(2));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTH_ENCODER_5 is

   port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
         downto 0));

end BOOTH_ENCODER_5;

architecture SYN_BEHAVIORAL of BOOTH_ENCODER_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U1 : OAI21_X1 port map( B1 => I(0), B2 => I(1), A => n7, ZN => n6);
   U2 : NAND2_X1 port map( A1 => I(1), A2 => I(0), ZN => n7);
   U3 : AND3_X1 port map( A1 => n7, A2 => I(2), A3 => n6, ZN => O(2));
   U4 : AOI21_X1 port map( B1 => n7, B2 => n6, A => I(2), ZN => O(0));
   U5 : MUX2_X1 port map( A => n7, B => n6, S => I(2), Z => n5);
   U6 : INV_X1 port map( A => n5, ZN => O(1));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net17906, net17866, net17813, net17153, net17152, n3, n4, n5 : 
      std_logic;

begin
   
   U1 : BUF_X1 port map( A => A, Z => net17813);
   U2 : NAND2_X1 port map( A1 => net17152, A2 => net17153, ZN => Co);
   U3 : NAND2_X1 port map( A1 => net17906, A2 => net17813, ZN => net17153);
   U4 : XNOR2_X1 port map( A => net17866, B => net17813, ZN => S);
   U5 : BUF_X1 port map( A => B, Z => net17906);
   U6 : XNOR2_X1 port map( A => net17906, B => Ci, ZN => net17866);
   U7 : XNOR2_X1 port map( A => n4, B => n5, ZN => net17152);
   U8 : NOR2_X1 port map( A1 => B, A2 => n3, ZN => n5);
   U9 : INV_X1 port map( A => Ci, ZN => n3);
   U10 : NOR2_X1 port map( A1 => A, A2 => n3, ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity RCA_generic_N16_3 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_generic_N16_3;

architecture SYN_STRUCTURAL of RCA_generic_N16_3 is

   component FA_81
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_82
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_83
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_84
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_85
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_86
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_87
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_88
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_89
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_90
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_91
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_92
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_93
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_94
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_95
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_15_port, CTMP_14_port, CTMP_13_port, CTMP_12_port, CTMP_11_port,
      CTMP_10_port, CTMP_9_port, CTMP_8_port, CTMP_7_port, CTMP_6_port, 
      CTMP_5_port, CTMP_4_port, CTMP_3_port, CTMP_2_port, CTMP_1_port : 
      std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_95 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_94 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_93 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => CTMP_4_port);
   FAI_5 : FA_92 port map( A => A(4), B => B(4), Ci => CTMP_4_port, S => S(4), 
                           Co => CTMP_5_port);
   FAI_6 : FA_91 port map( A => A(5), B => B(5), Ci => CTMP_5_port, S => S(5), 
                           Co => CTMP_6_port);
   FAI_7 : FA_90 port map( A => A(6), B => B(6), Ci => CTMP_6_port, S => S(6), 
                           Co => CTMP_7_port);
   FAI_8 : FA_89 port map( A => A(7), B => B(7), Ci => CTMP_7_port, S => S(7), 
                           Co => CTMP_8_port);
   FAI_9 : FA_88 port map( A => A(8), B => B(8), Ci => CTMP_8_port, S => S(8), 
                           Co => CTMP_9_port);
   FAI_10 : FA_87 port map( A => A(9), B => B(9), Ci => CTMP_9_port, S => S(9),
                           Co => CTMP_10_port);
   FAI_11 : FA_86 port map( A => A(10), B => B(10), Ci => CTMP_10_port, S => 
                           S(10), Co => CTMP_11_port);
   FAI_12 : FA_85 port map( A => A(11), B => B(11), Ci => CTMP_11_port, S => 
                           S(11), Co => CTMP_12_port);
   FAI_13 : FA_84 port map( A => A(12), B => B(12), Ci => CTMP_12_port, S => 
                           S(12), Co => CTMP_13_port);
   FAI_14 : FA_83 port map( A => A(13), B => B(13), Ci => CTMP_13_port, S => 
                           S(13), Co => CTMP_14_port);
   FAI_15 : FA_82 port map( A => A(14), B => B(14), Ci => CTMP_14_port, S => 
                           S(14), Co => CTMP_15_port);
   FAI_16 : FA_81 port map( A => A(15), B => B(15), Ci => CTMP_15_port, S => 
                           S(15), Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity MUX51_GENERIC_N16_4 is

   port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX51_GENERIC_N16_4;

architecture SYN_BEHAVIORAL of MUX51_GENERIC_N16_4 is

   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X4
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, 
      n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97
      , n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, 
      n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, 
      n194, n195, n196, n197, n198, n199, n200 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => n100, A2 => E(1), ZN => n40);
   U2 : OR2_X1 port map( A1 => n42, A2 => n75, ZN => n48);
   U3 : CLKBUF_X1 port map( A => SEL(1), Z => n41);
   U4 : NAND4_X4 port map( A1 => n49, A2 => n48, A3 => n53, A4 => n96, ZN => 
                           n200);
   U5 : CLKBUF_X1 port map( A => SEL(1), Z => n42);
   U6 : CLKBUF_X1 port map( A => SEL(1), Z => n43);
   U7 : AND2_X1 port map( A1 => n76, A2 => SEL(0), ZN => n44);
   U8 : AND2_X1 port map( A1 => n85, A2 => n52, ZN => n55);
   U9 : AND2_X1 port map( A1 => n76, A2 => SEL(0), ZN => n45);
   U10 : CLKBUF_X1 port map( A => SEL(1), Z => n46);
   U11 : CLKBUF_X1 port map( A => SEL(1), Z => n47);
   U12 : NAND3_X1 port map( A1 => n92, A2 => n192, A3 => n40, ZN => n93);
   U13 : BUF_X1 port map( A => n99, Z => n49);
   U14 : OR2_X1 port map( A1 => SEL(1), A2 => n77, ZN => n99);
   U15 : AND2_X1 port map( A1 => n52, A2 => n50, ZN => n79);
   U16 : AND2_X1 port map( A1 => SEL(1), A2 => C(0), ZN => n50);
   U17 : OR2_X1 port map( A1 => SEL(1), A2 => n75, ZN => n98);
   U18 : NAND2_X2 port map( A1 => n47, A2 => n45, ZN => n192);
   U19 : AND2_X1 port map( A1 => n44, A2 => n85, ZN => n51);
   U20 : NOR2_X1 port map( A1 => n192, A2 => n73, ZN => n197);
   U21 : NOR2_X1 port map( A1 => n192, A2 => n72, ZN => n188);
   U22 : NOR2_X1 port map( A1 => n192, A2 => n71, ZN => n182);
   U23 : NOR2_X1 port map( A1 => n192, A2 => n70, ZN => n176);
   U24 : NOR2_X1 port map( A1 => n192, A2 => n69, ZN => n170);
   U25 : NOR2_X1 port map( A1 => n192, A2 => n68, ZN => n164);
   U26 : NOR2_X1 port map( A1 => n192, A2 => n67, ZN => n158);
   U27 : NOR2_X1 port map( A1 => n192, A2 => n66, ZN => n152);
   U28 : NOR2_X1 port map( A1 => n192, A2 => n141, ZN => n145);
   U29 : NOR2_X1 port map( A1 => n192, A2 => n133, ZN => n137);
   U30 : NOR2_X1 port map( A1 => n192, A2 => n125, ZN => n129);
   U31 : NOR2_X1 port map( A1 => n192, A2 => n117, ZN => n121);
   U32 : NOR2_X1 port map( A1 => n192, A2 => n109, ZN => n113);
   U33 : NOR2_X1 port map( A1 => n192, A2 => n101, ZN => n105);
   U34 : AND2_X1 port map( A1 => n76, A2 => n74, ZN => n52);
   U35 : NAND2_X1 port map( A1 => n45, A2 => n46, ZN => n53);
   U36 : AND2_X1 port map( A1 => n46, A2 => n52, ZN => n54);
   U37 : NOR2_X1 port map( A1 => n97, A2 => n87, ZN => n88);
   U38 : AND2_X2 port map( A1 => n85, A2 => n52, ZN => n56);
   U39 : NAND2_X1 port map( A1 => n43, A2 => n52, ZN => n96);
   U40 : INV_X1 port map( A => n90, ZN => n57);
   U41 : INV_X1 port map( A => n90, ZN => n193);
   U42 : NOR2_X1 port map( A1 => n90, A2 => n86, ZN => n89);
   U43 : NAND2_X1 port map( A1 => n76, A2 => n74, ZN => n75);
   U44 : NAND2_X1 port map( A1 => n76, A2 => SEL(0), ZN => n77);
   U45 : NAND2_X1 port map( A1 => n43, A2 => n52, ZN => n100);
   U46 : NAND2_X1 port map( A1 => n41, A2 => n44, ZN => n97);
   U47 : NAND2_X1 port map( A1 => n85, A2 => n45, ZN => n90);
   U48 : AOI21_X1 port map( B1 => n80, B2 => D(0), A => n79, ZN => n81);
   U49 : INV_X2 port map( A => n100, ZN => n191);
   U50 : INV_X1 port map( A => E(8), ZN => n58);
   U51 : INV_X1 port map( A => E(9), ZN => n59);
   U52 : INV_X1 port map( A => E(10), ZN => n60);
   U53 : INV_X1 port map( A => E(11), ZN => n61);
   U54 : INV_X1 port map( A => E(12), ZN => n62);
   U55 : INV_X1 port map( A => E(13), ZN => n63);
   U56 : INV_X1 port map( A => E(14), ZN => n64);
   U57 : INV_X1 port map( A => E(15), ZN => n65);
   U58 : INV_X1 port map( A => D(8), ZN => n66);
   U59 : INV_X1 port map( A => D(9), ZN => n67);
   U60 : INV_X1 port map( A => D(10), ZN => n68);
   U61 : INV_X1 port map( A => D(11), ZN => n69);
   U62 : INV_X1 port map( A => D(12), ZN => n70);
   U63 : INV_X1 port map( A => D(13), ZN => n71);
   U64 : INV_X1 port map( A => D(14), ZN => n72);
   U65 : INV_X1 port map( A => D(15), ZN => n73);
   U66 : INV_X1 port map( A => SEL(0), ZN => n74);
   U67 : INV_X1 port map( A => SEL(2), ZN => n76);
   U68 : NAND2_X1 port map( A1 => n96, A2 => E(0), ZN => n84);
   U69 : INV_X1 port map( A => SEL(1), ZN => n85);
   U70 : NAND3_X1 port map( A1 => n53, A2 => n49, A3 => n48, ZN => n83);
   U71 : INV_X1 port map( A => n98, ZN => n91);
   U72 : INV_X1 port map( A => n99, ZN => n78);
   U73 : AOI22_X1 port map( A1 => n91, A2 => A(0), B1 => n78, B2 => B(0), ZN =>
                           n82);
   U74 : INV_X1 port map( A => n97, ZN => n80);
   U75 : OAI211_X1 port map( C1 => n83, C2 => n84, A => n82, B => n81, ZN => 
                           Y(0));
   U76 : AOI22_X1 port map( A1 => C(1), A2 => n54, B1 => A(1), B2 => n55, ZN =>
                           n95);
   U77 : INV_X1 port map( A => B(1), ZN => n86);
   U78 : INV_X1 port map( A => D(1), ZN => n87);
   U79 : NOR2_X1 port map( A1 => n89, A2 => n88, ZN => n94);
   U80 : NOR2_X1 port map( A1 => n193, A2 => n91, ZN => n92);
   U81 : NAND3_X1 port map( A1 => n93, A2 => n94, A3 => n95, ZN => Y(1));
   U82 : INV_X1 port map( A => E(2), ZN => n108);
   U83 : NAND2_X1 port map( A1 => C(2), A2 => n191, ZN => n107);
   U84 : INV_X1 port map( A => D(2), ZN => n101);
   U85 : NAND2_X1 port map( A1 => A(2), A2 => n55, ZN => n103);
   U86 : NAND2_X1 port map( A1 => B(2), A2 => n193, ZN => n102);
   U87 : NAND2_X1 port map( A1 => n103, A2 => n102, ZN => n104);
   U88 : NOR2_X1 port map( A1 => n105, A2 => n104, ZN => n106);
   U89 : OAI211_X1 port map( C1 => n200, C2 => n108, A => n107, B => n106, ZN 
                           => Y(2));
   U90 : INV_X1 port map( A => E(3), ZN => n116);
   U91 : NAND2_X1 port map( A1 => C(3), A2 => n191, ZN => n115);
   U92 : INV_X1 port map( A => D(3), ZN => n109);
   U93 : NAND2_X1 port map( A1 => A(3), A2 => n56, ZN => n111);
   U94 : NAND2_X1 port map( A1 => B(3), A2 => n51, ZN => n110);
   U95 : NAND2_X1 port map( A1 => n111, A2 => n110, ZN => n112);
   U96 : NOR2_X1 port map( A1 => n113, A2 => n112, ZN => n114);
   U97 : OAI211_X1 port map( C1 => n200, C2 => n116, A => n115, B => n114, ZN 
                           => Y(3));
   U98 : INV_X1 port map( A => E(4), ZN => n124);
   U99 : NAND2_X1 port map( A1 => C(4), A2 => n191, ZN => n123);
   U100 : INV_X1 port map( A => D(4), ZN => n117);
   U101 : NAND2_X1 port map( A1 => A(4), A2 => n56, ZN => n119);
   U102 : NAND2_X1 port map( A1 => B(4), A2 => n57, ZN => n118);
   U103 : NAND2_X1 port map( A1 => n119, A2 => n118, ZN => n120);
   U104 : NOR2_X1 port map( A1 => n121, A2 => n120, ZN => n122);
   U105 : OAI211_X1 port map( C1 => n200, C2 => n124, A => n123, B => n122, ZN 
                           => Y(4));
   U106 : INV_X1 port map( A => E(5), ZN => n132);
   U107 : NAND2_X1 port map( A1 => C(5), A2 => n191, ZN => n131);
   U108 : INV_X1 port map( A => D(5), ZN => n125);
   U109 : NAND2_X1 port map( A1 => A(5), A2 => n56, ZN => n127);
   U110 : NAND2_X1 port map( A1 => B(5), A2 => n51, ZN => n126);
   U111 : NAND2_X1 port map( A1 => n127, A2 => n126, ZN => n128);
   U112 : NOR2_X1 port map( A1 => n129, A2 => n128, ZN => n130);
   U113 : OAI211_X1 port map( C1 => n200, C2 => n132, A => n131, B => n130, ZN 
                           => Y(5));
   U114 : INV_X1 port map( A => E(6), ZN => n140);
   U115 : NAND2_X1 port map( A1 => C(6), A2 => n191, ZN => n139);
   U116 : INV_X1 port map( A => D(6), ZN => n133);
   U117 : NAND2_X1 port map( A1 => A(6), A2 => n56, ZN => n135);
   U118 : NAND2_X1 port map( A1 => B(6), A2 => n57, ZN => n134);
   U119 : NAND2_X1 port map( A1 => n135, A2 => n134, ZN => n136);
   U120 : NOR2_X1 port map( A1 => n137, A2 => n136, ZN => n138);
   U121 : OAI211_X1 port map( C1 => n200, C2 => n140, A => n139, B => n138, ZN 
                           => Y(6));
   U122 : INV_X1 port map( A => E(7), ZN => n148);
   U123 : NAND2_X1 port map( A1 => C(7), A2 => n191, ZN => n147);
   U124 : INV_X1 port map( A => D(7), ZN => n141);
   U125 : NAND2_X1 port map( A1 => A(7), A2 => n56, ZN => n143);
   U126 : NAND2_X1 port map( A1 => B(7), A2 => n51, ZN => n142);
   U127 : NAND2_X1 port map( A1 => n143, A2 => n142, ZN => n144);
   U128 : NOR2_X1 port map( A1 => n145, A2 => n144, ZN => n146);
   U129 : OAI211_X1 port map( C1 => n200, C2 => n148, A => n147, B => n146, ZN 
                           => Y(7));
   U130 : NAND2_X1 port map( A1 => C(8), A2 => n191, ZN => n154);
   U131 : NAND2_X1 port map( A1 => A(8), A2 => n56, ZN => n150);
   U132 : NAND2_X1 port map( A1 => B(8), A2 => n57, ZN => n149);
   U133 : NAND2_X1 port map( A1 => n150, A2 => n149, ZN => n151);
   U134 : NOR2_X1 port map( A1 => n152, A2 => n151, ZN => n153);
   U135 : OAI211_X1 port map( C1 => n200, C2 => n58, A => n154, B => n153, ZN 
                           => Y(8));
   U136 : NAND2_X1 port map( A1 => C(9), A2 => n191, ZN => n160);
   U137 : NAND2_X1 port map( A1 => A(9), A2 => n56, ZN => n156);
   U138 : NAND2_X1 port map( A1 => B(9), A2 => n51, ZN => n155);
   U139 : NAND2_X1 port map( A1 => n156, A2 => n155, ZN => n157);
   U140 : NOR2_X1 port map( A1 => n158, A2 => n157, ZN => n159);
   U141 : OAI211_X1 port map( C1 => n200, C2 => n59, A => n160, B => n159, ZN 
                           => Y(9));
   U142 : NAND2_X1 port map( A1 => C(10), A2 => n191, ZN => n166);
   U143 : NAND2_X1 port map( A1 => A(10), A2 => n56, ZN => n162);
   U144 : NAND2_X1 port map( A1 => B(10), A2 => n57, ZN => n161);
   U145 : NAND2_X1 port map( A1 => n162, A2 => n161, ZN => n163);
   U146 : NOR2_X1 port map( A1 => n164, A2 => n163, ZN => n165);
   U147 : OAI211_X1 port map( C1 => n200, C2 => n60, A => n166, B => n165, ZN 
                           => Y(10));
   U148 : NAND2_X1 port map( A1 => C(11), A2 => n191, ZN => n172);
   U149 : NAND2_X1 port map( A1 => A(11), A2 => n56, ZN => n168);
   U150 : NAND2_X1 port map( A1 => B(11), A2 => n51, ZN => n167);
   U151 : NAND2_X1 port map( A1 => n168, A2 => n167, ZN => n169);
   U152 : NOR2_X1 port map( A1 => n170, A2 => n169, ZN => n171);
   U153 : OAI211_X1 port map( C1 => n200, C2 => n61, A => n172, B => n171, ZN 
                           => Y(11));
   U154 : NAND2_X1 port map( A1 => C(12), A2 => n191, ZN => n178);
   U155 : NAND2_X1 port map( A1 => A(12), A2 => n56, ZN => n174);
   U156 : NAND2_X1 port map( A1 => B(12), A2 => n57, ZN => n173);
   U157 : NAND2_X1 port map( A1 => n174, A2 => n173, ZN => n175);
   U158 : NOR2_X1 port map( A1 => n176, A2 => n175, ZN => n177);
   U159 : OAI211_X1 port map( C1 => n200, C2 => n62, A => n178, B => n177, ZN 
                           => Y(12));
   U160 : NAND2_X1 port map( A1 => C(13), A2 => n191, ZN => n184);
   U161 : NAND2_X1 port map( A1 => A(13), A2 => n56, ZN => n180);
   U162 : NAND2_X1 port map( A1 => B(13), A2 => n51, ZN => n179);
   U163 : NAND2_X1 port map( A1 => n180, A2 => n179, ZN => n181);
   U164 : NOR2_X1 port map( A1 => n182, A2 => n181, ZN => n183);
   U165 : OAI211_X1 port map( C1 => n200, C2 => n63, A => n184, B => n183, ZN 
                           => Y(13));
   U166 : NAND2_X1 port map( A1 => C(14), A2 => n191, ZN => n190);
   U167 : NAND2_X1 port map( A1 => A(14), A2 => n56, ZN => n186);
   U168 : NAND2_X1 port map( A1 => B(14), A2 => n57, ZN => n185);
   U169 : NAND2_X1 port map( A1 => n186, A2 => n185, ZN => n187);
   U170 : NOR2_X1 port map( A1 => n188, A2 => n187, ZN => n189);
   U171 : OAI211_X1 port map( C1 => n200, C2 => n64, A => n190, B => n189, ZN 
                           => Y(14));
   U172 : NAND2_X1 port map( A1 => C(15), A2 => n191, ZN => n199);
   U173 : NAND2_X1 port map( A1 => A(15), A2 => n56, ZN => n195);
   U174 : NAND2_X1 port map( A1 => B(15), A2 => n51, ZN => n194);
   U175 : NAND2_X1 port map( A1 => n195, A2 => n194, ZN => n196);
   U176 : NOR2_X1 port map( A1 => n197, A2 => n196, ZN => n198);
   U177 : OAI211_X1 port map( C1 => n200, C2 => n65, A => n199, B => n198, ZN 
                           => Y(15));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTH_ENCODER_4 is

   port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
         downto 0));

end BOOTH_ENCODER_4;

architecture SYN_BEHAVIORAL of BOOTH_ENCODER_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : OR2_X1 port map( A1 => I(1), A2 => I(0), ZN => n9);
   U2 : NOR2_X1 port map( A1 => n6, A2 => I(2), ZN => O(0));
   U3 : NOR2_X1 port map( A1 => I(1), A2 => I(0), ZN => n6);
   U4 : INV_X1 port map( A => n6, ZN => n4);
   U5 : XNOR2_X1 port map( A => I(2), B => n5, ZN => n7);
   U6 : NAND2_X1 port map( A1 => I(1), A2 => I(0), ZN => n5);
   U7 : NOR2_X1 port map( A1 => n9, A2 => n8, ZN => O(2));
   U8 : AND2_X2 port map( A1 => n7, A2 => n4, ZN => O(1));
   U9 : INV_X1 port map( A => I(2), ZN => n8);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTHMUL_N8 is

   port( A, B : in std_logic_vector (7 downto 0);  P : out std_logic_vector (15
         downto 0));

end BOOTHMUL_N8;

architecture SYN_STRUCTURAL of BOOTHMUL_N8 is

   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_generic_N16_4
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N16_5
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_generic_N16_3
      port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (15 downto 0);  Co : out std_logic);
   end component;
   
   component MUX51_GENERIC_N16_5
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component MUX51_GENERIC_N16_6
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component MUX51_GENERIC_N16_7
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component MUX51_GENERIC_N16_4
      port( A, B, C, D, E : in std_logic_vector (15 downto 0);  SEL : in 
            std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto
            0));
   end component;
   
   component BOOTH_ENCODER_5
      port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
            downto 0));
   end component;
   
   component BOOTH_ENCODER_6
      port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
            downto 0));
   end component;
   
   component BOOTH_ENCODER_7
      port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
            downto 0));
   end component;
   
   component BOOTH_ENCODER_4
      port( I : in std_logic_vector (2 downto 0);  O : out std_logic_vector (2 
            downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, encoder_out_11_port, 
      encoder_out_10_port, encoder_out_9_port, encoder_out_8_port, 
      encoder_out_7_port, encoder_out_6_port, encoder_out_5_port, 
      encoder_out_4_port, encoder_out_3_port, encoder_out_2_port, 
      encoder_out_1_port, encoder_out_0_port, mode_2_port, mode_1_port, 
      mux_out_3_15_port, mux_out_3_14_port, mux_out_3_13_port, 
      mux_out_3_12_port, mux_out_3_11_port, mux_out_3_10_port, mux_out_3_9_port
      , mux_out_3_8_port, mux_out_3_7_port, mux_out_3_6_port, mux_out_3_5_port,
      mux_out_3_4_port, mux_out_3_3_port, mux_out_3_2_port, mux_out_3_1_port, 
      mux_out_3_0_port, mux_out_2_15_port, mux_out_2_14_port, mux_out_2_13_port
      , mux_out_2_12_port, mux_out_2_11_port, mux_out_2_10_port, 
      mux_out_2_9_port, mux_out_2_8_port, mux_out_2_7_port, mux_out_2_6_port, 
      mux_out_2_5_port, mux_out_2_4_port, mux_out_2_3_port, mux_out_2_2_port, 
      mux_out_2_1_port, mux_out_2_0_port, mux_out_1_15_port, mux_out_1_14_port,
      mux_out_1_13_port, mux_out_1_12_port, mux_out_1_11_port, 
      mux_out_1_10_port, mux_out_1_9_port, mux_out_1_8_port, mux_out_1_7_port, 
      mux_out_1_6_port, mux_out_1_5_port, mux_out_1_4_port, mux_out_1_3_port, 
      mux_out_1_2_port, mux_out_1_1_port, mux_out_1_0_port, smA_3_12_port, 
      smA_3_11_port, smA_3_10_port, smA_3_9_port, add_in_3_15_port, 
      add_in_3_14_port, add_in_3_13_port, add_in_3_12_port, add_in_3_11_port, 
      add_in_3_10_port, add_in_3_9_port, add_in_3_8_port, add_in_3_7_port, 
      add_in_3_6_port, add_in_3_5_port, add_in_3_4_port, add_in_3_3_port, 
      add_in_3_2_port, add_in_3_1_port, add_in_3_0_port, add_in_2_15_port, 
      add_in_2_14_port, add_in_2_13_port, add_in_2_12_port, add_in_2_11_port, 
      add_in_2_10_port, add_in_2_9_port, add_in_2_8_port, add_in_2_7_port, 
      add_in_2_6_port, add_in_2_5_port, add_in_2_4_port, add_in_2_3_port, 
      add_in_2_2_port, add_in_2_1_port, add_in_2_0_port, add_in_1_15_port, 
      add_in_1_14_port, add_in_1_13_port, add_in_1_12_port, add_in_1_11_port, 
      add_in_1_10_port, add_in_1_9_port, add_in_1_8_port, add_in_1_7_port, 
      add_in_1_6_port, add_in_1_5_port, add_in_1_4_port, add_in_1_3_port, 
      add_in_1_2_port, add_in_1_1_port, add_in_1_0_port, add_in_0_15_port, 
      add_in_0_14_port, add_in_0_13_port, add_in_0_12_port, add_in_0_11_port, 
      add_in_0_10_port, add_in_0_9_port, add_in_0_8_port, add_in_0_7_port, 
      add_in_0_6_port, add_in_0_5_port, add_in_0_4_port, add_in_0_3_port, 
      add_in_0_2_port, add_in_0_1_port, add_in_0_0_port, net171, net172, net173
      , n60, n61, n73, net17656, net18319, n86, n87, n88, n89, n90, n91, n92, 
      n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   enc_i_0 : BOOTH_ENCODER_4 port map( I(2) => B(1), I(1) => B(0), I(0) => 
                           X_Logic0_port, O(2) => encoder_out_2_port, O(1) => 
                           encoder_out_1_port, O(0) => encoder_out_0_port);
   enc_i_1 : BOOTH_ENCODER_7 port map( I(2) => B(3), I(1) => B(2), I(0) => B(1)
                           , O(2) => encoder_out_5_port, O(1) => 
                           encoder_out_4_port, O(0) => encoder_out_3_port);
   enc_i_2 : BOOTH_ENCODER_6 port map( I(2) => B(5), I(1) => B(4), I(0) => n93,
                           O(2) => encoder_out_8_port, O(1) => 
                           encoder_out_7_port, O(0) => encoder_out_6_port);
   enc_i_3 : BOOTH_ENCODER_5 port map( I(2) => B(7), I(1) => B(6), I(0) => B(5)
                           , O(2) => encoder_out_11_port, O(1) => 
                           encoder_out_10_port, O(0) => encoder_out_9_port);
   mux_i_0 : MUX51_GENERIC_N16_4 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => n102, B(14) => n104, B(13) 
                           => n104, B(12) => n104, B(11) => n104, B(10) => n104
                           , B(9) => n104, B(8) => n104, B(7) => n103, B(6) => 
                           A(6), B(5) => A(5), B(4) => A(4), B(3) => A(3), B(2)
                           => A(2), B(1) => A(1), B(0) => A(0), C(15) => n110, 
                           C(14) => n108, C(13) => n106, C(12) => n106, C(11) 
                           => n109, C(10) => n111, C(9) => n112, C(8) => n109, 
                           C(7) => n109, C(6) => smA_3_12_port, C(5) => 
                           smA_3_11_port, C(4) => smA_3_10_port, C(3) => 
                           smA_3_9_port, C(2) => n133, C(1) => n134, C(0) => 
                           n135, D(15) => n101, D(14) => n101, D(13) => n101, 
                           D(12) => n101, D(11) => n101, D(10) => n101, D(9) =>
                           n102, D(8) => n102, D(7) => A(6), D(6) => A(5), D(5)
                           => A(4), D(4) => A(3), D(3) => A(2), D(2) => A(1), 
                           D(1) => A(0), D(0) => X_Logic0_port, E(15) => n113, 
                           E(14) => n106, E(13) => n107, E(12) => n107, E(11) 
                           => n107, E(10) => n105, E(9) => n108, E(8) => n108, 
                           E(7) => smA_3_12_port, E(6) => smA_3_11_port, E(5) 
                           => smA_3_10_port, E(4) => smA_3_9_port, E(3) => n133
                           , E(2) => n134, E(1) => n135, E(0) => X_Logic1_port,
                           SEL(2) => encoder_out_2_port, SEL(1) => 
                           encoder_out_1_port, SEL(0) => encoder_out_0_port, 
                           Y(15) => add_in_0_15_port, Y(14) => add_in_0_14_port
                           , Y(13) => add_in_0_13_port, Y(12) => 
                           add_in_0_12_port, Y(11) => add_in_0_11_port, Y(10) 
                           => add_in_0_10_port, Y(9) => add_in_0_9_port, Y(8) 
                           => add_in_0_8_port, Y(7) => add_in_0_7_port, Y(6) =>
                           add_in_0_6_port, Y(5) => add_in_0_5_port, Y(4) => 
                           add_in_0_4_port, Y(3) => add_in_0_3_port, Y(2) => 
                           add_in_0_2_port, Y(1) => add_in_0_1_port, Y(0) => 
                           add_in_0_0_port);
   mux_i_1 : MUX51_GENERIC_N16_7 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => n103, B(14) => n103, B(13) 
                           => n103, B(12) => n103, B(11) => n103, B(10) => n103
                           , B(9) => n104, B(8) => A(6), B(7) => A(5), B(6) => 
                           A(4), B(5) => A(3), B(4) => A(2), B(3) => A(1), B(2)
                           => A(0), B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(15) => n110, C(14) => n112, C(13) 
                           => n111, C(12) => n113, C(11) => n110, C(10) => n111
                           , C(9) => n112, C(8) => smA_3_12_port, C(7) => 
                           smA_3_11_port, C(6) => smA_3_10_port, C(5) => 
                           smA_3_9_port, C(4) => n133, C(3) => n134, C(2) => 
                           n135, C(1) => X_Logic1_port, C(0) => X_Logic1_port, 
                           D(15) => n101, D(14) => n101, D(13) => n101, D(12) 
                           => n101, D(11) => n101, D(10) => n101, D(9) => A(6),
                           D(8) => A(5), D(7) => A(4), D(6) => A(3), D(5) => 
                           A(2), D(4) => A(1), D(3) => A(0), D(2) => 
                           X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => n106, E(14) => n106, E(13) 
                           => n105, E(12) => n106, E(11) => n105, E(10) => n105
                           , E(9) => smA_3_12_port, E(8) => smA_3_11_port, E(7)
                           => smA_3_10_port, E(6) => smA_3_9_port, E(5) => n133
                           , E(4) => n134, E(3) => n135, E(2) => X_Logic1_port,
                           E(1) => X_Logic1_port, E(0) => X_Logic1_port, SEL(2)
                           => encoder_out_5_port, SEL(1) => encoder_out_4_port,
                           SEL(0) => encoder_out_3_port, Y(15) => 
                           mux_out_1_15_port, Y(14) => mux_out_1_14_port, Y(13)
                           => mux_out_1_13_port, Y(12) => mux_out_1_12_port, 
                           Y(11) => mux_out_1_11_port, Y(10) => 
                           mux_out_1_10_port, Y(9) => mux_out_1_9_port, Y(8) =>
                           mux_out_1_8_port, Y(7) => mux_out_1_7_port, Y(6) => 
                           mux_out_1_6_port, Y(5) => mux_out_1_5_port, Y(4) => 
                           mux_out_1_4_port, Y(3) => mux_out_1_3_port, Y(2) => 
                           mux_out_1_2_port, Y(1) => mux_out_1_1_port, Y(0) => 
                           mux_out_1_0_port);
   mux_i_2 : MUX51_GENERIC_N16_6 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => n102, B(14) => n102, B(13) 
                           => n102, B(12) => n102, B(11) => n102, B(10) => A(6)
                           , B(9) => A(5), B(8) => A(4), B(7) => A(3), B(6) => 
                           A(2), B(5) => A(1), B(4) => A(0), B(3) => 
                           X_Logic0_port, B(2) => X_Logic0_port, B(1) => 
                           X_Logic0_port, B(0) => X_Logic0_port, C(15) => n113,
                           C(14) => n113, C(13) => n114, C(12) => n114, C(11) 
                           => n111, C(10) => smA_3_12_port, C(9) => 
                           smA_3_11_port, C(8) => smA_3_10_port, C(7) => 
                           smA_3_9_port, C(6) => n133, C(5) => n134, C(4) => 
                           n135, C(3) => X_Logic1_port, C(2) => X_Logic1_port, 
                           C(1) => X_Logic1_port, C(0) => X_Logic1_port, D(15) 
                           => n103, D(14) => n103, D(13) => n103, D(12) => n103
                           , D(11) => A(6), D(10) => A(5), D(9) => A(4), D(8) 
                           => A(3), D(7) => A(2), D(6) => A(1), D(5) => A(0), 
                           D(4) => X_Logic0_port, D(3) => X_Logic0_port, D(2) 
                           => X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => n111, E(14) => n111, E(13) 
                           => n110, E(12) => n112, E(11) => smA_3_12_port, 
                           E(10) => smA_3_11_port, E(9) => smA_3_10_port, E(8) 
                           => smA_3_9_port, E(7) => n133, E(6) => n134, E(5) =>
                           n135, E(4) => X_Logic1_port, E(3) => X_Logic1_port, 
                           E(2) => X_Logic1_port, E(1) => X_Logic1_port, E(0) 
                           => X_Logic1_port, SEL(2) => encoder_out_8_port, 
                           SEL(1) => encoder_out_7_port, SEL(0) => 
                           encoder_out_6_port, Y(15) => mux_out_2_15_port, 
                           Y(14) => mux_out_2_14_port, Y(13) => 
                           mux_out_2_13_port, Y(12) => mux_out_2_12_port, Y(11)
                           => mux_out_2_11_port, Y(10) => mux_out_2_10_port, 
                           Y(9) => mux_out_2_9_port, Y(8) => mux_out_2_8_port, 
                           Y(7) => mux_out_2_7_port, Y(6) => mux_out_2_6_port, 
                           Y(5) => mux_out_2_5_port, Y(4) => mux_out_2_4_port, 
                           Y(3) => mux_out_2_3_port, Y(2) => mux_out_2_2_port, 
                           Y(1) => mux_out_2_1_port, Y(0) => mux_out_2_0_port);
   mux_i_3 : MUX51_GENERIC_N16_5 port map( A(15) => X_Logic0_port, A(14) => 
                           X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => n102, B(14) => n102, B(13) 
                           => n102, B(12) => A(6), B(11) => A(5), B(10) => A(4)
                           , B(9) => A(3), B(8) => A(2), B(7) => A(1), B(6) => 
                           A(0), B(5) => X_Logic0_port, B(4) => X_Logic0_port, 
                           B(3) => X_Logic0_port, B(2) => X_Logic0_port, B(1) 
                           => X_Logic0_port, B(0) => X_Logic0_port, C(15) => 
                           n110, C(14) => n113, C(13) => n113, C(12) => 
                           smA_3_12_port, C(11) => smA_3_11_port, C(10) => 
                           smA_3_10_port, C(9) => smA_3_9_port, C(8) => n133, 
                           C(7) => n134, C(6) => n135, C(5) => X_Logic1_port, 
                           C(4) => X_Logic1_port, C(3) => X_Logic1_port, C(2) 
                           => X_Logic1_port, C(1) => X_Logic1_port, C(0) => 
                           X_Logic1_port, D(15) => n103, D(14) => n102, D(13) 
                           => A(6), D(12) => A(5), D(11) => A(4), D(10) => A(3)
                           , D(9) => A(2), D(8) => A(1), D(7) => A(0), D(6) => 
                           X_Logic0_port, D(5) => X_Logic0_port, D(4) => 
                           X_Logic0_port, D(3) => X_Logic0_port, D(2) => 
                           X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => n113, E(14) => n113, E(13) 
                           => smA_3_12_port, E(12) => smA_3_11_port, E(11) => 
                           smA_3_10_port, E(10) => smA_3_9_port, E(9) => n133, 
                           E(8) => n134, E(7) => n135, E(6) => X_Logic1_port, 
                           E(5) => X_Logic1_port, E(4) => X_Logic1_port, E(3) 
                           => X_Logic1_port, E(2) => X_Logic1_port, E(1) => 
                           X_Logic1_port, E(0) => X_Logic1_port, SEL(2) => 
                           encoder_out_11_port, SEL(1) => encoder_out_10_port, 
                           SEL(0) => encoder_out_9_port, Y(15) => 
                           mux_out_3_15_port, Y(14) => mux_out_3_14_port, Y(13)
                           => mux_out_3_13_port, Y(12) => mux_out_3_12_port, 
                           Y(11) => mux_out_3_11_port, Y(10) => 
                           mux_out_3_10_port, Y(9) => mux_out_3_9_port, Y(8) =>
                           mux_out_3_8_port, Y(7) => mux_out_3_7_port, Y(6) => 
                           mux_out_3_6_port, Y(5) => mux_out_3_5_port, Y(4) => 
                           mux_out_3_4_port, Y(3) => mux_out_3_3_port, Y(2) => 
                           mux_out_3_2_port, Y(1) => mux_out_3_1_port, Y(0) => 
                           mux_out_3_0_port);
   add_i_0 : RCA_generic_N16_3 port map( A(15) => mux_out_1_15_port, A(14) => 
                           mux_out_1_14_port, A(13) => mux_out_1_13_port, A(12)
                           => mux_out_1_12_port, A(11) => mux_out_1_11_port, 
                           A(10) => mux_out_1_10_port, A(9) => mux_out_1_9_port
                           , A(8) => mux_out_1_8_port, A(7) => mux_out_1_7_port
                           , A(6) => mux_out_1_6_port, A(5) => mux_out_1_5_port
                           , A(4) => mux_out_1_4_port, A(3) => mux_out_1_3_port
                           , A(2) => mux_out_1_2_port, A(1) => mux_out_1_1_port
                           , A(0) => mux_out_1_0_port, B(15) => 
                           add_in_0_15_port, B(14) => add_in_0_14_port, B(13) 
                           => add_in_0_13_port, B(12) => add_in_0_12_port, 
                           B(11) => add_in_0_11_port, B(10) => add_in_0_10_port
                           , B(9) => add_in_0_9_port, B(8) => add_in_0_8_port, 
                           B(7) => add_in_0_7_port, B(6) => add_in_0_6_port, 
                           B(5) => add_in_0_5_port, B(4) => add_in_0_4_port, 
                           B(3) => add_in_0_3_port, B(2) => add_in_0_2_port, 
                           B(1) => add_in_0_1_port, B(0) => add_in_0_0_port, Ci
                           => B(1), S(15) => add_in_1_15_port, S(14) => 
                           add_in_1_14_port, S(13) => add_in_1_13_port, S(12) 
                           => add_in_1_12_port, S(11) => add_in_1_11_port, 
                           S(10) => add_in_1_10_port, S(9) => add_in_1_9_port, 
                           S(8) => add_in_1_8_port, S(7) => add_in_1_7_port, 
                           S(6) => add_in_1_6_port, S(5) => add_in_1_5_port, 
                           S(4) => add_in_1_4_port, S(3) => add_in_1_3_port, 
                           S(2) => add_in_1_2_port, S(1) => add_in_1_1_port, 
                           S(0) => add_in_1_0_port, Co => net173);
   add_i_1 : RCA_generic_N16_5 port map( A(15) => mux_out_2_15_port, A(14) => 
                           mux_out_2_14_port, A(13) => mux_out_2_13_port, A(12)
                           => mux_out_2_12_port, A(11) => mux_out_2_11_port, 
                           A(10) => mux_out_2_10_port, A(9) => mux_out_2_9_port
                           , A(8) => mux_out_2_8_port, A(7) => mux_out_2_7_port
                           , A(6) => mux_out_2_6_port, A(5) => mux_out_2_5_port
                           , A(4) => mux_out_2_4_port, A(3) => mux_out_2_3_port
                           , A(2) => mux_out_2_2_port, A(1) => mux_out_2_1_port
                           , A(0) => mux_out_2_0_port, B(15) => 
                           add_in_1_15_port, B(14) => add_in_1_14_port, B(13) 
                           => add_in_1_13_port, B(12) => add_in_1_12_port, 
                           B(11) => add_in_1_11_port, B(10) => add_in_1_10_port
                           , B(9) => add_in_1_9_port, B(8) => add_in_1_8_port, 
                           B(7) => add_in_1_7_port, B(6) => add_in_1_6_port, 
                           B(5) => add_in_1_5_port, B(4) => add_in_1_4_port, 
                           B(3) => add_in_1_3_port, B(2) => add_in_1_2_port, 
                           B(1) => add_in_1_1_port, B(0) => add_in_1_0_port, Ci
                           => mode_1_port, S(15) => add_in_2_15_port, S(14) => 
                           add_in_2_14_port, S(13) => add_in_2_13_port, S(12) 
                           => add_in_2_12_port, S(11) => add_in_2_11_port, 
                           S(10) => add_in_2_10_port, S(9) => add_in_2_9_port, 
                           S(8) => add_in_2_8_port, S(7) => add_in_2_7_port, 
                           S(6) => add_in_2_6_port, S(5) => add_in_2_5_port, 
                           S(4) => add_in_2_4_port, S(3) => add_in_2_3_port, 
                           S(2) => add_in_2_2_port, S(1) => add_in_2_1_port, 
                           S(0) => add_in_2_0_port, Co => net172);
   add_i_2 : RCA_generic_N16_4 port map( A(15) => mux_out_3_15_port, A(14) => 
                           mux_out_3_14_port, A(13) => mux_out_3_13_port, A(12)
                           => mux_out_3_12_port, A(11) => mux_out_3_11_port, 
                           A(10) => mux_out_3_10_port, A(9) => mux_out_3_9_port
                           , A(8) => mux_out_3_8_port, A(7) => mux_out_3_7_port
                           , A(6) => mux_out_3_6_port, A(5) => mux_out_3_5_port
                           , A(4) => mux_out_3_4_port, A(3) => mux_out_3_3_port
                           , A(2) => mux_out_3_2_port, A(1) => mux_out_3_1_port
                           , A(0) => mux_out_3_0_port, B(15) => 
                           add_in_2_15_port, B(14) => add_in_2_14_port, B(13) 
                           => add_in_2_13_port, B(12) => add_in_2_12_port, 
                           B(11) => add_in_2_11_port, B(10) => add_in_2_10_port
                           , B(9) => add_in_2_9_port, B(8) => add_in_2_8_port, 
                           B(7) => add_in_2_7_port, B(6) => add_in_2_6_port, 
                           B(5) => add_in_2_5_port, B(4) => add_in_2_4_port, 
                           B(3) => add_in_2_3_port, B(2) => add_in_2_2_port, 
                           B(1) => add_in_2_1_port, B(0) => add_in_2_0_port, Ci
                           => mode_2_port, S(15) => add_in_3_15_port, S(14) => 
                           add_in_3_14_port, S(13) => add_in_3_13_port, S(12) 
                           => add_in_3_12_port, S(11) => add_in_3_11_port, 
                           S(10) => add_in_3_10_port, S(9) => add_in_3_9_port, 
                           S(8) => add_in_3_8_port, S(7) => add_in_3_7_port, 
                           S(6) => add_in_3_6_port, S(5) => add_in_3_5_port, 
                           S(4) => add_in_3_4_port, S(3) => add_in_3_3_port, 
                           S(2) => add_in_3_2_port, S(1) => add_in_3_1_port, 
                           S(0) => add_in_3_0_port, Co => net171);
   U71 : XNOR2_X1 port map( A => add_in_3_15_port, B => n86, ZN => P(15));
   U72 : NAND2_X1 port map( A1 => add_in_3_14_port, A2 => n90, ZN => n86);
   U73 : AND2_X1 port map( A1 => add_in_3_13_port, A2 => n87, ZN => n90);
   U74 : INV_X1 port map( A => n88, ZN => n87);
   U75 : NAND2_X1 port map( A1 => add_in_3_13_port, A2 => n87, ZN => n92);
   U76 : XNOR2_X1 port map( A => add_in_3_14_port, B => n92, ZN => P(14));
   U77 : XNOR2_X1 port map( A => add_in_3_13_port, B => n88, ZN => P(13));
   U78 : NAND2_X1 port map( A1 => add_in_3_12_port, A2 => n89, ZN => n88);
   U79 : AND2_X1 port map( A1 => add_in_3_11_port, A2 => net18319, ZN => n89);
   U80 : XOR2_X1 port map( A => add_in_3_12_port, B => n91, Z => P(12));
   U81 : AND2_X1 port map( A1 => add_in_3_11_port, A2 => net18319, ZN => n91);
   U82 : XNOR2_X1 port map( A => add_in_3_11_port, B => net17656, ZN => P(11));
   U83 : AOI21_X1 port map( B1 => B(1), B2 => B(2), A => n61, ZN => mode_1_port
                           );
   U84 : AND2_X1 port map( A1 => add_in_3_10_port, A2 => n97, ZN => net18319);
   U85 : BUF_X2 port map( A => B(3), Z => n93);
   U86 : BUF_X1 port map( A => A(7), Z => n98);
   U87 : INV_X1 port map( A => n114, ZN => n101);
   U88 : INV_X1 port map( A => n115, ZN => n102);
   U89 : INV_X1 port map( A => n115, ZN => n103);
   U90 : NAND2_X1 port map( A1 => add_in_3_2_port, A2 => n96, ZN => n121);
   U91 : NAND2_X1 port map( A1 => add_in_3_3_port, A2 => n122, ZN => n123);
   U92 : NAND2_X1 port map( A1 => add_in_3_7_port, A2 => n95, ZN => n130);
   U93 : XOR2_X1 port map( A => add_in_3_10_port, B => n97, Z => P(10));
   U94 : AND2_X1 port map( A1 => add_in_3_9_port, A2 => n94, ZN => n97);
   U95 : INV_X1 port map( A => n93, ZN => n61);
   U96 : INV_X1 port map( A => A(3), ZN => smA_3_9_port);
   U97 : INV_X1 port map( A => A(4), ZN => smA_3_10_port);
   U98 : INV_X1 port map( A => A(6), ZN => smA_3_12_port);
   U99 : INV_X1 port map( A => A(5), ZN => smA_3_11_port);
   U100 : AOI21_X1 port map( B1 => B(4), B2 => n93, A => n60, ZN => mode_2_port
                           );
   U101 : INV_X1 port map( A => B(5), ZN => n60);
   U102 : BUF_X1 port map( A => A(7), Z => n99);
   U103 : NAND2_X1 port map( A1 => B(7), A2 => n116, ZN => n73);
   U104 : BUF_X1 port map( A => A(7), Z => n100);
   U105 : AND2_X1 port map( A1 => add_in_3_8_port, A2 => n131, ZN => n94);
   U106 : AND2_X1 port map( A1 => add_in_3_6_port, A2 => n128, ZN => n95);
   U107 : AND2_X1 port map( A1 => add_in_3_1_port, A2 => n119, ZN => n96);
   U108 : NAND2_X1 port map( A1 => add_in_3_8_port, A2 => n131, ZN => n132);
   U109 : XNOR2_X1 port map( A => add_in_3_0_port, B => n73, ZN => P(0));
   U110 : NAND2_X1 port map( A1 => add_in_3_4_port, A2 => n124, ZN => n125);
   U111 : NAND2_X1 port map( A1 => add_in_3_10_port, A2 => n97, ZN => net17656)
                           ;
   U112 : NAND2_X1 port map( A1 => add_in_3_5_port, A2 => n126, ZN => n127);
   U113 : NAND2_X1 port map( A1 => add_in_3_6_port, A2 => n128, ZN => n129);
   U114 : NAND2_X1 port map( A1 => add_in_3_1_port, A2 => n119, ZN => n120);
   U115 : NAND2_X1 port map( A1 => add_in_3_0_port, A2 => n117, ZN => n118);
   U116 : INV_X1 port map( A => n115, ZN => n104);
   U117 : INV_X1 port map( A => n98, ZN => n105);
   U118 : INV_X1 port map( A => n98, ZN => n106);
   U119 : INV_X1 port map( A => n98, ZN => n107);
   U120 : INV_X1 port map( A => n98, ZN => n108);
   U121 : INV_X1 port map( A => n98, ZN => n109);
   U122 : INV_X1 port map( A => n99, ZN => n110);
   U123 : INV_X1 port map( A => n99, ZN => n111);
   U124 : INV_X1 port map( A => n99, ZN => n112);
   U125 : INV_X1 port map( A => n99, ZN => n113);
   U126 : INV_X1 port map( A => n100, ZN => n114);
   U127 : INV_X1 port map( A => n100, ZN => n115);
   U128 : INV_X1 port map( A => A(0), ZN => n135);
   U129 : INV_X1 port map( A => A(1), ZN => n134);
   U130 : INV_X1 port map( A => A(2), ZN => n133);
   U131 : NAND2_X1 port map( A1 => B(6), A2 => B(5), ZN => n116);
   U132 : INV_X1 port map( A => n73, ZN => n117);
   U133 : XNOR2_X1 port map( A => add_in_3_1_port, B => n118, ZN => P(1));
   U134 : INV_X1 port map( A => n118, ZN => n119);
   U135 : XNOR2_X1 port map( A => add_in_3_2_port, B => n120, ZN => P(2));
   U136 : XNOR2_X1 port map( A => add_in_3_3_port, B => n121, ZN => P(3));
   U137 : INV_X1 port map( A => n121, ZN => n122);
   U138 : XNOR2_X1 port map( A => add_in_3_4_port, B => n123, ZN => P(4));
   U139 : INV_X1 port map( A => n123, ZN => n124);
   U140 : XNOR2_X1 port map( A => add_in_3_5_port, B => n125, ZN => P(5));
   U141 : INV_X1 port map( A => n125, ZN => n126);
   U142 : XNOR2_X1 port map( A => add_in_3_6_port, B => n127, ZN => P(6));
   U143 : INV_X1 port map( A => n127, ZN => n128);
   U144 : XNOR2_X1 port map( A => add_in_3_7_port, B => n129, ZN => P(7));
   U145 : XNOR2_X1 port map( A => add_in_3_8_port, B => n130, ZN => P(8));
   U146 : INV_X1 port map( A => n130, ZN => n131);
   U147 : XNOR2_X1 port map( A => add_in_3_9_port, B => n132, ZN => P(9));

end SYN_STRUCTURAL;
