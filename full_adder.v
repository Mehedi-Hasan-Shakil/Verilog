module full_adder(s, cout, a, b, cin);
    	input a, b, cin;
    	output s, cout;
    	wire p, q, r;
    	half_adder ha1(p, q, a, b);
	half_adder ha2(s, r, p, cin);
	or(cout, q, r);
endmodule
