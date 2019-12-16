 module LightPattern2(clock,enable,greenLight, redLight);
	input clock, enable;
	output reg [0:7] greenLight, redLight;
	wire timer;
	
	reg [1:0]pattern; // remeber the flashing pattern.
	
	initial
	begin 
		pattern = 2'b0;
		greenLight = 8'b10010101;
		redLight = 8'b10101001;
	end
	
	PatternClock2 clk (timer, clock & enable, 1'b1); //~enable
	
	
	always @ (posedge timer or negedge enable) //ten seconds
	begin
		if(!enable)
		begin
			pattern <= 2'b0;
			greenLight <= 8'b10010101;
			redLight <= 8'b10101001;
		end
		else
		begin
			pattern <= pattern+1;
			case (pattern)
				2'b00:
				begin
					greenLight <= 8'b10010101;
					redLight <= 8'b10101001;
				end
				2'b01:
				begin
					greenLight <= 8'b10101001;
					redLight <= 8'b10010101;
				end
				2'b10:
				begin
					greenLight <= 8'b10011001;
					redLight <= 8'b10011001;
				end
				2'b11:
				begin
					greenLight <= 8'b10100101;
					redLight <= 8'b10100101;
				end
			endcase
		end
	end
endmodule 


module PatternClock2 (out, in, reset);
	input in, reset;
	output reg out;
	parameter freq = 12500000; //2 // 500000 units = 1/100th sec
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
