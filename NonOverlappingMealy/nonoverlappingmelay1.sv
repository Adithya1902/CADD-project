
module nonoverlappingmelay1 (input logic clk, input logic reset, input logic a, output logic y);
typedef enum logic [3:0] {50,51,52,53] statetype;
statetype state, nextstate;
always_ff@ (posedge clk, posedge reset)
begin if(reset)
state <= s0;
else state <= nextstate;
end
always_comb 
case(state)
s0: if(a) nextstate = s1; 
else nextstate = s0; 
s1: if(a) nextstate = s1; 
else nextstate = s2; 
s2: if(a) nextstate = s3; 
else nextstate=s2;
s3: if(a) nextstate = s0; 
else nextstate = s0;
endcase
assign y=(a & state == S3); 
endmodule