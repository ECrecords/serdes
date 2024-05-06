module serdes_top(
    input wire CLK,
    input wire RST,
    output wire SERIAL_DATA,
    output reg LOAD
);
    // Intermediate signals
    reg [7:0] DATA;
    wire [9:0] TX_DATA;
    wire INVALID_K;
    wire LOAD_INTERAL;
    wire RST_L;
    reg K = 0;  // Typically, data characters do not use K-codes.
    
    assign RST_L = ~RST;
       
    logic [7:0] letter_rom [0:11];
    initial begin
        letter_rom[0]   = 72 ;
        letter_rom[1]   = 101;
        letter_rom[2]   = 108;
        letter_rom[3]   = 108;
        letter_rom[4]   = 111;
        letter_rom[5]   = 32 ; 
        letter_rom[6]   = 87 ; 
        letter_rom[7]   = 111; 
        letter_rom[8]   = 114; 
        letter_rom[9]   = 108; 
        letter_rom[10]  = 100; 
        letter_rom[11]  = 32 ; 
    end

    // Generate LOAD pulse signal
    assign LOAD_INTERAL = 1'b1;
    
    integer counter;
    
    always_ff @(posedge TX_CLK) begin
        if (RST) begin
            counter <= 1000000;
            LOAD <= 1;    
        end else begin
            if (counter == 0) begin
                counter <= 1000000;
                LOAD <= ~LOAD;    
            end else begin
            
                counter <= counter - 1;
            end
        end
    end    
    
    clk_wiz_0 instance_name
    (
    // Clock out ports
    .clk_out1(TX_CLK),     // output clk_out1
    // Status and control signals
    .reset(RST), // input reset
    .locked(),       // output locked
   // Clock in ports
    .clk_in1(CLK)      // input clk_in1
    );

    // Instantiate the parallel-to-serial converter
    parallel_to_serial #(10) u_parallel_to_serial (
        .CLK(TX_CLK),
        .RST_L(RST_L),
        .PARALLEL_DATA(TX_DATA),
        .LOAD(LOAD_INTERAL),
        .SERIAL_DATA(SERIAL_DATA)
    );
    
        // Instantiate the encoder
    encoder_8b10b u_encoder_8b10b (
        .CLK(TX_CLK),
        .RST_L(RST_L),
        .K(K),
        .DATA(DATA),
        .TX_DATA(TX_DATA),
        .INVALID_K(INVALID_K)
    );

    // Data generator
    logic [3:0] index = 0;
    always @(posedge TX_CLK) begin
        if (!RST_L) begin
            index <= 0;
            DATA <= letter_rom[index];
        end else begin
            DATA <= letter_rom[index];
            index <= (index + 1) % 12;  // Cycle through the "Hello World " string
        end
    end
endmodule