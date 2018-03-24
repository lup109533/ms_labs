
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GEN_N8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GEN_N8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GEN_N8.all;

entity FD_GEN_N8 is

   port( D : in std_logic_vector (7 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (7 downto 0));

end FD_GEN_N8;

architecture SYN_ASYNC of FD_GEN_N8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
   Q_reg_7_inst : DFFR_X1 port map( D => D(7), CK => CK, RN => n8, Q => Q(7), 
                           QN => n9);
   Q_reg_6_inst : DFFR_X1 port map( D => D(6), CK => CK, RN => n8, Q => Q(6), 
                           QN => n7);
   Q_reg_5_inst : DFFR_X1 port map( D => D(5), CK => CK, RN => n8, Q => Q(5), 
                           QN => n6);
   Q_reg_4_inst : DFFR_X1 port map( D => D(4), CK => CK, RN => n8, Q => Q(4), 
                           QN => n5);
   Q_reg_3_inst : DFFR_X1 port map( D => D(3), CK => CK, RN => n8, Q => Q(3), 
                           QN => n4);
   Q_reg_2_inst : DFFR_X1 port map( D => D(2), CK => CK, RN => n8, Q => Q(2), 
                           QN => n3);
   Q_reg_1_inst : DFFR_X1 port map( D => D(1), CK => CK, RN => n8, Q => Q(1), 
                           QN => n2);
   Q_reg_0_inst : DFFR_X1 port map( D => D(0), CK => CK, RN => n8, Q => Q(0), 
                           QN => n1);
   U4 : INV_X1 port map( A => RESET, ZN => n8);

end SYN_ASYNC;
