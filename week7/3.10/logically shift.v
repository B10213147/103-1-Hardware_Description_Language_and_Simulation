module logically_shift(data,shift,out);
input [3:0] data;
input [1:0] shift;
output [3:0] out;
assign out=(shift===0)?data>>0:
		   (shift===1)?data>>1:
		   (shift===2)?data>>2:
		   (shift===3)?data>>3:4'bz;
		
endmodule
	
