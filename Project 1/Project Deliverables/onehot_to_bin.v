`timescale 1ns/1ns

module onehot_to_bin(
    onehot,
    bin
    );
  
  input [15:0] onehot;
  output [3:0]bin;  
  wire [14:0] thermo; 

onehot_to_thermo first(
  .onehot(onehot),
  .thermo(thermo)
);

thermo_to_bin second(
  .bin(bin),
  .thermo(thermo)
);
  
endmodule

//OLD IMPLEMENTATION
  

 /* 
  integer i;
  integer c;
  
  always @(onehot) begin
    
    c=0;
    
    for (i = 0; i < 16; i = i + 1) begin
      if(onehot[i] == 1) begin //adds up all the 1s in thermo code
      c = i;
    	end
  	end
    
    bin = c;
    
  end*/




