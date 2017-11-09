module counter #(
	//Parameters 
	parameter DATA_WIDTH =8, 
	parameter COUNT_FROM =0, 
	parameter COUNT_TO = 2**(DATA_WIDTH-1), 
	parameter STEP =1)
	( 
	//Inputs 
	input clk, 
	input en, 
	input rst, 
	input preload,
	input [DATA_WIDTH-1:0] input_data, 

	//Output 
	output logic [DATA_WIDTH-1:0] out_data); 

	always @(posedge clk) begin 
	    if (en ==1) begin 
	       out_data= out_data +STEP; 
	    end else if (rst ==1) begin 
	        out_data = COUNT_FROM; 
	    end else if (preload =1) begin 
	         out_data = input_data; 
	    end 
	end 
endmodule 