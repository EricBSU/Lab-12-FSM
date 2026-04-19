module dff(
    input Default,
    input D,
    input clk,
    input rst,
    output reg Q
);

    initial begin
        Q <= Default;
    end

    always @(posedge clk, posedge rst) begin
        if (rst)
            Q <= Default;
        else
            Q <= D;
    end

endmodule