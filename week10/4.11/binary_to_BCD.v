module binary_to_BCD(in,out);
parameter N=9;
input [N-1:0]in;
output reg [11:0]out;
reg [3:0] i0,i1,i2;
integer a;
always@(in)begin
   a=in;out=0;
	i0=a%10;
	i1=(a%100)/10;
	i2=a/100;
	out=out<<i2<<i1<<i0;
	end
endmodule