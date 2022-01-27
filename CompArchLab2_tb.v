module CompArchLab2_tb();

reg I, clock, reset;
wire F;

CompArchLab2 dut(I,clock, reset, F);

//all inputs are reg and all outputs are wire on testbench


initial begin
I = 1'b0;
clock = 1'b0;
reset = 1'b0;

#10 //means wait a certain time can change it

I = 1'b1;
#10
I = 1'b0;
#10
I = 1'b0;
#10
I = 1'b1;
#10

//testing the overlapping properties
I = 1'b0;
#10
I = 1'b0;
#10
I = 1'b1;
#10

reset = 1'b0;
#10
$stop;
end

always begin
#5
clock = ~clock;
end

endmodule