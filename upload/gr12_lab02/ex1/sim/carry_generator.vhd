library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
use WORK.constants.all;

entity CARRY_GENERATOR is
	generic (N : natural);
	port (
		A, B : in  std_logic_vector(N-1 downto 0);
		C_in : in  std_logic;
		C_o  : out std_logic_vector(N/4 downto 0)
	);
end CARRY_GENERATOR;

architecture STRUCTURAL of CARRY_GENERATOR is

	component G_BLOCK
		port (
			Gi   : in  std_logic_vector(1 downto 0);
			Pi   : in  std_logic;
			Go   : out std_logic
		);
	end component;

	component PG_BLOCK
		port (
			Gi   : in  std_logic_vector(1 downto 0);
			Pi   : in  std_logic_vector(1 downto 0);
			Po   : out std_logic;
			Go   : out std_logic
		);
	end component;

	constant height : integer := integer(ceil(log2(real(N))));
	
	type vector is array (natural range<>) of std_logic_vector(N/4-1 downto 0);
	
	signal p, g: std_logic_vector(N downto 0);
	signal G_10: std_logic;
	signal first_g, first_p : std_logic_vector(N/2-1 downto 0);
	
	signal PP, GG : vector(height-2 downto 0);

begin

	---- P AND G GENERATION FROM OPERANDS
	---------------------------------------------------
	p(0)          <= '0';
	g(0)          <= C_in;
	p(N downto 1) <= A xor B;
	g(N downto 1) <= A and B;

	
	---- FIRST ROW (N/2 outputs)
	---------------------------------------------------
	G_10 <= g(1) or (p(1) and g(0));
	first_row: for i in 0 to N/2-1 generate
	
		g_block_i: if (i = 0) generate
			g_i: G_BLOCK port map (
								Gi(1) => g(2),
								Gi(0) => G_10,
								Pi    => p(2),
								Go    => first_g(i)
			);
		end generate;
		
		pg_block_i: if (i > 0) generate
			pg_i: PG_BLOCK port map (
								Gi(1) => g(i*2+2),
								Gi(0) => g(i*2+1),
								Pi(1) => p(i*2+2),
								Pi(0) => p(i*2+1),
								Po    => first_p(i),
								Go    => first_g(i)
			);
		end generate;
	
	end generate;
	
	
	---- SECOND ROW (N/4 outputs)
	---------------------------------------------------
	second_row: for i in 0 to N/4-1 generate
	
		g_block_i: if (i = 0) generate
			g_i: G_BLOCK port map (
								Gi(1) => first_g(i+1),
								Gi(0) => first_g(i),
								Pi    => first_p(i+1),
								Go    => GG(0)(i)
			);
		end generate;
		
		pg_block_i: if (i > 0) generate
			pg_i: PG_BLOCK port map (
								Gi(1) => first_g(i*2+1),
								Gi(0) => first_g(i*2),
								Pi(1) => first_p(i*2+1),
								Pi(0) => first_p(i*2),
								Po    => PP(0)(i),
								Go    => GG(0)(i)
			);
		end generate;
	
	end generate;
	
	
	---- OTHER ROWS
	---------------------------------------------------
	rows: for Y in 0 to height-3 generate
		cols: for X in 0 to N/4-1 generate
		
			-- Propagate signals every 2^Y columns
			propagate: if (X mod 2**(Y+1) < 2**Y) generate
				GG(Y+1)(X) <= GG(Y)(X);
				PP(Y+1)(X) <= PP(Y)(X);
			end generate;
		
			-- First 2^Y blocks are G blocks
			g_block_i: if (X mod 2**(Y+1) >= 2**Y) and (X < 2**(Y+1)) generate
				g_i: G_BLOCK port map (
								Gi(1) => GG(Y)(X),
								Gi(0) => GG(Y)(X-(X mod 2**Y)-1),
								Pi    => PP(Y)(X),
								Go    => GG(Y+1)(X)
				);
			end generate;
			
			-- Other blocks are PG blocks
			pg_block_i: if (X mod 2**(Y+1) >= 2**Y) and (X >= 2**(Y+1)) generate
				pg_i: PG_BLOCK port map (
								Gi(1) => GG(Y)(X),
								Gi(0) => GG(Y)(X-(X mod 2**Y)-1),
								Pi(1) => PP(Y)(X),
								Pi(0) => PP(Y)(X-(X mod 2**Y)-1),
								Po    => PP(Y+1)(X),
								Go    => GG(Y+1)(X)
				);
			end generate;
	
		end generate;
	end generate;
	
	---- OUTPUT
	---------------------------------------------------
	C_o(N/4 downto 1) <= GG(height-2);
	C_o(0)            <= C_in;

end architecture;
