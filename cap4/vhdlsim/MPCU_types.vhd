library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package MPCU_types is

-- Control unit input sizes
	constant OP_CODE_SIZE : integer :=  4;                                             -- OPCODE field size
	constant FUNC_SIZE    : integer :=  2;                                             -- FUNC field size

-- R-Type instruction -> FUNC field
	constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00";    -- ADD RS1,RS2,RD
	constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "01";    -- SUB RS1,RS2,RD
	constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "10";    -- AND RS1,RS2,RD
	constant RTYPE_OR  : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "11";    -- OR  RS1,RS2,RD

-- R-Type instruction -> OPCODE field
	constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0000";          -- for ADD, SUB, AND, OR register-to-register operation

-- I-Type instruction -> OPCODE field
	constant ITYPE_ADDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0001";    -- ADDI1  RS1,RD,INP1
	constant ITYPE_SUBI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0010";    -- SUBI1  RS1,RD,INP1
	constant ITYPE_ANDI1  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0011";    -- ANDI1  RS1,RD,INP1
	constant ITYPE_ORI1   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0100";    -- ORI1   RS1,RD,INP1
	constant ITYPE_ADDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0101";    -- ADDI2  RS1,RD,INP2
	constant ITYPE_SUBI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0110";    -- SUBI2  RS1,RD,INP2
	constant ITYPE_ANDI2  : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "0111";    -- ANDI2  RS1,RD,INP2
	constant ITYPE_ORI2   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "1000";    -- ORI2   RS1,RD,INP2
	constant ITYPE_MOV    : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "1001";    -- MOV    RS1,RD,0
	constant ITYPE_S_REG1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "1010";    -- S_REG1 RS1,0,INP1
	constant ITYPE_S_REG2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "1011";    -- S_REG2 RS1,0,INP2
	constant ITYPE_S_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "1100";    -- S_MEM2 RS1,RD,INP2
	constant ITYPE_L_MEM1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "1101";    -- L_MEM1  RS1,RD,INP1
	constant ITYPE_L_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "1110";    -- L_MEM2  RS1,RD,INP1

-- Useful constants and procedure
	constant ADDR_SIZE  : natural := OP_CODE_SIZE + FUNC_SIZE;
	constant MEM_MAX    : natural := 4*(2**(ADDR_SIZE));
	constant ENTRY_SIZE : natural := 13;
	
	type mem_array is array (MEM_MAX-1 downto 0) of std_logic_vector(ENTRY_SIZE-1 downto 0);

	procedure fill_memory (signal mem : out mem_array);	

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

end MPCU_types;


package body MPCU_types is

	procedure fill_memory (signal mem : out mem_array) is
		variable opcode   : integer := 0;
		variable func     : integer := 0;
		variable s_opcode : std_logic_vector(OP_CODE_SIZE-1 downto 0);
		variable s_func   : std_logic_vector(FUNC_SIZE-1 downto 0);
		variable s_addr   : std_logic_vector(OP_CODE_SIZE + FUNC_SIZE + 2 - 1 downto 0);
		variable addr     : integer;
	begin
		for opcode in 0 to 2**OP_CODE_SIZE-1 loop
			for func in 0 to 2**FUNC_SIZE-1 loop

				s_opcode := std_logic_vector(to_unsigned(opcode, s_opcode'length));
				s_func   := std_logic_vector(to_unsigned(func,   s_func'length));
				s_addr   := s_func & s_opcode & "00";
				addr     := to_integer(unsigned(s_addr));

--	RF1  <= out_code(0);
--	RF2  <= out_code(1);
--	WF1  <= out_code(2);
--	EN1  <= out_code(3);
--	S1   <= out_code(4);
--	S2   <= out_code(5);
--	ALU1 <= out_code(6);
--	ALU2 <= out_code(7);
--	EN2  <= out_code(8);
--	RM   <= out_code(9);
--	WM   <= out_code(10);
--	EN3  <= out_code(11);
--	S3   <= out_code(12);

				if (s_opcode = RTYPE) then
					if (s_func = RTYPE_ADD) then
						mem(addr+0) <= "0000000001011"; 
						mem(addr+1) <= "0000100000000";
						mem(addr+2) <= "1100000000100";
						mem(addr+3) <= "0000000000000";
					elsif (s_func = RTYPE_SUB) then
						mem(addr+0) <= "0000000001011";
						mem(addr+1) <= "0000110000000";
						mem(addr+2) <= "1100000000100";
						mem(addr+3) <= "0000000000000";
					elsif (s_func = RTYPE_AND) then
						mem(addr+0) <= "0000000001011";
						mem(addr+1) <= "0000101000000";
						mem(addr+2) <= "1100000000100";
						mem(addr+3) <= "0000000000000";
					elsif (s_func = RTYPE_OR) then
						mem(addr+0) <= "0000000001011";
						mem(addr+1) <= "0000111000000";
						mem(addr+2) <= "1100000000100";
						mem(addr+3) <= "0000000000000";
					end if;

				elsif (s_opcode = ITYPE_ADDI1) then
					mem(addr+0) <= "0000000000000"; 
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_SUBI1) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_ANDI1) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_ORI1) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_ADDI2) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_SUBI2) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_ANDI2) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_ORI2) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_MOV) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_S_REG1) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_S_REG2) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_S_MEM2) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_L_MEM1) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				elsif (s_opcode = ITYPE_L_MEM2) then
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				else
					mem(addr+0) <= "0000000000000";
					mem(addr+1) <= "0000000000000";
					mem(addr+2) <= "0000000000000";
					mem(addr+3) <= "0000000000000";
				end if;

			end loop;
		end loop;
	end procedure;

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

end MPCU_types;

