`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Closure Labs
// Engineer: Eduardo Corpeño
// 
// Create Date:    13:09:24 09/09/2012 
// Design Name:    Brainfuck-uP
// Module Name:    brainfuckup 
// Project Name:   Brainfuck-uP
// Target Devices: MachXO   LCMXO256C-3T100C and TinyFPGA  LCMXO2-1200HC-4SG32C
//                          LCMXO2-640HC-4TG100C? 
// Tool versions:  Lattice Diamond 3.11, LSE
// Description:    A brainfuck-native CPU
//
// Dependencies:   None
//
// Revision:       
// Revision 0.01 - File Created for Basys2 and Nexys2
// Revision 0.02 - Adapted for Lattice in 2020
//
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

`define STATE_0 7'b0000001
`define STATE_1 7'b0000010
`define STATE_2 7'b0000100
`define STATE_3 7'b0001000
`define STATE_4 7'b0010000
`define STATE_5 7'b0100000
`define BOOT_UP 7'b1000000
`define PORT_DELAY 16'd20
//#(parameter PORT_DELAY = 8'd96) 

module brainfuck_uP(
//ports
	input [7:0] inPort,
	output reg portRD,
	input incoming,
	
	output reg portWR,
	output reg [7:0] outPort,
	
//cpu		
	input bfup_clk,
	input reset,
	
//D mem
	output reg [16:0] p,
	inout [7:0] pData,
	output reg RD,
	output reg WR,
	
//I mem
	output [17:0] pc_pins,
	input [7:0] instruction
);

	//book keeping
    reg [17:0] brackets;   // bracket nesting counter
    reg [7:0] acc;         // accumulator for + and -
    reg [6:0] state;       // state register for state machine 
    reg FWD;               // direction flag for bracket seeking
    reg [7:0] delay;       // power-on delay
    reg drive_bus;         // drive the memory data bus (Almost the same as RD, but safer)
                           // Safety Means: 
				           //   This line drives the bus one cycle after RD goes high
                           //    and it releases the bus one cycle before RD goes low.											
	
	reg [17:0] pc;        // the Program Counter
	reg [15:0] port_cnt;  // Delay to slow down input (,) and output (.) instructions
	
	//output setting of inout port
	assign pData = (drive_bus) ? acc : 8'bzzzz_zzzz;
	
    //during reset, ROM is released
	assign pc_pins = (reset) ? pc : 18'bzz_zzzz_zzzz_zzzz_zzzz;
	

  // behavior ahead
	always @(posedge(bfup_clk)) begin
		if (reset == 0) begin
			pc       <= 18'b00_0000_0000_0000_0000;
			p        <= 16'b0000_0000_0000_0000;
			brackets <= 18'b00_0000_0000_0000_0000;
			acc <= 8'b0000_0000;
			RD <= 1;
			drive_bus <= 1;
			WR <= 1;
			portRD <= 1;
			portWR <= 1;
			FWD <= 1;
			outPort <= 8'b0000_0000;
			delay <= 20;
			port_cnt <= 16'b0000_0000_0000_0000;
			state <= `BOOT_UP;
		end
		else begin
			case(state)
				`BOOT_UP: begin        // RAM must be initialized!
					if (delay > 0)
						delay <= delay - 8'd1;
					else begin
						if(WR == 1) begin
							WR <= 0;
						end
						else begin
							WR <= 1;
							if(p == 16'b1111_1111_1111_1111) begin
								p   <= 16'b0000_0000_0000_0000;
								acc <= 8'b0000_0000;
								RD <= 0;
								drive_bus <= 0;
								state <= `STATE_0;
							end
							else
								p <= p + 16'd1;
						end
					end
				end
					
				`STATE_0: begin        // +-,.<>[]
					//RD<=0;
					case(instruction)
						"+": begin
								acc <= pData + 8'd1;
								RD <= 1;
								state <=`STATE_1;
							end
						"-": begin
								acc <= pData - 8'd1;
								RD <= 1;
								state <= `STATE_1;
							end
						",": begin               
							  if (incoming==1) begin  // Wait for incoming data bit
									acc <= inPort;
									RD <= 1;
									state <= `STATE_1;    //next: falling edge on portRD
								end
							end
						".": begin
								outPort <= pData;
								state <= `STATE_1;    //next: falling edge on portWR
							end
						">": begin
								p  <= p  + 8'd1;
								pc <= pc + 8'd1;
							end
						"<": begin
								p  <= p  - 8'd1;
								pc <= pc + 8'd1;
							end
						"[": begin
								if (pData==0) begin
									FWD <= 1;
									brackets <= 1;
									state <= `STATE_5;
								end
								pc <= pc + 8'd1;
							end
						"]": begin
								if (pData==0) begin
									pc <= pc + 8'd1;
								end
								else begin
										FWD <= 0;
										brackets <= 1;
										pc <= pc - 8'd1;
										state <= `STATE_5;
									end
							end
						default: begin      // any ASCII character other than +-,.<>[]
								pc <= pc + 8'd1;
							end
					endcase
				end
									
				`STATE_1: begin           // +-,.
					case(instruction)
						",": begin
								if(port_cnt < `PORT_DELAY)
									port_cnt <= port_cnt + 16'd1;
								else begin
									port_cnt <= 16'b0000_0000_0000_0000;
									drive_bus <= 1;
									portRD <= 0;
									state <= `STATE_2;    //next: rising edge on portRD
								end
							end
						".": begin
								if(port_cnt < `PORT_DELAY)
									port_cnt <= port_cnt + 16'd1;
								else begin
									port_cnt <= 16'b0000_0000_0000_0000;
									portWR <= 0;
									state <= `STATE_2;    //next: rising edge on portWR
								end
							end
						default: begin   // +-
								drive_bus <= 1;
								state <= `STATE_2;
							end    
					endcase
				end
					
				`STATE_2: begin               // Output Acc  +-,.<>
					case(instruction)
						",": begin
								if(port_cnt < `PORT_DELAY)
									port_cnt <= port_cnt + 16'd1;
								else begin
									port_cnt <= 16'b0000_0000_0000_0000;
									portRD <= 1;
									WR <= 0;
									state <= `STATE_3;    //next: state 3
								end
							end
						".": begin
								if(port_cnt < `PORT_DELAY)
									port_cnt <= port_cnt + 16'd1;
								else begin
									port_cnt <= 16'b0000_0000_0000_0000;
									portWR <= 1;
									pc <= pc + 8'd1;
									state <= `STATE_0;    //next: state 0
								end	
							end
						default: begin    // +-
								WR <= 0;
								state <= `STATE_3;
							end
					endcase
				end
					
				`STATE_3: begin  // +-,
					WR <= 1;
					drive_bus <= 0;
					state <= `STATE_4;
				end

				`STATE_4: begin // +-,
					RD <= 0;
					pc <= pc + 8'd1;
					state <= `STATE_0;
				end 
					
				`STATE_5: begin               // Bracket Seek
					case(instruction)
						"[": begin
								if(FWD == 1) begin
									brackets <= brackets + 8'd1;
									pc <= pc + 8'd1;
								end
								else begin
									if (brackets == 1) begin
										pc <= pc + 8'd1;
										brackets <= 0;
										state <= `STATE_0;
									end
									else begin
										brackets <= brackets - 8'd1;
										pc <= pc - 8'd1;
									end
								end
							end
						"]": begin
								if(FWD == 1)
									if(brackets == 1) begin
										brackets <= 0;
										pc <= pc + 8'd1;
										state <= `STATE_0;
									end
									else begin
										brackets <= brackets - 8'd1;
										pc <= pc + 8'd1;
									end
								else begin
										brackets <= brackets + 8'd1;
										pc <= pc - 8'd1;
									end
							end
						default: begin    // counting brackets, found something else
								if(FWD == 1)
									pc <= pc + 8'd1;
								else
									pc <= pc - 8'd1;
							end
					endcase
				end
			endcase
		end
	end
endmodule
