* Generated SPICE netlist for add16se_2E1

.include memristor_gates.lib

* Voltage source
VDD Vcc 0 DC 1.8


VA_0 A_0 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_1 A_1 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_2 A_2 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_3 A_3 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_4 A_4 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_5 A_5 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_6 A_6 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_7 A_7 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_8 A_8 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_9 A_9 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_10 A_10 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_11 A_11 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_12 A_12 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_13 A_13 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_14 A_14 0 PULSE(0 1 0 1n 1n 5n 10n)
VA_15 A_15 0 PULSE(0 1 0 1n 1n 5n 10n)


VB_0 B_0 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_1 B_1 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_2 B_2 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_3 B_3 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_4 B_4 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_5 B_5 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_6 B_6 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_7 B_7 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_8 B_8 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_9 B_9 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_10 B_10 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_11 B_11 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_12 B_12 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_13 B_13 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_14 B_14 0 PULSE(0 1 0 1n 1n 5n 10n)
VB_15 B_15 0 PULSE(0 1 0 1n 1n 5n 10n)




XAND2_0 A_7 B_7 sig_46 Vcc AND2
XXOR2_1 A_7 B_7 sig_47 Vcc XOR2
XAND2_2 A_8 B_8 sig_48 Vcc AND2
XXOR2_3 A_8 B_8 sig_49 Vcc XOR2
XAND2_4 A_9 B_9 sig_50 Vcc AND2
XXOR2_5 A_9 B_9 sig_51 Vcc XOR2
XAND2_6 A_10 B_10 sig_52 Vcc AND2
XXOR2_7 A_10 B_10 sig_53 Vcc XOR2
XAND2_8 A_11 B_11 sig_54 Vcc AND2
XXOR2_9 A_11 B_11 sig_55 Vcc XOR2
XAND2_10 A_12 B_12 sig_56 Vcc AND2
XXOR2_11 A_12 B_12 sig_57 Vcc XOR2
XAND2_12 A_13 B_13 sig_58 Vcc AND2
XXOR2_13 A_13 B_13 sig_59 Vcc XOR2
XAND2_14 A_14 B_14 sig_60 Vcc AND2
XXOR2_15 A_14 B_14 sig_61 Vcc XOR2
XAND2_16 A_15 B_15 sig_62 Vcc AND2
XXOR2_17 A_15 B_15 sig_63 Vcc XOR2
XXOR2_18 A_15 B_15 sig_64 Vcc XOR2



XAND2_19 sig_49 sig_46 sig_74 Vcc AND2
XAND2_20 sig_49 sig_47 sig_75 Vcc AND2
XOR2_21 sig_48 sig_74 sig_76 Vcc OR2
XAND2_22 sig_53 sig_50 sig_77 Vcc AND2
XAND2_23 sig_53 sig_51 sig_78 Vcc AND2
XOR2_24 sig_52 sig_77 sig_79 Vcc OR2
XAND2_25 sig_57 sig_54 sig_80 Vcc AND2
XAND2_26 sig_57 sig_55 sig_81 Vcc AND2
XOR2_27 sig_56 sig_80 sig_82 Vcc OR2
XAND2_28 sig_61 sig_58 sig_83 Vcc AND2
XAND2_29 sig_61 sig_59 sig_84 Vcc AND2
XOR2_30 sig_60 sig_83 sig_85 Vcc OR2
XAND2_31 sig_78 sig_76 sig_91 Vcc AND2
XAND2_32 sig_78 sig_75 sig_92 Vcc AND2
XOR2_33 sig_79 sig_91 sig_93 Vcc OR2
XAND2_34 sig_84 sig_82 sig_94 Vcc AND2
XAND2_35 sig_84 sig_81 sig_95 Vcc AND2
XOR2_36 sig_85 sig_94 sig_96 Vcc OR2
XOR2_37 A_6 B_6 sig_98 Vcc OR2
XAND2_38 sig_95 sig_93 sig_99 Vcc AND2
XAND2_39 sig_95 sig_92 sig_100 Vcc AND2
XOR2_40 sig_96 sig_99 sig_101 Vcc OR2
XAND2_41 sig_100 sig_98 sig_102 Vcc AND2
XOR2_42 sig_101 sig_102 sig_103 Vcc OR2
XAND2_43 sig_92 sig_98 sig_104 Vcc AND2
XOR2_44 sig_93 sig_104 sig_105 Vcc OR2
XAND2_45 sig_75 sig_98 sig_108 Vcc AND2
XOR2_46 sig_76 sig_108 sig_109 Vcc OR2
XAND2_47 sig_81 sig_105 sig_110 Vcc AND2
XOR2_48 sig_82 sig_110 sig_111 Vcc OR2
XAND2_49 sig_47 sig_98 sig_118 Vcc AND2
XOR2_50 sig_46 sig_118 sig_119 Vcc OR2
XAND2_51 sig_51 sig_109 sig_120 Vcc AND2
XOR2_52 sig_50 sig_120 sig_121 Vcc OR2
XAND2_53 sig_55 sig_105 sig_122 Vcc AND2
XOR2_54 sig_54 sig_122 sig_123 Vcc OR2
XAND2_55 sig_59 sig_111 sig_124 Vcc AND2
XOR2_56 sig_58 sig_124 sig_125 Vcc OR2
XAND2_57 sig_63 sig_103 sig_126 Vcc AND2
XOR2_58 sig_62 sig_126 sig_127 Vcc OR2
XXOR2_59 sig_47 sig_98 sig_134 Vcc XOR2
XXOR2_60 sig_49 sig_119 sig_135 Vcc XOR2
XXOR2_61 sig_51 sig_109 sig_136 Vcc XOR2
XXOR2_62 sig_53 sig_121 sig_137 Vcc XOR2
XXOR2_63 sig_55 sig_105 sig_138 Vcc XOR2
XXOR2_64 sig_57 sig_123 sig_139 Vcc XOR2
XXOR2_65 sig_59 sig_111 sig_140 Vcc XOR2
XXOR2_66 sig_61 sig_125 sig_141 Vcc XOR2
XXOR2_67 sig_63 sig_103 sig_142 Vcc XOR2
XXOR2_68 sig_64 sig_127 sig_143 Vcc XOR2


* Simulation
.tran 1n 30n

.end
