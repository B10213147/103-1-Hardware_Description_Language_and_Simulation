module majority_circuit(in,flag);
parameter n=8;
input[n-1:0]in;
output reg flag;
integer sum,m;
always@(in)begin
	m=n; sum=0;flag=0;
	while(m>0)begin
		sum=in[m-1]+sum;
		m=m-1;end
	if(sum>(n/2)) flag=1;
	end
endmodule