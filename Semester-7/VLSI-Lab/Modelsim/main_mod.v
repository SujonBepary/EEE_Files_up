
module main_mod(
    input wire data, 
    input wire en, 
    input wire clk, 
    input wire reset,
    output wire q);

    wire mux_out;

    mux2to1 mux1(
        .s0(q), 
        .s1(data), 
        .sel(en), 
        .y(mux_out));

    dff dff_1(
        .d(mux_out), 
        .reset(reset), 
        .clk(clk), 
        .q(q));

endmodule