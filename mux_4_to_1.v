module mux_4_to_1(out, i0, i1, i2, i3, s1, s0);
    output out;
    input i0, i1, i2, i3, s1, s0;
    wire s1_bar, s0_bar, y0, y1, y2, y3;
    
    not(s1_bar, s1);
    not(s0_bar, s0);
    
    and(y0, i0, s1_bar, s0_bar);
    and(y1, i1, s1_bar, s0);
    and(y2, i2, s1, s0_bar);
    and(y3, i3, s1, s0);
    
    or(out, y0, y1, y2, y3);
endmodule
