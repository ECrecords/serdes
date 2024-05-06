`timescale 1ns / 100ps

module tb_encoder_8b10b();

    // Inputs to the encoder
    logic CLK;
    logic RST_L;
    logic K;
    logic [7:0] DATA;

    // Outputs from the encoder
    logic [9:0] TX_DATA;
    logic INVALID_K;
    string message;

    // Instantiate the encoder module
    encoder_8b10b uut (
        .CLK(CLK),
        .RST_L(RST_L),
        .K(K),
        .DATA(DATA),
        .TX_DATA(TX_DATA),
        .INVALID_K(INVALID_K)
    );

    // Clock generation
    always #5 CLK = ~CLK;  // 100 MHz clock, generates a clock cycle every 10 ns

    // Initial setup and reset
    initial begin
        CLK = 0;       // Initialize clock to low
        RST_L = 0;     // Initialize reset to low (inactive)
        K = 0;         // Assuming K = 0 for non-special characters
        DATA = 8'b0;   // Initialize data

        // Assert reset
        #10 RST_L = 1; // Activate reset at time 10 ns
        #10 RST_L = 0; // Deactivate reset at time 20 ns
        #10;           // Wait for reset to settle

        // Define the message
        message = "Hello, World!";
        foreach (message[i]) begin
            DATA = message[i];  // Assign each character to DATA
            #10;  // Wait for the encoding to process
            $display("Character: %c, Encoded TX_DATA: %b", message[i], TX_DATA);
        end

        // Additional delay to observe the encoding results
        #2000;
        $finish; // Terminate the simulation
    end

endmodule
