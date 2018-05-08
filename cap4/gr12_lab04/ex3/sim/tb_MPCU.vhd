library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MPCU_types.all;

entity MPCU_TB is
end entity;

architecture TEST of MPCU_TB is

	component MPCU
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
                FUNC   : in  std_logic_vector(FUNC_SIZE - 1    downto 0);              
                CLK    : in std_logic;
                RST    : in std_logic                    -- Active Low
	  );
	end component;

	signal EN1, RF1, RF2, WF1, EN2, S1, S2, ALU1, ALU2, EN3, RM, WM, S3, CLK, RST : std_logic;
	
        signal OPCODE : std_logic_vector(OP_CODE_SIZE - 1 downto 0);
        signal FUNC   : std_logic_vector(FUNC_SIZE - 1    downto 0);       

begin

	UUT: MPCU port map (EN1, RF1, RF2, WF1, EN2, S1, S2, ALU1, ALU2, EN3, RM, WM, S3, OPCODE, FUNC, CLK, RST);

	clk_gen: process is
	begin
		if (CLK /= '0' and CLK /= '1') then
			CLK <= '0';
			wait for 1 ns;
		else
			CLK <= not CLK;
			wait for 1 ns;
		end if;
	end process;

	--- Iterate over every instruction in the set.
	stimulus: process is
	begin
		RST <= '0';
		wait for 1 ns;
		RST <= '1';

		for s_opcode in opcode_t loop
			OPCODE <= get_opcode(s_opcode);
			if (s_opcode = tRTYPE) then for s_func in func_t loop
				FUNC <= get_func(s_func);
				wait for 6 ns;
			end loop; else
				FUNC <= RTYPE_ADD;
			end if;
			wait for 6 ns;
		end loop;

		RST <= '0';
		wait;

	end process;

end architecture;
