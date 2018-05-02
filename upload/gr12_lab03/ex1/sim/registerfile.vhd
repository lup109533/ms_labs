library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

entity register_file is
 generic (reg_size, file_size : natural);
 port ( CLK: 		IN std_logic;
        RESET:		IN std_logic;
	ENABLE: 	IN std_logic;
	RD1: 		IN std_logic;
	RD2: 		IN std_logic;
	WR: 		IN std_logic;
	ADD_WR: 	IN std_logic_vector(log2(file_size)-1 downto 0);
	ADD_RD1: 	IN std_logic_vector(log2(file_size)-1 downto 0);
	ADD_RD2: 	IN std_logic_vector(log2(file_size)-1 downto 0);
	DATAIN: 	IN std_logic_vector(reg_size-1 downto 0);
        OUT1: 		OUT std_logic_vector(reg_size-1 downto 0);
	OUT2: 		OUT std_logic_vector(reg_size-1 downto 0));
end register_file;

architecture BEHAVIORAL of register_file is

        subtype REG_ADDR is natural range 0 to file_size-1; 
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(reg_size-1 downto 0); 
	signal REGISTERS : REG_ARRAY;
	
begin 

	control: process (CLK) is begin

		if rising_edge(CLK) then	-- synchronous
			----- RESET
			-----------------------------------------------
			if RESET = '1' then
				for i in 0 to REGISTERS'length-1 loop
					REGISTERS(i) <= (others => '0');
				end loop;

			else
			----- WR
			-----------------------------------------------
				if WR = '1' and ENABLE = '1' then
					REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
				end if;

			----- READ
			-----------------------------------------------
				if RD1 = '1' and ENABLE = '1' then
					OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
				end if;

				if RD2 = '1' and ENABLE = '1' then
					OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
				end if;
			end if;
		end if;
		
	end process;	

end architecture;
