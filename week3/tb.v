`timescale 1ns/1ns
module simulation;
reg[3:0]in;
wire[3:0]BCD;
	exceed3_to_BCD UUT(
		.A(in[3]),.B(in[2]),.C(in[1]),.D(in[0]),
		.Qa(BCD[3]),.Qb(BCD[2]),.Qc(BCD[1]),.Qd(BCD[0]));
initial
	for(in=3;in<=12;in=in+1)begin
	#10; end
initial #100 $finish;
initial
	$monitor($realtime,"ns in=%h BCD=%h",in,BCD);
endmodule