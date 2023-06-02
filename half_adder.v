module half_adder (S, A, B, C);

	input A, B;
	output S, C;

assign S = A ^ B;
assign C = A & B;

endmodule