module Dual7SegMemoryExample(BCD, SEL, CLKn, SevenSegA, SevenSegB);

input [3:0]BCD;
input CLKn;
input SEL;
output [0:6]SevenSegA,SevenSegB;
wire clkA, clkB;

	demux21 myDemux (~CLKn, SEL, clkA, clkB); // invert clock in (it's a pushbutton) and route to wire
	BCDto7seg segA (clkA, BCD, SevenSegA), // invert segment output (7segs are negative logic)
				 segB (clkB, BCD, SevenSegB);
	
endmodule

// ******************************************************************************

module demux21(y, SEL, A, B);

input y, SEL;
output A, B;

assign 	A = (SEL ? y : 1'b0), 
			B = (~SEL ? y : 1'b0);

endmodule

// ******************************************************************************

module BCDto7seg (CLK, DATA, SEGMENT);

input CLK;
input [3:0]DATA;
output [0:6]SEGMENT;
reg [0:6]SEGMENT;  // implies data storage (FFs) on these lines that maintain until reassigned

// all segment outputs are bitwise inverted (~) because DE-1 7-segment displays are negative logic

// initially, display is blank
initial
	SEGMENT = ~7'b0000000;

// on the rising edge of the CLK pulse, reconfigure as directed	
always @ (posedge CLK)
begin
	case (DATA)
		4'b0000: SEGMENT = ~7'b1111110;
		4'b0001: SEGMENT = ~7'b0110000;
		4'b0010: SEGMENT = ~7'b1101101;
		4'b0011: SEGMENT = ~7'b1111001;
		4'b0100: SEGMENT = ~7'b0110011;
		4'b0101: SEGMENT = ~7'b1011011;
		4'b0110: SEGMENT = ~7'b1011111;
		4'b0111: SEGMENT = ~7'b1110000;
		4'b1000: SEGMENT = ~7'b1111111;
		4'b1001: SEGMENT = ~7'b1111011;
		default: SEGMENT = ~7'b0000000;
		
	endcase
end

endmodule
