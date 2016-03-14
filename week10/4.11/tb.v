`timescale 1ns/1ns
module tb;
parameter n=9;
reg [n-1:0]in;
wire [11:0]out;
	binary_to_BCD UUT(
	.in(in),.out(out));
initial begin
	in=0;
	while(in<2**(n+1))begin
	in=in+1;
	#10;end
	end
initial #(2**n*10) $finish;
initial $monitor($realtime,"ns in=%b(%d) out=%b",in,in,out); 
endmodule