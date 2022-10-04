module sync_random_seq_counter(q, clear, clk);
    input clk, clear;
    output [3:0] q;
    wire a,b,c,d,e,f,g,h;
    assign a = (~q[1]&~q[2]&~q[3]) | (~q[1]&q[2]&q[3]) | (q[1]&q[2]&~q[3]);
    assign b = q[1]|q[2]|~q[3];
    jk_flip_flop jk1(q[0],,a,b,clear,clk);
    
    assign c = (~q[0]&q[2]&q[3]) | (q[0]&~q[2]&q[3]) | (q[0]&q[2]&~q[3]);
    assign d = q[0]|q[2]|~q[3];
    jk_flip_flop jk2(q[1],,c,d,clear,clk);
    
    assign e = (~q[0]&~q[1]&~q[3]) | (~q[0]&q[1]&q[3]) | (q[0]&q[1]&~q[3]);
    assign f = q[0]|q[1]|~q[3];
    jk_flip_flop jk3(q[2],,e,f,clear,clk);
    
    assign g = (q[0]&q[1]&~q[2]) | (~q[0]&q[1]&q[2]) | (q[0]&~q[1]&q[2]);
    assign h = q[0]|q[1]|~q[2];
    jk_flip_flop jk4(q[3],,g,h,clear,clk);
endmodule
