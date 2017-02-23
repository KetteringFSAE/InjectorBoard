*0001* stgn gain5.8 sssc;  *0056 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0002* ldjr1 41;  *0057 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0003* ldjr2 4;  *0058 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0004* cwef jr1 _start row1;  *0059 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0005* joslr 3 start1;  *0062 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0006* joslr 4 start2;  *0063 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0007* jmpf jr1;  *0064 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0008* dfsct hs1 hs2 ls1;  *0067 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0009* jmpr 3;  *0068 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0010* dfsct hs1 hs2 ls2;  *0070 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0011* jmpr 1;  *0071 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0012* load 0 dac_sssc _ofs;  *0074 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0013* cwer 4 ocur row2;  *0075 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0014* stf low b0;  *0076 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0015* stos off on on;  *0077 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0016* wait row12;  *0078 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0017* ldcd rst _ofs keep keep 4 c1;  *0081 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0018* load 1 dac_sssc _ofs;  *0082 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0019* cwer 9 tc1 row2;  *0083 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0020* cwer 3 tc2 row3;  *0084 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0021* cwer 4 ocur row4;  *0085 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0022* stf high b0;  *0086 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0023* stos on off on;  *0088 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0024* wait row124;  *0089 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0025* ldcd rst ofs keep keep 3 c2;  *0091 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0026* stos off off on;  *0092 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0027* wait row123;  *0093 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0028* ldcd rst ofs keep keep 5 c3;  *0096 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0029* stos off off off;  *0097 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0030* cwer 2 tc3 row4;  *0098 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0031* wait row14;  *0099 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0032* ldcd rst _ofs keep keep 7 c1;  *0102 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0033* load 2 dac_sssc _ofs;  *0103 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0034* cwer 8 tc1 row2;  *0104 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0035* cwer 2 tc2 row3;  *0105 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0036* cwer 3 ocur row4;  *0106 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0037* stos on off on;  *0108 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0038* wait row124;  *0109 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0039* ldcd rst _ofs keep keep 6 c2;  *0111 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0040* stos off off on;  *0112 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0041* wait row123;  *0113 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0042* stos off off off;  *0116 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0043* stf high b0;  *0117 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0044* jmpf jr2;  *0118 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0045* stgn gain5.8 sssc;  *0131 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0046* ldjr1 85;  *0132 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0047* ldjr2 48;  *0133 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0048* cwef jr1 _start row1;  *0134 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0049* joslr 3 start3;  *0138 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0050* joslr 4 start4;  *0139 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0051* jmpf jr1;  *0140 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0052* dfsct hs3 hs4 ls3;  *0143 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0053* jmpr 3;  *0144 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0054* dfsct hs3 hs4 ls4;  *0146 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0055* jmpr 1;  *0147 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0056* load 0 dac_sssc _ofs;  *0150 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0057* cwer 4 ocur row2;  *0151 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0058* stf low b0;  *0152 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0059* stos off on on;  *0153 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0060* wait row12;  *0154 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0061* ldcd rst _ofs keep keep 4 c1;  *0157 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0062* load 1 dac_sssc _ofs;  *0158 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0063* cwer 9 tc1 row2;  *0159 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0064* cwer 3 tc2 row3;  *0160 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0065* cwer 4 ocur row4;  *0161 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0066* stf high b0;  *0162 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0067* stos on off on;  *0164 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0068* wait row124;  *0165 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0069* ldcd rst ofs keep keep 3 c2;  *0167 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0070* stos off off on;  *0168 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0071* wait row123;  *0169 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0072* ldcd rst ofs keep keep 5 c3;  *0172 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0073* stos off off off;  *0173 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0074* cwer 2 tc3 row4;  *0174 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0075* wait row14;  *0175 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0076* ldcd rst _ofs keep keep 7 c1;  *0178 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0077* load 2 dac_sssc _ofs;  *0179 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0078* cwer 8 tc1 row2;  *0180 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0079* cwer 2 tc2 row3;  *0181 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0080* cwer 3 ocur row4;  *0182 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0081* stos on off on;  *0184 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0082* wait row124;  *0185 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0083* ldcd rst _ofs keep keep 6 c2;  *0187 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0084* stos off off on;  *0188 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0085* wait row123;  *0189 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0086* stos off off off;  *0192 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0087* stf high b0;  *0193 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
*0088* jmpf jr2;  *0194 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh1\ch1.psc
