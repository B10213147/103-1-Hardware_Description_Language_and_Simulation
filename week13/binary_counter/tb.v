`timescale 1ns/100ps
module tb;
parameter N=5;
//parameter M=2**N;
reg clk=0,reset_n;
wire [N-1:0]qout;
	binary_counter UUT(.clk(clk),.reset_n(reset_n),.qout(qout));
always #0.5 clk<=~clk;
initial begin
	reset_n=0;
	forever begin
		#1.3 reset_n=1;
		#40.2 reset_n=0;end	
	end
initial #(100) $finish;
initial	$monitor($realtime,"ns qout=%b",qout); 		
endmodule