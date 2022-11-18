module mod_10_asyn_counter(q, clear, clk);
    input clear, clk;
    output [3:0] q;
    wire a;
    nand(a, q[1], q[3]);
    jk_flip_flop jk0(q[0],,1,1,(clear && a), clk);
    jk_flip_flop jk1(q[1],,1,1,(clear && a), q[0]);
    jk_flip_flop jk2(q[2],,1,1,(clear && a), q[1]);
    jk_flip_flop jk3(q[3],,1,1,(clear && a), q[2]);
endmodule

module jk_flip_flop(q, q_bar, j, k, clear, clk);
	input j, k, clear, clk;
	output q, q_bar;
	wire a, b, c, d, y, y_bar, c_bar;
	nand(a, q_bar, j, clk, clear);
	nand(b, k, clk, q);
	nand(c, a, d);
	nand(d, c, clear, b);
	not(c_bar, clk);
	nand(y, c, c_bar);
	nand(y_bar, d, c_bar);
	nand(q, y, q_bar);
	nand(q_bar, q, clear, y_bar);
endmodule
