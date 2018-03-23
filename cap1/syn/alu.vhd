library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use WORK.constants.all;
use WORK.alu_types.all;

entity ALU is
  generic (N : integer := numBit);
  port 	 ( FUNC: IN TYPE_OP;
           DATA1, DATA2: IN std_logic_vector(N-1 downto 0);
           OUTALU: OUT std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is

	signal m1 : std_logic_vector(N/2-1 downto 0);
	signal m2 : std_logic_vector(N/2-1 downto 0);

begin

P_ALU: process (FUNC, DATA1, DATA2)
  -- complete all the requested functions

  begin

	m1 <= DATA1(N/2-1 downto 0);
	m2 <= DATA2(N/2-1 downto 0);

    case FUNC is
	when ADD 	=> OUTALU <= DATA1 + DATA2; 
	when SUB 	=> OUTALU <= DATA1 - DATA2;
	when MULT 	=> OUTALU <=    m1 *    m2;
	when BITAND 	=> OUTALU <= DATA1 and DATA2; -- bitwise operations
	when BITOR 	=> OUTALU <= DATA1 or  DATA2;
	when BITXOR 	=> OUTALU <= DATA1 xor DATA2;
	when FUNCLSL 	=> OUTALU <= DATA1(N-2 downto 0) & '0'; -- logical shift left, HELP: use the concatenation operator &  
	when FUNCLSR 	=> OUTALU <= '0' & DATA1(N-1 downto 1); -- logical shift right
	when FUNCRL 	=> OUTALU <= DATA1(N-2 downto 0) & DATA1(N-1); -- rotate left
	when FUNCRR 	=> OUTALU <= DATA1(0) & DATA1(N-1 downto 1); -- toate right
	when others => null;
    end case; 
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
