module tristate_buff(
	input a, b, c, d,
        output f
);
	assign f = b ? a : 1'bz;
	assign f = d ? c : 1'bz;
endmodule

