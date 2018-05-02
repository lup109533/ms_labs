library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;

entity TB_TOP_LEVEL_WINDOWED_REGISTER_FILE is
end TB_TOP_LEVEL_WINDOWED_REGISTER_FILE;

architecture TESTA of TB_TOP_LEVEL_WINDOWED_REGISTER_FILE is
	
	constant reg_size	: natural := 8;
	constant M		: natural := 8;
	constant N		: natural := 4;
	constant F		: natural := 4;

	signal CLK	  : std_logic := '0';
	signal RESET	  : std_logic;
	signal ENABLE	  : std_logic;
	signal RD1	  : std_logic;
	signal RD2	  : std_logic;
	signal WR	  : std_logic;
	signal ADD_WR	  : std_logic_vector(log2(N*3+M)-1 downto 0);
	signal ADD_RD1	  : std_logic_vector(log2(N*3+M)-1 downto 0);
	signal ADD_RD2	  : std_logic_vector(log2(N*3+M)-1 downto 0);
	signal DATAIN	  : std_logic_vector(reg_size-1 downto 0);
	signal OUT1	  : std_logic_vector(reg_size-1 downto 0);
	signal OUT2	  : std_logic_vector(reg_size-1 downto 0);
	signal CALL       : std_logic;
	signal RETN       : std_logic;
	signal SPILL      : std_logic;
	signal CANSAVE    : std_logic;
	signal CANRESTORE : std_logic;
	signal FILL       : std_logic;
	signal ACK        : std_logic;
	signal MBUS       : std_logic_vector(reg_size-1 downto 0);

	signal saved_count : natural := 0;
	signal can_count   : boolean := true;

	component TOP_LEVEL_WINDOWED_REGISTER_FILE
 		generic (reg_size, M, N, F : natural);
		port (
			CLK: 		IN 	std_logic;
			RESET:		IN 	std_logic;
			ENABLE: 	IN 	std_logic;
			RD1: 		IN 	std_logic;
			RD2: 		IN 	std_logic;
			WR: 		IN 	std_logic;
			ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
			DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
			OUT1: 		OUT 	std_logic_vector(reg_size-1 downto 0);
			OUT2: 		OUT 	std_logic_vector(reg_size-1 downto 0);
			CALL:		IN	std_logic;
			RETN:		IN	std_logic;
			SPILL:		OUT	std_logic;
			FILL:		OUT	std_logic;
			CANSAVE:	IN	std_logic;
			CANRESTORE:	IN	std_logic;
			ACK:		IN	std_logic;
			MBUS:		INOUT	std_logic_vector(reg_size-1 downto 0)
		);	
	end component;

begin 

RG: TOP_LEVEL_WINDOWED_REGISTER_FILE
GENERIC MAP (reg_size, M, N, F)
PORT MAP (CLK, RESET, ENABLE, RD1, RD2, WR, ADD_WR, ADD_RD1, ADD_RD2, DATAIN, OUT1, OUT2, CALL, RETN, SPILL, FILL, CANSAVE, CANRESTORE, ACK, MBUS);
	
	saved_counter_proc: process (SPILL, FILL) is begin
		if (SPILL = '1' and can_count) then
			saved_count <= saved_count + 1;
			can_count   <= false;
		elsif (SPILL = '0' and not can_count) then
			can_count   <= true;
		elsif (FILL = '1' and can_count) then
			saved_count <= saved_count + 1;
			can_count   <= false;
		elsif (FILL = '0' and not can_count) then
			can_count   <= true;
		end if;
	end process;

	cansave_canrestore_proc: process (CLK) is begin
		if (saved_count > 0) then
			CANRESTORE <= '0';
			CANSAVE    <= '0';
		else
			CANRESTORE <= '1';
			CANSAVE    <= '1';
		end if;
	end process;

	stimulus: process is begin

		MBUS   <= (others => 'Z');
		RESET  <= '1';
		ENABLE <= '1';
		WR     <= '0';
		RD1    <= '0';
		RD2    <= '0';
		CALL   <= '0';
		RETN   <= '0';
		ACK    <= '1';
		wait for 2 ns;
		RESET  <= '0';
		WR <= '1';
		wait for 0 ns;

		for window in 0 to F-1 loop
			for addr in 0 to N*3+M-1 loop
				ADD_WR  <= std_logic_vector(to_unsigned(addr, ADD_WR'length));
				DATAIN <= (others => '1');
				wait for 2 ns;
			end loop;
			
			if (window < F-1) then
				CALL <= '1';
				wait for 2 ns;
				CALL <= '0';
			else
				wait for 15 ns;
			end if;
		end loop;

		wait for 15 ns;
		RETN <= '1';
		MBUS <= (others => '0');
		wait for 2 ns;
		RETN <= '0';
		wait for 50 ns;
		MBUS <= (others => 'Z');

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
