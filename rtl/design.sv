// Code your design here
module digital_timer (
    input clk,             // Clock input (assume 1 Hz for simplicity)
    input rst,             // Reset input
    input start,           // Start the timer
    input [1:0] sel,       // Interval selector
    output reg [4:0] count, // Countdown value
    output reg done        // Done signal when countdown finishes
);

    reg running;
    reg [4:0] load_val;

    // Time interval selection
    always @(*) begin
        case (sel)
            2'b00: load_val = 5;
            2'b01: load_val = 10;
            2'b10: load_val = 15;
            2'b11: load_val = 20;
            default: load_val = 5;
        endcase
    end

    // Countdown logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0;
            running <= 0;
            done <= 0;
        end else if (start) begin
            count <= load_val;
            running <= 1;
            done <= 0;
        end else if (running) begin
            if (count > 0) begin
                count <= count - 1;
                done <= 0;
            end else begin
                running <= 0;
                done <= 1;
            end
        end else begin
            done <= 0;
        end
    end

endmodule