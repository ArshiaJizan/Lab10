
module d_ff (
    input clk,
    input d,
    output reg q,
    output Qnot
);
    initial begin
        q = 1'b0;
    end

    always @(posedge clk) begin
        q <= d;
    end

    assign Qnot = ~q;
endmodule