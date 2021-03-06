/*****Parameterized N-to-M binary_decoder*****/
module binary_decoder(in,out);
parameter N=2;
parameter M=2**N;
input [N-1:0]in;
output reg [M-1:0]out;
genvar i;
generate for(i=1;i<M;i=i+1)begin:decoder
	always @(in)begin
		out={{(M-1){1'b0}},{1'b1}};
		if(in==0) out<=out; 
		else if(in==i) out<=out<<i;
		else out={M{1'bz}};end
end endgenerate	
endmodule