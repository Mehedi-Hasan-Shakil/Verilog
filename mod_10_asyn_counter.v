/*This circuit is taken from Book: Digital Design
  (Global edition(6), M. Morris Mano)
  Figure: 6.10, Page: 358
*/
module mod_10_counter(q, clk, reset);
	input clk, reset;
	output [3:0] q;
	jk_flip_flop jk1(q[0],,1,1,reset,clk);
	jk_flip_flop jk2(q[1],,~q[3],1,reset,q[0]);
	jk_flip_flop jk3(q[2],,1,1,reset,q[1]);
	jk_flip_flop jk4(q[3],,(q[1]&q[2]),1,reset,q[0]);
endmodule
