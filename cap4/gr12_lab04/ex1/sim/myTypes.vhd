library ieee;
use ieee.std_logic_1164.all;

package myTypes is

-- Control unit input sizes
    constant OP_CODE_SIZE : integer :=  6;                                              -- OPCODE field size
    constant FUNC_SIZE    : integer :=  11;                                             -- FUNC field size

-- R-Type instruction -> FUNC field
    constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000000";    -- ADD RS1,RS2,RD
    constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000001";    -- SUB RS1,RS2,RD
    constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000010";    -- AND RS1,RS2,RD
    constant RTYPE_OR  : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000011";    -- OR  RS1,RS2,RD

-- R-Type instruction -> OPCODE field
    constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000000";          -- for ADD, SUB, AND, OR register-to-register operation

-- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000001";    -- ADDI1  RS1,RD,INP1
    constant ITYPE_SUBI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000010";    -- SUBI1  RS1,RD,INP1
    constant ITYPE_ANDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000011";    -- ANDI1  RS1,RD,INP1
    constant ITYPE_ORI1   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000100";    -- ORI1   RS1,RD,INP1
    constant ITYPE_ADDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000101";    -- ADDI2  RS1,RD,INP2
    constant ITYPE_SUBI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000110";    -- SUBI2  RS1,RD,INP2
    constant ITYPE_ANDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000111";    -- ANDI2  RS1,RD,INP2
    constant ITYPE_ORI2   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001000";    -- ORI2   RS1,RD,INP2
    constant ITYPE_MOV    : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001001";    -- MOV    RS1,RD,0
    constant ITYPE_S_REG1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001010";    -- S_REG1 RS1,0,INP1
    constant ITYPE_S_REG2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001011";    -- S_REG2 RS1,0,INP2
    constant ITYPE_S_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001100";    -- S_MEM2 RS1,RD,INP2
    constant ITYPE_L_MEM1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001101";    -- L_MEM1  RS1,RD,INP1
    constant ITYPE_L_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001110";    -- L_MEM2  RS1,RD,INP1

-- For testbenches
	type opcode_t is (tRTYPE,
			  tITYPE_ADDI1,
			  tITYPE_SUBI1,
			  tITYPE_ANDI1,
			  tITYPE_ORI1,
			  tITYPE_ADDI2,
			  tITYPE_SUBI2,
			  tITYPE_ANDI2,
			  tITYPE_ORI2,
			  tITYPE_MOV,
			  tITYPE_S_REG1,
			  tITYPE_S_REG2,
			  tITYPE_S_MEM2,
			  tITYPE_L_MEM1,
			  tITYPE_L_MEM2);

	type func_t is (tRTYPE_ADD,
			tRTYPE_SUB,
			tRTYPE_AND,
			tRTYPE_OR);

	subtype ret_opcode is std_logic_vector(OP_CODE_SIZE-1 downto 0);
	subtype ret_func   is std_logic_vector(FUNC_SIZE-1 downto 0);

	function get_opcode (opcode : opcode_t) return ret_opcode;
	function get_func   (func   : func_t)   return ret_func;


end myTypes;

package body myTypes is

	-- Transform opcode_t into std_logic_vector
	function get_opcode (opcode : opcode_t) return ret_opcode is
	begin
		case (opcode) is
			when tRTYPE =>
				return RTYPE;
			when tITYPE_ADDI1 =>
				return ITYPE_ADDI1;
			when tITYPE_SUBI1 =>
				return ITYPE_SUBI1;
			when tITYPE_ANDI1 =>
				return ITYPE_ANDI1;
			when tITYPE_ORI1 =>
				return ITYPE_ORI1;
			when tITYPE_ADDI2 =>
				return ITYPE_ADDI2;
			when tITYPE_SUBI2 =>
				return ITYPE_SUBI2;
			when tITYPE_ANDI2 =>
				return ITYPE_ANDI2;
			when tITYPE_ORI2 =>
				return ITYPE_ORI2;
			when tITYPE_MOV =>
				return ITYPE_MOV;
			when tITYPE_S_REG1 =>
				return ITYPE_S_REG1;
			when tITYPE_S_REG2 =>
				return ITYPE_S_REG2;
			when tITYPE_S_MEM2 =>
				return ITYPE_S_MEM2;
			when tITYPE_L_MEM1 =>
				return ITYPE_L_MEM1;
			when tITYPE_L_MEM2 =>
				return ITYPE_L_MEM2;
		end case;
	end function;

	-- Transform func_t into std_logic_vector
	function get_func (func : func_t) return ret_func is
	begin
		case (func) is
			when tRTYPE_ADD =>
				return RTYPE_ADD;
			when tRTYPE_SUB =>
				return RTYPE_SUB;
			when tRTYPE_AND =>
				return RTYPE_AND;
			when tRTYPE_OR =>
				return RTYPE_OR;
		end case;
	end function;

end myTypes;
