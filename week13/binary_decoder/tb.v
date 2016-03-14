`timescale 1ns/1ns
module tb;
parameter N=4;
parameter M=2**N;
reg [N-1:0]in=0;
wire [M-1:0]out;
	binary_decoder UUT(.in(in),.out(out));
initial while(in<M) #1 in=in+1;
initial #(M) $finish;
initial	$monitor($realtime,"ns in=%d out=%b",in,out); 		
endmodule