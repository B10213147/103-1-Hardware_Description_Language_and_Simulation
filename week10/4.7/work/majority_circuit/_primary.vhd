library verilog;
use verilog.vl_types.all;
entity majority_circuit is
    generic(
        n               : integer := 8
    );
    port(
        \in\            : in     vl_logic_vector;
        flag            : out    vl_logic
    );
end majority_circuit;
