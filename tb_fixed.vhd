library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library floatfixlib;
use floatfixlib.fixed_pkg.all;

entity tb_fixed is
end entity tb_fixed;

architecture test_bench of tb_fixed is

	signal clock : std_logic := '0'    ;
    signal s_val : sfixed(3 downto -3) := "0000000" ;
    signal u_val : ufixed(3 downto -3) := "1111111" ;

begin

	UUT : entity work.fixed port map (
        
        s_test => s_val,
        u_test => u_val,
        clock  => clock
    );
    
    clock <= not clock after 10 ns; -- 50 MHz

end architecture test_bench;