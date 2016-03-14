library verilog;
use verilog.vl_types.all;
entity logically_shift is
    port(
        data            : in     vl_logic_vector(3 downto 0);
        shift           : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end logically_shift;
