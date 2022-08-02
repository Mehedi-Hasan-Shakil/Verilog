module jk_flip_flop(q, q_bar, j, k, clear, clk);
	input j, k, clear, clk;
	output q, q_bar;
	wire a, b, c, d, e, f;
	nand(a, q_bar, j, clk, clear);
	nand(b, k, clk, q);
	nand(c, a, d);
	nand(d, c, clear, b);
	not(clk_bar, clk);
	nand(e, c, clk_bar);
	nand(f, d, clk_bar);
	nand(q, e, q_bar);
	nand(q_bar, q, clear, f);
endmodule
