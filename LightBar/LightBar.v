

// Project-LightBar 
// Group Member 1: Minhajur Rahman, Student ID - 302258.
// Group Member 2 : Zheyi Zheng, Student ID - 300648.


module LightBar (clock, switch, iButton, redLED, greenLED, segment7, timer) ;//debug);
	input clock, switch, iButton;
	output [0:7] redLED, greenLED;
	output [0:6] segment7;
	wire [0:3] enables;
	wire [3:0] stateBCD;
	output timer;//output debug, 	outputtimer;// look at debug later.
	wire [0:7] redP0, greenP0, redP1, greenP1, redP2, greenP2, redP3, greenP3;
	
	
	ControlCircuit controler (clock, switch, iButton, enables, stateBCD, timer);
	Decoder7Segment decoder (stateBCD, segment7);
	LightPattern0 p0 (clock,enables[0], greenP0, redP0);
	LightPattern1 p1 (clock,enables[1], greenP1, redP1);
	LightPattern2 p2 (clock,enables[2], greenP2, redP2);
	LightPattern3 p3 (clock,enables[3], greenP3, redP3);
	
	assign redLED = (enables[3]) ? redP3 : (enables[2]) ? redP2 : (enables[1]) ? redP1 : (enables[0]) ? redP0 : 8'b00000000;
	assign greenLED = (enables[3]) ? greenP3 : (enables[2]) ? greenP2 : (enables[1]) ? greenP1 : (enables[0]) ? greenP0 : 8'b00000000;
endmodule
