module dff(q, qbar, clk, reset);
output q;
output q';
input d;
input clk;
input reset;

wire d;
reg q;
reg qbar;

always@(posedge clk)
begin
  if (reset)
    q = 0;
    qbar = ~q;
  end
  else
  q = d;
  qbar = ~q;
  end
end
assign d = qbar;
endmodule


module divide2(q, qbar, d, clk, reset);
output q;
output qbar;
input d;
input clk;
input reset;

reg q;
reg qbar;

always@(posedge clk)
begin
  if (reset)
    q = 0;
    qbar = ~q;
  else
  q = d;
  qbar = ~q;
  end
end
assign d = qbar;
endmodule


module divide4(qout, qbarout, clock, rst);
output qout;
output qbarout;
input clock;
input reset;

wire q, qbar1;

always@(posedge clk)
begin
dff div1(q, qbar1, clk1, reset1);
dff div2(qout, qbarout,  q, reset2);

endmodule


module dff_6(q, qbar, d, clk, reset);
output q;
output qbar;
input d;
input clk;
input reset;

reg q;
reg qbar;

always@(posedge clk)
begin
  if (reset)
    q = 0;
    qbar = ~q;
  else
  q = d;
  qbar = ~q;
  end
end
endmodule


module divide6(qout, qbarout, clock, rst);
output qout;
output qbarout;
input clock;
input reset;

wire q, qbar1, qbar2;
wire qout, qbarout;

always@(posedge clk)
begin
dff_6 dv1(qbarout, qbar1, clk, rst);
dff_6 dv2(qout, qbarout,  clk, rst);
dff_6 dv3(q6, qbar6, clk, rst);

endmodule
