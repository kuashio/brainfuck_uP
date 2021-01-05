`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Closure Labs
// Engineer: Eduardo Corpeño
// 
// Create Date:    07:13:42 09/27/2012 
// Design Name: 
// Module Name:    testing_brainfuck_uP
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision:       
// Revision 0.01 - File Created for Basys2 and Nexys2
// Revision 0.02 - Adapted for Lattice in 2020
//
//////////////////////////////////////////////////////////////////////////////////
module testing_brainfuck_uP(
    );

  wire [7:0] DataBus;
  wire [15:0] DataAddressBus;
  wire [7:0] InstructionBus;
  wire [17:0] InstructionAddressBus;
  
  wire oe,we;
  reg  ResetBTN, CLRBTN;
  
  reg [7:0] inputPort;
  reg clk;
  wire portRead, portWrite;
  wire [7:0] outputPort;
  
  memory RAM(
		.DataBus(DataBus),
    .AddressBus(DataAddressBus),
    .OE(oe),
    .WE(we),
	  .Reset(1'b1),
    .CLR(CLRBTN)
	);
		
  memory ROM(
		.DataBus(InstructionBus),
    .AddressBus(InstructionAddressBus[15:0]),
    .OE(1'b0),
    .WE(1'b1),
	  .Reset(ResetBTN),
    .CLR(1'b1)
	);
  
	brainfuck_uP BF(
	//ports
		.inPort(inputPort),
		.portRD(portRead),
		.incoming(1'b1),
		
		.portWR(portWrite),
		.outPort(outputPort),
		
	//cpu		
		.bfup_clk(clk),
		.reset(ResetBTN),
		
	//D mem
		.p(DataAddressBus),
		.pData(DataBus),
		.RD(oe),
		.WR(we),
		
	//I mem
		.pc_pins(InstructionAddressBus),
		.instruction(InstructionBus)	
	);
  
  always #20 clk = ~clk; // Clock changes every 2ns

  initial
		begin              
            ResetBTN = 1;
            CLRBTN = 1;
					  clk=1;
            inputPort=4;
				 #100     
                 CLRBTN = 0;
                 ResetBTN = 0;
				 #100    
                 ResetBTN = 1;
                 CLRBTN = 1;
				 #100
                 ResetBTN = 1;
		end
		initial
		#10000000 $finish;
endmodule
