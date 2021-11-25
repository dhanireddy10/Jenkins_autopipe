`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2021 10:47:40 AM
// Design Name: 
// Module Name: blinky
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module blinky(
    input wire clk,
    input wire reset,
    input wire direction,
    output reg [7:0] leds
    );
    
    
    always @(posedge clk) begin
    
        if (reset == 1) begin
            // reset leds to the default
            leds <= 1;
            
        end 
        else begin
            // move light from right to left
            if (direction == 1) begin
            
                leds <= { leds[6:0], leds[7] };
            end
            
            else begin
            // move lights from left to right
                leds <= { leds[0], leds[6:1] };
            end
        end
    end

endmodule
