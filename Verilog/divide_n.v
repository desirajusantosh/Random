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
output q';
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
assign d <= qbar;
endmodule


module divide4(qout, qbarout, clock, rst);
output qout;
output qbarout;
input clock;
input reset;

wire q, qbar1;

always@(posedge clk)
begin
dff1 div1(q, qbar1, clk1, reset1);
dff2 div2(qout, qbarout,  q, reset2);

endmodule
