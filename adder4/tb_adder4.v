module tb_adder4();

	reg [3:0] A, B;
	reg Ci;
	wire [3:0] S;
	wire Co;

	integer i, j, k;

	adder4 uut(.A(A), .B(B), .Ci(Ci), .S(S), .Co(Co));

	initial
	begin
		$display("A\tB\tCi |\tS\tCo");
		$display("------------------------------------");
		$monitor("%d\t%d\t%d  |\t%d\t%d",A, B, Ci, S, Co);

		for(i = 0; i < 16; i = i + 1) begin
			for(j = 0; j < 16; j = j + 1) begin
				for(k = 0; k < 2; k = k + 1) begin
					A = i;
					B = j;
					Ci = k;
					
					#1;
				end
			end
		end
		$finish;
	end
endmodule

