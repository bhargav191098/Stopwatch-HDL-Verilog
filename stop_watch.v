module stop_watch(clk, reset,m2,m1,s2,s1);

output[3:0] m2;
output[2:0] m1;
output[3:0] s2;
output[2:0] s1;

reg [3:0] m2;
reg[2:0] m1;
reg [3:0] s2;
reg[2:0] s1;

input clk ;
wire clk ;
input reset ;
wire reset ; 

initial m2=9;
initial m1=5;
initial s2 = 9;
initial s1 = 5;


always @ (posedge (clk)) begin
 if (reset)
begin
  m2 <=9;
  m1<=5;
  s2 <= 9;
  s1 <=5;
end
 else if (s2>0)
  s2 <= s2 - 1;
 else
begin
  s2 <= 9;
 if(s1 >0)
s1 <= s1-1;
else
begin
s1 <=5;
if(m2>0)
m2 <= m2-1;
else
begin
m2<=9;
if(m1>0)
m1 <= m1-1;
else
begin
m1 <=5;
end
end
end
end
      
endmodule