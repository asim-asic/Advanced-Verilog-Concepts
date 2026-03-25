module tb_shift_reg();
	parameter N = 4;

	reg [N:1] D;
	reg clk;
	reg load;
	reg shift_enable;
	reg shift_in;
	wire [N:1] Qout;
	
	shift_reg#(N, 1) uut(D, clk, load, shift_enable, shift_in, Qout);

	always #5 clk = ~clk;

	initial
	begin
		$display("Time |\tD\tLOAD\tSHIFT_ENABLE\tQout");
		$display("--------------------------------------------");
		$monitor("%4t |\t%4b\t%b\t\t%b\t%b",$time, D, load, shift_enable, Qout);
	end

	initial
	begin
		clk = 1'b1;
		D = 4'b1011;
		load = 1;
		shift_enable = 0;
		shift_in = 0;
		#10

		// disable load
		load = 0;

		// shift operations
		shift_enable = 1;
		shift_in = 0;
		#10;

		shift_in = 1;
		#10

		shift_in = 0;
		#10

		shift_in = 1;
		#10

		shift_enable = 0; 	// stop shifting
		#10 $finish();
	end
endmodule
			
