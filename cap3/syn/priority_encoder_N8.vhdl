
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_PRIORITY_ENCODER_N8_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_PRIORITY_ENCODER_N8_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_PRIORITY_ENCODER_N8_1.all;

entity PRIORITY_ENCODER_N8_1 is

   port( INPUT : in std_logic_vector (7 downto 0);  OUTPUT : out 
         std_logic_vector (2 downto 0));

end PRIORITY_ENCODER_N8_1;

architecture SYN_STRUCTURAL of PRIORITY_ENCODER_N8_1 is

begin
   OUTPUT <= ( INPUT(7), INPUT(7), INPUT(7) );

end SYN_STRUCTURAL;
