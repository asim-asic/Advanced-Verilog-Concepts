module selective_and(f, a, b);
	
	output f;
	input a, b;

	`ifdef behavioral
		assign f = a & b;
	`else
		and a1 (f, a, b);
	`endif
endmodule	
