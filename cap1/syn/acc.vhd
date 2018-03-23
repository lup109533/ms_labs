library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
---------------------------------------------

entity acc is 
    generic (N: integer := numBit
            );
    port (
      A          : in  std_logic_vector(N - 1 downto 0);
      B          : in  std_logic_vector(N - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      -- ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(N - 1 downto 0));

end acc;

---------------------------------------------
architecture structural of acc is
    
    -----components-------
    component MUX21_GENERIC
        Generic (N: integer:= numBit);
	Port (	A:	In	std_logic_vector(N-1 downto 0) ;
		B:	In	std_logic_vector(N-1 downto 0);
		SEL:	In	std_logic;
		Y:	Out	std_logic_vector(N-1 downto 0));
    end component;
   
    component RCA_generic
         
      generic (N     :        integer := numBit);
	Port (	A:	In	std_logic_vector(N-1 downto 0);
		B:	In	std_logic_vector(N-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(N-1 downto 0);
		Co:	Out	std_logic);
      end component; 
     
    component FD_GEN
	Generic ( N : integer := NumBit );
	Port (	D:	In	std_logic_vector(N-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(N-1 downto 0)
	);
    end component;
   ------------------------------
   ----------signals-------------
   signal muxoutput : std_logic_vector(N-1 downto 0);
   signal rcaoutput : std_logic_vector(N-1 downto 0);
   signal regoutput : std_logic_vector(N-1 downto 0);
   ------------------------------
begin

     acc_mux : MUX21_GENERIC 
     generic map (N)
     port map (regoutput, B, ACCUMULATE, muxoutput);
   
     acc_rca : RCA_generic
     generic map (N)
     port map (A=>A, B=>muxoutput, ci=>'0', S=>rcaoutput, Co=>open);

     acc_fd  : FD_GEN
     generic map (N)
     port map (D=>rcaoutput, CK=>CLK, RESET=>RST_n, Q=>regoutput);
	 
	 Y <= regoutput;

end structural;




