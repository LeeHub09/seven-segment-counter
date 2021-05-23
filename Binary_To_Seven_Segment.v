// Author: Lee Woodend
// Date: 23/05/2021
// Descr: Converts 4-bit binary input to output 7-bit output to display the value of the binary input on a 7-segment display

module Binary_To_Seven_Segment
	(input i_Clk,
	input [1:0] i_Binary_Number,
	output o_Segment_A,
	output o_Segment_B,
	output o_Segment_C,
	output o_Segment_D,
	output o_Segment_E,
	output o_Segment_F,
	output o_Segment_G);
	
	reg r_Segment_A = 1'b0;
	reg r_Segment_B = 1'b0;
	reg r_Segment_C = 1'b0;
	reg r_Segment_D = 1'b0;
	reg r_Segment_E = 1'b0;
	reg r_Segment_F = 1'b0;
	reg r_Segment_G = 1'b0;

	always @(posedge i_Clk)
	begin
		if (i_Binary_Number == 0)
		begin
		// Display 0
			r_Segment_A <= 1'b1;
			r_Segment_B <= 1'b1;
			r_Segment_C <= 1'b1;
			r_Segment_D <= 1'b1;
			r_Segment_E <= 1'b1;
			r_Segment_F <= 1'b1;
			r_Segment_G <= 1'b0;	
		end

		else if (i_Binary_Number == 1)
		begin
			// Display 1
			r_Segment_A <= 1'b0;
			r_Segment_B <= 1'b1;
			r_Segment_C <= 1'b1;
			r_Segment_D <= 1'b0;
			r_Segment_E <= 1'b0;
			r_Segment_F <= 1'b0;
			r_Segment_G <= 1'b0;	
		end

		else if (i_Binary_Number == 2)
		begin
			// Display 2
			r_Segment_A <= 1'b1;
			r_Segment_B <= 1'b1;
			r_Segment_C <= 1'b0;
			r_Segment_D <= 1'b1;
			r_Segment_E <= 1'b1;
			r_Segment_F <= 1'b0;
			r_Segment_G <= 1'b1;	
		end	

		else if (i_Binary_Number == 3)
		begin
			// Display 3
			r_Segment_A <= 1'b1;
			r_Segment_B <= 1'b1;
			r_Segment_C <= 1'b1;
			r_Segment_D <= 1'b1;
			r_Segment_E <= 1'b0;
			r_Segment_F <= 1'b0;
			r_Segment_G <= 1'b1;	
		end
	end

	assign o_Segment_A = r_Segment_A;
	assign o_Segment_B = r_Segment_B;
	assign o_Segment_C = r_Segment_C;
	assign o_Segment_D = r_Segment_D;
	assign o_Segment_E = r_Segment_E;
	assign o_Segment_F = r_Segment_F;
	assign o_Segment_G = r_Segment_G;
	
endmodule
