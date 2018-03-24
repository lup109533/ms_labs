
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_acc_behavioral_N32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_acc_behavioral_N32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_behavioral_N32.all;

entity acc_behavioral_N32_DW01_add_0 is

   port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (31 downto 0);  CO : out std_logic);

end acc_behavioral_N32_DW01_add_0;

architecture SYN_rpl of acc_behavioral_N32_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_31_port, carry_30_port, carry_29_port, carry_28_port, 
      carry_27_port, carry_26_port, carry_25_port, carry_24_port, carry_23_port
      , carry_22_port, carry_21_port, carry_20_port, carry_19_port, 
      carry_18_port, carry_17_port, carry_16_port, carry_15_port, carry_14_port
      , carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, carry_1_port, n_1002 : 
      std_logic;

begin
   
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           n_1002, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1 : AND2_X1 port map( A1 => A(0), A2 => B(0), ZN => carry_1_port);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_behavioral_N32.all;

entity acc_behavioral_N32 is

   port( A, B : in std_logic_vector (31 downto 0);  CLK, RST_n, ACCUMULATE : in
         std_logic;  Y : out std_logic_vector (31 downto 0));

end acc_behavioral_N32;

architecture SYN_behavioral of acc_behavioral_N32 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component acc_behavioral_N32_DW01_add_0
      port( A, B : in std_logic_vector (31 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (31 downto 0);  CO : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, 
      Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, 
      Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, 
      Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port,
      Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, 
      mux_o_31_port, mux_o_30_port, mux_o_29_port, mux_o_28_port, mux_o_27_port
      , mux_o_26_port, mux_o_25_port, mux_o_24_port, mux_o_23_port, 
      mux_o_22_port, mux_o_21_port, mux_o_20_port, mux_o_19_port, mux_o_18_port
      , mux_o_17_port, mux_o_16_port, mux_o_15_port, mux_o_14_port, 
      mux_o_13_port, mux_o_12_port, mux_o_11_port, mux_o_10_port, mux_o_9_port,
      mux_o_8_port, mux_o_7_port, mux_o_6_port, mux_o_5_port, mux_o_4_port, 
      mux_o_3_port, mux_o_2_port, mux_o_1_port, mux_o_0_port, add_o_31_port, 
      add_o_30_port, add_o_29_port, add_o_28_port, add_o_27_port, add_o_26_port
      , add_o_25_port, add_o_24_port, add_o_23_port, add_o_22_port, 
      add_o_21_port, add_o_20_port, add_o_19_port, add_o_18_port, add_o_17_port
      , add_o_16_port, add_o_15_port, add_o_14_port, add_o_13_port, 
      add_o_12_port, add_o_11_port, add_o_10_port, add_o_9_port, add_o_8_port, 
      add_o_7_port, add_o_6_port, add_o_5_port, add_o_4_port, add_o_3_port, 
      add_o_2_port, add_o_1_port, add_o_0_port, n1, n35, n_1003, n_1004, n_1005
      , n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014,
      n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, n_1023, 
      n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, n_1031, n_1032, 
      n_1033, n_1034, n_1035 : std_logic;

begin
   Y <= ( Y_31_port, Y_30_port, Y_29_port, Y_28_port, Y_27_port, Y_26_port, 
      Y_25_port, Y_24_port, Y_23_port, Y_22_port, Y_21_port, Y_20_port, 
      Y_19_port, Y_18_port, Y_17_port, Y_16_port, Y_15_port, Y_14_port, 
      Y_13_port, Y_12_port, Y_11_port, Y_10_port, Y_9_port, Y_8_port, Y_7_port,
      Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   n1 <= '0';
   reg_o_reg_0_inst : DFFR_X1 port map( D => add_o_0_port, CK => CLK, RN => n35
                           , Q => Y_0_port, QN => n_1003);
   reg_o_reg_1_inst : DFFR_X1 port map( D => add_o_1_port, CK => CLK, RN => n35
                           , Q => Y_1_port, QN => n_1004);
   reg_o_reg_2_inst : DFFR_X1 port map( D => add_o_2_port, CK => CLK, RN => n35
                           , Q => Y_2_port, QN => n_1005);
   reg_o_reg_3_inst : DFFR_X1 port map( D => add_o_3_port, CK => CLK, RN => n35
                           , Q => Y_3_port, QN => n_1006);
   reg_o_reg_4_inst : DFFR_X1 port map( D => add_o_4_port, CK => CLK, RN => n35
                           , Q => Y_4_port, QN => n_1007);
   reg_o_reg_5_inst : DFFR_X1 port map( D => add_o_5_port, CK => CLK, RN => n35
                           , Q => Y_5_port, QN => n_1008);
   reg_o_reg_6_inst : DFFR_X1 port map( D => add_o_6_port, CK => CLK, RN => n35
                           , Q => Y_6_port, QN => n_1009);
   reg_o_reg_7_inst : DFFR_X1 port map( D => add_o_7_port, CK => CLK, RN => n35
                           , Q => Y_7_port, QN => n_1010);
   reg_o_reg_8_inst : DFFR_X1 port map( D => add_o_8_port, CK => CLK, RN => n35
                           , Q => Y_8_port, QN => n_1011);
   reg_o_reg_9_inst : DFFR_X1 port map( D => add_o_9_port, CK => CLK, RN => n35
                           , Q => Y_9_port, QN => n_1012);
   reg_o_reg_10_inst : DFFR_X1 port map( D => add_o_10_port, CK => CLK, RN => 
                           n35, Q => Y_10_port, QN => n_1013);
   reg_o_reg_11_inst : DFFR_X1 port map( D => add_o_11_port, CK => CLK, RN => 
                           n35, Q => Y_11_port, QN => n_1014);
   reg_o_reg_12_inst : DFFR_X1 port map( D => add_o_12_port, CK => CLK, RN => 
                           n35, Q => Y_12_port, QN => n_1015);
   reg_o_reg_13_inst : DFFR_X1 port map( D => add_o_13_port, CK => CLK, RN => 
                           n35, Q => Y_13_port, QN => n_1016);
   reg_o_reg_14_inst : DFFR_X1 port map( D => add_o_14_port, CK => CLK, RN => 
                           n35, Q => Y_14_port, QN => n_1017);
   reg_o_reg_15_inst : DFFR_X1 port map( D => add_o_15_port, CK => CLK, RN => 
                           n35, Q => Y_15_port, QN => n_1018);
   reg_o_reg_16_inst : DFFR_X1 port map( D => add_o_16_port, CK => CLK, RN => 
                           n35, Q => Y_16_port, QN => n_1019);
   reg_o_reg_17_inst : DFFR_X1 port map( D => add_o_17_port, CK => CLK, RN => 
                           n35, Q => Y_17_port, QN => n_1020);
   reg_o_reg_18_inst : DFFR_X1 port map( D => add_o_18_port, CK => CLK, RN => 
                           n35, Q => Y_18_port, QN => n_1021);
   reg_o_reg_19_inst : DFFR_X1 port map( D => add_o_19_port, CK => CLK, RN => 
                           n35, Q => Y_19_port, QN => n_1022);
   reg_o_reg_20_inst : DFFR_X1 port map( D => add_o_20_port, CK => CLK, RN => 
                           n35, Q => Y_20_port, QN => n_1023);
   reg_o_reg_21_inst : DFFR_X1 port map( D => add_o_21_port, CK => CLK, RN => 
                           n35, Q => Y_21_port, QN => n_1024);
   reg_o_reg_22_inst : DFFR_X1 port map( D => add_o_22_port, CK => CLK, RN => 
                           n35, Q => Y_22_port, QN => n_1025);
   reg_o_reg_23_inst : DFFR_X1 port map( D => add_o_23_port, CK => CLK, RN => 
                           n35, Q => Y_23_port, QN => n_1026);
   reg_o_reg_24_inst : DFFR_X1 port map( D => add_o_24_port, CK => CLK, RN => 
                           n35, Q => Y_24_port, QN => n_1027);
   reg_o_reg_25_inst : DFFR_X1 port map( D => add_o_25_port, CK => CLK, RN => 
                           n35, Q => Y_25_port, QN => n_1028);
   reg_o_reg_26_inst : DFFR_X1 port map( D => add_o_26_port, CK => CLK, RN => 
                           n35, Q => Y_26_port, QN => n_1029);
   reg_o_reg_27_inst : DFFR_X1 port map( D => add_o_27_port, CK => CLK, RN => 
                           n35, Q => Y_27_port, QN => n_1030);
   reg_o_reg_28_inst : DFFR_X1 port map( D => add_o_28_port, CK => CLK, RN => 
                           n35, Q => Y_28_port, QN => n_1031);
   reg_o_reg_29_inst : DFFR_X1 port map( D => add_o_29_port, CK => CLK, RN => 
                           n35, Q => Y_29_port, QN => n_1032);
   reg_o_reg_30_inst : DFFR_X1 port map( D => add_o_30_port, CK => CLK, RN => 
                           n35, Q => Y_30_port, QN => n_1033);
   reg_o_reg_31_inst : DFFR_X1 port map( D => add_o_31_port, CK => CLK, RN => 
                           n35, Q => Y_31_port, QN => n_1034);
   add_31 : acc_behavioral_N32_DW01_add_0 port map( A(31) => A(31), A(30) => 
                           A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(31) => mux_o_31_port, B(30)
                           => mux_o_30_port, B(29) => mux_o_29_port, B(28) => 
                           mux_o_28_port, B(27) => mux_o_27_port, B(26) => 
                           mux_o_26_port, B(25) => mux_o_25_port, B(24) => 
                           mux_o_24_port, B(23) => mux_o_23_port, B(22) => 
                           mux_o_22_port, B(21) => mux_o_21_port, B(20) => 
                           mux_o_20_port, B(19) => mux_o_19_port, B(18) => 
                           mux_o_18_port, B(17) => mux_o_17_port, B(16) => 
                           mux_o_16_port, B(15) => mux_o_15_port, B(14) => 
                           mux_o_14_port, B(13) => mux_o_13_port, B(12) => 
                           mux_o_12_port, B(11) => mux_o_11_port, B(10) => 
                           mux_o_10_port, B(9) => mux_o_9_port, B(8) => 
                           mux_o_8_port, B(7) => mux_o_7_port, B(6) => 
                           mux_o_6_port, B(5) => mux_o_5_port, B(4) => 
                           mux_o_4_port, B(3) => mux_o_3_port, B(2) => 
                           mux_o_2_port, B(1) => mux_o_1_port, B(0) => 
                           mux_o_0_port, CI => n1, SUM(31) => add_o_31_port, 
                           SUM(30) => add_o_30_port, SUM(29) => add_o_29_port, 
                           SUM(28) => add_o_28_port, SUM(27) => add_o_27_port, 
                           SUM(26) => add_o_26_port, SUM(25) => add_o_25_port, 
                           SUM(24) => add_o_24_port, SUM(23) => add_o_23_port, 
                           SUM(22) => add_o_22_port, SUM(21) => add_o_21_port, 
                           SUM(20) => add_o_20_port, SUM(19) => add_o_19_port, 
                           SUM(18) => add_o_18_port, SUM(17) => add_o_17_port, 
                           SUM(16) => add_o_16_port, SUM(15) => add_o_15_port, 
                           SUM(14) => add_o_14_port, SUM(13) => add_o_13_port, 
                           SUM(12) => add_o_12_port, SUM(11) => add_o_11_port, 
                           SUM(10) => add_o_10_port, SUM(9) => add_o_9_port, 
                           SUM(8) => add_o_8_port, SUM(7) => add_o_7_port, 
                           SUM(6) => add_o_6_port, SUM(5) => add_o_5_port, 
                           SUM(4) => add_o_4_port, SUM(3) => add_o_3_port, 
                           SUM(2) => add_o_2_port, SUM(1) => add_o_1_port, 
                           SUM(0) => add_o_0_port, CO => n_1035);
   U70 : INV_X2 port map( A => RST_n, ZN => n35);
   U71 : MUX2_X1 port map( A => B(9), B => Y_9_port, S => ACCUMULATE, Z => 
                           mux_o_9_port);
   U72 : MUX2_X1 port map( A => B(8), B => Y_8_port, S => ACCUMULATE, Z => 
                           mux_o_8_port);
   U73 : MUX2_X1 port map( A => B(7), B => Y_7_port, S => ACCUMULATE, Z => 
                           mux_o_7_port);
   U74 : MUX2_X1 port map( A => B(6), B => Y_6_port, S => ACCUMULATE, Z => 
                           mux_o_6_port);
   U75 : MUX2_X1 port map( A => B(5), B => Y_5_port, S => ACCUMULATE, Z => 
                           mux_o_5_port);
   U76 : MUX2_X1 port map( A => B(4), B => Y_4_port, S => ACCUMULATE, Z => 
                           mux_o_4_port);
   U77 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => 
                           mux_o_3_port);
   U78 : MUX2_X1 port map( A => B(31), B => Y_31_port, S => ACCUMULATE, Z => 
                           mux_o_31_port);
   U79 : MUX2_X1 port map( A => B(30), B => Y_30_port, S => ACCUMULATE, Z => 
                           mux_o_30_port);
   U80 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => 
                           mux_o_2_port);
   U81 : MUX2_X1 port map( A => B(29), B => Y_29_port, S => ACCUMULATE, Z => 
                           mux_o_29_port);
   U82 : MUX2_X1 port map( A => B(28), B => Y_28_port, S => ACCUMULATE, Z => 
                           mux_o_28_port);
   U83 : MUX2_X1 port map( A => B(27), B => Y_27_port, S => ACCUMULATE, Z => 
                           mux_o_27_port);
   U84 : MUX2_X1 port map( A => B(26), B => Y_26_port, S => ACCUMULATE, Z => 
                           mux_o_26_port);
   U85 : MUX2_X1 port map( A => B(25), B => Y_25_port, S => ACCUMULATE, Z => 
                           mux_o_25_port);
   U86 : MUX2_X1 port map( A => B(24), B => Y_24_port, S => ACCUMULATE, Z => 
                           mux_o_24_port);
   U87 : MUX2_X1 port map( A => B(23), B => Y_23_port, S => ACCUMULATE, Z => 
                           mux_o_23_port);
   U88 : MUX2_X1 port map( A => B(22), B => Y_22_port, S => ACCUMULATE, Z => 
                           mux_o_22_port);
   U89 : MUX2_X1 port map( A => B(21), B => Y_21_port, S => ACCUMULATE, Z => 
                           mux_o_21_port);
   U90 : MUX2_X1 port map( A => B(20), B => Y_20_port, S => ACCUMULATE, Z => 
                           mux_o_20_port);
   U91 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => 
                           mux_o_1_port);
   U92 : MUX2_X1 port map( A => B(19), B => Y_19_port, S => ACCUMULATE, Z => 
                           mux_o_19_port);
   U93 : MUX2_X1 port map( A => B(18), B => Y_18_port, S => ACCUMULATE, Z => 
                           mux_o_18_port);
   U94 : MUX2_X1 port map( A => B(17), B => Y_17_port, S => ACCUMULATE, Z => 
                           mux_o_17_port);
   U95 : MUX2_X1 port map( A => B(16), B => Y_16_port, S => ACCUMULATE, Z => 
                           mux_o_16_port);
   U96 : MUX2_X1 port map( A => B(15), B => Y_15_port, S => ACCUMULATE, Z => 
                           mux_o_15_port);
   U97 : MUX2_X1 port map( A => B(14), B => Y_14_port, S => ACCUMULATE, Z => 
                           mux_o_14_port);
   U98 : MUX2_X1 port map( A => B(13), B => Y_13_port, S => ACCUMULATE, Z => 
                           mux_o_13_port);
   U99 : MUX2_X1 port map( A => B(12), B => Y_12_port, S => ACCUMULATE, Z => 
                           mux_o_12_port);
   U100 : MUX2_X1 port map( A => B(11), B => Y_11_port, S => ACCUMULATE, Z => 
                           mux_o_11_port);
   U101 : MUX2_X1 port map( A => B(10), B => Y_10_port, S => ACCUMULATE, Z => 
                           mux_o_10_port);
   U102 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => 
                           mux_o_0_port);

end SYN_behavioral;
