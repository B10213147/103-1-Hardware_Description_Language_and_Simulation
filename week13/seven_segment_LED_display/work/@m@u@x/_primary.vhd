library verilog;
use verilog.vl_types.all;
entity MUX is
    generic(
        S               : integer := 2;
        M               : integer := 4
    );
    port(
        sel             : in     vl_logic_vector;
        din             : in     vl_logic_vector;
        dout            : out    vl_logic_vector
    );
end MUX;
