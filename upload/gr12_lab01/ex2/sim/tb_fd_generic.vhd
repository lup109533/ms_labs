library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity TBFD_GEN is
end TBFD_GEN;

architecture TEST of TBFD_GEN is

	constant N : integer := NumBit;

	signal	CK:		std_logic :='0';
	signal	RESET:		std_logic :='0';
	signal	D:		std_logic_vector(N-1 downto 0) := (others => '0');
	signal	QSYNCH:		std_logic_vector(N-1 downto 0);
	signal	QASYNCH:	std_logic_vector(N-1 downto 0);
	
	component FD_GEN
	Generic ( N : integer := NumBit );
	Port (	D:	In	std_logic_vector(N-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(N-1 downto 0)
	);
	end component;

begin 
		
	UFD_GEN1 : FD_GEN
	Generic Map (N)
	Port Map ( D, CK, RESET, QSYNCH); -- sinc

	UFD_GEN2 : FD_GEN
	Generic Map (N)
	Port Map ( D, CK, RESET, QASYNCH); -- asinc
	

	process is begin

		RESET <= '1';
		wait for 1 ns;
		RESET <= '0';
		wait for 1 ns;
		RESET <= '1';
		wait for 1 ns;
		RESET <= '0';
		wait for 1 ns;
		RESET <= '1';
		wait for 1 ns;
		RESET <= '0';
		wait;

	end process;

	process is begin
	
		D <= "0000";
		wait for 1 ns;
		D <= "0001";
		wait for 1 ns;
		D <= "0010";
		wait for 1 ns;
		D <= "1100";
		wait for 1 ns;
		D <= "1011";
		wait for 1 ns;
		D <= "1111";
		wait;
	
	end process;

	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;



	

end TEST;

configuration FD_GENTEST of TBFD_GEN is
   for TEST
      for UFD_GEN1 : FD_GEN
         use configuration WORK.CFG_FD_GEN_SYNC;
      end for;
      for UFD_GEN2 : FD_GEN
         use configuration WORK.CFG_FD_GEN_ASYNC;
      end for;


   end for;
end FD_GENTEST;

