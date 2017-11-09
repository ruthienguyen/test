module register #( //parameter 
  parameter DATA_WIDTH-1:0] input_data, 
  //inputs 
  input [DATA_WIDTH-1:0] input_data, 
  input wen, 
  input sync_rst, 
  input async_rst, 
  input clk , 
  output logic [DATA_WIDTH -1:0] output_data
  ); 
  always @ (posedge clk, async_rst) begin
     if (async_rst == 1) begin 
        output_data = 0;
     end else if (sync_rst == 1 ) begin
         output_data = 0;
     end else if (wen ==1) begin 
         output_data = input_data; 
     end 
  end 
endmodule 




