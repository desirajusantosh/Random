module memory(
  input logic clk,
  input logic write,
  input logic [3:0] address,
  input logic [7:0] data_in,
  input logic [7:0] data_out
);

logic [7:0] mem [15:0];

always_ff(posedge clk)
begin
  if(write)
    mem[address] <= data_in;
  data_out <= mem[address];
  end
endmodule
