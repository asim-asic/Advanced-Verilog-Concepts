module test_adder;

	reg [3:0] A, B;
	reg Cin;
	reg [3:0] Sum;
	reg Cout;
	
	// Include task file
        `include "add_vector.v"	
	integer i, j, k;

	initial 
	begin
    		$display("---- FULL COVERAGE TEST START ----");

    		for(i = 0; i < 16; i = i + 1) begin
        		for(j = 0; j < 16; j = j + 1) begin
            			for(k = 0; k < 2; k = k + 1) begin
                			A   = i;
                			B   = j;
                			Cin = k;	
				       	add_vector(A, B, Cin, Sum, Cout);
					#1;
                			$display("A=%d B=%d Cin=%b -> Sum=%d Cout=%b", A, B, Cin, Sum, Cout);
				end
    			end
    		end
    		$display("---- TEST COMPLETE ----");
   		$finish();
	end
endmodule
