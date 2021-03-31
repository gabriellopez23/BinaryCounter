module clock_divider(
  input clk,
  input reset,
  
  // Stores a number between 0 and 15
  output reg [3:0] counter,
  
  /* For outputting each bit in counter.
   * Mainly for debugging purposes.
   */
  output cntr_div2,  //1st bit, rightmost/LSB
  output cntr_div4,  //2nd bit
  output cntr_div8,  //3rd bit
  output cntr_div16  //4th bit, leftmost/MSB
);
  
  always @(posedge clk or posedge reset)
  begin
    if (reset)
      counter <= 0;
    else
      counter <= counter + 1;
  end
  
  assign cntr_div2 = counter[0];
  assign cntr_div4 = counter[1];
  assign cntr_div8 = counter[2];
  assign cntr_div16 = counter[3];
  
endmodule