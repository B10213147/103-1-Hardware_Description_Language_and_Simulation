library verilog;
use verilog.vl_types.all;
entity seven_segment_LED_display is
    generic(
        N               : integer := 4;
        M               : integer := 2
    );
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        data_out        : out    vl_logic_vector(6 downto 0);
        \select\        : out    vl_logic_vector;
        din             : in     vl_logic_vector
    );
end seven_segment_LED_display;
