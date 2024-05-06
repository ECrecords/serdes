`timescale 1ns/100ps

module tb_p2s();

    // Testbench Signals
    logic clk;
    logic rst_n;
    logic [9:0] parallel_data;
    logic load;
    logic serial_out;
    logic data_valid;

    // Clock generation
    always #5 clk = ~clk;  // 100MHz clock, 10ns period

    // DUT instance
    p2s dut (
        .clk(clk),
        .rst_n(rst_n),
        .parallel_data(parallel_data),
        .load(load),
        .serial_out(serial_out),
        .data_valid(data_valid)
    );

    // Test stimulus
    initial begin
        // Initialize signals
        clk = 0;
        rst_n = 0;
        parallel_data = 0;
        load = 0;

        // Reset the system
        #15;
        rst_n = 1;
        #20;

        // Test case 1: Load and shift out 0b1101010110
        parallel_data = 10'b1101010110;
        load = 1;
        #10;  // Hold load for one clock cycle
        load = 0;
        #100; // Wait for all bits to be shifted out

        // Test case 2: Load and shift out 0b0010110011
        parallel_data = 10'b0010110011;
        load = 1;
        #10;  // Hold load for one clock cycle
        load = 0;
        #100; // Wait for all bits to be shifted out

        // Complete testing
        $finish;
    end

    // Monitor the outputs
    initial begin
        $monitor("Time = %t, Reset = %b, Load = %b, Parallel Data = %b, Serial Out = %b, Data Valid = %b",
                 $time, rst_n, load, parallel_data, serial_out, data_valid);
    end

endmodule
