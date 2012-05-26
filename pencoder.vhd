-------------------------------------------------------------------------------
-- Title: Priority encoder
-------------------------------------------------------------------------------
-- File: pencoder.vhd
-- Author: Simarpreet Singh
-- Created: 2012/05/25
-- Last modified : 2012/05/25
-------------------------------------------------------------------------------
-- Description :
-- Implements a simple priority encoder in VHDL. This code demonstrates
-- a simple examples of the IF-THEN-ELSE statement as a prioritised
-- selector.
-------------------------------------------------------------------------------
-- Modification history :
-- 2012/05/25 : created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity PENCODER is

	port (	DATAIN : in std_logic_vector(1 downto 0);	--data input
			DATAOUT : out std_logic;						--data out
			CLK, RESET : in std_logic					-- clock and reset
		 );
		 
end PENCODER;

-- purpose: Implement main structure of PENCODER
architecture BEHAVIOR of PENCODER is
begin	
	
	process(CLK, RESET)
	begin
		--activities triggered by a-sync reset (active high)
		if RESET = '1'	then
			DATAOUT <= '0';		--default output
		
		--activities triggered by rising edge of clock
		elsif CLK'event and CLK = '1' then
		
			if DATAIN(0) = '1' then
				DATAOUT <= '0';
			elsif DATAIN(1) = '1' then
				DATAOUT <= '1';
			end if;
		end if;
	end process;
end BEHAVIOR;
		
			