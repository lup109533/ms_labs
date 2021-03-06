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


architecture PIPPO of FD_GEN is -- flip flop D with syncronous reset

begin
	PSYNCH: process(CK,RESET)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= (others => '0'); 
	    else
	      Q <= D; -- input is written on output
	    end if;
	  end if;
	end process;

end PIPPO;

architecture PLUTO of FD_GEN is -- flip flop D with asyncronous reset

begin
	
	PASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= (others => '0');
	  elsif CK'event and CK='1' then -- positive edge triggered:
	    Q <= D; 
	  end if;
	end process;

end PLUTO;


configuration CFG_FD_GEN_PIPPO of FD_GEN is
	for PIPPO
	end for;
end CFG_FD_GEN_PIPPO;


configuration CFG_FD_GEN_PLUTO of FD_GEN is
	for PLUTO
	end for;
end CFG_FD_GEN_PLUTO;


