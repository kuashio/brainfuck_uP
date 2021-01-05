// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.2.446
// Netlist written on Tue Jan 05 11:21:01 2021
//
// Verilog Description of module brainfuck_uP
//

module brainfuck_uP (inPort, portRD, incoming, portWR, outPort, bfup_clk, 
            reset, p, pData, RD, WR, pc_pins, instruction) /* synthesis syn_module_defined=1 */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(35[8:20])
    input [7:0]inPort;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    output portRD;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(38[13:19])
    input incoming;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(39[8:16])
    output portWR;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(41[13:19])
    output [7:0]outPort;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    input bfup_clk;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(45[8:16])
    input reset;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(46[8:13])
    output [16:0]p;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    inout [7:0]pData;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(50[14:19])
    output RD;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(51[13:15])
    output WR;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(52[13:15])
    output [17:0]pc_pins;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(55[16:23])
    input [7:0]instruction;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    
    wire bfup_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=bfup_clk_c */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(45[8:16])
    
    wire GND_net, VCC_net, inPort_c_7, inPort_c_6, inPort_c_5, inPort_c_4, 
        inPort_c_3, inPort_c_2, inPort_c_1, inPort_c_0, portRD_c, 
        incoming_c, portWR_c, outPort_c_7, outPort_c_6, outPort_c_5, 
        outPort_c_4, outPort_c_3, outPort_c_2, outPort_c_1, outPort_c_0, 
        reset_c, p_c_16, p_c_15, p_c_14, p_c_13, p_c_12, p_c_11, 
        p_c_10, p_c_9, p_c_8, p_c_7, p_c_6, p_c_5, p_c_4, p_c_3, 
        p_c_2, p_c_1, p_c_0, n5510, n5553, n5536, n5520, RD_c, 
        WR_c, n4774, instruction_c_7, instruction_c_6, instruction_c_5, 
        instruction_c_4, instruction_c_3, instruction_c_2, instruction_c_1, 
        instruction_c_0;
    wire [17:0]brackets;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(60[16:24])
    wire [7:0]acc;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(61[15:18])
    wire [6:0]state;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(62[15:20])
    
    wire FWD;
    wire [7:0]delay;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(64[15:20])
    
    wire drive_bus;
    wire [17:0]pc;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(70[13:15])
    wire [15:0]port_cnt;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(71[13:21])
    
    wire n111, n112, n113, n115, n117, n118, n123, n124, n125, 
        n126, n127, n128, n129, n130, n131, n132, n133, n134, 
        n135, n136, n137, n138, n139, n148, n4, n2, n2360, 
        n6690, n2258, n2255, n2253, n2252, n2251, n2250, n2249, 
        n2248, n2247, n2246, n4_adj_1, n3, n6688, n2_adj_2, n3_adj_3, 
        n227, n228, n229, n230, n231, n232, n234, n235, n236, 
        n237, n238, n239, n240, n241, n242, n5519, n6543, n2_adj_4, 
        n5577, n283, n284, n285, n286, n287, n288, n289, n290, 
        n6684, n6682, n321, n322, n323, n324, n325, n326, n327, 
        n328, n329, n330, n331, n332, n333, n334, n335, n336, 
        n337, n338, n340, n341, n342, n343, n344, n345, n346, 
        n347, n348, n349, n350, n351, n352, n353, n354, n355, 
        n356, n5552, n3_adj_5, n5535, n5534, n5533, n3_adj_6, 
        n2_adj_7, n1, n448, n449, n450, n451, n452, n453, n454, 
        n455, n456, n457, n458, n459, n460, n461, n462, n463, 
        n464, n465, n2_adj_8, n1_adj_9, n2_adj_10, n1_adj_11, n2_adj_12, 
        n1_adj_13, n5517, n2_adj_14, n1_adj_15, n5532, n3_adj_16, 
        n3_adj_17, n5576, bfup_clk_c_enable_10, n6431, n3616, n2342, 
        n3614, n5551, n5550, n8, n5531, n2_adj_18, n3_adj_19, 
        n4_adj_20, n5549, n3612, n632, n633, n634, n635, n636, 
        n637, n638, n639, n640, n641, n642, n643, n644, n645, 
        n646, n647, n6678, n12, n6676, n3_adj_21, n5575, n5530, 
        n2_adj_22, n1_adj_23, n2_adj_24, n1_adj_25, n3604, n5516, 
        n1_adj_26, n5529, n6870, n2805, n2804, n917, n927, n930, 
        n7493, n7528, n5528, n14, n3_adj_27, n5548, n6502, n5515, 
        n25, n2245, n2831, n5527, n2_adj_28, n1075, n1076, n1077, 
        n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, 
        n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1_adj_29, 
        n5574, n1_adj_30, n2_adj_31, n3642, n2_adj_32, n7494, n7355, 
        n7354, n2803, n2802, n8_adj_33, n2149, n14_adj_34, n5547, 
        n2_adj_35, bfup_clk_c_enable_13, n1_adj_36, n4_adj_37, n2801, 
        n2800, n5526, n2799, n3_adj_38, n5514, n1_adj_39, n3036, 
        n3_adj_40, n3354, n2798, n2797, n2796, n2795, n2794, n2793, 
        n2908, n2792;
    wire [7:0]delay_7__N_171;
    
    wire WR_N_248;
    wire [16:0]p_16__N_120;
    wire [7:0]acc_7__N_155;
    
    wire RD_N_227, drive_bus_N_264, n2791, n2790, n2789;
    wire [17:0]pc_17__N_101;
    wire [17:0]brackets_17__N_137;
    
    wire portRD_N_203, portWR_N_220, n2_adj_41, n1_adj_42, n3585, 
        n2_adj_43, n1_adj_44, n2_adj_45, n1_adj_46, n3629, n5569, 
        n2_adj_47, n1_adj_48, n5546, bfup_clk_c_enable_11, n3353, 
        n3352, n6164, n6798, n3215, n3214, n3212, n3211, n1950, 
        n5568, n3210, n3209, n3208, n3207, n6672, n1966, n5567, 
        n3206, n3205, n3204, n3203, n2_adj_49, n1_adj_50, n35, 
        n6507, n3202, n3201, n3200, n3199, n3198, n3197, n3359, 
        n3358, n6856, n5513, n5525, n6854, n6670, n3196, n6154, 
        n10, n2031, n3195, n3357, n3356, n3355, n5566, n3930, 
        n5544, n33, n3_adj_51, n3021, n3023, n3032, n3033, n3034, 
        n3035, n5543, n5524, n5565, n5542, n3901, n3080, n3081, 
        n3082, n3083, n3084, n3085, n3086, n3087, n3088, n3089, 
        n3090, n3091, n3092, n3093, n3094, n3095, n3096, n3097, 
        n3338, n6796, n5564, n5563, n6153, n2_adj_52, n3_adj_53, 
        n4_adj_54, n2_adj_55, n3_adj_56, n4_adj_57, n2_adj_58, n3_adj_59, 
        n4_adj_60, n2_adj_61, n3_adj_62, n4_adj_63, n4_adj_64, n5541, 
        bfup_clk_c_enable_27, n6666, n5540, n5523, n6784, n6190, 
        pData_out_7, pData_out_6, pData_out_5, n3500, pData_out_4, 
        pData_out_3, pData_out_2, pData_out_1, pData_out_0, n6509, 
        n7530, n6178, n5562, n5512, n5539, n5561, n5522, n26, 
        n4511, n6158, n7, n6, n5521, n5538, n5537, n5511, n5557, 
        n5556, n5555, n5554, n6161, n7529, n4_adj_65, n6168, n52, 
        n48, n6167, n6166, n6162, n6163, n6155, n6156, n6160, 
        n6842, n6852, n6660, n4_adj_66, n59, n6157, n4_adj_67, 
        n7527, n106, n6165, n6159, n6175, n4_adj_68, n4_adj_69, 
        n4_adj_70, n10_adj_71, n9, n7_adj_72, n6848, n4_adj_73, 
        n4_adj_74, n4_adj_75, n4_adj_76, n4_adj_77, n4_adj_78, n6772, 
        n6654, n6652, n6648, n6642, n6764, n6760, n6758, n6636, 
        n14_adj_79, n6634, n6630, n6114, n7180, n6624, n6622, 
        n10_adj_80, n6744, n33_adj_81, n6_adj_82, n7526, n6618, 
        n7524, n30, n7523, n7522, n7521, n7520, n7518, n7517, 
        n4_adj_83, n7516, n7515, n7514, n6375, n7513, n7512, n7511, 
        n7510, n6610, n9_adj_84, n7509, n6866, n7508, n6864, n6501, 
        n28, n6860, n6606, n7507, n6720, n7506, n19, n7525, 
        n6575, n7505, n7504, n7503, n7502, n6846, n7501, n7500, 
        n6824, n4_adj_85, n7499, n7498, n6_adj_86, n7497, n7496, 
        n15, n7495, n20, n37, n35_adj_87, n34, n32, n31, n6702, 
        n6588, n6586, n7492, n6584, n31_adj_88, n6582, n6187, 
        n6696, n26_adj_89, n6580, n6694, n7490, n4_adj_90, n6578, 
        n6549, n6834, n6112;
    
    VHI i2 (.Z(VCC_net));
    FD1S3IX brackets__i14 (.D(brackets_17__N_137[14]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[14]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i14.GSR = "ENABLED";
    CCU2D add_826_5 (.A0(instruction_c_1), .B0(instruction_c_0), .C0(n288), 
          .D0(pData_out_2), .A1(instruction_c_1), .B1(instruction_c_0), 
          .C1(n287), .D1(pData_out_3), .CIN(n5575), .COUT(n5576), .S0(n3357), 
          .S1(n3356));
    defparam add_826_5.INIT0 = 16'hb874;
    defparam add_826_5.INIT1 = 16'hb874;
    defparam add_826_5.INJECT1_0 = "NO";
    defparam add_826_5.INJECT1_1 = "NO";
    CCU2D add_114_15 (.A0(pc[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5534), 
          .COUT(n5535), .S0(n325), .S1(n324));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_15.INIT0 = 16'h5aaa;
    defparam add_114_15.INIT1 = 16'h5aaa;
    defparam add_114_15.INJECT1_0 = "NO";
    defparam add_114_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_116_3_lut (.A(instruction_c_2), .B(instruction_c_3), 
         .C(instruction_c_1), .Z(n7512)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_116_3_lut.init = 16'hf7f7;
    FD1S3IX brackets__i13 (.D(brackets_17__N_137[13]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[13]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i13.GSR = "ENABLED";
    FD1S3IX brackets__i12 (.D(brackets_17__N_137[12]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[12]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i12.GSR = "ENABLED";
    FD1S3IX brackets__i11 (.D(brackets_17__N_137[11]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[11]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i11.GSR = "ENABLED";
    FD1S3IX brackets__i10 (.D(brackets_17__N_137[10]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[10]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i10.GSR = "ENABLED";
    CCU2D add_826_3 (.A0(instruction_c_1), .B0(instruction_c_0), .C0(n290), 
          .D0(pData_out_0), .A1(instruction_c_1), .B1(instruction_c_0), 
          .C1(n289), .D1(pData_out_1), .CIN(n5574), .COUT(n5575), .S0(n3359), 
          .S1(n3358));
    defparam add_826_3.INIT0 = 16'h74b8;
    defparam add_826_3.INIT1 = 16'hb874;
    defparam add_826_3.INJECT1_0 = "NO";
    defparam add_826_3.INJECT1_1 = "NO";
    CCU2D sub_124_add_2_3 (.A0(pc[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5519), 
          .COUT(n5520), .S0(n464), .S1(n463));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_3.INIT0 = 16'h5555;
    defparam sub_124_add_2_3.INIT1 = 16'h5555;
    defparam sub_124_add_2_3.INJECT1_0 = "NO";
    defparam sub_124_add_2_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n1_adj_13), .B(n2_adj_12), .C(n227), .D(state[6]), 
         .Z(p_16__N_120[15])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut.init = 16'hfeee;
    FD1P3IX port_cnt__i1 (.D(n6158), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i1.GSR = "ENABLED";
    CCU2D add_151_11 (.A0(port_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5550), .COUT(n5551), .S0(n638), .S1(n637));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_11.INIT0 = 16'h5aaa;
    defparam add_151_11.INIT1 = 16'h5aaa;
    defparam add_151_11.INJECT1_0 = "NO";
    defparam add_151_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n329), .B(pc[9]), .C(state[4]), .D(n2360), .Z(n6652)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut.init = 16'heca0;
    FD1S3IX brackets__i9 (.D(brackets_17__N_137[9]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[9]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i9.GSR = "ENABLED";
    CCU2D add_151_9 (.A0(port_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5549), .COUT(n5550), .S0(n640), .S1(n639));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_9.INIT0 = 16'h5aaa;
    defparam add_151_9.INIT1 = 16'h5aaa;
    defparam add_151_9.INJECT1_0 = "NO";
    defparam add_151_9.INJECT1_1 = "NO";
    FD1S3IX brackets__i0 (.D(brackets_17__N_137[0]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i0.GSR = "ENABLED";
    CCU2D sub_124_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n5519), 
          .S1(n465));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_1.INIT0 = 16'hF000;
    defparam sub_124_add_2_1.INIT1 = 16'h5555;
    defparam sub_124_add_2_1.INJECT1_0 = "NO";
    defparam sub_124_add_2_1.INJECT1_1 = "NO";
    FD1S3IX brackets__i8 (.D(brackets_17__N_137[8]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[8]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i8.GSR = "ENABLED";
    FD1S3IX brackets__i7 (.D(brackets_17__N_137[7]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i7.GSR = "ENABLED";
    CCU2D add_114_13 (.A0(pc[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5533), 
          .COUT(n5534), .S0(n327), .S1(n326));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_13.INIT0 = 16'h5aaa;
    defparam add_114_13.INIT1 = 16'h5aaa;
    defparam add_114_13.INJECT1_0 = "NO";
    defparam add_114_13.INJECT1_1 = "NO";
    LUT4 select_490_Select_15_i2_4_lut (.A(p_c_15), .B(state[0]), .C(n2790), 
         .D(n2831), .Z(n2_adj_12)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_15_i2_4_lut.init = 16'hc088;
    LUT4 mux_835_i16_4_lut (.A(n124), .B(p_c_15), .C(n2149), .D(n33), 
         .Z(n227)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i16_4_lut.init = 16'hcac0;
    FD1S3IX brackets__i6 (.D(brackets_17__N_137[6]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i6.GSR = "ENABLED";
    FD1S3IX brackets__i5 (.D(brackets_17__N_137[5]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i5.GSR = "ENABLED";
    FD1S3IX acc__i0 (.D(acc_7__N_155[0]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_1 (.A(n3087), .B(n3_adj_21), .C(n6684), .D(state[5]), 
         .Z(pc_17__N_101[10])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_1.init = 16'hfefc;
    CCU2D add_151_7 (.A0(port_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5548), .COUT(n5549), .S0(n642), .S1(n641));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_7.INIT0 = 16'h5aaa;
    defparam add_151_7.INIT1 = 16'h5aaa;
    defparam add_151_7.INJECT1_0 = "NO";
    defparam add_151_7.INJECT1_1 = "NO";
    CCU2D add_151_5 (.A0(port_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5547), .COUT(n5548), .S0(n644), .S1(n643));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_5.INIT0 = 16'h5aaa;
    defparam add_151_5.INIT1 = 16'h5aaa;
    defparam add_151_5.INJECT1_0 = "NO";
    defparam add_151_5.INJECT1_1 = "NO";
    CCU2D add_826_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(instruction_c_1), .B1(instruction_c_0), .C1(GND_net), .D1(GND_net), 
          .COUT(n5574));
    defparam add_826_1.INIT0 = 16'hF000;
    defparam add_826_1.INIT1 = 16'hbbbb;
    defparam add_826_1.INJECT1_0 = "NO";
    defparam add_826_1.INJECT1_1 = "NO";
    FD1S3IX brackets__i4 (.D(brackets_17__N_137[4]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i4.GSR = "ENABLED";
    FD1P3IX outPort__i1 (.D(pData_out_0), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_0));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i1.GSR = "ENABLED";
    FD1P3IX port_cnt__i0 (.D(n6163), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i0.GSR = "ENABLED";
    FD1S3IX pc__i0 (.D(pc_17__N_101[0]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i0.GSR = "ENABLED";
    FD1S3JX RD_293 (.D(RD_N_227), .CK(bfup_clk_c), .PD(n7524), .Q(RD_c));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam RD_293.GSR = "ENABLED";
    FD1S3JX drive_bus_294 (.D(drive_bus_N_264), .CK(bfup_clk_c), .PD(n7524), 
            .Q(drive_bus));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam drive_bus_294.GSR = "ENABLED";
    FD1S3JX WR_295 (.D(WR_N_248), .CK(bfup_clk_c), .PD(n7524), .Q(WR_c));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam WR_295.GSR = "ENABLED";
    FD1S3JX portRD_296 (.D(portRD_N_203), .CK(bfup_clk_c), .PD(n7524), 
            .Q(portRD_c));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam portRD_296.GSR = "ENABLED";
    FD1S3JX portWR_297 (.D(portWR_N_220), .CK(bfup_clk_c), .PD(n7524), 
            .Q(portWR_c));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam portWR_297.GSR = "ENABLED";
    FD1P3IX delay_i0 (.D(n118), .SP(state[6]), .CD(n7524), .CK(bfup_clk_c), 
            .Q(delay[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i0.GSR = "ENABLED";
    FD1S3IX p__i1 (.D(p_16__N_120[0]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_0));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i1.GSR = "ENABLED";
    FD1P3IX outPort__i8 (.D(pData_out_7), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_7));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i8.GSR = "ENABLED";
    FD1S3IX brackets__i3 (.D(brackets_17__N_137[3]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i3.GSR = "ENABLED";
    FD1P3IX outPort__i7 (.D(pData_out_6), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_6));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i7.GSR = "ENABLED";
    FD1S3IX brackets__i2 (.D(brackets_17__N_137[2]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i2.GSR = "ENABLED";
    FD1P3IX outPort__i6 (.D(pData_out_5), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_5));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i6.GSR = "ENABLED";
    FD1P3IX outPort__i5 (.D(pData_out_4), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_4));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i5.GSR = "ENABLED";
    FD1P3IX outPort__i4 (.D(pData_out_3), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_3));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i4.GSR = "ENABLED";
    FD1P3IX outPort__i3 (.D(pData_out_2), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_2));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i3.GSR = "ENABLED";
    FD1P3IX outPort__i2 (.D(pData_out_1), .SP(bfup_clk_c_enable_10), .CD(n7524), 
            .CK(bfup_clk_c), .Q(outPort_c_1));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam outPort__i2.GSR = "ENABLED";
    FD1S3IX acc__i7 (.D(acc_7__N_155[7]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i7.GSR = "ENABLED";
    FD1S3IX acc__i6 (.D(acc_7__N_155[6]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i6.GSR = "ENABLED";
    FD1S3IX acc__i5 (.D(acc_7__N_155[5]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i5.GSR = "ENABLED";
    FD1S3IX acc__i4 (.D(acc_7__N_155[4]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i4.GSR = "ENABLED";
    FD1S3IX acc__i3 (.D(acc_7__N_155[3]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i3.GSR = "ENABLED";
    FD1S3IX acc__i2 (.D(acc_7__N_155[2]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i2.GSR = "ENABLED";
    FD1S3IX acc__i1 (.D(acc_7__N_155[1]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(acc[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam acc__i1.GSR = "ENABLED";
    FD1S3IX brackets__i17 (.D(brackets_17__N_137[17]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[17]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i17.GSR = "ENABLED";
    CCU2D add_114_11 (.A0(pc[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5532), 
          .COUT(n5533), .S0(n329), .S1(n328));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_11.INIT0 = 16'h5aaa;
    defparam add_114_11.INIT1 = 16'h5aaa;
    defparam add_114_11.INJECT1_0 = "NO";
    defparam add_114_11.INJECT1_1 = "NO";
    LUT4 mux_721_i11_3_lut (.A(n455), .B(n328), .C(n3930), .Z(n3087)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i11_3_lut.init = 16'hacac;
    LUT4 select_503_Select_10_i3_4_lut (.A(n328), .B(state[2]), .C(pc[10]), 
         .D(n7494), .Z(n3_adj_21)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_10_i3_4_lut.init = 16'hc088;
    FD1S3IX brackets__i16 (.D(brackets_17__N_137[16]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[16]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i16.GSR = "ENABLED";
    FD1S3IX brackets__i1 (.D(brackets_17__N_137[1]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(brackets[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i1.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(n3616), .CK(bfup_clk_c), .CD(n7524), .Q(state[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam state_FSM_i0.GSR = "ENABLED";
    CCU2D add_151_3 (.A0(port_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5546), .COUT(n5547), .S0(n646), .S1(n645));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_3.INIT0 = 16'h5aaa;
    defparam add_151_3.INIT1 = 16'h5aaa;
    defparam add_151_3.INJECT1_0 = "NO";
    defparam add_151_3.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(n2252), .B(n6682), .C(state[0]), .Z(n6684)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut.init = 16'hecec;
    CCU2D add_114_9 (.A0(pc[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5531), 
          .COUT(n5532), .S0(n331), .S1(n330));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_9.INIT0 = 16'h5aaa;
    defparam add_114_9.INIT1 = 16'h5aaa;
    defparam add_114_9.INJECT1_0 = "NO";
    defparam add_114_9.INJECT1_1 = "NO";
    FD1P3AX FWD_298 (.D(n3642), .SP(bfup_clk_c_enable_11), .CK(bfup_clk_c), 
            .Q(FWD));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam FWD_298.GSR = "ENABLED";
    LUT4 mux_612_i16_3_lut (.A(n341), .B(n124), .C(instruction_c_1), .Z(n2790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i16_3_lut.init = 16'hcaca;
    LUT4 mux_879_i11_3_lut (.A(n3205), .B(n328), .C(n3215), .Z(n2252)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i11_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_2 (.A(n328), .B(pc[10]), .C(state[4]), .D(n2360), 
         .Z(n6682)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_2.init = 16'heca0;
    CCU2D add_114_7 (.A0(pc[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5530), 
          .COUT(n5531), .S0(n333), .S1(n332));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_7.INIT0 = 16'h5aaa;
    defparam add_114_7.INIT1 = 16'h5aaa;
    defparam add_114_7.INJECT1_0 = "NO";
    defparam add_114_7.INJECT1_1 = "NO";
    CCU2D add_88_17 (.A0(p_c_15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5517), 
          .S0(n124), .S1(n123));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_17.INIT0 = 16'h5aaa;
    defparam add_88_17.INIT1 = 16'h5aaa;
    defparam add_88_17.INJECT1_0 = "NO";
    defparam add_88_17.INJECT1_1 = "NO";
    LUT4 i1008_2_lut_rep_97_3_lut_4_lut (.A(instruction_c_0), .B(n7509), 
         .C(n48), .D(n7512), .Z(n7493)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(146[7:10])
    defparam i1008_2_lut_rep_97_3_lut_4_lut.init = 16'hffef;
    CCU2D add_151_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5546), .S1(n647));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_1.INIT0 = 16'hF000;
    defparam add_151_1.INIT1 = 16'h5555;
    defparam add_151_1.INJECT1_0 = "NO";
    defparam add_151_1.INJECT1_1 = "NO";
    CCU2D add_114_5 (.A0(pc[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5529), 
          .COUT(n5530), .S0(n335), .S1(n334));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_5.INIT0 = 16'h5aaa;
    defparam add_114_5.INIT1 = 16'h5aaa;
    defparam add_114_5.INJECT1_0 = "NO";
    defparam add_114_5.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_17 (.A0(p_c_15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5544), 
          .S0(n341), .S1(n340));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_17.INIT0 = 16'h5555;
    defparam sub_115_add_2_17.INIT1 = 16'h5555;
    defparam sub_115_add_2_17.INJECT1_0 = "NO";
    defparam sub_115_add_2_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_3 (.A(n3086), .B(n3_adj_38), .C(n6690), .D(state[5]), 
         .Z(pc_17__N_101[11])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_3.init = 16'hfefc;
    PFUMX i4399 (.BLUT(n7355), .ALUT(n7354), .C0(RD_c), .Z(RD_N_227));
    CCU2D add_832_19 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[16]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[17]), 
          .D1(GND_net), .CIN(n5569), .S0(n1076), .S1(n1075));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_19.INIT0 = 16'h9696;
    defparam add_832_19.INIT1 = 16'h9696;
    defparam add_832_19.INJECT1_0 = "NO";
    defparam add_832_19.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_4 (.A(n1_adj_15), .B(n2_adj_14), .C(state[6]), .D(n4511), 
         .Z(p_16__N_120[16])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_4.init = 16'hfeee;
    CCU2D add_88_15 (.A0(p_c_13), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5516), 
          .COUT(n5517), .S0(n126), .S1(n125));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_15.INIT0 = 16'h5aaa;
    defparam add_88_15.INIT1 = 16'h5aaa;
    defparam add_88_15.INJECT1_0 = "NO";
    defparam add_88_15.INJECT1_1 = "NO";
    CCU2D add_832_17 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[14]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[15]), 
          .D1(GND_net), .CIN(n5568), .COUT(n5569), .S0(n1078), .S1(n1077));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_17.INIT0 = 16'h9696;
    defparam add_832_17.INIT1 = 16'h9696;
    defparam add_832_17.INJECT1_0 = "NO";
    defparam add_832_17.INJECT1_1 = "NO";
    LUT4 mux_721_i12_3_lut (.A(n454), .B(n327), .C(n3930), .Z(n3086)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i12_3_lut.init = 16'hacac;
    LUT4 select_740_Select_0_i10_2_lut (.A(state[2]), .B(state[1]), .Z(n2342)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_740_Select_0_i10_2_lut.init = 16'heeee;
    CCU2D add_114_3 (.A0(pc[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5528), 
          .COUT(n5529), .S0(n337), .S1(n336));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_3.INIT0 = 16'h5aaa;
    defparam add_114_3.INIT1 = 16'h5aaa;
    defparam add_114_3.INJECT1_0 = "NO";
    defparam add_114_3.INJECT1_1 = "NO";
    CCU2D add_114_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n5528), 
          .S1(n338));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_1.INIT0 = 16'hF000;
    defparam add_114_1.INIT1 = 16'h5555;
    defparam add_114_1.INJECT1_0 = "NO";
    defparam add_114_1.INJECT1_1 = "NO";
    CCU2D add_832_15 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[12]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[13]), 
          .D1(GND_net), .CIN(n5567), .COUT(n5568), .S0(n1080), .S1(n1079));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_15.INIT0 = 16'h9696;
    defparam add_832_15.INIT1 = 16'h9696;
    defparam add_832_15.INJECT1_0 = "NO";
    defparam add_832_15.INJECT1_1 = "NO";
    CCU2D add_832_13 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[10]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[11]), 
          .D1(GND_net), .CIN(n5566), .COUT(n5567), .S0(n1082), .S1(n1081));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_13.INIT0 = 16'h9696;
    defparam add_832_13.INIT1 = 16'h9696;
    defparam add_832_13.INJECT1_0 = "NO";
    defparam add_832_13.INJECT1_1 = "NO";
    LUT4 select_503_Select_11_i3_4_lut (.A(n327), .B(state[2]), .C(pc[11]), 
         .D(n7494), .Z(n3_adj_38)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_11_i3_4_lut.init = 16'hc088;
    CCU2D add_832_11 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[8]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[9]), 
          .D1(GND_net), .CIN(n5565), .COUT(n5566), .S0(n1084), .S1(n1083));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_11.INIT0 = 16'h9696;
    defparam add_832_11.INIT1 = 16'h9696;
    defparam add_832_11.INJECT1_0 = "NO";
    defparam add_832_11.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_15 (.A0(p_c_13), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5543), 
          .COUT(n5544), .S0(n343), .S1(n342));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_15.INIT0 = 16'h5555;
    defparam sub_115_add_2_15.INIT1 = 16'h5555;
    defparam sub_115_add_2_15.INJECT1_0 = "NO";
    defparam sub_115_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_13 (.A0(p_c_11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_12), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5542), 
          .COUT(n5543), .S0(n345), .S1(n344));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_13.INIT0 = 16'h5555;
    defparam sub_115_add_2_13.INIT1 = 16'h5555;
    defparam sub_115_add_2_13.INJECT1_0 = "NO";
    defparam sub_115_add_2_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_5 (.A(n2251), .B(n6688), .C(state[0]), .Z(n6690)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut_adj_5.init = 16'hecec;
    LUT4 mux_879_i12_3_lut (.A(n3206), .B(n327), .C(n3215), .Z(n2251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i12_3_lut.init = 16'hcaca;
    CCU2D add_832_9 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[6]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[7]), 
          .D1(GND_net), .CIN(n5564), .COUT(n5565), .S0(n1086), .S1(n1085));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_9.INIT0 = 16'h9696;
    defparam add_832_9.INIT1 = 16'h9696;
    defparam add_832_9.INJECT1_0 = "NO";
    defparam add_832_9.INJECT1_1 = "NO";
    CCU2D sub_124_add_2_19 (.A0(pc[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5527), 
          .S0(n448));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_19.INIT0 = 16'h5555;
    defparam sub_124_add_2_19.INIT1 = 16'h0000;
    defparam sub_124_add_2_19.INJECT1_0 = "NO";
    defparam sub_124_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_124_add_2_17 (.A0(pc[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5526), 
          .COUT(n5527), .S0(n450), .S1(n449));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_17.INIT0 = 16'h5555;
    defparam sub_124_add_2_17.INIT1 = 16'h5555;
    defparam sub_124_add_2_17.INJECT1_0 = "NO";
    defparam sub_124_add_2_17.INJECT1_1 = "NO";
    CCU2D add_832_7 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[4]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[5]), 
          .D1(GND_net), .CIN(n5563), .COUT(n5564), .S0(n1088), .S1(n1087));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_7.INIT0 = 16'h9696;
    defparam add_832_7.INIT1 = 16'h9696;
    defparam add_832_7.INJECT1_0 = "NO";
    defparam add_832_7.INJECT1_1 = "NO";
    LUT4 select_490_Select_16_i2_4_lut (.A(p_c_16), .B(state[0]), .C(n2789), 
         .D(n2831), .Z(n2_adj_14)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_16_i2_4_lut.init = 16'hc088;
    CCU2D add_832_5 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[2]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[3]), 
          .D1(GND_net), .CIN(n5562), .COUT(n5563), .S0(n1090), .S1(n1089));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_5.INIT0 = 16'h9696;
    defparam add_832_5.INIT1 = 16'h9696;
    defparam add_832_5.INJECT1_0 = "NO";
    defparam add_832_5.INJECT1_1 = "NO";
    FD1P3JX delay_i4 (.D(delay_7__N_171[4]), .SP(bfup_clk_c_enable_13), 
            .PD(n7524), .CK(bfup_clk_c), .Q(delay[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i4.GSR = "ENABLED";
    LUT4 select_490_Select_14_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_14), .Z(n1_adj_11)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_14_i1_2_lut_3_lut.init = 16'h1010;
    FD1P3JX delay_i2 (.D(delay_7__N_171[2]), .SP(bfup_clk_c_enable_13), 
            .PD(n7524), .CK(bfup_clk_c), .Q(delay[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i2.GSR = "ENABLED";
    FD1S3IX brackets__i15 (.D(brackets_17__N_137[15]), .CK(bfup_clk_c), 
            .CD(n7524), .Q(brackets[15]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam brackets__i15.GSR = "ENABLED";
    LUT4 i2055_2_lut (.A(inPort_c_1), .B(incoming_c), .Z(n289)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i2055_2_lut.init = 16'h8888;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1909_4_lut (.A(n33), .B(p_c_16), .C(n2149), .D(n123), .Z(n4511)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i1909_4_lut.init = 16'hcac0;
    LUT4 select_490_Select_5_i2_4_lut (.A(p_c_5), .B(state[0]), .C(n2800), 
         .D(n2831), .Z(n2_adj_45)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_5_i2_4_lut.init = 16'hc088;
    FD1P3IX port_cnt__i2 (.D(n6153), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i2.GSR = "ENABLED";
    CCU2D sub_115_add_2_11 (.A0(p_c_9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_10), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5541), 
          .COUT(n5542), .S0(n347), .S1(n346));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_11.INIT0 = 16'h5555;
    defparam sub_115_add_2_11.INIT1 = 16'h5555;
    defparam sub_115_add_2_11.INJECT1_0 = "NO";
    defparam sub_115_add_2_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_6 (.A(n327), .B(pc[11]), .C(state[4]), .D(n2360), 
         .Z(n6688)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_6.init = 16'heca0;
    CCU2D sub_124_add_2_15 (.A0(pc[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5525), 
          .COUT(n5526), .S0(n452), .S1(n451));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_15.INIT0 = 16'h5555;
    defparam sub_124_add_2_15.INIT1 = 16'h5555;
    defparam sub_124_add_2_15.INJECT1_0 = "NO";
    defparam sub_124_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_9 (.A0(p_c_7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_8), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5540), 
          .COUT(n5541), .S0(n349), .S1(n348));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_9.INIT0 = 16'h5555;
    defparam sub_115_add_2_9.INIT1 = 16'h5555;
    defparam sub_115_add_2_9.INJECT1_0 = "NO";
    defparam sub_115_add_2_9.INJECT1_1 = "NO";
    BB pData_pad_7 (.I(acc[7]), .T(n3500), .B(pData[7]), .O(pData_out_7));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    LUT4 mux_835_i6_4_lut (.A(n134), .B(p_c_5), .C(n2149), .D(n33), 
         .Z(n237)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i6_4_lut.init = 16'hcac0;
    LUT4 mux_612_i6_3_lut (.A(n351), .B(n134), .C(instruction_c_1), .Z(n2800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i6_3_lut.init = 16'hcaca;
    LUT4 i1936_3_lut (.A(n340), .B(n123), .C(instruction_c_1), .Z(n2789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    defparam i1936_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_7 (.A(n6606), .B(WR_c), .C(n6610), .D(n6375), 
         .Z(WR_N_248)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_7.init = 16'heeea;
    LUT4 i1_4_lut_adj_8 (.A(n3085), .B(n3_adj_40), .C(n6672), .D(state[5]), 
         .Z(pc_17__N_101[12])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_8.init = 16'hfefc;
    LUT4 select_490_Select_4_i2_4_lut (.A(p_c_4), .B(state[0]), .C(n2801), 
         .D(n2831), .Z(n2_adj_43)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_4_i2_4_lut.init = 16'hc088;
    LUT4 mux_721_i13_3_lut (.A(n453), .B(n326), .C(n3930), .Z(n3085)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i13_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_3_lut (.A(n48), .B(n7500), .C(n644), .Z(n6157)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_9 (.A(n48), .B(n7500), .C(n643), .Z(n6160)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_9.init = 16'h1010;
    LUT4 mux_835_i7_4_lut (.A(n133), .B(p_c_6), .C(n2149), .D(n33), 
         .Z(n236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i7_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_adj_10 (.A(n48), .B(n7500), .C(n642), .Z(n6168)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_10.init = 16'h1010;
    LUT4 mux_721_i1_3_lut (.A(n465), .B(n338), .C(n3930), .Z(n3097)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i1_3_lut.init = 16'hacac;
    LUT4 select_503_Select_0_i3_4_lut (.A(n338), .B(state[2]), .C(pc[0]), 
         .D(n7494), .Z(n3_adj_27)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_0_i3_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_11 (.A(n4), .B(pc[0]), .C(n2), .D(n2360), .Z(n6666)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_11.init = 16'hfefa;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(n48), .B(n7500), .C(n641), .Z(n6167)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'h1010;
    LUT4 mux_612_i7_3_lut (.A(n350), .B(n133), .C(instruction_c_1), .Z(n2799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i7_3_lut.init = 16'hcaca;
    LUT4 select_503_Select_12_i3_4_lut (.A(n326), .B(state[2]), .C(pc[12]), 
         .D(n7494), .Z(n3_adj_40)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_12_i3_4_lut.init = 16'hc088;
    LUT4 select_503_Select_0_i4_4_lut (.A(n3195), .B(state[0]), .C(n338), 
         .D(n3215), .Z(n4)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_0_i4_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_adj_13 (.A(n48), .B(n7500), .C(n640), .Z(n6166)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_13.init = 16'h1010;
    LUT4 i46_4_lut_else_2_lut (.A(instruction_c_4), .B(instruction_c_6), 
         .C(instruction_c_0), .D(instruction_c_1), .Z(n7525)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(124[6] 176[13])
    defparam i46_4_lut_else_2_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_adj_14 (.A(n48), .B(n7500), .C(n639), .Z(n6165)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_14.init = 16'h1010;
    LUT4 i2_4_lut_adj_15 (.A(n1_adj_39), .B(n2_adj_4), .C(n235), .D(state[6]), 
         .Z(p_16__N_120[7])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_15.init = 16'hfeee;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(n48), .B(n7500), .C(n638), .Z(n6161)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_16.init = 16'h1010;
    LUT4 i1_3_lut_adj_17 (.A(n2250), .B(n6670), .C(state[0]), .Z(n6672)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut_adj_17.init = 16'hecec;
    LUT4 mux_879_i13_3_lut (.A(n3207), .B(n326), .C(n3215), .Z(n2250)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i13_3_lut.init = 16'hcaca;
    LUT4 select_490_Select_7_i2_4_lut (.A(p_c_7), .B(state[0]), .C(n2798), 
         .D(n2831), .Z(n2_adj_4)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_7_i2_4_lut.init = 16'hc088;
    LUT4 instruction_c_2_bdd_4_lut_then_4_lut (.A(instruction_c_5), .B(instruction_c_4), 
         .C(instruction_c_6), .D(instruction_c_1), .Z(n7529)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam instruction_c_2_bdd_4_lut_then_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_18 (.A(n326), .B(pc[12]), .C(state[4]), .D(n2360), 
         .Z(n6670)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_18.init = 16'heca0;
    LUT4 mux_835_i8_4_lut (.A(n132), .B(p_c_7), .C(n2149), .D(n33), 
         .Z(n235)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i8_4_lut.init = 16'hcac0;
    LUT4 instruction_c_2_bdd_4_lut_else_4_lut (.A(instruction_c_5), .B(instruction_c_4), 
         .C(instruction_c_6), .D(instruction_c_1), .Z(n7528)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))))) */ ;
    defparam instruction_c_2_bdd_4_lut_else_4_lut.init = 16'h4200;
    LUT4 i1_2_lut_3_lut_adj_19 (.A(n48), .B(n7500), .C(n637), .Z(n6162)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_19.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(n48), .B(n7500), .C(n636), .Z(n6154)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_20.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_21 (.A(n48), .B(n7500), .C(n635), .Z(n6155)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_21.init = 16'h1010;
    LUT4 select_503_Select_0_i2_2_lut (.A(n338), .B(state[4]), .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_0_i2_2_lut.init = 16'h8888;
    LUT4 mux_612_i8_3_lut (.A(n349), .B(n132), .C(instruction_c_1), .Z(n2798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_22 (.A(n48), .B(n7500), .C(n634), .Z(n6159)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_22.init = 16'h1010;
    LUT4 i2_4_lut_adj_23 (.A(n1_adj_36), .B(n2_adj_32), .C(n234), .D(state[6]), 
         .Z(p_16__N_120[8])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_23.init = 16'hfeee;
    LUT4 i2178_3_lut_rep_104_4_lut (.A(instruction_c_0), .B(n7509), .C(n7510), 
         .D(n7512), .Z(n7500)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(146[7:10])
    defparam i2178_3_lut_rep_104_4_lut.init = 16'hefee;
    LUT4 i1_4_lut_adj_24 (.A(state[6]), .B(state[3]), .C(WR_c), .D(n7507), 
         .Z(n6606)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_24.init = 16'hecce;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(n48), .B(n7500), .C(n633), .Z(n6156)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h1010;
    LUT4 i1027_4_lut (.A(state[2]), .B(n7180), .C(n7492), .D(state[1]), 
         .Z(n3614)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1027_4_lut.init = 16'hce0a;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(n48), .B(n7500), .C(n632), .Z(n6164)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_26.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(n48), .B(n7500), .C(n647), .Z(n6163)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'h1010;
    LUT4 i1_3_lut_4_lut (.A(n48), .B(n7499), .C(n3901), .D(state[1]), 
         .Z(n4_adj_83)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(180[6] 204[13])
    defparam i1_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i447_2_lut_4_lut (.A(n7503), .B(n48), .C(n7499), .D(state[2]), 
         .Z(n2031)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(184[14] 189[12])
    defparam i447_2_lut_4_lut.init = 16'h5d00;
    LUT4 mux_182_i18_3_lut_4_lut (.A(n48), .B(n7495), .C(pc[17]), .D(n321), 
         .Z(n917)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(180[6] 204[13])
    defparam mux_182_i18_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut (.A(state[6]), .B(state[3]), .C(state[1]), .Z(n2360)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 mux_182_i8_3_lut_4_lut (.A(n48), .B(n7495), .C(pc[7]), .D(n331), 
         .Z(n927)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(180[6] 204[13])
    defparam mux_182_i8_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1006_2_lut_rep_109 (.A(n48), .B(instruction_c_1), .Z(n7505)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(180[6] 204[13])
    defparam i1006_2_lut_rep_109.init = 16'hdddd;
    LUT4 mux_182_i5_3_lut_4_lut (.A(n48), .B(n7495), .C(pc[4]), .D(n334), 
         .Z(n930)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(180[6] 204[13])
    defparam mux_182_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(n48), .B(n7495), .C(n3901), .D(state[1]), 
         .Z(n4_adj_85)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(180[6] 204[13])
    defparam i1_3_lut_4_lut_adj_28.init = 16'hfdf0;
    LUT4 mux_755_i6_3_lut_4_lut (.A(n7501), .B(n1950), .C(n460), .D(pc[5]), 
         .Z(n3200)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i6_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_4_lut_adj_29 (.A(n3084), .B(n3_adj_5), .C(n6696), .D(state[5]), 
         .Z(pc_17__N_101[13])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_29.init = 16'hfefc;
    LUT4 mux_755_i7_3_lut_4_lut (.A(n7501), .B(n1950), .C(n459), .D(pc[6]), 
         .Z(n3201)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i7_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_755_i10_3_lut_4_lut (.A(n7501), .B(n1950), .C(n456), .D(pc[9]), 
         .Z(n3204)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i10_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_755_i16_3_lut_4_lut (.A(n7501), .B(n1950), .C(n450), .D(pc[15]), 
         .Z(n3210)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i16_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_755_i15_3_lut_4_lut (.A(n7501), .B(n1950), .C(n451), .D(pc[14]), 
         .Z(n3209)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i15_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1040_2_lut_3_lut_4_lut (.A(n48), .B(instruction_c_1), .C(n7511), 
         .D(n7514), .Z(n3629)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(180[6] 204[13])
    defparam i1040_2_lut_3_lut_4_lut.init = 16'hd000;
    LUT4 mux_755_i18_3_lut_4_lut (.A(n7501), .B(n1950), .C(n448), .D(pc[17]), 
         .Z(n3212)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i18_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_721_i14_3_lut (.A(n452), .B(n325), .C(n3930), .Z(n3084)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i14_3_lut.init = 16'hacac;
    LUT4 mux_755_i17_3_lut_4_lut (.A(n7501), .B(n1950), .C(n449), .D(pc[16]), 
         .Z(n3211)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i17_3_lut_4_lut.init = 16'hfb40;
    LUT4 select_503_Select_13_i3_4_lut (.A(n325), .B(state[2]), .C(pc[13]), 
         .D(n7494), .Z(n3_adj_5)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_13_i3_4_lut.init = 16'hc088;
    LUT4 mux_755_i5_3_lut_4_lut (.A(n7501), .B(n1950), .C(n461), .D(pc[4]), 
         .Z(n3199)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i5_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_755_i8_3_lut_4_lut (.A(n7501), .B(n1950), .C(n458), .D(pc[7]), 
         .Z(n3202)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i8_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_4_lut_adj_30 (.A(n19), .B(n52), .C(n6798), .D(n6796), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(71[13:21])
    defparam i1_4_lut_adj_30.init = 16'hfffe;
    LUT4 i1_4_lut_adj_31 (.A(port_cnt[10]), .B(port_cnt[9]), .C(port_cnt[5]), 
         .D(port_cnt[8]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(71[13:21])
    defparam i1_4_lut_adj_31.init = 16'hfffe;
    LUT4 n2342_bdd_3_lut (.A(state[0]), .B(n2908), .C(n4_adj_65), .Z(n7355)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2342_bdd_3_lut.init = 16'h8080;
    LUT4 i64_3_lut (.A(port_cnt[2]), .B(port_cnt[4]), .C(port_cnt[3]), 
         .Z(n52)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(71[13:21])
    defparam i64_3_lut.init = 16'hc8c8;
    LUT4 i1_4_lut_adj_32 (.A(port_cnt[7]), .B(port_cnt[13]), .C(port_cnt[14]), 
         .D(port_cnt[15]), .Z(n6798)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(71[13:21])
    defparam i1_4_lut_adj_32.init = 16'hfffe;
    LUT4 i1_3_lut_adj_33 (.A(port_cnt[11]), .B(port_cnt[6]), .C(port_cnt[12]), 
         .Z(n6796)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(71[13:21])
    defparam i1_3_lut_adj_33.init = 16'hfefe;
    LUT4 i1_4_lut_adj_34 (.A(n7496), .B(brackets[9]), .C(n4_adj_73), .D(n12), 
         .Z(brackets_17__N_137[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_34.init = 16'heca0;
    LUT4 mux_755_i9_3_lut_4_lut (.A(n7501), .B(n1950), .C(n457), .D(pc[8]), 
         .Z(n3203)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i9_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_3_lut_adj_35 (.A(n48), .B(n7500), .C(n646), .Z(n6158)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_35.init = 16'h1010;
    LUT4 select_490_Select_8_i2_4_lut (.A(p_c_8), .B(state[0]), .C(n2797), 
         .D(n2831), .Z(n2_adj_32)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_8_i2_4_lut.init = 16'hc088;
    LUT4 i1_3_lut_adj_36 (.A(n3035), .B(n106), .C(state[5]), .Z(brackets_17__N_137[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_36.init = 16'hecec;
    LUT4 mux_839_i1_4_lut (.A(brackets[0]), .B(n1092), .C(n3036), .D(n7496), 
         .Z(n3035)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_839_i1_4_lut.init = 16'hca0a;
    LUT4 mux_835_i9_4_lut (.A(n131), .B(p_c_8), .C(n2149), .D(n33), 
         .Z(n234)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i9_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_37 (.A(n7496), .B(brackets[8]), .C(n4_adj_74), .D(n12), 
         .Z(brackets_17__N_137[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_37.init = 16'heca0;
    LUT4 i1_4_lut_adj_38 (.A(portRD_c), .B(n4_adj_83), .C(state[2]), .D(n7493), 
         .Z(portRD_N_203)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_38.init = 16'ha8f8;
    LUT4 mux_612_i9_3_lut (.A(n348), .B(n131), .C(instruction_c_1), .Z(n2797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i9_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state[4]), .B(state[1]), .C(state[5]), 
         .D(state[0]), .Z(n6610)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_adj_39 (.A(n2249), .B(n6694), .C(state[0]), .Z(n6696)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut_adj_39.init = 16'hecec;
    LUT4 mux_755_i12_3_lut_4_lut (.A(n7501), .B(n1950), .C(n454), .D(pc[11]), 
         .Z(n3206)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i12_3_lut_4_lut.init = 16'hfb40;
    BB pData_pad_6 (.I(acc[6]), .T(n3500), .B(pData[6]), .O(pData_out_6));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    LUT4 mux_755_i13_3_lut_4_lut (.A(n7501), .B(n1950), .C(n453), .D(pc[12]), 
         .Z(n3207)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i13_3_lut_4_lut.init = 16'hfb40;
    BB pData_pad_5 (.I(acc[5]), .T(n3500), .B(pData[5]), .O(pData_out_5));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    LUT4 i1_4_lut_adj_40 (.A(portWR_c), .B(n4_adj_85), .C(state[2]), .D(n7494), 
         .Z(portWR_N_220)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_40.init = 16'ha8f8;
    BB pData_pad_4 (.I(acc[4]), .T(n3500), .B(pData[4]), .O(pData_out_4));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    LUT4 mux_879_i14_3_lut (.A(n3208), .B(n325), .C(n3215), .Z(n2249)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i14_3_lut.init = 16'hcaca;
    BB pData_pad_3 (.I(acc[3]), .T(n3500), .B(pData[3]), .O(pData_out_3));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    BB pData_pad_2 (.I(acc[2]), .T(n3500), .B(pData[2]), .O(pData_out_2));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    BB pData_pad_1 (.I(acc[1]), .T(n3500), .B(pData[1]), .O(pData_out_1));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    BB pData_pad_0 (.I(acc[0]), .T(n3500), .B(pData[0]), .O(pData_out_0));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    OB portRD_pad (.I(portRD_c), .O(portRD));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(38[13:19])
    OB portWR_pad (.I(portWR_c), .O(portWR));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(41[13:19])
    OB outPort_pad_7 (.I(outPort_c_7), .O(outPort[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB outPort_pad_6 (.I(outPort_c_6), .O(outPort[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB outPort_pad_5 (.I(outPort_c_5), .O(outPort[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB outPort_pad_4 (.I(outPort_c_4), .O(outPort[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB outPort_pad_3 (.I(outPort_c_3), .O(outPort[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB outPort_pad_2 (.I(outPort_c_2), .O(outPort[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB outPort_pad_1 (.I(outPort_c_1), .O(outPort[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB outPort_pad_0 (.I(outPort_c_0), .O(outPort[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(42[19:26])
    OB p_pad_16 (.I(p_c_16), .O(p[16]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_15 (.I(p_c_15), .O(p[15]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_14 (.I(p_c_14), .O(p[14]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_13 (.I(p_c_13), .O(p[13]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_12 (.I(p_c_12), .O(p[12]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_11 (.I(p_c_11), .O(p[11]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_10 (.I(p_c_10), .O(p[10]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_9 (.I(p_c_9), .O(p[9]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_8 (.I(p_c_8), .O(p[8]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_7 (.I(p_c_7), .O(p[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_6 (.I(p_c_6), .O(p[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_5 (.I(p_c_5), .O(p[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_4 (.I(p_c_4), .O(p[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_3 (.I(p_c_3), .O(p[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_2 (.I(p_c_2), .O(p[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_1 (.I(p_c_1), .O(p[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB p_pad_0 (.I(p_c_0), .O(p[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(49[20:21])
    OB RD_pad (.I(RD_c), .O(RD));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(51[13:15])
    OB WR_pad (.I(WR_c), .O(WR));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(52[13:15])
    OBZ pc_pins_pad_17 (.I(pc[17]), .T(n7524), .O(pc_pins[17]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_16 (.I(pc[16]), .T(n7524), .O(pc_pins[16]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_15 (.I(pc[15]), .T(n7524), .O(pc_pins[15]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_14 (.I(pc[14]), .T(n7524), .O(pc_pins[14]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_13 (.I(pc[13]), .T(n7524), .O(pc_pins[13]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_12 (.I(pc[12]), .T(n7524), .O(pc_pins[12]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_11 (.I(pc[11]), .T(n7524), .O(pc_pins[11]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_10 (.I(pc[10]), .T(n7524), .O(pc_pins[10]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_9 (.I(pc[9]), .T(n7524), .O(pc_pins[9]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_8 (.I(pc[8]), .T(n7524), .O(pc_pins[8]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_7 (.I(pc[7]), .T(n7524), .O(pc_pins[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_6 (.I(pc[6]), .T(n7524), .O(pc_pins[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_5 (.I(pc[5]), .T(n7524), .O(pc_pins[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_4 (.I(pc[4]), .T(n7524), .O(pc_pins[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_3 (.I(pc[3]), .T(n7524), .O(pc_pins[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_2 (.I(pc[2]), .T(n7524), .O(pc_pins[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_1 (.I(pc[1]), .T(n7524), .O(pc_pins[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    OBZ pc_pins_pad_0 (.I(pc[0]), .T(n7524), .O(pc_pins[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(77[9:16])
    IB inPort_pad_7 (.I(inPort[7]), .O(inPort_c_7));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB inPort_pad_6 (.I(inPort[6]), .O(inPort_c_6));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB inPort_pad_5 (.I(inPort[5]), .O(inPort_c_5));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB inPort_pad_4 (.I(inPort[4]), .O(inPort_c_4));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB inPort_pad_3 (.I(inPort[3]), .O(inPort_c_3));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB inPort_pad_2 (.I(inPort[2]), .O(inPort_c_2));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB inPort_pad_1 (.I(inPort[1]), .O(inPort_c_1));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB inPort_pad_0 (.I(inPort[0]), .O(inPort_c_0));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(37[14:20])
    IB incoming_pad (.I(incoming), .O(incoming_c));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(39[8:16])
    IB bfup_clk_pad (.I(bfup_clk), .O(bfup_clk_c));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(45[8:16])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(46[8:13])
    IB instruction_pad_7 (.I(instruction[7]), .O(instruction_c_7));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    IB instruction_pad_6 (.I(instruction[6]), .O(instruction_c_6));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    IB instruction_pad_5 (.I(instruction[5]), .O(instruction_c_5));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    IB instruction_pad_4 (.I(instruction[4]), .O(instruction_c_4));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    IB instruction_pad_3 (.I(instruction[3]), .O(instruction_c_3));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    IB instruction_pad_2 (.I(instruction[2]), .O(instruction_c_2));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    IB instruction_pad_1 (.I(instruction[1]), .O(instruction_c_1));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    IB instruction_pad_0 (.I(instruction[0]), .O(instruction_c_0));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(56[14:25])
    FD1P3IX port_cnt__i3 (.D(n6157), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i3.GSR = "ENABLED";
    FD1P3IX port_cnt__i4 (.D(n6160), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i4.GSR = "ENABLED";
    FD1P3IX port_cnt__i5 (.D(n6168), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i5.GSR = "ENABLED";
    FD1P3IX port_cnt__i6 (.D(n6167), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i6.GSR = "ENABLED";
    FD1P3IX port_cnt__i7 (.D(n6166), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i7.GSR = "ENABLED";
    FD1P3IX port_cnt__i8 (.D(n6165), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[8]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i8.GSR = "ENABLED";
    FD1P3IX port_cnt__i9 (.D(n6161), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[9]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i9.GSR = "ENABLED";
    FD1P3IX port_cnt__i10 (.D(n6162), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[10]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i10.GSR = "ENABLED";
    FD1P3IX port_cnt__i11 (.D(n6154), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[11]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i11.GSR = "ENABLED";
    FD1P3IX port_cnt__i12 (.D(n6155), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[12]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i12.GSR = "ENABLED";
    FD1P3IX port_cnt__i13 (.D(n6159), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[13]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i13.GSR = "ENABLED";
    FD1P3IX port_cnt__i14 (.D(n6156), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[14]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i14.GSR = "ENABLED";
    FD1P3IX port_cnt__i15 (.D(n6164), .SP(bfup_clk_c_enable_27), .CD(n7524), 
            .CK(bfup_clk_c), .Q(port_cnt[15]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam port_cnt__i15.GSR = "ENABLED";
    FD1S3IX pc__i1 (.D(pc_17__N_101[1]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i1.GSR = "ENABLED";
    FD1S3IX pc__i2 (.D(pc_17__N_101[2]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i2.GSR = "ENABLED";
    FD1S3IX pc__i3 (.D(pc_17__N_101[3]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i3.GSR = "ENABLED";
    FD1S3IX pc__i4 (.D(pc_17__N_101[4]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i4.GSR = "ENABLED";
    FD1S3IX pc__i5 (.D(pc_17__N_101[5]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i5.GSR = "ENABLED";
    FD1S3IX pc__i6 (.D(pc_17__N_101[6]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i6.GSR = "ENABLED";
    FD1S3IX pc__i7 (.D(pc_17__N_101[7]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i7.GSR = "ENABLED";
    FD1S3IX pc__i8 (.D(pc_17__N_101[8]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[8]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i8.GSR = "ENABLED";
    FD1S3IX pc__i9 (.D(pc_17__N_101[9]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[9]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i9.GSR = "ENABLED";
    FD1S3IX pc__i10 (.D(pc_17__N_101[10]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[10]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i10.GSR = "ENABLED";
    FD1S3IX pc__i11 (.D(pc_17__N_101[11]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[11]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i11.GSR = "ENABLED";
    FD1S3IX pc__i12 (.D(pc_17__N_101[12]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[12]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i12.GSR = "ENABLED";
    FD1S3IX pc__i13 (.D(pc_17__N_101[13]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[13]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i13.GSR = "ENABLED";
    FD1S3IX pc__i14 (.D(pc_17__N_101[14]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[14]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i14.GSR = "ENABLED";
    FD1S3IX pc__i15 (.D(pc_17__N_101[15]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[15]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i15.GSR = "ENABLED";
    FD1S3IX pc__i16 (.D(pc_17__N_101[16]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[16]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i16.GSR = "ENABLED";
    FD1S3IX pc__i17 (.D(pc_17__N_101[17]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(pc[17]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam pc__i17.GSR = "ENABLED";
    FD1P3IX delay_i1 (.D(n117), .SP(state[6]), .CD(n7524), .CK(bfup_clk_c), 
            .Q(delay[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i1.GSR = "ENABLED";
    FD1P3IX delay_i3 (.D(n115), .SP(state[6]), .CD(n7524), .CK(bfup_clk_c), 
            .Q(delay[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_110_3_lut_4_lut (.A(instruction_c_2), .B(instruction_c_3), 
         .C(instruction_c_0), .D(instruction_c_1), .Z(n7506)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_110_3_lut_4_lut.init = 16'hff7f;
    FD1P3IX delay_i5 (.D(n113), .SP(state[6]), .CD(n7524), .CK(bfup_clk_c), 
            .Q(delay[5]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i5.GSR = "ENABLED";
    FD1P3IX delay_i6 (.D(n112), .SP(state[6]), .CD(n7524), .CK(bfup_clk_c), 
            .Q(delay[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i6.GSR = "ENABLED";
    FD1P3IX delay_i7 (.D(n111), .SP(state[6]), .CD(n7524), .CK(bfup_clk_c), 
            .Q(delay[7]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam delay_i7.GSR = "ENABLED";
    FD1S3IX p__i2 (.D(p_16__N_120[1]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_1));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_127 (.A(state[4]), .B(state[1]), .Z(n7523)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_127.init = 16'heeee;
    LUT4 i2_4_lut_adj_41 (.A(p_c_9), .B(n2_adj_35), .C(n7520), .D(n3_adj_51), 
         .Z(p_16__N_120[9])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_41.init = 16'hffce;
    LUT4 i3_3_lut_rep_113_4_lut (.A(instruction_c_6), .B(instruction_c_4), 
         .C(instruction_c_5), .D(instruction_c_7), .Z(n7509)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_3_lut_rep_113_4_lut.init = 16'hffef;
    LUT4 mux_755_i14_3_lut_4_lut (.A(n7501), .B(n1950), .C(n452), .D(pc[13]), 
         .Z(n3208)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i14_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_755_i11_3_lut_4_lut (.A(n7501), .B(n1950), .C(n455), .D(pc[10]), 
         .Z(n3205)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i11_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_755_i4_3_lut_4_lut (.A(n7501), .B(n1950), .C(n462), .D(pc[3]), 
         .Z(n3198)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i4_3_lut_4_lut.init = 16'hfb40;
    FD1S3IX p__i3 (.D(p_16__N_120[2]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_2));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i3.GSR = "ENABLED";
    FD1S3IX p__i4 (.D(p_16__N_120[3]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_3));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i4.GSR = "ENABLED";
    FD1S3IX p__i5 (.D(p_16__N_120[4]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_4));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i5.GSR = "ENABLED";
    FD1S3IX p__i6 (.D(p_16__N_120[5]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_5));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i6.GSR = "ENABLED";
    FD1S3IX p__i7 (.D(p_16__N_120[6]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_6));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i7.GSR = "ENABLED";
    FD1S3IX p__i8 (.D(p_16__N_120[7]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_7));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i8.GSR = "ENABLED";
    FD1S3IX p__i9 (.D(p_16__N_120[8]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_8));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i9.GSR = "ENABLED";
    FD1S3IX p__i10 (.D(p_16__N_120[9]), .CK(bfup_clk_c), .CD(n7524), .Q(p_c_9));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i10.GSR = "ENABLED";
    FD1S3IX p__i11 (.D(p_16__N_120[10]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(p_c_10));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i11.GSR = "ENABLED";
    FD1S3IX p__i12 (.D(p_16__N_120[11]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(p_c_11));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i12.GSR = "ENABLED";
    FD1S3IX p__i13 (.D(p_16__N_120[12]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(p_c_12));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i13.GSR = "ENABLED";
    FD1S3IX p__i14 (.D(p_16__N_120[13]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(p_c_13));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i14.GSR = "ENABLED";
    FD1S3IX p__i15 (.D(p_16__N_120[14]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(p_c_14));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i15.GSR = "ENABLED";
    FD1S3IX p__i16 (.D(p_16__N_120[15]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(p_c_15));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i16.GSR = "ENABLED";
    FD1S3IX p__i17 (.D(p_16__N_120[16]), .CK(bfup_clk_c), .CD(n7524), 
            .Q(p_c_16));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam p__i17.GSR = "ENABLED";
    FD1S3IX state_FSM_i1 (.D(state[3]), .CK(bfup_clk_c), .CD(n7524), .Q(state[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam state_FSM_i1.GSR = "ENABLED";
    CCU2D sub_124_add_2_13 (.A0(pc[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5524), 
          .COUT(n5525), .S0(n454), .S1(n453));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_13.INIT0 = 16'h5555;
    defparam sub_124_add_2_13.INIT1 = 16'h5555;
    defparam sub_124_add_2_13.INJECT1_0 = "NO";
    defparam sub_124_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_124_add_2_11 (.A0(pc[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5523), 
          .COUT(n5524), .S0(n456), .S1(n455));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_11.INIT0 = 16'h5555;
    defparam sub_124_add_2_11.INIT1 = 16'h5555;
    defparam sub_124_add_2_11.INJECT1_0 = "NO";
    defparam sub_124_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_7 (.A0(p_c_5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5539), 
          .COUT(n5540), .S0(n351), .S1(n350));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_7.INIT0 = 16'h5555;
    defparam sub_115_add_2_7.INIT1 = 16'h5555;
    defparam sub_115_add_2_7.INJECT1_0 = "NO";
    defparam sub_115_add_2_7.INJECT1_1 = "NO";
    CCU2D add_832_3 (.A0(FWD), .B0(instruction_c_1), .C0(brackets[0]), 
          .D0(GND_net), .A1(FWD), .B1(instruction_c_1), .C1(brackets[1]), 
          .D1(GND_net), .CIN(n5561), .COUT(n5562), .S0(n1092), .S1(n1091));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_3.INIT0 = 16'h6969;
    defparam add_832_3.INIT1 = 16'h9696;
    defparam add_832_3.INJECT1_0 = "NO";
    defparam add_832_3.INJECT1_1 = "NO";
    FD1S3IX state_FSM_i2 (.D(n2031), .CK(bfup_clk_c), .CD(n7524), .Q(state[3]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3IX state_FSM_i3 (.D(n3614), .CK(bfup_clk_c), .CD(n7524), .Q(state[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i4 (.D(n3612), .CK(bfup_clk_c), .CD(n7524), .Q(state[1]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3IX state_FSM_i5 (.D(n6502), .CK(bfup_clk_c), .CD(n7524), .Q(state[0]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3JX state_FSM_i6 (.D(n1_adj_26), .CK(bfup_clk_c), .PD(n7524), 
            .Q(state[6]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam state_FSM_i6.GSR = "ENABLED";
    LUT4 i1025_4_lut (.A(state[1]), .B(state[0]), .C(n7492), .D(n20), 
         .Z(n3612)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1025_4_lut.init = 16'hce0a;
    CCU2D add_832_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FWD), .B1(instruction_c_1), .C1(GND_net), .D1(GND_net), 
          .COUT(n5561));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam add_832_1.INIT0 = 16'hF000;
    defparam add_832_1.INIT1 = 16'h9999;
    defparam add_832_1.INJECT1_0 = "NO";
    defparam add_832_1.INJECT1_1 = "NO";
    CCU2D add_88_13 (.A0(p_c_11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_12), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5515), 
          .COUT(n5516), .S0(n128), .S1(n127));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_13.INIT0 = 16'h5aaa;
    defparam add_88_13.INIT1 = 16'h5aaa;
    defparam add_88_13.INJECT1_0 = "NO";
    defparam add_88_13.INJECT1_1 = "NO";
    CCU2D add_88_11 (.A0(p_c_9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_10), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5514), 
          .COUT(n5515), .S0(n130), .S1(n129));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_11.INIT0 = 16'h5aaa;
    defparam add_88_11.INIT1 = 16'h5aaa;
    defparam add_88_11.INJECT1_0 = "NO";
    defparam add_88_11.INJECT1_1 = "NO";
    CCU2D add_88_9 (.A0(p_c_7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_8), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5513), 
          .COUT(n5514), .S0(n132), .S1(n131));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_9.INIT0 = 16'h5aaa;
    defparam add_88_9.INIT1 = 16'h5aaa;
    defparam add_88_9.INJECT1_0 = "NO";
    defparam add_88_9.INJECT1_1 = "NO";
    CCU2D add_88_7 (.A0(p_c_5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5512), 
          .COUT(n5513), .S0(n134), .S1(n133));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_7.INIT0 = 16'h5aaa;
    defparam add_88_7.INIT1 = 16'h5aaa;
    defparam add_88_7.INJECT1_0 = "NO";
    defparam add_88_7.INJECT1_1 = "NO";
    CCU2D add_88_5 (.A0(p_c_3), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_4), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5511), 
          .COUT(n5512), .S0(n136), .S1(n135));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_5.INIT0 = 16'h5aaa;
    defparam add_88_5.INIT1 = 16'h5aaa;
    defparam add_88_5.INJECT1_0 = "NO";
    defparam add_88_5.INJECT1_1 = "NO";
    CCU2D add_88_3 (.A0(p_c_1), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_2), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5510), 
          .COUT(n5511), .S0(n138), .S1(n137));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_3.INIT0 = 16'h5aaa;
    defparam add_88_3.INIT1 = 16'h5aaa;
    defparam add_88_3.INJECT1_0 = "NO";
    defparam add_88_3.INJECT1_1 = "NO";
    CCU2D add_88_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n5510), 
          .S1(n139));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[14:23])
    defparam add_88_1.INIT0 = 16'hF000;
    defparam add_88_1.INIT1 = 16'h5555;
    defparam add_88_1.INJECT1_0 = "NO";
    defparam add_88_1.INJECT1_1 = "NO";
    LUT4 mux_755_i3_3_lut_4_lut (.A(n7501), .B(n1950), .C(n463), .D(pc[2]), 
         .Z(n3197)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i3_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_755_i2_3_lut_4_lut (.A(n7501), .B(n1950), .C(n464), .D(pc[1]), 
         .Z(n3196)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2_4_lut_adj_42 (.A(n1_adj_23), .B(n2_adj_22), .C(n242), .D(state[6]), 
         .Z(p_16__N_120[0])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_42.init = 16'hfeee;
    LUT4 i1_4_lut_adj_43 (.A(n325), .B(pc[13]), .C(state[4]), .D(n2360), 
         .Z(n6694)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_43.init = 16'heca0;
    LUT4 i1_4_lut_adj_44 (.A(n15), .B(n7509), .C(n7506), .D(n7508), 
         .Z(n20)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_44.init = 16'habbb;
    LUT4 select_490_Select_0_i2_4_lut (.A(p_c_0), .B(state[0]), .C(n2805), 
         .D(n2831), .Z(n2_adj_22)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_0_i2_4_lut.init = 16'hc088;
    LUT4 mux_755_i1_3_lut_4_lut (.A(n7501), .B(n1950), .C(n465), .D(pc[0]), 
         .Z(n3195)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_755_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_835_i1_4_lut (.A(n139), .B(p_c_0), .C(n2149), .D(n33), 
         .Z(n242)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i1_4_lut.init = 16'hcac0;
    LUT4 i1997_3_lut_rep_100 (.A(FWD), .B(n35), .C(instruction_c_1), .Z(n7496)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i1997_3_lut_rep_100.init = 16'heded;
    LUT4 i1_2_lut_4_lut (.A(FWD), .B(n35), .C(instruction_c_1), .D(n7497), 
         .Z(n4_adj_64)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hed00;
    LUT4 i4198_2_lut_rep_126 (.A(instruction_c_6), .B(instruction_c_4), 
         .Z(n7522)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4198_2_lut_rep_126.init = 16'h1111;
    CCU2D sub_115_add_2_5 (.A0(p_c_3), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_4), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5538), 
          .COUT(n5539), .S0(n353), .S1(n352));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_5.INIT0 = 16'h5555;
    defparam sub_115_add_2_5.INIT1 = 16'h5555;
    defparam sub_115_add_2_5.INJECT1_0 = "NO";
    defparam sub_115_add_2_5.INJECT1_1 = "NO";
    LUT4 i759_4_lut (.A(instruction_c_1), .B(n3214), .C(n10), .D(instruction_c_2), 
         .Z(n3215)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i759_4_lut.init = 16'hcdcc;
    CCU2D sub_85_add_2_9 (.A0(delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5557), 
          .S0(n111));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(102[16:28])
    defparam sub_85_add_2_9.INIT0 = 16'h5555;
    defparam sub_85_add_2_9.INIT1 = 16'h0000;
    defparam sub_85_add_2_9.INJECT1_0 = "NO";
    defparam sub_85_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_85_add_2_7 (.A0(delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5556), 
          .COUT(n5557), .S0(n113), .S1(n112));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(102[16:28])
    defparam sub_85_add_2_7.INIT0 = 16'h5555;
    defparam sub_85_add_2_7.INIT1 = 16'h5555;
    defparam sub_85_add_2_7.INJECT1_0 = "NO";
    defparam sub_85_add_2_7.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(instruction_c_3), .B(n14_adj_34), .C(n1950), .D(instruction_c_0), 
         .Z(n10)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i4_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_101 (.A(state[5]), .B(n3036), .Z(n7497)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_rep_101.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_45 (.A(state[5]), .B(n3036), .C(n1079), .Z(n4_adj_66)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_45.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_46 (.A(state[5]), .B(n3036), .C(n1081), .Z(n4_adj_70)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_46.init = 16'h8080;
    LUT4 select_490_Select_9_i2_4_lut (.A(p_c_9), .B(state[0]), .C(n2796), 
         .D(n2831), .Z(n2_adj_35)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_9_i2_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_adj_47 (.A(state[5]), .B(n3036), .C(n1083), .Z(n4_adj_73)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_47.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_48 (.A(state[5]), .B(n3036), .C(n1084), .Z(n4_adj_74)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_48.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_49 (.A(state[5]), .B(n3036), .C(n1085), .Z(n4_adj_75)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_49.init = 16'h8080;
    LUT4 select_490_Select_9_i3_4_lut (.A(n148), .B(state[6]), .C(p_c_9), 
         .D(n2149), .Z(n3_adj_51)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_9_i3_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_adj_50 (.A(state[5]), .B(n3036), .C(n1086), .Z(n4_adj_76)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_50.init = 16'h8080;
    LUT4 mux_612_i10_3_lut (.A(n347), .B(n130), .C(instruction_c_1), .Z(n2796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i10_3_lut.init = 16'hcaca;
    LUT4 i739_1_lut_rep_128 (.A(reset_c), .Z(n7524)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(46[8:13])
    defparam i739_1_lut_rep_128.init = 16'h5555;
    LUT4 i2062_2_lut (.A(n130), .B(n33), .Z(n148)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam i2062_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut (.A(reset_c), .B(state[0]), .C(n6_adj_82), .D(n2908), 
         .Z(bfup_clk_c_enable_11)) /* synthesis lut_function=((B (C (D)))+!A) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(46[8:13])
    defparam i1_4_lut_4_lut.init = 16'hd555;
    LUT4 i1_2_lut_2_lut (.A(reset_c), .B(state[6]), .Z(bfup_clk_c_enable_13)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(46[8:13])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i2154_2_lut_2_lut (.A(reset_c), .B(instruction_c_1), .Z(n3642)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(46[8:13])
    defparam i2154_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_51 (.A(state[5]), .B(n3036), .C(n1087), .Z(n4_adj_77)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_51.init = 16'h8080;
    LUT4 i3_4_lut (.A(instruction_c_5), .B(instruction_c_7), .C(instruction_c_4), 
         .D(instruction_c_6), .Z(n14_adj_34)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(162[7:10])
    defparam i3_4_lut.init = 16'hefff;
    LUT4 i1_4_lut_adj_52 (.A(n3083), .B(n3_adj_6), .C(n6678), .D(state[5]), 
         .Z(pc_17__N_101[14])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_52.init = 16'hfefc;
    LUT4 mux_721_i15_3_lut (.A(n451), .B(n324), .C(n3930), .Z(n3083)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i15_3_lut.init = 16'hacac;
    CCU2D sub_85_add_2_5 (.A0(delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5555), 
          .COUT(n5556), .S0(n115), .S1(delay_7__N_171[4]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(102[16:28])
    defparam sub_85_add_2_5.INIT0 = 16'h5555;
    defparam sub_85_add_2_5.INIT1 = 16'h5555;
    defparam sub_85_add_2_5.INJECT1_0 = "NO";
    defparam sub_85_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_53 (.A(n7504), .B(incoming_c), .C(n7510), .D(n7512), 
         .Z(n15)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_53.init = 16'h5054;
    CCU2D sub_85_add_2_3 (.A0(delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5554), 
          .COUT(n5555), .S0(n117), .S1(delay_7__N_171[2]));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(102[16:28])
    defparam sub_85_add_2_3.INIT0 = 16'h5555;
    defparam sub_85_add_2_3.INIT1 = 16'h5555;
    defparam sub_85_add_2_3.INJECT1_0 = "NO";
    defparam sub_85_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_124_add_2_9 (.A0(pc[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5522), 
          .COUT(n5523), .S0(n458), .S1(n457));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_9.INIT0 = 16'h5555;
    defparam sub_124_add_2_9.INIT1 = 16'h5555;
    defparam sub_124_add_2_9.INJECT1_0 = "NO";
    defparam sub_124_add_2_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_54 (.A(n3096), .B(n3_adj_62), .C(n6660), .D(state[5]), 
         .Z(pc_17__N_101[1])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_54.init = 16'hfefc;
    LUT4 mux_721_i2_3_lut (.A(n464), .B(n337), .C(n3930), .Z(n3096)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i2_3_lut.init = 16'hacac;
    LUT4 select_503_Select_14_i3_4_lut (.A(n324), .B(state[2]), .C(pc[14]), 
         .D(n7494), .Z(n3_adj_6)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_14_i3_4_lut.init = 16'hc088;
    LUT4 i1_3_lut_adj_55 (.A(n2248), .B(n6676), .C(state[0]), .Z(n6678)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut_adj_55.init = 16'hecec;
    LUT4 i4_4_lut_adj_56 (.A(n7), .B(n1966), .C(n6), .D(state[2]), .Z(n6502)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i4_4_lut_adj_56.init = 16'hfefa;
    LUT4 i2_4_lut_adj_57 (.A(n1_adj_30), .B(n2_adj_31), .C(n232), .D(state[6]), 
         .Z(p_16__N_120[10])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_57.init = 16'hfeee;
    LUT4 select_503_Select_1_i3_4_lut (.A(n337), .B(state[2]), .C(pc[1]), 
         .D(n7494), .Z(n3_adj_62)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_1_i3_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_58 (.A(n4_adj_63), .B(n2_adj_61), .C(pc[1]), .D(n2360), 
         .Z(n6660)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_58.init = 16'hfeee;
    LUT4 mux_612_i1_3_lut (.A(n356), .B(n139), .C(instruction_c_1), .Z(n2805)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i1_3_lut.init = 16'hcaca;
    LUT4 select_503_Select_1_i4_4_lut (.A(n3196), .B(state[0]), .C(n337), 
         .D(n3215), .Z(n4_adj_63)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_1_i4_4_lut.init = 16'hc088;
    CCU2D sub_85_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6114), .B1(n6190), .C1(delay[0]), .D1(GND_net), .COUT(n5554), 
          .S1(n118));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(102[16:28])
    defparam sub_85_add_2_1.INIT0 = 16'h0000;
    defparam sub_85_add_2_1.INIT1 = 16'he1e1;
    defparam sub_85_add_2_1.INJECT1_0 = "NO";
    defparam sub_85_add_2_1.INJECT1_1 = "NO";
    LUT4 select_503_Select_1_i2_2_lut (.A(n337), .B(state[4]), .Z(n2_adj_61)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_1_i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_59 (.A(state[5]), .B(n3036), .C(n1088), .Z(n4_adj_78)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_59.init = 16'h8080;
    LUT4 i1_4_lut_adj_60 (.A(n3095), .B(n3_adj_59), .C(n6618), .D(state[5]), 
         .Z(pc_17__N_101[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_60.init = 16'hfefc;
    CCU2D sub_115_add_2_3 (.A0(p_c_1), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_2), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5537), 
          .COUT(n5538), .S0(n355), .S1(n354));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_3.INIT0 = 16'h5555;
    defparam sub_115_add_2_3.INIT1 = 16'h5555;
    defparam sub_115_add_2_3.INJECT1_0 = "NO";
    defparam sub_115_add_2_3.INJECT1_1 = "NO";
    LUT4 mux_721_i3_3_lut (.A(n463), .B(n336), .C(n3930), .Z(n3095)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i3_3_lut.init = 16'hacac;
    LUT4 i2_3_lut_adj_61 (.A(n7511), .B(instruction_c_5), .C(instruction_c_4), 
         .Z(n2831)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_61.init = 16'h8080;
    LUT4 select_503_Select_2_i3_4_lut (.A(n336), .B(state[2]), .C(pc[2]), 
         .D(n7494), .Z(n3_adj_59)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_2_i3_4_lut.init = 16'hc088;
    CCU2D sub_115_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(p_c_0), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n5537), 
          .S1(n356));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(151[15:24])
    defparam sub_115_add_2_1.INIT0 = 16'hF000;
    defparam sub_115_add_2_1.INIT1 = 16'h5555;
    defparam sub_115_add_2_1.INJECT1_0 = "NO";
    defparam sub_115_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_124_add_2_7 (.A0(pc[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5521), 
          .COUT(n5522), .S0(n460), .S1(n459));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_7.INIT0 = 16'h5555;
    defparam sub_124_add_2_7.INIT1 = 16'h5555;
    defparam sub_124_add_2_7.INJECT1_0 = "NO";
    defparam sub_124_add_2_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_62 (.A(state[5]), .B(n3036), .C(n1075), .Z(n4_adj_69)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_62.init = 16'h8080;
    LUT4 i2_4_lut_adj_63 (.A(n35), .B(n6431), .C(state[5]), .D(n3604), 
         .Z(n7)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_63.init = 16'hccdc;
    LUT4 i16_4_lut (.A(n6864), .B(n6854), .C(n6824), .D(n26), .Z(n33)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i16_4_lut.init = 16'hff7f;
    CCU2D add_826_9 (.A0(instruction_c_1), .B0(instruction_c_0), .C0(n284), 
          .D0(pData_out_6), .A1(instruction_c_1), .B1(instruction_c_0), 
          .C1(n283), .D1(pData_out_7), .CIN(n5577), .S0(n3353), .S1(n3352));
    defparam add_826_9.INIT0 = 16'hb874;
    defparam add_826_9.INIT1 = 16'hb874;
    defparam add_826_9.INJECT1_0 = "NO";
    defparam add_826_9.INJECT1_1 = "NO";
    CCU2D add_151_17 (.A0(port_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5553), 
          .S0(n632));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_17.INIT0 = 16'h5aaa;
    defparam add_151_17.INIT1 = 16'h0000;
    defparam add_151_17.INJECT1_0 = "NO";
    defparam add_151_17.INJECT1_1 = "NO";
    CCU2D add_151_15 (.A0(port_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5552), .COUT(n5553), .S0(n634), .S1(n633));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_15.INIT0 = 16'h5aaa;
    defparam add_151_15.INIT1 = 16'h5aaa;
    defparam add_151_15.INJECT1_0 = "NO";
    defparam add_151_15.INJECT1_1 = "NO";
    CCU2D add_151_13 (.A0(port_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(port_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5551), .COUT(n5552), .S0(n636), .S1(n635));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(183[22:38])
    defparam add_151_13.INIT0 = 16'h5aaa;
    defparam add_151_13.INIT1 = 16'h5aaa;
    defparam add_151_13.INJECT1_0 = "NO";
    defparam add_151_13.INJECT1_1 = "NO";
    CCU2D add_114_19 (.A0(pc[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5536), 
          .S0(n321));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_19.INIT0 = 16'h5aaa;
    defparam add_114_19.INIT1 = 16'h0000;
    defparam add_114_19.INJECT1_0 = "NO";
    defparam add_114_19.INJECT1_1 = "NO";
    CCU2D add_826_7 (.A0(instruction_c_1), .B0(instruction_c_0), .C0(n286), 
          .D0(pData_out_4), .A1(instruction_c_1), .B1(instruction_c_0), 
          .C1(n285), .D1(pData_out_5), .CIN(n5576), .COUT(n5577), .S0(n3355), 
          .S1(n3354));
    defparam add_826_7.INIT0 = 16'hb874;
    defparam add_826_7.INIT1 = 16'hb874;
    defparam add_826_7.INJECT1_0 = "NO";
    defparam add_826_7.INJECT1_1 = "NO";
    CCU2D add_114_17 (.A0(pc[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5535), 
          .COUT(n5536), .S0(n323), .S1(n322));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(148[15:24])
    defparam add_114_17.INIT0 = 16'h5aaa;
    defparam add_114_17.INIT1 = 16'h5aaa;
    defparam add_114_17.INJECT1_0 = "NO";
    defparam add_114_17.INJECT1_1 = "NO";
    CCU2D sub_124_add_2_5 (.A0(pc[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pc[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5520), 
          .COUT(n5521), .S0(n462), .S1(n461));   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(169[17:26])
    defparam sub_124_add_2_5.INIT0 = 16'h5555;
    defparam sub_124_add_2_5.INIT1 = 16'h5555;
    defparam sub_124_add_2_5.INJECT1_0 = "NO";
    defparam sub_124_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_64 (.A(n4_adj_60), .B(n2_adj_58), .C(pc[2]), .D(n2360), 
         .Z(n6618)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_64.init = 16'hfeee;
    LUT4 mux_879_i15_3_lut (.A(n3209), .B(n324), .C(n3215), .Z(n2248)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i15_3_lut.init = 16'hcaca;
    LUT4 select_503_Select_2_i4_4_lut (.A(n3197), .B(state[0]), .C(n336), 
         .D(n3215), .Z(n4_adj_60)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_2_i4_4_lut.init = 16'hc088;
    LUT4 i1324_4_lut (.A(n6758), .B(FWD), .C(n6760), .D(n33_adj_81), 
         .Z(n3930)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam i1324_4_lut.init = 16'h3332;
    LUT4 i1_4_lut_adj_65 (.A(state[4]), .B(state[0]), .C(n9), .D(n10_adj_71), 
         .Z(n6)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_65.init = 16'heeea;
    LUT4 i1_2_lut_3_lut_adj_66 (.A(state[5]), .B(n3036), .C(n1076), .Z(n4_adj_68)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_66.init = 16'h8080;
    LUT4 i1_4_lut_adj_67 (.A(n28), .B(brackets[4]), .C(instruction_c_1), 
         .D(n3036), .Z(n6758)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_4_lut_adj_67.init = 16'hefff;
    LUT4 select_503_Select_2_i2_2_lut (.A(n336), .B(state[4]), .Z(n2_adj_58)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_2_i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(brackets[0]), .B(n31_adj_88), .Z(n6760)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(state[5]), .B(n3036), .C(n1077), .Z(n4_adj_67)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_3_lut_adj_68.init = 16'h8080;
    LUT4 i1_4_lut_adj_69 (.A(n3094), .B(n3_adj_56), .C(n6648), .D(state[5]), 
         .Z(pc_17__N_101[3])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_69.init = 16'hfefc;
    LUT4 mux_721_i4_3_lut (.A(n462), .B(n335), .C(n3930), .Z(n3094)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i4_3_lut.init = 16'hacac;
    LUT4 select_503_Select_3_i3_4_lut (.A(n335), .B(state[2]), .C(pc[3]), 
         .D(n7494), .Z(n3_adj_56)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_3_i3_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_70 (.A(n4_adj_57), .B(n2_adj_55), .C(pc[3]), .D(n2360), 
         .Z(n6648)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_70.init = 16'hfeee;
    LUT4 select_503_Select_3_i4_4_lut (.A(n3198), .B(state[0]), .C(n335), 
         .D(n3215), .Z(n4_adj_57)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_3_i4_4_lut.init = 16'hc088;
    LUT4 i19_4_lut (.A(n37), .B(n35_adj_87), .C(n31), .D(n32), .Z(n6431)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i19_4_lut.init = 16'h8000;
    LUT4 select_503_Select_3_i2_2_lut (.A(n335), .B(state[4]), .Z(n2_adj_55)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_3_i2_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_71 (.A(n6580), .B(n6588), .C(n930), .D(state[2]), 
         .Z(pc_17__N_101[4])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_71.init = 16'hfeee;
    LUT4 select_490_Select_10_i2_4_lut (.A(p_c_10), .B(state[0]), .C(n2795), 
         .D(n2831), .Z(n2_adj_31)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_10_i2_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_72 (.A(n324), .B(pc[14]), .C(state[4]), .D(n2360), 
         .Z(n6676)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_72.init = 16'heca0;
    LUT4 i1_4_lut_adj_73 (.A(n3093), .B(n2258), .C(state[5]), .D(state[0]), 
         .Z(n6580)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_73.init = 16'heca0;
    LUT4 i17_4_lut (.A(p_c_2), .B(n34), .C(n26_adj_89), .D(p_c_6), .Z(n37)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_74 (.A(n334), .B(pc[4]), .C(state[4]), .D(n2360), 
         .Z(n6588)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_74.init = 16'heca0;
    LUT4 i4184_4_lut (.A(p_c_1), .B(n6856), .C(n6834), .D(p_c_15), .Z(n6864)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4184_4_lut.init = 16'h8000;
    LUT4 mux_835_i11_4_lut (.A(n129), .B(p_c_10), .C(n2149), .D(n33), 
         .Z(n232)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i11_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_75 (.A(n3082), .B(n3_adj_16), .C(n6636), .D(state[5]), 
         .Z(pc_17__N_101[15])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_75.init = 16'hfefc;
    LUT4 i15_4_lut (.A(p_c_3), .B(p_c_10), .C(p_c_13), .D(p_c_14), .Z(n35_adj_87)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    LUT4 i11_4_lut (.A(state[6]), .B(n7507), .C(WR_c), .D(p_c_16), .Z(n31)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i11_4_lut.init = 16'h0002;
    LUT4 mux_721_i16_3_lut (.A(n450), .B(n323), .C(n3930), .Z(n3082)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i16_3_lut.init = 16'hacac;
    LUT4 i12_4_lut (.A(p_c_9), .B(p_c_15), .C(p_c_1), .D(p_c_4), .Z(n32)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i4174_4_lut (.A(p_c_7), .B(p_c_5), .C(p_c_12), .D(p_c_3), .Z(n6854)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4174_4_lut.init = 16'h8000;
    LUT4 i4144_2_lut (.A(p_c_13), .B(p_c_10), .Z(n6824)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4144_2_lut.init = 16'h8888;
    LUT4 select_503_Select_15_i3_4_lut (.A(n323), .B(state[2]), .C(pc[15]), 
         .D(n7494), .Z(n3_adj_16)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_15_i3_4_lut.init = 16'hc088;
    LUT4 i462_3_lut_4_lut (.A(instruction_c_0), .B(n7512), .C(n1950), 
         .D(n7508), .Z(n3585)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(162[7:10])
    defparam i462_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i1_3_lut_adj_76 (.A(n2247), .B(n6634), .C(state[0]), .Z(n6636)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut_adj_76.init = 16'hecec;
    LUT4 i14_4_lut (.A(p_c_0), .B(p_c_12), .C(p_c_7), .D(p_c_5), .Z(n34)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i14_4_lut.init = 16'h8000;
    LUT4 mux_879_i16_3_lut (.A(n3210), .B(n323), .C(n3215), .Z(n2247)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i16_3_lut.init = 16'hcaca;
    LUT4 i6_2_lut (.A(p_c_11), .B(p_c_8), .Z(n26_adj_89)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut.init = 16'h8888;
    LUT4 mux_721_i5_3_lut (.A(n461), .B(n334), .C(n3930), .Z(n3093)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i5_3_lut.init = 16'hacac;
    LUT4 i1_4_lut_adj_77 (.A(n323), .B(pc[15]), .C(state[4]), .D(n2360), 
         .Z(n6634)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_77.init = 16'heca0;
    LUT4 mux_879_i5_3_lut (.A(n3199), .B(n334), .C(n3215), .Z(n2258)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i5_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_78 (.A(n7490), .B(n6575), .C(instruction_c_2), .D(n7527), 
         .Z(n9)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i3_4_lut_adj_78.init = 16'hcddd;
    LUT4 i4_4_lut_adj_79 (.A(n7_adj_72), .B(instruction_c_3), .C(n14_adj_34), 
         .D(n30), .Z(n10_adj_71)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i4_4_lut_adj_79.init = 16'hbfbb;
    LUT4 i1_4_lut_adj_80 (.A(brackets[2]), .B(brackets[14]), .C(brackets[3]), 
         .D(brackets[8]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_4_lut_adj_80.init = 16'hfffe;
    LUT4 i4_4_lut_adj_81 (.A(n7521), .B(instruction_c_6), .C(instruction_c_4), 
         .D(n14), .Z(n6575)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut_adj_81.init = 16'h2000;
    LUT4 mux_612_i11_3_lut (.A(n346), .B(n129), .C(instruction_c_1), .Z(n2795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i11_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_82 (.A(n3081), .B(n3_adj_17), .C(n6624), .D(state[5]), 
         .Z(pc_17__N_101[16])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_82.init = 16'hfefc;
    LUT4 i9_3_lut (.A(p_c_14), .B(p_c_16), .C(p_c_9), .Z(n26)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i9_3_lut.init = 16'hdfdf;
    LUT4 i2_4_lut_adj_83 (.A(n1_adj_29), .B(n2_adj_28), .C(n231), .D(state[6]), 
         .Z(p_16__N_120[11])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_83.init = 16'hfeee;
    LUT4 i1_4_lut_adj_84 (.A(n3092), .B(n3_adj_53), .C(n6702), .D(state[5]), 
         .Z(pc_17__N_101[5])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_84.init = 16'hfefc;
    LUT4 i4176_4_lut (.A(p_c_6), .B(p_c_8), .C(p_c_11), .D(p_c_0), .Z(n6856)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4176_4_lut.init = 16'h8000;
    LUT4 select_490_Select_15_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_15), .Z(n1_adj_13)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_15_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 mux_721_i6_3_lut (.A(n460), .B(n333), .C(n3930), .Z(n3092)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i6_3_lut.init = 16'hacac;
    LUT4 i1_4_lut_adj_85 (.A(n7512), .B(instruction_c_7), .C(n7504), .D(incoming_c), 
         .Z(n7_adj_72)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_85.init = 16'hcccd;
    LUT4 i4154_2_lut (.A(p_c_4), .B(p_c_2), .Z(n6834)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4154_2_lut.init = 16'h8888;
    LUT4 mux_721_i17_3_lut (.A(n449), .B(n322), .C(n3930), .Z(n3081)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i17_3_lut.init = 16'hacac;
    LUT4 i1_4_lut_adj_86 (.A(brackets[1]), .B(brackets[6]), .C(brackets[9]), 
         .D(brackets[5]), .Z(n31_adj_88)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_4_lut_adj_86.init = 16'hfffe;
    LUT4 select_503_Select_5_i3_4_lut (.A(n333), .B(state[2]), .C(pc[5]), 
         .D(n7494), .Z(n3_adj_53)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_5_i3_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_87 (.A(n3032), .B(brackets[3]), .C(state[5]), .D(n59), 
         .Z(brackets_17__N_137[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_87.init = 16'heca0;
    LUT4 i1_4_lut_adj_88 (.A(n4_adj_54), .B(n2_adj_52), .C(pc[5]), .D(n2360), 
         .Z(n6702)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_88.init = 16'hfeee;
    LUT4 select_503_Select_5_i4_4_lut (.A(n3200), .B(state[0]), .C(n333), 
         .D(n3215), .Z(n4_adj_54)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_5_i4_4_lut.init = 16'hc088;
    LUT4 n8_bdd_4_lut (.A(n8_adj_33), .B(n7522), .C(n6543), .D(instruction_c_5), 
         .Z(n7490)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n8_bdd_4_lut.init = 16'h88f0;
    LUT4 select_503_Select_5_i2_2_lut (.A(n333), .B(state[4]), .Z(n2_adj_52)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_5_i2_2_lut.init = 16'h8888;
    LUT4 select_490_Select_11_i2_4_lut (.A(p_c_11), .B(state[0]), .C(n2794), 
         .D(n2831), .Z(n2_adj_28)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_11_i2_4_lut.init = 16'hc088;
    LUT4 mux_835_i12_4_lut (.A(n128), .B(p_c_11), .C(n2149), .D(n33), 
         .Z(n231)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i12_4_lut.init = 16'hcac0;
    LUT4 mux_612_i12_3_lut (.A(n345), .B(n128), .C(instruction_c_1), .Z(n2794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i12_3_lut.init = 16'hcaca;
    LUT4 select_503_Select_16_i3_4_lut (.A(n322), .B(state[2]), .C(pc[16]), 
         .D(n7494), .Z(n3_adj_17)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_16_i3_4_lut.init = 16'hc088;
    LUT4 i47_4_lut (.A(instruction_c_2), .B(n7508), .C(n1950), .D(n7518), 
         .Z(n30)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i47_4_lut.init = 16'h3a30;
    LUT4 i1_4_lut_adj_89 (.A(instruction_c_0), .B(instruction_c_4), .C(incoming_c), 
         .D(instruction_c_1), .Z(n4_adj_65)) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_89.init = 16'h2232;
    LUT4 i1_2_lut_rep_111 (.A(n6114), .B(n6190), .Z(n7507)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_111.init = 16'heeee;
    LUT4 i1_2_lut_adj_90 (.A(state[5]), .B(state[3]), .Z(n6187)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_adj_90.init = 16'heeee;
    LUT4 i2_4_lut_adj_91 (.A(n1), .B(n2_adj_7), .C(n230), .D(state[6]), 
         .Z(p_16__N_120[12])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_91.init = 16'hfeee;
    LUT4 i1_2_lut_3_lut_adj_92 (.A(n48), .B(n7500), .C(n645), .Z(n6153)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_92.init = 16'h1010;
    LUT4 i2120_2_lut_rep_96_4_lut (.A(n7504), .B(n7512), .C(n7510), .D(n48), 
         .Z(n7492)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;
    defparam i2120_2_lut_rep_96_4_lut.init = 16'hffae;
    LUT4 i2114_2_lut_4_lut (.A(n7504), .B(n7512), .C(n7510), .D(n2342), 
         .Z(bfup_clk_c_enable_27)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (D)))) */ ;
    defparam i2114_2_lut_4_lut.init = 16'h5100;
    LUT4 i1_3_lut_adj_93 (.A(n2246), .B(n6622), .C(state[0]), .Z(n6624)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut_adj_93.init = 16'hecec;
    LUT4 mux_879_i17_3_lut (.A(n3211), .B(n322), .C(n3215), .Z(n2246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i17_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_94 (.A(n3091), .B(n3_adj_19), .C(n6630), .D(state[5]), 
         .Z(pc_17__N_101[6])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_94.init = 16'hfefc;
    LUT4 i1_4_lut_adj_95 (.A(n322), .B(pc[16]), .C(state[4]), .D(n2360), 
         .Z(n6622)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_95.init = 16'heca0;
    LUT4 mux_721_i7_3_lut (.A(n459), .B(n332), .C(n3930), .Z(n3091)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i7_3_lut.init = 16'hacac;
    LUT4 select_503_Select_6_i3_4_lut (.A(n332), .B(state[2]), .C(pc[6]), 
         .D(n7494), .Z(n3_adj_19)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_6_i3_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_adj_96 (.A(instruction_c_5), .B(instruction_c_0), .Z(n14)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(124[6] 176[13])
    defparam i1_2_lut_adj_96.init = 16'h2222;
    LUT4 mux_839_i4_4_lut (.A(brackets[3]), .B(n1089), .C(n3036), .D(n7496), 
         .Z(n3032)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_839_i4_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_97 (.A(n3033), .B(brackets[2]), .C(state[5]), .D(n59), 
         .Z(brackets_17__N_137[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_97.init = 16'heca0;
    LUT4 i472_2_lut_3_lut (.A(n6114), .B(n6190), .C(WR_c), .Z(n2149)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i472_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_98 (.A(n4_adj_20), .B(n2_adj_18), .C(pc[6]), .D(n2360), 
         .Z(n6630)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_98.init = 16'hfeee;
    LUT4 select_503_Select_6_i4_4_lut (.A(n3201), .B(state[0]), .C(n332), 
         .D(n3215), .Z(n4_adj_20)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_6_i4_4_lut.init = 16'hc088;
    LUT4 select_503_Select_6_i2_2_lut (.A(n332), .B(state[4]), .Z(n2_adj_18)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_6_i2_2_lut.init = 16'h8888;
    LUT4 mux_839_i3_4_lut (.A(brackets[2]), .B(n1090), .C(n3036), .D(n7496), 
         .Z(n3033)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_839_i3_4_lut.init = 16'hca0a;
    LUT4 select_490_Select_12_i2_4_lut (.A(p_c_12), .B(state[0]), .C(n2793), 
         .D(n2831), .Z(n2_adj_7)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_12_i2_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_99 (.A(n3352), .B(acc[7]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_99.init = 16'heca0;
    LUT4 mux_835_i13_4_lut (.A(n127), .B(p_c_12), .C(n2149), .D(n33), 
         .Z(n230)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i13_4_lut.init = 16'hcac0;
    LUT4 mux_835_i5_4_lut (.A(n135), .B(p_c_4), .C(n2149), .D(n33), 
         .Z(n238)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i5_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_100 (.A(n6584), .B(n6578), .C(n917), .D(state[2]), 
         .Z(pc_17__N_101[17])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_100.init = 16'hfeee;
    LUT4 i1_4_lut_adj_101 (.A(n3023), .B(brackets[12]), .C(state[5]), 
         .D(n59), .Z(brackets_17__N_137[12])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(62[15:20])
    defparam i1_4_lut_adj_101.init = 16'heca0;
    LUT4 i2_4_lut_adj_102 (.A(n6509), .B(n4_adj_37), .C(instruction_c_0), 
         .D(n7530), .Z(n2908)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_102.init = 16'hc888;
    LUT4 i3_4_lut_adj_103 (.A(instruction_c_2), .B(n4774), .C(instruction_c_5), 
         .D(instruction_c_6), .Z(n6509)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut_adj_103.init = 16'h0020;
    LUT4 mux_612_i13_3_lut (.A(n344), .B(n127), .C(instruction_c_1), .Z(n2793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i13_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_104 (.A(n7513), .B(instruction_c_2), .C(instruction_c_3), 
         .D(FWD), .Z(n4_adj_90)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_104.init = 16'h2000;
    LUT4 i1_4_lut_adj_105 (.A(n6582), .B(n6586), .C(n927), .D(state[2]), 
         .Z(pc_17__N_101[7])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_105.init = 16'hfeee;
    PFUMX i41 (.BLUT(n6501), .ALUT(n6112), .C0(instruction_c_5), .Z(n25));
    LUT4 i2_3_lut_4_lut (.A(instruction_c_2), .B(n7518), .C(instruction_c_4), 
         .D(instruction_c_6), .Z(n6501)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_106 (.A(n3090), .B(n2255), .C(state[5]), .D(state[0]), 
         .Z(n6582)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_106.init = 16'heca0;
    LUT4 i1_4_lut_adj_107 (.A(n331), .B(pc[7]), .C(state[4]), .D(n2360), 
         .Z(n6586)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_107.init = 16'heca0;
    LUT4 i1_4_lut_adj_108 (.A(n7496), .B(brackets[7]), .C(n4_adj_75), 
         .D(n12), .Z(brackets_17__N_137[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_108.init = 16'heca0;
    LUT4 i4162_3_lut_4_lut (.A(n7506), .B(n14_adj_34), .C(FWD), .D(n3036), 
         .Z(n6842)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(162[7:10])
    defparam i4162_3_lut_4_lut.init = 16'hfe00;
    LUT4 i2_4_lut_adj_109 (.A(n1_adj_9), .B(n2_adj_8), .C(n229), .D(state[6]), 
         .Z(p_16__N_120[13])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_109.init = 16'hfeee;
    LUT4 i2174_3_lut (.A(instruction_c_4), .B(instruction_c_0), .C(instruction_c_1), 
         .Z(n4774)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2174_3_lut.init = 16'hc8c8;
    LUT4 i758_3_lut_4_lut (.A(n7506), .B(n14_adj_34), .C(n4_adj_37), .D(n25), 
         .Z(n3214)) /* synthesis lut_function=(!(A (C (D))+!A ((C (D))+!B))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(162[7:10])
    defparam i758_3_lut_4_lut.init = 16'h0eee;
    LUT4 select_490_Select_13_i2_4_lut (.A(p_c_13), .B(state[0]), .C(n2792), 
         .D(n2831), .Z(n2_adj_8)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_13_i2_4_lut.init = 16'hc088;
    LUT4 i992_2_lut_rep_106 (.A(n1950), .B(instruction_c_1), .Z(n7502)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i992_2_lut_rep_106.init = 16'h6666;
    LUT4 mux_721_i8_3_lut (.A(n458), .B(n331), .C(n3930), .Z(n3090)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i8_3_lut.init = 16'hacac;
    LUT4 mux_879_i8_3_lut (.A(n3202), .B(n331), .C(n3215), .Z(n2255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_102_3_lut (.A(n1950), .B(instruction_c_1), .C(n3036), 
         .Z(n7498)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1_2_lut_rep_102_3_lut.init = 16'h6060;
    LUT4 i1_4_lut_adj_110 (.A(n3353), .B(acc[6]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_110.init = 16'heca0;
    LUT4 mux_835_i14_4_lut (.A(n126), .B(p_c_13), .C(n2149), .D(n33), 
         .Z(n229)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i14_4_lut.init = 16'hcac0;
    LUT4 mux_612_i14_3_lut (.A(n343), .B(n126), .C(instruction_c_1), .Z(n2792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i14_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_111 (.A(n7514), .B(n7511), .C(n7505), .D(state[2]), 
         .Z(n6375)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_111.init = 16'h8000;
    LUT4 i1_4_lut_adj_112 (.A(n3021), .B(brackets[14]), .C(state[5]), 
         .D(n59), .Z(brackets_17__N_137[14])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(62[15:20])
    defparam i1_4_lut_adj_112.init = 16'heca0;
    LUT4 mux_839_i15_4_lut (.A(brackets[14]), .B(n1078), .C(n3036), .D(n7496), 
         .Z(n3021)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_839_i15_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_113 (.A(n3089), .B(n3), .C(n6642), .D(state[5]), 
         .Z(pc_17__N_101[8])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_113.init = 16'hfefc;
    LUT4 i1_4_lut_adj_114 (.A(n7496), .B(brackets[6]), .C(n4_adj_76), 
         .D(n12), .Z(brackets_17__N_137[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_114.init = 16'heca0;
    LUT4 i1054_2_lut_3_lut_4_lut (.A(instruction_c_0), .B(n7509), .C(state[0]), 
         .D(n7510), .Z(bfup_clk_c_enable_10)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(146[7:10])
    defparam i1054_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i2_4_lut_adj_115 (.A(n1_adj_11), .B(n2_adj_10), .C(n228), .D(state[6]), 
         .Z(p_16__N_120[14])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_115.init = 16'hfeee;
    LUT4 i1_4_lut_adj_116 (.A(n3354), .B(acc[5]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_116.init = 16'heca0;
    LUT4 mux_721_i9_3_lut (.A(n457), .B(n330), .C(n3930), .Z(n3089)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i9_3_lut.init = 16'hacac;
    LUT4 select_503_Select_8_i3_4_lut (.A(n330), .B(state[2]), .C(pc[8]), 
         .D(n7494), .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_8_i3_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_117 (.A(n7496), .B(brackets[13]), .C(n4_adj_66), 
         .D(n12), .Z(brackets_17__N_137[13])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_117.init = 16'heca0;
    LUT4 i1_4_lut_adj_118 (.A(n3355), .B(acc[4]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_118.init = 16'heca0;
    LUT4 i4200_4_lut (.A(drive_bus), .B(n6549), .C(state[1]), .D(n3629), 
         .Z(drive_bus_N_264)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i4200_4_lut.init = 16'h88c8;
    LUT4 mux_612_i5_3_lut (.A(n352), .B(n135), .C(instruction_c_1), .Z(n2801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i5_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_119 (.A(n4_adj_1), .B(n2_adj_2), .C(pc[8]), .D(n2360), 
         .Z(n6642)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_119.init = 16'hfeee;
    LUT4 i1_4_lut_adj_120 (.A(n3356), .B(acc[3]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_120.init = 16'heca0;
    LUT4 i1_4_lut_adj_121 (.A(n3080), .B(n2245), .C(state[5]), .D(state[0]), 
         .Z(n6584)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_121.init = 16'heca0;
    LUT4 select_503_Select_8_i4_4_lut (.A(n3203), .B(state[0]), .C(n330), 
         .D(n3215), .Z(n4_adj_1)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_8_i4_4_lut.init = 16'hc088;
    LUT4 mux_839_i13_4_lut (.A(brackets[12]), .B(n1080), .C(n3036), .D(n7496), 
         .Z(n3023)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_839_i13_4_lut.init = 16'hca0a;
    LUT4 select_490_Select_14_i2_4_lut (.A(p_c_14), .B(state[0]), .C(n2791), 
         .D(n2831), .Z(n2_adj_10)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_14_i2_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_122 (.A(n6784), .B(brackets[0]), .C(n33_adj_81), 
         .D(n28), .Z(n35)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_4_lut_adj_122.init = 16'hfffb;
    LUT4 i1_4_lut_adj_123 (.A(n7517), .B(n1_adj_26), .C(n7523), .D(state[2]), 
         .Z(n6549)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_123.init = 16'hfffe;
    LUT4 i1_2_lut_adj_124 (.A(n31_adj_88), .B(brackets[4]), .Z(n6784)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_2_lut_adj_124.init = 16'heeee;
    LUT4 select_503_Select_8_i2_2_lut (.A(n330), .B(state[4]), .Z(n2_adj_2)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_8_i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_125 (.A(n4_adj_37), .B(n6175), .C(n8), .D(instruction_c_0), 
         .Z(n3036)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_125.init = 16'h8000;
    LUT4 i1_4_lut_adj_126 (.A(n321), .B(pc[17]), .C(state[4]), .D(n2360), 
         .Z(n6578)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_126.init = 16'heca0;
    LUT4 i25_2_lut (.A(instruction_c_1), .B(instruction_c_2), .Z(n8)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam i25_2_lut.init = 16'h6666;
    LUT4 select_490_Select_16_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_16), .Z(n1_adj_15)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_16_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1010_2_lut_rep_98_3_lut_4_lut (.A(instruction_c_0), .B(n7509), 
         .C(n48), .D(n7510), .Z(n7494)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(146[7:10])
    defparam i1010_2_lut_rep_98_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_adj_127 (.A(instruction_c_7), .B(instruction_c_3), .Z(n4_adj_37)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(124[6] 176[13])
    defparam i1_2_lut_adj_127.init = 16'h4444;
    LUT4 i1_4_lut_adj_128 (.A(brackets[12]), .B(n6772), .C(n6764), .D(brackets[13]), 
         .Z(n33_adj_81)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_4_lut_adj_128.init = 16'hfffe;
    LUT4 i1_4_lut_adj_129 (.A(brackets[17]), .B(brackets[11]), .C(brackets[15]), 
         .D(brackets[16]), .Z(n6772)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_4_lut_adj_129.init = 16'hfffe;
    LUT4 i1_4_lut_adj_130 (.A(n3088), .B(n3_adj_3), .C(n6654), .D(state[5]), 
         .Z(pc_17__N_101[9])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_130.init = 16'hfefc;
    LUT4 mux_835_i15_4_lut (.A(n125), .B(p_c_14), .C(n2149), .D(n33), 
         .Z(n228)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i15_4_lut.init = 16'hcac0;
    LUT4 i2018_2_lut_rep_125 (.A(instruction_c_2), .B(instruction_c_3), 
         .Z(n7521)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2018_2_lut_rep_125.init = 16'h8888;
    LUT4 mux_879_i10_3_lut (.A(n3204), .B(n329), .C(n3215), .Z(n2253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i10_3_lut.init = 16'hcaca;
    LUT4 i2050_2_lut (.A(inPort_c_6), .B(incoming_c), .Z(n284)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i2050_2_lut.init = 16'h8888;
    LUT4 mux_721_i10_3_lut (.A(n456), .B(n329), .C(n3930), .Z(n3088)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i10_3_lut.init = 16'hacac;
    LUT4 mux_612_i15_3_lut (.A(n342), .B(n125), .C(instruction_c_1), .Z(n2791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i15_3_lut.init = 16'hcaca;
    LUT4 i2054_2_lut (.A(inPort_c_2), .B(incoming_c), .Z(n288)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i2054_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_131 (.A(n7496), .B(brackets[5]), .C(n4_adj_77), 
         .D(n12), .Z(brackets_17__N_137[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_131.init = 16'heca0;
    LUT4 i1_4_lut_adj_132 (.A(n3359), .B(acc[0]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_132.init = 16'heca0;
    LUT4 i1_2_lut_adj_133 (.A(state[0]), .B(n3338), .Z(n6178)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_adj_133.init = 16'h2222;
    LUT4 i1_3_lut_adj_134 (.A(n2253), .B(n6652), .C(state[0]), .Z(n6654)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_3_lut_adj_134.init = 16'hecec;
    LUT4 i2_4_lut_adj_135 (.A(n1_adj_48), .B(n2_adj_47), .C(n236), .D(state[6]), 
         .Z(p_16__N_120[6])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_135.init = 16'hfeee;
    LUT4 i1_4_lut_adj_136 (.A(n1_adj_26), .B(state[6]), .C(n3338), .D(state[0]), 
         .Z(n9_adj_84)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_136.init = 16'hfabb;
    LUT4 i1020_4_lut (.A(state[6]), .B(n6866), .C(n7507), .D(n6744), 
         .Z(n1_adj_26)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1020_4_lut.init = 16'haaa2;
    LUT4 i4186_4_lut (.A(n6846), .B(n6860), .C(p_c_7), .D(p_c_1), .Z(n6866)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4186_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_137 (.A(p_c_6), .B(p_c_15), .C(n6720), .D(p_c_2), 
         .Z(n6744)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_137.init = 16'hf7ff;
    LUT4 i399_2_lut_3_lut_4_lut (.A(instruction_c_0), .B(n7509), .C(n48), 
         .D(n7510), .Z(n1966)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(146[7:10])
    defparam i399_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_adj_138 (.A(brackets[7]), .B(brackets[10]), .Z(n6764)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(81[9] 293[5])
    defparam i1_2_lut_adj_138.init = 16'heeee;
    LUT4 i1_2_lut_rep_108_4_lut (.A(n7522), .B(instruction_c_7), .C(instruction_c_5), 
         .D(instruction_c_0), .Z(n7504)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(191[7:10])
    defparam i1_2_lut_rep_108_4_lut.init = 16'hffdf;
    LUT4 i4166_4_lut (.A(p_c_11), .B(p_c_0), .C(p_c_10), .D(p_c_4), 
         .Z(n6846)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4166_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_139 (.A(n3357), .B(acc[2]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_139.init = 16'heca0;
    LUT4 i1_4_lut_adj_140 (.A(n3358), .B(acc[1]), .C(n6178), .D(n9_adj_84), 
         .Z(acc_7__N_155[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_140.init = 16'heca0;
    LUT4 i7_4_lut (.A(pData_out_0), .B(n14_adj_79), .C(n10_adj_80), .D(pData_out_3), 
         .Z(n1950)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(155[13:21])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_141 (.A(n7496), .B(brackets[17]), .C(n4_adj_69), 
         .D(n12), .Z(brackets_17__N_137[17])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_141.init = 16'heca0;
    LUT4 i6_4_lut (.A(pData_out_2), .B(pData_out_6), .C(pData_out_4), 
         .D(pData_out_5), .Z(n14_adj_79)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(155[13:21])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 select_503_Select_9_i3_4_lut (.A(n329), .B(state[2]), .C(pc[9]), 
         .D(n7494), .Z(n3_adj_3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_503_Select_9_i3_4_lut.init = 16'hc088;
    LUT4 i2053_2_lut (.A(inPort_c_3), .B(incoming_c), .Z(n287)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i2053_2_lut.init = 16'h8888;
    LUT4 i2049_2_lut (.A(inPort_c_7), .B(incoming_c), .Z(n283)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i2049_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_142 (.A(n7496), .B(brackets[16]), .C(n4_adj_68), 
         .D(n12), .Z(brackets_17__N_137[16])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_142.init = 16'heca0;
    LUT4 i2052_2_lut (.A(inPort_c_4), .B(incoming_c), .Z(n286)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i2052_2_lut.init = 16'h8888;
    LUT4 mux_721_i18_3_lut (.A(n448), .B(n321), .C(n3930), .Z(n3080)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_721_i18_3_lut.init = 16'hacac;
    LUT4 i2051_2_lut (.A(inPort_c_5), .B(incoming_c), .Z(n285)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i2051_2_lut.init = 16'h8888;
    LUT4 n2342_bdd_4_lut (.A(n2342), .B(n6187), .C(n1_adj_26), .D(state[0]), 
         .Z(n7354)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2342_bdd_4_lut.init = 16'hfffe;
    LUT4 mux_879_i18_3_lut (.A(n3212), .B(n321), .C(n3215), .Z(n2245)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_879_i18_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_143 (.A(n3034), .B(brackets[1]), .C(state[5]), .D(n59), 
         .Z(brackets_17__N_137[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(62[15:20])
    defparam i1_4_lut_adj_143.init = 16'heca0;
    LUT4 i2_2_lut (.A(pData_out_1), .B(pData_out_7), .Z(n10_adj_80)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(155[13:21])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i4180_4_lut (.A(p_c_9), .B(n6848), .C(p_c_3), .D(p_c_8), .Z(n6860)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4180_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_144 (.A(p_c_16), .B(WR_c), .Z(n6720)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_144.init = 16'heeee;
    LUT4 i4168_4_lut (.A(p_c_12), .B(p_c_5), .C(p_c_13), .D(p_c_14), 
         .Z(n6848)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4168_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_145 (.A(n3097), .B(n3_adj_27), .C(n6666), .D(state[5]), 
         .Z(pc_17__N_101[0])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_145.init = 16'hfefc;
    LUT4 i4_4_lut_adj_146 (.A(n7516), .B(n6852), .C(incoming_c), .D(instruction_c_0), 
         .Z(n3338)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i4_4_lut_adj_146.init = 16'hbbbf;
    LUT4 mux_839_i2_4_lut (.A(brackets[1]), .B(n1091), .C(n3036), .D(n7496), 
         .Z(n3034)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(249[6] 289[13])
    defparam mux_839_i2_4_lut.init = 16'hca0a;
    LUT4 n3896_bdd_4_lut (.A(n7504), .B(n7503), .C(n48), .D(n7521), 
         .Z(n7180)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam n3896_bdd_4_lut.init = 16'h7333;
    LUT4 i2_2_lut_rep_99_3_lut_4_lut (.A(n7521), .B(instruction_c_1), .C(n7509), 
         .D(instruction_c_0), .Z(n7495)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_2_lut_rep_99_3_lut_4_lut.init = 16'hfff7;
    LUT4 i2_4_lut_adj_147 (.A(n1_adj_25), .B(n2_adj_24), .C(n241), .D(state[6]), 
         .Z(p_16__N_120[1])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_147.init = 16'hfeee;
    LUT4 i1_4_lut_adj_148 (.A(n7496), .B(brackets[11]), .C(n4_adj_70), 
         .D(n12), .Z(brackets_17__N_137[11])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_148.init = 16'heca0;
    LUT4 select_490_Select_1_i2_4_lut (.A(p_c_1), .B(state[0]), .C(n2804), 
         .D(n2831), .Z(n2_adj_24)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_1_i2_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_rep_107_4_lut (.A(n7516), .B(n7521), .C(instruction_c_0), 
         .D(n7514), .Z(n7503)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_2_lut_rep_107_4_lut.init = 16'h0400;
    LUT4 mux_835_i2_4_lut (.A(n138), .B(p_c_1), .C(n2149), .D(n33), 
         .Z(n241)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i2_4_lut.init = 16'hcac0;
    LUT4 mux_612_i2_3_lut (.A(n355), .B(n138), .C(instruction_c_1), .Z(n2804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i2_3_lut.init = 16'hcaca;
    LUT4 i1029_4_lut (.A(state[5]), .B(n6507), .C(n6842), .D(n6_adj_86), 
         .Z(n3616)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1029_4_lut.init = 16'heece;
    LUT4 i1_2_lut_rep_103_3_lut_4_lut (.A(instruction_c_1), .B(n7521), .C(n7509), 
         .D(instruction_c_0), .Z(n7499)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(162[7:10])
    defparam i1_2_lut_rep_103_3_lut_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut_adj_149 (.A(n14_adj_34), .B(n3585), .C(state[0]), .Z(n6507)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut_adj_149.init = 16'h1010;
    LUT4 instruction_7__I_0_i15_2_lut_rep_105_3_lut_4_lut (.A(instruction_c_1), 
         .B(n7521), .C(n14_adj_34), .D(instruction_c_0), .Z(n7501)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(162[7:10])
    defparam instruction_7__I_0_i15_2_lut_rep_105_3_lut_4_lut.init = 16'hfbff;
    LUT4 i2036_2_lut_rep_117 (.A(instruction_c_1), .B(instruction_c_0), 
         .Z(n7513)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2036_2_lut_rep_117.init = 16'h8888;
    LUT4 i1_4_lut_adj_150 (.A(n1082), .B(brackets[10]), .C(n4_adj_64), 
         .D(n12), .Z(brackets_17__N_137[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_150.init = 16'heca0;
    LUT4 i2_4_lut_adj_151 (.A(n14_adj_34), .B(n35), .C(n4_adj_90), .D(n3604), 
         .Z(n6_adj_86)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(261[15] 264[13])
    defparam i2_4_lut_adj_151.init = 16'h50dc;
    LUT4 i2_3_lut_rep_112_4_lut (.A(instruction_c_1), .B(instruction_c_0), 
         .C(instruction_c_3), .D(instruction_c_2), .Z(n7508)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_rep_112_4_lut.init = 16'hff7f;
    LUT4 i2_4_lut_adj_152 (.A(n1_adj_50), .B(n2_adj_49), .C(n240), .D(state[6]), 
         .Z(p_16__N_120[2])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_152.init = 16'hfeee;
    LUT4 select_490_Select_2_i2_4_lut (.A(p_c_2), .B(state[0]), .C(n2803), 
         .D(n2831), .Z(n2_adj_49)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_2_i2_4_lut.init = 16'hc088;
    LUT4 mux_835_i3_4_lut (.A(n137), .B(p_c_2), .C(n2149), .D(n33), 
         .Z(n240)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i3_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut_4_lut_adj_153 (.A(instruction_c_1), .B(instruction_c_0), 
         .C(instruction_c_2), .D(n7522), .Z(n6112)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_153.init = 16'h7800;
    LUT4 i19_3_lut_3_lut (.A(instruction_c_1), .B(instruction_c_0), .C(instruction_c_2), 
         .Z(n8_adj_33)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;
    defparam i19_3_lut_3_lut.init = 16'h5858;
    LUT4 i1_2_lut_rep_118 (.A(instruction_c_4), .B(instruction_c_5), .Z(n7514)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_118.init = 16'h4444;
    LUT4 i4172_3_lut_4_lut (.A(instruction_c_4), .B(instruction_c_5), .C(instruction_c_3), 
         .D(n8_adj_33), .Z(n6852)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i4172_3_lut_4_lut.init = 16'h4000;
    LUT4 mux_612_i3_3_lut (.A(n354), .B(n137), .C(instruction_c_1), .Z(n2803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_119 (.A(instruction_c_0), .B(instruction_c_4), .Z(n7515)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_119.init = 16'h8888;
    LUT4 select_490_Select_6_i2_4_lut (.A(p_c_6), .B(state[0]), .C(n2799), 
         .D(n2831), .Z(n2_adj_47)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_6_i2_4_lut.init = 16'hc088;
    LUT4 i2_2_lut_3_lut_4_lut (.A(instruction_c_0), .B(instruction_c_4), 
         .C(instruction_c_1), .D(n1950), .Z(n6_adj_82)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0880;
    LUT4 i2176_2_lut_rep_114_3_lut (.A(instruction_c_2), .B(instruction_c_3), 
         .C(instruction_c_1), .Z(n7510)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2176_2_lut_rep_114_3_lut.init = 16'h8080;
    LUT4 i2_4_lut_adj_154 (.A(n1_adj_46), .B(n2_adj_45), .C(n237), .D(state[6]), 
         .Z(p_16__N_120[5])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_154.init = 16'hfeee;
    LUT4 i2022_2_lut_rep_120 (.A(instruction_c_7), .B(instruction_c_6), 
         .Z(n7516)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2022_2_lut_rep_120.init = 16'heeee;
    LUT4 i3_3_lut_rep_115_4_lut (.A(instruction_c_7), .B(instruction_c_6), 
         .C(instruction_c_0), .D(n7521), .Z(n7511)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_3_lut_rep_115_4_lut.init = 16'h0100;
    LUT4 i46_4_lut_then_2_lut (.A(instruction_c_6), .B(instruction_c_0), 
         .Z(n7526)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(124[6] 176[13])
    defparam i46_4_lut_then_2_lut.init = 16'h1111;
    LUT4 i1018_4_lut (.A(n14_adj_34), .B(n7508), .C(n7506), .D(FWD), 
         .Z(n3604)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(278[14] 281[13])
    defparam i1018_4_lut.init = 16'hfaee;
    VLO i1 (.Z(GND_net));
    LUT4 i3_4_lut_4_lut (.A(instruction_c_2), .B(instruction_c_1), .C(instruction_c_6), 
         .D(n7515), .Z(n6543)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(155[13:21])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i2_4_lut_adj_155 (.A(n1_adj_42), .B(n2_adj_41), .C(n239), .D(state[6]), 
         .Z(p_16__N_120[3])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_155.init = 16'hfeee;
    LUT4 i2_2_lut_rep_121 (.A(state[0]), .B(state[5]), .Z(n7517)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_2_lut_rep_121.init = 16'heeee;
    LUT4 i118_3_lut_4_lut_4_lut (.A(state[0]), .B(state[5]), .C(n7502), 
         .D(n3036), .Z(n59)) /* synthesis lut_function=(!(A (C (D))+!A (B))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i118_3_lut_4_lut_4_lut.init = 16'h1bbb;
    LUT4 i1_4_lut_adj_156 (.A(n3036), .B(state[5]), .C(n6870), .D(state[0]), 
         .Z(n12)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_156.init = 16'h5f77;
    LUT4 i101_4_lut_4_lut (.A(state[0]), .B(state[5]), .C(brackets[0]), 
         .D(n7498), .Z(n106)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i101_4_lut_4_lut.init = 16'hbab0;
    LUT4 select_490_Select_3_i2_4_lut (.A(p_c_3), .B(state[0]), .C(n2802), 
         .D(n2831), .Z(n2_adj_41)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam select_490_Select_3_i2_4_lut.init = 16'hc088;
    LUT4 mux_835_i4_4_lut (.A(n136), .B(p_c_3), .C(n2149), .D(n33), 
         .Z(n239)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(117[9:24])
    defparam mux_835_i4_4_lut.init = 16'hcac0;
    LUT4 mux_612_i4_3_lut (.A(n353), .B(n136), .C(instruction_c_1), .Z(n2802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_612_i4_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_157 (.A(delay[1]), .B(delay[2]), .C(delay[0]), .D(delay[4]), 
         .Z(n6114)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_157.init = 16'hfffe;
    LUT4 i1_4_lut_adj_158 (.A(delay[7]), .B(delay[6]), .C(delay[3]), .D(delay[5]), 
         .Z(n6190)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_158.init = 16'hfffe;
    LUT4 i1_4_lut_adj_159 (.A(n7496), .B(brackets[4]), .C(n4_adj_78), 
         .D(n12), .Z(brackets_17__N_137[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_159.init = 16'heca0;
    LUT4 i1_4_lut_adj_160 (.A(n7496), .B(brackets[15]), .C(n4_adj_67), 
         .D(n12), .Z(brackets_17__N_137[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i1_4_lut_adj_160.init = 16'heca0;
    LUT4 i1_2_lut_rep_122 (.A(instruction_c_0), .B(instruction_c_1), .Z(n7518)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(124[6] 176[13])
    defparam i1_2_lut_rep_122.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_161 (.A(instruction_c_4), .B(instruction_c_5), 
         .C(instruction_c_6), .Z(n6175)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_161.init = 16'h2020;
    LUT4 reduce_nor_852_i1_2_lut_rep_124 (.A(state[0]), .B(state[6]), .Z(n7520)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_nor_852_i1_2_lut_rep_124.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(state[0]), .B(state[6]), .C(state[4]), .D(n6187), 
         .Z(n3901)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4193_2_lut (.A(instruction_c_1), .B(n1950), .Z(n6870)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i4193_2_lut.init = 16'h6666;
    LUT4 select_490_Select_0_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_0), .Z(n1_adj_23)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_0_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 select_490_Select_1_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_1), .Z(n1_adj_25)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_1_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 select_490_Select_2_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_2), .Z(n1_adj_50)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_2_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 select_490_Select_3_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_3), .Z(n1_adj_42)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_3_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i926_1_lut (.A(drive_bus), .Z(n3500)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(74[9:14])
    defparam i926_1_lut.init = 16'h5555;
    LUT4 select_490_Select_4_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_4), .Z(n1_adj_44)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_4_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_4_lut_adj_162 (.A(n1_adj_44), .B(n2_adj_43), .C(n238), .D(state[6]), 
         .Z(p_16__N_120[4])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(99[4] 291[11])
    defparam i2_4_lut_adj_162.init = 16'hfeee;
    LUT4 select_490_Select_5_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_5), .Z(n1_adj_46)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_5_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 select_490_Select_6_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_6), .Z(n1_adj_48)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_6_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 select_490_Select_7_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_7), .Z(n1_adj_39)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_7_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 select_490_Select_8_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_8), .Z(n1_adj_36)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_8_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1996_2_lut (.A(inPort_c_0), .B(incoming_c), .Z(n290)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kuash/onedrive/documents/brainfuck/brainfuino/github repo/brainfuck_up/brainfuino/brainfuck_up/source/brainfuck_up.v(136[10] 140[12])
    defparam i1996_2_lut.init = 16'h8888;
    LUT4 select_490_Select_10_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_10), .Z(n1_adj_30)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_10_i1_2_lut_3_lut.init = 16'h1010;
    PFUMX i4471 (.BLUT(n7528), .ALUT(n7529), .C0(instruction_c_2), .Z(n7530));
    LUT4 select_490_Select_11_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_11), .Z(n1_adj_29)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_11_i1_2_lut_3_lut.init = 16'h1010;
    PFUMX i4469 (.BLUT(n7525), .ALUT(n7526), .C0(instruction_c_5), .Z(n7527));
    LUT4 select_490_Select_12_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_12), .Z(n1)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_12_i1_2_lut_3_lut.init = 16'h1010;
    LUT4 select_490_Select_13_i1_2_lut_3_lut (.A(state[0]), .B(state[6]), 
         .C(p_c_13), .Z(n1_adj_9)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam select_490_Select_13_i1_2_lut_3_lut.init = 16'h1010;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

