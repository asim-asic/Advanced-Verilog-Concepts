module NAND2(a, b, c);

	parameter Trise = 3;
	parameter Tfall = 2;
	parameter load = 1;

	input a, b;
	output reg c;

	wire nand_value;

	assign nand_value = ~(a & b);

	always @(nand_value)
	begin
		if(nand_value == 1'b1)
			#(Trise + 3 * load) c = 1'b1;
		else
			#(Tfall + 3 * load) c = 1'b0;
	end
endmodule
