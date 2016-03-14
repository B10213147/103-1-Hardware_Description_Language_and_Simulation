library verilog;
use verilog.vl_types.all;
entity binary_counter is
    generic(
        N               : integer := 5
    );
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        qout            : out    vl_logic_vector
    );
end binary_counter;
