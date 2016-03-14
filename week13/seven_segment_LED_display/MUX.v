/*****Parameterized 2**S-to-1 Multiplexer*****/
/*****Each data can be M_bits*****/
module MUX(sel,din,dout);
parameter S=2;	//select
parameter M=4;	//M_bits data
input [S-1:0]sel;
input [M*2**S-1:0]din;
output reg [M-1:0]dout;
genvar i;
generate for(i=1;i<2**S;i=i+1)begin:MUX1
	always @(sel)
		if(sel==0) dout<=din[M-1:0];		
		else if(sel==i) dout<=din[M*i+M-1:M*i];
		else dout={M{1'bz}};
end endgenerate
endmodule
	