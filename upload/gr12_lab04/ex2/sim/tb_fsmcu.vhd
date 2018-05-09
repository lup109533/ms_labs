
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
 
 entity fsm_tb is 
 end fsm_tb;
 
 architecture TB of fsm_tb is
	
	component FSMCU
	
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
	
	end component;
	
	
	--STAGE1--
	signal S_EN1       :       std_logic := '0';
	signal S_RF1       :       std_logic := '0';
	signal S_RF2       :       std_logic := '0';
	signal S_WF1       :       std_logic := '0';
	--STAGE2--
	signal S_EN2       :       std_logic := '0';
	signal S_S1        :       std_logic := '0';
	signal S_S2        :       std_logic := '0';
	signal S_ALU1      :       std_logic := '0';
	signal S_ALU2      :       std_logic := '0';
	--STAGE3--
	signal S_EN3       :       std_logic := '0';
	signal S_RM        :       std_logic := '0';
	signal S_WM        :       std_logic := '0';
	signal S_S3        :       std_logic := '0';
	--INPUTS--
	signal S_OPCODE    :       std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');
	signal S_FUNC      :       std_logic_vector(FUNC_SIZE - 1 downto 0) := (others => '0');
	signal S_CLK       :       std_logic := '0';
	signal S_RST       :       std_logic := '1';
	
	--.........
	
	begin 
		DUT : FSMCU
		port map (
		                        --FIRST PIPE STAGE OUTPUTS
					EN1   => S_EN1,
					RF1   => S_RF1, 
					RF2   => S_RF2,
					-- SECOND PIPE STAGE OUTPUTS
					EN2   => S_EN2, 
					WF1   => S_WF1,
					S1    => S_S1,
					S2    => S_S2,
					ALU1  => S_ALU1,
					ALU2  => S_ALU2,
					-- THIRD PIPE STAGE OUTPUTS
					EN3   => S_EN3,
					RM    => S_RM, 
					WM    => S_WM,
					S3    => S_S3,
					-- INPUTS
					OPCODE  => S_OPCODE,
					FUNC    => S_FUNC,          
					CLK     => S_CLK,
					RST     => S_RST			
		);
	    
		P_CLK: process (S_CLK)
		begin
			S_CLK <= NOT (S_CLK) after 0.5 ns;
		end process;
		
		stimulus: process is begin
			
			wait for 2 ns;
			
     -----0 Rtype:
	--0.1 ADD RS1,RS2,RD 
        S_OPCODE <= RTYPE;
        S_FUNC <= RTYPE_ADD;
        wait for 2 ns ;
        
        --0.2 SUB RS1,RS2,RD
        S_OPCODE <= RTYPE;
        S_FUNC <= RTYPE_SUB;
        wait for 2 ns ;
        
        --0.3 AND RS1,RS2,RD 
        S_OPCODE <= RTYPE;
        S_FUNC <= RTYPE_AND;
        wait for 2 ns ;
        
        --0.4 OR RS1,RS2,RD
        S_OPCODE <= RTYPE;
        S_FUNC <= RTYPE_OR;
        wait for 2 ns ;
        
     -----Itype: 1-14
        --1 ADDI1 RS1,RD,INP1
        S_OPCODE <= ITYPE_ADDI1;
         
        wait for 2 ns ;
        
        --2 SUBI1 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_SUBI1;
         
        wait for 2 ns ;
        
        --3 ANDI1 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_ANDI1;
         
        wait for 2 ns ;
        
        --4 ORI1 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_ORI1;
         
        wait for 2 ns ;
        
        --5 ADDI2 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_ADDI2;
         
        wait for 2 ns ;
        
        --6 SUBI2 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_SUBI2;
         
        wait for 2 ns ;
        
        --7 ANDI2 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_ANDI2;
         
        wait for 2 ns ;
        
        --8 ORI2 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_ORI2;
         
        wait for 2 ns ;
        
        ---9 MOV RS1,RD - > Itype
        S_OPCODE <= ITYPE_MOV;
         
        wait for 2 ns ;
        
        --10 S_REG1 RD,INP1 -> Itype
        S_OPCODE <= ITYPE_S_REG1;
         
        wait for 2 ns ;
        
        --11 S_REG2 RD,INP2 -> Itype
        S_OPCODE <= ITYPE_S_REG2;
         
        wait for 2 ns ;
        
        --12 S_MEM2 RS1,RD,INP2 -> Itype
        S_OPCODE <= ITYPE_S_MEM2;
         
        wait for 2 ns ;
        
        --13 L_MEM1 RS1,RD,INP1 -> Itype
        S_OPCODE <= ITYPE_L_MEM1;
         
        wait for 2 ns ;
        
        --14 L_MEM2 RS1,RD,INP2 -> Itype
        S_OPCODE <= ITYPE_L_MEM2;
        
	wait for 2 ns ;

	end process;	
	
 end TB;
