library verilog;
use verilog.vl_types.all;
entity BCD_to_binary is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(6 downto 0)
    );
end BCD_to_binary;
