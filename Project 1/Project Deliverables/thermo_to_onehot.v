`timescale 1ns/1ns

module thermo_to_onehot(
    thermo,
    onehot
    );
  
  input [14:0] thermo;
  output reg [15:0] onehot;
    
  integer i;
  integer c;
  integer k;

always @(thermo) begin
  
  c = 0;
  
  for (i = 0; i < 15; i = i + 1) begin 
    if (thermo[i] == 1) begin
    c = c + 1; //counts the number of 1s present
  	end  
  end
  
  for(k = 0; k < 16; k = k + 1) begin //set the 1 in its correct position
    onehot[k] = (k == c);
  end
  
end
  
endmodule
