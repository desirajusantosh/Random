module block_nonblock();

reg a, b, c;
reg d, e, f;

always @(posedge clk)
initial
begin
a = #10 1'b1;    //assigned at time 10
b = #50 1'b0;    //assigned at time 60
c = #100 1'b1;   //assigned at time 160
end

inital
begin
d <= #5 1'b1;    //assigned at time 5
e <= #20 1'b0;   //assigned at time 20
f <= #50 1'b1;   //assigned at time 50
end

endmodule
