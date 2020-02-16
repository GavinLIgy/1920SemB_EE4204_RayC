`timescale 1ns / 100ps

module tb_MUX2to1();

	reg		in_1;
	reg 	sel;
	wire 	out;
	
	always #2 in_1 = (in_1 === 1'b0);
	always #10 sel = (sel === 1'b0);
	
	initial begin
		repeat (50) begin
			repeat (50000) @(posedge sel);
			//$display("+50000 cycles");
		end
		$finish;
	end
	
	MUX2to1 uut(
	.in_1(in_1),
	.in_2(1'b0),
	.sel(sel),
	.out(out)
	);

endmodule