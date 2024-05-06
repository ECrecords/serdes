`timescale 1ns / 1ns

typedef enum reg[3:0] {
    D_x_0 = 0,
    D_x_1,
    D_x_2,
    D_x_3,
    D_x_4,
    D_x_5,
    D_x_6,
    D_x_7
} dcode_3b4b_t;

typedef enum reg[5:0] { 
    D_00 = 0, 
    D_01, 
    D_02, 
    D_03, 
    D_04, 
    D_05, 
    D_06, 
    D_07, 
    D_08, 
    D_09, 
    D_10, 
    D_11, 
    D_12, 
    D_13, 
    D_14, 
    D_15, 
    D_16, 
    D_17, 
    D_18, 
    D_19, 
    D_20, 
    D_21, 
    D_22, 
    D_23, 
    D_24, 
    D_25, 
    D_26, 
    D_27, 
    D_28, 
    D_29, 
    D_30, 
    D_31
} dcode_5b6b_t;

typedef enum logic [7:0] {
    D0_1 = 8'b001_00000,
    D0_2 = 8'b010_00000,
    D0_3 = 8'b011_00000,
    D0_5 = 8'b101_00000,
    D0_6 = 8'b110_00000,
    D1_1 = 8'b001_00001,
    D1_2 = 8'b010_00001,
    D1_3 = 8'b011_00001,
    D1_5 = 8'b101_00001,
    D1_6 = 8'b110_00001,
    D2_1 = 8'b001_00010,
    D2_2 = 8'b010_00010,
    D2_3 = 8'b011_00010,
    D2_5 = 8'b101_00010,
    D2_6 = 8'b110_00010,
    D3_0 = 8'b000_00011,
    D3_4 = 8'b100_00011,
    D3_7 = 8'b111_00011,
    D4_1 = 8'b001_00100,
    D4_2 = 8'b010_00100,
    D4_3 = 8'b011_00100,
    D4_5 = 8'b101_00100,
    D4_6 = 8'b110_00100,
    D5_0 = 8'b000_00101,
    D5_4 = 8'b100_00101,
    D5_7 = 8'b111_00101,
    D6_0 = 8'b000_00110,
    D6_4 = 8'b100_00110,
    D6_7 = 8'b111_00110,
    D7_0 = 8'b000_00111,
    D7_4 = 8'b100_00111,
    D7_7 = 8'b111_00111,
    D8_1 = 8'b001_01000,
    D8_2 = 8'b010_01000,
    D8_3 = 8'b011_01000,
    D8_5 = 8'b101_01000,
    D8_6 = 8'b110_01000,
    D9_0 = 8'b000_01001,
    D9_4 = 8'b100_01001,
    D9_7 = 8'b111_01001,
    D10_0 = 8'b000_01010,
    D10_4 = 8'b100_01010,
    D10_7 = 8'b111_01010,
    D11_0 = 8'b000_01011,
    D11_4 = 8'b100_01011,
    D11_7 = 8'b111_01011,
    D12_0 = 8'b000_01100,
    D12_4 = 8'b100_01100,
    D12_7 = 8'b111_01100,
    D13_0 = 8'b000_01101,
    D13_4 = 8'b100_01101,
    D13_7 = 8'b111_01101,
    D14_0 = 8'b000_01110,
    D14_4 = 8'b100_01110,
    D14_7 = 8'b111_01110,
    D15_1 = 8'b001_01111,
    D15_2 = 8'b010_01111,
    D15_3 = 8'b011_01111,
    D15_5 = 8'b101_01111,
    D15_6 = 8'b110_01111,
    D16_1 = 8'b001_10000,
    D16_2 = 8'b010_10000,
    D16_3 = 8'b011_10000,
    D16_5 = 8'b101_10000,
    D16_6 = 8'b110_10000,
    D17_0 = 8'b000_10001,
    D17_4 = 8'b100_10001,
    D17_7 = 8'b111_10001,
    D18_0 = 8'b000_10010,
    D18_4 = 8'b100_10010,
    D18_7 = 8'b111_10010,
    D19_0 = 8'b000_10011,
    D19_4 = 8'b100_10011,
    D19_7 = 8'b111_10011,
    D20_0 = 8'b000_10100,
    D20_4 = 8'b100_10100,
    D20_7 = 8'b111_10100,
    D21_0 = 8'b000_10101,
    D21_4 = 8'b100_10101,
    D21_7 = 8'b111_10101,
    D22_0 = 8'b000_10110,
    D22_4 = 8'b100_10110,
    D22_7 = 8'b111_10110,
    D23_1 = 8'b001_10111,
    D23_2 = 8'b010_10111,
    D23_3 = 8'b011_10111,
    D23_5 = 8'b101_10111,
    D23_6 = 8'b110_10111,
    D24_1 = 8'b001_11000,
    D24_2 = 8'b010_11000,
    D24_3 = 8'b011_11000,
    D24_5 = 8'b101_11000,
    D24_6 = 8'b110_11000,
    D25_0 = 8'b000_11001,
    D25_4 = 8'b100_11001,
    D25_7 = 8'b111_11001,
    D26_0 = 8'b000_11010,
    D26_4 = 8'b100_11010,
    D26_7 = 8'b111_11010,
    D27_1 = 8'b001_11011,
    D27_2 = 8'b010_11011,
    D27_3 = 8'b011_11011,
    D27_5 = 8'b101_11011,
    D27_6 = 8'b110_11011,
    D28_0 = 8'b000_11100,
    D28_4 = 8'b100_11100,
    D28_7 = 8'b111_11100,
    D29_1 = 8'b001_11101,
    D29_2 = 8'b010_11101,
    D29_3 = 8'b011_11101,
    D29_5 = 8'b101_11101,
    D29_6 = 8'b110_11101,
    D30_1 = 8'b001_11110,
    D30_2 = 8'b010_11110,
    D30_3 = 8'b011_11110,
    D30_5 = 8'b101_11110,
    D30_6 = 8'b110_11110,
    D31_1 = 8'b001_11111,
    D31_2 = 8'b010_11111,
    D31_3 = 8'b011_11111,
    D31_5 = 8'b101_11111,
    D31_6 = 8'b110_11111
} symbols_flip_t;

typedef enum logic [7:0] {
    K28_0 = 8'b000_11100,
    K28_1 = 8'b001_11100,
    K28_2 = 8'b010_11100,
    K28_3 = 8'b011_11100,
    K28_4 = 8'b100_11100,
    K28_5 = 8'b101_11100,
    K28_6 = 8'b110_11100,
    K28_7 = 8'b111_11100,
    K23_7 = 8'b111_10111,
    K27_7 = 8'b111_11011,
    K29_7 = 8'b111_11101,
    K30_7 = 8'b111_11110
} k_symbols_t;

module encoder_8b10b(
    input CLK,
    input RST_L,
    input K,
    input [7:0] DATA,
    output reg [9:0] TX_DATA,
    output reg INVALID_K
);
    // ROM holding 3b4b encoding
    dcode_3b4b_t rom_3b4b [0:7];
    dcode_5b6b_t rom_5b6b [0:31];

    /////// STAGE 1 SIGNALS ///////
    logic K_reg;
    logic [7:0] DATA_reg;

    /////// STAGE 2 SIGNALS ///////
    logic [5:0] pre_Dcode_6B;
    logic [3:0] pre_Dcode_4B;
    logic pre_DFLIP_RD;
    logic pre_EN_INV_6B;
    logic pre_EN_INV_4B;
    logic pre_INV_4B_RD;
    logic pre_K_ERR;
    logic pre_KFLIP_RD;
    logic [5:0] pre_Kcode_6B;
    logic [3:0] pre_Kcode_4B;
    logic pre_SP_4B_RDP;
    logic pre_SP_4B_RDN;

    // PIPELINED STAGE 2 SIGNALS
    logic [5:0] Dcode_6B;
    logic [3:0] Dcode_4B;
    logic EN_INV_6B, EN_INV_4B;
    logic INV_4B_RD;
    logic DFLIP_RD;
    logic K_SEL;
    logic K_ERR;
    logic KFLIP_RD;
    logic [5:0] Kcode_6B;
    logic [3:0] Kcode_4B;
    logic SP_4B_RDP;
    logic SP_4B_RDN;

    /////// STAGE 3 SIGNALS ///////
    logic pre_CURRENT_RD;
    logic pre_BAD_K;
    logic pre_INV_6B;
    logic pre_INV_4B;
    
    // PIPIELINED STAGE 3 SIGNALS
    logic FLIP_RD;
    logic CURRENT_RD;
    logic BAD_K;
    logic INV_6B;
    logic INV_4B;
    logic [5:0] code_6B;
    logic [3:0] code_4B;

    /////// STAGE 4 SIGNALS ///////
    logic [9:0] pre_TX_DATA;
    logic [5:0] raw_code_6B;
    logic [3:0] raw_code_4B;

    always_ff @(posedge CLK) begin
        if (!RST_L) begin
            K_reg <= 0;
            DATA_reg <= 0;

            Dcode_4B <= 0;
            Dcode_6B <= 0;

            DFLIP_RD <= 0;
            EN_INV_4B <= 0;
            EN_INV_6B <= 0;
            INV_4B_RD <= 0;
            DFLIP_RD <= 0;

            FLIP_RD <= 0;
            CURRENT_RD <= 1;
            BAD_K <= 0;
            INV_4B <= 0;
            INV_6B <= 0;
            code_4B <= 0;
            code_6B <= 0;

            INVALID_K <= 0;
            TX_DATA <= 0;
        end else begin
            
            // STAGE 1 PIPELINE
            K_reg <= K;
            DATA_reg <= DATA;

            // STAGE 2 PIPELINE
            K_SEL <= K_reg;
            Dcode_4B <= pre_Dcode_4B;
            Dcode_6B <= pre_Dcode_6B;
            EN_INV_4B <= pre_EN_INV_4B;
            EN_INV_6B <= pre_EN_INV_6B;
            INV_4B_RD <= pre_INV_4B_RD;
            DFLIP_RD <= pre_DFLIP_RD;
            K_ERR <= pre_K_ERR;
            KFLIP_RD <= pre_KFLIP_RD;
            Kcode_6B <= pre_Kcode_6B;
            Kcode_4B <= pre_Kcode_4B;
            SP_4B_RDP <= pre_SP_4B_RDP;
            SP_4B_RDN <= pre_SP_4B_RDN;


            // STAGE 3 PIPELINE
            FLIP_RD <= DFLIP_RD;
            CURRENT_RD <= pre_CURRENT_RD;
            BAD_K <= pre_BAD_K;
            INV_4B <= pre_INV_4B;
            INV_6B <= pre_INV_6B;
            code_4B <= Dcode_4B;
            code_6B <= Dcode_6B;
            BAD_K <= K_ERR;


            // STAGE 4 PIPELINE 
            INVALID_K <= BAD_K;
            TX_DATA <= pre_TX_DATA;
        end
    end

    always_comb begin : ENC_K
        case (DATA_reg)
            K28_0, K28_1, K28_2, K28_3, 
            K28_4, K28_5, K28_6, K28_7,
            K23_7, K27_7, K29_7, K30_7: begin
                pre_K_ERR = 0;
            end
            default: begin
                pre_K_ERR = 1;
            end
        endcase

        case (DATA_reg)
            K28_1, K28_2, K28_3, K28_5, K28_6: begin
                pre_KFLIP_RD = 1;
            end
            default: begin
                pre_KFLIP_RD = 0;
            end
        endcase

        case(DATA_reg[4:0]) 
            28: pre_Kcode_6B = 6'b111010;
            23: pre_Kcode_6B = 6'b111010;
            27: pre_Kcode_6B = 6'b110110;
            29: pre_Kcode_6B = 6'b101110;
            30: pre_Kcode_6B = 6'b011110;
            default: pre_Kcode_6B = 6'bxxxxx;
        endcase

        case (DATA_reg[7:5])
            0: pre_Kcode_4B = 4'b1011;
            1: pre_Kcode_4B = 4'b0110;
            2: pre_Kcode_4B = 4'b1010;
            3: pre_Kcode_4B = 4'b1100;
            4: pre_Kcode_4B = 4'b1101;
            5: pre_Kcode_4B = 4'b0101;
            6: pre_Kcode_4B = 4'b1001;
            7: pre_Kcode_4B = 4'b0111;
        endcase
    end


    always_comb begin : ENC_D
        case (DATA_reg[4:0])
            D_00: pre_Dcode_6B = 6'b100111;
            D_01: pre_Dcode_6B = 6'b011101;
            D_02: pre_Dcode_6B = 6'b101101;
            D_03: pre_Dcode_6B = 6'b110001;
            D_04: pre_Dcode_6B = 6'b110101;
            D_05: pre_Dcode_6B = 6'b101001;
            D_06: pre_Dcode_6B = 6'b011001;
            D_07: pre_Dcode_6B = 6'b111000;
            D_08: pre_Dcode_6B = 6'b111001;
            D_09: pre_Dcode_6B = 6'b100101;
            D_10: pre_Dcode_6B = 6'b010101;
            D_11: pre_Dcode_6B = 6'b110100;
            D_12: pre_Dcode_6B = 6'b001101;
            D_13: pre_Dcode_6B = 6'b101100;
            D_14: pre_Dcode_6B = 6'b011100;
            D_15: pre_Dcode_6B = 6'b010111;
            D_16: pre_Dcode_6B = 6'b011011;
            D_17: pre_Dcode_6B = 6'b100011;
            D_18: pre_Dcode_6B = 6'b010011;
            D_19: pre_Dcode_6B = 6'b110010;
            D_20: pre_Dcode_6B = 6'b001011;
            D_21: pre_Dcode_6B = 6'b101010;
            D_22: pre_Dcode_6B = 6'b011010;
            D_23: pre_Dcode_6B = 6'b111010;
            D_24: pre_Dcode_6B = 6'b110011;
            D_25: pre_Dcode_6B = 6'b100110;
            D_26: pre_Dcode_6B = 6'b010110;
            D_27: pre_Dcode_6B = 6'b110110;
            D_28: pre_Dcode_6B = 6'b001110;
            D_29: pre_Dcode_6B = 6'b101110;
            D_30: pre_Dcode_6B = 6'b011110;
            D_31: pre_Dcode_6B = 6'b101011;
        endcase

        case (DATA_reg[7:5])
            0: pre_Dcode_4B = 4'b0100;
            1: pre_Dcode_4B = 4'b1001;
            2: pre_Dcode_4B = 4'b0101;
            3: pre_Dcode_4B = 4'b0011;
            4: pre_Dcode_4B = 4'b0110;
            5: pre_Dcode_4B = 4'b1010;
            6: pre_Dcode_4B = 4'b0110;
            7: pre_Dcode_4B = 4'b0001;
        endcase      
    end

    always_comb begin : ENC_FLIP
        case (DATA_reg)
            D0_1 , D0_2 , D0_3 , D0_5 , D0_6 , D1_1 , D1_2 , D1_3 , D1_5 , D1_6 ,
            D2_1 , D2_2 , D2_3 , D2_5 , D2_6 , D3_0 , D3_4 , D3_7 , D4_1 , D4_2 ,
            D4_3 , D4_5 , D4_6 , D5_0 , D5_4 , D5_7 , D6_0 , D6_4 , D6_7 , D7_0 ,
            D7_4 , D7_7 , D8_1 , D8_2 , D8_3 , D8_5 , D8_6 , D9_0 , D9_4 , D9_7 ,
            D10_0 , D10_4 , D10_7 , D11_0 , D11_4 , D11_7 , D12_0 , D12_4 , D12_7 ,
            D13_0 , D13_4 , D13_7 , D14_0 , D14_4 , D14_7 , D15_1 , D15_2 , D15_3 ,
            D15_5 , D15_6 , D16_1 , D16_2 , D16_3 , D16_5 , D16_6 , D17_0 , D17_4 ,
            D17_7 , D18_0 , D18_4 , D18_7 , D19_0 , D19_4 , D19_7 , D20_0 , D20_4 ,
            D20_7 , D21_0 , D21_4 , D21_7 , D22_0 , D22_4 , D22_7 , D23_1 , D23_2 ,
            D23_3 , D23_5 , D23_6 , D24_1 , D24_2 , D24_3 , D24_5 , D24_6 , D25_0 ,
            D25_4 , D25_7 , D26_0 , D26_4 , D26_7 , D27_1 , D27_2 , D27_3 , D27_5 ,
            D27_6 , D28_0 , D28_4 , D28_7 , D29_1 , D29_2 , D29_3 , D29_5 , D29_6 ,
            D30_1 , D30_2 , D30_3 , D30_5 , D30_6 , D31_1 , D31_2 , D31_3 , D31_5 , D31_6 : begin
                pre_DFLIP_RD = 1'b1;
            end
                
            default: begin
                pre_DFLIP_RD = 1'b0;
            end
        endcase


        case (DATA_reg[4:0])
            D_00 , D_01 , D_02 , D_04 , D_07 , D_08 , D_15 , D_16 , D_23 , D_24 , D_27 , D_29 , D_30 , D_31: begin
                pre_EN_INV_6B = 1'b1;
                pre_INV_4B_RD = 1'b1;    
            end

            default: begin
               pre_EN_INV_6B = 1'b0;
               pre_INV_4B_RD = 1'b0; 
            end
        endcase

        case (DATA_reg[4:0])
            D_00 , D_01 , D_02 , D_04 , D_07 , D_08 , D_15 , D_16 , D_23 , D_24 , D_27 , D_29 , D_30 , D_31: begin
                pre_INV_4B_RD = 1'b1;    
            end

            default: begin
               pre_INV_4B_RD = 1'b0; 
            end
        endcase

        case (DATA_reg[7:5])
            D_x_0 , D_x_3 , D_x_4 , D_x_7: pre_EN_INV_4B = 1;
            default: pre_EN_INV_4B = 0;
        endcase
    end


    always_comb begin : STAGE_3_COMB_LOGIC
        if (EN_INV_6B) begin
            if (CURRENT_RD) begin
                pre_INV_6B = 1;
            end else begin
                pre_INV_6B = 0;
            end
        end else begin
            pre_INV_6B = 0;
        end

        if (EN_INV_4B) begin
            if (INV_4B_RD ^ CURRENT_RD) begin
                pre_INV_4B = 1;
            end else begin
                pre_INV_4B = 0;
            end
        end else begin
            pre_INV_4B = 0;
        end
    end    


    always_comb begin : STAGE_4_COMB_LOGIO

        if (FLIP_RD) begin
            pre_CURRENT_RD = ~CURRENT_RD;
        end else begin
            pre_CURRENT_RD = CURRENT_RD;
        end
        
        if (INV_6B) begin
            raw_code_6B = ~code_6B;
        end else begin
            raw_code_6B = code_6B;
        end

        if (INV_4B) begin
            raw_code_4B = ~code_4B;
        
        end else begin
            raw_code_4B = code_4B;
        end

        pre_TX_DATA = {raw_code_6B, raw_code_4B};
    end

endmodule

