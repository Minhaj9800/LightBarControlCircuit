module LightPattern0(clock,enable,greenLight, redLight);
	input clock, enable;
	output reg [0:7] greenLight, redLight;
	reg reset;
	wire timer;
	
	reg pattern; // remeber the flashing pattern.
	
	initial
	begin 
		pattern = 1'b0;
		greenLight = 8'b11111111;
		redLight = 8'b00000000;
	end
	
	PatternClock0 clk (timer, clock & enable, 1'b1);//~enable | reset
	
	
	always @ (posedge timer or negedge enable) //ten seconds
	begin
		if(!enable)
		begin
			pattern <= 1'b0;
			greenLight <= 8'b11111111;
			redLight <= 8'b00000000;
			reset <= 1'b1;
		end
		else
		begin
			pattern <= ~pattern;
			greenLight <= ~greenLight;
			redLight <= ~redLight;
			reset <= 1'b0;
		end
	end
	
endmodule 


module PatternClock0 (out, in, reset);
	input in, reset;
	output reg out;
	parameter freq = 25000000;// 2;// // 500000 units = 1/100th sec
	integer count;
	
	initial
	begin
		count = 0;
		out = 1'b0;
	end
	
	always @ (posedge in or negedge reset)
	begin
		if (~reset)
		begin
			count = 0;
			out = 1'b0;
		end
		else
		begin
			count = count + 1;
			if (count == freq / 2)
			begin
				out = ~out;
				count = 0;
			end
		end
	end
endmodule 