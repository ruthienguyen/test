module reg_file #( 
	//Parameters
	parameter DATA_WIDTH =32, 
	parameter SIZE_REGFILE +3
	)
	(
	//Inputs 
	input clk, 
	input rst, 
	input rg_wrt_en, 
	input [SIZE_REGFILE-1:0] rg_wrt_dest, //address of the register that supposed to be written to
	input [SIZE_REGFILE-1:0] rg_rd_addr1, //first address to be read from
	input [SIZE_REGFILE-1:0] rg_rd_addr2, //second address to be read from 
	input [DATA_WIDTH-1:0] rg_wrt_data, 

	//Outputs 
	output logic [DATA_WIDTH-1:0] rg_rd_data1, //content of reg_file[rg_rd_addr1] i sloaded into 
	output logic [DATA_WIDTH-1:0] rg_rd_data2 
	); 


	always @(posedge clk) begin 
	   if (rst ==1) begin 
	      rg_rd_data1 = 0; 
	      rg_rd_data2 = 0; 
	   end else if (rst_wrt_en == 1) begin 
	       reg_dile[rg_wrt_dest] = rg_wrt_data;
	   end else if (rg_wrt_en == 0) begin 
	       rg_rd_data1 = reg_file[rg_rd_addr1]; 
	       rg_rd_data2 = reg_file[rg_rd_addr2]; 
	   end 
	end 
endmodule