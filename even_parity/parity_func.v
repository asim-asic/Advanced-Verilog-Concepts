module parity_function(
	output reg [4:0] Z
);
	reg [3:0] in_parity;

	// Parity Function Block
	function [4:0] parity;
		input [3:0] A;
		reg temp_parity;

		begin
			temp_parity = A[0] ^ A[1] ^ A[2] ^ A[3];
			parity = {A, temp_parity};
		end
	endfunction

	initial
	begin
		in_parity = 4'b0101;
		//in_parity = 4'b1110;
		Z = parity(in_parity);
		$display("INPUT = %4b, OUTPUT = %5b",in_parity, Z);
	end
endmodule
