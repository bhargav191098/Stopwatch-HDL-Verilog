module t_stop_watch;

wire[3:0]m2;
wire[2:0]m1;
wire [3:0] s2;
wire [2:0] s1;
reg clk, reset;

integer i;

stopwatch sw(clk,reset,h2,h1,m2,m1,s2,s1);


initial
begin
$monitor("%4d %b %b %b %b  %b %b  %d%d :: %d%d",$time,clk,reset,m1,m2,s1,s2,m1,m2,s1,s2);
end

initial
begin
for(i=0;i<3600;i=i+1)
begin
#1;
clk = 0;
clk=1;
end
end


initial
begin
$dumpfile("t_stop_watch.vcd");
$dumpvars(0,t_stop_watch);
end

endmodule