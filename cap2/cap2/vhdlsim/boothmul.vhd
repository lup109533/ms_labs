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

	--- COMPONENTS
	----------------------------------------------------------------------
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

	
	--- SIGNALS
	----------------------------------------------------------------------
	type vector is array(natural range<>) of std_logic_vector(2*N-1 downto 0);

	signal s0, sA, s2A, smA, sm2A : vector(N/2-1 downto 0);	-- Inputs of muxes
	
	signal encoder_in  : std_logic_vector(N downto 0);
	signal encoder_out : std_logic_vector(3*(N/2)-1 downto 0);
	
	signal mux_out, add_in : vector(N/2-1 downto 0);
	signal mode : std_logic_vector(N/2-1 downto 0); -- Carry in for adders, '1' when mux output is -A or -2A for proper 2's complement (full subtraction)

begin

	--- BOOTH ENCODER
	----------------------------------------------------------------------
	encoder_in(0)          <= '0';   -- Extended code (index -1)
	encoder_in(N downto 1) <= B;     -- indexes 0..N-1

	encoders: for i in 0 to N/2-1 generate

		-- Radix-3 encoder instantiation
		enc_i: BOOTH_ENCODER port map (encoder_in(i*2+2 downto i*2), encoder_out(i*3+2 downto i*3));
		
		-- Adder mode (add/sub), '1' when encoder input codes for negative operand, except "111" (codes for 0)
		mode(i) <= encoder_in(2*i+2) and not (encoder_in(2*i+1) and encoder_in(2*i));

	end generate;

	
	--- MULTIPLEXERS
	----------------------------------------------------------------------
	muxes: for i in 0 to N/2-1 generate

		mux_i: MUX51_GENERIC generic map (2*N) port map (s0(i), sA(i), smA(i), s2A(i), sm2A(i), encoder_out(i*3+2 downto i*3), mux_out(i));

	end generate;
	
	-- For all stages (shift left by 2 at every stage)
	mux_inputs: process (A) is begin
		for i in 0 to N/2-1 loop
		
		-- Zero
		s0(i)                           <= (others => '0');

		-- +A
		sA(i)                           <= (others => '0');
		sA(i)(N-1+2*i downto 2*i)       <= A;

		-- +2A
		s2A(i)                          <= (others => '0');
		s2A(i)(N-1+2*i+1 downto 2*i+1)  <= A;

		-- -A (1's complement)
		smA(i)                          <= (others => '1');
		smA(i)(N-1+2*i downto 2*i)      <= not A;

		-- -2A (1's complement)
		sm2A(i)                         <= (others => '1');
		sm2A(i)(N-1+2*i+1 downto 2*i+1) <= not A;
		
		end loop;
	end process;

	
	--- ADDERS
	----------------------------------------------------------------------
	add_in(0) <= mux_out(0);   -- B operand of first stage is mux output, successive stages have previous output as operand
	adders: for i in 0 to N/2-2 generate

		add_i: RCA_GENERIC generic map (N => 2*N) port map (mux_out(i+1), add_in(i), mode(i), add_in(i+1), open);

	end generate;

	
	--- OUTPUT
	----------------------------------------------------------------------
	P <= add_in(N/2-1); -- Last adder output

end architecture;
