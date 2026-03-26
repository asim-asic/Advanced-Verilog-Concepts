module tb_selective_and();

	reg a, b;
	wire f;

	selective_and uut(.f(f), .a(a), .b(b));

	initial
	begin
		$display("Time |\ta\tb |\tf");
		$display("------------------------------------");
		$monitor("%0t |\t%b\t%b |\t%b",$time, a, b, f);
		
		// Test cases
		    a = 0; b = 0; 
		#10 a = 0; b = 1;
		#10 a = 1; b = 0;
		#10 a = 1; b = 1;
		#10 $finish();
	end
endmodule
