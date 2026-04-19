module one_hot(
    input w,
    input clk,
    input rst,
    output z,
    output Astate, Bstate, Cstate, Dstate, Estate
);
    wire Anext, Bnext, Cnext, Dnext, Enext;

    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .rst(rst),
        .Q(Astate)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .rst(rst),
        .Q(Bstate)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .rst(rst),
        .Q(Cstate)
    );
    
    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .rst(rst),
        .Q(Dstate)
    );
    
    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .rst(rst),
        .Q(Estate)
    );

    assign z = Cstate | Estate;

    assign Anext = rst;
    assign Bnext = (~w & Astate) | (~w & Dstate) | (~w & Estate);
    assign Cnext = (~w & Bstate) | (~w & Cstate);
    assign Dnext = (w & Astate) | (w & Bstate) | (w & Cstate);
    assign Enext = (w & Dstate) | (w & Estate);
    
endmodule