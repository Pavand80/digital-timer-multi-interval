// Code your testbench here
// or browse Examples
module tb_digital_timer;

    reg clk, rst, start;
    reg [1:0] sel;
    wire [4:0] count;
    wire done;

    digital_timer dut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .sel(sel),
        .count(count),
        .done(done)
    );

    // Generate a 1 Hz clock (toggle every 5ns for fast sim)
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
       $dumpfile("wave.vcd");
        $dumpvars(0, tb_digital_timer);


        // Reset
        rst = 1; start = 0; sel = 2'b00;
        #10 rst = 0;

        // Start timer for 5 seconds
        sel = 2'b00; #10 start = 1; #10 start = 0;

        // Wait 50 time units
        #100;

        // Start timer for 10 seconds
        sel = 2'b01; #10 start = 1; #10 start = 0;
        #200;
       sel = 2'b10; #10 start = 1; #10 start = 0;
        #300;
       sel = 2'b11; #10 start = 1; #10 start = 0;
        #400;

        $finish;
    end

endmodule