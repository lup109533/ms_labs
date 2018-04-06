library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity BOOTHMUL is
	generic (N : natural);
	port (
		A, B : in  std_logic_vector(N-1 downto 0);
		P    : out std_logic_vector(2*N-1 downto 0)
	);
end BOOTHMUL;

architecture STRUCTURAL of BOOTHMUL is

	component BOOTH_ENCODER is
		port (
			I : in  std_logic_vector(2 downto 0);
			O : out std_logic_vector(2 downto 0)
		);
	end component;

	component MUX51_GENERIC is
		generic (N: integer:= numBit);
		port (	A, B, C, D, E:	In	std_logic_vector(N-1 downto 0);
			SEL:		In	std_logic_vector(  2 downto 0);
			Y:		Out	std_logic_vector(N-1 downto 0)
		);
	end component;

	component RCA_generic is 
		generic (DRCAS : 	Time := 0 ns; 
		         DRCAC : 	Time := 0 ns;
	                 N     :        integer := numBit);
		Port (	A:	In	std_logic_vector(N-1 downto 0);
			B:	In	std_logic_vector(N-1 downto 0);
			Ci:	In	std_logic;
			S:	Out	std_logic_vector(N-1 downto 0);
			Co:	Out	std_logic);
	end component;

	type vector is array(natural range<>) of std_logic_vector(2*N-1 downto 0);

	signal s0, sA, s2A, smA, sm2A : vector(N/2-1 downto 0);
	signal encoder_in  : std_logic_vector(N downto 0);
	signal encoder_out : std_logic_vector(3*(N/2-1) downto 0);
	signal mux_out, add_in : vector(N/2-1 downto 0);
	signal mode : std_logic_vector(N/2-1 downto 0);

begin

	encoder_in(0)          <= '0';
	encoder_in(N downto 1) <= B;

	encoders: for i in 0 to N/2-1 generate

		enc_i: BOOTH_ENCODER port map (encoder_in(2+i downto i), encoder_out(i*3+2 downto i));
		mode(i) <= encoder_in(2*i+2);

	end generate;


	muxes: for i in 0 to N/2-1 generate

		s0(i)                           <= (others => '0');

		sA(i)                           <= (others => '0');
		sA(i)(N-1+2*i downto 2*i)       <= A;

		s2A(i)                          <= (others => '0');
		s2A(i)(N-1+2*i+1 downto 2*i+1)  <= A;

		smA(i)                          <= (others => '0');
		smA(i)(N-1+2*i downto 2*i)      <= not A;

		sm2A(i)                         <= (others => '0');
		sm2A(i)(N-1+2*i+1 downto 2*i+1) <= not A;

		mux_i: MUX51_GENERIC generic map (2*N) port map (s0(i), sA(i), s2A(i), smA(i), sm2A(i), encoder_out(i*3-1 downto i), mux_out(i));

	end generate;

	add_in(0) <= mux_out(0);
	adders: for i in 0 to N/2-2 generate

		add_i: RCA_GENERIC generic map (N 2*N) port map (mux_out(i+1), add_in(i), mode(i), add_in(i+1), open);

	end generate;

	P <= add_in(N/2-1);

end architecture;
