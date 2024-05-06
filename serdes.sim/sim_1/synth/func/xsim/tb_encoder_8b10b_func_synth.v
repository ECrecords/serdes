// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (win64) Build 4126759 Thu Feb  8 23:53:51 MST 2024
// Date        : Mon May  6 04:43:50 2024
// Host        : lovelace running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/elvis/Documents/serdes/serdes.sim/sim_1/synth/func/xsim/tb_encoder_8b10b_func_synth.v
// Design      : serdes_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) output clk_out1;
  input reset;
  output locked;
  input clk_in1;


endmodule

module encoder_8b10b
   (CLK,
    RST_L,
    K,
    DATA,
    TX_DATA,
    INVALID_K);
  input CLK;
  input RST_L;
  input K;
  input [7:0]DATA;
  output [9:0]TX_DATA;
  output INVALID_K;

  wire BAD_K;
  wire CLK;
  wire CURRENT_RD;
  wire CURRENT_RD_i_1_n_0;
  wire [7:0]DATA;
  wire \DATA_reg_reg_n_0_[0] ;
  wire \DATA_reg_reg_n_0_[1] ;
  wire \DATA_reg_reg_n_0_[2] ;
  wire \DATA_reg_reg_n_0_[3] ;
  wire \DATA_reg_reg_n_0_[4] ;
  wire DFLIP_RD;
  wire DFLIP_RD_i_2_n_0;
  wire [3:0]Dcode_4B;
  wire \Dcode_4B[3]_i_1_n_0 ;
  wire [5:0]Dcode_6B;
  wire EN_INV_4B;
  wire EN_INV_6B;
  wire FLIP_RD;
  wire INVALID_K;
  wire INV_4B;
  wire INV_4B_i_1_n_0;
  wire INV_6B;
  wire INV_6B_i_1_n_0;
  wire K_ERR_i_1_n_0;
  wire K_ERR_i_2_n_0;
  wire K_ERR_i_3_n_0;
  wire K_ERR_i_4_n_0;
  wire K_ERR_reg_n_0;
  wire RST_L;
  wire [9:0]TX_DATA;
  wire [3:0]code_4B;
  wire [5:0]code_6B;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire [2:0]p_0_in;
  wire p_0_in__0;
  wire pre_DFLIP_RD;
  wire [2:0]pre_Dcode_4B;
  wire pre_EN_INV_4B;
  wire pre_EN_INV_6B;
  wire [9:0]pre_TX_DATA;

  FDRE #(
    .INIT(1'b0)) 
    BAD_K_reg
       (.C(CLK),
        .CE(1'b1),
        .D(K_ERR_reg_n_0),
        .Q(BAD_K),
        .R(p_0_in__0));
  LUT2 #(
    .INIT(4'h6)) 
    CURRENT_RD_i_1
       (.I0(FLIP_RD),
        .I1(CURRENT_RD),
        .O(CURRENT_RD_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    CURRENT_RD_reg
       (.C(CLK),
        .CE(1'b1),
        .D(CURRENT_RD_i_1_n_0),
        .Q(CURRENT_RD),
        .S(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[0]),
        .Q(\DATA_reg_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[1]),
        .Q(\DATA_reg_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[2]),
        .Q(\DATA_reg_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[3]),
        .Q(\DATA_reg_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[4]),
        .Q(\DATA_reg_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[5]),
        .Q(p_0_in[0]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[6]),
        .Q(p_0_in[1]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(DATA[7]),
        .Q(p_0_in[2]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'hE8819117177E6EE8)) 
    DFLIP_RD_i_1
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(\DATA_reg_reg_n_0_[1] ),
        .I2(\DATA_reg_reg_n_0_[3] ),
        .I3(\DATA_reg_reg_n_0_[4] ),
        .I4(\DATA_reg_reg_n_0_[2] ),
        .I5(DFLIP_RD_i_2_n_0),
        .O(pre_DFLIP_RD));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    DFLIP_RD_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(DFLIP_RD_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    DFLIP_RD_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pre_DFLIP_RD),
        .Q(DFLIP_RD),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \Dcode_4B[0]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .O(pre_Dcode_4B[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Dcode_4B[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(pre_Dcode_4B[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Dcode_4B[2]_i_1 
       (.I0(p_0_in[0]),
        .O(pre_Dcode_4B[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Dcode_4B[3]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(\Dcode_4B[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_4B_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_Dcode_4B[0]),
        .Q(Dcode_4B[0]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_4B_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_Dcode_4B[1]),
        .Q(Dcode_4B[1]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_4B_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_Dcode_4B[2]),
        .Q(Dcode_4B[2]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_4B_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Dcode_4B[3]_i_1_n_0 ),
        .Q(Dcode_4B[3]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_6B_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b0_n_0),
        .Q(Dcode_6B[0]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_6B_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b1_n_0),
        .Q(Dcode_6B[1]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_6B_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b2_n_0),
        .Q(Dcode_6B[2]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_6B_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b3_n_0),
        .Q(Dcode_6B[3]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_6B_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b4_n_0),
        .Q(Dcode_6B[4]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \Dcode_6B_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(g0_b5_n_0),
        .Q(Dcode_6B[5]),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    EN_INV_4B_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(pre_EN_INV_4B));
  FDRE #(
    .INIT(1'b0)) 
    EN_INV_4B_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pre_EN_INV_4B),
        .Q(EN_INV_4B),
        .R(p_0_in__0));
  LUT5 #(
    .INIT(32'hE9818197)) 
    EN_INV_6B_i_1
       (.I0(\DATA_reg_reg_n_0_[1] ),
        .I1(\DATA_reg_reg_n_0_[2] ),
        .I2(\DATA_reg_reg_n_0_[0] ),
        .I3(\DATA_reg_reg_n_0_[4] ),
        .I4(\DATA_reg_reg_n_0_[3] ),
        .O(pre_EN_INV_6B));
  FDRE #(
    .INIT(1'b0)) 
    EN_INV_6B_reg
       (.C(CLK),
        .CE(1'b1),
        .D(pre_EN_INV_6B),
        .Q(EN_INV_6B),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    FLIP_RD_reg
       (.C(CLK),
        .CE(1'b1),
        .D(DFLIP_RD),
        .Q(FLIP_RD),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    INVALID_K_reg
       (.C(CLK),
        .CE(1'b1),
        .D(BAD_K),
        .Q(INVALID_K),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    INV_4B_i_1
       (.I0(EN_INV_6B),
        .I1(CURRENT_RD),
        .I2(EN_INV_4B),
        .I3(RST_L),
        .O(INV_4B_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    INV_4B_reg
       (.C(CLK),
        .CE(1'b1),
        .D(INV_4B_i_1_n_0),
        .Q(INV_4B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    INV_6B_i_1
       (.I0(CURRENT_RD),
        .I1(EN_INV_6B),
        .I2(RST_L),
        .O(INV_6B_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    INV_6B_reg
       (.C(CLK),
        .CE(1'b1),
        .D(INV_6B_i_1_n_0),
        .Q(INV_6B),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h333FFF3FAAAAAAAA)) 
    K_ERR_i_1
       (.I0(K_ERR_reg_n_0),
        .I1(\DATA_reg_reg_n_0_[4] ),
        .I2(K_ERR_i_2_n_0),
        .I3(K_ERR_i_3_n_0),
        .I4(K_ERR_i_4_n_0),
        .I5(RST_L),
        .O(K_ERR_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000088888888)) 
    K_ERR_i_2
       (.I0(\DATA_reg_reg_n_0_[3] ),
        .I1(\DATA_reg_reg_n_0_[2] ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(\DATA_reg_reg_n_0_[1] ),
        .O(K_ERR_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    K_ERR_i_3
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(\DATA_reg_reg_n_0_[1] ),
        .O(K_ERR_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h60000000)) 
    K_ERR_i_4
       (.I0(\DATA_reg_reg_n_0_[3] ),
        .I1(\DATA_reg_reg_n_0_[2] ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(K_ERR_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    K_ERR_reg
       (.C(CLK),
        .CE(1'b1),
        .D(K_ERR_i_1_n_0),
        .Q(K_ERR_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[0]_i_1 
       (.I0(INV_4B),
        .I1(code_4B[0]),
        .O(pre_TX_DATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[1]_i_1 
       (.I0(INV_4B),
        .I1(code_4B[1]),
        .O(pre_TX_DATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[2]_i_1 
       (.I0(INV_4B),
        .I1(code_4B[2]),
        .O(pre_TX_DATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[3]_i_1 
       (.I0(INV_4B),
        .I1(code_4B[3]),
        .O(pre_TX_DATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[4]_i_1 
       (.I0(INV_6B),
        .I1(code_6B[0]),
        .O(pre_TX_DATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[5]_i_1 
       (.I0(INV_6B),
        .I1(code_6B[1]),
        .O(pre_TX_DATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[6]_i_1 
       (.I0(INV_6B),
        .I1(code_6B[2]),
        .O(pre_TX_DATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[7]_i_1 
       (.I0(INV_6B),
        .I1(code_6B[3]),
        .O(pre_TX_DATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[8]_i_1 
       (.I0(INV_6B),
        .I1(code_6B[4]),
        .O(pre_TX_DATA[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \TX_DATA[9]_i_1 
       (.I0(RST_L),
        .O(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \TX_DATA[9]_i_2 
       (.I0(INV_6B),
        .I1(code_6B[5]),
        .O(pre_TX_DATA[9]));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[0]),
        .Q(TX_DATA[0]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[1]),
        .Q(TX_DATA[1]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[2]),
        .Q(TX_DATA[2]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[3]),
        .Q(TX_DATA[3]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[4]),
        .Q(TX_DATA[4]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[5]),
        .Q(TX_DATA[5]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[6]),
        .Q(TX_DATA[6]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[7]),
        .Q(TX_DATA[7]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[8]),
        .Q(TX_DATA[8]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(pre_TX_DATA[9]),
        .Q(TX_DATA[9]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_4B_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_4B[0]),
        .Q(code_4B[0]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_4B_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_4B[1]),
        .Q(code_4B[1]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_4B_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_4B[2]),
        .Q(code_4B[2]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_4B_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_4B[3]),
        .Q(code_4B[3]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_6B_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_6B[0]),
        .Q(code_6B[0]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_6B_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_6B[1]),
        .Q(code_6B[1]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_6B_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_6B[2]),
        .Q(code_6B[2]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_6B_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_6B[3]),
        .Q(code_6B[3]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_6B_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_6B[4]),
        .Q(code_6B[4]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \code_6B_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(Dcode_6B[5]),
        .Q(code_6B[5]),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8117977F)) 
    g0_b0
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(\DATA_reg_reg_n_0_[1] ),
        .I2(\DATA_reg_reg_n_0_[2] ),
        .I3(\DATA_reg_reg_n_0_[3] ),
        .I4(\DATA_reg_reg_n_0_[4] ),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF8001)) 
    g0_b1
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(\DATA_reg_reg_n_0_[1] ),
        .I2(\DATA_reg_reg_n_0_[2] ),
        .I3(\DATA_reg_reg_n_0_[3] ),
        .I4(\DATA_reg_reg_n_0_[4] ),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7E00FE17)) 
    g0_b2
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(\DATA_reg_reg_n_0_[1] ),
        .I2(\DATA_reg_reg_n_0_[2] ),
        .I3(\DATA_reg_reg_n_0_[3] ),
        .I4(\DATA_reg_reg_n_0_[4] ),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F171E6)) 
    g0_b3
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(\DATA_reg_reg_n_0_[1] ),
        .I2(\DATA_reg_reg_n_0_[2] ),
        .I3(\DATA_reg_reg_n_0_[3] ),
        .I4(\DATA_reg_reg_n_0_[4] ),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h4DCDCDDA)) 
    g0_b4
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(\DATA_reg_reg_n_0_[1] ),
        .I2(\DATA_reg_reg_n_0_[2] ),
        .I3(\DATA_reg_reg_n_0_[3] ),
        .I4(\DATA_reg_reg_n_0_[4] ),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hABAA2BBD)) 
    g0_b5
       (.I0(\DATA_reg_reg_n_0_[0] ),
        .I1(\DATA_reg_reg_n_0_[1] ),
        .I2(\DATA_reg_reg_n_0_[2] ),
        .I3(\DATA_reg_reg_n_0_[3] ),
        .I4(\DATA_reg_reg_n_0_[4] ),
        .O(g0_b5_n_0));
endmodule

module parallel_to_serial
   (CLK,
    RST_L,
    PARALLEL_DATA,
    LOAD,
    SERIAL_DATA);
  input CLK;
  input RST_L;
  input [9:0]PARALLEL_DATA;
  input LOAD;
  output SERIAL_DATA;

  wire CLK;
  wire LOAD;
  wire [9:0]PARALLEL_DATA;
  wire RST_L;
  wire SERIAL_DATA;
  wire SERIAL_DATA_i_1_n_0;
  wire SERIAL_DATA_i_2_n_0;
  wire SERIAL_DATA_i_3_n_0;
  wire bit_counter;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire [3:0]bit_counter_reg;
  wire [9:0]p_0_in;
  wire p_1_in;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \shift_reg_reg_n_0_[8] ;

  LUT1 #(
    .INIT(2'h1)) 
    SERIAL_DATA_i_1
       (.I0(LOAD),
        .O(SERIAL_DATA_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    SERIAL_DATA_i_2
       (.I0(bit_counter_reg[3]),
        .I1(bit_counter_reg[0]),
        .I2(bit_counter_reg[1]),
        .I3(bit_counter_reg[2]),
        .I4(p_1_in),
        .O(SERIAL_DATA_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    SERIAL_DATA_i_3
       (.I0(RST_L),
        .O(SERIAL_DATA_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SERIAL_DATA_reg
       (.C(CLK),
        .CE(SERIAL_DATA_i_1_n_0),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(SERIAL_DATA_i_2_n_0),
        .Q(SERIAL_DATA));
  LUT2 #(
    .INIT(4'hB)) 
    \bit_counter[0]_i_1 
       (.I0(LOAD),
        .I1(bit_counter_reg[0]),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter_reg[1]),
        .I1(bit_counter_reg[0]),
        .I2(LOAD),
        .O(\bit_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00A9)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter_reg[2]),
        .I1(bit_counter_reg[0]),
        .I2(bit_counter_reg[1]),
        .I3(LOAD),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEEEEA)) 
    \bit_counter[3]_i_1 
       (.I0(LOAD),
        .I1(bit_counter_reg[3]),
        .I2(bit_counter_reg[0]),
        .I3(bit_counter_reg[1]),
        .I4(bit_counter_reg[2]),
        .O(\bit_counter[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(bit_counter_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_reg[0]_i_1 
       (.I0(LOAD),
        .I1(PARALLEL_DATA[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[1]_i_1 
       (.I0(PARALLEL_DATA[1]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[0] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[2]_i_1 
       (.I0(PARALLEL_DATA[2]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[1] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[3]_i_1 
       (.I0(PARALLEL_DATA[3]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[2] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[4]_i_1 
       (.I0(PARALLEL_DATA[4]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[3] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[5]_i_1 
       (.I0(PARALLEL_DATA[5]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[4] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[6]_i_1 
       (.I0(PARALLEL_DATA[6]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[5] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[7]_i_1 
       (.I0(PARALLEL_DATA[7]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[6] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[8]_i_1 
       (.I0(PARALLEL_DATA[8]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[7] ),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \shift_reg[9]_i_1 
       (.I0(LOAD),
        .I1(bit_counter_reg[3]),
        .I2(bit_counter_reg[0]),
        .I3(bit_counter_reg[1]),
        .I4(bit_counter_reg[2]),
        .O(bit_counter));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_reg[9]_i_2 
       (.I0(PARALLEL_DATA[9]),
        .I1(LOAD),
        .I2(\shift_reg_reg_n_0_[8] ),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[0]),
        .Q(\shift_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[1]),
        .Q(\shift_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[2]),
        .Q(\shift_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[3]),
        .Q(\shift_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[4]),
        .Q(\shift_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[5]),
        .Q(\shift_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[6]),
        .Q(\shift_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[7]),
        .Q(\shift_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[8] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[8]),
        .Q(\shift_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[9] 
       (.C(CLK),
        .CE(bit_counter),
        .CLR(SERIAL_DATA_i_3_n_0),
        .D(p_0_in[9]),
        .Q(p_1_in));
endmodule

(* NotValidForBitStream *)
module serdes_top
   (CLK,
    RST,
    SERIAL_DATA,
    LOAD);
  input CLK;
  input RST;
  output SERIAL_DATA;
  output LOAD;

  wire CLK;
  wire [6:0]DATA;
  wire \DATA[0]_i_1_n_0 ;
  wire \DATA[1]_i_1_n_0 ;
  wire \DATA[2]_i_1_n_0 ;
  wire \DATA[3]_i_1_n_0 ;
  wire \DATA[4]_i_1_n_0 ;
  wire \DATA[5]_i_1_n_0 ;
  wire \DATA[6]_i_1_n_0 ;
  wire LOAD;
  wire RST;
  wire RST_IBUF;
  wire RST_L;
  wire SERIAL_DATA;
  wire SERIAL_DATA_OBUF;
  wire TX_CLK;
  wire [9:0]TX_DATA;
  wire [3:0]index;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[3]_i_1_n_0 ;
  wire NLW_instance_name_locked_UNCONNECTED;
  wire NLW_u_encoder_8b10b_INVALID_K_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \DATA[0]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .I3(index[3]),
        .O(\DATA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAA0E)) 
    \DATA[1]_i_1 
       (.I0(index[2]),
        .I1(index[3]),
        .I2(index[0]),
        .I3(index[1]),
        .O(\DATA[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h53FC)) 
    \DATA[2]_i_1 
       (.I0(index[3]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(index[0]),
        .O(\DATA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5A15)) 
    \DATA[3]_i_1 
       (.I0(index[3]),
        .I1(index[2]),
        .I2(index[1]),
        .I3(index[0]),
        .O(\DATA[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \DATA[4]_i_1 
       (.I0(index[3]),
        .I1(index[1]),
        .I2(index[2]),
        .I3(index[0]),
        .O(\DATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFF6)) 
    \DATA[5]_i_1 
       (.I0(index[2]),
        .I1(index[1]),
        .I2(index[3]),
        .I3(index[0]),
        .O(\DATA[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h737F)) 
    \DATA[6]_i_1 
       (.I0(index[3]),
        .I1(index[0]),
        .I2(index[1]),
        .I3(index[2]),
        .O(\DATA[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[0] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\DATA[0]_i_1_n_0 ),
        .Q(DATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[1] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\DATA[1]_i_1_n_0 ),
        .Q(DATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[2] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\DATA[2]_i_1_n_0 ),
        .Q(DATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[3] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\DATA[3]_i_1_n_0 ),
        .Q(DATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[4] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\DATA[4]_i_1_n_0 ),
        .Q(DATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[5] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\DATA[5]_i_1_n_0 ),
        .Q(DATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[6] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\DATA[6]_i_1_n_0 ),
        .Q(DATA[6]),
        .R(1'b0));
  OBUF LOAD_OBUF_inst
       (.I(1'b1),
        .O(LOAD));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  OBUF SERIAL_DATA_OBUF_inst
       (.I(SERIAL_DATA_OBUF),
        .O(SERIAL_DATA));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index[0]),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index[0]),
        .I1(index[1]),
        .O(\index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h9444)) 
    \index[2]_i_1 
       (.I0(index[3]),
        .I1(index[2]),
        .I2(index[0]),
        .I3(index[1]),
        .O(\index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h402A)) 
    \index[3]_i_1 
       (.I0(index[3]),
        .I1(index[0]),
        .I2(index[1]),
        .I3(index[2]),
        .O(\index[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\index[0]_i_1_n_0 ),
        .Q(index[0]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\index[1]_i_1_n_0 ),
        .Q(index[1]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\index[2]_i_1_n_0 ),
        .Q(index[2]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(TX_CLK),
        .CE(1'b1),
        .D(\index[3]_i_1_n_0 ),
        .Q(index[3]),
        .R(RST_IBUF));
  clk_wiz_0 instance_name
       (.clk_in1(CLK),
        .clk_out1(TX_CLK),
        .locked(NLW_instance_name_locked_UNCONNECTED),
        .reset(RST_IBUF));
  (* DONT_TOUCH *) 
  encoder_8b10b u_encoder_8b10b
       (.CLK(TX_CLK),
        .DATA({1'b0,DATA}),
        .INVALID_K(NLW_u_encoder_8b10b_INVALID_K_UNCONNECTED),
        .K(1'b0),
        .RST_L(RST_L),
        .TX_DATA(TX_DATA));
  LUT1 #(
    .INIT(2'h1)) 
    u_encoder_8b10b_i_1
       (.I0(RST_IBUF),
        .O(RST_L));
  (* DONT_TOUCH *) 
  parallel_to_serial u_parallel_to_serial
       (.CLK(TX_CLK),
        .LOAD(1'b1),
        .PARALLEL_DATA(TX_DATA),
        .RST_L(RST_L),
        .SERIAL_DATA(SERIAL_DATA_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
