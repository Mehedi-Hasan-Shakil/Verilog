module encoder(y0, y1, y2, x0, x1, x2, x3, x4, x5, x6, x7);
    input x0, x1, x2, x3, x4, x5, x6, x7;
    output y0, y1, y2;
    or(y0, x1, x3, x5, x7);
    or(y1, x2, x3, x6, x7);
    or(y2, x4, x5, x6, x7);
endmodule
