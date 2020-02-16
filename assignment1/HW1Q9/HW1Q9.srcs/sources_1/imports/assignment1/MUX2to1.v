module MUX2to1(
	input	in_1,
	input	in_2,
	input	sel,//the selector bit;
	output	out
);

	assign out = sel ? in_1 : in_2;

endmodule 