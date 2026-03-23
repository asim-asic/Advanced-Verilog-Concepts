module tri_buf(
	input a, b, c, d,
	output f
);
	bufif1 buf_one (f, a, b);	// output first is followed by inputs, control last
	bufif1 buf_two (f, c, d);
endmodule
