`timescale 1ns/1ns
module tb;
reg[8:0]i;
reg [3:0]a,b;
reg com;
wire [3:0]sum;
wire co_bo;
	two_complement_adder UUT(
		.a(a), .b(b), .com(com),
		.sum(sum), .co_bo(co_bo));
initial 
	for(i=0;i<=511;i=i+1)begin
		a=i[8:5];b=i[4:1];
		com=i[0];
		#10;
	end	
initial #5120 $finish;
initial
	$monitor($realtime,"ns a=%d b=%d com=%b co_bo=%b sum=%d",a,b,com,co_bo,sum);
endmodule 