module bram #( 
	//Parameter 
	parameter RAM_DATA_WIDTH = 32, 
	parameter RAM_ADDR_WIDTH = 4)
	( 
		//Inputs
		input clk, 
		input rst, //reset signal assswered, all mem cells should be cleared
		input wr, //write signal, when =1 data_i is written into th emem
		input [RAM_ADDR_WIDTH-1:0] addr, // address to read from or write to mem
		input [RAM_DATA_WIDTH-1:0] input_data, // input data that should be written in the memory 

		//Output 
		output logic [RAM_DATA_WIDTH-1:0] output_data //that is read from mem (whenwr=0)); 

	(*ram_style = "block"*) logic [RAM_DATA_WIDTH-1:0] mem [(2**RAM_ADDR_WIDTH)-1:0]; 

	always@(posedge clk) begin 
	    if (wr==1) begin 
	        memory[addr] = data_in; 
	    end else if (wr ==0) begin
	        data_out = memory[addr]; 
	    end 
	end 
endmodule
