*0001* stgn gain5.8 ossc;  *0050 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0002* load 3 dac_ossc _ofs;  *0051 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0003* load 2 dac4h4n _ofs;  *0052 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0004* stdm null;  *0053 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0005* cwer 11 _f0 row1;  *0054 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0006* cwer 2 _vb row2;  *0055 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0007* cwer 5 vb row3;  *0056 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0008* load 0 dac4h4n _ofs;  *0059 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0009* stf high b1;  *0060 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0010* stdcctl async;  *0061 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0011* wait row13;  *0062 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0012* load 1 dac4h4n _ofs;  *0065 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0013* stf low b1;  *0066 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0014* stdcctl sync;  *0067 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0015* wait row12;  *0068 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0016* stdcctl sync;  *0071 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0017* stf low b1;  *0072 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0018* stf high b1;  *0073 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0019* jocr -3 _f0;  *0074 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0020* jmpr -12;  *0075 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0021* stgn gain19.4 ossc;  *0093 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0022* ldjr1 44;  *0094 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0023* ldjr2 24;  *0095 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0024* cwef jr1 _start row1;  *0096 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0025* joslr 3 start5;  *0099 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0026* joslr 4 start6;  *0100 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0027* jmpf jr1;  *0101 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0028* dfsct hs5 ls5 undef;  *0104 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0029* jmpr 3;  *0105 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0030* dfsct hs5 ls6 undef;  *0107 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0031* jmpr 1;  *0108 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0032* load 5 dac_ossc _ofs;  *0111 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0033* cwer 3 cur3 row2;  *0112 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0034* stos on on keep;  *0113 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0035* wait row12;  *0114 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0036* ldcd rst _ofs keep keep 8 c1;  *0117 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0037* load 6 dac_ossc _ofs;  *0118 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0038* cwer 7 tc1 row2;  *0119 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0039* cwer 2 tc2 row3;  *0120 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0040* cwer 3 cur3 row4;  *0121 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0041* stos on on keep;  *0123 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0042* wait row124;  *0124 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0043* ldcd rst _ofs off on 7 c2;  *0126 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0044* wait row123;  *0127 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0045* stos off off keep;  *0130 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
*0046* jmpf jr2;  *0131 C:\Users\Alex\Downloads\AN4849SW\PeakHold_4inj_VFM_65V\MicrocodeCh2\ch2.psc
