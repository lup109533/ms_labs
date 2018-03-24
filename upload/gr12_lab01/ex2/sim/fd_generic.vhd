library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity FD_GEN is
	Generic ( N : integer := NumBit );
	Port (	D:	In	std_logic_vector(N-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(N-1 downto 0)
	);
end FD_GEN;


architecture SYNC of FD_GEN is -- flip flop D with syncronous reset

begin
	PSYNC: process(CK,RESET)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= (others => '0'); 
	    else
	      Q <= D; -- input is written on output
	    end if;
	  end if;
	end process;

end SYNC;

architecture ASYNC of FD_GEN is -- flip flop D with asyncronous reset

begin
	
	PASYNC: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= (others => '0');
	  elsif CK'event and CK='1' then -- positive edge triggered:
	    Q <= D; 
	  end if;
	end process;

end ASYNC;


configuration CFG_FD_GEN_SYNC of FD_GEN is
	for SYNC
	end for;
end CFG_FD_GEN_SYNC;


configuration CFG_FD_GEN_ASYNC of FD_GEN is
	for ASYNC
	end for;
end CFG_FD_GEN_ASYNC;


