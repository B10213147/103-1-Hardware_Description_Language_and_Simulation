`timescale 1ns/1ns
module tb;
//reg [1:0]i;
reg [7:0]in;
wire [6:0]out;
	BCD_to_binary UUT(
	.in(in),.out(out));
initial begin
	in=0;
	while(in<512)begin
	in=in+1;
	#10;	end
	end
initial #5120 $finish ;
initial $monitor ($realtime,"in=%b(%h) out=%b(%d)",in,in,out,out);
endmodule