library IEEE;

use IEEE.std_logic_1164.all;
use WORK.utils.all;

entity TB_SWP is
end TB_SWP;

architecture TESTA of TB_SWP is

	component SWP
		generic (N, F: natural);
		port (
			CLK		:	in	std_logic;
			RESET		:	in	std_logic;
			OVERRIDE	:	out	std_logic;
			ENABLE		:	out	std_logic_vector(F-1 downto 0);
			SAVE		:	in	std_logic;
			RESTORE		:	in	std_logic;
			SPILL		:	out	std_logic;
			FILL		:	out	std_logic;
			SELIO		:	out	std_logic;
			SELLOC		:	out	std_logic;
			ADDR		:	out	std_logic_vector(log2(N)-1 downto 0);
			DATAIN		:	in	std_logic_vector(N-1 downto 0);
			DATAOUT		:	out	std_logic_vector(N-1 downto 0);
			MBUS		: 	inout	std_logic_vector(N-1 downto 0);
			ACK		: 	in 	std_logic;
			DONE		:	out	std_logic
		);
	end component;

	constant N : natural := 8;
	constant F : natural := 4;

	signal CLK		: std_logic;
	signal RESET		: std_logic;
	signal OVERRIDE		: std_logic;
	signal ENABLE		: std_logic_vector(F-1 downto 0);
	signal SAVE		: std_logic;
	signal RESTORE		: std_logic;
	signal SPILL		: std_logic;
	signal FILL		: std_logic;
	signal SELIO		: std_logic;
	signal SELLOC		: std_logic;
	signal ADDR		: std_logic_vector(log2(N)-1 downto 0);
	signal DATAIN		: std_logic_vector(N-1 downto 0);
	signal DATAOUT		: std_logic_vector(N-1 downto 0);
	signal MBUS		: std_logic_vector(N-1 downto 0);
	signal ACK		: std_logic;
	signal DONE		: std_logic;

begin 

	UUT: SWP generic map(N,F) port map(CLK, RESET, OVERRIDE, ENABLE, SAVE, RESTORE, SPILL, FILL, SELIO, SELLOC, ADDR, DATAIN, DATAOUT, MBUS, ACK, DONE);
	
	DATAIN <= (others => '0');

	stimulus: process is begin

		RESET <= '1';
		ACK   <= '1';
		wait for 2 ns;

		MBUS     <= (others => '1');
		RESET    <= '0';
		SAVE     <= '0';
		RESTORE  <= '1';
		wait;

	end process;


	PCLOCK : process(CLK)
	begin
		if not (CLK = '0' or CLK = '1') then
			CLK <= '0';
		else
			CLK <= not(CLK) after 0.5 ns;
		end if;	
	end process;

end TESTA;
