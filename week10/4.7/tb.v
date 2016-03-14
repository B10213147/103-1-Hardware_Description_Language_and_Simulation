`timescale 1ns/1ns
module tb;
parameter n=8;
reg [n-1:0]in;
wire flag;
	majority_circuit UUT(
	.in(in),.flag(flag));
initial begin
	in=0;
	while(in<2**(n+1))begin
	in=in+1;
	#10;end
	end
initial #(2**(n+1)*10) $finish;
initial $monitor($realtime,"ns in=%b flag=%b",in,flag); 
endmodule