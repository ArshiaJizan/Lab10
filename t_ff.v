module t_ff (
    input clk,
    input t,
    output q,
    output Qnot
);
    jk_ff jkff_inst (
        .clk(clk),
        .j(t),
        .k(t),
        .q(q),
        .Qnot(Qnot)
    );
endmodule