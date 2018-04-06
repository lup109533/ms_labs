library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";
use WORK.constants.all;

entity CARRY_GENERATOR is
	port (
		A, B : in  std_logic_vector(31 downto 0);
		C_in : in  std_logic;
		C_o  : out std_logic_vector(7 downto 0)
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

	type vector is array (3 downto 0) of std_logic_vector(7 downto 0);

	signal p, g   : std_logic_vector(32 downto 0);
	signal g10    : std_logic;
	signal P1, G1 : std_logic_vector(15 downto 0);
	signal PP, GG : vector;

begin

	p(0)          <= '0';
	g(0)          <= C_in;
	p(32 downto 1) <= A xor B;
	g(32 downto 1) <= A and B;

	g10           <= g(1) or (p(1) and g(0));

	---- ROW 0
	first_pg: for i in 0 to 15 generate

		g_block_i: if (i = 0) generate
			g_block_i_row0: G_BLOCK port map (
						Gi(0) => g10,
						Gi(1) => g(2),
						Pi    => p(2),
						Go    => G1(i)
					   );
		end generate;

		pg_block_i: if (i > 0) generate
			pg_block_i_row0: PG_BLOCK port map (
						Gi(0) => g((i+1)*2),
						Gi(1) => g((i+1)*2-1),
						Pi(0) => p((i+1)*2),
						Pi(1) => p((i+1)*2-1),
						Po    => P1(i),
						Go    => G1(i)
					   );
		end generate;

	end generate;

	
	---- ROW 1
	row1: for i in 0 to 7 generate

		g_block_i: if (i = 0) generate
			g_block_i_row1: G_BLOCK port map (
						Gi(0) => G1(i),
						Gi(1) => G1(i+1),
						Pi    => P1(i+1),
						Go    => GG(0)(i)
					   );
		end generate;

		 pg_block_i: if (i > 0) generate
			pg_block_i_row1: PG_BLOCK port map (
						Gi(0) => G1(i),
						Gi(1) => G1(i+1),
						Pi(0) => P1(i),
						Pi(1) => P1(i+1),
						Po    => PP(0)(i),
						Go    => GG(0)(i)
					   );
		end generate;

	end generate;

	---- ROW 2
	row2: for i in 0 to 7 generate

		prop: if (i mod 2 = 0) generate
			GG(2)(i) <= GG(1)(i);
		end generate;

		g_block_i: if (i = 1) generate
			g_block_i_row2: G_BLOCK port map (
						Gi(0) => GG(0)(i),
						Gi(1) => GG(0)(i+1),
						Pi    => PP(1)(i+1),
						Go    => GG(1)(i)
					   );
		end generate;

		pg_block_i: if (i > 1 and not (i mod 2 = 0)) generate
			pg_block_i_row2: PG_BLOCK port map (
						Gi(0) => GG(0)(i),
						Gi(1) => GG(0)(i+1),
						Pi(0) => PP(0)(i),
						Pi(1) => PP(0)(i+1),
						Po    => PP(1)(i),
						Go    => GG(1)(i)
					   );
		end generate;

	end generate;

	---- ROW 3
	row3: for i in 0 to 7 generate

		prop: if (i mod 4 = 0 or i mod 4 = 1) generate
			GG(2)(i) <= GG(1)(i);
		end generate;

		g_block_i: if (i = 2 or i = 3) generate
			g_block_i_row3: G_BLOCK port map (
						Gi(0) => GG(1)(i),
						Gi(1) => GG(1)(i+1),
						Pi    => PP(2)(i+1),
						Go    => GG(2)(i)
					   );
		end generate;

		pg_block_i1: if (i > 3 and  i < 6 and not (i mod 4 = 0 or i mod 4 = 1)) generate
			pg_block_i_row3: PG_BLOCK port map (
						Gi(0) => GG(1)(i),
						Gi(1) => GG(1)(1),
						Pi(0) => PP(1)(i),
						Pi(1) => PP(1)(1),
						Po    => PP(2)(i),
						Go    => GG(2)(i)
					   );
		end generate;

		pg_block_i2: if (i > 6 and not (i mod 4 = 0 or i mod 4 = 1)) generate
			pg_block_i_row3: PG_BLOCK port map (
						Gi(0) => GG(1)(i),
						Gi(1) => GG(1)(5),
						Pi(0) => PP(1)(i),
						Pi(1) => PP(1)(5),
						Po    => PP(2)(i),
						Go    => GG(2)(i)
					   );
		end generate;

	end generate;

	---- ROW 4
	row4: for i in 0 to 7 generate

		prop: if (i < 4) generate
			GG(3)(i) <= GG(2)(i);
		end generate;

		g_block_i: if (i >= 4) generate
			g_block_i_row4: G_BLOCK port map (
						Gi(0) => GG(2)(i),
						Gi(1) => GG(2)(3),
						Pi    => PP(2)(i+1),
						Go    => GG(3)(i)
					   );
		end generate;

	end generate;

	C_o <= GG(3);

end architecture;
