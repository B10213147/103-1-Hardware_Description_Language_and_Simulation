module two_complement_adder(a,b,com,sum,co_bo);
input [3:0]a,b;
input com;
output [3:0]sum;
output co_bo;
wire [3:0]t;
assign t=b^{4{com}};
assign	{co_bo,sum}=a+t+com;	
	
endmodule
	
