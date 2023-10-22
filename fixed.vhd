library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library floatfixlib;
use floatfixlib.fixed_pkg.all;

entity fixed is

    port (
        clock  : in     std_logic;
        u_test : in ufixed(3 downto -3);
        s_test : in sfixed(3 downto -3)
    ) ;

end fixed;


architecture arch of fixed is

-- signals

  begin

end arch ;