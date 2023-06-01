
// vaghti result = 1 , taken mana dar mishe


module predictor(input wire request, result, clk, taken, output reg prediction);

  reg [1:0] counter;       // 2-bit saturating counter
  
  always @(posedge clk) begin
    // predict
    if (request) begin
      if (counter >= 2)
        prediction <= 1;
    else prediction <= 0;
    end
    if (reslut) begin
      if (taken) begin
        if (counter != 3) counter <= counter + 1
      end
    else begin
      if (counter != 0) counter <= counter - 1
    end
  end 
endmodule

