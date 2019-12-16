module ControlCircuit(clock, switch, iButton, enables, stateBCD, timer);
	input clock, switch, iButton;
	output [0:3]enables;
	output [3:0]stateBCD;
	
	reg [1:0] state;//  remembering state.
	output timer;// get rid of it later(remeber it).
	
	initial
	begin
		state = 2'b00;
	end
	
	assign stateBCD = {2'b00, state};
	
	// Functions as decoder(How?)
	assign enables = {switch & (state == 2'b00),
							switch & (state == 2'b01),
							switch & (state == 2'b10),
							switch & (state == 2'b11)};
	
	// 10s clock
	ControlerClock clk (timer, clock & switch, iButton);
	
	always @ (posedge timer or negedge iButton) //ten seconds
	begin
		if(!iButton)
		begin
			if(switch) state <= 2'b11;
		end
		else
		begin 
			casex (state)
				2'b0x: state <= state + 2'b01;
				2'b1x: state <= 2'b00;
			endcase
		end
	end
	
	
endmodule


module ControlerClock (out, in, reset);
	input in, reset;
	output reg out;
	parameter freq = 500000000; //8;// // 500000 units = 1/100th sec
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
