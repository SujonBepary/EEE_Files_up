module fsm_n_21(clk, resetn, w, z);
 input clk, resetn, w;
output reg z;

reg [2:1] y,Y;

parameter [2:1] A=2'b00, B=2'b01, C=2'b10;

always@(w or y)
begin	//NSOL
	case(y)
	A: if(w) Y=B;
		else  Y=A;
	B: if(w) Y=C;
		else  Y=A;
	C: if(w) Y=C;
		else  Y=A;
	default: Y=2'bxx;
endcase
if(y==C) z=1;
else     z=0;
end
always@(negedge resetn or posedge clk)
	if(~resetn) y<=A;
	else y<=Y;
endmodule