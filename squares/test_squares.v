module test_squares();
	reg clk;
	reg [3:0] input_num;

	// Function to square a number
	function [7:0] squares;
		input [3:0] number;
		begin
			squares = number * number;
		end
	endfunction

	// Stimuai
	initial
	begin
		clk = 1'b0;
		#10 input_num = 4'b0000;
		#10 input_num = 4'b0001;
		#10 input_num = 4'b0010;
		#10 input_num = 4'b0011;
		#10 input_num = 4'b0100;
		#10 input_num = 4'b0101;
		#10 input_num = 4'b0110;
		#10 input_num = 4'b0111;
		#10 input_num = 4'b1000;
		#10 input_num = 4'b1001;
		#10 input_num = 4'b1010;
		#10 input_num = 4'b1011;
		#10 input_num = 4'b1100;
		#10 input_num = 4'b1101;
		#10 input_num = 4'b1110;
		#10 input_num = 4'b1111;
		#20 $finish();
	end
	
	// clock runing with 10 time unit clock window
	always #5 clk = ~clk;

	// Getting output at every positive edge of clock and displaying output
	always @(posedge clk)
	begin
		answer <= squares(input_num);
		$display("TIME = %0t\tINPUT = %0d\tOUTPUT = %0d",$time, input_num, squares(input_num));
	end
endmodule

	
