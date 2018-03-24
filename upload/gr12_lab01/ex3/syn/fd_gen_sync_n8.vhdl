
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GEN_N8_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GEN_N8_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GEN_N8_1.all;

entity FD_GEN_N8_1 is

   port( D : in std_logic_vector (7 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (7 downto 0));

end FD_GEN_N8_1;

architecture SYN_SYNC of FD_GEN_N8_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, N4, N5, N6, N7, N8, N9, N10, n2, n3_port, n4_port, n5_port, 
      n6_port, n7_port, n8_port, n9_port, n11 : std_logic;

begin
   
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
   U12 : AND2_X1 port map( A1 => D(6), A2 => n11, ZN => N9);
   U13 : AND2_X1 port map( A1 => D(5), A2 => n11, ZN => N8);
   U14 : AND2_X1 port map( A1 => D(4), A2 => n11, ZN => N7);
   U15 : AND2_X1 port map( A1 => D(3), A2 => n11, ZN => N6);
   U16 : AND2_X1 port map( A1 => D(2), A2 => n11, ZN => N5);
   U17 : AND2_X1 port map( A1 => D(1), A2 => n11, ZN => N4);
   U18 : AND2_X1 port map( A1 => D(0), A2 => n11, ZN => N3);
   U19 : AND2_X1 port map( A1 => D(7), A2 => n11, ZN => N10);
   U20 : INV_X1 port map( A => RESET, ZN => n11);

end SYN_SYNC;
