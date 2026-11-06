module top (
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    d_ff d_inst (
        .clk(btnC),
        .d(sw[0]),
        .q(led[0]),
        .Qnot(led[1])
    );

    jk_ff jk_inst (
        .clk(btnC),
        .j(sw[1]),
        .k(sw[2]),
        .q(led[2]),
        .Qnot(led[3])
    );

    t_ff t_inst (
        .clk(btnC),
        .t(sw[3]),
        .q(led[4]),
        .Qnot(led[5])
    );
endmodule
