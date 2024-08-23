
module nomoseqdec# (parameter N=5)
(input logic clk, input logic reset, input logic a, output logic y); 
typedef enum logic [N-1:0] {s0,s1,s2,s3,s4) statetype;
statetype state, nextstate;
always_ff@(posedge clk, posedge reset)
begin
if (reset)
state<=s0;
else
state<=nextstate;
end
always_comb
case(state)
s0: if (a)
nextstate=s1;
else
nextstate=s0;
s1: if(a)
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
nextstate=s1;
else
nextstate=s0;
default: nextstate=s0;
endcase
assign y=(state==s4); 
endmodule