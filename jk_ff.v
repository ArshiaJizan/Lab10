module jk_ff (
    input clk,
    input j,
    input k,
    output q,
    output Qnot
);
    wire d_in;

    assign d_in = (j & ~q) | (~k & q);

    d_ff dff_inst (
        .clk(clk),
        .d(d_in),
        .q(q),
        .Qnot(Qnot)
    );
endmodule