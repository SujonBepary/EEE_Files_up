
module mux2to1(
    input wire s0, 
    input wire s1, 
    input wire sel, 
    output reg y);

    always @(*) begin
        if (sel) 
            y = s1;
        else
            y = s0;
    end
endmodule