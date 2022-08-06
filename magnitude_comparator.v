module magnitude_comparator(g, e, s, a, b);
    input [1:0] a, b;
    output g, e, s;
    or(g, (a[1] & ~b[1]), (a[1] & a[0] & ~b[0]), (a[0] & ~b[1] & ~b[0]));
    and(e, ~(a[1] ^ b[1]), ~(a[0] ^ b[0]));
    or(s, (~a[1] & b[1]), (~a[1] & ~a[0] & b[0]), (~a[0] & b[1] & b[0]));
endmodule
