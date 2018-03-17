
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GEN is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GEN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GEN.all;

entity FD_GEN is

   port( D : in std_logic_vector (3 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (3 downto 0));

end FD_GEN;

architecture SYN_PIPPO of FD_GEN is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N3, N4, N5, N6, n2, n3_port, n4_port, n5_port, n7 : std_logic;

begin
   
   Q_reg_3_inst : DFF_X1 port map( D => N6, CK => CK, Q => Q(3), QN => n5_port)
                           ;
   Q_reg_2_inst : DFF_X1 port map( D => N5, CK => CK, Q => Q(2), QN => n4_port)
                           ;
   Q_reg_1_inst : DFF_X1 port map( D => N4, CK => CK, Q => Q(1), QN => n3_port)
                           ;
   Q_reg_0_inst : DFF_X1 port map( D => N3, CK => CK, Q => Q(0), QN => n2);
   U8 : AND2_X1 port map( A1 => D(3), A2 => n7, ZN => N6);
   U9 : AND2_X1 port map( A1 => D(2), A2 => n7, ZN => N5);
   U10 : AND2_X1 port map( A1 => D(1), A2 => n7, ZN => N4);
   U11 : AND2_X1 port map( A1 => D(0), A2 => n7, ZN => N3);
   U12 : INV_X1 port map( A => RESET, ZN => n7);

end SYN_PIPPO;
