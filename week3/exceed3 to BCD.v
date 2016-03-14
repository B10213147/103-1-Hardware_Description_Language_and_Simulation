module	exceed3_to_BCD (A,B,C,D,Qa,Qb,Qc,Qd);
input	A,B,C,D;
output	Qa,Qb,Qc,Qd;
wire	B_,C_,D_,a1,a2,b1,b2,b3,c1,c2;
	not (B_,B);
	not (C_,C);
	not (D_,D);
	and a_1 (a1,A,C,D);
	and a_2 (a2,A,B);
	or a_3 (Qa,a1,a2);
	and b_1 (b1,B,C,D);
	and b_2 (b2,B_,D_);
	and b_3 (b3,B_,C_);
	or b_4 (Qb,b1,b2,b3);
	and c_1 (c1,C_,D);
	and c_2 (c2,C,D_);
	or c_3 (Qc,c1,c2);
	buf d_1 (Qd,D_);
endmodule