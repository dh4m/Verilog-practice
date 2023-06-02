module full_adder (S, A, B, Cout, Cin);

	input A, B, Cin;
	output S, Cout;

half_adder ha1 (.S(w0), .A(A), .B(B), .C(w1));
half_adder ha2 (.S(S), .A(w0), .B(Cin), .C(w2));
assign Cout = w1 | w2;

endmodule