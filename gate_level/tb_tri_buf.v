module tb_tri_buf();
	reg a, b, c, d;
	wire f;
	integer i;

	tri_buf uut(a, b, c, d, f);

	initial
	begin
		$display("a\tb\tc\td |\tf");
		$display("------------------------------------");

		// loop to cover all combinations -> 16 cases
		for(i = 0; i <= 15; i = i + 1)
		begin
			{a, b, c, d} = i;
			#1;
			$display("%b\t%b\t%b\t%b |\t%b",a, b, c, d, f);
		end
		$finish();
	end
endmodule	
