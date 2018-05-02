library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;

entity TB_WINDOWED_REGISTERFILE is
end TB_WINDOWED_REGISTERFILE;

architecture TESTA of TB_WINDOWED_REGISTERFILE is
	
	constant reg_size	: natural := 8;
	constant M		: natural := 8;
	constant N		: natural := 4;
	constant F		: natural := 4;

	signal CLK	: std_logic := '0';
	signal RESET	: std_logic;
	signal ENABLE	: std_logic_vector(2*F downto 0);
	signal IOMODE	: std_logic;
	signal RD1	: std_logic;
	signal RD2	: std_logic;
	signal WR	: std_logic;
	signal ADD_WR	: std_logic_vector(log2(N*3+M)-1 downto 0);
	signal ADD_RD1	: std_logic_vector(log2(N*3+M)-1 downto 0);
	signal ADD_RD2	: std_logic_vector(log2(N*3+M)-1 downto 0);
	signal DATAIN	: std_logic_vector(reg_size-1 downto 0);
	signal OUT1	: std_logic_vector(reg_size-1 downto 0);
	signal OUT2	: std_logic_vector(reg_size-1 downto 0);

	component windowed_register_file
 		generic (reg_size, M, N, F : natural);
		port (
			CLK: 		IN 	std_logic;
			RESET:		IN 	std_logic;
			ENABLE: 	IN 	std_logic_vector(2*F downto 0);
			IOMODE:		IN	std_logic;
			RD1: 		IN 	std_logic;
			RD2: 		IN 	std_logic;
			WR: 		IN 	std_logic;
			ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
		        OUT1: 		OUT 	std_logic_vector(reg_size-1 downto 0);
			OUT2: 		OUT 	std_logic_vector(reg_size-1 downto 0)
		);	
	end component;

begin 

RG:windowed_register_file
GENERIC MAP (reg_size, M, N, F)
PORT MAP (CLK, RESET, ENABLE, IOMODE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2);
	
	stimulus: process is begin

		RESET  <= '1';
		IOMODE <= '0';
		ENABLE <= "111000001";
		WR     <= '0';
		RD1    <= '0';
		RD2    <= '0';
		wait for 2 ns;
		RESET  <= '0';
		WR <= '1';
		wait for 0 ns;

		for addr in 0 to N*3+M-1 loop
			ADD_WR  <= std_logic_vector(to_unsigned(addr, ADD_WR'length));
			DATAIN <= (others => '1');
			wait for 2 ns;
		end loop;

		WR  <= '0';
		RD1 <= '1';
		RD2 <= '1';
		for addr in 0 to N*3+M-1 loop
			ADD_RD1  <= std_logic_vector(to_unsigned(addr, ADD_WR'length));
			ADD_RD2  <= std_logic_vector(to_unsigned(addr, ADD_WR'length));
			wait for 2 ns;
		end loop;

		wait;

	end process;


	PCLOCK : process(CLK)
	begin
		CLK <= not(CLK) after 0.5 ns;	
	end process;

end TESTA;
