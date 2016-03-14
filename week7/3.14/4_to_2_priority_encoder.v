module priority_encoder4_to_2(in,out);
input [3:0] in;
output [1:0] out;
wire valid;
	assign valid = |in;
	assign out = valid?(in[3]? 2'b11 :
				 in[2]? 2'b10 :
				 in[1]? 2'b01 :
				 in[0]? 2'b00 :2'bz ): 2'bz;
endmodule
	
