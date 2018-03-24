
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GEN_N32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GEN_N32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GEN_N32.all;

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
