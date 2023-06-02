module rca_40b (S, A, B, Cout, Cin);

	input [39:0] A, B;
	input Cin;
	output [39:0] S;
	output Cout;

full_adder fa0(.S(S[0]), .A(A[0]), .B(B[0]), .Cout(c0), .Cin(Cin));
full_adder fa1(.S(S[1]), .A(A[1]), .B(B[1]), .Cout(c1), .Cin(c0));
full_adder fa2(.S(S[2]), .A(A[2]), .B(B[2]), .Cout(c2), .Cin(c1));
full_adder fa3(.S(S[3]), .A(A[3]), .B(B[3]), .Cout(c3), .Cin(c2));
full_adder fa4(.S(S[4]), .A(A[4]), .B(B[4]), .Cout(c4), .Cin(c3));
full_adder fa5(.S(S[5]), .A(A[5]), .B(B[5]), .Cout(c5), .Cin(c4));
full_adder fa6(.S(S[6]), .A(A[6]), .B(B[6]), .Cout(c6), .Cin(c5));
full_adder fa7(.S(S[7]), .A(A[7]), .B(B[7]), .Cout(c7), .Cin(c6));
full_adder fa8(.S(S[8]), .A(A[8]), .B(B[8]), .Cout(c8), .Cin(c7));
full_adder fa9(.S(S[9]), .A(A[9]), .B(B[9]), .Cout(c9), .Cin(c8));
full_adder fa10(.S(S[10]), .A(A[10]), .B(B[10]), .Cout(c10), .Cin(c9));
full_adder fa11(.S(S[11]), .A(A[11]), .B(B[11]), .Cout(c11), .Cin(c10));
full_adder fa12(.S(S[12]), .A(A[12]), .B(B[12]), .Cout(c12), .Cin(c11));
full_adder fa13(.S(S[13]), .A(A[13]), .B(B[13]), .Cout(c13), .Cin(c12));
full_adder fa14(.S(S[14]), .A(A[14]), .B(B[14]), .Cout(c14), .Cin(c13));
full_adder fa15(.S(S[15]), .A(A[15]), .B(B[15]), .Cout(c15), .Cin(c14));
full_adder fa16(.S(S[16]), .A(A[16]), .B(B[16]), .Cout(c16), .Cin(c15));
full_adder fa17(.S(S[17]), .A(A[17]), .B(B[17]), .Cout(c17), .Cin(c16));
full_adder fa18(.S(S[18]), .A(A[18]), .B(B[18]), .Cout(c18), .Cin(c17));
full_adder fa19(.S(S[19]), .A(A[19]), .B(B[19]), .Cout(c19), .Cin(c18));
full_adder fa20(.S(S[20]), .A(A[20]), .B(B[20]), .Cout(c20), .Cin(c19));
full_adder fa21(.S(S[21]), .A(A[21]), .B(B[21]), .Cout(c21), .Cin(c20));
full_adder fa22(.S(S[22]), .A(A[22]), .B(B[22]), .Cout(c22), .Cin(c21));
full_adder fa23(.S(S[23]), .A(A[23]), .B(B[23]), .Cout(c23), .Cin(c22));
full_adder fa24(.S(S[24]), .A(A[24]), .B(B[24]), .Cout(c24), .Cin(c23));
full_adder fa25(.S(S[25]), .A(A[25]), .B(B[25]), .Cout(c25), .Cin(c24));
full_adder fa26(.S(S[26]), .A(A[26]), .B(B[26]), .Cout(c26), .Cin(c25));
full_adder fa27(.S(S[27]), .A(A[27]), .B(B[27]), .Cout(c27), .Cin(c26));
full_adder fa28(.S(S[28]), .A(A[28]), .B(B[28]), .Cout(c28), .Cin(c27));
full_adder fa29(.S(S[29]), .A(A[29]), .B(B[29]), .Cout(c29), .Cin(c28));
full_adder fa30(.S(S[30]), .A(A[30]), .B(B[30]), .Cout(c30), .Cin(c29));
full_adder fa31(.S(S[31]), .A(A[31]), .B(B[31]), .Cout(c31), .Cin(c30));
full_adder fa32(.S(S[32]), .A(A[32]), .B(B[32]), .Cout(c32), .Cin(c31));
full_adder fa33(.S(S[33]), .A(A[33]), .B(B[33]), .Cout(c33), .Cin(c32));
full_adder fa34(.S(S[34]), .A(A[34]), .B(B[34]), .Cout(c34), .Cin(c33));
full_adder fa35(.S(S[35]), .A(A[35]), .B(B[35]), .Cout(c35), .Cin(c34));
full_adder fa36(.S(S[36]), .A(A[36]), .B(B[36]), .Cout(c36), .Cin(c35));
full_adder fa37(.S(S[37]), .A(A[37]), .B(B[37]), .Cout(c37), .Cin(c36));
full_adder fa38(.S(S[38]), .A(A[38]), .B(B[38]), .Cout(c38), .Cin(c37));
full_adder fa39(.S(S[39]), .A(A[39]), .B(B[39]), .Cout(Cout), .Cin(c38));

endmodule