library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.utils.all;
use WORK.all;

-------------------------------------------------------------------
-------         N-bit buffer that can perform left          -------
-------         and right rotation by 2 positions.          -------
-------------------------------------------------------------------

entity CIRCULAR_BUFFER_SHFT2 is
	generic (N: natural);
	port (
		CLK		:	in	std_logic;
		RESET		:	in	std_logic;			-- Synchronous active-high reset.
		ROTR		:	in	std_logic;			-- Active high.
		ROTL		:	in	std_logic;			-- Active high.
		INIT		:	in	std_logic_vector(N-1 downto 0);	-- Initial configuration of the buffer.
		OUTPUT		:	out	std_logic_vector(N-1 downto 0)
	);
end entity;

architecture BEHAVIORAL of CIRCULAR_BUFFER_SHFT2 is

	signal rotator    : std_logic_vector(N-1 downto 0);
	signal lbuf, rbuf : std_logic_vector(1 downto 0);
begin

	OUTPUT <= rotator;
	rbuf   <= rotator(N-1 downto N-2);
	lbuf   <= rotator(  1 downto   0);

	control: process (CLK) is begin

		if rising_edge(CLK) then

			if (RESET = '1') then
				rotator <= INIT;

			else
				if (ROTR = '1') then
					rotator(N-1 downto 2) <= rotator(N-3 downto 0);
					rotator(  1 downto 0) <= rbuf;
				elsif (ROTL = '1') then
					rotator(N-3 downto 0)   <= rotator(N-1 downto 2);
					rotator(N-1 downto N-2) <= lbuf;
				end if;
			end if;
		
		end if;

	end process;

end architecture;
