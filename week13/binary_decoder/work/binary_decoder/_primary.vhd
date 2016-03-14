library verilog;
use verilog.vl_types.all;
entity binary_decoder is
    generic(
        N               : integer := 4
    );
    port(
        \in\            : in     vl_logic_vector;
        \out\           : out    vl_logic_vector
    );
end binary_decoder;
