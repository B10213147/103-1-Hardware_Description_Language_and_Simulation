/*****N digits seven_segment_LED_display*****/
module seven_segment_LED_display(clk,reset_n,data_out,select,din);
parameter N=4;
parameter M=2;//square root of N
input [4*N-1:0]din;
input clk,reset_n;
output [6:0]data_out;
output [N-1:0]select;
wire [M-1:0]A;
wire [3:0]B;
	binary_counter U1(clk,reset_n,A);
	MUX U2(A,din,B);
	binary_decoder U3(A,select);
	seven_segment_decoder U4(B,data_out);
endmodule
