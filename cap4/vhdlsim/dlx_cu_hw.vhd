library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
use ieee.numeric_std.all;

entity DLX_CU is
	port (
              -- FIRST PIPE STAGE OUTPUTS
              EN1    : out std_logic;               -- enables the register file and the pipeline registers
              RF1    : out std_logic;               -- enables the read port 1 of the register file
              RF2    : out std_logic;               -- enables the read port 2 of the register file
              WF1    : out std_logic;               -- enables the write port of the register file
              -- SECOND PIPE STAGE OUTPUTS
              EN2    : out std_logic;               -- enables the pipe registers
              S1     : out std_logic;               -- input selection of the first multiplexer
              S2     : out std_logic;               -- input selection of the second multiplexer
              ALU1   : out std_logic;               -- alu control bit
              ALU2   : out std_logic;               -- alu control bit
              -- THIRD PIPE STAGE OUTPUTS
              EN3    : out std_logic;               -- enables the memory and the pipeline registers
              RM     : out std_logic;               -- enables the read-out of the memory
              WM     : out std_logic;               -- enables the write-in of the memory
              S3     : out std_logic;               -- input selection of the multiplexer
              -- INPUTS
              OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
              FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
              CLK : in std_logic;
              RST : in std_logic                    -- Active Low
	);
end entity;

architecture BEHAVIORAL of DLX_CU is

	constant REGISTER_SELECT : std_logic := '0';
	constant INPUT_SELECT    : std_logic := '1';
	constant MEMORY_SELECT   : std_logic := '0';
	constant ALU_OUT_SELECT  : std_logic := '1';

	signal pipe1 : std_logic_vector(9 downto 0);
	signal pipe2 : std_logic_vector(4 downto 0);

	signal s_en1, s_rf1, s_rf2, s_wf1, s_s1, s_s2, s_alu1, s_alu2, s_en2, s_rm, s_wm, s_en3, s_s3 : std_logic;

begin

	---- Assumptions about datapath: s1,s2 = '0' selects register, s1,s2 = '1' selects input 
	----                             s3 = '0' selects memory cell, s3 = '1' selects ALU output
	LUT: process (OPCODE, FUNC) is begin

		if (OPCODE = RTYPE) then
			case FUNC is
				when RTYPE_ADD =>
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when RTYPE_SUB =>
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '1';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when RTYPE_AND =>
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '1';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when RTYPE_OR =>
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '1';
					s_alu2 <= '1';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
			end case;
		else
			case OPCODE is
				when ITYPE_ADDI1  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '0';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= INPUT_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_SUBI1  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '0';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= INPUT_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '1';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_ANDI1  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '0';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= INPUT_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '1';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_ORI1  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '0';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= INPUT_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '1';
					s_alu2 <= '1';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_ADDI2  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_SUBI2  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '1';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_ANDI2  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '1';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_ORI2  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '1';
					s_alu2 <= '1';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_MOV  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_S_REG1  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '0';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= INPUT_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';

				when ITYPE_S_REG2  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '0';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= INPUT_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= ALU_OUT_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_S_MEM2  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '0';
					s_wm   <= '1';
					s_s3   <= MEMORY_SELECT;
					s_wf1  <= '0';
					----
				when ITYPE_L_MEM1  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '0';
					s_rf2  <= '1';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= INPUT_SELECT;
					s_s2   <= REGISTER_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '1';
					s_wm   <= '0';
					s_s3   <= MEMORY_SELECT;
					s_wf1  <= '1';
					----
				when ITYPE_L_MEM2  => 
					---- stage 1
					s_en1  <= '1';
					s_rf1  <= '1';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '1';
					s_s1   <= REGISTER_SELECT;
					s_s2   <= INPUT_SELECT;
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '1';
					s_rm   <= '1';
					s_wm   <= '0';
					s_s3   <= MEMORY_SELECT;
					s_wf1  <= '1';
					-----
				others  =>
					---- stage 1
					s_en1  <= '0';
					s_rf1  <= '0';
					s_rf2  <= '0';
					---- stage 2
					s_en2  <= '0';
					s_s1   <= '0';
					s_s2   <= '0';
					s_alu1 <= '0';
					s_alu2 <= '0';
					---- stage 3
					s_en3  <= '0';
					s_rm   <= '0';
					s_wm   <= '0';
					s_s3   <= '0';
					s_wf1  <= '0';
					-----
			end case;
		end if;

	end process;

	pipeline: process (CLK, RST) is begin

		if (RST = '0') then
			pipe1 <= (others => '0');
			pipe2 <= (others => '0');
		else
			if rising_edge(CLK) then
				pipe1 <= s_s1 & s_s2 & s_alu1 & s_alu2 & s_en2 & s_rm & s_wm & s_en3 & s_s3 & s_wf1;
				pipe2 <= pipe1(4 downto 0);
			end if;
		end if;

	end if;

	---- Output
	RF1  <= s_rf1;
	RF2  <= s_rf2;
	EN1  <= s_en1;
	S1   <= pipe1(9) ;
	S2   <= pipe1(8);
	ALU1 <= pipe1(7);
	ALU2 <= pipe1(6);
	EN2  <= pipe1(5);
	RM   <= pipe2(4);
	WM   <= pipe2(3);
	EN3  <= pipe2(2);
	S3   <= pipe2(1);
	WF1  <= pipe2(0);

end architecture;
