`timescale 1ns/1ns

module majority(
    in1,
    in2,
    in3,
    in4,
    out
    );

  input [14:0] in1;
  input [14:0] in2;
  input [14:0] in3;
  input [14:0] in4;
  
  output [14:0] out;
  
  assign out = ((in1&in2)|(in1&in3)|(in1&in4)|(in2&in3)|(in2&in4)|(in3&in4));
  
endmodule
