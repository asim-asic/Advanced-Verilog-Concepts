module adder4(
	input [3:0] A, B,
	input Ci,
	output [3:0] S,
	output Co
);
	assign C[0] = Ci;

	genvar i;
	generate
		for (i = 0; i < 4; i = i + 1)
		begin
			full_adder FA(A[i], B[i], C[i], S[i], C[i+1]);
		end
	endgenerate

	assign Co = C[4];
endmodule
