library IEEE;

use IEEE.std_logic_1164.all;
use WORK.utils.all;

entity TBREGISTERFILE is
end TBREGISTERFILE;

architecture TESTA of TBREGISTERFILE is
	
       signal CLK: std_logic := '0';
       signal RESET: std_logic;
       signal ENABLE: std_logic;
       signal RD1: std_logic;
       signal RD2: std_logic;
       signal WR: std_logic;
       signal ADD_WR: std_logic_vector(4 downto 0);
       signal ADD_RD1: std_logic_vector(4 downto 0);
       signal ADD_RD2: std_logic_vector(4 downto 0);
       signal DATAIN: std_logic_vector(63 downto 0);
       signal OUT1: std_logic_vector(63 downto 0);
       signal OUT2: std_logic_vector(63 downto 0);

component register_file

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
	
	end component;

begin 

RG:register_file
GENERIC MAP (reg_size => 64, file_size => 32)
PORT MAP (CLK,RESET,ENABLE,RD1,RD2,WR,ADD_WR,ADD_RD1,ADD_RD2,DATAIN,OUT1,OUT2);
	
	stimulus: process is begin

		RESET <= '1';
		wait for 2 ns;

		RESET   <= '0';
		ENABLE  <= '1';
		RD1     <= '1';
		RD2     <= '1';
		WR      <= '0';
		ADD_RD1 <= "00100";
		ADD_RD2 <= "11111";
		wait for 2 ns;

		WR      <= '1';
		RD1     <= '0';
		RD2     <= '0';
		ADD_WR  <= "00100";
		DATAIN  <= X"23FC9A000323BB11";
		wait for 2 ns;

		WR      <= '1';
		RD1     <= '0';
		RD2     <= '0';
		ADD_WR  <= "11111";
		DATAIN  <= X"23FC9A345323BB11";
		wait for 2 ns;

		WR <= '0';
		RD1     <= '1';
		RD2     <= '1';
		wait for 2 ns;

		wait;

	end process;


	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;
