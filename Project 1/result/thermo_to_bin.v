`timescale 1ns/1ns

module thermo_to_bin(
    thermo,
    bin
    );

  input [14:0] thermo;
  output reg [3:0] bin;
  integer i;
  integer c;
  
  always @(thermo) begin
    
      c = 0;
    
  for (i = 0; i < 15; i = i + 1) begin
    if(thermo[i] == 1) begin //adds up all the 1s in thermo code
      c = c+1;
    end
  end
    
    bin = c;
    
  end

endmodule
