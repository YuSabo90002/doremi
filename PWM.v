module Osc(
  input CLK,
  input [2:0] BTN,
  output SPKR
  );
  reg [15:0] cnt;
  reg bin

  always @(posedge CLK) begin

    if(cnt==16'd45801)
      cnt <= 16'd0;
    else
      cnt <= cnt+1;

    if(BTN)
      bin<=0;
    else
      bin<=1;
  end
  assign SPKR =bin&(cnt < 16'd45801/2 );
endmodule
