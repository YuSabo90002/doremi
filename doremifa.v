module Osc(
  input CLK,
  input [2:0] BTN,
  output SPKR
  );
  reg [15:0] cnt,sin;

  always @(posedge CLK) begin
    case(BTN)
      3'd0:sin=16'd45801;
      3'd1:sin=16'd40805;
      3'd2:sin=16'd36352;
      3'd3:sin=16'd34312;
      3'd4:sin=16'd30569;
      3'd5:sin=16'd27234;
      3'd6:sin=16'd24263;
      3'd7:sin=16'd22901;
    endcase

    if(cnt==sin)
      cnt <= 16'd0;
    else
      cnt <= cnt+1;
  end

  assign SPKR =(cnt < sin/2 );
endmodule
