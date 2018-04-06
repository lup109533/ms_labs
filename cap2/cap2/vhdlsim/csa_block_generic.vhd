library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity CARRY_SELECT_BLOCK is
	generic (N : natural := Numbit);
	port (
		A, B : in  std_logic_vector(N-1 downto 0);
		C_in : in  std_logic_vector(N/4-1 downto 0);
		O    : out std_logic_vector(N-1 downto 0);
		C_o  : out std_logic
	);
end CARRY_SELECT_BLOCK;

architecture STRUCTURAL of CARRY_SELECT_BLOCK is

	component RCA_GENERIC
		generic (
			DRCAS : Time := 0 ns; 
			DRCAC : Time := 0 ns;
			N     : integer := numBit
		);
		port (
			A:  In  std_logic_vector(N-1 downto 0);
			B:  In  std_logic_vector(N-1 downto 0);
			Ci: In  std_logic;
			S:  Out std_logic_vector(N-1 downto 0);
			Co: Out  std_logic
		);
	end component;

	component MUX21_GENERIC
		Generic (N: integer:= numBit;
			 DELAY_MUX: Time:= tp_mux);
		Port (	A:	In	std_logic_vector(N-1 downto 0) ;
			B:	In	std_logic_vector(N-1 downto 0);
			SEL:	In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));
	end component;

	signal mux_in_A : std_logic_vector(N-1 downto 0);
	signal mux_in_B : std_logic_vector(N-1 downto 0);
	signal carry    : std_logic_vector(N/4*2-1 downto 0);
	signal carry_out: std_logic_vector(0 downto 0);

begin


	---- RIPPLE CARRY ADDERS
	csa_block_gen: for i in 0 to N/4-1 generate

		carry_in_0_i: RCA_GENERIC generic map (N => 4)
					  port map (
						A   =>   A(i*4+3 downto i*4),
						B   =>   B(i*4+3 downto i*4),
						Ci  =>   '0',
						S   =>   mux_in_A(i*4+3 downto i*4),
						Co  =>   carry(2*i)
					  );

		carry_in_1_i: RCA_GENERIC generic map (N => 4)
					  port map (
						A   =>   A(i*4+3 downto i*4),
						B   =>   B(i*4+3 downto i*4),
						Ci  =>   '1',
						S   =>   mux_in_B(i*4+3 downto i*4),
						Co  =>   carry(2*i+1)
					  );

	end generate;


	---- MULTIPLEXERS
	mux_gen: for i in 0 to N/4-1 generate

		mux_i: MUX21_GENERIC generic map (N => 4)
				     port map (
						A   =>   mux_in_A(i*4+3 downto i*4),
						B   =>   mux_in_B(i*4+3 downto i*4),
						SEL =>   C_in(i),
						Y   =>   O(i*4+3 downto i*4)
				     );

	end generate;
	
	
	---- CARRIES
	carry_mux: MUX21_GENERIC generic map (N => 1)
					 port map (
						A   =>   carry(N/4*2-2 downto N/4*2-2),
						B   =>   carry(N/4*2-1 downto N/4*2-1),
						SEL =>   C_in(N/4-1),
						Y   =>   carry_out
					 );
					 
	C_o <= carry_out(0);

end architecture;
