module divide(q, qbar, d, clk, reset);
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
  q <= d;
  qbar <= ~q;
  end

assign d <= qbar;
endmodule
