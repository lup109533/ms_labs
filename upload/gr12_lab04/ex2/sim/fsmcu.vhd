library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;

entity FSMCU is        
       port (
              -- FIRST PIPE STAGE OUTPUTS
              EN1    : out std_logic;               -- enables the register file and the pipeline registers
              RF1    : out std_logic;               -- enables the read port 1 of the register file
              RF2    : out std_logic;               -- enables the read port 2 of the register file
              WF1    : out std_logic;               -- enables the write port of the register file
              -- SECOND PIPE STAGE OUTPUTS
              EN2    : out std_logic;               -- enables the pipe registers
              S1     : out std_logic;               -- input selection of the first multiplstg2er
              S2     : out std_logic;               -- input selection of the second multiplstg2er
              ALU1   : out std_logic;               -- alu control bit
              ALU2   : out std_logic;               -- alu control bit
              -- THIRD PIPE STAGE OUTPUTS
              EN3    : out std_logic;               -- enables the memory and the pipeline registers
              RM     : out std_logic;               -- enables the read-out of the memory
              WM     : out std_logic;               -- enables the write-in of the memory
              S3     : out std_logic;               -- input selection of the multiplstg2er
              -- INPUTS
              OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
              FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
              CLK : in std_logic;
              RST : in std_logic);                  -- Active Low
    end FSMCU;
    
architecture FSM_Arch of FSMCU is

type mem_array is array (integer range 0 to 14) of std_logic_vector ( 13 -1 downto 0); 
 
signal cw_mem : mem_array := (  "1110100100101", -- R:  (0)  ADD , OR , AND , SUB 
                                                 --          specific functions are identified by 'FUNC' part                   
                                "0111100100101", -- I:  (1)  ADDI1          
                                "0111101100101", --     (2)  SUBI1
                                "0111110100101", --     (3)  ANDI1
                                "0111111100101", -- 	(4)  ORI1
                                "1010000100101", -- 	(5)  ADDI2
                                "1010001100101", -- 	(6)  SUBI2
                                "1010010100101", -- 	(7)  ANDI2
                                "1010011100101", -- 	(8)  ORI2
                                "1010000100101", -- 	(9)  MOV
                                "0111100100101", -- 	(10) S_REG1
                                "1010000100101", -- 	(11) S_REG2
                                "1110000101110", -- 	(12) S_MEM2
                                "0111100110111", -- 	(13) L_MEM1
                                "1010000110111");-- 	(14) L_MEM2

signal cw  : std_logic_vector(13 -1 downto 0);            -- control word vector

type TYPE_STATE is (	reset ,state1 ,state2 ,state3	);-- 3 states corresponding to 3 hardware stages
signal CURRENT_STATE : TYPE_STATE := reset;               -- initial state is reset 
signal NEXT_STATE : TYPE_STATE := state1;
signal alu_func: std_logic_vector(1 downto 0) := "00";     

signal   enable1 :std_logic; -- internal enable signal for each stage 
signal   enable2 :std_logic;
signal   enable3 :std_logic;


begin
-- enable corresponding register according to 
---------------------stage 1  
  RF1 <= cw(12);    
  RF2 <= cw(11);
  EN1 <= enable1; -- enable stage1 
---------------------stage 2
  S1  <= cw(9);
  S2  <= cw(8);
  ALU1<= alu_func(0);
  ALU2<= alu_func(1);
  EN2 <= enable2; -- enable stage2 
---------------------stage 3  
  RM  <= cw(4);
  WM  <= cw(3);
  EN3 <= enable3; -- enable stage3 
  S3  <= cw(1);
  WF1 <= cw(0);
      

STATE_CLK: process ( CLK , RST )
begin
		if Rst='0' then
	        	CURRENT_STATE <= reset;
		elsif (Clk ='1' and Clk'EVENT) then --State would propogate every clk cycle 
			CURRENT_STATE <= NEXT_STATE;
		end if;
end process STATE_CLK;


OpcodeFSM : process (OPCODE, FUNC)
   begin  
	case conv_integer(unsigned(OPCODE)) is
	        
		when 0 =>   -- R type ops
			case conv_integer(unsigned(FUNC)) is
				when 0 => alu_func <= "00";     -- add
				when 1 => alu_func <= "01";    	-- subtract
				when 2 => alu_func <= "10";    	-- and
				when 3 => alu_func <= "11";     -- or
				when others => alu_func <= "00";
			end case;
			    -- I type ops
		when 1 => alu_func <= "00";  -- ADDI1 RS1,RD,INP1
		when 2 => alu_func <= "01";  -- SUBI1 RS1,RD,INP1  
		when 3 => alu_func <= "10";  -- ANDI1 RS1,INP1
		when 4 => alu_func <= "11";  -- ORI1 RS1,INP1
		when 5 => alu_func <= "00";  -- ADDI2 RS1,RD,INP2
		when 6 => alu_func <= "01";  -- SUBI2 RS1,RD,INP2
		when 7 => alu_func <= "10";  -- ANDI2 RS1,RD,INP2
		when 8 => alu_func <= "11";  -- ORI2 RS1,RD,INP2
		when 9 => alu_func <= "00";  -- MOV RS1,RD
		when 10=> alu_func <= "00";  -- S_REG1 RD,INP1
		when 11=> alu_func <= "00";  -- S_REG2 RD, INP2
		when 12=> alu_func <= "00";  -- S_MEM2 RS1,RD,INP2
		when 13=> alu_func <= "00";  -- L_MEM1 RS1,RD,INP1
		when 14=> alu_func <= "00";  -- L_MEM2 RS1,RD,INP2
		when others => alu_func <= "00";
	 end case;
	end process OpcodeFSM;


STATE_FLOW : process(CURRENT_STATE, OPCODE)
	begin
	case CURRENT_STATE is
			when reset =>
				 NEXT_STATE <= state1;
			when state1 => 
				 NEXT_STATE <= state2;				
			when state2 =>  
			     NEXT_STATE <= state3;
			when others => 
				 NEXT_STATE <= state1;	
   end case; 						  
end process STATE_FLOW;
	
STATE_EN: process(CURRENT_STATE)
	begin
		 case CURRENT_STATE is	                --only enable the current state(stage) and disable other stages
		 when reset => cw <= (others =>'0');
		               enable1 <= '0';
		               enable2 <= '0';
		               enable3 <= '0';	
		               	               		               
		 when state1 => cw <= cw_mem (conv_integer(unsigned(OPCODE)));  
		               enable1 <= '1';
		               enable2 <= '0';
		               enable3 <= '0';
		               		               		                                   
		 when state2 =>   
		               enable1 <= '0';
		               enable2 <= '1';
		               enable3 <= '0';
		               		               		                                   
		 when state3 =>  
		               enable1 <= '0';
		               enable2 <= '0';
		               enable3 <= '1';		               		                                     
		 end case;          
	end process STATE_EN;
	
	  
end FSM_Arch;    
    

