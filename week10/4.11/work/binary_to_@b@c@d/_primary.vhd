library verilog;
use verilog.vl_types.all;
entity binary_to_BCD is
    generic(
        N               : integer := 9
    );
    port(
        \in\            : in     vl_logic_vector;
        \out\           : out    vl_logic_vector(11 downto 0)
    );
end binary_to_BCD;
