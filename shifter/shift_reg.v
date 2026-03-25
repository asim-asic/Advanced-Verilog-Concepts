module shift_reg #(parameter N = 4,
		  parameter Left_shift = 1)(
		  input [N:1] D,
		  input clk,
		  input load,
		  input shift_enable,
		  input shift_in,
		  output [N:1] Qout
);
	reg [N:1] Q;
	wire [N:1] shifter;

	assign Qout = Q;

	generate
		if(Left_shift)
			assign shifter = {Q[N-1:1], shift_in};  // left shift register
     	  	else
             		assign shifter = {shift_in, Q[N:2]};    // right shift register
        endgenerate

	always @(posedge clk)
	begin
		if(load)
			Q <= D;
		else if(shift_enable)
			Q <= shifter;
		else
			Q <= 1'b0;

	end
endmodule




