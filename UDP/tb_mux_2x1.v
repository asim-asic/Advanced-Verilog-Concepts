module tb_mux_2x1;
	
	reg a, I0, I1;
	wire F;

	// Instantiate UDP
	mux_2x1 uut (F, a, I0, I1);

	initial 
	begin
    		$display("a\tI0\tI1 |\tF");
    		$display("------------------------------");

    		$monitor("%b\t%b\t%b |\t%b", a, I0, I1, F);
		
		// Test cases
    		   a=0; I0=0; I1=0; 
		#1 a=0; I0=1; I1=0; 
		#1 a=1; I0=0; I1=1; 
		#1 a=1; I0=1; I1=0; 

    		// X condition test
    		#1 a=1'bx; I0=0; I1=1; 
		#1 $finish();
	end
endmodule
