
`timescale 1ns/1ps

module main_mod_tb;

    reg clk;
    reg reset;
    reg data_1;
    reg en_1;
    wire q;

    main_mod DUT (
        .data(data_1),
        .en(en_1),
        .clk(clk),
        .reset(reset),
        .q(q));

initial begin
        clk = 0;
        forever #5 clk = ~clk;
end

   
initial begin

       
        reset  = 0;
        en_1   = 0;
        data_1 = 0;
        #10;

        reset  = 1;
        en_1   = 0;
        data_1 = 1;
        #10;

        en_1   = 1;
        data_1 = 0;
        #10;

        data_1 = 1;
        #10;

        en_1   = 0;
        data_1 = 0;
        #10;

        data_1 = 1;
        #10;

        en_1   = 1;
        data_1 = 0;
        #10;

        data_1 = 1;
        #10;

        $finish;
end
endmodule