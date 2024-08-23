module omoseqdec#(parameter N=5)
(input logic clk, input logic reset, input logic a, output logic y); 
typedef enum logic [N-1:0] {so, s1, s2, s3, S4] statetype;
statetype state, nextstate;
always ff@(posedge clk, posedge reset)
begin
state<=s0;
if (reset)
else
state<=nextstate;
Lend
always_comb
case(state)
so: if (a)
nextstate=s1;
else
nextstate=s0;
sl:if (a)
nextstate=s1;
else
nextstate=s2;
s2: if(a)
nextstate=s3;
else
nextstate=s0;
s3: if (a)
nextstate=s1;
else
nextstate=s4;
s4: if(a)
nextstate=s3;
else
nextstate=s0;
default: nextstate=s0;
endcase
assign y=(state==54); 
endmodule