library verilog;
use verilog.vl_types.all;
entity exceed3_to_BCD is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Qa              : out    vl_logic;
        Qb              : out    vl_logic;
        Qc              : out    vl_logic;
        Qd              : out    vl_logic
    );
end exceed3_to_BCD;
