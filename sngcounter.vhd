-- William Fan
-- 02/14/2011
-- Signed Counter RTL

package sgncounter is
	component counter is
		port (j,k: in std_logic;
			  out_bin: out std_logic);
	end component;
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.sgncounter.all;

entity scounter is
	generic (N: integer := 4);
	port (clk: in std_logic;
		  out_bin,out_gray: out std_logic_vector(N-1 downto 0));
end scounter;

architecture sc of scounter is
signal tmp1: std_logic_vector(N-1 downto 0);
signal tmp2: integer <= N-1;

function g2b (input,output: std_logic_vector) return std_logic_vector is
begin
	output(N-1) <= input(N-1);
	gen: For i in tmp2'RANGE generate
		output(i-1) <= output(i) XOR input(i-1);
	end generate;
end function;

begin
	process (clk)
	begin
		if (clk'event and clk='1') then


		end if;
	end process;
end architecture;
