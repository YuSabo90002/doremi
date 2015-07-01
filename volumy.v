module Osc(
	input [2:0] BTN,
	input CLK,
	output SPKR
	);
	reg [15:0] cnt;
	reg []

	always @(posedge CLK) begin
		if(cnt=16'd45801)
			cnt <= 16'd0;
		else
			cnt <= cnt+1;

		case(BTN)
			3'd0:
	end