library verilog;
use verilog.vl_types.all;
entity two_complement_adder is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        com             : in     vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        co_bo           : out    vl_logic
    );
end two_complement_adder;
