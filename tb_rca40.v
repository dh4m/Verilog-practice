`timescale 1ns/100ps

module tb_rca_40b;

	reg clk, reset;
	reg [39:0] in_A, in_B, outexpected;
	reg Cin, Coutexpected;
	wire [39:0] out_S;
	wire Cout;

	reg [31:0] v_num, err_num;
	reg [97:0] testvectors[10000:0];

	rca_40b(.S(out_S), .A(in_A), .B(in_B), .Cout(Cout), .Cin(Cin));

	always
	begin
		clk = 1;
		#5;
		clk = 0;
		#5;
	end

	initial
	begin
		$readmemb("testv.tv", testvectors);
		v_num = 0;
		err_num = 0;
		reset = 1;
		#27;
		reset = 0;
	end

	always @(posedge clk) 
	begin
		#1;
		{in_A, in_B, Cin, outexpected, Coutexpected}
		= testvectors[v_num];	
	end

	always @(negedge clk)
	begin
		if (~reset)
		begin
			if (out_S !== outexpected or Cout !== Coutexpected)
			begin
				$display("Error!");
				$display("input: A = %b, B = %b, Cin = %b",
						in_A, in_B, Cin);
				$display("output: S = %b, Cout = %b",
						out_S, Cout);
				$display("(expected: S = %b, Cout = %b)",
						outexpected, Coutexpected);
				err_num = err_num + 1;
			end

			v_num = v_num + 1;
			if (testvectors[v_num] === 98'bx)
			begin
				$display("%d tests completed with %d errors",
						v_num, err_num);
				$finish
			end
		end
	end

endmodule