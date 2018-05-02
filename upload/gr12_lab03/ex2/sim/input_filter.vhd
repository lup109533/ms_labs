library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_misc.all;
use WORK.utils.all;
use WORK.all;

----------------------------------------------------------------------------------------------------
-------         Selects between the IN_* inputs and the OV_* inputs according to the         -------
-------         value of OVERRIDE. Also controls the ENABLE inputs and sets them to 0        -------
-------         if MASTER_ENABLE is not active.                                              -------
----------------------------------------------------------------------------------------------------

entity INPUT_FILTER is
	generic (reg_size, M, N, F : natural);
	port (
		--- Master enable
		MASTER_ENABLE:	IN	std_logic;
		--- Input signals
		IN_ENABLE: 	IN 	std_logic_vector(2*F-1 downto 0);
		IN_IOMODE:	IN	std_logic;
		IN_RD1: 	IN 	std_logic;
		IN_RD2: 	IN 	std_logic;
		IN_WR: 		IN 	std_logic;
		IN_ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		IN_ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		IN_ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		IN_DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
		--- Override signal
		OV_ENABLE: 	IN 	std_logic_vector(2*F-1 downto 0);
		OV_IOMODE:	IN	std_logic;
		OV_RD1: 	IN 	std_logic;
		OV_RD2: 	IN 	std_logic;
		OV_WR: 		IN 	std_logic;
		OV_ADD_WR: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		OV_ADD_RD1: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		OV_ADD_RD2: 	IN 	std_logic_vector(log2((N*3+M))-1 downto 0);
		OV_DATAIN: 	IN 	std_logic_vector(reg_size-1 downto 0);
		--- Override
		OVERRIDE:	IN	std_logic;
		--- Outputs
		OUT_ENABLE: 	OUT 	std_logic_vector(2*F-1 downto 0);
		OUT_IOMODE:	OUT	std_logic;
		OUT_RD1: 	OUT 	std_logic;
		OUT_RD2: 	OUT 	std_logic;
		OUT_WR: 	OUT 	std_logic;
		OUT_ADD_WR: 	OUT 	std_logic_vector(log2((N*3+M))-1 downto 0);
		OUT_ADD_RD1: 	OUT 	std_logic_vector(log2((N*3+M))-1 downto 0);
		OUT_ADD_RD2: 	OUT 	std_logic_vector(log2((N*3+M))-1 downto 0);
		OUT_DATAIN: 	OUT 	std_logic_vector(reg_size-1 downto 0)
	);
end entity;

architecture BEHAVIORAL of INPUT_FILTER is

begin

	OUT_ENABLE  <=	IN_ENABLE when (MASTER_ENABLE = '1' and OVERRIDE = '0') else
			OV_ENABLE when (MASTER_ENABLE = '1' and OVERRIDE = '1') else
			(others => '0');

	OUT_IOMODE  <=	IN_IOMODE when (OVERRIDE = '0') else OV_IOMODE;

	OUT_RD1     <=	IN_RD1 when (OVERRIDE = '0') else OV_RD1;
	OUT_RD2     <=	IN_RD2 when (OVERRIDE = '0') else OV_RD2;
	OUT_WR      <=	IN_WR  when (OVERRIDE = '0') else OV_WR;

	OUT_ADD_WR  <=	IN_ADD_WR  when (OVERRIDE = '0') else OV_ADD_WR;
	OUT_ADD_RD1 <=	IN_ADD_RD1 when (OVERRIDE = '0') else OV_ADD_RD1;
	OUT_ADD_RD2 <=	IN_ADD_RD2 when (OVERRIDE = '0') else OV_ADD_RD2;

	OUT_DATAIN  <=	IN_DATAIN when (OVERRIDE = '0') else OV_DATAIN;

end architecture;
