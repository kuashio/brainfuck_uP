`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:01:49 11/21/2010 
// Design Name: 
// Module Name:    memory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module memory(
    inout [7:0] DataBus,
    input [15:0] AddressBus,
    input OE,
    input WE,
	  input Reset,
    input CLR
    );
  reg [7:0] Data[255:0];
  assign #5 DataBus=OE?8'bzzzz_zzzz:Data[AddressBus];	 
	 
  always @ (WE, Reset, CLR)
    begin
      if (Reset==0)
		  begin
          Data[0]="+";    
          Data[1]="+";   
          Data[2]=",";  
          Data[3]="[";  
          Data[4]=">"; 
          Data[5]="+";     
          Data[6]="+";     
          Data[7]="+";     
          Data[8]="+";     
          Data[9]="<";     
          Data[10]="-";     
          Data[11]="]";     
          Data[12]=">";     
          Data[13]=".";     
          Data[14]=" ";      
          Data[15]=".";     
          Data[16]=".";     
          Data[17]=".";     
          Data[18]=".";     
          Data[19]=".";     
          Data[20]=".";     
          Data[21]=".";     
          Data[22]=".";    
		  end
	   else
		  if(WE==0)
          Data[AddressBus]=DataBus;  
      else
        if(CLR==0)
          begin
            Data[0]=0;    
            Data[1]=0;   
            Data[2]=0;  
            Data[3]=0;  
            Data[4]=0;  
            Data[5]=0;     
            Data[6]=0;     
            Data[7]=0;     
            Data[8]=0;     
            Data[9]=0;     
            Data[10]=0;     
            Data[11]=0;     
            Data[12]=0;     
            Data[13]=0;     
            Data[14]=0;     
            Data[15]=0;   
          end
    end
endmodule
