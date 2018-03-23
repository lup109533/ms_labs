
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU;

package body CONV_PACK_ALU is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU;

architecture SYN_BEHAVIOR of ALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N46, N47, N48, 
      N49, N50, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, 
      n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, 
      n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, 
      n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, 
      n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, 
      n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, 
      n171, n172, n173, n174, n175, n176, n177, n178 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N49, D => N50, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N49, D => N48, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N49, D => N47, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N49, D => N46, Q => OUTALU(0));
   U96 : NAND2_X1 port map( A1 => n101, A2 => n102, ZN => N50);
   U97 : NAND3_X1 port map( A1 => n103, A2 => n104, A3 => DATA1(2), ZN => n102)
                           ;
   U98 : MUX2_X1 port map( A => n105, B => n106, S => FUNC_2_port, Z => n101);
   U99 : OAI221_X1 port map( B1 => DATA2(3), B2 => DATA1(3), C1 => n107, C2 => 
                           n104, A => n108, ZN => n106);
   U100 : AOI21_X1 port map( B1 => n109, B2 => n110, A => n111, ZN => n105);
   U101 : MUX2_X1 port map( A => n112, B => n113, S => FUNC_1_port, Z => n111);
   U102 : MUX2_X1 port map( A => n114, B => n115, S => FUNC_0_port, Z => n113);
   U103 : AND2_X1 port map( A1 => DATA2(3), A2 => DATA1(3), ZN => n115);
   U104 : INV_X1 port map( A => n116, ZN => n114);
   U105 : NOR2_X1 port map( A1 => FUNC_3_port, A2 => n117, ZN => n112);
   U106 : XNOR2_X1 port map( A => n107, B => n118, ZN => n117);
   U107 : XOR2_X1 port map( A => n119, B => n104, Z => n118);
   U108 : AOI22_X1 port map( A1 => n120, A2 => n121, B1 => n122, B2 => DATA1(2)
                           , ZN => n119);
   U109 : OR2_X1 port map( A1 => n121, A2 => n120, ZN => n122);
   U110 : XOR2_X1 port map( A => DATA2(3), B => DATA1(3), Z => n107);
   U111 : MUX2_X1 port map( A => DATA1(2), B => DATA1(0), S => FUNC_0_port, Z 
                           => n109);
   U112 : NAND4_X1 port map( A1 => n123, A2 => n124, A3 => n125, A4 => n126, ZN
                           => N49);
   U113 : AND2_X1 port map( A1 => n127, A2 => n128, ZN => n125);
   U114 : OAI211_X1 port map( C1 => n129, C2 => n127, A => n130, B => n131, ZN 
                           => N48);
   U115 : AOI21_X1 port map( B1 => DATA1(1), B2 => n132, A => n133, ZN => n131)
                           ;
   U116 : AND3_X1 port map( A1 => FUNC_0_port, A2 => n134, A3 => DATA1(3), ZN 
                           => n133);
   U117 : OAI22_X1 port map( A1 => FUNC_0_port, A2 => n123, B1 => n124, B2 => 
                           n135, ZN => n132);
   U118 : NAND2_X1 port map( A1 => DATA2(1), A2 => n116, ZN => n135);
   U119 : NAND2_X1 port map( A1 => n136, A2 => n137, ZN => n116);
   U120 : MUX2_X1 port map( A => n138, B => n139, S => DATA1(2), Z => n130);
   U121 : AOI22_X1 port map( A1 => n140, A2 => n141, B1 => n142, B2 => DATA2(2)
                           , ZN => n139);
   U122 : NAND2_X1 port map( A1 => DATA2(2), A2 => FUNC_0_port, ZN => n141);
   U123 : NAND2_X1 port map( A1 => n140, A2 => DATA2(2), ZN => n138);
   U124 : XOR2_X1 port map( A => n143, B => n120, Z => n129);
   U125 : XOR2_X1 port map( A => DATA2(2), B => FUNC_0_port, Z => n120);
   U126 : XNOR2_X1 port map( A => DATA1(2), B => n121, ZN => n143);
   U127 : AOI21_X1 port map( B1 => n144, B2 => n145, A => n146, ZN => n121);
   U128 : INV_X1 port map( A => n147, ZN => n146);
   U129 : OAI21_X1 port map( B1 => n145, B2 => n144, A => n148, ZN => n147);
   U130 : OAI211_X1 port map( C1 => n127, C2 => n149, A => n150, B => n151, ZN 
                           => N47);
   U131 : AOI22_X1 port map( A1 => n152, A2 => n153, B1 => n154, B2 => n134, ZN
                           => n151);
   U132 : INV_X1 port map( A => n123, ZN => n134);
   U133 : AOI22_X1 port map( A1 => n155, A2 => n110, B1 => n156, B2 => n103, ZN
                           => n123);
   U134 : MUX2_X1 port map( A => DATA1(0), B => DATA1(2), S => FUNC_0_port, Z 
                           => n154);
   U135 : NOR2_X1 port map( A1 => n136, A2 => n157, ZN => n152);
   U136 : AND2_X1 port map( A1 => DATA2(1), A2 => DATA1(0), ZN => n136);
   U137 : MUX2_X1 port map( A => n158, B => n159, S => DATA2(1), Z => n150);
   U138 : AOI221_X1 port map( B1 => n142, B2 => DATA1(1), C1 => n160, C2 => 
                           n153, A => n161, ZN => n159);
   U139 : AOI21_X1 port map( B1 => DATA1(1), B2 => FUNC_0_port, A => n128, ZN 
                           => n161);
   U140 : INV_X1 port map( A => n140, ZN => n128);
   U141 : INV_X1 port map( A => n124, ZN => n153);
   U142 : NAND2_X1 port map( A1 => n162, A2 => n104, ZN => n124);
   U143 : NOR2_X1 port map( A1 => n137, A2 => n163, ZN => n160);
   U144 : INV_X1 port map( A => n157, ZN => n137);
   U145 : NAND2_X1 port map( A1 => DATA2(0), A2 => DATA1(1), ZN => n157);
   U146 : INV_X1 port map( A => n126, ZN => n142);
   U147 : NAND2_X1 port map( A1 => n162, A2 => FUNC_0_port, ZN => n126);
   U148 : NOR3_X1 port map( A1 => FUNC_2_port, A2 => FUNC_3_port, A3 => n108, 
                           ZN => n162);
   U149 : NAND2_X1 port map( A1 => n140, A2 => DATA1(1), ZN => n158);
   U150 : NOR3_X1 port map( A1 => FUNC_1_port, A2 => FUNC_3_port, A3 => n155, 
                           ZN => n140);
   U151 : XOR2_X1 port map( A => n144, B => n164, Z => n149);
   U152 : XOR2_X1 port map( A => n145, B => n148, Z => n164);
   U153 : AOI21_X1 port map( B1 => n165, B2 => FUNC_0_port, A => n166, ZN => 
                           n145);
   U154 : AOI21_X1 port map( B1 => n104, B2 => n167, A => n163, ZN => n166);
   U155 : XOR2_X1 port map( A => DATA2(1), B => n104, Z => n144);
   U156 : OAI221_X1 port map( B1 => n148, B2 => n168, C1 => n169, C2 => n127, A
                           => n170, ZN => N46);
   U157 : MUX2_X1 port map( A => n171, B => n172, S => FUNC_2_port, Z => n170);
   U158 : NAND2_X1 port map( A1 => n173, A2 => n108, ZN => n172);
   U159 : MUX2_X1 port map( A => DATA1(0), B => n174, S => DATA2(0), Z => n173)
                           ;
   U160 : NAND2_X1 port map( A1 => DATA1(0), A2 => FUNC_0_port, ZN => n174);
   U161 : AOI21_X1 port map( B1 => n175, B2 => n110, A => n176, ZN => n171);
   U162 : NOR3_X1 port map( A1 => n177, A2 => n108, A3 => n163, ZN => n176);
   U163 : INV_X1 port map( A => DATA1(0), ZN => n163);
   U164 : NOR2_X1 port map( A1 => n156, A2 => FUNC_1_port, ZN => n110);
   U165 : MUX2_X1 port map( A => DATA1(3), B => DATA1(1), S => FUNC_0_port, Z 
                           => n175);
   U166 : NAND3_X1 port map( A1 => n155, A2 => n156, A3 => n108, ZN => n127);
   U167 : INV_X1 port map( A => FUNC_3_port, ZN => n156);
   U168 : XNOR2_X1 port map( A => n165, B => n178, ZN => n169);
   U169 : XOR2_X1 port map( A => FUNC_0_port, B => DATA1(0), Z => n178);
   U170 : INV_X1 port map( A => n167, ZN => n165);
   U171 : XNOR2_X1 port map( A => n177, B => n104, ZN => n167);
   U172 : INV_X1 port map( A => FUNC_0_port, ZN => n104);
   U173 : INV_X1 port map( A => DATA2(0), ZN => n177);
   U174 : NAND2_X1 port map( A1 => FUNC_0_port, A2 => n103, ZN => n168);
   U175 : NOR2_X1 port map( A1 => n155, A2 => n108, ZN => n103);
   U176 : INV_X1 port map( A => FUNC_1_port, ZN => n108);
   U177 : INV_X1 port map( A => FUNC_2_port, ZN => n155);
   U178 : INV_X1 port map( A => DATA1(1), ZN => n148);

end SYN_BEHAVIOR;
