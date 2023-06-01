
// vaghti result = 1 , taken mana dar mishe

module predictor(input wire request, result, clk, taken, output reg prediction);

  reg [1:0] counter = 2'b11;       // 2-bit saturating counter
  
  always @(posedge clk) begin
    // predict
    if (request) begin
      prediction = counter[1];
    end
    if (result) begin
      if (taken) begin
        if (counter != 2'b11) counter = counter + 1;
      end
    else begin
      if (counter != 2'b00) counter = counter - 1;
      end
    end
  end 
endmodule

