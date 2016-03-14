/*****Parameterized N bits binary_counter*****/
module binary_counter(clk,reset_n,qout);
parameter N=2;
input clk,reset_n;
output reg[N-1:0]qout=0;
integer i=0;
always @(posedge clk or negedge reset_n)
	if(!reset_n)begin
		qout={N{1'bz}};
		i=0;end
	else begin
		qout=i;
		i=i+1;end
endmodule