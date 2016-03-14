`timescale 1ns/1ns
module tb;
parameter S=2;
parameter M=3;
reg [M*2**S-1:0]din=0;
wire [M-1:0]dout;
reg [S-1:0]sel=0;
	MUX UUT(.sel(sel),.din(din),.dout(dout));
always begin
	#1 sel=sel+1;
	din=din+1;	
	end	
initial	#(4**(S*M)) $finish;
initial $monitor($realtime,"ns sel=%b din=%h dout=%h",sel,din,dout); 
endmodule