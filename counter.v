////////////////////////////////////////////////////////////////////////////////
//
// Filename: 	counter.v
//
////////////////////////////////////////////////////////////////////////////////
//
//
//
module	counter(i_clk, i_rst, o_busy);
	parameter	[7:0]	MAX_AMOUNT = 22;
	//
	input	wire	i_clk;
	//
	input	wire	i_rst;
	output	reg	    o_busy;

	reg	[7:0]	counter;

    always @(posedge i_clk) begin
		if ((i_rst)&&(counter == 0))
			counter <= MAX_AMOUNT-1'b1;
		else if (counter != 0)
			counter <= counter - 1'b1;
    end

	always @(*)
		o_busy <= (counter != 0);

`ifdef	FORMAL
    initial // Add for formal initial constrait
		counter <= MAX_AMOUNT-1'b1;

	always @(*)
		assert(counter < MAX_AMOUNT);
`endif
endmodule
