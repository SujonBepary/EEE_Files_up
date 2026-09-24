module fsm_tb;
reg clk, resetn, w;
wire z;
fsm_n_21 DUT (.clk(clk),.resetn(resetn), .w(w), .z(z));
initial begin
w=0;
clk=0;
forever #5 clk=~clk;
$monitor("%t w=%d, z=%d resetn=%d", $time, w, z, resetn);
end
initial begin
resetn=0;
#10 resetn=1;
#10 w=0;
#10 w=1;
#10 w=0;
#10 w=1;
#10 w=1;
#10 w=0;
#10 w=1;
#10 w=1;
#10 w=1;
#10 w=0;
#10 w=1;
#10 $finish;
end
endmodule
