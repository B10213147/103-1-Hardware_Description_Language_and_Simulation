`timescale 1ns/1ns
module simulation;
reg[3:0]in;
wire[1:0]out;
	priority_encoder4_to_2 UUT(
		.in(in), .out(out));
initial
	for(in=0;in<=15;in=in+1)begin
	#10; end
initial #160 $finish;
initial
	$monitor($realtime,"ns in=%b out=%b",in,out);
endmodule 