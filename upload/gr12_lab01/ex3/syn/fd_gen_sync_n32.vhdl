
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GEN_N32_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GEN_N32_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GEN_N32_1.all;

entity FD_GEN_N32_1 is

   port( D : in std_logic_vector (31 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (31 downto 0));

end FD_GEN_N32_1;

architecture SYN_SYNC of FD_GEN_N32_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, 
      N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32
      , N33, N34, n2, n3_port, n4_port, n5_port, n6_port, n7_port, n8_port, 
      n9_port, n10_port, n11_port, n12_port, n13_port, n14_port, n15_port, 
      n16_port, n17_port, n18_port, n19_port, n20_port, n21_port, n22_port, 
      n23_port, n24_port, n25_port, n26_port, n27_port, n28_port, n29_port, 
      n30_port, n31_port, n32_port, n33_port, n35 : std_logic;

begin
   
   Q_reg_31_inst : DFF_X1 port map( D => N34, CK => CK, Q => Q(31), QN => 
                           n33_port);
   Q_reg_30_inst : DFF_X1 port map( D => N33, CK => CK, Q => Q(30), QN => 
                           n32_port);
   Q_reg_29_inst : DFF_X1 port map( D => N32, CK => CK, Q => Q(29), QN => 
                           n31_port);
   Q_reg_28_inst : DFF_X1 port map( D => N31, CK => CK, Q => Q(28), QN => 
                           n30_port);
   Q_reg_27_inst : DFF_X1 port map( D => N30, CK => CK, Q => Q(27), QN => 
                           n29_port);
   Q_reg_26_inst : DFF_X1 port map( D => N29, CK => CK, Q => Q(26), QN => 
                           n28_port);
   Q_reg_25_inst : DFF_X1 port map( D => N28, CK => CK, Q => Q(25), QN => 
                           n27_port);
   Q_reg_24_inst : DFF_X1 port map( D => N27, CK => CK, Q => Q(24), QN => 
                           n26_port);
   Q_reg_23_inst : DFF_X1 port map( D => N26, CK => CK, Q => Q(23), QN => 
                           n25_port);
   Q_reg_22_inst : DFF_X1 port map( D => N25, CK => CK, Q => Q(22), QN => 
                           n24_port);
   Q_reg_21_inst : DFF_X1 port map( D => N24, CK => CK, Q => Q(21), QN => 
                           n23_port);
   Q_reg_20_inst : DFF_X1 port map( D => N23, CK => CK, Q => Q(20), QN => 
                           n22_port);
   Q_reg_19_inst : DFF_X1 port map( D => N22, CK => CK, Q => Q(19), QN => 
                           n21_port);
   Q_reg_18_inst : DFF_X1 port map( D => N21, CK => CK, Q => Q(18), QN => 
                           n20_port);
   Q_reg_17_inst : DFF_X1 port map( D => N20, CK => CK, Q => Q(17), QN => 
                           n19_port);
   Q_reg_16_inst : DFF_X1 port map( D => N19, CK => CK, Q => Q(16), QN => 
                           n18_port);
   Q_reg_15_inst : DFF_X1 port map( D => N18, CK => CK, Q => Q(15), QN => 
                           n17_port);
   Q_reg_14_inst : DFF_X1 port map( D => N17, CK => CK, Q => Q(14), QN => 
                           n16_port);
   Q_reg_13_inst : DFF_X1 port map( D => N16, CK => CK, Q => Q(13), QN => 
                           n15_port);
   Q_reg_12_inst : DFF_X1 port map( D => N15, CK => CK, Q => Q(12), QN => 
                           n14_port);
   Q_reg_11_inst : DFF_X1 port map( D => N14, CK => CK, Q => Q(11), QN => 
                           n13_port);
   Q_reg_10_inst : DFF_X1 port map( D => N13, CK => CK, Q => Q(10), QN => 
                           n12_port);
   Q_reg_9_inst : DFF_X1 port map( D => N12, CK => CK, Q => Q(9), QN => 
                           n11_port);
   Q_reg_8_inst : DFF_X1 port map( D => N11, CK => CK, Q => Q(8), QN => 
                           n10_port);
   Q_reg_7_inst : DFF_X1 port map( D => N10, CK => CK, Q => Q(7), QN => n9_port
                           );
   Q_reg_6_inst : DFF_X1 port map( D => N9, CK => CK, Q => Q(6), QN => n8_port)
                           ;
   Q_reg_5_inst : DFF_X1 port map( D => N8, CK => CK, Q => Q(5), QN => n7_port)
                           ;
   Q_reg_4_inst : DFF_X1 port map( D => N7, CK => CK, Q => Q(4), QN => n6_port)
                           ;
   Q_reg_3_inst : DFF_X1 port map( D => N6, CK => CK, Q => Q(3), QN => n5_port)
                           ;
   Q_reg_2_inst : DFF_X1 port map( D => N5, CK => CK, Q => Q(2), QN => n4_port)
                           ;
   Q_reg_1_inst : DFF_X1 port map( D => N4, CK => CK, Q => Q(1), QN => n3_port)
                           ;
   Q_reg_0_inst : DFF_X1 port map( D => N3, CK => CK, Q => Q(0), QN => n2);
   U36 : AND2_X1 port map( A1 => D(6), A2 => n35, ZN => N9);
   U37 : AND2_X1 port map( A1 => D(5), A2 => n35, ZN => N8);
   U38 : AND2_X1 port map( A1 => D(4), A2 => n35, ZN => N7);
   U39 : AND2_X1 port map( A1 => D(3), A2 => n35, ZN => N6);
   U40 : AND2_X1 port map( A1 => D(2), A2 => n35, ZN => N5);
   U41 : AND2_X1 port map( A1 => D(1), A2 => n35, ZN => N4);
   U42 : AND2_X1 port map( A1 => D(31), A2 => n35, ZN => N34);
   U43 : AND2_X1 port map( A1 => D(30), A2 => n35, ZN => N33);
   U44 : AND2_X1 port map( A1 => D(29), A2 => n35, ZN => N32);
   U45 : AND2_X1 port map( A1 => D(28), A2 => n35, ZN => N31);
   U46 : AND2_X1 port map( A1 => D(27), A2 => n35, ZN => N30);
   U47 : AND2_X1 port map( A1 => D(0), A2 => n35, ZN => N3);
   U48 : AND2_X1 port map( A1 => D(26), A2 => n35, ZN => N29);
   U49 : AND2_X1 port map( A1 => D(25), A2 => n35, ZN => N28);
   U50 : AND2_X1 port map( A1 => D(24), A2 => n35, ZN => N27);
   U51 : AND2_X1 port map( A1 => D(23), A2 => n35, ZN => N26);
   U52 : AND2_X1 port map( A1 => D(22), A2 => n35, ZN => N25);
   U53 : AND2_X1 port map( A1 => D(21), A2 => n35, ZN => N24);
   U54 : AND2_X1 port map( A1 => D(20), A2 => n35, ZN => N23);
   U55 : AND2_X1 port map( A1 => D(19), A2 => n35, ZN => N22);
   U56 : AND2_X1 port map( A1 => D(18), A2 => n35, ZN => N21);
   U57 : AND2_X1 port map( A1 => D(17), A2 => n35, ZN => N20);
   U58 : AND2_X1 port map( A1 => D(16), A2 => n35, ZN => N19);
   U59 : AND2_X1 port map( A1 => D(15), A2 => n35, ZN => N18);
   U60 : AND2_X1 port map( A1 => D(14), A2 => n35, ZN => N17);
   U61 : AND2_X1 port map( A1 => D(13), A2 => n35, ZN => N16);
   U62 : AND2_X1 port map( A1 => D(12), A2 => n35, ZN => N15);
   U63 : AND2_X1 port map( A1 => D(11), A2 => n35, ZN => N14);
   U64 : AND2_X1 port map( A1 => D(10), A2 => n35, ZN => N13);
   U65 : AND2_X1 port map( A1 => D(9), A2 => n35, ZN => N12);
   U66 : AND2_X1 port map( A1 => D(8), A2 => n35, ZN => N11);
   U67 : AND2_X1 port map( A1 => D(7), A2 => n35, ZN => N10);
   U68 : INV_X1 port map( A => RESET, ZN => n35);

end SYN_SYNC;
