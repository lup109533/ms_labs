library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;

entity TB_WINDOWED_REGISTERFILE is
end TB_WINDOWED_REGISTERFILE;

architecture TESTA of TB_WINDOWED_REGISTERFILE is
	
       signal CLK: std_logic := '0';
       signal RESET: std_logic;
       signal ENABLE: std_logic;
       signal RD1: std_logic;
       signal RD2: std_logic;
       signal WR: std_logic;
       signal CALL: std_logic;
       signal RETN: std_logic;
       signal FILL: std_logic;
       signal SPILL: std_logic;
       signal ADD_WR: std_logic_vector(log2(4*3+4)-1 downto 0);
       signal ADD_RD1: std_logic_vector(log2(4*3+4)-1 downto 0);
       signal ADD_RD2: std_logic_vector(log2(4*3+4)-1 downto 0);
       signal DATAIN: std_logic_vector(63 downto 0);
       signal OUT1: std_logic_vector(63 downto 0);
       signal OUT2: std_logic_vector(63 downto 0);

	component windowed_register_file
 	generic (reg_size, M, N, F : natural);
 	port ( CLK: 		IN std_logic;
        	RESET:		IN std_logic;
		ENABLE: 	IN std_logic;
		RD1: 		IN std_logic;
		RD2: 		IN std_logic;
		WR: 		IN std_logic;
		CALL:		IN std_logic;
		RETN:		IN std_logic;
		SPILL:		OUT std_logic;
		FILL:		OUT std_logic;
		ADD_WR: 	IN std_logic_vector(log2((N*3+M))-1 downto 0);
		ADD_RD1: 	IN std_logic_vector(log2((N*3+M))-1 downto 0);
		ADD_RD2: 	IN std_logic_vector(log2((N*3+M))-1 downto 0);
		DATAIN: 	IN std_logic_vector(reg_size-1 downto 0);
   	 	OUT1: 		OUT std_logic_vector(reg_size-1 downto 0);
		OUT2: 		OUT std_logic_vector(reg_size-1 downto 0));
	
	end component;

begin 

RG:windowed_register_file
GENERIC MAP (reg_size => 64, M => 4, N => 4, F => 4)
PORT MAP (CLK,RESET,ENABLE,RD1,RD2,WR,CALL,RETN,FILL,SPILL,ADD_WR,ADD_RD1,ADD_RD2,DATAIN,OUT1,OUT2);
	
	stimulus: process is begin

		RESET  <= '1';
		ENABLE <= '0';
		WR     <= '0';
		RD1    <= '0';
		RD2    <= '0';
		CALL   <= '0';
		RETN   <= '0';
		wait for 2 ns;
		RESET  <= '0';
		ENABLE <= '1';
		WR <= '1';
		wait for 0 ns;

		for window in 0 to 4-1 loop 
			for addr in 0 to 2**4-1 loop
				ADD_WR  <= std_logic_vector(to_unsigned(addr, ADD_WR'length));
				DATAIN <= (others => '1');
				wait for 2 ns;
			end loop;
			wait for 0.5 ns;
			CALL <= '1';
			wait for 1.5 ns;
			CALL <= '0';
		end loop;

		wait;

	end process;


	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;
