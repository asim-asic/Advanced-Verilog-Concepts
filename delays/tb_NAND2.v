module tb_NAND2();
	reg a, b;
	wire c;

	NAND2 uut(a, b, c);

	initial
	begin
		$display("Time\tA\tB |\tC");
	        $monitor("%0t\t%0b\t%0b |\t%0b",$realtime, a, b, c);
		
		// Test cases
		    a = 0; b = 0;
		#10 a = 0; b = 1;
		#10 a = 1; b = 0;
		#10 a = 1; b = 1;
		#20 $finish();
	end
endmodule
