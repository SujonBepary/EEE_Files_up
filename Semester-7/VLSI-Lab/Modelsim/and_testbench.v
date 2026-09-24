`timescale 1ns/1ps

module and_testbench;

reg a, b;
wire y;

andgate2 DUT (.a(a), .b(b), .y(y));

initial
begin

    $monitor($time, " a = %b, b = %b, y = %b ", a, b, y);

    #0
    a = 0; b = 0;

    #5
    a = 0; b = 1;

    #5
    a = 1; b = 0;

    #5
    a = 1; b = 1;

    #5
    $finish;

end

endmodule