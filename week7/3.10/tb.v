`timescale 1ns/1ns
module tb;
reg[5:0]i;
reg[3:0]data;
reg[1:0]shift;
wire[3:0]out;
	logically_shift UUT(
		.data(data), .shift(shift), .out(out));
initial 
	for(i=0;i<=63;i=i+1)begin
		data=i[5:2];
		shift=i[1:0];
		#10;
	end	
initial #2560 $finish;
initial
	$monitor($realtime,"ns data=%b shift=%d out=%b",data,shift,out);
endmodule 