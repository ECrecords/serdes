// This module converts parallel data to serial data.
module parallel_to_serial #(
    parameter DATA_WIDTH = 8  // Width of the parallel data
)(
    input wire CLK,  // Clock signal
    input wire RST_L,  // Active low reset signal
    input wire [DATA_WIDTH-1:0] PARALLEL_DATA,  // Input parallel data
    input wire LOAD,  // Load signal to start the conversion
    output reg SERIAL_DATA  // Output serial data
);

    // Internal signals
    logic [DATA_WIDTH-1:0] parallel_data;   
    logic [DATA_WIDTH-1:0] bit_counter;

    // Always block for parallel to serial conversion
    always_ff @(posedge CLK or negedge RST_L) begin
        if (!RST_L) begin
            bit_counter <= '0;
            parallel_data <= '0;
            SERIAL_DATA <= 1'b0;
        end
        else if (LOAD && bit_counter == '0) begin
            parallel_data <= PARALLEL_DATA;
            bit_counter <= 1;
            SERIAL_DATA <= parallel_data[0];
        end 
        else if (bit_counter < DATA_WIDTH) begin
            bit_counter <= bit_counter + 1;
            SERIAL_DATA <= parallel_data[bit_counter-1];
        end 
        else begin
            bit_counter <= '0;
        end
    end
endmodule