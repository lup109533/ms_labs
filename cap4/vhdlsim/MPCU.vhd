library ieee;
use ieee.std_logic_1164.all;
use work.MPCU_types.all;
use ieee.numeric_std.all;

entity MPCU is
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
end entity;

architecture BEHAVIORAL of MPCU is

	signal microcode : mem_array;	-- Signal in memory

	signal current_addr  : std_logic_vector(ADDR_SIZE-1+2   downto 0);  -- Address stored in CU; input address length + 2 (max: address + 3 --> 2 extra bits)
	signal out_code      : std_logic_vector(ENTRY_SIZE-1    downto 0);  -- Output

	signal counter : std_logic_vector(1 downto 0);	-- Count up to 2 --> 2 bits, counts upt to 3

begin
	
	fill_memory(microcode);	-- Assign proper values to memory (see MPCU_types.vhd)

	out_code <= microcode(to_integer(unsigned(current_addr)));

	addr_manager: process (CLK, RST) is
	begin

		if (RST = '0') then
			current_addr <= (others => '1');
		elsif rising_edge(CLK) then
			if (counter = "00") then			-- Cycle 0
				current_addr <= FUNC & OPCODE & "00";	-- Last two bits for 3 stages of each opcode
			else
				current_addr <= std_logic_vector(unsigned(current_addr) + 1);
			end if;
		end if;

	end process;

	counter_proc: process (CLK, RST) is
	begin
		
		if (RST = '0') then
			counter <= "00";
		elsif rising_edge(CLK) then
			if (counter = "10") then -- If 3
				counter <= "00";
			else
				counter <= std_logic_vector(unsigned(counter) + 1);
			end if;
		end if;

	end process;

	RF1  <= out_code(0);
	RF2  <= out_code(1);
	WF1  <= out_code(2);
	EN1  <= out_code(3);
	S1   <= out_code(4);
	S2   <= out_code(5);
	ALU1 <= out_code(6);
	ALU2 <= out_code(7);
	EN2  <= out_code(8);
	RM   <= out_code(9);
	WM   <= out_code(10);
	EN3  <= out_code(11);
	S3   <= out_code(12);

end architecture;
