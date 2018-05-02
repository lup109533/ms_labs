
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity PRIORITY_ENCODER_N4_1 is

   port( INPUT : in std_logic_vector (3 downto 0);  OUTPUT : out 
         std_logic_vector (1 downto 0));

end PRIORITY_ENCODER_N4_1;

architecture SYN_STRUCTURAL of PRIORITY_ENCODER_N4_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n6, n7, n8 : std_logic;

begin
   
   U2 : AOI211_X1 port map( C1 => n8, C2 => n7, A => INPUT(1), B => INPUT(0), 
                           ZN => OUTPUT(1));
   U3 : INV_X1 port map( A => INPUT(3), ZN => n8);
   U4 : NOR2_X1 port map( A1 => INPUT(0), A2 => n6, ZN => OUTPUT(0));
   U5 : AOI21_X1 port map( B1 => INPUT(3), B2 => n7, A => INPUT(1), ZN => n6);
   U6 : INV_X1 port map( A => INPUT(2), ZN => n7);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_6 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_6;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n81, n83, n176, n178, n180, n182, n184, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363 : std_logic;

begin
   
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n186, CK => CLK, Q => n326, 
                           QN => n234);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n187, CK => CLK, Q => n331, 
                           QN => n235);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n188, CK => CLK, Q => n336, 
                           QN => n236);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n189, CK => CLK, Q => n340, 
                           QN => n237);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n190, CK => CLK, Q => n344, 
                           QN => n238);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n191, CK => CLK, Q => n348, 
                           QN => n239);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n192, CK => CLK, Q => n352, 
                           QN => n240);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n193, CK => CLK, Q => n357, 
                           QN => n241);
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => n327, 
                           QN => n242);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n195, CK => CLK, Q => n332, 
                           QN => n243);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n203, CK => CLK, Q => n330, 
                           QN => n81);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n204, CK => CLK, Q => n335, 
                           QN => n83);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n205, CK => CLK, Q => n339, 
                           QN => n176);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n206, CK => CLK, Q => n343, 
                           QN => n178);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n207, CK => CLK, Q => n347, 
                           QN => n180);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n208, CK => CLK, Q => n351, 
                           QN => n182);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => n355, 
                           QN => n184);
   OUT2_reg_7_inst : DFF_X1 port map( D => n211, CK => CLK, Q => OUT2(7), QN =>
                           n250);
   OUT2_reg_6_inst : DFF_X1 port map( D => n213, CK => CLK, Q => OUT2(6), QN =>
                           n251);
   OUT2_reg_5_inst : DFF_X1 port map( D => n215, CK => CLK, Q => OUT2(5), QN =>
                           n252);
   OUT2_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => OUT2(4), QN =>
                           n253);
   OUT2_reg_3_inst : DFF_X1 port map( D => n219, CK => CLK, Q => OUT2(3), QN =>
                           n254);
   OUT2_reg_2_inst : DFF_X1 port map( D => n221, CK => CLK, Q => OUT2(2), QN =>
                           n255);
   OUT2_reg_1_inst : DFF_X1 port map( D => n223, CK => CLK, Q => OUT2(1), QN =>
                           n256);
   OUT1_reg_7_inst : DFF_X1 port map( D => n226, CK => CLK, Q => OUT1(7), QN =>
                           n258);
   OUT1_reg_6_inst : DFF_X1 port map( D => n227, CK => CLK, Q => OUT1(6), QN =>
                           n259);
   OUT1_reg_5_inst : DFF_X1 port map( D => n228, CK => CLK, Q => OUT1(5), QN =>
                           n260);
   OUT1_reg_4_inst : DFF_X1 port map( D => n229, CK => CLK, Q => OUT1(4), QN =>
                           n261);
   OUT1_reg_3_inst : DFF_X1 port map( D => n230, CK => CLK, Q => OUT1(3), QN =>
                           n262);
   OUT1_reg_2_inst : DFF_X1 port map( D => n231, CK => CLK, Q => OUT1(2), QN =>
                           n263);
   OUT1_reg_1_inst : DFF_X1 port map( D => n232, CK => CLK, Q => OUT1(1), QN =>
                           n264);
   U20 : AND3_X2 port map( A1 => n279, A2 => n274, A3 => n361, ZN => n358);
   U22 : AND3_X2 port map( A1 => n361, A2 => n274, A3 => n278, ZN => n359);
   U24 : AND3_X2 port map( A1 => ENABLE, A2 => n284, A3 => RD1, ZN => n361);
   U72 : AND3_X2 port map( A1 => n276, A2 => n277, A3 => n324, ZN => n321);
   U75 : AND3_X2 port map( A1 => n324, A2 => n277, A3 => n275, ZN => n322);
   U77 : AND3_X2 port map( A1 => ENABLE, A2 => n284, A3 => RD2, ZN => n324);
   U131 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n361, A3 => n278, ZN => 
                           n363);
   U132 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n324, A3 => n275, ZN => 
                           n325);
   U133 : NAND3_X1 port map( A1 => n280, A2 => n301, A3 => n282, ZN => n302);
   U134 : NAND3_X1 port map( A1 => n301, A2 => n281, A3 => n282, ZN => n297);
   U135 : NAND3_X1 port map( A1 => n301, A2 => n283, A3 => n280, ZN => n288);
   U136 : NAND3_X1 port map( A1 => n281, A2 => n283, A3 => n301, ZN => n285);
   OUT1_reg_0_inst : DFF_X1 port map( D => n233, CK => CLK, Q => OUT1(0), QN =>
                           n265);
   OUT2_reg_0_inst : DFF_X1 port map( D => n225, CK => CLK, Q => OUT2(0), QN =>
                           n257);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n202, CK => CLK, Q => n9, QN 
                           => n298);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n196, CK => CLK, Q => n3, QN 
                           => n289);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n197, CK => CLK, Q => n4, QN 
                           => n290);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n198, CK => CLK, Q => n5, QN 
                           => n291);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n199, CK => CLK, Q => n6, QN 
                           => n292);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n200, CK => CLK, Q => n7, QN 
                           => n293);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n201, CK => CLK, Q => n8, QN 
                           => n296);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n210, CK => CLK, Q => n273, 
                           QN => n329);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n212, CK => CLK, Q => n272, 
                           QN => n334);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n214, CK => CLK, Q => n271, 
                           QN => n338);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n216, CK => CLK, Q => n270, 
                           QN => n342);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => n269, 
                           QN => n346);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n220, CK => CLK, Q => n268, 
                           QN => n350);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n222, CK => CLK, Q => n267, 
                           QN => n354);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n224, CK => CLK, Q => n266, 
                           QN => n362);
   U3 : NAND2_X1 port map( A1 => n284, A2 => n302, ZN => n319);
   U4 : NAND2_X1 port map( A1 => n284, A2 => n297, ZN => n300);
   U5 : NAND2_X1 port map( A1 => n284, A2 => n288, ZN => n295);
   U6 : NAND2_X1 port map( A1 => n284, A2 => n285, ZN => n287);
   U7 : AND3_X2 port map( A1 => n361, A2 => n279, A3 => ADD_RD1(1), ZN => n356)
                           ;
   U8 : INV_X1 port map( A => DATAIN(0), ZN => n317);
   U9 : INV_X1 port map( A => DATAIN(1), ZN => n315);
   U10 : INV_X1 port map( A => DATAIN(2), ZN => n313);
   U11 : INV_X1 port map( A => DATAIN(3), ZN => n311);
   U12 : INV_X1 port map( A => DATAIN(4), ZN => n309);
   U13 : INV_X1 port map( A => DATAIN(5), ZN => n307);
   U14 : INV_X1 port map( A => DATAIN(6), ZN => n305);
   U15 : INV_X1 port map( A => DATAIN(7), ZN => n303);
   U16 : AOI222_X1 port map( A1 => n322, A2 => n3, B1 => n321, B2 => n336, C1 
                           => n320, C2 => n335, ZN => n308);
   U17 : AOI222_X1 port map( A1 => n322, A2 => n332, B1 => n321, B2 => n331, C1
                           => n320, C2 => n330, ZN => n306);
   U18 : AOI222_X1 port map( A1 => n322, A2 => n327, B1 => n321, B2 => n326, C1
                           => n320, C2 => n9, ZN => n304);
   U19 : AOI222_X1 port map( A1 => n7, A2 => n359, B1 => n358, B2 => n352, C1 
                           => n356, C2 => n351, ZN => n353);
   U21 : AOI222_X1 port map( A1 => n6, A2 => n359, B1 => n358, B2 => n348, C1 
                           => n356, C2 => n347, ZN => n349);
   U23 : AOI222_X1 port map( A1 => n5, A2 => n359, B1 => n358, B2 => n344, C1 
                           => n356, C2 => n343, ZN => n345);
   U25 : AOI222_X1 port map( A1 => n4, A2 => n359, B1 => n358, B2 => n340, C1 
                           => n356, C2 => n339, ZN => n341);
   U26 : AOI222_X1 port map( A1 => n3, A2 => n359, B1 => n358, B2 => n336, C1 
                           => n356, C2 => n335, ZN => n337);
   U27 : AOI222_X1 port map( A1 => n359, A2 => n332, B1 => n358, B2 => n331, C1
                           => n356, C2 => n330, ZN => n333);
   U28 : AOI222_X1 port map( A1 => n8, A2 => n359, B1 => n358, B2 => n357, C1 
                           => n356, C2 => n355, ZN => n360);
   U29 : AOI222_X1 port map( A1 => n322, A2 => n8, B1 => n321, B2 => n357, C1 
                           => n320, C2 => n355, ZN => n323);
   U30 : AOI222_X1 port map( A1 => n322, A2 => n4, B1 => n321, B2 => n340, C1 
                           => n320, C2 => n339, ZN => n310);
   U31 : INV_X1 port map( A => ADD_RD1(1), ZN => n274);
   U32 : AOI222_X1 port map( A1 => n322, A2 => n5, B1 => n321, B2 => n344, C1 
                           => n320, C2 => n343, ZN => n312);
   U33 : AND3_X2 port map( A1 => n324, A2 => n276, A3 => ADD_RD2(1), ZN => n320
                           );
   U34 : AOI222_X1 port map( A1 => n322, A2 => n6, B1 => n321, B2 => n348, C1 
                           => n320, C2 => n347, ZN => n314);
   U35 : AOI222_X1 port map( A1 => n322, A2 => n7, B1 => n321, B2 => n352, C1 
                           => n320, C2 => n351, ZN => n316);
   U36 : AOI222_X1 port map( A1 => n359, A2 => n327, B1 => n358, B2 => n326, C1
                           => n9, C2 => n356, ZN => n328);
   U37 : OAI22_X1 port map( A1 => n334, A2 => n319, B1 => n318, B2 => n305, ZN 
                           => n212);
   U38 : OAI22_X1 port map( A1 => n338, A2 => n319, B1 => n318, B2 => n307, ZN 
                           => n214);
   U39 : OAI22_X1 port map( A1 => n342, A2 => n319, B1 => n318, B2 => n309, ZN 
                           => n216);
   U40 : OAI22_X1 port map( A1 => n346, A2 => n319, B1 => n318, B2 => n311, ZN 
                           => n218);
   U41 : OAI22_X1 port map( A1 => n350, A2 => n319, B1 => n318, B2 => n313, ZN 
                           => n220);
   U42 : OAI22_X1 port map( A1 => n354, A2 => n319, B1 => n318, B2 => n315, ZN 
                           => n222);
   U43 : OAI22_X1 port map( A1 => n362, A2 => n319, B1 => n318, B2 => n317, ZN 
                           => n224);
   U44 : OAI22_X1 port map( A1 => n329, A2 => n319, B1 => n318, B2 => n303, ZN 
                           => n210);
   U45 : NAND2_X1 port map( A1 => n284, A2 => n319, ZN => n318);
   U46 : OAI22_X1 port map( A1 => n243, A2 => n295, B1 => n305, B2 => n294, ZN 
                           => n195);
   U47 : OAI22_X1 port map( A1 => n289, A2 => n295, B1 => n307, B2 => n294, ZN 
                           => n196);
   U48 : OAI22_X1 port map( A1 => n290, A2 => n295, B1 => n309, B2 => n294, ZN 
                           => n197);
   U49 : OAI22_X1 port map( A1 => n291, A2 => n295, B1 => n311, B2 => n294, ZN 
                           => n198);
   U50 : OAI22_X1 port map( A1 => n292, A2 => n295, B1 => n313, B2 => n294, ZN 
                           => n199);
   U51 : OAI22_X1 port map( A1 => n293, A2 => n295, B1 => n315, B2 => n294, ZN 
                           => n200);
   U52 : OAI22_X1 port map( A1 => n296, A2 => n295, B1 => n317, B2 => n294, ZN 
                           => n201);
   U53 : OAI22_X1 port map( A1 => n242, A2 => n295, B1 => n303, B2 => n294, ZN 
                           => n194);
   U54 : NAND2_X1 port map( A1 => n284, A2 => n295, ZN => n294);
   U55 : OAI22_X1 port map( A1 => n81, A2 => n300, B1 => n305, B2 => n299, ZN 
                           => n203);
   U56 : OAI22_X1 port map( A1 => n83, A2 => n300, B1 => n307, B2 => n299, ZN 
                           => n204);
   U57 : OAI22_X1 port map( A1 => n176, A2 => n300, B1 => n309, B2 => n299, ZN 
                           => n205);
   U58 : OAI22_X1 port map( A1 => n178, A2 => n300, B1 => n311, B2 => n299, ZN 
                           => n206);
   U59 : OAI22_X1 port map( A1 => n180, A2 => n300, B1 => n313, B2 => n299, ZN 
                           => n207);
   U60 : OAI22_X1 port map( A1 => n182, A2 => n300, B1 => n315, B2 => n299, ZN 
                           => n208);
   U61 : OAI22_X1 port map( A1 => n184, A2 => n300, B1 => n317, B2 => n299, ZN 
                           => n209);
   U62 : OAI22_X1 port map( A1 => n298, A2 => n300, B1 => n303, B2 => n299, ZN 
                           => n202);
   U63 : NAND2_X1 port map( A1 => n284, A2 => n300, ZN => n299);
   U64 : OAI221_X1 port map( B1 => n329, B2 => n325, C1 => n250, C2 => n324, A 
                           => n304, ZN => n211);
   U65 : OAI221_X1 port map( B1 => n362, B2 => n325, C1 => n257, C2 => n324, A 
                           => n323, ZN => n225);
   U66 : OAI221_X1 port map( B1 => n346, B2 => n325, C1 => n254, C2 => n324, A 
                           => n312, ZN => n219);
   U67 : OAI221_X1 port map( B1 => n350, B2 => n325, C1 => n255, C2 => n324, A 
                           => n314, ZN => n221);
   U68 : OAI221_X1 port map( B1 => n354, B2 => n325, C1 => n256, C2 => n324, A 
                           => n316, ZN => n223);
   U69 : OAI221_X1 port map( B1 => n342, B2 => n325, C1 => n253, C2 => n324, A 
                           => n310, ZN => n217);
   U70 : OAI221_X1 port map( B1 => n338, B2 => n325, C1 => n252, C2 => n324, A 
                           => n308, ZN => n215);
   U71 : OAI221_X1 port map( B1 => n334, B2 => n325, C1 => n251, C2 => n324, A 
                           => n306, ZN => n213);
   U73 : OAI22_X1 port map( A1 => n234, A2 => n287, B1 => n303, B2 => n286, ZN 
                           => n186);
   U74 : OAI22_X1 port map( A1 => n236, A2 => n287, B1 => n307, B2 => n286, ZN 
                           => n188);
   U76 : OAI22_X1 port map( A1 => n237, A2 => n287, B1 => n309, B2 => n286, ZN 
                           => n189);
   U78 : OAI22_X1 port map( A1 => n238, A2 => n287, B1 => n311, B2 => n286, ZN 
                           => n190);
   U79 : OAI22_X1 port map( A1 => n239, A2 => n287, B1 => n313, B2 => n286, ZN 
                           => n191);
   U80 : OAI22_X1 port map( A1 => n240, A2 => n287, B1 => n315, B2 => n286, ZN 
                           => n192);
   U81 : OAI22_X1 port map( A1 => n241, A2 => n287, B1 => n317, B2 => n286, ZN 
                           => n193);
   U82 : OAI22_X1 port map( A1 => n235, A2 => n287, B1 => n305, B2 => n286, ZN 
                           => n187);
   U83 : NAND2_X1 port map( A1 => n284, A2 => n287, ZN => n286);
   U84 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n301);
   U85 : OAI221_X1 port map( B1 => n363, B2 => n329, C1 => n258, C2 => n361, A 
                           => n328, ZN => n226);
   U86 : OAI221_X1 port map( B1 => n363, B2 => n362, C1 => n265, C2 => n361, A 
                           => n360, ZN => n233);
   U87 : OAI221_X1 port map( B1 => n363, B2 => n346, C1 => n262, C2 => n361, A 
                           => n345, ZN => n230);
   U88 : OAI221_X1 port map( B1 => n363, B2 => n350, C1 => n263, C2 => n361, A 
                           => n349, ZN => n231);
   U89 : OAI221_X1 port map( B1 => n363, B2 => n354, C1 => n264, C2 => n361, A 
                           => n353, ZN => n232);
   U90 : OAI221_X1 port map( B1 => n363, B2 => n342, C1 => n261, C2 => n361, A 
                           => n341, ZN => n229);
   U91 : OAI221_X1 port map( B1 => n363, B2 => n338, C1 => n260, C2 => n361, A 
                           => n337, ZN => n228);
   U92 : OAI221_X1 port map( B1 => n363, B2 => n334, C1 => n259, C2 => n361, A 
                           => n333, ZN => n227);
   U93 : INV_X1 port map( A => n276, ZN => n275);
   U94 : INV_X1 port map( A => ADD_RD2(0), ZN => n276);
   U95 : INV_X1 port map( A => ADD_RD2(1), ZN => n277);
   U96 : INV_X1 port map( A => n279, ZN => n278);
   U97 : INV_X1 port map( A => ADD_RD1(0), ZN => n279);
   U98 : INV_X1 port map( A => n281, ZN => n280);
   U99 : INV_X1 port map( A => ADD_WR(0), ZN => n281);
   U100 : INV_X1 port map( A => n283, ZN => n282);
   U101 : INV_X1 port map( A => ADD_WR(1), ZN => n283);
   U102 : INV_X1 port map( A => RESET, ZN => n284);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_5 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_5;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n81, n83, n176, n178, n180, n182, n184, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361 : std_logic;

begin
   
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n186, CK => CLK, Q => n324, 
                           QN => n234);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n187, CK => CLK, Q => n329, 
                           QN => n235);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n188, CK => CLK, Q => n334, 
                           QN => n236);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n189, CK => CLK, Q => n338, 
                           QN => n237);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n190, CK => CLK, Q => n342, 
                           QN => n238);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n191, CK => CLK, Q => n346, 
                           QN => n239);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n192, CK => CLK, Q => n350, 
                           QN => n240);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n193, CK => CLK, Q => n355, 
                           QN => n241);
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => n325, 
                           QN => n242);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n195, CK => CLK, Q => n330, 
                           QN => n243);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n203, CK => CLK, Q => n328, 
                           QN => n81);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n204, CK => CLK, Q => n333, 
                           QN => n83);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n205, CK => CLK, Q => n337, 
                           QN => n176);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n206, CK => CLK, Q => n341, 
                           QN => n178);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n207, CK => CLK, Q => n345, 
                           QN => n180);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n208, CK => CLK, Q => n349, 
                           QN => n182);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => n353, 
                           QN => n184);
   U24 : AND3_X2 port map( A1 => ENABLE, A2 => n282, A3 => RD1, ZN => n359);
   U77 : AND3_X2 port map( A1 => ENABLE, A2 => n282, A3 => RD2, ZN => n322);
   U131 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n359, A3 => ADD_RD1(0), ZN
                           => n361);
   U132 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n322, A3 => ADD_RD2(0), ZN
                           => n323);
   U133 : NAND3_X1 port map( A1 => n278, A2 => n299, A3 => n280, ZN => n300);
   U134 : NAND3_X1 port map( A1 => n299, A2 => n279, A3 => n280, ZN => n295);
   U135 : NAND3_X1 port map( A1 => n299, A2 => n281, A3 => n278, ZN => n286);
   U136 : NAND3_X1 port map( A1 => n279, A2 => n281, A3 => n299, ZN => n283);
   OUT2_reg_7_inst : DFF_X1 port map( D => n211, CK => CLK, Q => OUT2(7), QN =>
                           n250);
   OUT2_reg_6_inst : DFF_X1 port map( D => n213, CK => CLK, Q => OUT2(6), QN =>
                           n251);
   OUT2_reg_5_inst : DFF_X1 port map( D => n215, CK => CLK, Q => OUT2(5), QN =>
                           n252);
   OUT2_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => OUT2(4), QN =>
                           n253);
   OUT2_reg_3_inst : DFF_X1 port map( D => n219, CK => CLK, Q => OUT2(3), QN =>
                           n254);
   OUT2_reg_2_inst : DFF_X1 port map( D => n221, CK => CLK, Q => OUT2(2), QN =>
                           n255);
   OUT2_reg_1_inst : DFF_X1 port map( D => n223, CK => CLK, Q => OUT2(1), QN =>
                           n256);
   OUT2_reg_0_inst : DFF_X1 port map( D => n225, CK => CLK, Q => OUT2(0), QN =>
                           n257);
   OUT1_reg_7_inst : DFF_X1 port map( D => n226, CK => CLK, Q => OUT1(7), QN =>
                           n258);
   OUT1_reg_6_inst : DFF_X1 port map( D => n227, CK => CLK, Q => OUT1(6), QN =>
                           n259);
   OUT1_reg_5_inst : DFF_X1 port map( D => n228, CK => CLK, Q => OUT1(5), QN =>
                           n260);
   OUT1_reg_4_inst : DFF_X1 port map( D => n229, CK => CLK, Q => OUT1(4), QN =>
                           n261);
   OUT1_reg_3_inst : DFF_X1 port map( D => n230, CK => CLK, Q => OUT1(3), QN =>
                           n262);
   OUT1_reg_2_inst : DFF_X1 port map( D => n231, CK => CLK, Q => OUT1(2), QN =>
                           n263);
   OUT1_reg_1_inst : DFF_X1 port map( D => n232, CK => CLK, Q => OUT1(1), QN =>
                           n264);
   OUT1_reg_0_inst : DFF_X1 port map( D => n233, CK => CLK, Q => OUT1(0), QN =>
                           n265);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n202, CK => CLK, Q => n9, QN 
                           => n296);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n196, CK => CLK, Q => n3, QN 
                           => n287);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n197, CK => CLK, Q => n4, QN 
                           => n288);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n198, CK => CLK, Q => n5, QN 
                           => n289);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n199, CK => CLK, Q => n6, QN 
                           => n290);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n200, CK => CLK, Q => n7, QN 
                           => n291);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n201, CK => CLK, Q => n8, QN 
                           => n294);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n210, CK => CLK, Q => n273, 
                           QN => n327);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n212, CK => CLK, Q => n272, 
                           QN => n332);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n214, CK => CLK, Q => n271, 
                           QN => n336);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n216, CK => CLK, Q => n270, 
                           QN => n340);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => n269, 
                           QN => n344);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n220, CK => CLK, Q => n268, 
                           QN => n348);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n222, CK => CLK, Q => n267, 
                           QN => n352);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n224, CK => CLK, Q => n266, 
                           QN => n360);
   U3 : AND3_X1 port map( A1 => n359, A2 => n274, A3 => ADD_RD1(0), ZN => n357)
                           ;
   U4 : AND3_X1 port map( A1 => n322, A2 => n276, A3 => ADD_RD2(0), ZN => n320)
                           ;
   U5 : AND3_X1 port map( A1 => n277, A2 => n274, A3 => n359, ZN => n356);
   U6 : AND3_X1 port map( A1 => n275, A2 => n276, A3 => n322, ZN => n319);
   U7 : NAND2_X1 port map( A1 => n282, A2 => n300, ZN => n317);
   U8 : NAND2_X1 port map( A1 => n282, A2 => n295, ZN => n298);
   U9 : NAND2_X1 port map( A1 => n282, A2 => n286, ZN => n293);
   U10 : NAND2_X1 port map( A1 => n282, A2 => n283, ZN => n285);
   U11 : AND3_X1 port map( A1 => n359, A2 => n277, A3 => ADD_RD1(1), ZN => n354
                           );
   U12 : AND3_X1 port map( A1 => n322, A2 => n275, A3 => ADD_RD2(1), ZN => n318
                           );
   U13 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n299);
   U14 : INV_X1 port map( A => DATAIN(0), ZN => n315);
   U15 : INV_X1 port map( A => DATAIN(1), ZN => n313);
   U16 : INV_X1 port map( A => DATAIN(2), ZN => n311);
   U17 : INV_X1 port map( A => DATAIN(3), ZN => n309);
   U18 : INV_X1 port map( A => DATAIN(4), ZN => n307);
   U19 : INV_X1 port map( A => DATAIN(5), ZN => n305);
   U20 : INV_X1 port map( A => DATAIN(6), ZN => n303);
   U21 : INV_X1 port map( A => DATAIN(7), ZN => n301);
   U22 : AOI222_X1 port map( A1 => n8, A2 => n357, B1 => n356, B2 => n355, C1 
                           => n354, C2 => n353, ZN => n358);
   U23 : AOI222_X1 port map( A1 => n7, A2 => n357, B1 => n356, B2 => n350, C1 
                           => n354, C2 => n349, ZN => n351);
   U25 : AOI222_X1 port map( A1 => n6, A2 => n357, B1 => n356, B2 => n346, C1 
                           => n354, C2 => n345, ZN => n347);
   U26 : AOI222_X1 port map( A1 => n5, A2 => n357, B1 => n356, B2 => n342, C1 
                           => n354, C2 => n341, ZN => n343);
   U27 : AOI222_X1 port map( A1 => n4, A2 => n357, B1 => n356, B2 => n338, C1 
                           => n354, C2 => n337, ZN => n339);
   U28 : AOI222_X1 port map( A1 => n3, A2 => n357, B1 => n356, B2 => n334, C1 
                           => n354, C2 => n333, ZN => n335);
   U29 : AOI222_X1 port map( A1 => n357, A2 => n330, B1 => n356, B2 => n329, C1
                           => n354, C2 => n328, ZN => n331);
   U30 : AOI222_X1 port map( A1 => n357, A2 => n325, B1 => n356, B2 => n324, C1
                           => n9, C2 => n354, ZN => n326);
   U31 : AOI222_X1 port map( A1 => n320, A2 => n8, B1 => n319, B2 => n355, C1 
                           => n318, C2 => n353, ZN => n321);
   U32 : AOI222_X1 port map( A1 => n320, A2 => n7, B1 => n319, B2 => n350, C1 
                           => n318, C2 => n349, ZN => n314);
   U33 : AOI222_X1 port map( A1 => n320, A2 => n6, B1 => n319, B2 => n346, C1 
                           => n318, C2 => n345, ZN => n312);
   U34 : AOI222_X1 port map( A1 => n320, A2 => n5, B1 => n319, B2 => n342, C1 
                           => n318, C2 => n341, ZN => n310);
   U35 : AOI222_X1 port map( A1 => n320, A2 => n4, B1 => n319, B2 => n338, C1 
                           => n318, C2 => n337, ZN => n308);
   U36 : AOI222_X1 port map( A1 => n320, A2 => n3, B1 => n319, B2 => n334, C1 
                           => n318, C2 => n333, ZN => n306);
   U37 : AOI222_X1 port map( A1 => n320, A2 => n330, B1 => n319, B2 => n329, C1
                           => n318, C2 => n328, ZN => n304);
   U38 : AOI222_X1 port map( A1 => n320, A2 => n325, B1 => n319, B2 => n324, C1
                           => n318, C2 => n9, ZN => n302);
   U39 : INV_X1 port map( A => ADD_RD1(1), ZN => n274);
   U40 : OAI22_X1 port map( A1 => n296, A2 => n298, B1 => n301, B2 => n297, ZN 
                           => n202);
   U41 : OAI22_X1 port map( A1 => n182, A2 => n298, B1 => n313, B2 => n297, ZN 
                           => n208);
   U42 : OAI22_X1 port map( A1 => n180, A2 => n298, B1 => n311, B2 => n297, ZN 
                           => n207);
   U43 : OAI22_X1 port map( A1 => n176, A2 => n298, B1 => n307, B2 => n297, ZN 
                           => n205);
   U44 : OAI22_X1 port map( A1 => n178, A2 => n298, B1 => n309, B2 => n297, ZN 
                           => n206);
   U45 : OAI22_X1 port map( A1 => n81, A2 => n298, B1 => n303, B2 => n297, ZN 
                           => n203);
   U46 : NAND2_X1 port map( A1 => n282, A2 => n298, ZN => n297);
   U47 : OAI22_X1 port map( A1 => n327, A2 => n317, B1 => n316, B2 => n301, ZN 
                           => n210);
   U48 : OAI22_X1 port map( A1 => n360, A2 => n317, B1 => n316, B2 => n315, ZN 
                           => n224);
   U49 : OAI22_X1 port map( A1 => n332, A2 => n317, B1 => n316, B2 => n303, ZN 
                           => n212);
   U50 : OAI22_X1 port map( A1 => n336, A2 => n317, B1 => n316, B2 => n305, ZN 
                           => n214);
   U51 : OAI22_X1 port map( A1 => n340, A2 => n317, B1 => n316, B2 => n307, ZN 
                           => n216);
   U52 : OAI22_X1 port map( A1 => n344, A2 => n317, B1 => n316, B2 => n309, ZN 
                           => n218);
   U53 : OAI22_X1 port map( A1 => n348, A2 => n317, B1 => n316, B2 => n311, ZN 
                           => n220);
   U54 : OAI22_X1 port map( A1 => n352, A2 => n317, B1 => n316, B2 => n313, ZN 
                           => n222);
   U55 : NAND2_X1 port map( A1 => n282, A2 => n317, ZN => n316);
   U56 : OAI22_X1 port map( A1 => n291, A2 => n293, B1 => n313, B2 => n292, ZN 
                           => n200);
   U57 : OAI22_X1 port map( A1 => n290, A2 => n293, B1 => n311, B2 => n292, ZN 
                           => n199);
   U58 : OAI22_X1 port map( A1 => n242, A2 => n293, B1 => n301, B2 => n292, ZN 
                           => n194);
   U59 : OAI22_X1 port map( A1 => n294, A2 => n293, B1 => n315, B2 => n292, ZN 
                           => n201);
   U60 : OAI22_X1 port map( A1 => n243, A2 => n293, B1 => n303, B2 => n292, ZN 
                           => n195);
   U61 : OAI22_X1 port map( A1 => n287, A2 => n293, B1 => n305, B2 => n292, ZN 
                           => n196);
   U62 : OAI22_X1 port map( A1 => n288, A2 => n293, B1 => n307, B2 => n292, ZN 
                           => n197);
   U63 : OAI22_X1 port map( A1 => n289, A2 => n293, B1 => n309, B2 => n292, ZN 
                           => n198);
   U64 : NAND2_X1 port map( A1 => n282, A2 => n293, ZN => n292);
   U65 : OAI22_X1 port map( A1 => n184, A2 => n298, B1 => n315, B2 => n297, ZN 
                           => n209);
   U66 : OAI22_X1 port map( A1 => n83, A2 => n298, B1 => n305, B2 => n297, ZN 
                           => n204);
   U67 : OAI22_X1 port map( A1 => n234, A2 => n285, B1 => n301, B2 => n284, ZN 
                           => n186);
   U68 : OAI22_X1 port map( A1 => n237, A2 => n285, B1 => n307, B2 => n284, ZN 
                           => n189);
   U69 : OAI22_X1 port map( A1 => n238, A2 => n285, B1 => n309, B2 => n284, ZN 
                           => n190);
   U70 : OAI22_X1 port map( A1 => n239, A2 => n285, B1 => n311, B2 => n284, ZN 
                           => n191);
   U71 : OAI22_X1 port map( A1 => n240, A2 => n285, B1 => n313, B2 => n284, ZN 
                           => n192);
   U72 : OAI22_X1 port map( A1 => n241, A2 => n285, B1 => n315, B2 => n284, ZN 
                           => n193);
   U73 : OAI22_X1 port map( A1 => n235, A2 => n285, B1 => n303, B2 => n284, ZN 
                           => n187);
   U74 : OAI22_X1 port map( A1 => n236, A2 => n285, B1 => n305, B2 => n284, ZN 
                           => n188);
   U75 : NAND2_X1 port map( A1 => n282, A2 => n285, ZN => n284);
   U76 : OAI221_X1 port map( B1 => n327, B2 => n323, C1 => n250, C2 => n322, A 
                           => n302, ZN => n211);
   U78 : OAI221_X1 port map( B1 => n352, B2 => n323, C1 => n256, C2 => n322, A 
                           => n314, ZN => n223);
   U79 : OAI221_X1 port map( B1 => n348, B2 => n323, C1 => n255, C2 => n322, A 
                           => n312, ZN => n221);
   U80 : OAI221_X1 port map( B1 => n340, B2 => n323, C1 => n253, C2 => n322, A 
                           => n308, ZN => n217);
   U81 : OAI221_X1 port map( B1 => n336, B2 => n323, C1 => n252, C2 => n322, A 
                           => n306, ZN => n215);
   U82 : OAI221_X1 port map( B1 => n344, B2 => n323, C1 => n254, C2 => n322, A 
                           => n310, ZN => n219);
   U83 : OAI221_X1 port map( B1 => n332, B2 => n323, C1 => n251, C2 => n322, A 
                           => n304, ZN => n213);
   U84 : OAI221_X1 port map( B1 => n360, B2 => n323, C1 => n257, C2 => n322, A 
                           => n321, ZN => n225);
   U85 : OAI221_X1 port map( B1 => n361, B2 => n327, C1 => n258, C2 => n359, A 
                           => n326, ZN => n226);
   U86 : OAI221_X1 port map( B1 => n361, B2 => n352, C1 => n264, C2 => n359, A 
                           => n351, ZN => n232);
   U87 : OAI221_X1 port map( B1 => n361, B2 => n348, C1 => n263, C2 => n359, A 
                           => n347, ZN => n231);
   U88 : OAI221_X1 port map( B1 => n361, B2 => n340, C1 => n261, C2 => n359, A 
                           => n339, ZN => n229);
   U89 : OAI221_X1 port map( B1 => n361, B2 => n336, C1 => n260, C2 => n359, A 
                           => n335, ZN => n228);
   U90 : OAI221_X1 port map( B1 => n361, B2 => n344, C1 => n262, C2 => n359, A 
                           => n343, ZN => n230);
   U91 : OAI221_X1 port map( B1 => n361, B2 => n332, C1 => n259, C2 => n359, A 
                           => n331, ZN => n227);
   U92 : OAI221_X1 port map( B1 => n361, B2 => n360, C1 => n265, C2 => n359, A 
                           => n358, ZN => n233);
   U93 : INV_X1 port map( A => ADD_RD2(0), ZN => n275);
   U94 : INV_X1 port map( A => ADD_RD2(1), ZN => n276);
   U95 : INV_X1 port map( A => ADD_RD1(0), ZN => n277);
   U96 : INV_X1 port map( A => n279, ZN => n278);
   U97 : INV_X1 port map( A => ADD_WR(0), ZN => n279);
   U98 : INV_X1 port map( A => n281, ZN => n280);
   U99 : INV_X1 port map( A => ADD_WR(1), ZN => n281);
   U100 : INV_X1 port map( A => RESET, ZN => n282);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_4 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_4;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n81, n83, n176, n178, n180, n182, n184, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362 : std_logic;

begin
   
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n186, CK => CLK, Q => n325, 
                           QN => n234);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n187, CK => CLK, Q => n330, 
                           QN => n235);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n188, CK => CLK, Q => n335, 
                           QN => n236);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n189, CK => CLK, Q => n339, 
                           QN => n237);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n190, CK => CLK, Q => n343, 
                           QN => n238);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n191, CK => CLK, Q => n347, 
                           QN => n239);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n192, CK => CLK, Q => n351, 
                           QN => n240);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n193, CK => CLK, Q => n356, 
                           QN => n241);
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => n326, 
                           QN => n242);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n195, CK => CLK, Q => n331, 
                           QN => n243);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n203, CK => CLK, Q => n329, 
                           QN => n81);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n204, CK => CLK, Q => n334, 
                           QN => n83);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n205, CK => CLK, Q => n338, 
                           QN => n176);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n206, CK => CLK, Q => n342, 
                           QN => n178);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n207, CK => CLK, Q => n346, 
                           QN => n180);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n208, CK => CLK, Q => n350, 
                           QN => n182);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => n354, 
                           QN => n184);
   OUT2_reg_7_inst : DFF_X1 port map( D => n211, CK => CLK, Q => OUT2(7), QN =>
                           n250);
   OUT2_reg_6_inst : DFF_X1 port map( D => n213, CK => CLK, Q => OUT2(6), QN =>
                           n251);
   OUT2_reg_5_inst : DFF_X1 port map( D => n215, CK => CLK, Q => OUT2(5), QN =>
                           n252);
   OUT2_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => OUT2(4), QN =>
                           n253);
   OUT2_reg_3_inst : DFF_X1 port map( D => n219, CK => CLK, Q => OUT2(3), QN =>
                           n254);
   OUT2_reg_2_inst : DFF_X1 port map( D => n221, CK => CLK, Q => OUT2(2), QN =>
                           n255);
   OUT2_reg_1_inst : DFF_X1 port map( D => n223, CK => CLK, Q => OUT2(1), QN =>
                           n256);
   OUT2_reg_0_inst : DFF_X1 port map( D => n225, CK => CLK, Q => OUT2(0), QN =>
                           n257);
   OUT1_reg_7_inst : DFF_X1 port map( D => n226, CK => CLK, Q => OUT1(7), QN =>
                           n258);
   OUT1_reg_6_inst : DFF_X1 port map( D => n227, CK => CLK, Q => OUT1(6), QN =>
                           n259);
   OUT1_reg_5_inst : DFF_X1 port map( D => n228, CK => CLK, Q => OUT1(5), QN =>
                           n260);
   OUT1_reg_4_inst : DFF_X1 port map( D => n229, CK => CLK, Q => OUT1(4), QN =>
                           n261);
   OUT1_reg_3_inst : DFF_X1 port map( D => n230, CK => CLK, Q => OUT1(3), QN =>
                           n262);
   OUT1_reg_2_inst : DFF_X1 port map( D => n231, CK => CLK, Q => OUT1(2), QN =>
                           n263);
   OUT1_reg_1_inst : DFF_X1 port map( D => n232, CK => CLK, Q => OUT1(1), QN =>
                           n264);
   OUT1_reg_0_inst : DFF_X1 port map( D => n233, CK => CLK, Q => OUT1(0), QN =>
                           n265);
   U19 : AND3_X2 port map( A1 => n360, A2 => n279, A3 => ADD_RD1(1), ZN => n355
                           );
   U20 : AND3_X2 port map( A1 => n279, A2 => n274, A3 => n360, ZN => n357);
   U22 : AND3_X2 port map( A1 => n360, A2 => n274, A3 => n278, ZN => n358);
   U24 : AND3_X2 port map( A1 => ENABLE, A2 => n283, A3 => RD1, ZN => n360);
   U72 : AND3_X2 port map( A1 => n276, A2 => n277, A3 => n323, ZN => n320);
   U77 : AND3_X2 port map( A1 => ENABLE, A2 => n283, A3 => RD2, ZN => n323);
   U131 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n360, A3 => n278, ZN => 
                           n362);
   U132 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n323, A3 => n275, ZN => 
                           n324);
   U133 : NAND3_X1 port map( A1 => n280, A2 => n300, A3 => ADD_WR(1), ZN => 
                           n301);
   U134 : NAND3_X1 port map( A1 => n300, A2 => n281, A3 => ADD_WR(1), ZN => 
                           n296);
   U135 : NAND3_X1 port map( A1 => n300, A2 => n282, A3 => n280, ZN => n287);
   U136 : NAND3_X1 port map( A1 => n281, A2 => n282, A3 => n300, ZN => n284);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n202, CK => CLK, Q => n9, QN 
                           => n297);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n196, CK => CLK, Q => n3, QN 
                           => n288);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n197, CK => CLK, Q => n4, QN 
                           => n289);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n198, CK => CLK, Q => n5, QN 
                           => n290);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n199, CK => CLK, Q => n6, QN 
                           => n291);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n200, CK => CLK, Q => n7, QN 
                           => n292);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n201, CK => CLK, Q => n8, QN 
                           => n295);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n210, CK => CLK, Q => n273, 
                           QN => n328);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n212, CK => CLK, Q => n272, 
                           QN => n333);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n214, CK => CLK, Q => n271, 
                           QN => n337);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n216, CK => CLK, Q => n270, 
                           QN => n341);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => n269, 
                           QN => n345);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n220, CK => CLK, Q => n268, 
                           QN => n349);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n222, CK => CLK, Q => n267, 
                           QN => n353);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n224, CK => CLK, Q => n266, 
                           QN => n361);
   U3 : NAND2_X1 port map( A1 => n283, A2 => n301, ZN => n318);
   U4 : NAND2_X1 port map( A1 => n283, A2 => n296, ZN => n299);
   U5 : NAND2_X1 port map( A1 => n283, A2 => n287, ZN => n294);
   U6 : NAND2_X1 port map( A1 => n283, A2 => n284, ZN => n286);
   U7 : AND3_X2 port map( A1 => n323, A2 => n277, A3 => n275, ZN => n321);
   U8 : INV_X1 port map( A => DATAIN(0), ZN => n316);
   U9 : INV_X1 port map( A => DATAIN(1), ZN => n314);
   U10 : INV_X1 port map( A => DATAIN(2), ZN => n312);
   U11 : INV_X1 port map( A => DATAIN(3), ZN => n310);
   U12 : INV_X1 port map( A => DATAIN(4), ZN => n308);
   U13 : INV_X1 port map( A => DATAIN(5), ZN => n306);
   U14 : INV_X1 port map( A => DATAIN(6), ZN => n304);
   U15 : INV_X1 port map( A => DATAIN(7), ZN => n302);
   U16 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n300);
   U17 : AOI222_X1 port map( A1 => n7, A2 => n358, B1 => n357, B2 => n351, C1 
                           => n355, C2 => n350, ZN => n352);
   U18 : AOI222_X1 port map( A1 => n6, A2 => n358, B1 => n357, B2 => n347, C1 
                           => n355, C2 => n346, ZN => n348);
   U21 : AOI222_X1 port map( A1 => n5, A2 => n358, B1 => n357, B2 => n343, C1 
                           => n355, C2 => n342, ZN => n344);
   U23 : AOI222_X1 port map( A1 => n4, A2 => n358, B1 => n357, B2 => n339, C1 
                           => n355, C2 => n338, ZN => n340);
   U25 : AOI222_X1 port map( A1 => n3, A2 => n358, B1 => n357, B2 => n335, C1 
                           => n355, C2 => n334, ZN => n336);
   U26 : AOI222_X1 port map( A1 => n358, A2 => n331, B1 => n357, B2 => n330, C1
                           => n355, C2 => n329, ZN => n332);
   U27 : AOI222_X1 port map( A1 => n321, A2 => n5, B1 => n320, B2 => n343, C1 
                           => n319, C2 => n342, ZN => n311);
   U28 : AOI222_X1 port map( A1 => n321, A2 => n4, B1 => n320, B2 => n339, C1 
                           => n319, C2 => n338, ZN => n309);
   U29 : AOI222_X1 port map( A1 => n321, A2 => n3, B1 => n320, B2 => n335, C1 
                           => n319, C2 => n334, ZN => n307);
   U30 : AOI222_X1 port map( A1 => n321, A2 => n331, B1 => n320, B2 => n330, C1
                           => n319, C2 => n329, ZN => n305);
   U31 : AOI222_X1 port map( A1 => n321, A2 => n326, B1 => n320, B2 => n325, C1
                           => n319, C2 => n9, ZN => n303);
   U32 : INV_X1 port map( A => ADD_RD1(1), ZN => n274);
   U33 : AOI222_X1 port map( A1 => n8, A2 => n358, B1 => n357, B2 => n356, C1 
                           => n355, C2 => n354, ZN => n359);
   U34 : AOI222_X1 port map( A1 => n321, A2 => n6, B1 => n320, B2 => n347, C1 
                           => n319, C2 => n346, ZN => n313);
   U35 : AND3_X2 port map( A1 => n323, A2 => n276, A3 => ADD_RD2(1), ZN => n319
                           );
   U36 : AOI222_X1 port map( A1 => n358, A2 => n326, B1 => n357, B2 => n325, C1
                           => n9, C2 => n355, ZN => n327);
   U37 : AOI222_X1 port map( A1 => n321, A2 => n7, B1 => n320, B2 => n351, C1 
                           => n319, C2 => n350, ZN => n315);
   U38 : AOI222_X1 port map( A1 => n321, A2 => n8, B1 => n320, B2 => n356, C1 
                           => n319, C2 => n354, ZN => n322);
   U39 : OAI221_X1 port map( B1 => n333, B2 => n324, C1 => n251, C2 => n323, A 
                           => n305, ZN => n213);
   U40 : OAI221_X1 port map( B1 => n349, B2 => n324, C1 => n255, C2 => n323, A 
                           => n313, ZN => n221);
   U41 : OAI221_X1 port map( B1 => n353, B2 => n324, C1 => n256, C2 => n323, A 
                           => n315, ZN => n223);
   U42 : OAI221_X1 port map( B1 => n361, B2 => n324, C1 => n257, C2 => n323, A 
                           => n322, ZN => n225);
   U43 : OAI221_X1 port map( B1 => n328, B2 => n324, C1 => n250, C2 => n323, A 
                           => n303, ZN => n211);
   U44 : OAI221_X1 port map( B1 => n337, B2 => n324, C1 => n252, C2 => n323, A 
                           => n307, ZN => n215);
   U45 : OAI221_X1 port map( B1 => n341, B2 => n324, C1 => n253, C2 => n323, A 
                           => n309, ZN => n217);
   U46 : OAI221_X1 port map( B1 => n345, B2 => n324, C1 => n254, C2 => n323, A 
                           => n311, ZN => n219);
   U47 : OAI22_X1 port map( A1 => n349, A2 => n318, B1 => n317, B2 => n312, ZN 
                           => n220);
   U48 : OAI22_X1 port map( A1 => n361, A2 => n318, B1 => n317, B2 => n316, ZN 
                           => n224);
   U49 : OAI22_X1 port map( A1 => n328, A2 => n318, B1 => n317, B2 => n302, ZN 
                           => n210);
   U50 : OAI22_X1 port map( A1 => n341, A2 => n318, B1 => n317, B2 => n308, ZN 
                           => n216);
   U51 : OAI22_X1 port map( A1 => n353, A2 => n318, B1 => n317, B2 => n314, ZN 
                           => n222);
   U52 : OAI22_X1 port map( A1 => n333, A2 => n318, B1 => n317, B2 => n304, ZN 
                           => n212);
   U53 : OAI22_X1 port map( A1 => n337, A2 => n318, B1 => n317, B2 => n306, ZN 
                           => n214);
   U54 : OAI22_X1 port map( A1 => n345, A2 => n318, B1 => n317, B2 => n310, ZN 
                           => n218);
   U55 : NAND2_X1 port map( A1 => n283, A2 => n318, ZN => n317);
   U56 : OAI22_X1 port map( A1 => n243, A2 => n294, B1 => n304, B2 => n293, ZN 
                           => n195);
   U57 : OAI22_X1 port map( A1 => n288, A2 => n294, B1 => n306, B2 => n293, ZN 
                           => n196);
   U58 : OAI22_X1 port map( A1 => n289, A2 => n294, B1 => n308, B2 => n293, ZN 
                           => n197);
   U59 : OAI22_X1 port map( A1 => n290, A2 => n294, B1 => n310, B2 => n293, ZN 
                           => n198);
   U60 : OAI22_X1 port map( A1 => n291, A2 => n294, B1 => n312, B2 => n293, ZN 
                           => n199);
   U61 : OAI22_X1 port map( A1 => n292, A2 => n294, B1 => n314, B2 => n293, ZN 
                           => n200);
   U62 : OAI22_X1 port map( A1 => n295, A2 => n294, B1 => n316, B2 => n293, ZN 
                           => n201);
   U63 : OAI22_X1 port map( A1 => n242, A2 => n294, B1 => n302, B2 => n293, ZN 
                           => n194);
   U64 : NAND2_X1 port map( A1 => n283, A2 => n294, ZN => n293);
   U65 : OAI22_X1 port map( A1 => n81, A2 => n299, B1 => n304, B2 => n298, ZN 
                           => n203);
   U66 : OAI22_X1 port map( A1 => n83, A2 => n299, B1 => n306, B2 => n298, ZN 
                           => n204);
   U67 : OAI22_X1 port map( A1 => n176, A2 => n299, B1 => n308, B2 => n298, ZN 
                           => n205);
   U68 : OAI22_X1 port map( A1 => n178, A2 => n299, B1 => n310, B2 => n298, ZN 
                           => n206);
   U69 : OAI22_X1 port map( A1 => n180, A2 => n299, B1 => n312, B2 => n298, ZN 
                           => n207);
   U70 : OAI22_X1 port map( A1 => n182, A2 => n299, B1 => n314, B2 => n298, ZN 
                           => n208);
   U71 : OAI22_X1 port map( A1 => n184, A2 => n299, B1 => n316, B2 => n298, ZN 
                           => n209);
   U73 : OAI22_X1 port map( A1 => n297, A2 => n299, B1 => n302, B2 => n298, ZN 
                           => n202);
   U74 : NAND2_X1 port map( A1 => n283, A2 => n299, ZN => n298);
   U75 : OAI221_X1 port map( B1 => n362, B2 => n341, C1 => n261, C2 => n360, A 
                           => n340, ZN => n229);
   U76 : OAI221_X1 port map( B1 => n362, B2 => n328, C1 => n258, C2 => n360, A 
                           => n327, ZN => n226);
   U78 : OAI221_X1 port map( B1 => n362, B2 => n337, C1 => n260, C2 => n360, A 
                           => n336, ZN => n228);
   U79 : OAI221_X1 port map( B1 => n362, B2 => n361, C1 => n265, C2 => n360, A 
                           => n359, ZN => n233);
   U80 : OAI221_X1 port map( B1 => n362, B2 => n333, C1 => n259, C2 => n360, A 
                           => n332, ZN => n227);
   U81 : OAI221_X1 port map( B1 => n362, B2 => n349, C1 => n263, C2 => n360, A 
                           => n348, ZN => n231);
   U82 : OAI221_X1 port map( B1 => n362, B2 => n345, C1 => n262, C2 => n360, A 
                           => n344, ZN => n230);
   U83 : OAI221_X1 port map( B1 => n362, B2 => n353, C1 => n264, C2 => n360, A 
                           => n352, ZN => n232);
   U84 : OAI22_X1 port map( A1 => n241, A2 => n286, B1 => n316, B2 => n285, ZN 
                           => n193);
   U85 : OAI22_X1 port map( A1 => n239, A2 => n286, B1 => n312, B2 => n285, ZN 
                           => n191);
   U86 : OAI22_X1 port map( A1 => n235, A2 => n286, B1 => n304, B2 => n285, ZN 
                           => n187);
   U87 : OAI22_X1 port map( A1 => n234, A2 => n286, B1 => n302, B2 => n285, ZN 
                           => n186);
   U88 : OAI22_X1 port map( A1 => n238, A2 => n286, B1 => n310, B2 => n285, ZN 
                           => n190);
   U89 : OAI22_X1 port map( A1 => n240, A2 => n286, B1 => n314, B2 => n285, ZN 
                           => n192);
   U90 : OAI22_X1 port map( A1 => n237, A2 => n286, B1 => n308, B2 => n285, ZN 
                           => n189);
   U91 : OAI22_X1 port map( A1 => n236, A2 => n286, B1 => n306, B2 => n285, ZN 
                           => n188);
   U92 : NAND2_X1 port map( A1 => n283, A2 => n286, ZN => n285);
   U93 : INV_X1 port map( A => n276, ZN => n275);
   U94 : INV_X1 port map( A => ADD_RD2(0), ZN => n276);
   U95 : INV_X1 port map( A => ADD_RD2(1), ZN => n277);
   U96 : INV_X1 port map( A => n279, ZN => n278);
   U97 : INV_X1 port map( A => ADD_RD1(0), ZN => n279);
   U98 : INV_X1 port map( A => n281, ZN => n280);
   U99 : INV_X1 port map( A => ADD_WR(0), ZN => n281);
   U100 : INV_X1 port map( A => ADD_WR(1), ZN => n282);
   U101 : INV_X1 port map( A => RESET, ZN => n283);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_3 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_3;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n81, n83, n176, n178, n180, n182, n184, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360 : std_logic;

begin
   
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n186, CK => CLK, Q => n323, 
                           QN => n234);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n187, CK => CLK, Q => n328, 
                           QN => n235);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n188, CK => CLK, Q => n333, 
                           QN => n236);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n189, CK => CLK, Q => n337, 
                           QN => n237);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n190, CK => CLK, Q => n341, 
                           QN => n238);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n191, CK => CLK, Q => n345, 
                           QN => n239);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n192, CK => CLK, Q => n349, 
                           QN => n240);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n193, CK => CLK, Q => n354, 
                           QN => n241);
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => n324, 
                           QN => n242);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n195, CK => CLK, Q => n329, 
                           QN => n243);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n203, CK => CLK, Q => n327, 
                           QN => n81);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n204, CK => CLK, Q => n332, 
                           QN => n83);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n205, CK => CLK, Q => n336, 
                           QN => n176);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n206, CK => CLK, Q => n340, 
                           QN => n178);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n207, CK => CLK, Q => n344, 
                           QN => n180);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n208, CK => CLK, Q => n348, 
                           QN => n182);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => n352, 
                           QN => n184);
   U24 : AND3_X2 port map( A1 => ENABLE, A2 => n281, A3 => RD1, ZN => n358);
   U77 : AND3_X2 port map( A1 => ENABLE, A2 => n281, A3 => RD2, ZN => n321);
   U131 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n358, A3 => ADD_RD1(0), ZN
                           => n360);
   U132 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n321, A3 => ADD_RD2(0), ZN
                           => n322);
   U133 : NAND3_X1 port map( A1 => ADD_WR(0), A2 => n298, A3 => n279, ZN => 
                           n299);
   U134 : NAND3_X1 port map( A1 => n298, A2 => n278, A3 => n279, ZN => n294);
   U135 : NAND3_X1 port map( A1 => n298, A2 => n280, A3 => ADD_WR(0), ZN => 
                           n285);
   U136 : NAND3_X1 port map( A1 => n278, A2 => n280, A3 => n298, ZN => n282);
   OUT2_reg_7_inst : DFF_X1 port map( D => n211, CK => CLK, Q => OUT2(7), QN =>
                           n250);
   OUT2_reg_6_inst : DFF_X1 port map( D => n213, CK => CLK, Q => OUT2(6), QN =>
                           n251);
   OUT2_reg_5_inst : DFF_X1 port map( D => n215, CK => CLK, Q => OUT2(5), QN =>
                           n252);
   OUT2_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => OUT2(4), QN =>
                           n253);
   OUT2_reg_3_inst : DFF_X1 port map( D => n219, CK => CLK, Q => OUT2(3), QN =>
                           n254);
   OUT2_reg_2_inst : DFF_X1 port map( D => n221, CK => CLK, Q => OUT2(2), QN =>
                           n255);
   OUT2_reg_1_inst : DFF_X1 port map( D => n223, CK => CLK, Q => OUT2(1), QN =>
                           n256);
   OUT2_reg_0_inst : DFF_X1 port map( D => n225, CK => CLK, Q => OUT2(0), QN =>
                           n257);
   OUT1_reg_7_inst : DFF_X1 port map( D => n226, CK => CLK, Q => OUT1(7), QN =>
                           n258);
   OUT1_reg_6_inst : DFF_X1 port map( D => n227, CK => CLK, Q => OUT1(6), QN =>
                           n259);
   OUT1_reg_5_inst : DFF_X1 port map( D => n228, CK => CLK, Q => OUT1(5), QN =>
                           n260);
   OUT1_reg_4_inst : DFF_X1 port map( D => n229, CK => CLK, Q => OUT1(4), QN =>
                           n261);
   OUT1_reg_3_inst : DFF_X1 port map( D => n230, CK => CLK, Q => OUT1(3), QN =>
                           n262);
   OUT1_reg_2_inst : DFF_X1 port map( D => n231, CK => CLK, Q => OUT1(2), QN =>
                           n263);
   OUT1_reg_1_inst : DFF_X1 port map( D => n232, CK => CLK, Q => OUT1(1), QN =>
                           n264);
   OUT1_reg_0_inst : DFF_X1 port map( D => n233, CK => CLK, Q => OUT1(0), QN =>
                           n265);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n202, CK => CLK, Q => n9, QN 
                           => n295);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n196, CK => CLK, Q => n3, QN 
                           => n286);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n197, CK => CLK, Q => n4, QN 
                           => n287);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n198, CK => CLK, Q => n5, QN 
                           => n288);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n199, CK => CLK, Q => n6, QN 
                           => n289);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n200, CK => CLK, Q => n7, QN 
                           => n290);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n201, CK => CLK, Q => n8, QN 
                           => n293);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n210, CK => CLK, Q => n273, 
                           QN => n326);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n212, CK => CLK, Q => n272, 
                           QN => n331);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n214, CK => CLK, Q => n271, 
                           QN => n335);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n216, CK => CLK, Q => n270, 
                           QN => n339);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => n269, 
                           QN => n343);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n220, CK => CLK, Q => n268, 
                           QN => n347);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n222, CK => CLK, Q => n267, 
                           QN => n351);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n224, CK => CLK, Q => n266, 
                           QN => n359);
   U3 : AND3_X1 port map( A1 => n277, A2 => n274, A3 => n358, ZN => n355);
   U4 : AND3_X1 port map( A1 => n275, A2 => n276, A3 => n321, ZN => n318);
   U5 : NAND2_X1 port map( A1 => n281, A2 => n282, ZN => n284);
   U6 : NAND2_X1 port map( A1 => n281, A2 => n299, ZN => n316);
   U7 : NAND2_X1 port map( A1 => n281, A2 => n294, ZN => n297);
   U8 : NAND2_X1 port map( A1 => n281, A2 => n285, ZN => n292);
   U9 : NAND2_X1 port map( A1 => n281, A2 => n284, ZN => n283);
   U10 : AND3_X1 port map( A1 => n358, A2 => n274, A3 => ADD_RD1(0), ZN => n356
                           );
   U11 : AND3_X1 port map( A1 => n321, A2 => n276, A3 => ADD_RD2(0), ZN => n319
                           );
   U12 : AND3_X1 port map( A1 => n358, A2 => n277, A3 => ADD_RD1(1), ZN => n353
                           );
   U13 : AND3_X1 port map( A1 => n321, A2 => n275, A3 => ADD_RD2(1), ZN => n317
                           );
   U14 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n298);
   U15 : INV_X1 port map( A => DATAIN(0), ZN => n314);
   U16 : INV_X1 port map( A => DATAIN(1), ZN => n312);
   U17 : INV_X1 port map( A => DATAIN(2), ZN => n310);
   U18 : INV_X1 port map( A => DATAIN(3), ZN => n308);
   U19 : INV_X1 port map( A => DATAIN(4), ZN => n306);
   U20 : INV_X1 port map( A => DATAIN(5), ZN => n304);
   U21 : INV_X1 port map( A => DATAIN(6), ZN => n302);
   U22 : INV_X1 port map( A => DATAIN(7), ZN => n300);
   U23 : AOI222_X1 port map( A1 => n8, A2 => n356, B1 => n355, B2 => n354, C1 
                           => n353, C2 => n352, ZN => n357);
   U25 : AOI222_X1 port map( A1 => n7, A2 => n356, B1 => n355, B2 => n349, C1 
                           => n353, C2 => n348, ZN => n350);
   U26 : AOI222_X1 port map( A1 => n6, A2 => n356, B1 => n355, B2 => n345, C1 
                           => n353, C2 => n344, ZN => n346);
   U27 : AOI222_X1 port map( A1 => n5, A2 => n356, B1 => n355, B2 => n341, C1 
                           => n353, C2 => n340, ZN => n342);
   U28 : AOI222_X1 port map( A1 => n4, A2 => n356, B1 => n355, B2 => n337, C1 
                           => n353, C2 => n336, ZN => n338);
   U29 : AOI222_X1 port map( A1 => n3, A2 => n356, B1 => n355, B2 => n333, C1 
                           => n353, C2 => n332, ZN => n334);
   U30 : AOI222_X1 port map( A1 => n356, A2 => n329, B1 => n355, B2 => n328, C1
                           => n353, C2 => n327, ZN => n330);
   U31 : AOI222_X1 port map( A1 => n356, A2 => n324, B1 => n355, B2 => n323, C1
                           => n9, C2 => n353, ZN => n325);
   U32 : AOI222_X1 port map( A1 => n319, A2 => n8, B1 => n318, B2 => n354, C1 
                           => n317, C2 => n352, ZN => n320);
   U33 : AOI222_X1 port map( A1 => n319, A2 => n7, B1 => n318, B2 => n349, C1 
                           => n317, C2 => n348, ZN => n313);
   U34 : AOI222_X1 port map( A1 => n319, A2 => n6, B1 => n318, B2 => n345, C1 
                           => n317, C2 => n344, ZN => n311);
   U35 : AOI222_X1 port map( A1 => n319, A2 => n5, B1 => n318, B2 => n341, C1 
                           => n317, C2 => n340, ZN => n309);
   U36 : AOI222_X1 port map( A1 => n319, A2 => n4, B1 => n318, B2 => n337, C1 
                           => n317, C2 => n336, ZN => n307);
   U37 : AOI222_X1 port map( A1 => n319, A2 => n3, B1 => n318, B2 => n333, C1 
                           => n317, C2 => n332, ZN => n305);
   U38 : AOI222_X1 port map( A1 => n319, A2 => n329, B1 => n318, B2 => n328, C1
                           => n317, C2 => n327, ZN => n303);
   U39 : AOI222_X1 port map( A1 => n319, A2 => n324, B1 => n318, B2 => n323, C1
                           => n317, C2 => n9, ZN => n301);
   U40 : INV_X1 port map( A => ADD_RD1(1), ZN => n274);
   U41 : OAI22_X1 port map( A1 => n351, A2 => n316, B1 => n315, B2 => n312, ZN 
                           => n222);
   U42 : OAI22_X1 port map( A1 => n347, A2 => n316, B1 => n315, B2 => n310, ZN 
                           => n220);
   U43 : OAI22_X1 port map( A1 => n326, A2 => n316, B1 => n315, B2 => n300, ZN 
                           => n210);
   U44 : OAI22_X1 port map( A1 => n359, A2 => n316, B1 => n315, B2 => n314, ZN 
                           => n224);
   U45 : OAI22_X1 port map( A1 => n331, A2 => n316, B1 => n315, B2 => n302, ZN 
                           => n212);
   U46 : OAI22_X1 port map( A1 => n335, A2 => n316, B1 => n315, B2 => n304, ZN 
                           => n214);
   U47 : OAI22_X1 port map( A1 => n339, A2 => n316, B1 => n315, B2 => n306, ZN 
                           => n216);
   U48 : OAI22_X1 port map( A1 => n343, A2 => n316, B1 => n315, B2 => n308, ZN 
                           => n218);
   U49 : NAND2_X1 port map( A1 => n281, A2 => n316, ZN => n315);
   U50 : OAI22_X1 port map( A1 => n242, A2 => n292, B1 => n300, B2 => n291, ZN 
                           => n194);
   U51 : OAI22_X1 port map( A1 => n286, A2 => n292, B1 => n304, B2 => n291, ZN 
                           => n196);
   U52 : OAI22_X1 port map( A1 => n243, A2 => n292, B1 => n302, B2 => n291, ZN 
                           => n195);
   U53 : OAI22_X1 port map( A1 => n289, A2 => n292, B1 => n310, B2 => n291, ZN 
                           => n199);
   U54 : OAI22_X1 port map( A1 => n290, A2 => n292, B1 => n312, B2 => n291, ZN 
                           => n200);
   U55 : OAI22_X1 port map( A1 => n288, A2 => n292, B1 => n308, B2 => n291, ZN 
                           => n198);
   U56 : OAI22_X1 port map( A1 => n293, A2 => n292, B1 => n314, B2 => n291, ZN 
                           => n201);
   U57 : OAI22_X1 port map( A1 => n287, A2 => n292, B1 => n306, B2 => n291, ZN 
                           => n197);
   U58 : NAND2_X1 port map( A1 => n281, A2 => n292, ZN => n291);
   U59 : OAI22_X1 port map( A1 => n182, A2 => n297, B1 => n312, B2 => n296, ZN 
                           => n208);
   U60 : OAI22_X1 port map( A1 => n180, A2 => n297, B1 => n310, B2 => n296, ZN 
                           => n207);
   U61 : OAI22_X1 port map( A1 => n295, A2 => n297, B1 => n300, B2 => n296, ZN 
                           => n202);
   U62 : OAI22_X1 port map( A1 => n184, A2 => n297, B1 => n314, B2 => n296, ZN 
                           => n209);
   U63 : OAI22_X1 port map( A1 => n81, A2 => n297, B1 => n302, B2 => n296, ZN 
                           => n203);
   U64 : OAI22_X1 port map( A1 => n83, A2 => n297, B1 => n304, B2 => n296, ZN 
                           => n204);
   U65 : OAI22_X1 port map( A1 => n176, A2 => n297, B1 => n306, B2 => n296, ZN 
                           => n205);
   U66 : OAI22_X1 port map( A1 => n178, A2 => n297, B1 => n308, B2 => n296, ZN 
                           => n206);
   U67 : NAND2_X1 port map( A1 => n281, A2 => n297, ZN => n296);
   U68 : OAI22_X1 port map( A1 => n236, A2 => n284, B1 => n304, B2 => n283, ZN 
                           => n188);
   U69 : OAI22_X1 port map( A1 => n235, A2 => n284, B1 => n302, B2 => n283, ZN 
                           => n187);
   U70 : OAI22_X1 port map( A1 => n234, A2 => n284, B1 => n300, B2 => n283, ZN 
                           => n186);
   U71 : OAI22_X1 port map( A1 => n241, A2 => n284, B1 => n314, B2 => n283, ZN 
                           => n193);
   U72 : OAI22_X1 port map( A1 => n240, A2 => n284, B1 => n312, B2 => n283, ZN 
                           => n192);
   U73 : OAI22_X1 port map( A1 => n239, A2 => n284, B1 => n310, B2 => n283, ZN 
                           => n191);
   U74 : OAI22_X1 port map( A1 => n238, A2 => n284, B1 => n308, B2 => n283, ZN 
                           => n190);
   U75 : OAI22_X1 port map( A1 => n237, A2 => n284, B1 => n306, B2 => n283, ZN 
                           => n189);
   U76 : OAI221_X1 port map( B1 => n331, B2 => n322, C1 => n251, C2 => n321, A 
                           => n303, ZN => n213);
   U78 : OAI221_X1 port map( B1 => n335, B2 => n322, C1 => n252, C2 => n321, A 
                           => n305, ZN => n215);
   U79 : OAI221_X1 port map( B1 => n339, B2 => n322, C1 => n253, C2 => n321, A 
                           => n307, ZN => n217);
   U80 : OAI221_X1 port map( B1 => n343, B2 => n322, C1 => n254, C2 => n321, A 
                           => n309, ZN => n219);
   U81 : OAI221_X1 port map( B1 => n347, B2 => n322, C1 => n255, C2 => n321, A 
                           => n311, ZN => n221);
   U82 : OAI221_X1 port map( B1 => n351, B2 => n322, C1 => n256, C2 => n321, A 
                           => n313, ZN => n223);
   U83 : OAI221_X1 port map( B1 => n359, B2 => n322, C1 => n257, C2 => n321, A 
                           => n320, ZN => n225);
   U84 : OAI221_X1 port map( B1 => n326, B2 => n322, C1 => n250, C2 => n321, A 
                           => n301, ZN => n211);
   U85 : OAI221_X1 port map( B1 => n360, B2 => n331, C1 => n259, C2 => n358, A 
                           => n330, ZN => n227);
   U86 : OAI221_X1 port map( B1 => n360, B2 => n347, C1 => n263, C2 => n358, A 
                           => n346, ZN => n231);
   U87 : OAI221_X1 port map( B1 => n360, B2 => n351, C1 => n264, C2 => n358, A 
                           => n350, ZN => n232);
   U88 : OAI221_X1 port map( B1 => n360, B2 => n359, C1 => n265, C2 => n358, A 
                           => n357, ZN => n233);
   U89 : OAI221_X1 port map( B1 => n360, B2 => n326, C1 => n258, C2 => n358, A 
                           => n325, ZN => n226);
   U90 : OAI221_X1 port map( B1 => n360, B2 => n335, C1 => n260, C2 => n358, A 
                           => n334, ZN => n228);
   U91 : OAI221_X1 port map( B1 => n360, B2 => n339, C1 => n261, C2 => n358, A 
                           => n338, ZN => n229);
   U92 : OAI221_X1 port map( B1 => n360, B2 => n343, C1 => n262, C2 => n358, A 
                           => n342, ZN => n230);
   U93 : INV_X1 port map( A => ADD_RD2(0), ZN => n275);
   U94 : INV_X1 port map( A => ADD_RD2(1), ZN => n276);
   U95 : INV_X1 port map( A => ADD_RD1(0), ZN => n277);
   U96 : INV_X1 port map( A => ADD_WR(0), ZN => n278);
   U97 : INV_X1 port map( A => n280, ZN => n279);
   U98 : INV_X1 port map( A => ADD_WR(1), ZN => n280);
   U99 : INV_X1 port map( A => RESET, ZN => n281);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_2 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_2;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n81, n83, n176, n178, n180, n182, n184, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361 : std_logic;

begin
   
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n186, CK => CLK, Q => n324, 
                           QN => n234);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n187, CK => CLK, Q => n329, 
                           QN => n235);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n188, CK => CLK, Q => n334, 
                           QN => n236);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n189, CK => CLK, Q => n338, 
                           QN => n237);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n190, CK => CLK, Q => n342, 
                           QN => n238);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n191, CK => CLK, Q => n346, 
                           QN => n239);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n192, CK => CLK, Q => n350, 
                           QN => n240);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n193, CK => CLK, Q => n355, 
                           QN => n241);
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => n325, 
                           QN => n242);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n195, CK => CLK, Q => n330, 
                           QN => n243);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n203, CK => CLK, Q => n328, 
                           QN => n81);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n204, CK => CLK, Q => n333, 
                           QN => n83);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n205, CK => CLK, Q => n337, 
                           QN => n176);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n206, CK => CLK, Q => n341, 
                           QN => n178);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n207, CK => CLK, Q => n345, 
                           QN => n180);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n208, CK => CLK, Q => n349, 
                           QN => n182);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => n353, 
                           QN => n184);
   OUT2_reg_7_inst : DFF_X1 port map( D => n211, CK => CLK, Q => OUT2(7), QN =>
                           n250);
   OUT2_reg_6_inst : DFF_X1 port map( D => n213, CK => CLK, Q => OUT2(6), QN =>
                           n251);
   OUT2_reg_5_inst : DFF_X1 port map( D => n215, CK => CLK, Q => OUT2(5), QN =>
                           n252);
   OUT2_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => OUT2(4), QN =>
                           n253);
   OUT2_reg_3_inst : DFF_X1 port map( D => n219, CK => CLK, Q => OUT2(3), QN =>
                           n254);
   OUT2_reg_2_inst : DFF_X1 port map( D => n221, CK => CLK, Q => OUT2(2), QN =>
                           n255);
   OUT2_reg_1_inst : DFF_X1 port map( D => n223, CK => CLK, Q => OUT2(1), QN =>
                           n256);
   OUT2_reg_0_inst : DFF_X1 port map( D => n225, CK => CLK, Q => OUT2(0), QN =>
                           n257);
   OUT1_reg_7_inst : DFF_X1 port map( D => n226, CK => CLK, Q => OUT1(7), QN =>
                           n258);
   OUT1_reg_6_inst : DFF_X1 port map( D => n227, CK => CLK, Q => OUT1(6), QN =>
                           n259);
   OUT1_reg_5_inst : DFF_X1 port map( D => n228, CK => CLK, Q => OUT1(5), QN =>
                           n260);
   OUT1_reg_4_inst : DFF_X1 port map( D => n229, CK => CLK, Q => OUT1(4), QN =>
                           n261);
   OUT1_reg_3_inst : DFF_X1 port map( D => n230, CK => CLK, Q => OUT1(3), QN =>
                           n262);
   OUT1_reg_2_inst : DFF_X1 port map( D => n231, CK => CLK, Q => OUT1(2), QN =>
                           n263);
   OUT1_reg_1_inst : DFF_X1 port map( D => n232, CK => CLK, Q => OUT1(1), QN =>
                           n264);
   U20 : AND3_X2 port map( A1 => n279, A2 => n274, A3 => n359, ZN => n356);
   U22 : AND3_X2 port map( A1 => n359, A2 => n274, A3 => n278, ZN => n357);
   U24 : AND3_X2 port map( A1 => ENABLE, A2 => n282, A3 => RD1, ZN => n359);
   U72 : AND3_X2 port map( A1 => n276, A2 => n277, A3 => n322, ZN => n319);
   U75 : AND3_X2 port map( A1 => n322, A2 => n277, A3 => n275, ZN => n320);
   U77 : AND3_X2 port map( A1 => ENABLE, A2 => n282, A3 => RD2, ZN => n322);
   U131 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n359, A3 => n278, ZN => 
                           n361);
   U132 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n322, A3 => n275, ZN => 
                           n323);
   U133 : NAND3_X1 port map( A1 => ADD_WR(0), A2 => n299, A3 => ADD_WR(1), ZN 
                           => n300);
   U134 : NAND3_X1 port map( A1 => n299, A2 => n280, A3 => ADD_WR(1), ZN => 
                           n295);
   U135 : NAND3_X1 port map( A1 => n299, A2 => n281, A3 => ADD_WR(0), ZN => 
                           n286);
   U136 : NAND3_X1 port map( A1 => n280, A2 => n281, A3 => n299, ZN => n283);
   OUT1_reg_0_inst : DFF_X1 port map( D => n233, CK => CLK, Q => OUT1(0), QN =>
                           n265);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n202, CK => CLK, Q => n9, QN 
                           => n296);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n196, CK => CLK, Q => n3, QN 
                           => n287);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n197, CK => CLK, Q => n4, QN 
                           => n288);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n198, CK => CLK, Q => n5, QN 
                           => n289);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n199, CK => CLK, Q => n6, QN 
                           => n290);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n200, CK => CLK, Q => n7, QN 
                           => n291);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n201, CK => CLK, Q => n8, QN 
                           => n294);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n210, CK => CLK, Q => n273, 
                           QN => n327);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n212, CK => CLK, Q => n272, 
                           QN => n332);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n214, CK => CLK, Q => n271, 
                           QN => n336);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n216, CK => CLK, Q => n270, 
                           QN => n340);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => n269, 
                           QN => n344);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n220, CK => CLK, Q => n268, 
                           QN => n348);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n222, CK => CLK, Q => n267, 
                           QN => n352);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n224, CK => CLK, Q => n266, 
                           QN => n360);
   U3 : NAND2_X1 port map( A1 => n282, A2 => n300, ZN => n317);
   U4 : NAND2_X1 port map( A1 => n282, A2 => n295, ZN => n298);
   U5 : NAND2_X1 port map( A1 => n282, A2 => n286, ZN => n293);
   U6 : NAND2_X1 port map( A1 => n282, A2 => n283, ZN => n285);
   U7 : AND3_X2 port map( A1 => n359, A2 => n279, A3 => ADD_RD1(1), ZN => n354)
                           ;
   U8 : INV_X1 port map( A => DATAIN(0), ZN => n315);
   U9 : INV_X1 port map( A => DATAIN(1), ZN => n313);
   U10 : INV_X1 port map( A => DATAIN(2), ZN => n311);
   U11 : INV_X1 port map( A => DATAIN(3), ZN => n309);
   U12 : INV_X1 port map( A => DATAIN(4), ZN => n307);
   U13 : INV_X1 port map( A => DATAIN(5), ZN => n305);
   U14 : INV_X1 port map( A => DATAIN(6), ZN => n303);
   U15 : INV_X1 port map( A => DATAIN(7), ZN => n301);
   U16 : AOI222_X1 port map( A1 => n320, A2 => n4, B1 => n319, B2 => n338, C1 
                           => n318, C2 => n337, ZN => n308);
   U17 : AOI222_X1 port map( A1 => n320, A2 => n3, B1 => n319, B2 => n334, C1 
                           => n318, C2 => n333, ZN => n306);
   U18 : AOI222_X1 port map( A1 => n320, A2 => n330, B1 => n319, B2 => n329, C1
                           => n318, C2 => n328, ZN => n304);
   U19 : AOI222_X1 port map( A1 => n320, A2 => n325, B1 => n319, B2 => n324, C1
                           => n318, C2 => n9, ZN => n302);
   U21 : AOI222_X1 port map( A1 => n7, A2 => n357, B1 => n356, B2 => n350, C1 
                           => n354, C2 => n349, ZN => n351);
   U23 : AOI222_X1 port map( A1 => n6, A2 => n357, B1 => n356, B2 => n346, C1 
                           => n354, C2 => n345, ZN => n347);
   U25 : AOI222_X1 port map( A1 => n5, A2 => n357, B1 => n356, B2 => n342, C1 
                           => n354, C2 => n341, ZN => n343);
   U26 : AOI222_X1 port map( A1 => n4, A2 => n357, B1 => n356, B2 => n338, C1 
                           => n354, C2 => n337, ZN => n339);
   U27 : AOI222_X1 port map( A1 => n3, A2 => n357, B1 => n356, B2 => n334, C1 
                           => n354, C2 => n333, ZN => n335);
   U28 : AOI222_X1 port map( A1 => n357, A2 => n330, B1 => n356, B2 => n329, C1
                           => n354, C2 => n328, ZN => n331);
   U29 : AOI222_X1 port map( A1 => n8, A2 => n357, B1 => n356, B2 => n355, C1 
                           => n354, C2 => n353, ZN => n358);
   U30 : AOI222_X1 port map( A1 => n320, A2 => n5, B1 => n319, B2 => n342, C1 
                           => n318, C2 => n341, ZN => n310);
   U31 : INV_X1 port map( A => ADD_RD1(1), ZN => n274);
   U32 : AOI222_X1 port map( A1 => n320, A2 => n6, B1 => n319, B2 => n346, C1 
                           => n318, C2 => n345, ZN => n312);
   U33 : AOI222_X1 port map( A1 => n320, A2 => n7, B1 => n319, B2 => n350, C1 
                           => n318, C2 => n349, ZN => n314);
   U34 : AND3_X2 port map( A1 => n322, A2 => n276, A3 => ADD_RD2(1), ZN => n318
                           );
   U35 : AOI222_X1 port map( A1 => n357, A2 => n325, B1 => n356, B2 => n324, C1
                           => n9, C2 => n354, ZN => n326);
   U36 : AOI222_X1 port map( A1 => n320, A2 => n8, B1 => n319, B2 => n355, C1 
                           => n318, C2 => n353, ZN => n321);
   U37 : OAI22_X1 port map( A1 => n332, A2 => n317, B1 => n316, B2 => n303, ZN 
                           => n212);
   U38 : OAI22_X1 port map( A1 => n344, A2 => n317, B1 => n316, B2 => n309, ZN 
                           => n218);
   U39 : OAI22_X1 port map( A1 => n348, A2 => n317, B1 => n316, B2 => n311, ZN 
                           => n220);
   U40 : OAI22_X1 port map( A1 => n352, A2 => n317, B1 => n316, B2 => n313, ZN 
                           => n222);
   U41 : OAI22_X1 port map( A1 => n360, A2 => n317, B1 => n316, B2 => n315, ZN 
                           => n224);
   U42 : OAI22_X1 port map( A1 => n327, A2 => n317, B1 => n316, B2 => n301, ZN 
                           => n210);
   U43 : OAI22_X1 port map( A1 => n336, A2 => n317, B1 => n316, B2 => n305, ZN 
                           => n214);
   U44 : OAI22_X1 port map( A1 => n340, A2 => n317, B1 => n316, B2 => n307, ZN 
                           => n216);
   U45 : NAND2_X1 port map( A1 => n282, A2 => n317, ZN => n316);
   U46 : OAI22_X1 port map( A1 => n243, A2 => n293, B1 => n303, B2 => n292, ZN 
                           => n195);
   U47 : OAI22_X1 port map( A1 => n289, A2 => n293, B1 => n309, B2 => n292, ZN 
                           => n198);
   U48 : OAI22_X1 port map( A1 => n290, A2 => n293, B1 => n311, B2 => n292, ZN 
                           => n199);
   U49 : OAI22_X1 port map( A1 => n291, A2 => n293, B1 => n313, B2 => n292, ZN 
                           => n200);
   U50 : OAI22_X1 port map( A1 => n294, A2 => n293, B1 => n315, B2 => n292, ZN 
                           => n201);
   U51 : OAI22_X1 port map( A1 => n242, A2 => n293, B1 => n301, B2 => n292, ZN 
                           => n194);
   U52 : OAI22_X1 port map( A1 => n287, A2 => n293, B1 => n305, B2 => n292, ZN 
                           => n196);
   U53 : OAI22_X1 port map( A1 => n288, A2 => n293, B1 => n307, B2 => n292, ZN 
                           => n197);
   U54 : NAND2_X1 port map( A1 => n282, A2 => n293, ZN => n292);
   U55 : OAI22_X1 port map( A1 => n81, A2 => n298, B1 => n303, B2 => n297, ZN 
                           => n203);
   U56 : OAI22_X1 port map( A1 => n178, A2 => n298, B1 => n309, B2 => n297, ZN 
                           => n206);
   U57 : OAI22_X1 port map( A1 => n180, A2 => n298, B1 => n311, B2 => n297, ZN 
                           => n207);
   U58 : OAI22_X1 port map( A1 => n182, A2 => n298, B1 => n313, B2 => n297, ZN 
                           => n208);
   U59 : OAI22_X1 port map( A1 => n184, A2 => n298, B1 => n315, B2 => n297, ZN 
                           => n209);
   U60 : OAI22_X1 port map( A1 => n296, A2 => n298, B1 => n301, B2 => n297, ZN 
                           => n202);
   U61 : OAI22_X1 port map( A1 => n83, A2 => n298, B1 => n305, B2 => n297, ZN 
                           => n204);
   U62 : OAI22_X1 port map( A1 => n176, A2 => n298, B1 => n307, B2 => n297, ZN 
                           => n205);
   U63 : NAND2_X1 port map( A1 => n282, A2 => n298, ZN => n297);
   U64 : OAI221_X1 port map( B1 => n348, B2 => n323, C1 => n255, C2 => n322, A 
                           => n312, ZN => n221);
   U65 : OAI221_X1 port map( B1 => n344, B2 => n323, C1 => n254, C2 => n322, A 
                           => n310, ZN => n219);
   U66 : OAI221_X1 port map( B1 => n340, B2 => n323, C1 => n253, C2 => n322, A 
                           => n308, ZN => n217);
   U67 : OAI221_X1 port map( B1 => n336, B2 => n323, C1 => n252, C2 => n322, A 
                           => n306, ZN => n215);
   U68 : OAI221_X1 port map( B1 => n332, B2 => n323, C1 => n251, C2 => n322, A 
                           => n304, ZN => n213);
   U69 : OAI221_X1 port map( B1 => n327, B2 => n323, C1 => n250, C2 => n322, A 
                           => n302, ZN => n211);
   U70 : OAI221_X1 port map( B1 => n360, B2 => n323, C1 => n257, C2 => n322, A 
                           => n321, ZN => n225);
   U71 : OAI221_X1 port map( B1 => n352, B2 => n323, C1 => n256, C2 => n322, A 
                           => n314, ZN => n223);
   U73 : OAI22_X1 port map( A1 => n235, A2 => n285, B1 => n303, B2 => n284, ZN 
                           => n187);
   U74 : OAI22_X1 port map( A1 => n236, A2 => n285, B1 => n305, B2 => n284, ZN 
                           => n188);
   U76 : OAI22_X1 port map( A1 => n237, A2 => n285, B1 => n307, B2 => n284, ZN 
                           => n189);
   U78 : OAI22_X1 port map( A1 => n238, A2 => n285, B1 => n309, B2 => n284, ZN 
                           => n190);
   U79 : OAI22_X1 port map( A1 => n239, A2 => n285, B1 => n311, B2 => n284, ZN 
                           => n191);
   U80 : OAI22_X1 port map( A1 => n240, A2 => n285, B1 => n313, B2 => n284, ZN 
                           => n192);
   U81 : OAI22_X1 port map( A1 => n241, A2 => n285, B1 => n315, B2 => n284, ZN 
                           => n193);
   U82 : OAI22_X1 port map( A1 => n234, A2 => n285, B1 => n301, B2 => n284, ZN 
                           => n186);
   U83 : NAND2_X1 port map( A1 => n282, A2 => n285, ZN => n284);
   U84 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n299);
   U85 : OAI221_X1 port map( B1 => n361, B2 => n336, C1 => n260, C2 => n359, A 
                           => n335, ZN => n228);
   U86 : OAI221_X1 port map( B1 => n361, B2 => n332, C1 => n259, C2 => n359, A 
                           => n331, ZN => n227);
   U87 : OAI221_X1 port map( B1 => n361, B2 => n327, C1 => n258, C2 => n359, A 
                           => n326, ZN => n226);
   U88 : OAI221_X1 port map( B1 => n361, B2 => n340, C1 => n261, C2 => n359, A 
                           => n339, ZN => n229);
   U89 : OAI221_X1 port map( B1 => n361, B2 => n344, C1 => n262, C2 => n359, A 
                           => n343, ZN => n230);
   U90 : OAI221_X1 port map( B1 => n361, B2 => n348, C1 => n263, C2 => n359, A 
                           => n347, ZN => n231);
   U91 : OAI221_X1 port map( B1 => n361, B2 => n352, C1 => n264, C2 => n359, A 
                           => n351, ZN => n232);
   U92 : OAI221_X1 port map( B1 => n361, B2 => n360, C1 => n265, C2 => n359, A 
                           => n358, ZN => n233);
   U93 : INV_X1 port map( A => n276, ZN => n275);
   U94 : INV_X1 port map( A => ADD_RD2(0), ZN => n276);
   U95 : INV_X1 port map( A => ADD_RD2(1), ZN => n277);
   U96 : INV_X1 port map( A => n279, ZN => n278);
   U97 : INV_X1 port map( A => ADD_RD1(0), ZN => n279);
   U98 : INV_X1 port map( A => ADD_WR(0), ZN => n280);
   U99 : INV_X1 port map( A => ADD_WR(1), ZN => n281);
   U100 : INV_X1 port map( A => RESET, ZN => n282);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_1 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_1;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n81, n83, n176, n178, n180, n182, n184, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359 : 
      std_logic;

begin
   
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n186, CK => CLK, Q => n322, 
                           QN => n234);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n187, CK => CLK, Q => n327, 
                           QN => n235);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n188, CK => CLK, Q => n332, 
                           QN => n236);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n189, CK => CLK, Q => n336, 
                           QN => n237);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n190, CK => CLK, Q => n340, 
                           QN => n238);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n191, CK => CLK, Q => n344, 
                           QN => n239);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n192, CK => CLK, Q => n348, 
                           QN => n240);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n193, CK => CLK, Q => n353, 
                           QN => n241);
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => n323, 
                           QN => n242);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n195, CK => CLK, Q => n328, 
                           QN => n243);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n203, CK => CLK, Q => n326, 
                           QN => n81);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n204, CK => CLK, Q => n331, 
                           QN => n83);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n205, CK => CLK, Q => n335, 
                           QN => n176);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n206, CK => CLK, Q => n339, 
                           QN => n178);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n207, CK => CLK, Q => n343, 
                           QN => n180);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n208, CK => CLK, Q => n347, 
                           QN => n182);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => n351, 
                           QN => n184);
   U24 : AND3_X2 port map( A1 => ENABLE, A2 => n280, A3 => RD1, ZN => n357);
   U77 : AND3_X2 port map( A1 => ENABLE, A2 => n280, A3 => RD2, ZN => n320);
   U131 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n357, A3 => ADD_RD1(0), ZN
                           => n359);
   U132 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n320, A3 => ADD_RD2(0), ZN
                           => n321);
   U133 : NAND3_X1 port map( A1 => ADD_WR(0), A2 => n297, A3 => ADD_WR(1), ZN 
                           => n298);
   U134 : NAND3_X1 port map( A1 => n297, A2 => n278, A3 => ADD_WR(1), ZN => 
                           n293);
   U135 : NAND3_X1 port map( A1 => n297, A2 => n279, A3 => ADD_WR(0), ZN => 
                           n284);
   U136 : NAND3_X1 port map( A1 => n278, A2 => n279, A3 => n297, ZN => n281);
   OUT2_reg_7_inst : DFF_X1 port map( D => n211, CK => CLK, Q => OUT2(7), QN =>
                           n250);
   OUT2_reg_6_inst : DFF_X1 port map( D => n213, CK => CLK, Q => OUT2(6), QN =>
                           n251);
   OUT2_reg_5_inst : DFF_X1 port map( D => n215, CK => CLK, Q => OUT2(5), QN =>
                           n252);
   OUT2_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => OUT2(4), QN =>
                           n253);
   OUT2_reg_3_inst : DFF_X1 port map( D => n219, CK => CLK, Q => OUT2(3), QN =>
                           n254);
   OUT2_reg_2_inst : DFF_X1 port map( D => n221, CK => CLK, Q => OUT2(2), QN =>
                           n255);
   OUT2_reg_1_inst : DFF_X1 port map( D => n223, CK => CLK, Q => OUT2(1), QN =>
                           n256);
   OUT2_reg_0_inst : DFF_X1 port map( D => n225, CK => CLK, Q => OUT2(0), QN =>
                           n257);
   OUT1_reg_7_inst : DFF_X1 port map( D => n226, CK => CLK, Q => OUT1(7), QN =>
                           n258);
   OUT1_reg_6_inst : DFF_X1 port map( D => n227, CK => CLK, Q => OUT1(6), QN =>
                           n259);
   OUT1_reg_5_inst : DFF_X1 port map( D => n228, CK => CLK, Q => OUT1(5), QN =>
                           n260);
   OUT1_reg_4_inst : DFF_X1 port map( D => n229, CK => CLK, Q => OUT1(4), QN =>
                           n261);
   OUT1_reg_3_inst : DFF_X1 port map( D => n230, CK => CLK, Q => OUT1(3), QN =>
                           n262);
   OUT1_reg_2_inst : DFF_X1 port map( D => n231, CK => CLK, Q => OUT1(2), QN =>
                           n263);
   OUT1_reg_1_inst : DFF_X1 port map( D => n232, CK => CLK, Q => OUT1(1), QN =>
                           n264);
   OUT1_reg_0_inst : DFF_X1 port map( D => n233, CK => CLK, Q => OUT1(0), QN =>
                           n265);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n202, CK => CLK, Q => n9, QN 
                           => n294);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n196, CK => CLK, Q => n3, QN 
                           => n285);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n197, CK => CLK, Q => n4, QN 
                           => n286);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n198, CK => CLK, Q => n5, QN 
                           => n287);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n199, CK => CLK, Q => n6, QN 
                           => n288);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n200, CK => CLK, Q => n7, QN 
                           => n289);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n201, CK => CLK, Q => n8, QN 
                           => n292);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n210, CK => CLK, Q => n273, 
                           QN => n325);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n212, CK => CLK, Q => n272, 
                           QN => n330);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n214, CK => CLK, Q => n271, 
                           QN => n334);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n216, CK => CLK, Q => n270, 
                           QN => n338);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => n269, 
                           QN => n342);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n220, CK => CLK, Q => n268, 
                           QN => n346);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n222, CK => CLK, Q => n267, 
                           QN => n350);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n224, CK => CLK, Q => n266, 
                           QN => n358);
   U3 : AND3_X1 port map( A1 => n357, A2 => n274, A3 => ADD_RD1(0), ZN => n355)
                           ;
   U4 : AND3_X1 port map( A1 => n275, A2 => n276, A3 => n320, ZN => n317);
   U5 : AND3_X1 port map( A1 => n277, A2 => n274, A3 => n357, ZN => n354);
   U6 : NAND2_X1 port map( A1 => n280, A2 => n298, ZN => n315);
   U7 : NAND2_X1 port map( A1 => n280, A2 => n293, ZN => n296);
   U8 : NAND2_X1 port map( A1 => n280, A2 => n284, ZN => n291);
   U9 : NAND2_X1 port map( A1 => n280, A2 => n281, ZN => n283);
   U10 : AND3_X1 port map( A1 => n320, A2 => n276, A3 => ADD_RD2(0), ZN => n318
                           );
   U11 : AND3_X1 port map( A1 => n357, A2 => n277, A3 => ADD_RD1(1), ZN => n352
                           );
   U12 : AND3_X1 port map( A1 => n320, A2 => n275, A3 => ADD_RD2(1), ZN => n316
                           );
   U13 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n297);
   U14 : INV_X1 port map( A => DATAIN(0), ZN => n313);
   U15 : INV_X1 port map( A => DATAIN(1), ZN => n311);
   U16 : INV_X1 port map( A => DATAIN(2), ZN => n309);
   U17 : INV_X1 port map( A => DATAIN(3), ZN => n307);
   U18 : INV_X1 port map( A => DATAIN(4), ZN => n305);
   U19 : INV_X1 port map( A => DATAIN(5), ZN => n303);
   U20 : INV_X1 port map( A => DATAIN(6), ZN => n301);
   U21 : INV_X1 port map( A => DATAIN(7), ZN => n299);
   U22 : AOI222_X1 port map( A1 => n7, A2 => n355, B1 => n354, B2 => n348, C1 
                           => n352, C2 => n347, ZN => n349);
   U23 : AOI222_X1 port map( A1 => n6, A2 => n355, B1 => n354, B2 => n344, C1 
                           => n352, C2 => n343, ZN => n345);
   U25 : AOI222_X1 port map( A1 => n5, A2 => n355, B1 => n354, B2 => n340, C1 
                           => n352, C2 => n339, ZN => n341);
   U26 : AOI222_X1 port map( A1 => n4, A2 => n355, B1 => n354, B2 => n336, C1 
                           => n352, C2 => n335, ZN => n337);
   U27 : AOI222_X1 port map( A1 => n3, A2 => n355, B1 => n354, B2 => n332, C1 
                           => n352, C2 => n331, ZN => n333);
   U28 : AOI222_X1 port map( A1 => n355, A2 => n328, B1 => n354, B2 => n327, C1
                           => n352, C2 => n326, ZN => n329);
   U29 : AOI222_X1 port map( A1 => n355, A2 => n323, B1 => n354, B2 => n322, C1
                           => n9, C2 => n352, ZN => n324);
   U30 : AOI222_X1 port map( A1 => n8, A2 => n355, B1 => n354, B2 => n353, C1 
                           => n352, C2 => n351, ZN => n356);
   U31 : AOI222_X1 port map( A1 => n318, A2 => n8, B1 => n317, B2 => n353, C1 
                           => n316, C2 => n351, ZN => n319);
   U32 : AOI222_X1 port map( A1 => n318, A2 => n7, B1 => n317, B2 => n348, C1 
                           => n316, C2 => n347, ZN => n312);
   U33 : AOI222_X1 port map( A1 => n318, A2 => n6, B1 => n317, B2 => n344, C1 
                           => n316, C2 => n343, ZN => n310);
   U34 : AOI222_X1 port map( A1 => n318, A2 => n5, B1 => n317, B2 => n340, C1 
                           => n316, C2 => n339, ZN => n308);
   U35 : AOI222_X1 port map( A1 => n318, A2 => n4, B1 => n317, B2 => n336, C1 
                           => n316, C2 => n335, ZN => n306);
   U36 : AOI222_X1 port map( A1 => n318, A2 => n3, B1 => n317, B2 => n332, C1 
                           => n316, C2 => n331, ZN => n304);
   U37 : AOI222_X1 port map( A1 => n318, A2 => n328, B1 => n317, B2 => n327, C1
                           => n316, C2 => n326, ZN => n302);
   U38 : AOI222_X1 port map( A1 => n318, A2 => n323, B1 => n317, B2 => n322, C1
                           => n316, C2 => n9, ZN => n300);
   U39 : INV_X1 port map( A => ADD_RD1(1), ZN => n274);
   U40 : OAI22_X1 port map( A1 => n350, A2 => n315, B1 => n314, B2 => n311, ZN 
                           => n222);
   U41 : OAI22_X1 port map( A1 => n346, A2 => n315, B1 => n314, B2 => n309, ZN 
                           => n220);
   U42 : OAI22_X1 port map( A1 => n325, A2 => n315, B1 => n314, B2 => n299, ZN 
                           => n210);
   U43 : OAI22_X1 port map( A1 => n358, A2 => n315, B1 => n314, B2 => n313, ZN 
                           => n224);
   U44 : OAI22_X1 port map( A1 => n330, A2 => n315, B1 => n314, B2 => n301, ZN 
                           => n212);
   U45 : OAI22_X1 port map( A1 => n334, A2 => n315, B1 => n314, B2 => n303, ZN 
                           => n214);
   U46 : OAI22_X1 port map( A1 => n338, A2 => n315, B1 => n314, B2 => n305, ZN 
                           => n216);
   U47 : OAI22_X1 port map( A1 => n342, A2 => n315, B1 => n314, B2 => n307, ZN 
                           => n218);
   U48 : NAND2_X1 port map( A1 => n280, A2 => n315, ZN => n314);
   U49 : OAI22_X1 port map( A1 => n289, A2 => n291, B1 => n311, B2 => n290, ZN 
                           => n200);
   U50 : OAI22_X1 port map( A1 => n288, A2 => n291, B1 => n309, B2 => n290, ZN 
                           => n199);
   U51 : OAI22_X1 port map( A1 => n242, A2 => n291, B1 => n299, B2 => n290, ZN 
                           => n194);
   U52 : OAI22_X1 port map( A1 => n292, A2 => n291, B1 => n313, B2 => n290, ZN 
                           => n201);
   U53 : OAI22_X1 port map( A1 => n243, A2 => n291, B1 => n301, B2 => n290, ZN 
                           => n195);
   U54 : OAI22_X1 port map( A1 => n285, A2 => n291, B1 => n303, B2 => n290, ZN 
                           => n196);
   U55 : OAI22_X1 port map( A1 => n286, A2 => n291, B1 => n305, B2 => n290, ZN 
                           => n197);
   U56 : OAI22_X1 port map( A1 => n287, A2 => n291, B1 => n307, B2 => n290, ZN 
                           => n198);
   U57 : NAND2_X1 port map( A1 => n280, A2 => n291, ZN => n290);
   U58 : OAI22_X1 port map( A1 => n294, A2 => n296, B1 => n299, B2 => n295, ZN 
                           => n202);
   U59 : OAI22_X1 port map( A1 => n184, A2 => n296, B1 => n313, B2 => n295, ZN 
                           => n209);
   U60 : OAI22_X1 port map( A1 => n81, A2 => n296, B1 => n301, B2 => n295, ZN 
                           => n203);
   U61 : OAI22_X1 port map( A1 => n83, A2 => n296, B1 => n303, B2 => n295, ZN 
                           => n204);
   U62 : OAI22_X1 port map( A1 => n176, A2 => n296, B1 => n305, B2 => n295, ZN 
                           => n205);
   U63 : OAI22_X1 port map( A1 => n178, A2 => n296, B1 => n307, B2 => n295, ZN 
                           => n206);
   U64 : OAI22_X1 port map( A1 => n180, A2 => n296, B1 => n309, B2 => n295, ZN 
                           => n207);
   U65 : OAI22_X1 port map( A1 => n182, A2 => n296, B1 => n311, B2 => n295, ZN 
                           => n208);
   U66 : NAND2_X1 port map( A1 => n280, A2 => n296, ZN => n295);
   U67 : OAI22_X1 port map( A1 => n235, A2 => n283, B1 => n301, B2 => n282, ZN 
                           => n187);
   U68 : OAI22_X1 port map( A1 => n236, A2 => n283, B1 => n303, B2 => n282, ZN 
                           => n188);
   U69 : OAI22_X1 port map( A1 => n237, A2 => n283, B1 => n305, B2 => n282, ZN 
                           => n189);
   U70 : OAI22_X1 port map( A1 => n238, A2 => n283, B1 => n307, B2 => n282, ZN 
                           => n190);
   U71 : OAI22_X1 port map( A1 => n239, A2 => n283, B1 => n309, B2 => n282, ZN 
                           => n191);
   U72 : OAI22_X1 port map( A1 => n240, A2 => n283, B1 => n311, B2 => n282, ZN 
                           => n192);
   U73 : OAI22_X1 port map( A1 => n241, A2 => n283, B1 => n313, B2 => n282, ZN 
                           => n193);
   U74 : OAI22_X1 port map( A1 => n234, A2 => n283, B1 => n299, B2 => n282, ZN 
                           => n186);
   U75 : NAND2_X1 port map( A1 => n280, A2 => n283, ZN => n282);
   U76 : OAI221_X1 port map( B1 => n330, B2 => n321, C1 => n251, C2 => n320, A 
                           => n302, ZN => n213);
   U78 : OAI221_X1 port map( B1 => n334, B2 => n321, C1 => n252, C2 => n320, A 
                           => n304, ZN => n215);
   U79 : OAI221_X1 port map( B1 => n338, B2 => n321, C1 => n253, C2 => n320, A 
                           => n306, ZN => n217);
   U80 : OAI221_X1 port map( B1 => n342, B2 => n321, C1 => n254, C2 => n320, A 
                           => n308, ZN => n219);
   U81 : OAI221_X1 port map( B1 => n346, B2 => n321, C1 => n255, C2 => n320, A 
                           => n310, ZN => n221);
   U82 : OAI221_X1 port map( B1 => n350, B2 => n321, C1 => n256, C2 => n320, A 
                           => n312, ZN => n223);
   U83 : OAI221_X1 port map( B1 => n358, B2 => n321, C1 => n257, C2 => n320, A 
                           => n319, ZN => n225);
   U84 : OAI221_X1 port map( B1 => n325, B2 => n321, C1 => n250, C2 => n320, A 
                           => n300, ZN => n211);
   U85 : OAI221_X1 port map( B1 => n359, B2 => n325, C1 => n258, C2 => n357, A 
                           => n324, ZN => n226);
   U86 : OAI221_X1 port map( B1 => n359, B2 => n346, C1 => n263, C2 => n357, A 
                           => n345, ZN => n231);
   U87 : OAI221_X1 port map( B1 => n359, B2 => n350, C1 => n264, C2 => n357, A 
                           => n349, ZN => n232);
   U88 : OAI221_X1 port map( B1 => n359, B2 => n358, C1 => n265, C2 => n357, A 
                           => n356, ZN => n233);
   U89 : OAI221_X1 port map( B1 => n359, B2 => n342, C1 => n262, C2 => n357, A 
                           => n341, ZN => n230);
   U90 : OAI221_X1 port map( B1 => n359, B2 => n330, C1 => n259, C2 => n357, A 
                           => n329, ZN => n227);
   U91 : OAI221_X1 port map( B1 => n359, B2 => n334, C1 => n260, C2 => n357, A 
                           => n333, ZN => n228);
   U92 : OAI221_X1 port map( B1 => n359, B2 => n338, C1 => n261, C2 => n357, A 
                           => n337, ZN => n229);
   U93 : INV_X1 port map( A => ADD_RD2(0), ZN => n275);
   U94 : INV_X1 port map( A => ADD_RD2(1), ZN => n276);
   U95 : INV_X1 port map( A => ADD_RD1(0), ZN => n277);
   U96 : INV_X1 port map( A => ADD_WR(0), ZN => n278);
   U97 : INV_X1 port map( A => ADD_WR(1), ZN => n279);
   U98 : INV_X1 port map( A => RESET, ZN => n280);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity PRIORITY_ENCODER_N4_0 is

   port( INPUT : in std_logic_vector (3 downto 0);  OUTPUT : out 
         std_logic_vector (1 downto 0));

end PRIORITY_ENCODER_N4_0;

architecture SYN_STRUCTURAL of PRIORITY_ENCODER_N4_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5 : std_logic;

begin
   
   U2 : AOI211_X1 port map( C1 => n3, C2 => n4, A => INPUT(1), B => INPUT(0), 
                           ZN => OUTPUT(1));
   U3 : INV_X1 port map( A => INPUT(3), ZN => n3);
   U4 : NOR2_X1 port map( A1 => INPUT(0), A2 => n5, ZN => OUTPUT(0));
   U5 : AOI21_X1 port map( B1 => INPUT(3), B2 => n4, A => INPUT(1), ZN => n5);
   U6 : INV_X1 port map( A => INPUT(2), ZN => n4);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_7 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_7;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n81, n83, n176, n178, n180, n182, n184, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n72, n73, n74, n75, n76, n77, n78, n84, n85, n86, n87, n88, 
      n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
      n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n142, n143, 
      n144, n145, n146, n147, n148, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n160, n161, n162, n266, n267, n268, n269, n270, n271, n272, 
      n273, n274, n275, n276, n277, n278, n279, n280 : std_logic;

begin
   
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n186, CK => CLK, Q => n114, 
                           QN => n234);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n187, CK => CLK, Q => n109, 
                           QN => n235);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n188, CK => CLK, Q => n104, 
                           QN => n236);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n189, CK => CLK, Q => n100, 
                           QN => n237);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n190, CK => CLK, Q => n96, QN
                           => n238);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n191, CK => CLK, Q => n92, QN
                           => n239);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n192, CK => CLK, Q => n88, QN
                           => n240);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n193, CK => CLK, Q => n78, QN
                           => n241);
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n194, CK => CLK, Q => n113, 
                           QN => n242);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n195, CK => CLK, Q => n108, 
                           QN => n243);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n203, CK => CLK, Q => n110, 
                           QN => n81);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n204, CK => CLK, Q => n105, 
                           QN => n83);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n205, CK => CLK, Q => n101, 
                           QN => n176);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n206, CK => CLK, Q => n97, QN
                           => n178);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n207, CK => CLK, Q => n93, QN
                           => n180);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n208, CK => CLK, Q => n89, QN
                           => n182);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n209, CK => CLK, Q => n85, QN
                           => n184);
   OUT1_reg_6_inst : DFF_X1 port map( D => n227, CK => CLK, Q => OUT1(6), QN =>
                           n259);
   OUT1_reg_5_inst : DFF_X1 port map( D => n228, CK => CLK, Q => OUT1(5), QN =>
                           n260);
   OUT1_reg_4_inst : DFF_X1 port map( D => n229, CK => CLK, Q => OUT1(4), QN =>
                           n261);
   OUT1_reg_3_inst : DFF_X1 port map( D => n230, CK => CLK, Q => OUT1(3), QN =>
                           n262);
   OUT1_reg_2_inst : DFF_X1 port map( D => n231, CK => CLK, Q => OUT1(2), QN =>
                           n263);
   OUT1_reg_1_inst : DFF_X1 port map( D => n232, CK => CLK, Q => OUT1(1), QN =>
                           n264);
   OUT1_reg_0_inst : DFF_X1 port map( D => n233, CK => CLK, Q => OUT1(0), QN =>
                           n265);
   U24 : AND3_X2 port map( A1 => ENABLE, A2 => n280, A3 => RD1, ZN => n74);
   U77 : AND3_X2 port map( A1 => ENABLE, A2 => n280, A3 => RD2, ZN => n119);
   U131 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n74, A3 => ADD_RD1(0), ZN 
                           => n72);
   U132 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n119, A3 => ADD_RD2(0), ZN
                           => n118);
   U133 : NAND3_X1 port map( A1 => ADD_WR(0), A2 => n144, A3 => ADD_WR(1), ZN 
                           => n143);
   U134 : NAND3_X1 port map( A1 => n144, A2 => n278, A3 => ADD_WR(1), ZN => 
                           n148);
   U135 : NAND3_X1 port map( A1 => n144, A2 => n279, A3 => ADD_WR(0), ZN => 
                           n158);
   U136 : NAND3_X1 port map( A1 => n278, A2 => n279, A3 => n144, ZN => n162);
   OUT2_reg_7_inst : DFF_X1 port map( D => n211, CK => CLK, Q => OUT2(7), QN =>
                           n250);
   OUT2_reg_6_inst : DFF_X1 port map( D => n213, CK => CLK, Q => OUT2(6), QN =>
                           n251);
   OUT2_reg_5_inst : DFF_X1 port map( D => n215, CK => CLK, Q => OUT2(5), QN =>
                           n252);
   OUT2_reg_4_inst : DFF_X1 port map( D => n217, CK => CLK, Q => OUT2(4), QN =>
                           n253);
   OUT2_reg_3_inst : DFF_X1 port map( D => n219, CK => CLK, Q => OUT2(3), QN =>
                           n254);
   OUT2_reg_2_inst : DFF_X1 port map( D => n221, CK => CLK, Q => OUT2(2), QN =>
                           n255);
   OUT2_reg_1_inst : DFF_X1 port map( D => n223, CK => CLK, Q => OUT2(1), QN =>
                           n256);
   OUT2_reg_0_inst : DFF_X1 port map( D => n225, CK => CLK, Q => OUT2(0), QN =>
                           n257);
   OUT1_reg_7_inst : DFF_X1 port map( D => n226, CK => CLK, Q => OUT1(7), QN =>
                           n258);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n202, CK => CLK, Q => n9, QN 
                           => n147);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n196, CK => CLK, Q => n3, QN 
                           => n157);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n197, CK => CLK, Q => n4, QN 
                           => n156);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n198, CK => CLK, Q => n5, QN 
                           => n155);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n199, CK => CLK, Q => n6, QN 
                           => n154);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n200, CK => CLK, Q => n7, QN 
                           => n153);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n201, CK => CLK, Q => n8, QN 
                           => n150);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n210, CK => CLK, Q => n273, 
                           QN => n111);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n212, CK => CLK, Q => n272, 
                           QN => n106);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n214, CK => CLK, Q => n271, 
                           QN => n102);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n216, CK => CLK, Q => n270, 
                           QN => n98);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n218, CK => CLK, Q => n269, 
                           QN => n94);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n220, CK => CLK, Q => n268, 
                           QN => n90);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n222, CK => CLK, Q => n267, 
                           QN => n86);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n224, CK => CLK, Q => n266, 
                           QN => n73);
   U3 : AND3_X1 port map( A1 => n119, A2 => n276, A3 => ADD_RD2(0), ZN => n121)
                           ;
   U4 : AND3_X1 port map( A1 => n277, A2 => n274, A3 => n74, ZN => n77);
   U5 : AND3_X1 port map( A1 => n275, A2 => n276, A3 => n119, ZN => n122);
   U6 : NAND2_X1 port map( A1 => n280, A2 => n143, ZN => n124);
   U7 : NAND2_X1 port map( A1 => n280, A2 => n148, ZN => n145);
   U8 : NAND2_X1 port map( A1 => n280, A2 => n158, ZN => n151);
   U9 : NAND2_X1 port map( A1 => n280, A2 => n162, ZN => n160);
   U10 : AND3_X1 port map( A1 => n74, A2 => n274, A3 => ADD_RD1(0), ZN => n76);
   U11 : AND3_X1 port map( A1 => n74, A2 => n277, A3 => ADD_RD1(1), ZN => n84);
   U12 : AND3_X1 port map( A1 => n119, A2 => n275, A3 => ADD_RD2(1), ZN => n123
                           );
   U13 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n144);
   U14 : INV_X1 port map( A => DATAIN(0), ZN => n126);
   U15 : INV_X1 port map( A => DATAIN(1), ZN => n128);
   U16 : INV_X1 port map( A => DATAIN(2), ZN => n130);
   U17 : INV_X1 port map( A => DATAIN(3), ZN => n132);
   U18 : INV_X1 port map( A => DATAIN(4), ZN => n134);
   U19 : INV_X1 port map( A => DATAIN(5), ZN => n136);
   U20 : INV_X1 port map( A => DATAIN(6), ZN => n138);
   U21 : INV_X1 port map( A => DATAIN(7), ZN => n142);
   U22 : AOI222_X1 port map( A1 => n8, A2 => n76, B1 => n77, B2 => n78, C1 => 
                           n84, C2 => n85, ZN => n75);
   U23 : AOI222_X1 port map( A1 => n7, A2 => n76, B1 => n77, B2 => n88, C1 => 
                           n84, C2 => n89, ZN => n87);
   U25 : AOI222_X1 port map( A1 => n6, A2 => n76, B1 => n77, B2 => n92, C1 => 
                           n84, C2 => n93, ZN => n91);
   U26 : AOI222_X1 port map( A1 => n5, A2 => n76, B1 => n77, B2 => n96, C1 => 
                           n84, C2 => n97, ZN => n95);
   U27 : AOI222_X1 port map( A1 => n4, A2 => n76, B1 => n77, B2 => n100, C1 => 
                           n84, C2 => n101, ZN => n99);
   U28 : AOI222_X1 port map( A1 => n3, A2 => n76, B1 => n77, B2 => n104, C1 => 
                           n84, C2 => n105, ZN => n103);
   U29 : AOI222_X1 port map( A1 => n76, A2 => n108, B1 => n77, B2 => n109, C1 
                           => n84, C2 => n110, ZN => n107);
   U30 : AOI222_X1 port map( A1 => n76, A2 => n113, B1 => n77, B2 => n114, C1 
                           => n9, C2 => n84, ZN => n112);
   U31 : AOI222_X1 port map( A1 => n121, A2 => n7, B1 => n122, B2 => n88, C1 =>
                           n123, C2 => n89, ZN => n127);
   U32 : AOI222_X1 port map( A1 => n121, A2 => n6, B1 => n122, B2 => n92, C1 =>
                           n123, C2 => n93, ZN => n129);
   U33 : AOI222_X1 port map( A1 => n121, A2 => n5, B1 => n122, B2 => n96, C1 =>
                           n123, C2 => n97, ZN => n131);
   U34 : AOI222_X1 port map( A1 => n121, A2 => n4, B1 => n122, B2 => n100, C1 
                           => n123, C2 => n101, ZN => n133);
   U35 : AOI222_X1 port map( A1 => n121, A2 => n3, B1 => n122, B2 => n104, C1 
                           => n123, C2 => n105, ZN => n135);
   U36 : AOI222_X1 port map( A1 => n121, A2 => n108, B1 => n122, B2 => n109, C1
                           => n123, C2 => n110, ZN => n137);
   U37 : AOI222_X1 port map( A1 => n121, A2 => n113, B1 => n122, B2 => n114, C1
                           => n123, C2 => n9, ZN => n139);
   U38 : AOI222_X1 port map( A1 => n121, A2 => n8, B1 => n122, B2 => n78, C1 =>
                           n123, C2 => n85, ZN => n120);
   U39 : INV_X1 port map( A => ADD_RD1(1), ZN => n274);
   U40 : OAI22_X1 port map( A1 => n111, A2 => n124, B1 => n125, B2 => n142, ZN 
                           => n210);
   U41 : OAI22_X1 port map( A1 => n73, A2 => n124, B1 => n125, B2 => n126, ZN 
                           => n224);
   U42 : OAI22_X1 port map( A1 => n106, A2 => n124, B1 => n125, B2 => n138, ZN 
                           => n212);
   U43 : OAI22_X1 port map( A1 => n102, A2 => n124, B1 => n125, B2 => n136, ZN 
                           => n214);
   U44 : OAI22_X1 port map( A1 => n98, A2 => n124, B1 => n125, B2 => n134, ZN 
                           => n216);
   U45 : OAI22_X1 port map( A1 => n94, A2 => n124, B1 => n125, B2 => n132, ZN 
                           => n218);
   U46 : OAI22_X1 port map( A1 => n90, A2 => n124, B1 => n125, B2 => n130, ZN 
                           => n220);
   U47 : OAI22_X1 port map( A1 => n86, A2 => n124, B1 => n125, B2 => n128, ZN 
                           => n222);
   U48 : NAND2_X1 port map( A1 => n280, A2 => n124, ZN => n125);
   U49 : OAI22_X1 port map( A1 => n242, A2 => n151, B1 => n142, B2 => n152, ZN 
                           => n194);
   U50 : OAI22_X1 port map( A1 => n150, A2 => n151, B1 => n126, B2 => n152, ZN 
                           => n201);
   U51 : OAI22_X1 port map( A1 => n243, A2 => n151, B1 => n138, B2 => n152, ZN 
                           => n195);
   U52 : OAI22_X1 port map( A1 => n157, A2 => n151, B1 => n136, B2 => n152, ZN 
                           => n196);
   U53 : OAI22_X1 port map( A1 => n156, A2 => n151, B1 => n134, B2 => n152, ZN 
                           => n197);
   U54 : OAI22_X1 port map( A1 => n155, A2 => n151, B1 => n132, B2 => n152, ZN 
                           => n198);
   U55 : OAI22_X1 port map( A1 => n154, A2 => n151, B1 => n130, B2 => n152, ZN 
                           => n199);
   U56 : OAI22_X1 port map( A1 => n153, A2 => n151, B1 => n128, B2 => n152, ZN 
                           => n200);
   U57 : NAND2_X1 port map( A1 => n280, A2 => n151, ZN => n152);
   U58 : OAI22_X1 port map( A1 => n182, A2 => n145, B1 => n128, B2 => n146, ZN 
                           => n208);
   U59 : OAI22_X1 port map( A1 => n180, A2 => n145, B1 => n130, B2 => n146, ZN 
                           => n207);
   U60 : OAI22_X1 port map( A1 => n147, A2 => n145, B1 => n142, B2 => n146, ZN 
                           => n202);
   U61 : OAI22_X1 port map( A1 => n184, A2 => n145, B1 => n126, B2 => n146, ZN 
                           => n209);
   U62 : OAI22_X1 port map( A1 => n81, A2 => n145, B1 => n138, B2 => n146, ZN 
                           => n203);
   U63 : OAI22_X1 port map( A1 => n83, A2 => n145, B1 => n136, B2 => n146, ZN 
                           => n204);
   U64 : OAI22_X1 port map( A1 => n176, A2 => n145, B1 => n134, B2 => n146, ZN 
                           => n205);
   U65 : OAI22_X1 port map( A1 => n178, A2 => n145, B1 => n132, B2 => n146, ZN 
                           => n206);
   U66 : NAND2_X1 port map( A1 => n280, A2 => n145, ZN => n146);
   U67 : OAI22_X1 port map( A1 => n235, A2 => n160, B1 => n138, B2 => n161, ZN 
                           => n187);
   U68 : OAI22_X1 port map( A1 => n236, A2 => n160, B1 => n136, B2 => n161, ZN 
                           => n188);
   U69 : OAI22_X1 port map( A1 => n237, A2 => n160, B1 => n134, B2 => n161, ZN 
                           => n189);
   U70 : OAI22_X1 port map( A1 => n238, A2 => n160, B1 => n132, B2 => n161, ZN 
                           => n190);
   U71 : OAI22_X1 port map( A1 => n239, A2 => n160, B1 => n130, B2 => n161, ZN 
                           => n191);
   U72 : OAI22_X1 port map( A1 => n240, A2 => n160, B1 => n128, B2 => n161, ZN 
                           => n192);
   U73 : OAI22_X1 port map( A1 => n241, A2 => n160, B1 => n126, B2 => n161, ZN 
                           => n193);
   U74 : OAI22_X1 port map( A1 => n234, A2 => n160, B1 => n142, B2 => n161, ZN 
                           => n186);
   U75 : NAND2_X1 port map( A1 => n280, A2 => n160, ZN => n161);
   U76 : OAI221_X1 port map( B1 => n102, B2 => n118, C1 => n252, C2 => n119, A 
                           => n135, ZN => n215);
   U78 : OAI221_X1 port map( B1 => n106, B2 => n118, C1 => n251, C2 => n119, A 
                           => n137, ZN => n213);
   U79 : OAI221_X1 port map( B1 => n111, B2 => n118, C1 => n250, C2 => n119, A 
                           => n139, ZN => n211);
   U80 : OAI221_X1 port map( B1 => n98, B2 => n118, C1 => n253, C2 => n119, A 
                           => n133, ZN => n217);
   U81 : OAI221_X1 port map( B1 => n94, B2 => n118, C1 => n254, C2 => n119, A 
                           => n131, ZN => n219);
   U82 : OAI221_X1 port map( B1 => n90, B2 => n118, C1 => n255, C2 => n119, A 
                           => n129, ZN => n221);
   U83 : OAI221_X1 port map( B1 => n86, B2 => n118, C1 => n256, C2 => n119, A 
                           => n127, ZN => n223);
   U84 : OAI221_X1 port map( B1 => n73, B2 => n118, C1 => n257, C2 => n119, A 
                           => n120, ZN => n225);
   U85 : OAI221_X1 port map( B1 => n72, B2 => n106, C1 => n259, C2 => n74, A =>
                           n107, ZN => n227);
   U86 : OAI221_X1 port map( B1 => n72, B2 => n90, C1 => n263, C2 => n74, A => 
                           n91, ZN => n231);
   U87 : OAI221_X1 port map( B1 => n72, B2 => n86, C1 => n264, C2 => n74, A => 
                           n87, ZN => n232);
   U88 : OAI221_X1 port map( B1 => n72, B2 => n73, C1 => n265, C2 => n74, A => 
                           n75, ZN => n233);
   U89 : OAI221_X1 port map( B1 => n72, B2 => n111, C1 => n258, C2 => n74, A =>
                           n112, ZN => n226);
   U90 : OAI221_X1 port map( B1 => n72, B2 => n102, C1 => n260, C2 => n74, A =>
                           n103, ZN => n228);
   U91 : OAI221_X1 port map( B1 => n72, B2 => n98, C1 => n261, C2 => n74, A => 
                           n99, ZN => n229);
   U92 : OAI221_X1 port map( B1 => n72, B2 => n94, C1 => n262, C2 => n74, A => 
                           n95, ZN => n230);
   U93 : INV_X1 port map( A => ADD_RD2(0), ZN => n275);
   U94 : INV_X1 port map( A => ADD_RD2(1), ZN => n276);
   U95 : INV_X1 port map( A => ADD_RD1(0), ZN => n277);
   U96 : INV_X1 port map( A => ADD_WR(0), ZN => n278);
   U97 : INV_X1 port map( A => ADD_WR(1), ZN => n279);
   U98 : INV_X1 port map( A => RESET, ZN => n280);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size4_0 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size4_0;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size4_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
      n98, n99, n107, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
      n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, 
      n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, 
      n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, 
      n161, n162, n163, n165, n167, n169, n171, n173, n175, n177, n2, n3, n4, 
      n5, n6, n7, n8, n9, n17, n18, n19, n20, n21, n22, n23, n24, n72, n73, n74
      , n75, n76, n77, n78, n79, n80, n81, n82, n83, n180, n181, n182, n183, 
      n184, n185, n187, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, 
      n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, 
      n235, n236, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, 
      n249, n250, n251, n100, n101, n102, n103, n104, n105, n106, n108, n109, 
      n110, n111, n112, n113, n114, n115, n164 : std_logic;

begin
   
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n155, CK => CLK, Q => n212, 
                           QN => n107);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n146, CK => CLK, Q => n217, 
                           QN => n177);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n145, CK => CLK, Q => n220, 
                           QN => n175);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n144, CK => CLK, Q => n223, 
                           QN => n173);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n143, CK => CLK, Q => n226, 
                           QN => n171);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n142, CK => CLK, Q => n229, 
                           QN => n169);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n141, CK => CLK, Q => n232, 
                           QN => n167);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n140, CK => CLK, Q => n236, 
                           QN => n165);
   OUT2_reg_7_inst : DFF_X1 port map( D => n138, CK => CLK, Q => OUT2(7), QN =>
                           n99);
   OUT2_reg_6_inst : DFF_X1 port map( D => n136, CK => CLK, Q => OUT2(6), QN =>
                           n98);
   OUT2_reg_5_inst : DFF_X1 port map( D => n134, CK => CLK, Q => OUT2(5), QN =>
                           n97);
   OUT2_reg_4_inst : DFF_X1 port map( D => n132, CK => CLK, Q => OUT2(4), QN =>
                           n96);
   OUT2_reg_3_inst : DFF_X1 port map( D => n130, CK => CLK, Q => OUT2(3), QN =>
                           n95);
   OUT2_reg_2_inst : DFF_X1 port map( D => n128, CK => CLK, Q => OUT2(2), QN =>
                           n94);
   OUT2_reg_1_inst : DFF_X1 port map( D => n126, CK => CLK, Q => OUT2(1), QN =>
                           n93);
   OUT2_reg_0_inst : DFF_X1 port map( D => n124, CK => CLK, Q => OUT2(0), QN =>
                           n92);
   OUT1_reg_7_inst : DFF_X1 port map( D => n123, CK => CLK, Q => OUT1(7), QN =>
                           n91);
   OUT1_reg_6_inst : DFF_X1 port map( D => n122, CK => CLK, Q => OUT1(6), QN =>
                           n90);
   OUT1_reg_5_inst : DFF_X1 port map( D => n121, CK => CLK, Q => OUT1(5), QN =>
                           n89);
   OUT1_reg_4_inst : DFF_X1 port map( D => n120, CK => CLK, Q => OUT1(4), QN =>
                           n88);
   OUT1_reg_3_inst : DFF_X1 port map( D => n119, CK => CLK, Q => OUT1(3), QN =>
                           n87);
   OUT1_reg_2_inst : DFF_X1 port map( D => n118, CK => CLK, Q => OUT1(2), QN =>
                           n86);
   OUT1_reg_1_inst : DFF_X1 port map( D => n117, CK => CLK, Q => OUT1(1), QN =>
                           n85);
   U87 : AND3_X2 port map( A1 => n111, A2 => n112, A3 => n209, ZN => n213);
   U89 : AND3_X2 port map( A1 => n209, A2 => n112, A3 => n110, ZN => n211);
   U91 : AND3_X2 port map( A1 => ENABLE, A2 => n164, A3 => RD2, ZN => n209);
   U124 : AND3_X2 port map( A1 => n113, A2 => n109, A3 => n240, ZN => n243);
   U126 : AND3_X2 port map( A1 => n240, A2 => n109, A3 => ADD_RD1(0), ZN => 
                           n242);
   U128 : AND3_X2 port map( A1 => ENABLE, A2 => n164, A3 => RD1, ZN => n240);
   U131 : NAND3_X1 port map( A1 => n114, A2 => n115, A3 => n190, ZN => n187);
   U132 : NAND3_X1 port map( A1 => n190, A2 => n115, A3 => ADD_WR(0), ZN => 
                           n200);
   U133 : NAND3_X1 port map( A1 => n190, A2 => n114, A3 => ADD_WR(1), ZN => 
                           n204);
   U134 : NAND3_X1 port map( A1 => ADD_WR(0), A2 => n190, A3 => ADD_WR(1), ZN 
                           => n234);
   U135 : NAND3_X1 port map( A1 => ADD_RD2(1), A2 => n209, A3 => n110, ZN => 
                           n208);
   U136 : NAND3_X1 port map( A1 => ADD_RD1(1), A2 => n240, A3 => ADD_RD1(0), ZN
                           => n239);
   OUT1_reg_0_inst : DFF_X1 port map( D => n116, CK => CLK, Q => OUT1(0), QN =>
                           n84);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n147, CK => CLK, Q => n9, QN 
                           => n202);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n154, CK => CLK, Q => n2, QN 
                           => n193);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n153, CK => CLK, Q => n3, QN 
                           => n194);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n152, CK => CLK, Q => n4, QN 
                           => n195);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n151, CK => CLK, Q => n5, QN 
                           => n196);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n150, CK => CLK, Q => n6, QN 
                           => n197);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n149, CK => CLK, Q => n7, QN 
                           => n198);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n148, CK => CLK, Q => n8, QN 
                           => n199);
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n163, CK => CLK, Q => n17, QN
                           => n73);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n162, CK => CLK, Q => n18, QN
                           => n76);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n161, CK => CLK, Q => n19, QN
                           => n78);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n160, CK => CLK, Q => n20, QN
                           => n80);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n159, CK => CLK, Q => n21, QN
                           => n82);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n158, CK => CLK, Q => n22, QN
                           => n180);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n157, CK => CLK, Q => n23, QN
                           => n182);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n156, CK => CLK, Q => n24, QN
                           => n184);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n139, CK => CLK, Q => n108, 
                           QN => n206);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n137, CK => CLK, Q => n106, 
                           QN => n215);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n135, CK => CLK, Q => n105, 
                           QN => n218);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n133, CK => CLK, Q => n104, 
                           QN => n221);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n131, CK => CLK, Q => n103, 
                           QN => n224);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n129, CK => CLK, Q => n102, 
                           QN => n227);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n127, CK => CLK, Q => n101, 
                           QN => n230);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n125, CK => CLK, Q => n100, 
                           QN => n233);
   U3 : NAND2_X2 port map( A1 => n164, A2 => n234, ZN => n205);
   U4 : NAND2_X1 port map( A1 => n164, A2 => n187, ZN => n72);
   U5 : NAND2_X1 port map( A1 => n164, A2 => n200, ZN => n191);
   U6 : NAND2_X1 port map( A1 => n164, A2 => n204, ZN => n201);
   U7 : AND3_X2 port map( A1 => n240, A2 => n113, A3 => ADD_RD1(1), ZN => n244)
                           ;
   U8 : AND3_X2 port map( A1 => n209, A2 => n111, A3 => ADD_RD2(1), ZN => n214)
                           ;
   U9 : INV_X1 port map( A => DATAIN(0), ZN => n185);
   U10 : INV_X1 port map( A => DATAIN(1), ZN => n183);
   U11 : INV_X1 port map( A => DATAIN(2), ZN => n181);
   U12 : INV_X1 port map( A => DATAIN(3), ZN => n83);
   U13 : INV_X1 port map( A => DATAIN(4), ZN => n81);
   U14 : INV_X1 port map( A => DATAIN(5), ZN => n79);
   U15 : INV_X1 port map( A => DATAIN(6), ZN => n77);
   U16 : INV_X1 port map( A => DATAIN(7), ZN => n75);
   U17 : AND2_X1 port map( A1 => WR, A2 => ENABLE, ZN => n190);
   U18 : AOI222_X1 port map( A1 => n211, A2 => n7, B1 => n213, B2 => n23, C1 =>
                           n214, C2 => n232, ZN => n231);
   U19 : AOI222_X1 port map( A1 => n211, A2 => n6, B1 => n213, B2 => n22, C1 =>
                           n214, C2 => n229, ZN => n228);
   U20 : AOI222_X1 port map( A1 => n211, A2 => n5, B1 => n213, B2 => n21, C1 =>
                           n214, C2 => n226, ZN => n225);
   U21 : AOI222_X1 port map( A1 => n211, A2 => n4, B1 => n213, B2 => n20, C1 =>
                           n214, C2 => n223, ZN => n222);
   U22 : AOI222_X1 port map( A1 => n211, A2 => n3, B1 => n213, B2 => n19, C1 =>
                           n214, C2 => n220, ZN => n219);
   U23 : AOI222_X1 port map( A1 => n211, A2 => n2, B1 => n213, B2 => n18, C1 =>
                           n214, C2 => n217, ZN => n216);
   U24 : AOI222_X1 port map( A1 => n242, A2 => n6, B1 => n243, B2 => n22, C1 =>
                           n244, C2 => n229, ZN => n249);
   U25 : AOI222_X1 port map( A1 => n242, A2 => n5, B1 => n243, B2 => n21, C1 =>
                           n244, C2 => n226, ZN => n248);
   U26 : AOI222_X1 port map( A1 => n242, A2 => n4, B1 => n243, B2 => n20, C1 =>
                           n244, C2 => n223, ZN => n247);
   U27 : AOI222_X1 port map( A1 => n242, A2 => n3, B1 => n243, B2 => n19, C1 =>
                           n244, C2 => n220, ZN => n246);
   U28 : AOI222_X1 port map( A1 => n242, A2 => n2, B1 => n243, B2 => n18, C1 =>
                           n244, C2 => n217, ZN => n245);
   U29 : AOI222_X1 port map( A1 => n242, A2 => n212, B1 => n243, B2 => n17, C1 
                           => n244, C2 => n9, ZN => n241);
   U30 : AOI222_X1 port map( A1 => n242, A2 => n8, B1 => n243, B2 => n24, C1 =>
                           n244, C2 => n236, ZN => n251);
   U31 : INV_X1 port map( A => ADD_RD1(1), ZN => n109);
   U32 : AOI222_X1 port map( A1 => n242, A2 => n7, B1 => n243, B2 => n23, C1 =>
                           n244, C2 => n232, ZN => n250);
   U33 : OAI221_X1 port map( B1 => n208, B2 => n233, C1 => n92, C2 => n209, A 
                           => n235, ZN => n124);
   U34 : OAI221_X1 port map( B1 => n206, B2 => n208, C1 => n99, C2 => n209, A 
                           => n210, ZN => n138);
   U35 : AOI222_X1 port map( A1 => n211, A2 => n212, B1 => n213, B2 => n17, C1 
                           => n214, C2 => n9, ZN => n210);
   U36 : AOI222_X1 port map( A1 => n211, A2 => n8, B1 => n213, B2 => n24, C1 =>
                           n214, C2 => n236, ZN => n235);
   U37 : OAI221_X1 port map( B1 => n230, B2 => n239, C1 => n85, C2 => n240, A 
                           => n250, ZN => n117);
   U38 : OAI221_X1 port map( B1 => n221, B2 => n239, C1 => n88, C2 => n240, A 
                           => n247, ZN => n120);
   U39 : OAI221_X1 port map( B1 => n206, B2 => n239, C1 => n91, C2 => n240, A 
                           => n241, ZN => n123);
   U40 : OAI221_X1 port map( B1 => n218, B2 => n239, C1 => n89, C2 => n240, A 
                           => n246, ZN => n121);
   U41 : OAI221_X1 port map( B1 => n215, B2 => n239, C1 => n90, C2 => n240, A 
                           => n245, ZN => n122);
   U42 : OAI221_X1 port map( B1 => n227, B2 => n239, C1 => n86, C2 => n240, A 
                           => n249, ZN => n118);
   U43 : OAI221_X1 port map( B1 => n224, B2 => n239, C1 => n87, C2 => n240, A 
                           => n248, ZN => n119);
   U44 : OAI221_X1 port map( B1 => n233, B2 => n239, C1 => n84, C2 => n240, A 
                           => n251, ZN => n116);
   U45 : OAI22_X1 port map( A1 => n72, A2 => n182, B1 => n74, B2 => n183, ZN =>
                           n157);
   U46 : OAI22_X1 port map( A1 => n72, A2 => n180, B1 => n74, B2 => n181, ZN =>
                           n158);
   U47 : OAI22_X1 port map( A1 => n72, A2 => n82, B1 => n74, B2 => n83, ZN => 
                           n159);
   U48 : OAI22_X1 port map( A1 => n72, A2 => n80, B1 => n74, B2 => n81, ZN => 
                           n160);
   U49 : OAI22_X1 port map( A1 => n72, A2 => n78, B1 => n74, B2 => n79, ZN => 
                           n161);
   U50 : OAI22_X1 port map( A1 => n72, A2 => n76, B1 => n74, B2 => n77, ZN => 
                           n162);
   U51 : OAI22_X1 port map( A1 => n72, A2 => n73, B1 => n74, B2 => n75, ZN => 
                           n163);
   U52 : OAI22_X1 port map( A1 => n72, A2 => n184, B1 => n74, B2 => n185, ZN =>
                           n156);
   U53 : NAND2_X1 port map( A1 => n164, A2 => n72, ZN => n74);
   U54 : OAI22_X1 port map( A1 => n191, A2 => n198, B1 => n183, B2 => n192, ZN 
                           => n149);
   U55 : OAI22_X1 port map( A1 => n191, A2 => n197, B1 => n181, B2 => n192, ZN 
                           => n150);
   U56 : OAI22_X1 port map( A1 => n191, A2 => n196, B1 => n83, B2 => n192, ZN 
                           => n151);
   U57 : OAI22_X1 port map( A1 => n191, A2 => n195, B1 => n81, B2 => n192, ZN 
                           => n152);
   U58 : OAI22_X1 port map( A1 => n191, A2 => n194, B1 => n79, B2 => n192, ZN 
                           => n153);
   U59 : OAI22_X1 port map( A1 => n191, A2 => n193, B1 => n77, B2 => n192, ZN 
                           => n154);
   U60 : OAI22_X1 port map( A1 => n191, A2 => n199, B1 => n185, B2 => n192, ZN 
                           => n148);
   U61 : OAI22_X1 port map( A1 => n107, A2 => n191, B1 => n75, B2 => n192, ZN 
                           => n155);
   U62 : NAND2_X1 port map( A1 => n164, A2 => n191, ZN => n192);
   U63 : OAI22_X1 port map( A1 => n205, A2 => n215, B1 => n77, B2 => n207, ZN 
                           => n137);
   U64 : OAI22_X1 port map( A1 => n205, A2 => n218, B1 => n79, B2 => n207, ZN 
                           => n135);
   U65 : OAI22_X1 port map( A1 => n205, A2 => n233, B1 => n185, B2 => n207, ZN 
                           => n125);
   U66 : OAI22_X1 port map( A1 => n205, A2 => n206, B1 => n75, B2 => n207, ZN 
                           => n139);
   U67 : OAI22_X1 port map( A1 => n205, A2 => n230, B1 => n183, B2 => n207, ZN 
                           => n127);
   U68 : OAI22_X1 port map( A1 => n205, A2 => n227, B1 => n181, B2 => n207, ZN 
                           => n129);
   U69 : OAI22_X1 port map( A1 => n205, A2 => n224, B1 => n83, B2 => n207, ZN 
                           => n131);
   U70 : OAI22_X1 port map( A1 => n205, A2 => n221, B1 => n81, B2 => n207, ZN 
                           => n133);
   U71 : NAND2_X1 port map( A1 => n164, A2 => n205, ZN => n207);
   U72 : OAI22_X1 port map( A1 => n201, A2 => n202, B1 => n75, B2 => n203, ZN 
                           => n147);
   U73 : OAI22_X1 port map( A1 => n175, A2 => n201, B1 => n79, B2 => n203, ZN 
                           => n145);
   U74 : OAI22_X1 port map( A1 => n165, A2 => n201, B1 => n185, B2 => n203, ZN 
                           => n140);
   U75 : OAI22_X1 port map( A1 => n173, A2 => n201, B1 => n81, B2 => n203, ZN 
                           => n144);
   U76 : OAI22_X1 port map( A1 => n167, A2 => n201, B1 => n183, B2 => n203, ZN 
                           => n141);
   U77 : OAI22_X1 port map( A1 => n177, A2 => n201, B1 => n77, B2 => n203, ZN 
                           => n146);
   U78 : OAI22_X1 port map( A1 => n171, A2 => n201, B1 => n83, B2 => n203, ZN 
                           => n143);
   U79 : OAI22_X1 port map( A1 => n169, A2 => n201, B1 => n181, B2 => n203, ZN 
                           => n142);
   U80 : NAND2_X1 port map( A1 => n164, A2 => n201, ZN => n203);
   U81 : OAI221_X1 port map( B1 => n208, B2 => n218, C1 => n97, C2 => n209, A 
                           => n219, ZN => n134);
   U82 : OAI221_X1 port map( B1 => n208, B2 => n221, C1 => n96, C2 => n209, A 
                           => n222, ZN => n132);
   U83 : OAI221_X1 port map( B1 => n208, B2 => n224, C1 => n95, C2 => n209, A 
                           => n225, ZN => n130);
   U84 : OAI221_X1 port map( B1 => n208, B2 => n227, C1 => n94, C2 => n209, A 
                           => n228, ZN => n128);
   U85 : OAI221_X1 port map( B1 => n208, B2 => n230, C1 => n93, C2 => n209, A 
                           => n231, ZN => n126);
   U86 : OAI221_X1 port map( B1 => n208, B2 => n215, C1 => n98, C2 => n209, A 
                           => n216, ZN => n136);
   U88 : INV_X1 port map( A => n111, ZN => n110);
   U90 : INV_X1 port map( A => ADD_RD2(0), ZN => n111);
   U92 : INV_X1 port map( A => ADD_RD2(1), ZN => n112);
   U93 : INV_X1 port map( A => ADD_RD1(0), ZN => n113);
   U94 : INV_X1 port map( A => ADD_WR(0), ZN => n114);
   U95 : INV_X1 port map( A => ADD_WR(1), ZN => n115);
   U96 : INV_X1 port map( A => RESET, ZN => n164);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity register_file_reg_size8_file_size20 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (4 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_reg_size8_file_size20;

architecture SYN_BEHAVIORAL of register_file_reg_size8_file_size20 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal OUT1_7_port, OUT1_6_port, OUT1_5_port, OUT1_4_port, OUT1_3_port, 
      OUT1_2_port, OUT1_1_port, OUT1_0_port, OUT2_7_port, OUT2_6_port, 
      OUT2_5_port, OUT2_4_port, OUT2_3_port, OUT2_2_port, OUT2_1_port, 
      OUT2_0_port, n424, n426, n428, n430, n432, n434, n436, n438, n439, n440, 
      n441, n442, n443, n444, n446, n447, n448, n449, n450, n451, n452, n453, 
      n454, n462, n463, n464, n465, n466, n467, n468, n469, n470, n477, n478, 
      n479, n480, n481, n482, n483, n484, n485, n486, n493, n494, n495, n496, 
      n497, n498, n499, n500, n501, n502, n511, n512, n513, n514, n515, n516, 
      n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, 
      n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, 
      n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, 
      n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, 
      n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, 
      n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, 
      n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, 
      n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, 
      n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, 
      n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, 
      n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, 
      n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, 
      n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, 
      n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, 
      n685, n686, n688, n691, n692, n693, n694, n695, n696, n698, n701, n702, 
      n703, n704, n705, n706, n707, n708, n710, n711, n712, n713, n714, n715, 
      n716, n717, n718, n720, n721, n722, n723, n724, n725, n726, n727, n728, 
      n730, n731, n732, n733, n734, n735, n736, n737, n738, n740, n741, n743, 
      n745, n746, n747, n748, n750, n751, n753, n754, n755, n756, n757, n758, 
      n760, n761, n763, n764, n765, n766, n1, n2, n3, n4, n5, n6, n7, n10, n11,
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n27
      , n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, 
      n42, n43, n45, n46, n47, n50, n55, n60, n65, n70, n74, n79, n89, n90, n91
      , n92, n93, n94, n95, n96, n97, n98, n99, n310, n311, n312, n313, n314, 
      n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, 
      n327, n328, n329, n331, n332, n333, n334, n335, n336, n337, n338, n339, 
      n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, 
      n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, 
      n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, 
      n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, 
      n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, 
      n401, n402, n403, n404, n405, n406, n407, n408, n411, n412, n413, n414, 
      n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, 
      n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, 
      n791, n792, n794, n795, n796, n797, n798, n799, n801, n802, n803, n804, 
      n805, n806, n807, n808, n809, n810, n811, n812, n813, n815, n816, n817, 
      n818, n819, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, 
      n831, n832, n833, n835, n836, n837, n838, n839, n841, n842, n843, n844, 
      n845, n846, n847, n848, n849, n850, n851, n852, n853, n854, n856, n857, 
      n858, n859, n860, n862, n863, n864, n865, n866, n867, n868, n869, n870, 
      n871, n872, n873, n874, n875, n877, n878, n879, n880, n881, n883, n884, 
      n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, 
      n898, n899, n900, n901, n902, n904, n905, n906, n907, n908, n909, n910, 
      n911, n912, n913, n914, n915, n916, n918, n919, n920, n921, n922, n924, 
      n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, 
      n937, n938, n939, n940, n942, n943, n944, n945, n946, n947, n948, n950, 
      n951, n953, n954, n955, n956, n958, n959, n960, n961, n962, n963, n964, 
      n965, n966, n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, 
      n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, 
      n990, n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
      n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, 
      n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, 
      n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, 
      n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, 
      n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, 
      n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, 
      n1062, n1063, n1064, n1065, n793, n800, n814, n820, n834, n840, n855, 
      n861, n876, n882, n897, n903, n917, n923, n941, n949, n952, n957, n967, 
      n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, 
      n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, 
      n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, 
      n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, 
      n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, 
      n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, 
      n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, 
      n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, 
      n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, 
      n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, 
      n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, 
      n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, 
      n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, 
      n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, 
      n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, 
      n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224 : std_logic
      ;

begin
   OUT1 <= ( OUT1_7_port, OUT1_6_port, OUT1_5_port, OUT1_4_port, OUT1_3_port, 
      OUT1_2_port, OUT1_1_port, OUT1_0_port );
   OUT2 <= ( OUT2_7_port, OUT2_6_port, OUT2_5_port, OUT2_4_port, OUT2_3_port, 
      OUT2_2_port, OUT2_1_port, OUT2_0_port );
   
   REGISTERS_reg_1_7_inst : DFF_X1 port map( D => n678, CK => CLK, Q => n774, 
                           QN => n757);
   REGISTERS_reg_1_6_inst : DFF_X1 port map( D => n677, CK => CLK, Q => n805, 
                           QN => n747);
   REGISTERS_reg_1_5_inst : DFF_X1 port map( D => n676, CK => CLK, Q => n825, 
                           QN => n737);
   REGISTERS_reg_1_4_inst : DFF_X1 port map( D => n675, CK => CLK, Q => n845, 
                           QN => n727);
   REGISTERS_reg_1_3_inst : DFF_X1 port map( D => n674, CK => CLK, Q => n866, 
                           QN => n717);
   REGISTERS_reg_1_2_inst : DFF_X1 port map( D => n673, CK => CLK, Q => n887, 
                           QN => n707);
   REGISTERS_reg_3_7_inst : DFF_X1 port map( D => n662, CK => CLK, Q => n33, QN
                           => n502);
   REGISTERS_reg_3_6_inst : DFF_X1 port map( D => n661, CK => CLK, Q => n34, QN
                           => n501);
   REGISTERS_reg_3_5_inst : DFF_X1 port map( D => n660, CK => CLK, Q => n35, QN
                           => n500);
   REGISTERS_reg_3_4_inst : DFF_X1 port map( D => n659, CK => CLK, Q => n36, QN
                           => n499);
   REGISTERS_reg_3_3_inst : DFF_X1 port map( D => n658, CK => CLK, Q => n37, QN
                           => n498);
   REGISTERS_reg_3_2_inst : DFF_X1 port map( D => n657, CK => CLK, Q => n38, QN
                           => n497);
   REGISTERS_reg_3_1_inst : DFF_X1 port map( D => n656, CK => CLK, Q => n39, QN
                           => n496);
   REGISTERS_reg_3_0_inst : DFF_X1 port map( D => n655, CK => CLK, Q => n40, QN
                           => n495);
   REGISTERS_reg_4_7_inst : DFF_X1 port map( D => n654, CK => CLK, Q => n42, QN
                           => n494);
   REGISTERS_reg_4_6_inst : DFF_X1 port map( D => n653, CK => CLK, Q => n47, QN
                           => n493);
   REGISTERS_reg_5_7_inst : DFF_X1 port map( D => n646, CK => CLK, Q => n789, 
                           QN => n486);
   REGISTERS_reg_5_6_inst : DFF_X1 port map( D => n645, CK => CLK, Q => n811, 
                           QN => n485);
   REGISTERS_reg_5_5_inst : DFF_X1 port map( D => n644, CK => CLK, Q => n831, 
                           QN => n484);
   REGISTERS_reg_5_4_inst : DFF_X1 port map( D => n643, CK => CLK, Q => n851, 
                           QN => n483);
   REGISTERS_reg_5_3_inst : DFF_X1 port map( D => n642, CK => CLK, Q => n872, 
                           QN => n482);
   REGISTERS_reg_5_2_inst : DFF_X1 port map( D => n641, CK => CLK, Q => n893, 
                           QN => n481);
   REGISTERS_reg_5_1_inst : DFF_X1 port map( D => n640, CK => CLK, Q => n913, 
                           QN => n480);
   REGISTERS_reg_5_0_inst : DFF_X1 port map( D => n639, CK => CLK, Q => n936, 
                           QN => n479);
   REGISTERS_reg_6_7_inst : DFF_X1 port map( D => n638, CK => CLK, Q => n2, QN 
                           => n765);
   REGISTERS_reg_6_6_inst : DFF_X1 port map( D => n637, CK => CLK, Q => n6, QN 
                           => n755);
   REGISTERS_reg_6_5_inst : DFF_X1 port map( D => n636, CK => CLK, Q => n10, QN
                           => n745);
   REGISTERS_reg_6_4_inst : DFF_X1 port map( D => n635, CK => CLK, Q => n14, QN
                           => n735);
   REGISTERS_reg_6_3_inst : DFF_X1 port map( D => n634, CK => CLK, Q => n18, QN
                           => n725);
   REGISTERS_reg_6_2_inst : DFF_X1 port map( D => n633, CK => CLK, Q => n22, QN
                           => n715);
   REGISTERS_reg_6_0_inst : DFF_X1 port map( D => n631, CK => CLK, Q => n30, QN
                           => n695);
   REGISTERS_reg_7_4_inst : DFF_X1 port map( D => n627, CK => CLK, Q => n852, 
                           QN => n732);
   REGISTERS_reg_7_3_inst : DFF_X1 port map( D => n626, CK => CLK, Q => n873, 
                           QN => n722);
   REGISTERS_reg_7_2_inst : DFF_X1 port map( D => n625, CK => CLK, Q => n894, 
                           QN => n712);
   REGISTERS_reg_7_1_inst : DFF_X1 port map( D => n624, CK => CLK, Q => n914, 
                           QN => n702);
   REGISTERS_reg_7_0_inst : DFF_X1 port map( D => n623, CK => CLK, Q => n937, 
                           QN => n692);
   REGISTERS_reg_8_7_inst : DFF_X1 port map( D => n622, CK => CLK, Q => n41, QN
                           => n478);
   REGISTERS_reg_8_6_inst : DFF_X1 port map( D => n621, CK => CLK, Q => n46, QN
                           => n477);
   REGISTERS_reg_9_7_inst : DFF_X1 port map( D => n614, CK => CLK, Q => n792, 
                           QN => n470);
   REGISTERS_reg_9_6_inst : DFF_X1 port map( D => n613, CK => CLK, Q => n813, 
                           QN => n469);
   REGISTERS_reg_9_5_inst : DFF_X1 port map( D => n612, CK => CLK, Q => n833, 
                           QN => n468);
   REGISTERS_reg_9_4_inst : DFF_X1 port map( D => n611, CK => CLK, Q => n854, 
                           QN => n467);
   REGISTERS_reg_9_3_inst : DFF_X1 port map( D => n610, CK => CLK, Q => n875, 
                           QN => n466);
   REGISTERS_reg_9_2_inst : DFF_X1 port map( D => n609, CK => CLK, Q => n896, 
                           QN => n465);
   REGISTERS_reg_9_1_inst : DFF_X1 port map( D => n608, CK => CLK, Q => n916, 
                           QN => n464);
   REGISTERS_reg_9_0_inst : DFF_X1 port map( D => n607, CK => CLK, Q => n940, 
                           QN => n463);
   REGISTERS_reg_10_7_inst : DFF_X1 port map( D => n606, CK => CLK, Q => n1, QN
                           => n764);
   REGISTERS_reg_10_6_inst : DFF_X1 port map( D => n605, CK => CLK, Q => n5, QN
                           => n754);
   REGISTERS_reg_10_4_inst : DFF_X1 port map( D => n603, CK => CLK, Q => n13, 
                           QN => n734);
   REGISTERS_reg_10_3_inst : DFF_X1 port map( D => n602, CK => CLK, Q => n17, 
                           QN => n724);
   REGISTERS_reg_10_2_inst : DFF_X1 port map( D => n601, CK => CLK, Q => n21, 
                           QN => n714);
   REGISTERS_reg_10_1_inst : DFF_X1 port map( D => n600, CK => CLK, Q => n25, 
                           QN => n704);
   REGISTERS_reg_10_0_inst : DFF_X1 port map( D => n599, CK => CLK, Q => n29, 
                           QN => n694);
   REGISTERS_reg_11_7_inst : DFF_X1 port map( D => n598, CK => CLK, Q => n903, 
                           QN => n761);
   REGISTERS_reg_11_6_inst : DFF_X1 port map( D => n597, CK => CLK, Q => n949, 
                           QN => n751);
   REGISTERS_reg_11_5_inst : DFF_X1 port map( D => n596, CK => CLK, Q => n917, 
                           QN => n741);
   REGISTERS_reg_11_4_inst : DFF_X1 port map( D => n595, CK => CLK, Q => n941, 
                           QN => n731);
   REGISTERS_reg_11_3_inst : DFF_X1 port map( D => n594, CK => CLK, Q => n882, 
                           QN => n721);
   REGISTERS_reg_11_2_inst : DFF_X1 port map( D => n593, CK => CLK, Q => n876, 
                           QN => n711);
   REGISTERS_reg_11_1_inst : DFF_X1 port map( D => n592, CK => CLK, Q => n897, 
                           QN => n701);
   REGISTERS_reg_11_0_inst : DFF_X1 port map( D => n591, CK => CLK, Q => n923, 
                           QN => n691);
   REGISTERS_reg_12_7_inst : DFF_X1 port map( D => n590, CK => CLK, Q => n43, 
                           QN => n462);
   REGISTERS_reg_13_7_inst : DFF_X1 port map( D => n582, CK => CLK, Q => n795, 
                           QN => n454);
   REGISTERS_reg_13_6_inst : DFF_X1 port map( D => n581, CK => CLK, Q => n816, 
                           QN => n453);
   REGISTERS_reg_13_5_inst : DFF_X1 port map( D => n580, CK => CLK, Q => n836, 
                           QN => n452);
   REGISTERS_reg_13_4_inst : DFF_X1 port map( D => n579, CK => CLK, Q => n857, 
                           QN => n451);
   REGISTERS_reg_13_3_inst : DFF_X1 port map( D => n578, CK => CLK, Q => n878, 
                           QN => n450);
   REGISTERS_reg_13_2_inst : DFF_X1 port map( D => n577, CK => CLK, Q => n899, 
                           QN => n449);
   REGISTERS_reg_13_1_inst : DFF_X1 port map( D => n576, CK => CLK, Q => n919, 
                           QN => n448);
   REGISTERS_reg_13_0_inst : DFF_X1 port map( D => n575, CK => CLK, Q => n944, 
                           QN => n447);
   REGISTERS_reg_14_7_inst : DFF_X1 port map( D => n574, CK => CLK, Q => n3, QN
                           => n766);
   REGISTERS_reg_14_6_inst : DFF_X1 port map( D => n573, CK => CLK, Q => n7, QN
                           => n756);
   REGISTERS_reg_14_5_inst : DFF_X1 port map( D => n572, CK => CLK, Q => n11, 
                           QN => n746);
   REGISTERS_reg_14_4_inst : DFF_X1 port map( D => n571, CK => CLK, Q => n15, 
                           QN => n736);
   REGISTERS_reg_14_3_inst : DFF_X1 port map( D => n570, CK => CLK, Q => n19, 
                           QN => n726);
   REGISTERS_reg_14_2_inst : DFF_X1 port map( D => n569, CK => CLK, Q => n23, 
                           QN => n716);
   REGISTERS_reg_14_1_inst : DFF_X1 port map( D => n568, CK => CLK, Q => n27, 
                           QN => n706);
   REGISTERS_reg_14_0_inst : DFF_X1 port map( D => n567, CK => CLK, Q => n31, 
                           QN => n696);
   REGISTERS_reg_15_7_inst : DFF_X1 port map( D => n566, CK => CLK, Q => n796, 
                           QN => n763);
   REGISTERS_reg_15_6_inst : DFF_X1 port map( D => n565, CK => CLK, Q => n817, 
                           QN => n753);
   REGISTERS_reg_15_5_inst : DFF_X1 port map( D => n564, CK => CLK, Q => n837, 
                           QN => n743);
   REGISTERS_reg_15_4_inst : DFF_X1 port map( D => n563, CK => CLK, Q => n858, 
                           QN => n733);
   REGISTERS_reg_15_3_inst : DFF_X1 port map( D => n562, CK => CLK, Q => n879, 
                           QN => n723);
   REGISTERS_reg_15_2_inst : DFF_X1 port map( D => n561, CK => CLK, Q => n900, 
                           QN => n713);
   REGISTERS_reg_15_1_inst : DFF_X1 port map( D => n560, CK => CLK, Q => n920, 
                           QN => n703);
   REGISTERS_reg_15_0_inst : DFF_X1 port map( D => n559, CK => CLK, Q => n945, 
                           QN => n693);
   REGISTERS_reg_16_7_inst : DFF_X1 port map( D => n558, CK => CLK, Q => n45, 
                           QN => n760);
   REGISTERS_reg_16_6_inst : DFF_X1 port map( D => n557, CK => CLK, Q => n50, 
                           QN => n750);
   REGISTERS_reg_16_5_inst : DFF_X1 port map( D => n556, CK => CLK, Q => n55, 
                           QN => n740);
   REGISTERS_reg_16_4_inst : DFF_X1 port map( D => n555, CK => CLK, Q => n60, 
                           QN => n730);
   REGISTERS_reg_16_3_inst : DFF_X1 port map( D => n554, CK => CLK, Q => n65, 
                           QN => n720);
   REGISTERS_reg_16_2_inst : DFF_X1 port map( D => n553, CK => CLK, Q => n70, 
                           QN => n710);
   REGISTERS_reg_17_7_inst : DFF_X1 port map( D => n550, CK => CLK, Q => n855, 
                           QN => n758);
   REGISTERS_reg_17_6_inst : DFF_X1 port map( D => n549, CK => CLK, Q => n840, 
                           QN => n748);
   REGISTERS_reg_17_5_inst : DFF_X1 port map( D => n548, CK => CLK, Q => n861, 
                           QN => n738);
   REGISTERS_reg_17_4_inst : DFF_X1 port map( D => n547, CK => CLK, Q => n814, 
                           QN => n728);
   REGISTERS_reg_17_3_inst : DFF_X1 port map( D => n546, CK => CLK, Q => n800, 
                           QN => n718);
   REGISTERS_reg_17_2_inst : DFF_X1 port map( D => n545, CK => CLK, Q => n820, 
                           QN => n708);
   REGISTERS_reg_17_1_inst : DFF_X1 port map( D => n544, CK => CLK, Q => n793, 
                           QN => n698);
   REGISTERS_reg_17_0_inst : DFF_X1 port map( D => n543, CK => CLK, Q => n834, 
                           QN => n688);
   REGISTERS_reg_18_7_inst : DFF_X1 port map( D => n542, CK => CLK, Q => n4, QN
                           => n446);
   REGISTERS_reg_18_5_inst : DFF_X1 port map( D => n540, CK => CLK, Q => n12, 
                           QN => n444);
   REGISTERS_reg_18_4_inst : DFF_X1 port map( D => n539, CK => CLK, Q => n16, 
                           QN => n443);
   REGISTERS_reg_18_3_inst : DFF_X1 port map( D => n538, CK => CLK, Q => n20, 
                           QN => n442);
   REGISTERS_reg_18_2_inst : DFF_X1 port map( D => n537, CK => CLK, Q => n24, 
                           QN => n441);
   REGISTERS_reg_18_1_inst : DFF_X1 port map( D => n536, CK => CLK, Q => n28, 
                           QN => n440);
   REGISTERS_reg_18_0_inst : DFF_X1 port map( D => n535, CK => CLK, Q => n32, 
                           QN => n439);
   REGISTERS_reg_19_7_inst : DFF_X1 port map( D => n534, CK => CLK, Q => n801, 
                           QN => n438);
   REGISTERS_reg_19_6_inst : DFF_X1 port map( D => n532, CK => CLK, Q => n821, 
                           QN => n436);
   REGISTERS_reg_19_5_inst : DFF_X1 port map( D => n530, CK => CLK, Q => n841, 
                           QN => n434);
   REGISTERS_reg_19_4_inst : DFF_X1 port map( D => n528, CK => CLK, Q => n862, 
                           QN => n432);
   REGISTERS_reg_19_3_inst : DFF_X1 port map( D => n526, CK => CLK, Q => n883, 
                           QN => n430);
   REGISTERS_reg_19_2_inst : DFF_X1 port map( D => n524, CK => CLK, Q => n904, 
                           QN => n428);
   REGISTERS_reg_19_1_inst : DFF_X1 port map( D => n522, CK => CLK, Q => n924, 
                           QN => n426);
   REGISTERS_reg_19_0_inst : DFF_X1 port map( D => n520, CK => CLK, Q => n950, 
                           QN => n424);
   U20 : OAI21_X2 port map( B1 => n328, B2 => n329, A => n1221, ZN => n312);
   U32 : OAI21_X2 port map( B1 => n328, B2 => n335, A => n1221, ZN => n332);
   U42 : OAI21_X2 port map( B1 => n328, B2 => n346, A => n1221, ZN => n337);
   U52 : OAI21_X2 port map( B1 => n328, B2 => n349, A => n1222, ZN => n348);
   U62 : OAI21_X2 port map( B1 => n329, B2 => n361, A => n1222, ZN => n354);
   U95 : OAI21_X2 port map( B1 => n349, B2 => n361, A => n1222, ZN => n367);
   U106 : OAI21_X2 port map( B1 => n329, B2 => n379, A => n1222, ZN => n372);
   U116 : OAI21_X2 port map( B1 => n335, B2 => n379, A => n1222, ZN => n381);
   U126 : OAI21_X2 port map( B1 => n346, B2 => n379, A => n1222, ZN => n383);
   U147 : OAI21_X2 port map( B1 => n329, B2 => n396, A => n1222, ZN => n388);
   U157 : OAI21_X2 port map( B1 => n335, B2 => n396, A => n1222, ZN => n398);
   U167 : OAI21_X2 port map( B1 => n346, B2 => n396, A => n1222, ZN => n400);
   U177 : OAI21_X2 port map( B1 => n349, B2 => n396, A => n1222, ZN => n402);
   U178 : AND3_X2 port map( A1 => ENABLE, A2 => n403, A3 => WR, ZN => n352);
   U316 : OAI21_X2 port map( B1 => n349, B2 => n408, A => n1221, ZN => n768);
   U563 : NAND3_X1 port map( A1 => n350, A2 => n351, A3 => n352, ZN => n328);
   U564 : NAND3_X1 port map( A1 => n352, A2 => n351, A3 => ADD_WR(2), ZN => 
                           n361);
   U567 : NAND3_X1 port map( A1 => n770, A2 => n771, A3 => n772, ZN => n533);
   U568 : NAND3_X1 port map( A1 => n802, A2 => n803, A3 => n804, ZN => n531);
   U569 : NAND3_X1 port map( A1 => n822, A2 => n823, A3 => n824, ZN => n529);
   U570 : NAND3_X1 port map( A1 => n842, A2 => n843, A3 => n844, ZN => n527);
   U571 : NAND3_X1 port map( A1 => n863, A2 => n864, A3 => n865, ZN => n525);
   U572 : NAND3_X1 port map( A1 => n884, A2 => n885, A3 => n886, ZN => n523);
   U573 : NAND3_X1 port map( A1 => n906, A2 => n905, A3 => n907, ZN => n521);
   U574 : NAND3_X1 port map( A1 => n926, A2 => n927, A3 => n928, ZN => n519);
   U576 : NAND3_X1 port map( A1 => n954, A2 => n953, A3 => n955, ZN => n518);
   U577 : NAND3_X1 port map( A1 => n978, A2 => n977, A3 => n979, ZN => n517);
   U578 : NAND3_X1 port map( A1 => n989, A2 => n991, A3 => n990, ZN => n516);
   U579 : NAND3_X1 port map( A1 => n1002, A2 => n1001, A3 => n1003, ZN => n515)
                           ;
   U580 : NAND3_X1 port map( A1 => n1013, A2 => n1014, A3 => n1015, ZN => n514)
                           ;
   U581 : NAND3_X1 port map( A1 => n1025, A2 => n1026, A3 => n1027, ZN => n513)
                           ;
   U582 : NAND3_X1 port map( A1 => n1038, A2 => n1037, A3 => n1039, ZN => n512)
                           ;
   U583 : NAND3_X1 port map( A1 => n1050, A2 => n1049, A3 => n1051, ZN => n511)
                           ;
   REGISTERS_reg_6_1_inst : DFF_X1 port map( D => n632, CK => CLK, Q => n1114, 
                           QN => n705);
   REGISTERS_reg_18_6_inst : DFF_X1 port map( D => n541, CK => CLK, Q => n1109,
                           QN => n767);
   REGISTERS_reg_16_1_inst : DFF_X1 port map( D => n552, CK => CLK, Q => n1108,
                           QN => n406);
   REGISTERS_reg_16_0_inst : DFF_X1 port map( D => n551, CK => CLK, Q => n1107,
                           QN => n407);
   REGISTERS_reg_10_5_inst : DFF_X1 port map( D => n604, CK => CLK, Q => n1106,
                           QN => n384);
   REGISTERS_reg_8_5_inst : DFF_X1 port map( D => n620, CK => CLK, Q => n1105, 
                           QN => n373);
   REGISTERS_reg_8_4_inst : DFF_X1 port map( D => n619, CK => CLK, Q => n1104, 
                           QN => n374);
   REGISTERS_reg_8_3_inst : DFF_X1 port map( D => n618, CK => CLK, Q => n1103, 
                           QN => n375);
   REGISTERS_reg_8_2_inst : DFF_X1 port map( D => n617, CK => CLK, Q => n1102, 
                           QN => n376);
   REGISTERS_reg_8_1_inst : DFF_X1 port map( D => n616, CK => CLK, Q => n1101, 
                           QN => n377);
   REGISTERS_reg_8_0_inst : DFF_X1 port map( D => n615, CK => CLK, Q => n1100, 
                           QN => n378);
   REGISTERS_reg_7_7_inst : DFF_X1 port map( D => n630, CK => CLK, Q => n97, QN
                           => n368);
   REGISTERS_reg_7_6_inst : DFF_X1 port map( D => n629, CK => CLK, Q => n98, QN
                           => n369);
   REGISTERS_reg_7_5_inst : DFF_X1 port map( D => n628, CK => CLK, Q => n99, QN
                           => n370);
   REGISTERS_reg_4_5_inst : DFF_X1 port map( D => n652, CK => CLK, Q => n1099, 
                           QN => n355);
   REGISTERS_reg_4_4_inst : DFF_X1 port map( D => n651, CK => CLK, Q => n1098, 
                           QN => n356);
   REGISTERS_reg_4_3_inst : DFF_X1 port map( D => n650, CK => CLK, Q => n1097, 
                           QN => n357);
   REGISTERS_reg_4_2_inst : DFF_X1 port map( D => n649, CK => CLK, Q => n1096, 
                           QN => n358);
   REGISTERS_reg_4_1_inst : DFF_X1 port map( D => n648, CK => CLK, Q => n1095, 
                           QN => n359);
   REGISTERS_reg_4_0_inst : DFF_X1 port map( D => n647, CK => CLK, Q => n1094, 
                           QN => n360);
   REGISTERS_reg_1_1_inst : DFF_X1 port map( D => n672, CK => CLK, Q => n74, QN
                           => n333);
   REGISTERS_reg_1_0_inst : DFF_X1 port map( D => n671, CK => CLK, Q => n79, QN
                           => n334);
   REGISTERS_reg_2_7_inst : DFF_X1 port map( D => n670, CK => CLK, Q => n1093, 
                           QN => n338);
   REGISTERS_reg_2_6_inst : DFF_X1 port map( D => n669, CK => CLK, Q => n1092, 
                           QN => n339);
   REGISTERS_reg_2_5_inst : DFF_X1 port map( D => n668, CK => CLK, Q => n1091, 
                           QN => n340);
   REGISTERS_reg_2_4_inst : DFF_X1 port map( D => n667, CK => CLK, Q => n1090, 
                           QN => n341);
   REGISTERS_reg_2_3_inst : DFF_X1 port map( D => n666, CK => CLK, Q => n1089, 
                           QN => n342);
   REGISTERS_reg_2_2_inst : DFF_X1 port map( D => n665, CK => CLK, Q => n1088, 
                           QN => n343);
   REGISTERS_reg_2_1_inst : DFF_X1 port map( D => n664, CK => CLK, Q => n1087, 
                           QN => n344);
   REGISTERS_reg_2_0_inst : DFF_X1 port map( D => n663, CK => CLK, Q => n1086, 
                           QN => n345);
   REGISTERS_reg_0_7_inst : DFF_X1 port map( D => n686, CK => CLK, Q => n89, QN
                           => n313);
   REGISTERS_reg_0_6_inst : DFF_X1 port map( D => n685, CK => CLK, Q => n90, QN
                           => n315);
   REGISTERS_reg_0_5_inst : DFF_X1 port map( D => n684, CK => CLK, Q => n91, QN
                           => n317);
   REGISTERS_reg_0_4_inst : DFF_X1 port map( D => n683, CK => CLK, Q => n92, QN
                           => n319);
   REGISTERS_reg_0_3_inst : DFF_X1 port map( D => n682, CK => CLK, Q => n93, QN
                           => n321);
   REGISTERS_reg_0_2_inst : DFF_X1 port map( D => n681, CK => CLK, Q => n94, QN
                           => n323);
   REGISTERS_reg_0_1_inst : DFF_X1 port map( D => n680, CK => CLK, Q => n95, QN
                           => n325);
   REGISTERS_reg_0_0_inst : DFF_X1 port map( D => n679, CK => CLK, Q => n96, QN
                           => n327);
   OUT2_reg_1_inst : DFF_X1 port map( D => n521, CK => CLK, Q => OUT2_1_port, 
                           QN => n1085);
   OUT1_reg_4_inst : DFF_X1 port map( D => n515, CK => CLK, Q => OUT1_4_port, 
                           QN => n1084);
   OUT1_reg_1_inst : DFF_X1 port map( D => n512, CK => CLK, Q => OUT1_1_port, 
                           QN => n1083);
   REGISTERS_reg_12_6_inst : DFF_X1 port map( D => n589, CK => CLK, Q => n1082,
                           QN => n389);
   REGISTERS_reg_12_5_inst : DFF_X1 port map( D => n588, CK => CLK, Q => n1081,
                           QN => n390);
   REGISTERS_reg_12_4_inst : DFF_X1 port map( D => n587, CK => CLK, Q => n1080,
                           QN => n391);
   REGISTERS_reg_12_3_inst : DFF_X1 port map( D => n586, CK => CLK, Q => n1079,
                           QN => n392);
   REGISTERS_reg_12_2_inst : DFF_X1 port map( D => n585, CK => CLK, Q => n1078,
                           QN => n393);
   REGISTERS_reg_12_1_inst : DFF_X1 port map( D => n584, CK => CLK, Q => n1077,
                           QN => n394);
   REGISTERS_reg_12_0_inst : DFF_X1 port map( D => n583, CK => CLK, Q => n1076,
                           QN => n395);
   OUT1_reg_0_inst : DFF_X1 port map( D => n511, CK => CLK, Q => OUT1_0_port, 
                           QN => n1075);
   OUT2_reg_7_inst : DFF_X1 port map( D => n533, CK => CLK, Q => OUT2_7_port, 
                           QN => n1074);
   OUT2_reg_6_inst : DFF_X1 port map( D => n531, CK => CLK, Q => OUT2_6_port, 
                           QN => n1073);
   OUT2_reg_2_inst : DFF_X1 port map( D => n523, CK => CLK, Q => OUT2_2_port, 
                           QN => n1072);
   OUT2_reg_0_inst : DFF_X1 port map( D => n519, CK => CLK, Q => OUT2_0_port, 
                           QN => n1071);
   OUT2_reg_5_inst : DFF_X1 port map( D => n529, CK => CLK, Q => OUT2_5_port, 
                           QN => n1070);
   OUT2_reg_4_inst : DFF_X1 port map( D => n527, CK => CLK, Q => OUT2_4_port, 
                           QN => n1069);
   OUT2_reg_3_inst : DFF_X1 port map( D => n525, CK => CLK, Q => OUT2_3_port, 
                           QN => n1068);
   OUT1_reg_2_inst : DFF_X1 port map( D => n513, CK => CLK, Q => OUT1_2_port, 
                           QN => n1067);
   OUT1_reg_5_inst : DFF_X1 port map( D => n516, CK => CLK, Q => OUT1_5_port, 
                           QN => n1066);
   OUT1_reg_7_inst : DFF_X1 port map( D => n518, CK => CLK, Q => OUT1_7_port, 
                           QN => n967);
   OUT1_reg_6_inst : DFF_X1 port map( D => n517, CK => CLK, Q => OUT1_6_port, 
                           QN => n957);
   OUT1_reg_3_inst : DFF_X1 port map( D => n514, CK => CLK, Q => OUT1_3_port, 
                           QN => n952);
   U3 : NAND4_X1 port map( A1 => ADD_WR(4), A2 => WR, A3 => n925, A4 => ENABLE,
                           ZN => n408);
   U4 : INV_X1 port map( A => n1116, ZN => n1117);
   U5 : BUF_X1 port map( A => n786, Z => n1213);
   U6 : CLKBUF_X1 port map( A => n1111, Z => n1110);
   U7 : BUF_X1 port map( A => n786, Z => n1212);
   U8 : BUF_X1 port map( A => n785, Z => n1216);
   U9 : BUF_X1 port map( A => n785, Z => n1217);
   U10 : BUF_X1 port map( A => n786, Z => n1214);
   U11 : INV_X1 port map( A => n412, ZN => n411);
   U12 : INV_X1 port map( A => n414, ZN => n413);
   U13 : INV_X1 port map( A => n405, ZN => n404);
   U14 : INV_X1 port map( A => n386, ZN => n385);
   U15 : BUF_X1 port map( A => n1224, Z => n1222);
   U16 : NAND2_X1 port map( A1 => n1220, A2 => n1219, ZN => n329);
   U17 : BUF_X1 port map( A => n1224, Z => n1221);
   U18 : BUF_X2 port map( A => n790, Z => n1206);
   U19 : BUF_X2 port map( A => n971, Z => n1194);
   U21 : BUF_X2 port map( A => n788, Z => n1209);
   U22 : BUF_X2 port map( A => n790, Z => n1207);
   U23 : BUF_X1 port map( A => n970, Z => n1199);
   U24 : BUF_X1 port map( A => n788, Z => n1211);
   U25 : BUF_X2 port map( A => n788, Z => n1210);
   U26 : BUF_X2 port map( A => n968, Z => n1200);
   U27 : BUF_X2 port map( A => n968, Z => n1201);
   U28 : BUF_X1 port map( A => n1169, Z => n1204);
   U29 : BUF_X1 port map( A => n790, Z => n1208);
   U30 : BUF_X1 port map( A => n968, Z => n1202);
   U31 : INV_X1 port map( A => n931, ZN => n786);
   U33 : BUF_X1 port map( A => n1169, Z => n1203);
   U34 : BUF_X1 port map( A => n324, Z => n1174);
   U35 : BUF_X1 port map( A => n322, Z => n1177);
   U36 : BUF_X1 port map( A => n320, Z => n1180);
   U37 : BUF_X1 port map( A => n318, Z => n1183);
   U38 : BUF_X1 port map( A => n316, Z => n1186);
   U39 : BUF_X1 port map( A => n314, Z => n1189);
   U40 : BUF_X1 port map( A => n311, Z => n1192);
   U41 : BUF_X1 port map( A => n326, Z => n1171);
   U43 : BUF_X1 port map( A => n324, Z => n1173);
   U44 : BUF_X1 port map( A => n322, Z => n1176);
   U45 : BUF_X1 port map( A => n320, Z => n1179);
   U46 : BUF_X1 port map( A => n318, Z => n1182);
   U47 : BUF_X1 port map( A => n316, Z => n1185);
   U48 : BUF_X1 port map( A => n314, Z => n1188);
   U49 : BUF_X1 port map( A => n311, Z => n1191);
   U50 : BUF_X1 port map( A => n326, Z => n1172);
   U51 : BUF_X1 port map( A => n326, Z => n1170);
   U53 : BUF_X1 port map( A => n324, Z => n1175);
   U54 : BUF_X1 port map( A => n322, Z => n1178);
   U55 : BUF_X1 port map( A => n320, Z => n1181);
   U56 : BUF_X1 port map( A => n318, Z => n1184);
   U57 : BUF_X1 port map( A => n316, Z => n1187);
   U58 : BUF_X1 port map( A => n314, Z => n1190);
   U59 : BUF_X1 port map( A => n311, Z => n1193);
   U60 : INV_X1 port map( A => ADD_RD2(2), ZN => n938);
   U61 : INV_X1 port map( A => ADD_RD1(2), ZN => n1059);
   U63 : INV_X1 port map( A => ADD_WR(2), ZN => n350);
   U64 : OAI21_X2 port map( B1 => n335, B2 => n408, A => n1223, ZN => n412);
   U65 : OAI21_X2 port map( B1 => n346, B2 => n408, A => n1223, ZN => n414);
   U66 : OAI21_X2 port map( B1 => n329, B2 => n408, A => n1223, ZN => n405);
   U67 : OAI21_X2 port map( B1 => n349, B2 => n379, A => n1222, ZN => n386);
   U68 : AND2_X1 port map( A1 => n930, A2 => n947, ZN => n798);
   U69 : NAND2_X1 port map( A1 => ADD_WR(1), A2 => ADD_WR(0), ZN => n349);
   U70 : NAND2_X1 port map( A1 => ADD_WR(0), A2 => n1220, ZN => n335);
   U71 : NAND2_X1 port map( A1 => n1053, A2 => n1054, ZN => n960);
   U72 : NAND2_X1 port map( A1 => ADD_WR(1), A2 => n1219, ZN => n346);
   U73 : NAND3_X1 port map( A1 => RD1, A2 => n1223, A3 => ENABLE, ZN => n1111);
   U74 : AND2_X1 port map( A1 => ENABLE, A2 => n1223, ZN => n1112);
   U75 : NAND2_X1 port map( A1 => n930, A2 => n931, ZN => n778);
   U76 : NAND2_X1 port map( A1 => n930, A2 => n1206, ZN => n777);
   U77 : OAI22_X1 port map( A1 => n413, A2 => n1188, B1 => n414, B2 => n767, ZN
                           => n541);
   U78 : OAI22_X1 port map( A1 => n404, A2 => n1172, B1 => n405, B2 => n407, ZN
                           => n551);
   U79 : OAI22_X1 port map( A1 => n404, A2 => n1174, B1 => n405, B2 => n406, ZN
                           => n552);
   U80 : NOR2_X1 port map( A1 => n1061, A2 => ADD_RD1(2), ZN => n963);
   U81 : AND2_X1 port map( A1 => n1053, A2 => n1199, ZN => n956);
   U82 : AND2_X1 port map( A1 => n930, A2 => n1211, ZN => n773);
   U83 : AOI22_X1 port map( A1 => n1209, A2 => n833, B1 => n1206, B2 => n917, 
                           ZN => n832);
   U84 : NAND2_X1 port map( A1 => DATAIN(0), A2 => n1221, ZN => n326);
   U85 : NAND2_X1 port map( A1 => DATAIN(1), A2 => n1221, ZN => n324);
   U86 : NAND2_X1 port map( A1 => DATAIN(2), A2 => n1221, ZN => n322);
   U87 : NAND2_X1 port map( A1 => DATAIN(3), A2 => n1221, ZN => n320);
   U88 : NAND2_X1 port map( A1 => DATAIN(4), A2 => n1221, ZN => n318);
   U89 : NAND2_X1 port map( A1 => DATAIN(5), A2 => n1221, ZN => n316);
   U90 : NAND2_X1 port map( A1 => DATAIN(6), A2 => n1221, ZN => n314);
   U91 : NAND2_X1 port map( A1 => DATAIN(7), A2 => n1221, ZN => n311);
   U92 : AND3_X1 port map( A1 => ADD_RD2(1), A2 => n951, A3 => ADD_RD2(0), ZN 
                           => n790);
   U93 : AND3_X1 port map( A1 => n951, A2 => n1218, A3 => ADD_RD2(0), ZN => 
                           n788);
   U94 : OR2_X1 port map( A1 => n1115, A2 => ADD_RD1(0), ZN => n1113);
   U96 : INV_X1 port map( A => RESET, ZN => n1224);
   U97 : NOR3_X1 port map( A1 => ADD_RD1(3), A2 => ADD_RD1(4), A3 => ADD_RD1(2)
                           , ZN => n1053);
   U98 : NOR3_X1 port map( A1 => ADD_RD2(3), A2 => ADD_RD2(4), A3 => ADD_RD2(2)
                           , ZN => n930);
   U99 : NOR2_X1 port map( A1 => ADD_WR(3), A2 => ADD_WR(2), ZN => n925);
   U100 : NOR2_X1 port map( A1 => n938, A2 => ADD_RD2(3), ZN => n783);
   U101 : AOI22_X1 port map( A1 => n1199, A2 => n793, B1 => n1196, B2 => n924, 
                           ZN => n1048);
   U102 : NOR2_X1 port map( A1 => n1059, A2 => ADD_RD1(3), ZN => n965);
   U103 : OAI221_X1 port map( B1 => n750, B2 => n1217, C1 => n767, C2 => n1214,
                           A => n819, ZN => n818);
   U104 : AOI22_X1 port map( A1 => n1209, A2 => n840, B1 => n1206, B2 => n821, 
                           ZN => n819);
   U105 : OAI221_X1 port map( B1 => n710, B2 => n1215, C1 => n441, C2 => n1212,
                           A => n902, ZN => n901);
   U107 : AOI22_X1 port map( A1 => n1211, A2 => n820, B1 => n1207, B2 => n904, 
                           ZN => n902);
   U108 : OAI221_X1 port map( B1 => n760, B2 => n1217, C1 => n446, C2 => n1214,
                           A => n799, ZN => n797);
   U109 : AOI22_X1 port map( A1 => n1209, A2 => n855, B1 => n1206, B2 => n801, 
                           ZN => n799);
   U110 : OAI221_X1 port map( B1 => n407, B2 => n1215, C1 => n439, C2 => n1212,
                           A => n948, ZN => n946);
   U111 : AOI22_X1 port map( A1 => n1209, A2 => n834, B1 => n1206, B2 => n950, 
                           ZN => n948);
   U112 : OAI221_X1 port map( B1 => n406, B2 => n1215, C1 => n440, C2 => n1212,
                           A => n922, ZN => n921);
   U113 : AOI22_X1 port map( A1 => n1211, A2 => n793, B1 => n1208, B2 => n924, 
                           ZN => n922);
   U114 : AOI22_X1 port map( A1 => n1211, A2 => n919, B1 => n1208, B2 => n920, 
                           ZN => n918);
   U115 : OAI221_X1 port map( B1 => n750, B2 => n1203, C1 => n767, C2 => n1202,
                           A => n988, ZN => n987);
   U117 : NAND3_X1 port map( A1 => ADD_WR(2), A2 => n352, A3 => ADD_WR(3), ZN 
                           => n396);
   U118 : OAI22_X1 port map( A1 => n404, A2 => n1189, B1 => n750, B2 => n405, 
                           ZN => n557);
   U119 : OAI22_X1 port map( A1 => n411, A2 => n1172, B1 => n688, B2 => n412, 
                           ZN => n543);
   U120 : OAI22_X1 port map( A1 => n411, A2 => n1175, B1 => n698, B2 => n412, 
                           ZN => n544);
   U121 : OAI22_X1 port map( A1 => n411, A2 => n1178, B1 => n708, B2 => n412, 
                           ZN => n545);
   U122 : OAI22_X1 port map( A1 => n411, A2 => n1181, B1 => n718, B2 => n412, 
                           ZN => n546);
   U123 : OAI22_X1 port map( A1 => n411, A2 => n1184, B1 => n728, B2 => n412, 
                           ZN => n547);
   U124 : OAI22_X1 port map( A1 => n411, A2 => n1187, B1 => n738, B2 => n412, 
                           ZN => n548);
   U125 : OAI22_X1 port map( A1 => n411, A2 => n1190, B1 => n748, B2 => n412, 
                           ZN => n549);
   U127 : OAI22_X1 port map( A1 => n411, A2 => n1193, B1 => n758, B2 => n412, 
                           ZN => n550);
   U128 : OAI22_X1 port map( A1 => n413, A2 => n1171, B1 => n439, B2 => n414, 
                           ZN => n535);
   U129 : OAI22_X1 port map( A1 => n413, A2 => n1173, B1 => n440, B2 => n414, 
                           ZN => n536);
   U130 : OAI22_X1 port map( A1 => n413, A2 => n1176, B1 => n441, B2 => n414, 
                           ZN => n537);
   U131 : OAI22_X1 port map( A1 => n413, A2 => n1179, B1 => n442, B2 => n414, 
                           ZN => n538);
   U132 : OAI22_X1 port map( A1 => n413, A2 => n1182, B1 => n443, B2 => n414, 
                           ZN => n539);
   U133 : OAI22_X1 port map( A1 => n413, A2 => n1185, B1 => n444, B2 => n414, 
                           ZN => n540);
   U134 : OAI22_X1 port map( A1 => n413, A2 => n1191, B1 => n446, B2 => n414, 
                           ZN => n542);
   U135 : OAI22_X1 port map( A1 => n404, A2 => n1177, B1 => n710, B2 => n405, 
                           ZN => n553);
   U136 : OAI22_X1 port map( A1 => n404, A2 => n1180, B1 => n720, B2 => n405, 
                           ZN => n554);
   U137 : OAI22_X1 port map( A1 => n404, A2 => n1183, B1 => n730, B2 => n405, 
                           ZN => n555);
   U138 : OAI22_X1 port map( A1 => n404, A2 => n1186, B1 => n740, B2 => n405, 
                           ZN => n556);
   U139 : OAI22_X1 port map( A1 => n404, A2 => n1192, B1 => n760, B2 => n405, 
                           ZN => n558);
   U140 : OAI22_X1 port map( A1 => n385, A2 => n1171, B1 => n691, B2 => n386, 
                           ZN => n591);
   U141 : OAI22_X1 port map( A1 => n385, A2 => n1174, B1 => n701, B2 => n386, 
                           ZN => n592);
   U142 : OAI22_X1 port map( A1 => n385, A2 => n1177, B1 => n711, B2 => n386, 
                           ZN => n593);
   U143 : OAI22_X1 port map( A1 => n385, A2 => n1180, B1 => n721, B2 => n386, 
                           ZN => n594);
   U144 : OAI22_X1 port map( A1 => n385, A2 => n1183, B1 => n731, B2 => n386, 
                           ZN => n595);
   U145 : OAI22_X1 port map( A1 => n385, A2 => n1186, B1 => n741, B2 => n386, 
                           ZN => n596);
   U146 : OAI22_X1 port map( A1 => n385, A2 => n1189, B1 => n751, B2 => n386, 
                           ZN => n597);
   U148 : OAI22_X1 port map( A1 => n385, A2 => n1192, B1 => n761, B2 => n386, 
                           ZN => n598);
   U149 : AOI22_X1 port map( A1 => n1210, A2 => n800, B1 => n1207, B2 => n883, 
                           ZN => n881);
   U150 : AOI22_X1 port map( A1 => n1210, A2 => n814, B1 => n1207, B2 => n862, 
                           ZN => n860);
   U151 : AOI22_X1 port map( A1 => n1209, A2 => n861, B1 => n1206, B2 => n841, 
                           ZN => n839);
   U152 : AOI22_X1 port map( A1 => n1210, A2 => n875, B1 => n1207, B2 => n882, 
                           ZN => n874);
   U153 : AOI22_X1 port map( A1 => n1209, A2 => n792, B1 => n1206, B2 => n903, 
                           ZN => n791);
   U154 : AOI22_X1 port map( A1 => n1211, A2 => n944, B1 => n1208, B2 => n945, 
                           ZN => n943);
   U155 : AOI22_X1 port map( A1 => n1210, A2 => n899, B1 => n1207, B2 => n900, 
                           ZN => n898);
   U156 : AOI22_X1 port map( A1 => n1210, A2 => n878, B1 => n1207, B2 => n879, 
                           ZN => n877);
   U158 : AOI22_X1 port map( A1 => n1210, A2 => n857, B1 => n1207, B2 => n858, 
                           ZN => n856);
   U159 : AOI22_X1 port map( A1 => n1209, A2 => n836, B1 => n1206, B2 => n837, 
                           ZN => n835);
   U160 : AOI22_X1 port map( A1 => n1209, A2 => n816, B1 => n1206, B2 => n817, 
                           ZN => n815);
   U161 : AOI22_X1 port map( A1 => n1209, A2 => n795, B1 => n1206, B2 => n796, 
                           ZN => n794);
   U162 : INV_X1 port map( A => ADD_WR(4), ZN => n403);
   U163 : AOI22_X1 port map( A1 => n1199, A2 => n919, B1 => n1194, B2 => n920, 
                           ZN => n1046);
   U164 : AOI22_X1 port map( A1 => n1199, A2 => n944, B1 => n1194, B2 => n945, 
                           ZN => n1062);
   U165 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n921, B1 => n798, B2 => 
                           n95, ZN => n905);
   U166 : AOI221_X1 port map( B1 => n956, B2 => n825, C1 => n1111, C2 => 
                           OUT1_5_port, A => n992, ZN => n991);
   U168 : AOI22_X1 port map( A1 => n1211, A2 => n936, B1 => n1208, B2 => n937, 
                           ZN => n935);
   U169 : AOI22_X1 port map( A1 => n1210, A2 => n851, B1 => n1207, B2 => n852, 
                           ZN => n850);
   U170 : AOI22_X1 port map( A1 => n1209, A2 => n811, B1 => n1206, B2 => n98, 
                           ZN => n810);
   U171 : AOI221_X1 port map( B1 => n956, B2 => n805, C1 => n1111, C2 => 
                           OUT1_6_port, A => n980, ZN => n979);
   U172 : AOI221_X1 port map( B1 => n956, B2 => n774, C1 => n1111, C2 => 
                           OUT1_7_port, A => n958, ZN => n955);
   U173 : AOI22_X1 port map( A1 => n1199, A2 => n936, B1 => n1196, B2 => n937, 
                           ZN => n1058);
   U174 : AOI221_X1 port map( B1 => n956, B2 => n866, C1 => n1110, C2 => 
                           OUT1_3_port, A => n1016, ZN => n1015);
   U175 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n946, B1 => n798, B2 => 
                           n96, ZN => n926);
   U176 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n901, B1 => n798, B2 => 
                           n94, ZN => n884);
   U179 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n880, B1 => n798, B2 => 
                           n93, ZN => n863);
   U180 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n859, B1 => n798, B2 => 
                           n92, ZN => n842);
   U181 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n838, B1 => n798, B2 => 
                           n91, ZN => n822);
   U182 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n818, B1 => n798, B2 => 
                           n90, ZN => n802);
   U183 : AOI22_X1 port map( A1 => ADD_RD2(4), A2 => n797, B1 => n798, B2 => 
                           n89, ZN => n770);
   U184 : AOI221_X1 port map( B1 => n956, B2 => n79, C1 => n1110, C2 => 
                           OUT1_0_port, A => n1052, ZN => n1051);
   U185 : AOI221_X1 port map( B1 => n956, B2 => n845, C1 => n1110, C2 => 
                           OUT1_4_port, A => n1004, ZN => n1003);
   U186 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n1047, B1 => n975, B2 => 
                           n95, ZN => n1037);
   U187 : AOI221_X1 port map( B1 => n956, B2 => n74, C1 => n1110, C2 => 
                           OUT1_1_port, A => n1040, ZN => n1039);
   U188 : AOI221_X1 port map( B1 => n956, B2 => n887, C1 => n1110, C2 => 
                           OUT1_2_port, A => n1028, ZN => n1027);
   U189 : AOI22_X1 port map( A1 => n1199, A2 => n940, B1 => n1196, B2 => n923, 
                           ZN => n1060);
   U190 : INV_X1 port map( A => ADD_RD1(3), ZN => n1061);
   U191 : INV_X1 port map( A => ADD_RD2(3), ZN => n942);
   U192 : INV_X1 port map( A => ADD_WR(3), ZN => n351);
   U193 : INV_X1 port map( A => ADD_RD1(1), ZN => n1115);
   U194 : OAI21_X2 port map( B1 => n335, B2 => n361, A => n1222, ZN => n363);
   U195 : INV_X1 port map( A => n365, ZN => n1116);
   U196 : AOI22_X1 port map( A1 => n1199, A2 => n913, B1 => n1194, B2 => n914, 
                           ZN => n1044);
   U197 : AND3_X1 port map( A1 => RD1, A2 => n1223, A3 => ENABLE, ZN => n1118);
   U198 : AND3_X1 port map( A1 => n1118, A2 => ADD_RD1(1), A3 => ADD_RD1(0), ZN
                           => n971);
   U199 : BUF_X2 port map( A => n971, Z => n1195);
   U200 : OAI22_X1 port map( A1 => n426, A2 => n768, B1 => n769, B2 => n1174, 
                           ZN => n522);
   U201 : OAI22_X1 port map( A1 => n428, A2 => n768, B1 => n769, B2 => n1177, 
                           ZN => n524);
   U202 : OAI22_X1 port map( A1 => n430, A2 => n768, B1 => n769, B2 => n1180, 
                           ZN => n526);
   U203 : OAI22_X1 port map( A1 => n432, A2 => n768, B1 => n769, B2 => n1183, 
                           ZN => n528);
   U204 : OAI22_X1 port map( A1 => n434, A2 => n768, B1 => n769, B2 => n1186, 
                           ZN => n530);
   U205 : OAI22_X1 port map( A1 => n436, A2 => n768, B1 => n769, B2 => n1189, 
                           ZN => n532);
   U206 : OAI22_X1 port map( A1 => n438, A2 => n768, B1 => n769, B2 => n1192, 
                           ZN => n534);
   U207 : OAI22_X1 port map( A1 => n769, A2 => n1170, B1 => n424, B2 => n768, 
                           ZN => n520);
   U208 : INV_X1 port map( A => n768, ZN => n769);
   U209 : AND3_X1 port map( A1 => n1118, A2 => n1115, A3 => ADD_RD1(0), ZN => 
                           n970);
   U210 : BUF_X1 port map( A => n971, Z => n1196);
   U211 : BUF_X2 port map( A => n970, Z => n1198);
   U212 : BUF_X2 port map( A => n970, Z => n1197);
   U213 : INV_X1 port map( A => n951, ZN => n1119);
   U214 : AND2_X1 port map( A1 => n773, A2 => n74, ZN => n1120);
   U215 : AND2_X1 port map( A1 => n775, A2 => OUT2_1_port, ZN => n1121);
   U216 : NOR3_X1 port map( A1 => n1120, A2 => n1121, A3 => n908, ZN => n907);
   U217 : NAND2_X1 port map( A1 => RD2, A2 => n1112, ZN => n775);
   U218 : BUF_X1 port map( A => n1169, Z => n1142);
   U219 : OAI221_X1 port map( B1 => n720, B2 => n1216, C1 => n442, C2 => n1213,
                           A => n881, ZN => n880);
   U220 : OAI221_X1 port map( B1 => n730, B2 => n1216, C1 => n443, C2 => n1213,
                           A => n860, ZN => n859);
   U221 : OAI221_X1 port map( B1 => n740, B2 => n1216, C1 => n444, C2 => n1213,
                           A => n839, ZN => n838);
   U222 : INV_X1 port map( A => n947, ZN => n785);
   U223 : AND3_X1 port map( A1 => n1122, A2 => n1123, A3 => n1124, ZN => n885);
   U224 : NAND2_X1 port map( A1 => n779, A2 => n889, ZN => n1122);
   U225 : NAND2_X1 port map( A1 => n781, A2 => n890, ZN => n1123);
   U226 : NAND2_X1 port map( A1 => n783, A2 => n891, ZN => n1124);
   U227 : AOI22_X1 port map( A1 => n1211, A2 => n916, B1 => n1208, B2 => n897, 
                           ZN => n915);
   U228 : AOI22_X1 port map( A1 => n1210, A2 => n896, B1 => n1207, B2 => n876, 
                           ZN => n895);
   U229 : OR2_X1 port map( A1 => n359, A2 => n1215, ZN => n1125);
   U230 : OR2_X1 port map( A1 => n705, A2 => n1212, ZN => n1126);
   U231 : NAND3_X1 port map( A1 => n1125, A2 => n1126, A3 => n912, ZN => n911);
   U232 : OAI221_X1 port map( B1 => n394, B2 => n1215, C1 => n706, C2 => n1212,
                           A => n918, ZN => n909);
   U233 : AND3_X1 port map( A1 => n1127, A2 => n1128, A3 => n1129, ZN => n1002)
                           ;
   U234 : NAND2_X1 port map( A1 => n961, A2 => n1005, ZN => n1127);
   U235 : NAND2_X1 port map( A1 => n963, A2 => n1006, ZN => n1128);
   U236 : NAND2_X1 port map( A1 => n1007, A2 => n965, ZN => n1129);
   U237 : NAND2_X1 port map( A1 => n779, A2 => n868, ZN => n1130);
   U238 : NAND2_X1 port map( A1 => n781, A2 => n869, ZN => n1131);
   U239 : NAND2_X1 port map( A1 => n783, A2 => n870, ZN => n1132);
   U240 : AND3_X1 port map( A1 => n1130, A2 => n1131, A3 => n1132, ZN => n864);
   U241 : AOI22_X1 port map( A1 => n1198, A2 => n800, B1 => n1194, B2 => n883, 
                           ZN => n1024);
   U242 : AOI22_X1 port map( A1 => n1198, A2 => n814, B1 => n1194, B2 => n862, 
                           ZN => n1012);
   U243 : AOI22_X1 port map( A1 => n1199, A2 => n820, B1 => n1196, B2 => n904, 
                           ZN => n1036);
   U244 : AOI22_X1 port map( A1 => n1198, A2 => n899, B1 => n1194, B2 => n900, 
                           ZN => n1034);
   U245 : AOI22_X1 port map( A1 => n1198, A2 => n893, B1 => n1196, B2 => n894, 
                           ZN => n1032);
   U246 : AOI22_X1 port map( A1 => n1198, A2 => n896, B1 => n1196, B2 => n876, 
                           ZN => n1033);
   U247 : AOI22_X1 port map( A1 => n1198, A2 => n857, B1 => n1194, B2 => n858, 
                           ZN => n1010);
   U248 : AOI22_X1 port map( A1 => n1198, A2 => n878, B1 => n1196, B2 => n879, 
                           ZN => n1022);
   U249 : AOI22_X1 port map( A1 => n1198, A2 => n875, B1 => n1195, B2 => n882, 
                           ZN => n1021);
   U250 : AOI22_X1 port map( A1 => n1198, A2 => n854, B1 => n1194, B2 => n941, 
                           ZN => n1009);
   U251 : AOI22_X1 port map( A1 => n1198, A2 => n872, B1 => n1195, B2 => n873, 
                           ZN => n1020);
   U252 : AOI22_X1 port map( A1 => n1198, A2 => n851, B1 => n1196, B2 => n852, 
                           ZN => n1008);
   U253 : INV_X1 port map( A => n1169, ZN => n1064);
   U254 : AND3_X1 port map( A1 => n1133, A2 => n1135, A3 => n1134, ZN => n1026)
                           ;
   U255 : NAND2_X1 port map( A1 => n1029, A2 => n961, ZN => n1133);
   U256 : NAND2_X1 port map( A1 => n963, A2 => n1030, ZN => n1134);
   U257 : NAND2_X1 port map( A1 => n1031, A2 => n965, ZN => n1135);
   U258 : AND2_X1 port map( A1 => n961, A2 => n962, ZN => n1136);
   U259 : AND2_X1 port map( A1 => n963, A2 => n964, ZN => n1137);
   U260 : AND2_X1 port map( A1 => n966, A2 => n965, ZN => n1138);
   U261 : NOR3_X1 port map( A1 => n1136, A2 => n1137, A3 => n1138, ZN => n954);
   U262 : OAI221_X1 port map( B1 => n760, B2 => n1205, C1 => n446, C2 => n1202,
                           A => n976, ZN => n974);
   U263 : AOI22_X1 port map( A1 => n1199, A2 => n916, B1 => n1194, B2 => n897, 
                           ZN => n1045);
   U264 : AND2_X1 port map( A1 => n961, A2 => n981, ZN => n1139);
   U265 : AND2_X1 port map( A1 => n963, A2 => n982, ZN => n1140);
   U266 : AND2_X1 port map( A1 => n983, A2 => n965, ZN => n1141);
   U267 : NOR3_X1 port map( A1 => n1139, A2 => n1140, A3 => n1141, ZN => n978);
   U268 : BUF_X2 port map( A => n1169, Z => n1205);
   U269 : NAND2_X1 port map( A1 => n779, A2 => n780, ZN => n1143);
   U270 : NAND2_X1 port map( A1 => n781, A2 => n782, ZN => n1144);
   U271 : NAND2_X1 port map( A1 => n783, A2 => n784, ZN => n1145);
   U272 : AND3_X1 port map( A1 => n1143, A2 => n1144, A3 => n1145, ZN => n771);
   U273 : OAI22_X1 port map( A1 => n353, A2 => n1193, B1 => n494, B2 => n354, 
                           ZN => n654);
   U274 : OAI22_X1 port map( A1 => n353, A2 => n1190, B1 => n493, B2 => n354, 
                           ZN => n653);
   U275 : OAI22_X1 port map( A1 => n353, A2 => n1181, B1 => n354, B2 => n357, 
                           ZN => n650);
   U276 : OAI22_X1 port map( A1 => n353, A2 => n1184, B1 => n354, B2 => n356, 
                           ZN => n651);
   U277 : OAI22_X1 port map( A1 => n353, A2 => n1175, B1 => n354, B2 => n359, 
                           ZN => n648);
   U278 : OAI22_X1 port map( A1 => n353, A2 => n1178, B1 => n354, B2 => n358, 
                           ZN => n649);
   U279 : OAI22_X1 port map( A1 => n353, A2 => n1171, B1 => n354, B2 => n360, 
                           ZN => n647);
   U280 : OAI22_X1 port map( A1 => n353, A2 => n1187, B1 => n354, B2 => n355, 
                           ZN => n652);
   U281 : INV_X1 port map( A => n354, ZN => n353);
   U282 : OAI22_X1 port map( A1 => n387, A2 => n1193, B1 => n462, B2 => n388, 
                           ZN => n590);
   U283 : OAI22_X1 port map( A1 => n387, A2 => n1178, B1 => n388, B2 => n393, 
                           ZN => n585);
   U284 : OAI22_X1 port map( A1 => n387, A2 => n1181, B1 => n388, B2 => n392, 
                           ZN => n586);
   U285 : OAI22_X1 port map( A1 => n387, A2 => n1190, B1 => n388, B2 => n389, 
                           ZN => n589);
   U286 : OAI22_X1 port map( A1 => n387, A2 => n1187, B1 => n388, B2 => n390, 
                           ZN => n588);
   U287 : OAI22_X1 port map( A1 => n387, A2 => n1184, B1 => n388, B2 => n391, 
                           ZN => n587);
   U288 : OAI22_X1 port map( A1 => n387, A2 => n1175, B1 => n388, B2 => n394, 
                           ZN => n584);
   U289 : OAI22_X1 port map( A1 => n387, A2 => n1172, B1 => n388, B2 => n395, 
                           ZN => n583);
   U290 : INV_X1 port map( A => n388, ZN => n387);
   U291 : AOI22_X1 port map( A1 => n1198, A2 => n789, B1 => n1195, B2 => n97, 
                           ZN => n969);
   U292 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n974, B1 => n975, B2 => 
                           n89, ZN => n953);
   U293 : OAI221_X1 port map( B1 => n462, B2 => n1205, C1 => n766, C2 => n1202,
                           A => n973, ZN => n962);
   U294 : OAI221_X1 port map( B1 => n720, B2 => n1205, C1 => n442, C2 => n1201,
                           A => n1024, ZN => n1023);
   U295 : OAI221_X1 port map( B1 => n730, B2 => n1204, C1 => n443, C2 => n1201,
                           A => n1012, ZN => n1011);
   U296 : OAI221_X1 port map( B1 => n740, B2 => n1205, C1 => n444, C2 => n1201,
                           A => n1000, ZN => n999);
   U297 : OAI22_X1 port map( A1 => n371, A2 => n1193, B1 => n478, B2 => n372, 
                           ZN => n622);
   U298 : OAI22_X1 port map( A1 => n371, A2 => n1190, B1 => n477, B2 => n372, 
                           ZN => n621);
   U299 : OAI22_X1 port map( A1 => n371, A2 => n1175, B1 => n372, B2 => n377, 
                           ZN => n616);
   U300 : OAI22_X1 port map( A1 => n371, A2 => n1178, B1 => n372, B2 => n376, 
                           ZN => n617);
   U301 : OAI22_X1 port map( A1 => n371, A2 => n1172, B1 => n372, B2 => n378, 
                           ZN => n615);
   U302 : OAI22_X1 port map( A1 => n371, A2 => n1184, B1 => n372, B2 => n374, 
                           ZN => n619);
   U303 : OAI22_X1 port map( A1 => n371, A2 => n1181, B1 => n372, B2 => n375, 
                           ZN => n618);
   U304 : OAI22_X1 port map( A1 => n371, A2 => n1187, B1 => n372, B2 => n373, 
                           ZN => n620);
   U305 : INV_X1 port map( A => n372, ZN => n371);
   U306 : OAI22_X1 port map( A1 => n399, A2 => n1173, B1 => n706, B2 => n400, 
                           ZN => n568);
   U307 : OAI22_X1 port map( A1 => n399, A2 => n1176, B1 => n716, B2 => n400, 
                           ZN => n569);
   U308 : OAI22_X1 port map( A1 => n399, A2 => n1170, B1 => n696, B2 => n400, 
                           ZN => n567);
   U309 : OAI22_X1 port map( A1 => n399, A2 => n1179, B1 => n726, B2 => n400, 
                           ZN => n570);
   U310 : OAI22_X1 port map( A1 => n399, A2 => n1182, B1 => n736, B2 => n400, 
                           ZN => n571);
   U311 : OAI22_X1 port map( A1 => n399, A2 => n1185, B1 => n746, B2 => n400, 
                           ZN => n572);
   U312 : OAI22_X1 port map( A1 => n399, A2 => n1188, B1 => n756, B2 => n400, 
                           ZN => n573);
   U313 : OAI22_X1 port map( A1 => n399, A2 => n1191, B1 => n766, B2 => n400, 
                           ZN => n574);
   U314 : INV_X1 port map( A => n400, ZN => n399);
   U315 : OAI22_X1 port map( A1 => n397, A2 => n1178, B1 => n449, B2 => n398, 
                           ZN => n577);
   U317 : OAI22_X1 port map( A1 => n397, A2 => n1181, B1 => n450, B2 => n398, 
                           ZN => n578);
   U318 : OAI22_X1 port map( A1 => n397, A2 => n1193, B1 => n454, B2 => n398, 
                           ZN => n582);
   U319 : OAI22_X1 port map( A1 => n397, A2 => n1175, B1 => n448, B2 => n398, 
                           ZN => n576);
   U320 : OAI22_X1 port map( A1 => n397, A2 => n1190, B1 => n453, B2 => n398, 
                           ZN => n581);
   U321 : OAI22_X1 port map( A1 => n397, A2 => n1184, B1 => n451, B2 => n398, 
                           ZN => n579);
   U322 : OAI22_X1 port map( A1 => n397, A2 => n1187, B1 => n452, B2 => n398, 
                           ZN => n580);
   U323 : OAI22_X1 port map( A1 => n397, A2 => n1171, B1 => n447, B2 => n398, 
                           ZN => n575);
   U324 : INV_X1 port map( A => n398, ZN => n397);
   U325 : OAI22_X1 port map( A1 => n401, A2 => n1174, B1 => n703, B2 => n402, 
                           ZN => n560);
   U326 : OAI22_X1 port map( A1 => n401, A2 => n1177, B1 => n713, B2 => n402, 
                           ZN => n561);
   U327 : OAI22_X1 port map( A1 => n401, A2 => n1170, B1 => n693, B2 => n402, 
                           ZN => n559);
   U328 : OAI22_X1 port map( A1 => n401, A2 => n1180, B1 => n723, B2 => n402, 
                           ZN => n562);
   U329 : OAI22_X1 port map( A1 => n401, A2 => n1183, B1 => n733, B2 => n402, 
                           ZN => n563);
   U330 : OAI22_X1 port map( A1 => n401, A2 => n1186, B1 => n743, B2 => n402, 
                           ZN => n564);
   U331 : OAI22_X1 port map( A1 => n401, A2 => n1189, B1 => n753, B2 => n402, 
                           ZN => n565);
   U332 : OAI22_X1 port map( A1 => n401, A2 => n1192, B1 => n763, B2 => n402, 
                           ZN => n566);
   U333 : INV_X1 port map( A => n402, ZN => n401);
   U334 : NAND2_X1 port map( A1 => n779, A2 => n827, ZN => n1146);
   U335 : NAND2_X1 port map( A1 => n781, A2 => n828, ZN => n1147);
   U336 : NAND2_X1 port map( A1 => n783, A2 => n829, ZN => n1148);
   U337 : AND3_X1 port map( A1 => n1146, A2 => n1147, A3 => n1148, ZN => n823);
   U338 : OAI22_X1 port map( A1 => n382, A2 => n1191, B1 => n764, B2 => n383, 
                           ZN => n606);
   U339 : OAI22_X1 port map( A1 => n382, A2 => n1179, B1 => n724, B2 => n383, 
                           ZN => n602);
   U340 : OAI22_X1 port map( A1 => n382, A2 => n1176, B1 => n714, B2 => n383, 
                           ZN => n601);
   U341 : OAI22_X1 port map( A1 => n382, A2 => n1173, B1 => n704, B2 => n383, 
                           ZN => n600);
   U342 : OAI22_X1 port map( A1 => n382, A2 => n1170, B1 => n694, B2 => n383, 
                           ZN => n599);
   U343 : OAI22_X1 port map( A1 => n382, A2 => n1188, B1 => n754, B2 => n383, 
                           ZN => n605);
   U344 : OAI22_X1 port map( A1 => n382, A2 => n1182, B1 => n734, B2 => n383, 
                           ZN => n603);
   U345 : OAI22_X1 port map( A1 => n382, A2 => n1185, B1 => n383, B2 => n384, 
                           ZN => n604);
   U346 : INV_X1 port map( A => n383, ZN => n382);
   U347 : OAI22_X1 port map( A1 => n380, A2 => n1173, B1 => n464, B2 => n381, 
                           ZN => n608);
   U348 : OAI22_X1 port map( A1 => n380, A2 => n1179, B1 => n466, B2 => n381, 
                           ZN => n610);
   U349 : OAI22_X1 port map( A1 => n380, A2 => n1191, B1 => n470, B2 => n381, 
                           ZN => n614);
   U350 : OAI22_X1 port map( A1 => n380, A2 => n1171, B1 => n463, B2 => n381, 
                           ZN => n607);
   U351 : OAI22_X1 port map( A1 => n380, A2 => n1182, B1 => n467, B2 => n381, 
                           ZN => n611);
   U352 : OAI22_X1 port map( A1 => n380, A2 => n1176, B1 => n465, B2 => n381, 
                           ZN => n609);
   U353 : OAI22_X1 port map( A1 => n380, A2 => n1185, B1 => n468, B2 => n381, 
                           ZN => n612);
   U354 : OAI22_X1 port map( A1 => n380, A2 => n1188, B1 => n469, B2 => n381, 
                           ZN => n613);
   U355 : INV_X1 port map( A => n381, ZN => n380);
   U356 : OAI22_X1 port map( A1 => n336, A2 => n1171, B1 => n337, B2 => n345, 
                           ZN => n663);
   U357 : OAI22_X1 port map( A1 => n336, A2 => n1192, B1 => n337, B2 => n338, 
                           ZN => n670);
   U358 : OAI22_X1 port map( A1 => n336, A2 => n1183, B1 => n337, B2 => n341, 
                           ZN => n667);
   U359 : OAI22_X1 port map( A1 => n336, A2 => n1186, B1 => n337, B2 => n340, 
                           ZN => n668);
   U360 : OAI22_X1 port map( A1 => n336, A2 => n1189, B1 => n337, B2 => n339, 
                           ZN => n669);
   U361 : OAI22_X1 port map( A1 => n336, A2 => n1180, B1 => n337, B2 => n342, 
                           ZN => n666);
   U362 : OAI22_X1 port map( A1 => n336, A2 => n1174, B1 => n337, B2 => n344, 
                           ZN => n664);
   U363 : OAI22_X1 port map( A1 => n336, A2 => n1177, B1 => n337, B2 => n343, 
                           ZN => n665);
   U364 : INV_X1 port map( A => n337, ZN => n336);
   U365 : OAI22_X1 port map( A1 => n310, A2 => n1173, B1 => n312, B2 => n325, 
                           ZN => n680);
   U366 : OAI22_X1 port map( A1 => n310, A2 => n1179, B1 => n312, B2 => n321, 
                           ZN => n682);
   U367 : OAI22_X1 port map( A1 => n310, A2 => n1191, B1 => n312, B2 => n313, 
                           ZN => n686);
   U368 : OAI22_X1 port map( A1 => n310, A2 => n1171, B1 => n312, B2 => n327, 
                           ZN => n679);
   U369 : OAI22_X1 port map( A1 => n310, A2 => n1182, B1 => n312, B2 => n319, 
                           ZN => n683);
   U370 : OAI22_X1 port map( A1 => n310, A2 => n1176, B1 => n312, B2 => n323, 
                           ZN => n681);
   U371 : OAI22_X1 port map( A1 => n310, A2 => n1185, B1 => n312, B2 => n317, 
                           ZN => n684);
   U372 : OAI22_X1 port map( A1 => n310, A2 => n1188, B1 => n312, B2 => n315, 
                           ZN => n685);
   U373 : INV_X1 port map( A => n312, ZN => n310);
   U374 : OAI22_X1 port map( A1 => n366, A2 => n1177, B1 => n712, B2 => n367, 
                           ZN => n625);
   U375 : OAI22_X1 port map( A1 => n366, A2 => n1180, B1 => n722, B2 => n367, 
                           ZN => n626);
   U376 : OAI22_X1 port map( A1 => n366, A2 => n1183, B1 => n732, B2 => n367, 
                           ZN => n627);
   U377 : OAI22_X1 port map( A1 => n366, A2 => n1189, B1 => n367, B2 => n369, 
                           ZN => n629);
   U378 : OAI22_X1 port map( A1 => n366, A2 => n1186, B1 => n367, B2 => n370, 
                           ZN => n628);
   U379 : OAI22_X1 port map( A1 => n366, A2 => n1192, B1 => n367, B2 => n368, 
                           ZN => n630);
   U380 : OAI22_X1 port map( A1 => n366, A2 => n1172, B1 => n692, B2 => n367, 
                           ZN => n623);
   U381 : OAI22_X1 port map( A1 => n366, A2 => n1174, B1 => n702, B2 => n367, 
                           ZN => n624);
   U382 : INV_X1 port map( A => n367, ZN => n366);
   U383 : OAI22_X1 port map( A1 => n331, A2 => n1191, B1 => n757, B2 => n332, 
                           ZN => n678);
   U384 : OAI22_X1 port map( A1 => n331, A2 => n1188, B1 => n747, B2 => n332, 
                           ZN => n677);
   U385 : OAI22_X1 port map( A1 => n331, A2 => n1179, B1 => n717, B2 => n332, 
                           ZN => n674);
   U386 : OAI22_X1 port map( A1 => n331, A2 => n1176, B1 => n707, B2 => n332, 
                           ZN => n673);
   U387 : OAI22_X1 port map( A1 => n331, A2 => n1185, B1 => n737, B2 => n332, 
                           ZN => n676);
   U388 : OAI22_X1 port map( A1 => n331, A2 => n1182, B1 => n727, B2 => n332, 
                           ZN => n675);
   U389 : OAI22_X1 port map( A1 => n331, A2 => n1170, B1 => n332, B2 => n334, 
                           ZN => n671);
   U390 : OAI22_X1 port map( A1 => n331, A2 => n1173, B1 => n332, B2 => n333, 
                           ZN => n672);
   U391 : INV_X1 port map( A => n332, ZN => n331);
   U392 : NAND2_X1 port map( A1 => n779, A2 => n932, ZN => n1149);
   U393 : NAND2_X1 port map( A1 => n781, A2 => n933, ZN => n1150);
   U394 : NAND2_X1 port map( A1 => n783, A2 => n934, ZN => n1151);
   U395 : AND3_X1 port map( A1 => n1149, A2 => n1150, A3 => n1151, ZN => n927);
   U396 : NAND2_X1 port map( A1 => n1053, A2 => n1194, ZN => n1153);
   U397 : NAND2_X1 port map( A1 => n1053, A2 => n1196, ZN => n1152);
   U398 : NAND2_X1 port map( A1 => n1053, A2 => n1194, ZN => n959);
   U399 : OAI22_X1 port map( A1 => n347, A2 => n1181, B1 => n498, B2 => n348, 
                           ZN => n658);
   U400 : OAI22_X1 port map( A1 => n347, A2 => n1190, B1 => n501, B2 => n348, 
                           ZN => n661);
   U401 : OAI22_X1 port map( A1 => n347, A2 => n1172, B1 => n495, B2 => n348, 
                           ZN => n655);
   U402 : OAI22_X1 port map( A1 => n347, A2 => n1178, B1 => n497, B2 => n348, 
                           ZN => n657);
   U403 : OAI22_X1 port map( A1 => n347, A2 => n1187, B1 => n500, B2 => n348, 
                           ZN => n660);
   U404 : OAI22_X1 port map( A1 => n347, A2 => n1193, B1 => n502, B2 => n348, 
                           ZN => n662);
   U405 : OAI22_X1 port map( A1 => n347, A2 => n1184, B1 => n499, B2 => n348, 
                           ZN => n659);
   U406 : OAI22_X1 port map( A1 => n347, A2 => n1175, B1 => n496, B2 => n348, 
                           ZN => n656);
   U407 : INV_X1 port map( A => n348, ZN => n347);
   U408 : AOI22_X1 port map( A1 => n1210, A2 => n789, B1 => n1207, B2 => n97, 
                           ZN => n787);
   U409 : OAI221_X1 port map( B1 => n462, B2 => n1217, C1 => n766, C2 => n1214,
                           A => n794, ZN => n780);
   U410 : NAND2_X1 port map( A1 => n779, A2 => n847, ZN => n1154);
   U411 : NAND2_X1 port map( A1 => n781, A2 => n848, ZN => n1155);
   U412 : NAND2_X1 port map( A1 => n783, A2 => n849, ZN => n1156);
   U413 : AND3_X1 port map( A1 => n1154, A2 => n1155, A3 => n1156, ZN => n843);
   U414 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n1035, B1 => n975, B2 => 
                           n94, ZN => n1025);
   U415 : OAI22_X1 port map( A1 => n496, A2 => n1152, B1 => n344, B2 => n960, 
                           ZN => n1040);
   U416 : OAI22_X1 port map( A1 => n502, A2 => n1153, B1 => n338, B2 => n960, 
                           ZN => n958);
   U417 : NAND3_X2 port map( A1 => n352, A2 => n350, A3 => ADD_WR(3), ZN => 
                           n379);
   U418 : OAI21_X1 port map( B1 => n346, B2 => n361, A => n1222, ZN => n365);
   U419 : OAI22_X1 port map( A1 => n362, A2 => n1191, B1 => n486, B2 => n363, 
                           ZN => n646);
   U420 : OAI22_X1 port map( A1 => n362, A2 => n1185, B1 => n484, B2 => n363, 
                           ZN => n644);
   U421 : OAI22_X1 port map( A1 => n362, A2 => n1179, B1 => n482, B2 => n363, 
                           ZN => n642);
   U422 : OAI22_X1 port map( A1 => n362, A2 => n1173, B1 => n480, B2 => n363, 
                           ZN => n640);
   U423 : OAI22_X1 port map( A1 => n362, A2 => n1170, B1 => n479, B2 => n363, 
                           ZN => n639);
   U424 : OAI22_X1 port map( A1 => n362, A2 => n1176, B1 => n481, B2 => n363, 
                           ZN => n641);
   U425 : OAI22_X1 port map( A1 => n362, A2 => n1182, B1 => n483, B2 => n363, 
                           ZN => n643);
   U426 : OAI22_X1 port map( A1 => n362, A2 => n1188, B1 => n485, B2 => n363, 
                           ZN => n645);
   U427 : INV_X1 port map( A => n363, ZN => n362);
   U428 : OAI22_X1 port map( A1 => n1116, A2 => n1177, B1 => n715, B2 => n1117,
                           ZN => n633);
   U429 : OAI22_X1 port map( A1 => n1116, A2 => n1180, B1 => n725, B2 => n1117,
                           ZN => n634);
   U430 : OAI22_X1 port map( A1 => n1116, A2 => n1192, B1 => n765, B2 => n1117,
                           ZN => n638);
   U431 : OAI22_X1 port map( A1 => n1116, A2 => n1174, B1 => n705, B2 => n1117,
                           ZN => n632);
   U432 : OAI22_X1 port map( A1 => n1116, A2 => n1189, B1 => n755, B2 => n1117,
                           ZN => n637);
   U433 : OAI22_X1 port map( A1 => n1116, A2 => n1183, B1 => n735, B2 => n1117,
                           ZN => n635);
   U434 : OAI22_X1 port map( A1 => n1116, A2 => n1186, B1 => n745, B2 => n1117,
                           ZN => n636);
   U435 : OAI22_X1 port map( A1 => n1116, A2 => n1170, B1 => n695, B2 => n1117,
                           ZN => n631);
   U436 : OR3_X2 port map( A1 => ADD_RD1(0), A2 => ADD_RD1(1), A3 => n1111, ZN 
                           => n1169);
   U437 : AOI22_X1 port map( A1 => n1210, A2 => n872, B1 => n1207, B2 => n873, 
                           ZN => n871);
   U438 : NAND2_X1 port map( A1 => n779, A2 => n807, ZN => n1157);
   U439 : NAND2_X1 port map( A1 => n781, A2 => n808, ZN => n1158);
   U440 : NAND2_X1 port map( A1 => n783, A2 => n809, ZN => n1159);
   U441 : AND3_X1 port map( A1 => n1157, A2 => n1158, A3 => n1159, ZN => n803);
   U442 : NOR2_X1 port map( A1 => n938, A2 => n942, ZN => n779);
   U443 : NOR2_X1 port map( A1 => n942, A2 => ADD_RD2(2), ZN => n781);
   U444 : OAI221_X1 port map( B1 => n392, B2 => n1216, C1 => n726, C2 => n1213,
                           A => n877, ZN => n868);
   U445 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n999, B1 => n975, B2 => 
                           n91, ZN => n989);
   U446 : OAI221_X1 port map( B1 => n390, B2 => n1142, C1 => n746, C2 => n1201,
                           A => n998, ZN => n993);
   U447 : AOI22_X1 port map( A1 => n1197, A2 => n813, B1 => n1195, B2 => n949, 
                           ZN => n985);
   U448 : AOI22_X1 port map( A1 => n1197, A2 => n811, B1 => n1195, B2 => n98, 
                           ZN => n984);
   U449 : AOI22_X1 port map( A1 => n1197, A2 => n834, B1 => n1194, B2 => n950, 
                           ZN => n1065);
   U450 : AOI22_X1 port map( A1 => n1197, A2 => n840, B1 => n1196, B2 => n821, 
                           ZN => n988);
   U451 : AOI22_X1 port map( A1 => n1197, A2 => n855, B1 => n1194, B2 => n801, 
                           ZN => n976);
   U452 : AOI22_X1 port map( A1 => n1197, A2 => n861, B1 => n1196, B2 => n841, 
                           ZN => n1000);
   U453 : AOI22_X1 port map( A1 => n1197, A2 => n816, B1 => n1194, B2 => n817, 
                           ZN => n986);
   U454 : AOI22_X1 port map( A1 => n1197, A2 => n795, B1 => n1194, B2 => n796, 
                           ZN => n973);
   U455 : AOI22_X1 port map( A1 => n1197, A2 => n836, B1 => n1196, B2 => n837, 
                           ZN => n998);
   U456 : AOI22_X1 port map( A1 => n1197, A2 => n792, B1 => n1195, B2 => n903, 
                           ZN => n972);
   U457 : AOI22_X1 port map( A1 => n1197, A2 => n833, B1 => n1195, B2 => n917, 
                           ZN => n997);
   U458 : AOI22_X1 port map( A1 => n1197, A2 => n831, B1 => n1195, B2 => n99, 
                           ZN => n996);
   U459 : AOI22_X1 port map( A1 => n1210, A2 => n893, B1 => n1207, B2 => n894, 
                           ZN => n892);
   U460 : OAI221_X1 port map( B1 => n393, B2 => n1215, C1 => n716, C2 => n1212,
                           A => n898, ZN => n889);
   U461 : AOI22_X1 port map( A1 => n1209, A2 => n831, B1 => n1206, B2 => n99, 
                           ZN => n830);
   U462 : OAI221_X1 port map( B1 => n390, B2 => n1216, C1 => n746, C2 => n1213,
                           A => n835, ZN => n827);
   U463 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n1011, B1 => n975, B2 => 
                           n92, ZN => n1001);
   U464 : OAI221_X1 port map( B1 => n391, B2 => n1142, C1 => n736, C2 => n1201,
                           A => n1010, ZN => n1005);
   U465 : OAI221_X1 port map( B1 => n378, B2 => n1215, C1 => n694, C2 => n1212,
                           A => n939, ZN => n933);
   U466 : AOI22_X1 port map( A1 => n1211, A2 => n940, B1 => n1208, B2 => n923, 
                           ZN => n939);
   U467 : OAI221_X1 port map( B1 => n395, B2 => n1215, C1 => n696, C2 => n1212,
                           A => n943, ZN => n932);
   U468 : AND2_X1 port map( A1 => n961, A2 => n1017, ZN => n1160);
   U469 : AND2_X1 port map( A1 => n963, A2 => n1018, ZN => n1161);
   U470 : AND2_X1 port map( A1 => n1019, A2 => n965, ZN => n1162);
   U471 : NOR3_X1 port map( A1 => n1160, A2 => n1162, A3 => n1161, ZN => n1014)
                           ;
   U472 : OAI221_X1 port map( B1 => n478, B2 => n1217, C1 => n764, C2 => n1214,
                           A => n791, ZN => n782);
   U473 : OAI221_X1 port map( B1 => n374, B2 => n1216, C1 => n734, C2 => n1213,
                           A => n853, ZN => n848);
   U474 : AOI22_X1 port map( A1 => n1210, A2 => n854, B1 => n1207, B2 => n941, 
                           ZN => n853);
   U475 : OAI221_X1 port map( B1 => n391, B2 => n1216, C1 => n736, C2 => n1213,
                           A => n856, ZN => n847);
   U476 : OAI221_X1 port map( B1 => n375, B2 => n1216, C1 => n724, C2 => n1213,
                           A => n874, ZN => n869);
   U477 : OAI221_X1 port map( B1 => n477, B2 => n1217, C1 => n754, C2 => n1214,
                           A => n812, ZN => n808);
   U478 : AOI22_X1 port map( A1 => n1209, A2 => n813, B1 => n1206, B2 => n949, 
                           ZN => n812);
   U479 : OAI221_X1 port map( B1 => n389, B2 => n1217, C1 => n756, C2 => n1214,
                           A => n815, ZN => n807);
   U480 : OAI221_X1 port map( B1 => n376, B2 => n1215, C1 => n714, C2 => n1212,
                           A => n895, ZN => n890);
   U481 : OAI221_X1 port map( B1 => n373, B2 => n1216, C1 => n384, C2 => n1213,
                           A => n832, ZN => n828);
   U482 : BUF_X2 port map( A => n785, Z => n1215);
   U483 : AOI22_X1 port map( A1 => n1211, A2 => n913, B1 => n1208, B2 => n914, 
                           ZN => n912);
   U484 : OAI221_X1 port map( B1 => n377, B2 => n1215, C1 => n704, C2 => n1212,
                           A => n915, ZN => n910);
   U485 : OAI221_X1 port map( B1 => n407, B2 => n1204, C1 => n439, C2 => n1200,
                           A => n1065, ZN => n1063);
   U486 : OAI221_X1 port map( B1 => n406, B2 => n1205, C1 => n440, C2 => n1200,
                           A => n1048, ZN => n1047);
   U487 : OAI221_X1 port map( B1 => n710, B2 => n1204, C1 => n441, C2 => n1200,
                           A => n1036, ZN => n1035);
   U488 : OAI221_X1 port map( B1 => n393, B2 => n1205, C1 => n716, C2 => n1200,
                           A => n1034, ZN => n1029);
   U489 : OAI221_X1 port map( B1 => n357, B2 => n1216, C1 => n725, C2 => n1213,
                           A => n871, ZN => n870);
   U490 : OAI221_X1 port map( B1 => n355, B2 => n1216, C1 => n745, C2 => n1213,
                           A => n830, ZN => n829);
   U491 : AOI222_X1 port map( A1 => n779, A2 => n909, B1 => n910, B2 => n781, 
                           C1 => n783, C2 => n911, ZN => n906);
   U492 : OAI221_X1 port map( B1 => n360, B2 => n1215, C1 => n695, C2 => n1212,
                           A => n935, ZN => n934);
   U493 : OAI221_X1 port map( B1 => n494, B2 => n1217, C1 => n765, C2 => n1214,
                           A => n787, ZN => n784);
   U494 : OR2_X1 port map( A1 => n1113, A2 => n1111, ZN => n968);
   U495 : NAND2_X1 port map( A1 => n961, A2 => n1041, ZN => n1163);
   U496 : NAND2_X1 port map( A1 => n963, A2 => n1042, ZN => n1164);
   U497 : NAND2_X1 port map( A1 => n1043, A2 => n965, ZN => n1165);
   U498 : AND3_X1 port map( A1 => n1163, A2 => n1164, A3 => n1165, ZN => n1038)
                           ;
   U499 : OAI221_X1 port map( B1 => n356, B2 => n1216, C1 => n735, C2 => n1213,
                           A => n850, ZN => n849);
   U500 : OAI221_X1 port map( B1 => n358, B2 => n1215, C1 => n715, C2 => n1212,
                           A => n892, ZN => n891);
   U501 : OAI221_X1 port map( B1 => n493, B2 => n1217, C1 => n755, C2 => n1214,
                           A => n810, ZN => n809);
   U502 : OAI221_X1 port map( B1 => n394, B2 => n1204, C1 => n706, C2 => n1200,
                           A => n1046, ZN => n1041);
   U503 : NAND2_X1 port map( A1 => n961, A2 => n1055, ZN => n1166);
   U504 : NAND2_X1 port map( A1 => n963, A2 => n1056, ZN => n1167);
   U505 : NAND2_X1 port map( A1 => n965, A2 => n1057, ZN => n1168);
   U506 : AND3_X1 port map( A1 => n1166, A2 => n1167, A3 => n1168, ZN => n1050)
                           ;
   U507 : NOR2_X1 port map( A1 => n1059, A2 => n1061, ZN => n961);
   U508 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n987, B1 => n975, B2 => 
                           n90, ZN => n977);
   U509 : OAI221_X1 port map( B1 => n389, B2 => n1205, C1 => n756, C2 => n1202,
                           A => n986, ZN => n981);
   U510 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n1063, B1 => n975, B2 => 
                           n96, ZN => n1049);
   U511 : AOI22_X1 port map( A1 => ADD_RD1(4), A2 => n1023, B1 => n975, B2 => 
                           n93, ZN => n1013);
   U512 : OAI221_X1 port map( B1 => n392, B2 => n1205, C1 => n726, C2 => n1201,
                           A => n1022, ZN => n1017);
   U513 : OAI221_X1 port map( B1 => n395, B2 => n1142, C1 => n696, C2 => n1200,
                           A => n1062, ZN => n1055);
   U514 : OAI221_X1 port map( B1 => n478, B2 => n1203, C1 => n764, C2 => n1202,
                           A => n972, ZN => n964);
   U515 : AND2_X1 port map( A1 => n1053, A2 => n1064, ZN => n975);
   U516 : OAI221_X1 port map( B1 => n373, B2 => n1203, C1 => n384, C2 => n1201,
                           A => n997, ZN => n994);
   U517 : OAI221_X1 port map( B1 => n376, B2 => n1142, C1 => n714, C2 => n1200,
                           A => n1033, ZN => n1030);
   U518 : OAI221_X1 port map( B1 => n374, B2 => n1205, C1 => n734, C2 => n1201,
                           A => n1009, ZN => n1006);
   U519 : OAI221_X1 port map( B1 => n377, B2 => n1205, C1 => n704, C2 => n1200,
                           A => n1045, ZN => n1042);
   U520 : OAI221_X1 port map( B1 => n375, B2 => n1203, C1 => n724, C2 => n1201,
                           A => n1021, ZN => n1018);
   U521 : OAI221_X1 port map( B1 => n378, B2 => n1205, C1 => n694, C2 => n1200,
                           A => n1060, ZN => n1056);
   U522 : BUF_X1 port map( A => n1224, Z => n1223);
   U523 : AOI221_X1 port map( B1 => n773, B2 => n805, C1 => n1119, C2 => 
                           OUT2_6_port, A => n806, ZN => n804);
   U524 : AOI221_X1 port map( B1 => n773, B2 => n866, C1 => n1119, C2 => 
                           OUT2_3_port, A => n867, ZN => n865);
   U525 : AOI221_X1 port map( B1 => n773, B2 => n79, C1 => n1119, C2 => 
                           OUT2_0_port, A => n929, ZN => n928);
   U526 : AOI221_X1 port map( B1 => n773, B2 => n774, C1 => n775, C2 => 
                           OUT2_7_port, A => n776, ZN => n772);
   U527 : AOI221_X1 port map( B1 => n773, B2 => n845, C1 => n1119, C2 => 
                           OUT2_4_port, A => n846, ZN => n844);
   U528 : AOI221_X1 port map( B1 => n773, B2 => n887, C1 => n1119, C2 => 
                           OUT2_2_port, A => n888, ZN => n886);
   U529 : AOI221_X1 port map( B1 => n773, B2 => n825, C1 => n1119, C2 => 
                           OUT2_5_port, A => n826, ZN => n824);
   U530 : OAI221_X1 port map( B1 => n477, B2 => n1203, C1 => n754, C2 => n1202,
                           A => n985, ZN => n982);
   U531 : NOR3_X1 port map( A1 => n1111, A2 => ADD_RD1(0), A3 => n1115, ZN => 
                           n1054);
   U532 : OAI22_X1 port map( A1 => n495, A2 => n1152, B1 => n345, B2 => n960, 
                           ZN => n1052);
   U533 : OAI221_X1 port map( B1 => n359, B2 => n1204, C1 => n705, C2 => n1200,
                           A => n1044, ZN => n1043);
   U534 : OAI221_X1 port map( B1 => n360, B2 => n1142, C1 => n695, C2 => n1200,
                           A => n1058, ZN => n1057);
   U535 : OAI221_X1 port map( B1 => n494, B2 => n1203, C1 => n765, C2 => n1202,
                           A => n969, ZN => n966);
   U536 : OAI22_X1 port map( A1 => n499, A2 => n959, B1 => n341, B2 => n960, ZN
                           => n1004);
   U537 : OAI22_X1 port map( A1 => n498, A2 => n959, B1 => n342, B2 => n960, ZN
                           => n1016);
   U538 : OAI221_X1 port map( B1 => n356, B2 => n1204, C1 => n735, C2 => n1201,
                           A => n1008, ZN => n1007);
   U539 : OAI221_X1 port map( B1 => n357, B2 => n1204, C1 => n725, C2 => n1201,
                           A => n1020, ZN => n1019);
   U540 : OAI22_X1 port map( A1 => n501, A2 => n1152, B1 => n339, B2 => n960, 
                           ZN => n980);
   U541 : OAI22_X1 port map( A1 => n500, A2 => n1153, B1 => n340, B2 => n960, 
                           ZN => n992);
   U542 : OAI22_X1 port map( A1 => n497, A2 => n1153, B1 => n343, B2 => n960, 
                           ZN => n1028);
   U543 : OAI221_X1 port map( B1 => n358, B2 => n1204, C1 => n715, C2 => n1200,
                           A => n1032, ZN => n1031);
   U544 : OAI221_X1 port map( B1 => n493, B2 => n1203, C1 => n755, C2 => n1202,
                           A => n984, ZN => n983);
   U545 : OAI22_X1 port map( A1 => n500, A2 => n777, B1 => n340, B2 => n778, ZN
                           => n826);
   U546 : OAI22_X1 port map( A1 => n498, A2 => n777, B1 => n342, B2 => n778, ZN
                           => n867);
   U547 : OAI22_X1 port map( A1 => n497, A2 => n777, B1 => n343, B2 => n778, ZN
                           => n888);
   U548 : OAI22_X1 port map( A1 => n499, A2 => n777, B1 => n341, B2 => n778, ZN
                           => n846);
   U549 : OAI22_X1 port map( A1 => n501, A2 => n777, B1 => n339, B2 => n778, ZN
                           => n806);
   U550 : OAI22_X1 port map( A1 => n502, A2 => n777, B1 => n338, B2 => n778, ZN
                           => n776);
   U551 : OAI22_X1 port map( A1 => n495, A2 => n777, B1 => n345, B2 => n778, ZN
                           => n929);
   U552 : OAI22_X1 port map( A1 => n496, A2 => n777, B1 => n344, B2 => n778, ZN
                           => n908);
   U553 : NOR3_X1 port map( A1 => n775, A2 => ADD_RD2(0), A3 => n1218, ZN => 
                           n931);
   U554 : NOR3_X1 port map( A1 => ADD_RD2(0), A2 => ADD_RD2(1), A3 => n775, ZN 
                           => n947);
   U555 : INV_X1 port map( A => n775, ZN => n951);
   U556 : AOI222_X1 port map( A1 => n961, A2 => n993, B1 => n963, B2 => n994, 
                           C1 => n995, C2 => n965, ZN => n990);
   U557 : OAI221_X1 port map( B1 => n355, B2 => n1203, C1 => n745, C2 => n1201,
                           A => n996, ZN => n995);
   U558 : INV_X1 port map( A => ADD_RD2(1), ZN => n1218);
   U559 : INV_X1 port map( A => ADD_WR(0), ZN => n1219);
   U560 : INV_X1 port map( A => ADD_WR(1), ZN => n1220);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity COUNTER_N2 is

   port( CLK, RESET, ENABLE : in std_logic;  OUTPUT : out std_logic_vector (1 
         downto 0));

end COUNTER_N2;

architecture SYN_STRUCTURAL of COUNTER_N2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal OUTPUT_1_port, OUTPUT_0_port, n2, n3, n5, n7, n9, n4 : std_logic;

begin
   OUTPUT <= ( OUTPUT_1_port, OUTPUT_0_port );
   
   U7 : XOR2_X1 port map( A => n7, B => n2, Z => n3);
   counter_reg_0_inst : DFFR_X1 port map( D => n5, CK => CLK, RN => n4, Q => 
                           OUTPUT_0_port, QN => n9);
   counter_reg_1_inst : DFFR_X1 port map( D => n3, CK => CLK, RN => n4, Q => 
                           OUTPUT_1_port, QN => n2);
   U3 : NAND2_X1 port map( A1 => ENABLE, A2 => OUTPUT_0_port, ZN => n7);
   U4 : XNOR2_X1 port map( A => ENABLE, B => n9, ZN => n5);
   U5 : INV_X1 port map( A => RESET, ZN => n4);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity CIRCULAR_BUFFER_SHFT2_N8_1 is

   port( CLK, RESET, ROTR, ROTL : in std_logic;  INIT : in std_logic_vector (7 
         downto 0);  OUTPUT : out std_logic_vector (7 downto 0));

end CIRCULAR_BUFFER_SHFT2_N8_1;

architecture SYN_BEHAVIORAL of CIRCULAR_BUFFER_SHFT2_N8_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal OUTPUT_7_port, OUTPUT_6_port, OUTPUT_5_port, OUTPUT_4_port, 
      OUTPUT_3_port, OUTPUT_2_port, OUTPUT_1_port, OUTPUT_0_port, n13, n14, n15
      , n16, n17, n18, n19, n20, n21, n22, n23, n29, n30, n31, n32, n33, n10, 
      n11, n12, n24, n26, n28, n35, n37, n39, n41, n43, n34 : std_logic;

begin
   OUTPUT <= ( OUTPUT_7_port, OUTPUT_6_port, OUTPUT_5_port, OUTPUT_4_port, 
      OUTPUT_3_port, OUTPUT_2_port, OUTPUT_1_port, OUTPUT_0_port );
   
   U28 : NOR3_X2 port map( A1 => ROTR, A2 => ROTL, A3 => RESET, ZN => n24);
   rotator_reg_7_inst : DFF_X1 port map( D => n29, CK => CLK, Q => 
                           OUTPUT_7_port, QN => n16);
   rotator_reg_6_inst : DFF_X1 port map( D => n33, CK => CLK, Q => 
                           OUTPUT_6_port, QN => n14);
   rotator_reg_5_inst : DFF_X1 port map( D => n23, CK => CLK, Q => 
                           OUTPUT_5_port, QN => n19);
   rotator_reg_4_inst : DFF_X1 port map( D => n32, CK => CLK, Q => 
                           OUTPUT_4_port, QN => n17);
   rotator_reg_3_inst : DFF_X1 port map( D => n22, CK => CLK, Q => 
                           OUTPUT_3_port, QN => n15);
   rotator_reg_2_inst : DFF_X1 port map( D => n31, CK => CLK, Q => 
                           OUTPUT_2_port, QN => n13);
   rotator_reg_1_inst : DFF_X1 port map( D => n21, CK => CLK, Q => 
                           OUTPUT_1_port, QN => n20);
   rotator_reg_0_inst : DFF_X1 port map( D => n30, CK => CLK, Q => 
                           OUTPUT_0_port, QN => n18);
   U3 : NAND2_X1 port map( A1 => ROTR, A2 => n34, ZN => n10);
   U4 : OR3_X1 port map( A1 => RESET, A2 => ROTR, A3 => n24, ZN => n11);
   U5 : OAI221_X1 port map( B1 => n17, B2 => n10, C1 => n18, C2 => n11, A => 
                           n12, ZN => n33);
   U6 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_6_port, B1 => RESET, B2 => 
                           INIT(6), ZN => n12);
   U7 : OAI221_X1 port map( B1 => n13, B2 => n10, C1 => n14, C2 => n11, A => 
                           n26, ZN => n32);
   U8 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_4_port, B1 => INIT(4), B2 =>
                           RESET, ZN => n26);
   U9 : OAI221_X1 port map( B1 => n18, B2 => n10, C1 => n17, C2 => n11, A => 
                           n28, ZN => n31);
   U10 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_2_port, B1 => INIT(2), B2 
                           => RESET, ZN => n28);
   U11 : OAI221_X1 port map( B1 => n14, B2 => n10, C1 => n13, C2 => n11, A => 
                           n35, ZN => n30);
   U12 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_0_port, B1 => INIT(0), B2 
                           => RESET, ZN => n35);
   U13 : OAI221_X1 port map( B1 => n19, B2 => n10, C1 => n20, C2 => n11, A => 
                           n37, ZN => n29);
   U14 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_7_port, B1 => INIT(7), B2 
                           => RESET, ZN => n37);
   U15 : OAI221_X1 port map( B1 => n15, B2 => n10, C1 => n16, C2 => n11, A => 
                           n39, ZN => n23);
   U16 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_5_port, B1 => INIT(5), B2 
                           => RESET, ZN => n39);
   U17 : OAI221_X1 port map( B1 => n20, B2 => n10, C1 => n19, C2 => n11, A => 
                           n41, ZN => n22);
   U18 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_3_port, B1 => INIT(3), B2 
                           => RESET, ZN => n41);
   U19 : OAI221_X1 port map( B1 => n16, B2 => n10, C1 => n15, C2 => n11, A => 
                           n43, ZN => n21);
   U20 : AOI22_X1 port map( A1 => n24, A2 => OUTPUT_1_port, B1 => INIT(1), B2 
                           => RESET, ZN => n43);
   U21 : INV_X1 port map( A => RESET, ZN => n34);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity CIRCULAR_BUFFER_SHFT2_N8_0 is

   port( CLK, RESET, ROTR, ROTL : in std_logic;  INIT : in std_logic_vector (7 
         downto 0);  OUTPUT : out std_logic_vector (7 downto 0));

end CIRCULAR_BUFFER_SHFT2_N8_0;

architecture SYN_BEHAVIORAL of CIRCULAR_BUFFER_SHFT2_N8_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal OUTPUT_7_port, OUTPUT_6_port, OUTPUT_5_port, OUTPUT_4_port, 
      OUTPUT_3_port, OUTPUT_2_port, OUTPUT_1_port, OUTPUT_0_port, n24, n25, n26
      , n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n10, 
      n11, n12, n13, n15, n17, n19, n21, n23, n41, n43, n14 : std_logic;

begin
   OUTPUT <= ( OUTPUT_7_port, OUTPUT_6_port, OUTPUT_5_port, OUTPUT_4_port, 
      OUTPUT_3_port, OUTPUT_2_port, OUTPUT_1_port, OUTPUT_0_port );
   
   rotator_reg_1_inst : DFF_X1 port map( D => n31, CK => CLK, Q => 
                           OUTPUT_1_port, QN => n32);
   rotator_reg_3_inst : DFF_X1 port map( D => n30, CK => CLK, Q => 
                           OUTPUT_3_port, QN => n37);
   rotator_reg_5_inst : DFF_X1 port map( D => n29, CK => CLK, Q => 
                           OUTPUT_5_port, QN => n33);
   rotator_reg_7_inst : DFF_X1 port map( D => n28, CK => CLK, Q => 
                           OUTPUT_7_port, QN => n36);
   rotator_reg_0_inst : DFF_X1 port map( D => n27, CK => CLK, Q => 
                           OUTPUT_0_port, QN => n34);
   rotator_reg_2_inst : DFF_X1 port map( D => n26, CK => CLK, Q => 
                           OUTPUT_2_port, QN => n39);
   rotator_reg_4_inst : DFF_X1 port map( D => n25, CK => CLK, Q => 
                           OUTPUT_4_port, QN => n35);
   rotator_reg_6_inst : DFF_X1 port map( D => n24, CK => CLK, Q => 
                           OUTPUT_6_port, QN => n38);
   U28 : NOR3_X2 port map( A1 => ROTR, A2 => ROTL, A3 => RESET, ZN => n13);
   U3 : NAND2_X1 port map( A1 => ROTR, A2 => n14, ZN => n10);
   U4 : OR3_X1 port map( A1 => RESET, A2 => ROTR, A3 => n13, ZN => n11);
   U5 : OAI221_X1 port map( B1 => n35, B2 => n10, C1 => n34, C2 => n11, A => 
                           n43, ZN => n24);
   U6 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_6_port, B1 => INIT(6), B2 =>
                           RESET, ZN => n43);
   U7 : OAI221_X1 port map( B1 => n39, B2 => n10, C1 => n38, C2 => n11, A => 
                           n41, ZN => n25);
   U8 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_4_port, B1 => INIT(4), B2 =>
                           RESET, ZN => n41);
   U9 : OAI221_X1 port map( B1 => n34, B2 => n10, C1 => n35, C2 => n11, A => 
                           n23, ZN => n26);
   U10 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_2_port, B1 => INIT(2), B2 
                           => RESET, ZN => n23);
   U11 : OAI221_X1 port map( B1 => n38, B2 => n10, C1 => n39, C2 => n11, A => 
                           n21, ZN => n27);
   U12 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_0_port, B1 => INIT(0), B2 
                           => RESET, ZN => n21);
   U13 : OAI221_X1 port map( B1 => n33, B2 => n10, C1 => n32, C2 => n11, A => 
                           n19, ZN => n28);
   U14 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_7_port, B1 => INIT(7), B2 
                           => RESET, ZN => n19);
   U15 : OAI221_X1 port map( B1 => n37, B2 => n10, C1 => n36, C2 => n11, A => 
                           n17, ZN => n29);
   U16 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_5_port, B1 => INIT(5), B2 
                           => RESET, ZN => n17);
   U17 : OAI221_X1 port map( B1 => n32, B2 => n10, C1 => n33, C2 => n11, A => 
                           n15, ZN => n30);
   U18 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_3_port, B1 => INIT(3), B2 
                           => RESET, ZN => n15);
   U19 : OAI221_X1 port map( B1 => n36, B2 => n10, C1 => n37, C2 => n11, A => 
                           n12, ZN => n31);
   U20 : AOI22_X1 port map( A1 => n13, A2 => OUTPUT_1_port, B1 => RESET, B2 => 
                           INIT(1), ZN => n12);
   U21 : INV_X1 port map( A => RESET, ZN => n14);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity windowed_register_file_reg_size8_M20_N4_F4 is

   port( CLK, RESET : in std_logic;  ENABLE : in std_logic_vector (8 downto 0);
         IOMODE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, ADD_RD2 : in 
         std_logic_vector (4 downto 0);  DATAIN : in std_logic_vector (7 downto
         0);  OUT1, OUT2 : out std_logic_vector (7 downto 0));

end windowed_register_file_reg_size8_M20_N4_F4;

architecture SYN_BEHAVIORAL of windowed_register_file_reg_size8_M20_N4_F4 is

   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X4
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component PRIORITY_ENCODER_N4_1
      port( INPUT : in std_logic_vector (3 downto 0);  OUTPUT : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component PRIORITY_ENCODER_N4_0
      port( INPUT : in std_logic_vector (3 downto 0);  OUTPUT : out 
            std_logic_vector (1 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_1
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_2
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_3
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_4
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_5
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_6
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_7
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size4_0
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component register_file_reg_size8_file_size20
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (4 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   signal X_Logic0_port, global_read1, global_read2, global_write, 
      global_out1_7_port, global_out1_6_port, global_out1_5_port, 
      global_out1_4_port, global_out1_3_port, global_out1_2_port, 
      global_out1_1_port, global_out1_0_port, global_out2_7_port, 
      global_out2_6_port, global_out2_5_port, global_out2_4_port, 
      global_out2_3_port, global_out2_2_port, global_out2_1_port, 
      global_out2_0_port, io_out2_3_7_port, io_out2_3_6_port, io_out2_3_5_port,
      io_out2_3_4_port, io_out2_3_3_port, io_out2_3_2_port, io_out2_3_1_port, 
      io_out2_3_0_port, io_out2_2_7_port, io_out2_2_6_port, io_out2_2_5_port, 
      io_out2_2_4_port, io_out2_2_3_port, io_out2_2_2_port, io_out2_2_1_port, 
      io_out2_2_0_port, io_out2_1_7_port, io_out2_1_6_port, io_out2_1_5_port, 
      io_out2_1_4_port, io_out2_1_3_port, io_out2_1_2_port, io_out2_1_1_port, 
      io_out2_1_0_port, io_out2_0_7_port, io_out2_0_6_port, io_out2_0_5_port, 
      io_out2_0_4_port, io_out2_0_3_port, io_out2_0_2_port, io_out2_0_1_port, 
      io_out2_0_0_port, io_out1_3_7_port, io_out1_3_6_port, io_out1_3_5_port, 
      io_out1_3_4_port, io_out1_3_3_port, io_out1_3_2_port, io_out1_3_1_port, 
      io_out1_3_0_port, io_out1_2_7_port, io_out1_2_6_port, io_out1_2_5_port, 
      io_out1_2_4_port, io_out1_2_3_port, io_out1_2_2_port, io_out1_2_1_port, 
      io_out1_2_0_port, io_out1_1_7_port, io_out1_1_6_port, io_out1_1_5_port, 
      io_out1_1_4_port, io_out1_1_3_port, io_out1_1_2_port, io_out1_1_1_port, 
      io_out1_1_0_port, io_out1_0_7_port, io_out1_0_6_port, io_out1_0_5_port, 
      io_out1_0_4_port, io_out1_0_3_port, io_out1_0_2_port, io_out1_0_1_port, 
      io_out1_0_0_port, io_write_3_port, io_write_2_port, io_read2_3_port, 
      io_read2_2_port, io_read1_3_port, io_read1_2_port, loc_out2_3_7_port, 
      loc_out2_3_6_port, loc_out2_3_5_port, loc_out2_3_4_port, 
      loc_out2_3_3_port, loc_out2_3_2_port, loc_out2_3_1_port, 
      loc_out2_3_0_port, loc_out2_2_7_port, loc_out2_2_6_port, 
      loc_out2_2_5_port, loc_out2_2_4_port, loc_out2_2_3_port, 
      loc_out2_2_2_port, loc_out2_2_1_port, loc_out2_2_0_port, 
      loc_out2_1_7_port, loc_out2_1_6_port, loc_out2_1_5_port, 
      loc_out2_1_4_port, loc_out2_1_3_port, loc_out2_1_2_port, 
      loc_out2_1_1_port, loc_out2_1_0_port, loc_out2_0_7_port, 
      loc_out2_0_6_port, loc_out2_0_5_port, loc_out2_0_4_port, 
      loc_out2_0_3_port, loc_out2_0_2_port, loc_out2_0_1_port, 
      loc_out2_0_0_port, loc_out1_3_7_port, loc_out1_3_6_port, 
      loc_out1_3_5_port, loc_out1_3_4_port, loc_out1_3_3_port, 
      loc_out1_3_2_port, loc_out1_3_1_port, loc_out1_3_0_port, 
      loc_out1_2_7_port, loc_out1_2_6_port, loc_out1_2_5_port, 
      loc_out1_2_4_port, loc_out1_2_3_port, loc_out1_2_2_port, 
      loc_out1_2_1_port, loc_out1_2_0_port, loc_out1_1_7_port, 
      loc_out1_1_6_port, loc_out1_1_5_port, loc_out1_1_4_port, 
      loc_out1_1_3_port, loc_out1_1_2_port, loc_out1_1_1_port, 
      loc_out1_1_0_port, loc_out1_0_7_port, loc_out1_0_6_port, 
      loc_out1_0_5_port, loc_out1_0_4_port, loc_out1_0_3_port, 
      loc_out1_0_2_port, loc_out1_0_1_port, loc_out1_0_0_port, loc_write_3_port
      , loc_read2_3_port, loc_read1_3_port, write_temp_0_port, 
      read1_temp_0_port, read2_temp_0_port, INDEX_io_1_port, INDEX_io_0_port, 
      INDEX_loc_1_port, INDEX_loc_0_port, n28, n29, n31, n32, n33, n34, n35, 
      n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50
      , n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, 
      n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79
      , n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, 
      n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, 
      n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, 
      n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, 
      n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, 
      n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, 
      n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, 
      n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, 
      n179, n180, n181 : std_logic;

begin
   
   global_rf : register_file_reg_size8_file_size20 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(0), RD1 => global_read1, 
                           RD2 => global_read2, WR => global_write, ADD_WR(4) 
                           => X_Logic0_port, ADD_WR(3) => X_Logic0_port, 
                           ADD_WR(2) => write_temp_0_port, ADD_WR(1) => 
                           ADD_WR(1), ADD_WR(0) => ADD_WR(0), ADD_RD1(4) => 
                           X_Logic0_port, ADD_RD1(3) => X_Logic0_port, 
                           ADD_RD1(2) => read1_temp_0_port, ADD_RD1(1) => n180,
                           ADD_RD1(0) => ADD_RD1(0), ADD_RD2(4) => 
                           X_Logic0_port, ADD_RD2(3) => X_Logic0_port, 
                           ADD_RD2(2) => read2_temp_0_port, ADD_RD2(1) => n179,
                           ADD_RD2(0) => ADD_RD2(0), DATAIN(7) => DATAIN(7), 
                           DATAIN(6) => DATAIN(6), DATAIN(5) => DATAIN(5), 
                           DATAIN(4) => DATAIN(4), DATAIN(3) => DATAIN(3), 
                           DATAIN(2) => DATAIN(2), DATAIN(1) => DATAIN(1), 
                           DATAIN(0) => DATAIN(0), OUT1(7) => 
                           global_out1_7_port, OUT1(6) => global_out1_6_port, 
                           OUT1(5) => global_out1_5_port, OUT1(4) => 
                           global_out1_4_port, OUT1(3) => global_out1_3_port, 
                           OUT1(2) => global_out1_2_port, OUT1(1) => 
                           global_out1_1_port, OUT1(0) => global_out1_0_port, 
                           OUT2(7) => global_out2_7_port, OUT2(6) => 
                           global_out2_6_port, OUT2(5) => global_out2_5_port, 
                           OUT2(4) => global_out2_4_port, OUT2(3) => 
                           global_out2_3_port, OUT2(2) => global_out2_2_port, 
                           OUT2(1) => global_out2_1_port, OUT2(0) => 
                           global_out2_0_port);
   io_rf_0 : register_file_reg_size8_file_size4_0 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(1), RD1 => io_read1_2_port
                           , RD2 => io_read2_2_port, WR => io_write_2_port, 
                           ADD_WR(1) => ADD_WR(1), ADD_WR(0) => ADD_WR(0), 
                           ADD_RD1(1) => n180, ADD_RD1(0) => ADD_RD1(0), 
                           ADD_RD2(1) => n179, ADD_RD2(0) => ADD_RD2(0), 
                           DATAIN(7) => DATAIN(7), DATAIN(6) => DATAIN(6), 
                           DATAIN(5) => DATAIN(5), DATAIN(4) => DATAIN(4), 
                           DATAIN(3) => DATAIN(3), DATAIN(2) => DATAIN(2), 
                           DATAIN(1) => DATAIN(1), DATAIN(0) => DATAIN(0), 
                           OUT1(7) => io_out1_0_7_port, OUT1(6) => 
                           io_out1_0_6_port, OUT1(5) => io_out1_0_5_port, 
                           OUT1(4) => io_out1_0_4_port, OUT1(3) => 
                           io_out1_0_3_port, OUT1(2) => io_out1_0_2_port, 
                           OUT1(1) => io_out1_0_1_port, OUT1(0) => 
                           io_out1_0_0_port, OUT2(7) => io_out2_0_7_port, 
                           OUT2(6) => io_out2_0_6_port, OUT2(5) => 
                           io_out2_0_5_port, OUT2(4) => io_out2_0_4_port, 
                           OUT2(3) => io_out2_0_3_port, OUT2(2) => 
                           io_out2_0_2_port, OUT2(1) => io_out2_0_1_port, 
                           OUT2(0) => io_out2_0_0_port);
   loc_rf_0 : register_file_reg_size8_file_size4_7 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(2), RD1 => 
                           loc_read1_3_port, RD2 => loc_read2_3_port, WR => 
                           loc_write_3_port, ADD_WR(1) => ADD_WR(1), ADD_WR(0) 
                           => ADD_WR(0), ADD_RD1(1) => n180, ADD_RD1(0) => 
                           ADD_RD1(0), ADD_RD2(1) => n179, ADD_RD2(0) => 
                           ADD_RD2(0), DATAIN(7) => DATAIN(7), DATAIN(6) => 
                           DATAIN(6), DATAIN(5) => DATAIN(5), DATAIN(4) => 
                           DATAIN(4), DATAIN(3) => DATAIN(3), DATAIN(2) => 
                           DATAIN(2), DATAIN(1) => DATAIN(1), DATAIN(0) => 
                           DATAIN(0), OUT1(7) => loc_out1_0_7_port, OUT1(6) => 
                           loc_out1_0_6_port, OUT1(5) => loc_out1_0_5_port, 
                           OUT1(4) => loc_out1_0_4_port, OUT1(3) => 
                           loc_out1_0_3_port, OUT1(2) => loc_out1_0_2_port, 
                           OUT1(1) => loc_out1_0_1_port, OUT1(0) => 
                           loc_out1_0_0_port, OUT2(7) => loc_out2_0_7_port, 
                           OUT2(6) => loc_out2_0_6_port, OUT2(5) => 
                           loc_out2_0_5_port, OUT2(4) => loc_out2_0_4_port, 
                           OUT2(3) => loc_out2_0_3_port, OUT2(2) => 
                           loc_out2_0_2_port, OUT2(1) => loc_out2_0_1_port, 
                           OUT2(0) => loc_out2_0_0_port);
   io_rf_1 : register_file_reg_size8_file_size4_6 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(3), RD1 => io_read1_3_port
                           , RD2 => io_read2_3_port, WR => io_write_3_port, 
                           ADD_WR(1) => ADD_WR(1), ADD_WR(0) => ADD_WR(0), 
                           ADD_RD1(1) => n180, ADD_RD1(0) => ADD_RD1(0), 
                           ADD_RD2(1) => n179, ADD_RD2(0) => ADD_RD2(0), 
                           DATAIN(7) => DATAIN(7), DATAIN(6) => DATAIN(6), 
                           DATAIN(5) => DATAIN(5), DATAIN(4) => DATAIN(4), 
                           DATAIN(3) => DATAIN(3), DATAIN(2) => DATAIN(2), 
                           DATAIN(1) => DATAIN(1), DATAIN(0) => DATAIN(0), 
                           OUT1(7) => io_out1_1_7_port, OUT1(6) => 
                           io_out1_1_6_port, OUT1(5) => io_out1_1_5_port, 
                           OUT1(4) => io_out1_1_4_port, OUT1(3) => 
                           io_out1_1_3_port, OUT1(2) => io_out1_1_2_port, 
                           OUT1(1) => io_out1_1_1_port, OUT1(0) => 
                           io_out1_1_0_port, OUT2(7) => io_out2_1_7_port, 
                           OUT2(6) => io_out2_1_6_port, OUT2(5) => 
                           io_out2_1_5_port, OUT2(4) => io_out2_1_4_port, 
                           OUT2(3) => io_out2_1_3_port, OUT2(2) => 
                           io_out2_1_2_port, OUT2(1) => io_out2_1_1_port, 
                           OUT2(0) => io_out2_1_0_port);
   loc_rf_1 : register_file_reg_size8_file_size4_5 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(4), RD1 => 
                           loc_read1_3_port, RD2 => loc_read2_3_port, WR => 
                           loc_write_3_port, ADD_WR(1) => ADD_WR(1), ADD_WR(0) 
                           => ADD_WR(0), ADD_RD1(1) => n180, ADD_RD1(0) => 
                           ADD_RD1(0), ADD_RD2(1) => n179, ADD_RD2(0) => 
                           ADD_RD2(0), DATAIN(7) => DATAIN(7), DATAIN(6) => 
                           DATAIN(6), DATAIN(5) => DATAIN(5), DATAIN(4) => 
                           DATAIN(4), DATAIN(3) => DATAIN(3), DATAIN(2) => 
                           DATAIN(2), DATAIN(1) => DATAIN(1), DATAIN(0) => 
                           DATAIN(0), OUT1(7) => loc_out1_1_7_port, OUT1(6) => 
                           loc_out1_1_6_port, OUT1(5) => loc_out1_1_5_port, 
                           OUT1(4) => loc_out1_1_4_port, OUT1(3) => 
                           loc_out1_1_3_port, OUT1(2) => loc_out1_1_2_port, 
                           OUT1(1) => loc_out1_1_1_port, OUT1(0) => 
                           loc_out1_1_0_port, OUT2(7) => loc_out2_1_7_port, 
                           OUT2(6) => loc_out2_1_6_port, OUT2(5) => 
                           loc_out2_1_5_port, OUT2(4) => loc_out2_1_4_port, 
                           OUT2(3) => loc_out2_1_3_port, OUT2(2) => 
                           loc_out2_1_2_port, OUT2(1) => loc_out2_1_1_port, 
                           OUT2(0) => loc_out2_1_0_port);
   io_rf_2 : register_file_reg_size8_file_size4_4 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(5), RD1 => io_read1_2_port
                           , RD2 => io_read2_2_port, WR => io_write_2_port, 
                           ADD_WR(1) => ADD_WR(1), ADD_WR(0) => ADD_WR(0), 
                           ADD_RD1(1) => n180, ADD_RD1(0) => ADD_RD1(0), 
                           ADD_RD2(1) => n179, ADD_RD2(0) => ADD_RD2(0), 
                           DATAIN(7) => DATAIN(7), DATAIN(6) => DATAIN(6), 
                           DATAIN(5) => DATAIN(5), DATAIN(4) => DATAIN(4), 
                           DATAIN(3) => DATAIN(3), DATAIN(2) => DATAIN(2), 
                           DATAIN(1) => DATAIN(1), DATAIN(0) => DATAIN(0), 
                           OUT1(7) => io_out1_2_7_port, OUT1(6) => 
                           io_out1_2_6_port, OUT1(5) => io_out1_2_5_port, 
                           OUT1(4) => io_out1_2_4_port, OUT1(3) => 
                           io_out1_2_3_port, OUT1(2) => io_out1_2_2_port, 
                           OUT1(1) => io_out1_2_1_port, OUT1(0) => 
                           io_out1_2_0_port, OUT2(7) => io_out2_2_7_port, 
                           OUT2(6) => io_out2_2_6_port, OUT2(5) => 
                           io_out2_2_5_port, OUT2(4) => io_out2_2_4_port, 
                           OUT2(3) => io_out2_2_3_port, OUT2(2) => 
                           io_out2_2_2_port, OUT2(1) => io_out2_2_1_port, 
                           OUT2(0) => io_out2_2_0_port);
   loc_rf_2 : register_file_reg_size8_file_size4_3 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(6), RD1 => 
                           loc_read1_3_port, RD2 => loc_read2_3_port, WR => 
                           loc_write_3_port, ADD_WR(1) => ADD_WR(1), ADD_WR(0) 
                           => ADD_WR(0), ADD_RD1(1) => n180, ADD_RD1(0) => 
                           ADD_RD1(0), ADD_RD2(1) => n179, ADD_RD2(0) => 
                           ADD_RD2(0), DATAIN(7) => DATAIN(7), DATAIN(6) => 
                           DATAIN(6), DATAIN(5) => DATAIN(5), DATAIN(4) => 
                           DATAIN(4), DATAIN(3) => DATAIN(3), DATAIN(2) => 
                           DATAIN(2), DATAIN(1) => DATAIN(1), DATAIN(0) => 
                           DATAIN(0), OUT1(7) => loc_out1_2_7_port, OUT1(6) => 
                           loc_out1_2_6_port, OUT1(5) => loc_out1_2_5_port, 
                           OUT1(4) => loc_out1_2_4_port, OUT1(3) => 
                           loc_out1_2_3_port, OUT1(2) => loc_out1_2_2_port, 
                           OUT1(1) => loc_out1_2_1_port, OUT1(0) => 
                           loc_out1_2_0_port, OUT2(7) => loc_out2_2_7_port, 
                           OUT2(6) => loc_out2_2_6_port, OUT2(5) => 
                           loc_out2_2_5_port, OUT2(4) => loc_out2_2_4_port, 
                           OUT2(3) => loc_out2_2_3_port, OUT2(2) => 
                           loc_out2_2_2_port, OUT2(1) => loc_out2_2_1_port, 
                           OUT2(0) => loc_out2_2_0_port);
   io_rf_3 : register_file_reg_size8_file_size4_2 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(7), RD1 => io_read1_3_port
                           , RD2 => io_read2_3_port, WR => io_write_3_port, 
                           ADD_WR(1) => ADD_WR(1), ADD_WR(0) => ADD_WR(0), 
                           ADD_RD1(1) => n180, ADD_RD1(0) => ADD_RD1(0), 
                           ADD_RD2(1) => n179, ADD_RD2(0) => ADD_RD2(0), 
                           DATAIN(7) => DATAIN(7), DATAIN(6) => DATAIN(6), 
                           DATAIN(5) => DATAIN(5), DATAIN(4) => DATAIN(4), 
                           DATAIN(3) => DATAIN(3), DATAIN(2) => DATAIN(2), 
                           DATAIN(1) => DATAIN(1), DATAIN(0) => DATAIN(0), 
                           OUT1(7) => io_out1_3_7_port, OUT1(6) => 
                           io_out1_3_6_port, OUT1(5) => io_out1_3_5_port, 
                           OUT1(4) => io_out1_3_4_port, OUT1(3) => 
                           io_out1_3_3_port, OUT1(2) => io_out1_3_2_port, 
                           OUT1(1) => io_out1_3_1_port, OUT1(0) => 
                           io_out1_3_0_port, OUT2(7) => io_out2_3_7_port, 
                           OUT2(6) => io_out2_3_6_port, OUT2(5) => 
                           io_out2_3_5_port, OUT2(4) => io_out2_3_4_port, 
                           OUT2(3) => io_out2_3_3_port, OUT2(2) => 
                           io_out2_3_2_port, OUT2(1) => io_out2_3_1_port, 
                           OUT2(0) => io_out2_3_0_port);
   loc_rf_3 : register_file_reg_size8_file_size4_1 port map( CLK => CLK, RESET 
                           => n181, ENABLE => ENABLE(8), RD1 => 
                           loc_read1_3_port, RD2 => loc_read2_3_port, WR => 
                           loc_write_3_port, ADD_WR(1) => ADD_WR(1), ADD_WR(0) 
                           => ADD_WR(0), ADD_RD1(1) => n180, ADD_RD1(0) => 
                           ADD_RD1(0), ADD_RD2(1) => n179, ADD_RD2(0) => 
                           ADD_RD2(0), DATAIN(7) => DATAIN(7), DATAIN(6) => 
                           DATAIN(6), DATAIN(5) => DATAIN(5), DATAIN(4) => 
                           DATAIN(4), DATAIN(3) => DATAIN(3), DATAIN(2) => 
                           DATAIN(2), DATAIN(1) => DATAIN(1), DATAIN(0) => 
                           DATAIN(0), OUT1(7) => loc_out1_3_7_port, OUT1(6) => 
                           loc_out1_3_6_port, OUT1(5) => loc_out1_3_5_port, 
                           OUT1(4) => loc_out1_3_4_port, OUT1(3) => 
                           loc_out1_3_3_port, OUT1(2) => loc_out1_3_2_port, 
                           OUT1(1) => loc_out1_3_1_port, OUT1(0) => 
                           loc_out1_3_0_port, OUT2(7) => loc_out2_3_7_port, 
                           OUT2(6) => loc_out2_3_6_port, OUT2(5) => 
                           loc_out2_3_5_port, OUT2(4) => loc_out2_3_4_port, 
                           OUT2(3) => loc_out2_3_3_port, OUT2(2) => 
                           loc_out2_3_2_port, OUT2(1) => loc_out2_3_1_port, 
                           OUT2(0) => loc_out2_3_0_port);
   index_gen_io : PRIORITY_ENCODER_N4_0 port map( INPUT(3) => ENABLE(7), 
                           INPUT(2) => ENABLE(5), INPUT(1) => ENABLE(3), 
                           INPUT(0) => ENABLE(1), OUTPUT(1) => INDEX_io_1_port,
                           OUTPUT(0) => INDEX_io_0_port);
   index_gen_loc : PRIORITY_ENCODER_N4_1 port map( INPUT(3) => ENABLE(8), 
                           INPUT(2) => ENABLE(6), INPUT(1) => ENABLE(4), 
                           INPUT(0) => ENABLE(2), OUTPUT(1) => INDEX_loc_1_port
                           , OUTPUT(0) => INDEX_loc_0_port);
   X_Logic0_port <= '0';
   U5 : NOR2_X2 port map( A1 => n177, A2 => n31, ZN => loc_read2_3_port);
   U140 : NOR2_X2 port map( A1 => INDEX_loc_0_port, A2 => INDEX_loc_1_port, ZN 
                           => n58);
   U182 : NAND3_X1 port map( A1 => ENABLE(7), A2 => ENABLE(1), A3 => ENABLE(8),
                           ZN => n108);
   U3 : INV_X1 port map( A => ADD_RD1(4), ZN => read1_temp_0_port);
   U4 : NAND3_X1 port map( A1 => n100, A2 => read2_temp_0_port, A3 => 
                           ADD_RD2(2), ZN => n177);
   U6 : OAI22_X1 port map( A1 => n106, A2 => n99, B1 => n107, B2 => n103, ZN =>
                           n61);
   U7 : OAI22_X1 port map( A1 => n106, A2 => n158, B1 => n107, B2 => n160, ZN 
                           => n119);
   U8 : OAI22_X1 port map( A1 => n104, A2 => n99, B1 => n105, B2 => n103, ZN =>
                           n62);
   U9 : OAI22_X1 port map( A1 => n104, A2 => n158, B1 => n105, B2 => n160, ZN 
                           => n120);
   U10 : OAI22_X1 port map( A1 => n109, A2 => n99, B1 => n110, B2 => n98, ZN =>
                           n60);
   U11 : OAI22_X1 port map( A1 => n109, A2 => n158, B1 => n110, B2 => n157, ZN 
                           => n118);
   U12 : OAI22_X1 port map( A1 => n101, A2 => n99, B1 => n102, B2 => n103, ZN 
                           => n51);
   U13 : OAI22_X1 port map( A1 => n101, A2 => n158, B1 => n102, B2 => n160, ZN 
                           => n113);
   U14 : INV_X1 port map( A => n163, ZN => n170);
   U15 : NOR2_X2 port map( A1 => n156, A2 => INDEX_loc_1_port, ZN => n59);
   U16 : XNOR2_X1 port map( A => INDEX_io_0_port, B => n169, ZN => n163);
   U17 : AND2_X1 port map( A1 => INDEX_loc_1_port, A2 => n156, ZN => n56);
   U18 : AND2_X1 port map( A1 => INDEX_loc_0_port, A2 => INDEX_loc_1_port, ZN 
                           => n57);
   U19 : INV_X1 port map( A => INDEX_io_1_port, ZN => n169);
   U20 : NAND2_X1 port map( A1 => n175, A2 => n36, ZN => n164);
   U21 : INV_X1 port map( A => n39, ZN => n99);
   U22 : INV_X1 port map( A => n43, ZN => n158);
   U23 : NAND2_X1 port map( A1 => INDEX_io_0_port, A2 => n36, ZN => n167);
   U24 : INV_X1 port map( A => INDEX_loc_0_port, ZN => n156);
   U25 : INV_X1 port map( A => n174, ZN => n110);
   U26 : OAI221_X1 port map( B1 => n163, B2 => n167, C1 => INDEX_io_1_port, C2 
                           => n166, A => n108, ZN => n174);
   U27 : INV_X1 port map( A => n161, ZN => n102);
   U28 : OAI22_X1 port map( A1 => INDEX_io_1_port, A2 => n162, B1 => n163, B2 
                           => n164, ZN => n161);
   U29 : INV_X1 port map( A => n176, ZN => n109);
   U30 : OAI22_X1 port map( A1 => n163, A2 => n162, B1 => INDEX_io_1_port, B2 
                           => n164, ZN => n176);
   U31 : INV_X1 port map( A => n165, ZN => n101);
   U32 : OAI22_X1 port map( A1 => n163, A2 => n166, B1 => INDEX_io_1_port, B2 
                           => n167, ZN => n165);
   U33 : INV_X1 port map( A => n168, ZN => n105);
   U34 : OAI22_X1 port map( A1 => n169, A2 => n162, B1 => n170, B2 => n164, ZN 
                           => n168);
   U35 : INV_X1 port map( A => n172, ZN => n107);
   U36 : OAI22_X1 port map( A1 => n169, A2 => n166, B1 => n170, B2 => n167, ZN 
                           => n172);
   U37 : INV_X1 port map( A => n173, ZN => n106);
   U38 : OAI22_X1 port map( A1 => n170, A2 => n162, B1 => n169, B2 => n164, ZN 
                           => n173);
   U39 : INV_X1 port map( A => n171, ZN => n104);
   U40 : OAI22_X1 port map( A1 => n170, A2 => n166, B1 => n169, B2 => n167, ZN 
                           => n171);
   U41 : INV_X1 port map( A => INDEX_io_0_port, ZN => n175);
   U42 : NOR3_X1 port map( A1 => ADD_RD2(2), A2 => n100, A3 => ADD_RD2(4), ZN 
                           => n38);
   U43 : NOR3_X1 port map( A1 => n28, A2 => ADD_WR(3), A3 => n29, ZN => 
                           loc_write_3_port);
   U44 : INV_X1 port map( A => ADD_WR(2), ZN => n28);
   U45 : NOR3_X1 port map( A1 => n35, A2 => ADD_WR(2), A3 => n29, ZN => 
                           io_write_2_port);
   U46 : INV_X1 port map( A => ADD_WR(4), ZN => write_temp_0_port);
   U47 : NOR2_X1 port map( A1 => n45, A2 => n46, ZN => global_write);
   U48 : INV_X1 port map( A => WR, ZN => n46);
   U49 : NOR2_X1 port map( A1 => n37, A2 => n31, ZN => io_read2_3_port);
   U50 : NAND2_X1 port map( A1 => WR, A2 => write_temp_0_port, ZN => n29);
   U51 : BUF_X1 port map( A => RESET, Z => n181);
   U52 : INV_X1 port map( A => RD2, ZN => n31);
   U53 : AOI22_X1 port map( A1 => loc_out2_0_2_port, A2 => n58, B1 => 
                           loc_out2_1_2_port, B2 => n59, ZN => n86);
   U54 : AOI22_X1 port map( A1 => loc_out2_0_0_port, A2 => n58, B1 => 
                           loc_out2_1_0_port, B2 => n59, ZN => n96);
   U55 : AOI22_X1 port map( A1 => loc_out2_0_1_port, A2 => n58, B1 => 
                           loc_out2_1_1_port, B2 => n59, ZN => n91);
   U56 : AOI22_X1 port map( A1 => loc_out2_0_3_port, A2 => n58, B1 => 
                           loc_out2_1_3_port, B2 => n59, ZN => n81);
   U57 : AOI22_X1 port map( A1 => loc_out2_0_4_port, A2 => n58, B1 => 
                           loc_out2_1_4_port, B2 => n59, ZN => n76);
   U58 : AOI22_X1 port map( A1 => loc_out2_0_5_port, A2 => n58, B1 => 
                           loc_out2_1_5_port, B2 => n59, ZN => n71);
   U59 : AOI22_X1 port map( A1 => loc_out2_0_6_port, A2 => n58, B1 => 
                           loc_out2_1_6_port, B2 => n59, ZN => n66);
   U60 : AOI22_X1 port map( A1 => loc_out2_0_7_port, A2 => n58, B1 => 
                           loc_out2_1_7_port, B2 => n59, ZN => n54);
   U61 : AOI22_X1 port map( A1 => loc_out1_0_0_port, A2 => n58, B1 => 
                           loc_out1_1_0_port, B2 => n59, ZN => n154);
   U62 : AOI22_X1 port map( A1 => loc_out1_0_1_port, A2 => n58, B1 => 
                           loc_out1_1_1_port, B2 => n59, ZN => n149);
   U63 : AOI22_X1 port map( A1 => loc_out1_0_2_port, A2 => n58, B1 => 
                           loc_out1_1_2_port, B2 => n59, ZN => n144);
   U64 : AOI22_X1 port map( A1 => loc_out1_0_3_port, A2 => n58, B1 => 
                           loc_out1_1_3_port, B2 => n59, ZN => n139);
   U65 : AOI22_X1 port map( A1 => loc_out1_0_4_port, A2 => n58, B1 => 
                           loc_out1_1_4_port, B2 => n59, ZN => n134);
   U66 : AOI22_X1 port map( A1 => loc_out1_0_5_port, A2 => n58, B1 => 
                           loc_out1_1_5_port, B2 => n59, ZN => n129);
   U67 : AOI22_X1 port map( A1 => loc_out1_0_6_port, A2 => n58, B1 => 
                           loc_out1_1_6_port, B2 => n59, ZN => n124);
   U68 : AOI22_X1 port map( A1 => loc_out1_0_7_port, A2 => n58, B1 => 
                           loc_out1_1_7_port, B2 => n59, ZN => n116);
   U69 : AOI22_X1 port map( A1 => loc_out2_2_2_port, A2 => n56, B1 => 
                           loc_out2_3_2_port, B2 => n57, ZN => n87);
   U70 : AOI22_X1 port map( A1 => loc_out2_2_0_port, A2 => n56, B1 => 
                           loc_out2_3_0_port, B2 => n57, ZN => n97);
   U71 : AOI22_X1 port map( A1 => loc_out2_2_1_port, A2 => n56, B1 => 
                           loc_out2_3_1_port, B2 => n57, ZN => n92);
   U72 : AOI22_X1 port map( A1 => loc_out2_2_3_port, A2 => n56, B1 => 
                           loc_out2_3_3_port, B2 => n57, ZN => n82);
   U73 : AOI22_X1 port map( A1 => loc_out2_2_4_port, A2 => n56, B1 => 
                           loc_out2_3_4_port, B2 => n57, ZN => n77);
   U74 : AOI22_X1 port map( A1 => loc_out2_2_5_port, A2 => n56, B1 => 
                           loc_out2_3_5_port, B2 => n57, ZN => n72);
   U75 : AOI22_X1 port map( A1 => loc_out2_2_6_port, A2 => n56, B1 => 
                           loc_out2_3_6_port, B2 => n57, ZN => n67);
   U76 : AOI22_X1 port map( A1 => loc_out2_2_7_port, A2 => n56, B1 => 
                           loc_out2_3_7_port, B2 => n57, ZN => n55);
   U77 : AOI22_X1 port map( A1 => loc_out1_2_0_port, A2 => n56, B1 => 
                           loc_out1_3_0_port, B2 => n57, ZN => n155);
   U78 : AOI22_X1 port map( A1 => loc_out1_2_1_port, A2 => n56, B1 => 
                           loc_out1_3_1_port, B2 => n57, ZN => n150);
   U79 : AOI22_X1 port map( A1 => loc_out1_2_2_port, A2 => n56, B1 => 
                           loc_out1_3_2_port, B2 => n57, ZN => n145);
   U80 : AOI22_X1 port map( A1 => loc_out1_2_3_port, A2 => n56, B1 => 
                           loc_out1_3_3_port, B2 => n57, ZN => n140);
   U81 : AOI22_X1 port map( A1 => loc_out1_2_4_port, A2 => n56, B1 => 
                           loc_out1_3_4_port, B2 => n57, ZN => n135);
   U82 : AOI22_X1 port map( A1 => loc_out1_2_5_port, A2 => n56, B1 => 
                           loc_out1_3_5_port, B2 => n57, ZN => n130);
   U83 : AOI22_X1 port map( A1 => loc_out1_2_6_port, A2 => n56, B1 => 
                           loc_out1_3_6_port, B2 => n57, ZN => n125);
   U84 : AOI22_X1 port map( A1 => loc_out1_2_7_port, A2 => n56, B1 => 
                           loc_out1_3_7_port, B2 => n57, ZN => n117);
   U85 : NAND2_X1 port map( A1 => n151, A2 => n152, ZN => OUT1(0));
   U86 : AOI221_X1 port map( B1 => io_out1_1_0_port, B2 => n113, C1 => 
                           global_out1_0_port, C2 => n114, A => n153, ZN => 
                           n152);
   U87 : AOI222_X1 port map( A1 => io_out1_0_0_port, A2 => n118, B1 => 
                           io_out1_2_0_port, B2 => n119, C1 => io_out1_3_0_port
                           , C2 => n120, ZN => n151);
   U88 : NAND2_X1 port map( A1 => n146, A2 => n147, ZN => OUT1(1));
   U89 : AOI221_X1 port map( B1 => io_out1_1_1_port, B2 => n113, C1 => 
                           global_out1_1_port, C2 => n114, A => n148, ZN => 
                           n147);
   U90 : AOI222_X1 port map( A1 => io_out1_0_1_port, A2 => n118, B1 => 
                           io_out1_2_1_port, B2 => n119, C1 => io_out1_3_1_port
                           , C2 => n120, ZN => n146);
   U91 : NAND2_X1 port map( A1 => n141, A2 => n142, ZN => OUT1(2));
   U92 : AOI221_X1 port map( B1 => io_out1_1_2_port, B2 => n113, C1 => 
                           global_out1_2_port, C2 => n114, A => n143, ZN => 
                           n142);
   U93 : AOI222_X1 port map( A1 => io_out1_0_2_port, A2 => n118, B1 => 
                           io_out1_2_2_port, B2 => n119, C1 => io_out1_3_2_port
                           , C2 => n120, ZN => n141);
   U94 : NAND2_X1 port map( A1 => n136, A2 => n137, ZN => OUT1(3));
   U95 : AOI221_X1 port map( B1 => io_out1_1_3_port, B2 => n113, C1 => 
                           global_out1_3_port, C2 => n114, A => n138, ZN => 
                           n137);
   U96 : AOI222_X1 port map( A1 => io_out1_0_3_port, A2 => n118, B1 => 
                           io_out1_2_3_port, B2 => n119, C1 => io_out1_3_3_port
                           , C2 => n120, ZN => n136);
   U97 : NAND2_X1 port map( A1 => n131, A2 => n132, ZN => OUT1(4));
   U98 : AOI221_X1 port map( B1 => io_out1_1_4_port, B2 => n113, C1 => 
                           global_out1_4_port, C2 => n114, A => n133, ZN => 
                           n132);
   U99 : AOI222_X1 port map( A1 => io_out1_0_4_port, A2 => n118, B1 => 
                           io_out1_2_4_port, B2 => n119, C1 => io_out1_3_4_port
                           , C2 => n120, ZN => n131);
   U100 : NAND2_X1 port map( A1 => n126, A2 => n127, ZN => OUT1(5));
   U101 : AOI221_X1 port map( B1 => io_out1_1_5_port, B2 => n113, C1 => 
                           global_out1_5_port, C2 => n114, A => n128, ZN => 
                           n127);
   U102 : AOI222_X1 port map( A1 => io_out1_0_5_port, A2 => n118, B1 => 
                           io_out1_2_5_port, B2 => n119, C1 => io_out1_3_5_port
                           , C2 => n120, ZN => n126);
   U103 : NAND2_X1 port map( A1 => n121, A2 => n122, ZN => OUT1(6));
   U104 : AOI221_X1 port map( B1 => io_out1_1_6_port, B2 => n113, C1 => 
                           global_out1_6_port, C2 => n114, A => n123, ZN => 
                           n122);
   U105 : AOI222_X1 port map( A1 => io_out1_0_6_port, A2 => n118, B1 => 
                           io_out1_2_6_port, B2 => n119, C1 => io_out1_3_6_port
                           , C2 => n120, ZN => n121);
   U106 : NAND2_X1 port map( A1 => n111, A2 => n112, ZN => OUT1(7));
   U107 : AOI221_X1 port map( B1 => io_out1_1_7_port, B2 => n113, C1 => 
                           global_out1_7_port, C2 => n114, A => n115, ZN => 
                           n112);
   U108 : AOI222_X1 port map( A1 => io_out1_0_7_port, A2 => n118, B1 => 
                           io_out1_2_7_port, B2 => n119, C1 => io_out1_3_7_port
                           , C2 => n120, ZN => n111);
   U109 : NAND2_X1 port map( A1 => n83, A2 => n84, ZN => OUT2(2));
   U110 : AOI221_X1 port map( B1 => io_out2_1_2_port, B2 => n51, C1 => 
                           global_out2_2_port, C2 => n52, A => n85, ZN => n84);
   U111 : AOI222_X1 port map( A1 => io_out2_0_2_port, A2 => n60, B1 => 
                           io_out2_2_2_port, B2 => n61, C1 => io_out2_3_2_port,
                           C2 => n62, ZN => n83);
   U112 : NAND2_X1 port map( A1 => n93, A2 => n94, ZN => OUT2(0));
   U113 : AOI221_X1 port map( B1 => io_out2_1_0_port, B2 => n51, C1 => 
                           global_out2_0_port, C2 => n52, A => n95, ZN => n94);
   U114 : AOI222_X1 port map( A1 => io_out2_0_0_port, A2 => n60, B1 => 
                           io_out2_2_0_port, B2 => n61, C1 => io_out2_3_0_port,
                           C2 => n62, ZN => n93);
   U115 : NAND2_X1 port map( A1 => n88, A2 => n89, ZN => OUT2(1));
   U116 : AOI221_X1 port map( B1 => io_out2_1_1_port, B2 => n51, C1 => 
                           global_out2_1_port, C2 => n52, A => n90, ZN => n89);
   U117 : AOI222_X1 port map( A1 => io_out2_0_1_port, A2 => n60, B1 => 
                           io_out2_2_1_port, B2 => n61, C1 => io_out2_3_1_port,
                           C2 => n62, ZN => n88);
   U118 : NAND2_X1 port map( A1 => n78, A2 => n79, ZN => OUT2(3));
   U119 : AOI221_X1 port map( B1 => io_out2_1_3_port, B2 => n51, C1 => 
                           global_out2_3_port, C2 => n52, A => n80, ZN => n79);
   U120 : AOI222_X1 port map( A1 => io_out2_0_3_port, A2 => n60, B1 => 
                           io_out2_2_3_port, B2 => n61, C1 => io_out2_3_3_port,
                           C2 => n62, ZN => n78);
   U121 : NAND2_X1 port map( A1 => n73, A2 => n74, ZN => OUT2(4));
   U122 : AOI221_X1 port map( B1 => io_out2_1_4_port, B2 => n51, C1 => 
                           global_out2_4_port, C2 => n52, A => n75, ZN => n74);
   U123 : AOI222_X1 port map( A1 => io_out2_0_4_port, A2 => n60, B1 => 
                           io_out2_2_4_port, B2 => n61, C1 => io_out2_3_4_port,
                           C2 => n62, ZN => n73);
   U124 : NAND2_X1 port map( A1 => n68, A2 => n69, ZN => OUT2(5));
   U125 : AOI221_X1 port map( B1 => io_out2_1_5_port, B2 => n51, C1 => 
                           global_out2_5_port, C2 => n52, A => n70, ZN => n69);
   U126 : AOI222_X1 port map( A1 => io_out2_0_5_port, A2 => n60, B1 => 
                           io_out2_2_5_port, B2 => n61, C1 => io_out2_3_5_port,
                           C2 => n62, ZN => n68);
   U127 : NAND2_X1 port map( A1 => n63, A2 => n64, ZN => OUT2(6));
   U128 : AOI221_X1 port map( B1 => io_out2_1_6_port, B2 => n51, C1 => 
                           global_out2_6_port, C2 => n52, A => n65, ZN => n64);
   U129 : AOI222_X1 port map( A1 => io_out2_0_6_port, A2 => n60, B1 => 
                           io_out2_2_6_port, B2 => n61, C1 => io_out2_3_6_port,
                           C2 => n62, ZN => n63);
   U130 : NAND2_X1 port map( A1 => n49, A2 => n50, ZN => OUT2(7));
   U131 : AOI221_X1 port map( B1 => io_out2_1_7_port, B2 => n51, C1 => 
                           global_out2_7_port, C2 => n52, A => n53, ZN => n50);
   U132 : AOI222_X1 port map( A1 => io_out2_0_7_port, A2 => n60, B1 => 
                           io_out2_2_7_port, B2 => n61, C1 => io_out2_3_7_port,
                           C2 => n62, ZN => n49);
   U133 : NOR3_X1 port map( A1 => ADD_RD1(3), A2 => ADD_RD1(4), A3 => 
                           ADD_RD1(2), ZN => n43);
   U134 : NOR2_X1 port map( A1 => n40, A2 => n31, ZN => io_read2_2_port);
   U135 : CLKBUF_X1 port map( A => n42, Z => n178);
   U136 : NOR3_X1 port map( A1 => ADD_RD1(2), A2 => ADD_RD1(4), A3 => n159, ZN 
                           => n42);
   U137 : INV_X1 port map( A => ADD_RD2(4), ZN => read2_temp_0_port);
   U138 : INV_X1 port map( A => ADD_RD1(3), ZN => n159);
   U139 : NOR2_X1 port map( A1 => n32, A2 => n33, ZN => loc_read1_3_port);
   U141 : AOI21_X1 port map( B1 => ADD_RD1(3), B2 => ADD_RD1(2), A => 
                           ADD_RD1(4), ZN => n48);
   U142 : AOI21_X1 port map( B1 => ADD_WR(3), B2 => ADD_WR(2), A => ADD_WR(4), 
                           ZN => n45);
   U143 : INV_X1 port map( A => RD1, ZN => n33);
   U144 : XNOR2_X1 port map( A => ADD_WR(3), B => IOMODE, ZN => n34);
   U145 : INV_X1 port map( A => IOMODE, ZN => n36);
   U146 : NOR3_X1 port map( A1 => ADD_RD2(2), A2 => ADD_RD2(4), A3 => 
                           ADD_RD2(3), ZN => n39);
   U147 : NAND2_X1 port map( A1 => IOMODE, A2 => n175, ZN => n166);
   U148 : NAND2_X1 port map( A1 => INDEX_io_0_port, A2 => IOMODE, ZN => n162);
   U149 : INV_X1 port map( A => ADD_RD2(3), ZN => n100);
   U150 : AOI21_X1 port map( B1 => ADD_RD2(2), B2 => ADD_RD2(3), A => 
                           ADD_RD2(4), ZN => n47);
   U151 : AND3_X1 port map( A1 => n177, A2 => n98, A3 => n99, ZN => n52);
   U152 : AOI21_X1 port map( B1 => n54, B2 => n55, A => n177, ZN => n53);
   U153 : AOI21_X1 port map( B1 => n86, B2 => n87, A => n177, ZN => n85);
   U154 : AOI21_X1 port map( B1 => n91, B2 => n92, A => n177, ZN => n90);
   U155 : AOI21_X1 port map( B1 => n96, B2 => n97, A => n177, ZN => n95);
   U156 : AOI21_X1 port map( B1 => n81, B2 => n82, A => n177, ZN => n80);
   U157 : AOI21_X1 port map( B1 => n66, B2 => n67, A => n177, ZN => n65);
   U158 : AOI21_X1 port map( B1 => n71, B2 => n72, A => n177, ZN => n70);
   U159 : AOI21_X1 port map( B1 => n76, B2 => n77, A => n177, ZN => n75);
   U160 : NOR2_X1 port map( A1 => n41, A2 => n33, ZN => io_read1_3_port);
   U161 : NOR2_X1 port map( A1 => n44, A2 => n33, ZN => io_read1_2_port);
   U162 : NOR2_X1 port map( A1 => n47, A2 => n31, ZN => global_read2);
   U163 : AND3_X1 port map( A1 => n32, A2 => n157, A3 => n158, ZN => n114);
   U164 : AOI21_X1 port map( B1 => n116, B2 => n117, A => n32, ZN => n115);
   U165 : AOI21_X1 port map( B1 => n144, B2 => n145, A => n32, ZN => n143);
   U166 : AOI21_X1 port map( B1 => n149, B2 => n150, A => n32, ZN => n148);
   U167 : AOI21_X1 port map( B1 => n154, B2 => n155, A => n32, ZN => n153);
   U168 : AOI21_X1 port map( B1 => n139, B2 => n140, A => n32, ZN => n138);
   U169 : AOI21_X1 port map( B1 => n124, B2 => n125, A => n32, ZN => n123);
   U170 : AOI21_X1 port map( B1 => n129, B2 => n130, A => n32, ZN => n128);
   U171 : AOI21_X1 port map( B1 => n134, B2 => n135, A => n32, ZN => n133);
   U172 : NAND2_X1 port map( A1 => n38, A2 => n108, ZN => n103);
   U173 : INV_X1 port map( A => n38, ZN => n98);
   U174 : AOI22_X1 port map( A1 => n38, A2 => n36, B1 => n39, B2 => IOMODE, ZN 
                           => n37);
   U175 : AOI22_X1 port map( A1 => n38, A2 => IOMODE, B1 => n39, B2 => n36, ZN 
                           => n40);
   U176 : NAND2_X1 port map( A1 => n178, A2 => n108, ZN => n160);
   U177 : INV_X1 port map( A => n178, ZN => n157);
   U178 : AOI22_X1 port map( A1 => n42, A2 => n36, B1 => n43, B2 => IOMODE, ZN 
                           => n41);
   U179 : AOI22_X1 port map( A1 => n42, A2 => IOMODE, B1 => n43, B2 => n36, ZN 
                           => n44);
   U180 : NOR3_X1 port map( A1 => n29, A2 => ADD_WR(2), A3 => n34, ZN => 
                           io_write_3_port);
   U181 : INV_X1 port map( A => n34, ZN => n35);
   U183 : NOR2_X1 port map( A1 => n48, A2 => n33, ZN => global_read1);
   U184 : BUF_X4 port map( A => ADD_RD2(1), Z => n179);
   U185 : BUF_X4 port map( A => ADD_RD1(1), Z => n180);
   U186 : NAND3_X2 port map( A1 => n159, A2 => read1_temp_0_port, A3 => 
                           ADD_RD1(2), ZN => n32);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity SWP_reg_size8_N4_F8 is

   port( CLK, RESET : in std_logic;  OVERRIDE : out std_logic;  ENABLE : out 
         std_logic_vector (7 downto 0);  IOMODE : out std_logic;  SAVE, RESTORE
         : in std_logic;  SPILL, FILL, SELIO, SELLOC : out std_logic;  ADDR : 
         out std_logic_vector (1 downto 0);  DATAIN : in std_logic_vector (7 
         downto 0);  DATAOUT : out std_logic_vector (7 downto 0);  MBUS : inout
         std_logic_vector (7 downto 0);  ACK : in std_logic;  DONE : out 
         std_logic);

end SWP_reg_size8_N4_F8;

architecture SYN_BEHAVIORAL of SWP_reg_size8_N4_F8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component TBUF_X1
      port( A, EN : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI33_X1
      port( A1, A2, A3, B1, B2, B3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLL_X1
      port( D, GN : in std_logic;  Q : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   component COUNTER_N2
      port( CLK, RESET, ENABLE : in std_logic;  OUTPUT : out std_logic_vector 
            (1 downto 0));
   end component;
   
   component CIRCULAR_BUFFER_SHFT2_N8_1
      port( CLK, RESET, ROTR, ROTL : in std_logic;  INIT : in std_logic_vector 
            (7 downto 0);  OUTPUT : out std_logic_vector (7 downto 0));
   end component;
   
   signal N0, N1, N2, N3, N4, N5, N6, N7, X_Logic1_port, X_Logic0_port, 
      ADDR_1_port, ADDR_0_port, rotr, rotl, state_3_port, state_2_port, 
      state_1_port, state_0_port, N52, N53, N54, N55, N61, N64, N67, N70, N73, 
      N76, N79, N81, N82, N83, N92, N95, N98, N101, N104, N107, N110, N113, 
      counter_enable, n66, n67_port, n20, n21, n22, n24, n25, n26, n27, n28, 
      n29, n30, n31, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44
      , n45, n46, n47, n48, n49, n50, n51, n52_port, n53_port, n54_port, 
      n55_port, n56, n57, n58, n59, n60, n61_port, n62, n63, n64_port, n65, n68
      , n69, n70_port, n71, n72, OVERRIDE_port, n74, n75, n76_port, n77 : 
      std_logic;

begin
   OVERRIDE <= OVERRIDE_port;
   ADDR <= ( ADDR_1_port, ADDR_0_port );
   
   buff : CIRCULAR_BUFFER_SHFT2_N8_1 port map( CLK => CLK, RESET => RESET, ROTR
                           => rotr, ROTL => rotl, INIT(7) => X_Logic0_port, 
                           INIT(6) => X_Logic0_port, INIT(5) => X_Logic0_port, 
                           INIT(4) => X_Logic0_port, INIT(3) => X_Logic0_port, 
                           INIT(2) => X_Logic0_port, INIT(1) => X_Logic1_port, 
                           INIT(0) => X_Logic1_port, OUTPUT(7) => ENABLE(7), 
                           OUTPUT(6) => ENABLE(6), OUTPUT(5) => ENABLE(5), 
                           OUTPUT(4) => ENABLE(4), OUTPUT(3) => ENABLE(3), 
                           OUTPUT(2) => ENABLE(2), OUTPUT(1) => ENABLE(1), 
                           OUTPUT(0) => ENABLE(0));
   addr_counter : COUNTER_N2 port map( CLK => CLK, RESET => RESET, ENABLE => 
                           counter_enable, OUTPUT(1) => ADDR_1_port, OUTPUT(0) 
                           => ADDR_0_port);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   state_reg_1_inst : DFF_X1 port map( D => N53, CK => CLK, Q => state_1_port, 
                           QN => n71);
   MBUS_reg_7_inst : DLH_X1 port map( G => n77, D => N82, Q => N92);
   MBUS_tri_enable_reg_7_inst : DLH_X1 port map( G => n77, D => N83, Q => N0);
   DATAOUT_reg_7_inst : DLL_X1 port map( D => MBUS(7), GN => n77, Q => 
                           DATAOUT(7));
   MBUS_reg_6_inst : DLH_X1 port map( G => n77, D => N79, Q => N95);
   MBUS_tri_enable_reg_6_inst : DLH_X1 port map( G => n77, D => N83, Q => N1);
   DATAOUT_reg_6_inst : DLL_X1 port map( D => MBUS(6), GN => n77, Q => 
                           DATAOUT(6));
   MBUS_reg_5_inst : DLH_X1 port map( G => n77, D => N76, Q => N98);
   MBUS_tri_enable_reg_5_inst : DLH_X1 port map( G => n77, D => N83, Q => N2);
   DATAOUT_reg_5_inst : DLL_X1 port map( D => MBUS(5), GN => n77, Q => 
                           DATAOUT(5));
   MBUS_reg_4_inst : DLH_X1 port map( G => n77, D => N73, Q => N101);
   MBUS_tri_enable_reg_4_inst : DLH_X1 port map( G => n77, D => N83, Q => N3);
   DATAOUT_reg_4_inst : DLL_X1 port map( D => MBUS(4), GN => n77, Q => 
                           DATAOUT(4));
   MBUS_reg_3_inst : DLH_X1 port map( G => n77, D => N70, Q => N104);
   MBUS_tri_enable_reg_3_inst : DLH_X1 port map( G => n77, D => N83, Q => N4);
   DATAOUT_reg_3_inst : DLL_X1 port map( D => MBUS(3), GN => n77, Q => 
                           DATAOUT(3));
   MBUS_reg_2_inst : DLH_X1 port map( G => n77, D => N67, Q => N107);
   MBUS_tri_enable_reg_2_inst : DLH_X1 port map( G => n77, D => N83, Q => N5);
   DATAOUT_reg_2_inst : DLL_X1 port map( D => MBUS(2), GN => n77, Q => 
                           DATAOUT(2));
   MBUS_reg_1_inst : DLH_X1 port map( G => n77, D => N64, Q => N110);
   MBUS_tri_enable_reg_1_inst : DLH_X1 port map( G => n77, D => N83, Q => N6);
   DATAOUT_reg_1_inst : DLL_X1 port map( D => MBUS(1), GN => n77, Q => 
                           DATAOUT(1));
   MBUS_reg_0_inst : DLH_X1 port map( G => n77, D => N61, Q => N113);
   MBUS_tri_enable_reg_0_inst : DLH_X1 port map( G => n77, D => N83, Q => N7);
   DATAOUT_reg_0_inst : DLL_X1 port map( D => MBUS(0), GN => n77, Q => 
                           DATAOUT(0));
   io_mode_reg : DFF_X1 port map( D => n67_port, CK => CLK, Q => IOMODE, QN => 
                           n66);
   U68 : NAND3_X1 port map( A1 => n34, A2 => n56, A3 => RESTORE, ZN => n55_port
                           );
   U69 : NAND3_X1 port map( A1 => state_2_port, A2 => state_0_port, A3 => n29, 
                           ZN => n43);
   U70 : OAI33_X1 port map( A1 => n25, A2 => ACK, A3 => n74, B1 => n42, B2 => 
                           state_1_port, B3 => n77, ZN => n59);
   state_reg_3_inst : DFF_X1 port map( D => N55, CK => CLK, Q => state_3_port, 
                           QN => n72);
   state_reg_2_inst : DFF_X1 port map( D => N54, CK => CLK, Q => state_2_port, 
                           QN => n75);
   MBUS_tri_0_inst : TBUF_X1 port map( A => N113, EN => N7, Z => MBUS(0));
   MBUS_tri_1_inst : TBUF_X1 port map( A => N110, EN => N6, Z => MBUS(1));
   MBUS_tri_2_inst : TBUF_X1 port map( A => N107, EN => N5, Z => MBUS(2));
   MBUS_tri_3_inst : TBUF_X1 port map( A => N104, EN => N4, Z => MBUS(3));
   MBUS_tri_4_inst : TBUF_X1 port map( A => N101, EN => N3, Z => MBUS(4));
   MBUS_tri_5_inst : TBUF_X1 port map( A => N98, EN => N2, Z => MBUS(5));
   MBUS_tri_6_inst : TBUF_X1 port map( A => N95, EN => N1, Z => MBUS(6));
   MBUS_tri_7_inst : TBUF_X1 port map( A => N92, EN => N0, Z => MBUS(7));
   state_reg_0_inst : DFF_X1 port map( D => N52, CK => CLK, Q => state_0_port, 
                           QN => n74);
   U3 : NOR4_X2 port map( A1 => n61_port, A2 => state_2_port, A3 => n74, A4 => 
                           n24, ZN => rotr);
   U4 : INV_X1 port map( A => counter_enable, ZN => N83);
   U5 : INV_X1 port map( A => n35, ZN => n36);
   U6 : INV_X1 port map( A => SAVE, ZN => n56);
   U7 : NOR2_X1 port map( A1 => n37, A2 => n38, ZN => n35);
   U8 : INV_X1 port map( A => n43, ZN => n37);
   U9 : INV_X1 port map( A => n32, ZN => n54_port);
   U10 : INV_X1 port map( A => n42, ZN => n47);
   U11 : INV_X1 port map( A => n68, ZN => n53_port);
   U12 : AND2_X1 port map( A1 => DATAIN(0), A2 => n36, ZN => N61);
   U13 : AND2_X1 port map( A1 => DATAIN(1), A2 => n36, ZN => N64);
   U14 : AND2_X1 port map( A1 => DATAIN(2), A2 => n36, ZN => N67);
   U15 : AND2_X1 port map( A1 => DATAIN(3), A2 => n36, ZN => N70);
   U16 : AND2_X1 port map( A1 => DATAIN(4), A2 => n36, ZN => N73);
   U17 : AND2_X1 port map( A1 => DATAIN(5), A2 => n36, ZN => N76);
   U18 : AND2_X1 port map( A1 => DATAIN(6), A2 => n36, ZN => N79);
   U19 : AND2_X1 port map( A1 => DATAIN(7), A2 => n36, ZN => N82);
   U20 : OAI21_X1 port map( B1 => n54_port, B2 => n63, A => n64_port, ZN => 
                           DONE);
   U21 : INV_X1 port map( A => rotr, ZN => n64_port);
   U22 : AOI211_X1 port map( C1 => n20, C2 => n66, A => RESET, B => n21, ZN => 
                           n67_port);
   U23 : NOR2_X1 port map( A1 => rotl, A2 => rotr, ZN => n20);
   U24 : NAND2_X1 port map( A1 => ADDR_1_port, A2 => ADDR_0_port, ZN => n42);
   U25 : AOI22_X1 port map( A1 => n47, A2 => n48, B1 => n37, B2 => n42, ZN => 
                           n46);
   U26 : NOR3_X1 port map( A1 => n59, A2 => n37, A3 => n60, ZN => n58);
   U27 : AOI21_X1 port map( B1 => n50, B2 => n51, A => RESET, ZN => N53);
   U28 : AOI221_X1 port map( B1 => n37, B2 => n47, C1 => n53_port, C2 => n74, A
                           => n49, ZN => n50);
   U29 : OR2_X2 port map( A1 => n24, A2 => state_3_port, ZN => n68);
   U30 : AND2_X1 port map( A1 => n71, A2 => n75, ZN => n65);
   U31 : OAI21_X1 port map( B1 => n68, B2 => n54_port, A => n55_port, ZN => n49
                           );
   U32 : NAND3_X1 port map( A1 => n74, A2 => n75, A3 => n29, ZN => 
                           OVERRIDE_port);
   U33 : INV_X1 port map( A => OVERRIDE_port, ZN => n34);
   U34 : NAND3_X1 port map( A1 => n74, A2 => n75, A3 => state_3_port, ZN => n69
                           );
   U35 : CLKBUF_X1 port map( A => n44, Z => n70_port);
   U36 : OAI21_X1 port map( B1 => n42, B2 => n43, A => n70_port, ZN => n40);
   U37 : AND3_X1 port map( A1 => ACK, A2 => n53_port, A3 => n32, ZN => n62);
   U38 : NAND3_X1 port map( A1 => n74, A2 => n75, A3 => state_3_port, ZN => N81
                           );
   U39 : AND2_X1 port map( A1 => n71, A2 => n75, ZN => n26);
   U40 : AOI211_X1 port map( C1 => n48, C2 => n42, A => n30, B => n52_port, ZN 
                           => n51);
   U41 : BUF_X1 port map( A => N81, Z => n77);
   U42 : AOI21_X1 port map( B1 => n57, B2 => n58, A => RESET, ZN => N52);
   U43 : AND2_X2 port map( A1 => n71, A2 => n72, ZN => n29);
   U44 : NOR3_X1 port map( A1 => n27, A2 => state_0_port, A3 => n65, ZN => n60)
                           ;
   U45 : AND3_X1 port map( A1 => ACK, A2 => state_0_port, A3 => n65, ZN => 
                           n52_port);
   U46 : AOI21_X1 port map( B1 => n32, B2 => n29, A => n49, ZN => n45);
   U47 : AOI21_X1 port map( B1 => n45, B2 => n46, A => RESET, ZN => N54);
   U48 : INV_X1 port map( A => state_1_port, ZN => n24);
   U49 : NAND2_X1 port map( A1 => n35, A2 => n77, ZN => counter_enable);
   U50 : NOR2_X1 port map( A1 => RESET, A2 => n39, ZN => N55);
   U51 : CLKBUF_X1 port map( A => n31, Z => n76_port);
   U52 : OAI22_X1 port map( A1 => n32, A2 => n68, B1 => state_1_port, B2 => N81
                           , ZN => SELIO);
   U53 : OAI22_X1 port map( A1 => n74, A2 => n25, B1 => n65, B2 => n27, ZN => 
                           SPILL);
   U54 : NOR4_X1 port map( A1 => n66, A2 => n22, A3 => n74, A4 => n24, ZN => 
                           n21);
   U55 : NOR3_X1 port map( A1 => n74, A2 => state_2_port, A3 => n68, ZN => n38)
                           ;
   U56 : NOR2_X1 port map( A1 => n44, A2 => n74, ZN => n30);
   U57 : NOR3_X1 port map( A1 => n68, A2 => n74, A3 => n41, ZN => rotl);
   U58 : OAI211_X1 port map( C1 => n68, C2 => n41, A => n70_port, B => n77, ZN 
                           => FILL);
   U59 : AOI21_X1 port map( B1 => n61_port, B2 => n41, A => n29, ZN => n27);
   U60 : NOR2_X1 port map( A1 => state_0_port, A2 => n75, ZN => n32);
   U61 : INV_X1 port map( A => state_2_port, ZN => n41);
   U62 : NOR3_X1 port map( A1 => n40, A2 => rotl, A3 => n76_port, ZN => n39);
   U63 : OR2_X1 port map( A1 => n38, A2 => n76_port, ZN => n48);
   U64 : AOI221_X1 port map( B1 => SAVE, B2 => n34, C1 => n38, C2 => n42, A => 
                           n62, ZN => n57);
   U65 : AOI211_X1 port map( C1 => state_2_port, C2 => n29, A => n31, B => n30,
                           ZN => n28);
   U66 : NOR2_X1 port map( A1 => n24, A2 => n69, ZN => n31);
   U67 : INV_X1 port map( A => n29, ZN => n25);
   U71 : XNOR2_X1 port map( A => state_3_port, B => state_2_port, ZN => n22);
   U72 : NAND2_X1 port map( A1 => n24, A2 => state_3_port, ZN => n63);
   U73 : INV_X1 port map( A => state_3_port, ZN => n61_port);
   U74 : NAND2_X1 port map( A1 => n26, A2 => state_3_port, ZN => n44);
   U75 : INV_X1 port map( A => n28, ZN => SELLOC);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity CWP_N8 is

   port( CLK, RESET, CANSAVE, CANRESTORE, CALL, RETN : in std_logic;  ENABLE : 
         out std_logic_vector (7 downto 0);  SAVE, RESTORE, IOMODE : out 
         std_logic;  DONE : in std_logic);

end CWP_N8;

architecture SYN_BEHAVIORAL of CWP_N8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CIRCULAR_BUFFER_SHFT2_N8_0
      port( CLK, RESET, ROTR, ROTL : in std_logic;  INIT : in std_logic_vector 
            (7 downto 0);  OUTPUT : out std_logic_vector (7 downto 0));
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SAVE_port, RESTORE_port, IOMODE_port, 
      rotr, rotl, state_2_port, state_1_port, state_0_port, N42, N43, N44, n21,
      n22, n11, n12, n13, n15, n16, n17, n18, n19, n23, n24, n25, n26, n27, n28
      , n29, n30, n31 : std_logic;

begin
   SAVE <= SAVE_port;
   RESTORE <= RESTORE_port;
   IOMODE <= IOMODE_port;
   
   buff : CIRCULAR_BUFFER_SHFT2_N8_0 port map( CLK => CLK, RESET => RESET, ROTR
                           => rotr, ROTL => rotl, INIT(7) => X_Logic0_port, 
                           INIT(6) => X_Logic0_port, INIT(5) => X_Logic0_port, 
                           INIT(4) => X_Logic0_port, INIT(3) => X_Logic0_port, 
                           INIT(2) => X_Logic1_port, INIT(1) => X_Logic1_port, 
                           INIT(0) => X_Logic1_port, OUTPUT(7) => ENABLE(7), 
                           OUTPUT(6) => ENABLE(6), OUTPUT(5) => ENABLE(5), 
                           OUTPUT(4) => ENABLE(4), OUTPUT(3) => ENABLE(3), 
                           OUTPUT(2) => ENABLE(2), OUTPUT(1) => ENABLE(1), 
                           OUTPUT(0) => ENABLE(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U28 : NAND3_X1 port map( A1 => n27, A2 => n28, A3 => RETN, ZN => n26);
   io_mode_reg : DFF_X1 port map( D => n22, CK => CLK, Q => IOMODE_port, QN => 
                           n21);
   state_reg_2_inst : DFF_X1 port map( D => N44, CK => CLK, Q => state_2_port, 
                           QN => n18);
   state_reg_0_inst : DFF_X1 port map( D => N42, CK => CLK, Q => state_0_port, 
                           QN => n15);
   state_reg_1_inst : DFF_X1 port map( D => N43, CK => CLK, Q => state_1_port, 
                           QN => n16);
   U3 : OAI211_X1 port map( C1 => n15, C2 => n16, A => n17, B => n18, ZN => n13
                           );
   U4 : NOR2_X1 port map( A1 => n18, A2 => n17, ZN => RESTORE_port);
   U5 : NAND2_X1 port map( A1 => n15, A2 => n16, ZN => n17);
   U6 : NOR3_X1 port map( A1 => state_1_port, A2 => state_2_port, A3 => n15, ZN
                           => rotr);
   U7 : NOR3_X1 port map( A1 => state_0_port, A2 => state_2_port, A3 => n16, ZN
                           => rotl);
   U8 : NOR3_X1 port map( A1 => n15, A2 => state_2_port, A3 => n16, ZN => 
                           SAVE_port);
   U9 : OAI22_X1 port map( A1 => state_2_port, A2 => n30, B1 => n17, B2 => n23,
                           ZN => n27);
   U10 : NOR3_X1 port map( A1 => n16, A2 => state_0_port, A3 => CANRESTORE, ZN 
                           => n30);
   U11 : INV_X1 port map( A => DONE, ZN => n23);
   U12 : AOI22_X1 port map( A1 => n31, A2 => rotr, B1 => n23, B2 => SAVE_port, 
                           ZN => n25);
   U13 : INV_X1 port map( A => CANSAVE, ZN => n31);
   U14 : AOI21_X1 port map( B1 => n11, B2 => n12, A => RESET, ZN => n22);
   U15 : NAND2_X1 port map( A1 => n13, A2 => IOMODE_port, ZN => n11);
   U16 : OAI21_X1 port map( B1 => rotl, B2 => rotr, A => n21, ZN => n12);
   U17 : AOI21_X1 port map( B1 => n25, B2 => n26, A => RESET, ZN => N43);
   U18 : INV_X1 port map( A => CALL, ZN => n28);
   U19 : AOI21_X1 port map( B1 => n25, B2 => n29, A => RESET, ZN => N42);
   U20 : NAND2_X1 port map( A1 => CALL, A2 => n27, ZN => n29);
   U21 : NOR2_X1 port map( A1 => RESET, A2 => n19, ZN => N44);
   U22 : AOI22_X1 port map( A1 => RESTORE_port, A2 => n23, B1 => rotl, B2 => 
                           n24, ZN => n19);
   U23 : INV_X1 port map( A => CANRESTORE, ZN => n24);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity INPUT_FILTER_reg_size8_M20_N4_F4 is

   port( MASTER_ENABLE : in std_logic;  IN_ENABLE : in std_logic_vector (7 
         downto 0);  IN_IOMODE, IN_RD1, IN_RD2, IN_WR : in std_logic;  
         IN_ADD_WR, IN_ADD_RD1, IN_ADD_RD2 : in std_logic_vector (4 downto 0); 
         IN_DATAIN, OV_ENABLE : in std_logic_vector (7 downto 0);  OV_IOMODE, 
         OV_RD1, OV_RD2, OV_WR : in std_logic;  OV_ADD_WR, OV_ADD_RD1, 
         OV_ADD_RD2 : in std_logic_vector (4 downto 0);  OV_DATAIN : in 
         std_logic_vector (7 downto 0);  OVERRIDE : in std_logic;  OUT_ENABLE :
         out std_logic_vector (7 downto 0);  OUT_IOMODE, OUT_RD1, OUT_RD2, 
         OUT_WR : out std_logic;  OUT_ADD_WR, OUT_ADD_RD1, OUT_ADD_RD2 : out 
         std_logic_vector (4 downto 0);  OUT_DATAIN : out std_logic_vector (7 
         downto 0));

end INPUT_FILTER_reg_size8_M20_N4_F4;

architecture SYN_BEHAVIORAL of INPUT_FILTER_reg_size8_M20_N4_F4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31 : 
      std_logic;

begin
   
   U2 : BUF_X1 port map( A => n14, Z => n31);
   U3 : INV_X1 port map( A => n53, ZN => n45);
   U4 : INV_X1 port map( A => n61, ZN => OUT_DATAIN(0));
   U5 : INV_X1 port map( A => n60, ZN => OUT_DATAIN(1));
   U6 : INV_X1 port map( A => n59, ZN => OUT_DATAIN(2));
   U7 : INV_X1 port map( A => n58, ZN => OUT_DATAIN(3));
   U8 : INV_X1 port map( A => n57, ZN => OUT_DATAIN(4));
   U9 : INV_X1 port map( A => n56, ZN => OUT_DATAIN(5));
   U10 : INV_X1 port map( A => n55, ZN => OUT_DATAIN(6));
   U11 : INV_X1 port map( A => n54, ZN => OUT_DATAIN(7));
   U12 : INV_X1 port map( A => n70, ZN => OUT_ADD_RD2(1));
   U13 : AND2_X1 port map( A1 => MASTER_ENABLE, A2 => n53, ZN => n44);
   U14 : INV_X1 port map( A => n76, ZN => OUT_ADD_RD1(0));
   U15 : INV_X1 port map( A => n66, ZN => OUT_ADD_WR(0));
   U16 : INV_X1 port map( A => n65, ZN => OUT_ADD_WR(1));
   U17 : INV_X1 port map( A => n71, ZN => OUT_ADD_RD2(0));
   U18 : INV_X1 port map( A => n75, ZN => OUT_ADD_RD1(1));
   U19 : AOI22_X1 port map( A1 => IN_ADD_RD1(1), A2 => n16, B1 => OV_ADD_RD1(1)
                           , B2 => n29, ZN => n75);
   U20 : AOI22_X1 port map( A1 => IN_ADD_RD1(4), A2 => n16, B1 => OV_ADD_RD1(4)
                           , B2 => n28, ZN => n72);
   U21 : INV_X1 port map( A => n42, ZN => OUT_IOMODE);
   U22 : INV_X1 port map( A => n52, ZN => OUT_ENABLE(0));
   U23 : AOI22_X1 port map( A1 => OV_ENABLE(0), A2 => n44, B1 => IN_ENABLE(0), 
                           B2 => n45, ZN => n52);
   U24 : INV_X1 port map( A => n43, ZN => OUT_ENABLE(7));
   U25 : AOI22_X1 port map( A1 => OV_ENABLE(7), A2 => n44, B1 => IN_ENABLE(7), 
                           B2 => n45, ZN => n43);
   U26 : INV_X1 port map( A => n46, ZN => OUT_ENABLE(6));
   U27 : AOI22_X1 port map( A1 => OV_ENABLE(6), A2 => n44, B1 => IN_ENABLE(6), 
                           B2 => n45, ZN => n46);
   U28 : INV_X1 port map( A => n51, ZN => OUT_ENABLE(1));
   U29 : AOI22_X1 port map( A1 => OV_ENABLE(1), A2 => n44, B1 => IN_ENABLE(1), 
                           B2 => n45, ZN => n51);
   U30 : INV_X1 port map( A => n49, ZN => OUT_ENABLE(3));
   U31 : AOI22_X1 port map( A1 => OV_ENABLE(3), A2 => n44, B1 => IN_ENABLE(3), 
                           B2 => n45, ZN => n49);
   U32 : INV_X1 port map( A => n50, ZN => OUT_ENABLE(2));
   U33 : AOI22_X1 port map( A1 => OV_ENABLE(2), A2 => n44, B1 => IN_ENABLE(2), 
                           B2 => n45, ZN => n50);
   U34 : INV_X1 port map( A => n64, ZN => OUT_ADD_WR(2));
   U35 : INV_X1 port map( A => n48, ZN => OUT_ENABLE(4));
   U36 : AOI22_X1 port map( A1 => OV_ENABLE(4), A2 => n44, B1 => IN_ENABLE(4), 
                           B2 => n45, ZN => n48);
   U37 : INV_X1 port map( A => n47, ZN => OUT_ENABLE(5));
   U38 : AOI22_X1 port map( A1 => OV_ENABLE(5), A2 => n44, B1 => IN_ENABLE(5), 
                           B2 => n45, ZN => n47);
   U39 : NAND2_X1 port map( A1 => MASTER_ENABLE, A2 => n16, ZN => n53);
   U40 : BUF_X1 port map( A => OVERRIDE, Z => n13);
   U41 : BUF_X1 port map( A => n14, Z => n30);
   U42 : INV_X1 port map( A => n72, ZN => OUT_ADD_RD1(4));
   U43 : INV_X1 port map( A => n74, ZN => OUT_ADD_RD1(2));
   U44 : INV_X1 port map( A => n40, ZN => OUT_RD2);
   U45 : INV_X1 port map( A => n38, ZN => OUT_WR);
   U46 : INV_X1 port map( A => n63, ZN => OUT_ADD_WR(3));
   U47 : INV_X1 port map( A => n68, ZN => OUT_ADD_RD2(3));
   U48 : INV_X1 port map( A => n62, ZN => OUT_ADD_WR(4));
   U49 : INV_X1 port map( A => n69, ZN => OUT_ADD_RD2(2));
   U50 : INV_X1 port map( A => n67, ZN => OUT_ADD_RD2(4));
   U51 : BUF_X1 port map( A => n29, Z => n18);
   U52 : BUF_X1 port map( A => n13, Z => n26);
   U53 : BUF_X1 port map( A => n13, Z => n25);
   U54 : AOI22_X1 port map( A1 => IN_ADD_RD1(2), A2 => n16, B1 => OV_ADD_RD1(2)
                           , B2 => n29, ZN => n74);
   U55 : BUF_X1 port map( A => n14, Z => n29);
   U56 : INV_X1 port map( A => n73, ZN => OUT_ADD_RD1(3));
   U57 : BUF_X1 port map( A => OVERRIDE, Z => n14);
   U58 : INV_X1 port map( A => n41, ZN => OUT_RD1);
   U59 : AOI22_X1 port map( A1 => IN_DATAIN(0), A2 => n15, B1 => OV_DATAIN(0), 
                           B2 => n22, ZN => n61);
   U60 : AOI22_X1 port map( A1 => IN_DATAIN(6), A2 => n15, B1 => OV_DATAIN(6), 
                           B2 => n19, ZN => n55);
   U61 : AOI22_X1 port map( A1 => IN_DATAIN(3), A2 => n15, B1 => OV_DATAIN(3), 
                           B2 => n21, ZN => n58);
   U62 : AOI22_X1 port map( A1 => IN_DATAIN(4), A2 => n15, B1 => OV_DATAIN(4), 
                           B2 => n20, ZN => n57);
   U63 : AOI22_X1 port map( A1 => IN_DATAIN(5), A2 => n15, B1 => OV_DATAIN(5), 
                           B2 => n20, ZN => n56);
   U64 : AOI22_X1 port map( A1 => IN_DATAIN(7), A2 => n15, B1 => OV_DATAIN(7), 
                           B2 => n19, ZN => n54);
   U65 : AOI22_X1 port map( A1 => IN_DATAIN(1), A2 => n15, B1 => OV_DATAIN(1), 
                           B2 => n22, ZN => n60);
   U66 : AOI22_X1 port map( A1 => IN_DATAIN(2), A2 => n15, B1 => OV_DATAIN(2), 
                           B2 => n21, ZN => n59);
   U67 : AOI22_X1 port map( A1 => IN_ADD_RD1(0), A2 => n15, B1 => OV_ADD_RD1(0)
                           , B2 => n30, ZN => n76);
   U68 : AOI22_X1 port map( A1 => IN_RD2, A2 => n15, B1 => OV_RD2, B2 => n17, 
                           ZN => n40);
   U69 : AOI22_X1 port map( A1 => IN_RD1, A2 => n15, B1 => OV_RD1, B2 => n18, 
                           ZN => n41);
   U70 : AOI22_X1 port map( A1 => IN_IOMODE, A2 => n15, B1 => OV_IOMODE, B2 => 
                           n18, ZN => n42);
   U71 : AOI22_X1 port map( A1 => IN_ADD_WR(0), A2 => n16, B1 => OV_ADD_WR(0), 
                           B2 => n25, ZN => n66);
   U72 : AOI22_X1 port map( A1 => IN_ADD_WR(1), A2 => n16, B1 => OV_ADD_WR(1), 
                           B2 => n24, ZN => n65);
   U73 : AOI22_X1 port map( A1 => IN_ADD_RD2(0), A2 => n16, B1 => OV_ADD_RD2(0)
                           , B2 => n27, ZN => n71);
   U74 : AOI22_X1 port map( A1 => IN_WR, A2 => n16, B1 => OV_WR, B2 => n17, ZN 
                           => n38);
   U75 : AOI22_X1 port map( A1 => IN_ADD_RD2(1), A2 => n16, B1 => OV_ADD_RD2(1)
                           , B2 => n27, ZN => n70);
   U76 : AOI22_X1 port map( A1 => IN_ADD_WR(2), A2 => n16, B1 => OV_ADD_WR(2), 
                           B2 => n24, ZN => n64);
   U77 : AOI22_X1 port map( A1 => IN_ADD_WR(3), A2 => n16, B1 => OV_ADD_WR(3), 
                           B2 => n23, ZN => n63);
   U78 : AOI22_X1 port map( A1 => IN_ADD_WR(4), A2 => n16, B1 => OV_ADD_WR(4), 
                           B2 => n23, ZN => n62);
   U79 : AOI22_X1 port map( A1 => IN_ADD_RD1(3), A2 => n16, B1 => OV_ADD_RD1(3)
                           , B2 => n28, ZN => n73);
   U80 : AOI22_X1 port map( A1 => IN_ADD_RD2(3), A2 => n16, B1 => OV_ADD_RD2(3)
                           , B2 => n26, ZN => n68);
   U81 : AOI22_X1 port map( A1 => IN_ADD_RD2(2), A2 => n16, B1 => OV_ADD_RD2(2)
                           , B2 => n26, ZN => n69);
   U82 : AOI22_X1 port map( A1 => IN_ADD_RD2(4), A2 => n16, B1 => OV_ADD_RD2(4)
                           , B2 => n25, ZN => n67);
   U83 : INV_X2 port map( A => n30, ZN => n15);
   U84 : INV_X2 port map( A => n31, ZN => n16);
   U85 : CLKBUF_X1 port map( A => n13, Z => n17);
   U86 : CLKBUF_X1 port map( A => n24, Z => n19);
   U87 : CLKBUF_X1 port map( A => n24, Z => n20);
   U88 : CLKBUF_X1 port map( A => n24, Z => n21);
   U89 : CLKBUF_X1 port map( A => n24, Z => n22);
   U90 : CLKBUF_X1 port map( A => n13, Z => n23);
   U91 : CLKBUF_X1 port map( A => n13, Z => n24);
   U92 : CLKBUF_X1 port map( A => n13, Z => n27);
   U93 : CLKBUF_X1 port map( A => n13, Z => n28);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4.all;

entity TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (4 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0);  CALL, RETN : in std_logic;  SPILL, FILL : out std_logic;  
         CANSAVE, CANRESTORE, ACK : in std_logic;  MBUS : inout 
         std_logic_vector (7 downto 0));

end TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4;

architecture SYN_STRUCTURAL of 
   TOP_LEVEL_WINDOWED_REGISTER_FILE_reg_size8_M20_N4_F4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLL_X1
      port( D, GN : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component windowed_register_file_reg_size8_M20_N4_F4
      port( CLK, RESET : in std_logic;  ENABLE : in std_logic_vector (8 downto 
            0);  IOMODE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, ADD_RD2
            : in std_logic_vector (4 downto 0);  DATAIN : in std_logic_vector 
            (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 downto 0));
   end component;
   
   component SWP_reg_size8_N4_F8
      port( CLK, RESET : in std_logic;  OVERRIDE : out std_logic;  ENABLE : out
            std_logic_vector (7 downto 0);  IOMODE : out std_logic;  SAVE, 
            RESTORE : in std_logic;  SPILL, FILL, SELIO, SELLOC : out std_logic
            ;  ADDR : out std_logic_vector (1 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  DATAOUT : out std_logic_vector (7 
            downto 0);  MBUS : inout std_logic_vector (7 downto 0);  ACK : in 
            std_logic;  DONE : out std_logic);
   end component;
   
   component CWP_N8
      port( CLK, RESET, CANSAVE, CANRESTORE, CALL, RETN : in std_logic;  ENABLE
            : out std_logic_vector (7 downto 0);  SAVE, RESTORE, IOMODE : out 
            std_logic;  DONE : in std_logic);
   end component;
   
   component INPUT_FILTER_reg_size8_M20_N4_F4
      port( MASTER_ENABLE : in std_logic;  IN_ENABLE : in std_logic_vector (7 
            downto 0);  IN_IOMODE, IN_RD1, IN_RD2, IN_WR : in std_logic;  
            IN_ADD_WR, IN_ADD_RD1, IN_ADD_RD2 : in std_logic_vector (4 downto 
            0);  IN_DATAIN, OV_ENABLE : in std_logic_vector (7 downto 0);  
            OV_IOMODE, OV_RD1, OV_RD2, OV_WR : in std_logic;  OV_ADD_WR, 
            OV_ADD_RD1, OV_ADD_RD2 : in std_logic_vector (4 downto 0);  
            OV_DATAIN : in std_logic_vector (7 downto 0);  OVERRIDE : in 
            std_logic;  OUT_ENABLE : out std_logic_vector (7 downto 0);  
            OUT_IOMODE, OUT_RD1, OUT_RD2, OUT_WR : out std_logic;  OUT_ADD_WR, 
            OUT_ADD_RD1, OUT_ADD_RD2 : out std_logic_vector (4 downto 0);  
            OUT_DATAIN : out std_logic_vector (7 downto 0));
   end component;
   
   signal X_Logic0_port, SPILL_port, FILL_port, cwp_enable_7_port, 
      cwp_enable_6_port, cwp_enable_5_port, cwp_enable_4_port, 
      cwp_enable_3_port, cwp_enable_2_port, cwp_enable_1_port, 
      cwp_enable_0_port, cwp_iomode, swp_enable_7_port, swp_enable_6_port, 
      swp_enable_5_port, swp_enable_4_port, swp_enable_3_port, 
      swp_enable_2_port, swp_enable_1_port, swp_enable_0_port, swp_iomode, 
      ov_read1, ov_write, ov_addr_3_port, ov_addr_2_port, ov_addr_1_port, 
      ov_addr_0_port, swp_dataout_7_port, swp_dataout_6_port, 
      swp_dataout_5_port, swp_dataout_4_port, swp_dataout_3_port, 
      swp_dataout_2_port, swp_dataout_1_port, swp_dataout_0_port, swp_override,
      if_enable_7_port, if_enable_6_port, if_enable_5_port, if_enable_4_port, 
      if_enable_3_port, if_enable_2_port, if_enable_1_port, if_enable_0_port, 
      s_iomode, s_rd1, s_rd2, s_wr, s_add_wr_4_port, s_add_wr_3_port, 
      s_add_wr_2_port, s_add_wr_1_port, s_add_wr_0_port, s_add_rd1_4_port, 
      s_add_rd1_3_port, s_add_rd1_2_port, s_add_rd1_1_port, s_add_rd1_0_port, 
      s_add_rd2_4_port, s_add_rd2_3_port, s_add_rd2_2_port, s_add_rd2_1_port, 
      s_add_rd2_0_port, s_datain_7_port, s_datain_6_port, s_datain_5_port, 
      s_datain_4_port, s_datain_3_port, s_datain_2_port, s_datain_1_port, 
      s_datain_0_port, swp_selio, swp_selloc, s_enable_0_port, s_cansave, 
      s_call, s_retn, cwp_save, cwp_restore, swp_done, s_out1_7_port, 
      s_out1_6_port, s_out1_5_port, s_out1_4_port, s_out1_3_port, s_out1_2_port
      , s_out1_1_port, s_out1_0_port, s_out2_7_port, s_out2_6_port, 
      s_out2_5_port, s_out2_4_port, s_out2_3_port, s_out2_2_port, s_out2_1_port
      , s_out2_0_port, n15, n16, n17, n18, n20, n21, n22 : std_logic;

begin
   SPILL <= SPILL_port;
   FILL <= FILL_port;
   
   input : INPUT_FILTER_reg_size8_M20_N4_F4 port map( MASTER_ENABLE => ENABLE, 
                           IN_ENABLE(7) => cwp_enable_7_port, IN_ENABLE(6) => 
                           cwp_enable_6_port, IN_ENABLE(5) => cwp_enable_5_port
                           , IN_ENABLE(4) => cwp_enable_4_port, IN_ENABLE(3) =>
                           cwp_enable_3_port, IN_ENABLE(2) => cwp_enable_2_port
                           , IN_ENABLE(1) => cwp_enable_1_port, IN_ENABLE(0) =>
                           cwp_enable_0_port, IN_IOMODE => cwp_iomode, IN_RD1 
                           => RD1, IN_RD2 => RD2, IN_WR => WR, IN_ADD_WR(4) => 
                           ADD_WR(4), IN_ADD_WR(3) => ADD_WR(3), IN_ADD_WR(2) 
                           => ADD_WR(2), IN_ADD_WR(1) => ADD_WR(1), 
                           IN_ADD_WR(0) => ADD_WR(0), IN_ADD_RD1(4) => 
                           ADD_RD1(4), IN_ADD_RD1(3) => ADD_RD1(3), 
                           IN_ADD_RD1(2) => ADD_RD1(2), IN_ADD_RD1(1) => 
                           ADD_RD1(1), IN_ADD_RD1(0) => ADD_RD1(0), 
                           IN_ADD_RD2(4) => ADD_RD2(4), IN_ADD_RD2(3) => 
                           ADD_RD2(3), IN_ADD_RD2(2) => ADD_RD2(2), 
                           IN_ADD_RD2(1) => ADD_RD2(1), IN_ADD_RD2(0) => 
                           ADD_RD2(0), IN_DATAIN(7) => DATAIN(7), IN_DATAIN(6) 
                           => DATAIN(6), IN_DATAIN(5) => DATAIN(5), 
                           IN_DATAIN(4) => DATAIN(4), IN_DATAIN(3) => DATAIN(3)
                           , IN_DATAIN(2) => DATAIN(2), IN_DATAIN(1) => 
                           DATAIN(1), IN_DATAIN(0) => DATAIN(0), OV_ENABLE(7) 
                           => swp_enable_7_port, OV_ENABLE(6) => 
                           swp_enable_6_port, OV_ENABLE(5) => swp_enable_5_port
                           , OV_ENABLE(4) => swp_enable_4_port, OV_ENABLE(3) =>
                           swp_enable_3_port, OV_ENABLE(2) => swp_enable_2_port
                           , OV_ENABLE(1) => swp_enable_1_port, OV_ENABLE(0) =>
                           swp_enable_0_port, OV_IOMODE => swp_iomode, OV_RD1 
                           => ov_read1, OV_RD2 => X_Logic0_port, OV_WR => 
                           ov_write, OV_ADD_WR(4) => X_Logic0_port, 
                           OV_ADD_WR(3) => ov_addr_3_port, OV_ADD_WR(2) => 
                           ov_addr_2_port, OV_ADD_WR(1) => ov_addr_1_port, 
                           OV_ADD_WR(0) => ov_addr_0_port, OV_ADD_RD1(4) => 
                           X_Logic0_port, OV_ADD_RD1(3) => ov_addr_3_port, 
                           OV_ADD_RD1(2) => ov_addr_2_port, OV_ADD_RD1(1) => 
                           ov_addr_1_port, OV_ADD_RD1(0) => ov_addr_0_port, 
                           OV_ADD_RD2(4) => X_Logic0_port, OV_ADD_RD2(3) => 
                           ov_addr_3_port, OV_ADD_RD2(2) => ov_addr_2_port, 
                           OV_ADD_RD2(1) => ov_addr_1_port, OV_ADD_RD2(0) => 
                           ov_addr_0_port, OV_DATAIN(7) => swp_dataout_7_port, 
                           OV_DATAIN(6) => swp_dataout_6_port, OV_DATAIN(5) => 
                           swp_dataout_5_port, OV_DATAIN(4) => 
                           swp_dataout_4_port, OV_DATAIN(3) => 
                           swp_dataout_3_port, OV_DATAIN(2) => 
                           swp_dataout_2_port, OV_DATAIN(1) => 
                           swp_dataout_1_port, OV_DATAIN(0) => 
                           swp_dataout_0_port, OVERRIDE => swp_override, 
                           OUT_ENABLE(7) => if_enable_7_port, OUT_ENABLE(6) => 
                           if_enable_6_port, OUT_ENABLE(5) => if_enable_5_port,
                           OUT_ENABLE(4) => if_enable_4_port, OUT_ENABLE(3) => 
                           if_enable_3_port, OUT_ENABLE(2) => if_enable_2_port,
                           OUT_ENABLE(1) => if_enable_1_port, OUT_ENABLE(0) => 
                           if_enable_0_port, OUT_IOMODE => s_iomode, OUT_RD1 =>
                           s_rd1, OUT_RD2 => s_rd2, OUT_WR => s_wr, 
                           OUT_ADD_WR(4) => s_add_wr_4_port, OUT_ADD_WR(3) => 
                           s_add_wr_3_port, OUT_ADD_WR(2) => s_add_wr_2_port, 
                           OUT_ADD_WR(1) => s_add_wr_1_port, OUT_ADD_WR(0) => 
                           s_add_wr_0_port, OUT_ADD_RD1(4) => s_add_rd1_4_port,
                           OUT_ADD_RD1(3) => s_add_rd1_3_port, OUT_ADD_RD1(2) 
                           => s_add_rd1_2_port, OUT_ADD_RD1(1) => 
                           s_add_rd1_1_port, OUT_ADD_RD1(0) => s_add_rd1_0_port
                           , OUT_ADD_RD2(4) => s_add_rd2_4_port, OUT_ADD_RD2(3)
                           => s_add_rd2_3_port, OUT_ADD_RD2(2) => 
                           s_add_rd2_2_port, OUT_ADD_RD2(1) => s_add_rd2_1_port
                           , OUT_ADD_RD2(0) => s_add_rd2_0_port, OUT_DATAIN(7) 
                           => s_datain_7_port, OUT_DATAIN(6) => s_datain_6_port
                           , OUT_DATAIN(5) => s_datain_5_port, OUT_DATAIN(4) =>
                           s_datain_4_port, OUT_DATAIN(3) => s_datain_3_port, 
                           OUT_DATAIN(2) => s_datain_2_port, OUT_DATAIN(1) => 
                           s_datain_1_port, OUT_DATAIN(0) => s_datain_0_port);
   cwp_controller : CWP_N8 port map( CLK => CLK, RESET => RESET, CANSAVE => 
                           s_cansave, CANRESTORE => CANRESTORE, CALL => s_call,
                           RETN => s_retn, ENABLE(7) => cwp_enable_7_port, 
                           ENABLE(6) => cwp_enable_6_port, ENABLE(5) => 
                           cwp_enable_5_port, ENABLE(4) => cwp_enable_4_port, 
                           ENABLE(3) => cwp_enable_3_port, ENABLE(2) => 
                           cwp_enable_2_port, ENABLE(1) => cwp_enable_1_port, 
                           ENABLE(0) => cwp_enable_0_port, SAVE => cwp_save, 
                           RESTORE => cwp_restore, IOMODE => cwp_iomode, DONE 
                           => swp_done);
   swp_controller : SWP_reg_size8_N4_F8 port map( CLK => CLK, RESET => RESET, 
                           OVERRIDE => swp_override, ENABLE(7) => 
                           swp_enable_7_port, ENABLE(6) => swp_enable_6_port, 
                           ENABLE(5) => swp_enable_5_port, ENABLE(4) => 
                           swp_enable_4_port, ENABLE(3) => swp_enable_3_port, 
                           ENABLE(2) => swp_enable_2_port, ENABLE(1) => 
                           swp_enable_1_port, ENABLE(0) => swp_enable_0_port, 
                           IOMODE => swp_iomode, SAVE => cwp_save, RESTORE => 
                           cwp_restore, SPILL => SPILL_port, FILL => FILL_port,
                           SELIO => swp_selio, SELLOC => swp_selloc, ADDR(1) =>
                           ov_addr_1_port, ADDR(0) => ov_addr_0_port, DATAIN(7)
                           => s_out1_7_port, DATAIN(6) => s_out1_6_port, 
                           DATAIN(5) => s_out1_5_port, DATAIN(4) => 
                           s_out1_4_port, DATAIN(3) => s_out1_3_port, DATAIN(2)
                           => s_out1_2_port, DATAIN(1) => s_out1_1_port, 
                           DATAIN(0) => s_out1_0_port, DATAOUT(7) => 
                           swp_dataout_7_port, DATAOUT(6) => swp_dataout_6_port
                           , DATAOUT(5) => swp_dataout_5_port, DATAOUT(4) => 
                           swp_dataout_4_port, DATAOUT(3) => swp_dataout_3_port
                           , DATAOUT(2) => swp_dataout_2_port, DATAOUT(1) => 
                           swp_dataout_1_port, DATAOUT(0) => swp_dataout_0_port
                           , MBUS(7) => MBUS(7), MBUS(6) => MBUS(6), MBUS(5) =>
                           MBUS(5), MBUS(4) => MBUS(4), MBUS(3) => MBUS(3), 
                           MBUS(2) => MBUS(2), MBUS(1) => MBUS(1), MBUS(0) => 
                           MBUS(0), ACK => ACK, DONE => swp_done);
   rf : windowed_register_file_reg_size8_M20_N4_F4 port map( CLK => CLK, RESET 
                           => RESET, ENABLE(8) => if_enable_7_port, ENABLE(7) 
                           => if_enable_6_port, ENABLE(6) => if_enable_5_port, 
                           ENABLE(5) => if_enable_4_port, ENABLE(4) => 
                           if_enable_3_port, ENABLE(3) => if_enable_2_port, 
                           ENABLE(2) => if_enable_1_port, ENABLE(1) => 
                           if_enable_0_port, ENABLE(0) => s_enable_0_port, 
                           IOMODE => s_iomode, RD1 => s_rd1, RD2 => s_rd2, WR 
                           => s_wr, ADD_WR(4) => s_add_wr_4_port, ADD_WR(3) => 
                           s_add_wr_3_port, ADD_WR(2) => s_add_wr_2_port, 
                           ADD_WR(1) => s_add_wr_1_port, ADD_WR(0) => 
                           s_add_wr_0_port, ADD_RD1(4) => s_add_rd1_4_port, 
                           ADD_RD1(3) => s_add_rd1_3_port, ADD_RD1(2) => 
                           s_add_rd1_2_port, ADD_RD1(1) => s_add_rd1_1_port, 
                           ADD_RD1(0) => s_add_rd1_0_port, ADD_RD2(4) => 
                           s_add_rd2_4_port, ADD_RD2(3) => s_add_rd2_3_port, 
                           ADD_RD2(2) => s_add_rd2_2_port, ADD_RD2(1) => 
                           s_add_rd2_1_port, ADD_RD2(0) => s_add_rd2_0_port, 
                           DATAIN(7) => s_datain_7_port, DATAIN(6) => 
                           s_datain_6_port, DATAIN(5) => s_datain_5_port, 
                           DATAIN(4) => s_datain_4_port, DATAIN(3) => 
                           s_datain_3_port, DATAIN(2) => s_datain_2_port, 
                           DATAIN(1) => s_datain_1_port, DATAIN(0) => 
                           s_datain_0_port, OUT1(7) => s_out1_7_port, OUT1(6) 
                           => s_out1_6_port, OUT1(5) => s_out1_5_port, OUT1(4) 
                           => s_out1_4_port, OUT1(3) => s_out1_3_port, OUT1(2) 
                           => s_out1_2_port, OUT1(1) => s_out1_1_port, OUT1(0) 
                           => s_out1_0_port, OUT2(7) => s_out2_7_port, OUT2(6) 
                           => s_out2_6_port, OUT2(5) => s_out2_5_port, OUT2(4) 
                           => s_out2_4_port, OUT2(3) => s_out2_3_port, OUT2(2) 
                           => s_out2_2_port, OUT2(1) => s_out2_1_port, OUT2(0) 
                           => s_out2_0_port);
   X_Logic0_port <= '0';
   OUT1_reg_7_inst : DLL_X1 port map( D => s_out1_7_port, GN => n22, Q => 
                           OUT1(7));
   OUT1_reg_6_inst : DLL_X1 port map( D => s_out1_6_port, GN => n22, Q => 
                           OUT1(6));
   OUT1_reg_5_inst : DLL_X1 port map( D => s_out1_5_port, GN => n22, Q => 
                           OUT1(5));
   OUT1_reg_4_inst : DLL_X1 port map( D => s_out1_4_port, GN => n22, Q => 
                           OUT1(4));
   OUT1_reg_3_inst : DLL_X1 port map( D => s_out1_3_port, GN => n22, Q => 
                           OUT1(3));
   OUT1_reg_2_inst : DLL_X1 port map( D => s_out1_2_port, GN => n22, Q => 
                           OUT1(2));
   OUT1_reg_1_inst : DLL_X1 port map( D => s_out1_1_port, GN => n22, Q => 
                           OUT1(1));
   OUT1_reg_0_inst : DLL_X1 port map( D => s_out1_0_port, GN => n22, Q => 
                           OUT1(0));
   OUT2_reg_7_inst : DLL_X1 port map( D => s_out2_7_port, GN => n22, Q => 
                           OUT2(7));
   OUT2_reg_6_inst : DLL_X1 port map( D => s_out2_6_port, GN => n22, Q => 
                           OUT2(6));
   OUT2_reg_5_inst : DLL_X1 port map( D => s_out2_5_port, GN => n22, Q => 
                           OUT2(5));
   OUT2_reg_4_inst : DLL_X1 port map( D => s_out2_4_port, GN => n22, Q => 
                           OUT2(4));
   OUT2_reg_3_inst : DLL_X1 port map( D => s_out2_3_port, GN => n22, Q => 
                           OUT2(3));
   OUT2_reg_1_inst : DLL_X1 port map( D => s_out2_1_port, GN => n22, Q => 
                           OUT2(1));
   OUT2_reg_0_inst : DLL_X1 port map( D => s_out2_0_port, GN => n22, Q => 
                           OUT2(0));
   U27 : NAND3_X1 port map( A1 => cwp_enable_5_port, A2 => cwp_enable_4_port, 
                           A3 => cwp_enable_6_port, ZN => n18);
   OUT2_reg_2_inst : DLL_X1 port map( D => s_out2_2_port, GN => n20, Q => 
                           OUT2(2));
   U28 : INV_X1 port map( A => ENABLE, ZN => n17);
   U29 : AND2_X1 port map( A1 => CANSAVE, A2 => n18, ZN => s_cansave);
   U30 : AND3_X1 port map( A1 => ENABLE, A2 => n15, A3 => RETN, ZN => s_retn);
   U31 : NAND4_X1 port map( A1 => cwp_enable_2_port, A2 => cwp_enable_1_port, 
                           A3 => cwp_enable_0_port, A4 => n16, ZN => n15);
   U32 : INV_X1 port map( A => CANRESTORE, ZN => n16);
   U33 : AND2_X1 port map( A1 => CALL, A2 => ENABLE, ZN => s_call);
   U34 : AND2_X1 port map( A1 => FILL_port, A2 => n21, ZN => ov_write);
   U35 : CLKBUF_X1 port map( A => swp_override, Z => n20);
   U36 : INV_X1 port map( A => swp_selio, ZN => ov_addr_2_port);
   U37 : NOR2_X1 port map( A1 => swp_selloc, A2 => swp_selio, ZN => 
                           ov_addr_3_port);
   U38 : OR2_X1 port map( A1 => swp_selloc, A2 => swp_selio, ZN => n21);
   U39 : CLKBUF_X1 port map( A => n20, Z => n22);
   U40 : NOR2_X1 port map( A1 => n20, A2 => n17, ZN => s_enable_0_port);
   U41 : AND2_X1 port map( A1 => n21, A2 => SPILL_port, ZN => ov_read1);

end SYN_STRUCTURAL;
