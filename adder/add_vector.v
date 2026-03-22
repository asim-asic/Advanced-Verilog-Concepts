task add_vector(
	input [3:0] Add1,
	input [3:0] Add2,
	input Cin,
	output [3:0] sum,
	output Cout
);

	reg C;
	integer i;

	begin
		C = Cin;
		for(i = 0; i < 4; i = i + 1)
		begin
			sum[i] = Add1[i] ^ Add2[i] ^ C;
			C = (Add1[i] & Add2[i]) | (Add1[i] & C) | (Add2[i] & C);
		end
		Cout = C;
	end
endtask
