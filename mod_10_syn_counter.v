/*This circuit is taken from Book: Digital Fundamentals
  (Global edition(11), Thomas L. Floyed)
  Figure: 9-18, Page: 512
*/
module mod_10_syn_counter(q, clk, reset);
	input clk, reset;
	output [3:0] q;
	wire a,b,c,d,e;
	jk_flip_flop jk1(q[0],,1,1,reset,clk);
	assign a = ~q[3]&q[0];
	jk_flip_flop jk2(q[1],,a,a,reset,clk);
	assign b = q[0]&q[1];
	jk_flip_flop jk3(q[2],,b,b,reset,clk);
	assign c = b & q[2];
	assign d = q[0] & q[3];
	assign e = c | d;
	jk_flip_flop jk4(q[3],,e,e,reset,clk);
endmodule
