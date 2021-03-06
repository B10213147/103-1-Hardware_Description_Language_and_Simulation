`timescale 1ns/1ns
module tb;
reg[7:0]i;
reg[3:0]x,y;
wire[3:0]out;
	modulus_operator UUT(
		.x(x), .y(y), .out(out));
initial 
	for(i=0;i<=255;i=i+1)begin
		x=i[7:4];
		y=i[3:0];
		#10;
	end	
initial #2560 $finish;
initial
	$monitor($realtime,"ns x=%d y=%d out=%d",x,y,out);
endmodule 