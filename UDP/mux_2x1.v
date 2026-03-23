primitive mux_2x1(F, a, I0, I1);

	output F;
	input a, I0, I1;

	table
		//  a	I0  I1	:   F
		    0   1   ?	:   1  ;	// ? can equal to 0, 1 or x
		    0	0   ?   :   0  ;
		    1	?   1   :   1  ; 
		    1	?   0   :   0  ;
		    x	0   0   :   0  ;
		    x	1   1   :   1  ;
	endtable
endprimitive
