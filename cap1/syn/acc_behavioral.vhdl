
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_acc_behavioral_N0 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_acc_behavioral_N0;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_acc_behavioral_N0.all;

entity acc_behavioral_N0 is

   port( A, B : in std_logic_vector (-1 to 0);  CLK, RST_n, ACCUMULATE : in 
         std_logic;  Y : out std_logic_vector (-1 to 0));

end acc_behavioral_N0;

architecture SYN_behavioral of acc_behavioral_N0 is

   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SELECT_OP
      generic( num_inputs, input_width : integer );
      port( DATA : in std_logic_vector( num_inputs* input_width - 1 downto 0 );
            CONTROL : in std_logic_vector( num_inputs - 1 downto 0 ); Z : out 
            std_logic_vector( input_width - 1 downto 0 ) );
   end component;
   
   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal N0, N1, X_Logic1_port, X_Logic0_port, A_1_port, A_0_port, B_1_port, 
      B_0_port, CLK_port, RST_n_port, Y_1_port, Y_0_port, mux_o_1_port, 
      mux_o_0_port, add_o_1_port, add_o_0_port, N2, net6, net7 : std_logic;

begin
   ( A_1_port, A_0_port ) <= A;
   ( B_1_port, B_0_port ) <= B;
   CLK_port <= CLK;
   RST_n_port <= RST_n;
   Y <= ( Y_1_port, Y_0_port );
   
   reg_o_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_n_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               add_o_1_port, clocked_on => CLK_port, Q => Y_1_port, QN => net7
               );
   reg_o_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_n_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => 
               add_o_0_port, clocked_on => CLK_port, Q => Y_0_port, QN => net6
               );
   I_0 : GTECH_NOT port map( A => ACCUMULATE, Z => N2);
   add_31 : process ( A_1_port, A_0_port, mux_o_1_port, mux_o_0_port )
      variable A : UNSIGNED( 1 downto 0 );
      variable B : UNSIGNED( 1 downto 0 );
      variable Z : UNSIGNED( 1 downto 0 );
   begin
      A := ( A_1_port, A_0_port );
      B := ( mux_o_1_port, mux_o_0_port );
      Z := A + B;
      ( add_o_1_port, add_o_0_port ) <= Z;
   end process;
   
   C23_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 2 )
      port map(
         -- Connections to port 'DATA1'
         DATA(1) => B_1_port, DATA(0) => B_0_port, 
         -- Connections to port 'DATA2'
         DATA(3) => Y_1_port, DATA(2) => Y_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(1) => mux_o_1_port, Z(0) => mux_o_0_port );
   B_0 : GTECH_BUF port map( A => N2, Z => N0);
   B_1 : GTECH_BUF port map( A => ACCUMULATE, Z => N1);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;
entity SELECT_OP is
   generic ( num_inputs, input_width : integer );
   port(
      DATA : in std_logic_vector( num_inputs  * input_width - 1 downto 0 );
      CONTROL : in std_logic_vector( num_inputs - 1 downto 0 );
      Z : out std_logic_vector( input_width - 1 downto 0 )
   );
end SELECT_OP;

architecture RTL of SELECT_OP is
begin

   process ( DATA, CONTROL )
      variable index, high, low : integer;
   begin
   
      --  Initialize variables
      index := 0;
      
      -- Loop over the values of the control inputs
      for_loop : for i in CONTROL'range loop
      
         if ( CONTROL(i) = '1' ) then
         
            index := i;
            exit for_loop;
            
         end if;
         
      end loop;
      
      -- Store the corresponding data lines into the output
      low := input_width * index;
      high := low + input_width - 1;
      Z <= DATA( high downto low );
   
   end process;
   
end RTL;

library IEEE;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
