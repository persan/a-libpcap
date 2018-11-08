--  begin read only
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings (Off); -- Since this is automaticly generated

with Interfaces.C; use Interfaces.C;


package PCAP.Low_Level.pcap_bpf_h is

   BPF_RELEASE : constant := 199606;  --  /usr/include/pcap/bpf.h:79
   --  unsupported macro: BPF_ALIGNMENT sizeof(bpf_int32)
   --  arg-macro: function BPF_WORDALIGN (x)
   --    return ((x)+(BPF_ALIGNMENT-1))and~(BPF_ALIGNMENT-1);

   DLT_NULL : constant := 0;  --  /usr/include/pcap/bpf.h:132
   DLT_EN10MB : constant := 1;  --  /usr/include/pcap/bpf.h:133
   DLT_EN3MB : constant := 2;  --  /usr/include/pcap/bpf.h:134
   DLT_AX25 : constant := 3;  --  /usr/include/pcap/bpf.h:135
   DLT_PRONET : constant := 4;  --  /usr/include/pcap/bpf.h:136
   DLT_CHAOS : constant := 5;  --  /usr/include/pcap/bpf.h:137
   DLT_IEEE802 : constant := 6;  --  /usr/include/pcap/bpf.h:138
   DLT_ARCNET : constant := 7;  --  /usr/include/pcap/bpf.h:139
   DLT_SLIP : constant := 8;  --  /usr/include/pcap/bpf.h:140
   DLT_PPP : constant := 9;  --  /usr/include/pcap/bpf.h:141
   DLT_FDDI : constant := 10;  --  /usr/include/pcap/bpf.h:142

   DLT_ATM_RFC1483 : constant := 11;  --  /usr/include/pcap/bpf.h:153

   DLT_RAW : constant := 12;  --  /usr/include/pcap/bpf.h:158

   DLT_SLIP_BSDOS : constant := 15;  --  /usr/include/pcap/bpf.h:173
   DLT_PPP_BSDOS : constant := 16;  --  /usr/include/pcap/bpf.h:174

   DLT_ATM_CLIP : constant := 19;  --  /usr/include/pcap/bpf.h:209

   DLT_REDBACK_SMARTEDGE : constant := 32;  --  /usr/include/pcap/bpf.h:215

   DLT_PPP_SERIAL : constant := 50;  --  /usr/include/pcap/bpf.h:222
   DLT_PPP_ETHER : constant := 51;  --  /usr/include/pcap/bpf.h:223

   DLT_SYMANTEC_FIREWALL : constant := 99;  --  /usr/include/pcap/bpf.h:232

   DLT_MATCHING_MIN : constant := 104;  --  /usr/include/pcap/bpf.h:251

   DLT_C_HDLC : constant := 104;  --  /usr/include/pcap/bpf.h:267
   --  unsupported macro: DLT_CHDLC DLT_C_HDLC

   DLT_IEEE802_11 : constant := 105;  --  /usr/include/pcap/bpf.h:270

   DLT_FRELAY : constant := 107;  --  /usr/include/pcap/bpf.h:285

   DLT_LOOP : constant := 108;  --  /usr/include/pcap/bpf.h:297

   DLT_ENC : constant := 109;  --  /usr/include/pcap/bpf.h:308

   DLT_LINUX_SLL : constant := 113;  --  /usr/include/pcap/bpf.h:321

   DLT_LTALK : constant := 114;  --  /usr/include/pcap/bpf.h:326

   DLT_ECONET : constant := 115;  --  /usr/include/pcap/bpf.h:331

   DLT_IPFILTER : constant := 116;  --  /usr/include/pcap/bpf.h:336

   DLT_PFLOG : constant := 117;  --  /usr/include/pcap/bpf.h:341

   DLT_CISCO_IOS : constant := 118;  --  /usr/include/pcap/bpf.h:346

   DLT_PRISM_HEADER : constant := 119;  --  /usr/include/pcap/bpf.h:353

   DLT_AIRONET_HEADER : constant := 120;  --  /usr/include/pcap/bpf.h:359

   DLT_HHDLC : constant := 121;  --  /usr/include/pcap/bpf.h:402

   DLT_IP_OVER_FC : constant := 122;  --  /usr/include/pcap/bpf.h:413

   DLT_SUNATM : constant := 123;  --  /usr/include/pcap/bpf.h:429

   DLT_RIO : constant := 124;  --  /usr/include/pcap/bpf.h:435
   DLT_PCI_EXP : constant := 125;  --  /usr/include/pcap/bpf.h:436
   DLT_AURORA : constant := 126;  --  /usr/include/pcap/bpf.h:437

   DLT_IEEE802_11_RADIO : constant := 127;  --  /usr/include/pcap/bpf.h:444

   DLT_TZSP : constant := 128;  --  /usr/include/pcap/bpf.h:454

   DLT_ARCNET_LINUX : constant := 129;  --  /usr/include/pcap/bpf.h:467

   DLT_JUNIPER_MLPPP : constant := 130;  --  /usr/include/pcap/bpf.h:475
   DLT_JUNIPER_MLFR : constant := 131;  --  /usr/include/pcap/bpf.h:476
   DLT_JUNIPER_ES : constant := 132;  --  /usr/include/pcap/bpf.h:477
   DLT_JUNIPER_GGSN : constant := 133;  --  /usr/include/pcap/bpf.h:478
   DLT_JUNIPER_MFR : constant := 134;  --  /usr/include/pcap/bpf.h:479
   DLT_JUNIPER_ATM2 : constant := 135;  --  /usr/include/pcap/bpf.h:480
   DLT_JUNIPER_SERVICES : constant := 136;  --  /usr/include/pcap/bpf.h:481
   DLT_JUNIPER_ATM1 : constant := 137;  --  /usr/include/pcap/bpf.h:482

   DLT_APPLE_IP_OVER_IEEE1394 : constant := 138;  --  /usr/include/pcap/bpf.h:499

   DLT_MTP2_WITH_PHDR : constant := 139;  --  /usr/include/pcap/bpf.h:505
   DLT_MTP2 : constant := 140;  --  /usr/include/pcap/bpf.h:506
   DLT_MTP3 : constant := 141;  --  /usr/include/pcap/bpf.h:507
   DLT_SCCP : constant := 142;  --  /usr/include/pcap/bpf.h:508

   DLT_DOCSIS : constant := 143;  --  /usr/include/pcap/bpf.h:513

   DLT_LINUX_IRDA : constant := 144;  --  /usr/include/pcap/bpf.h:530

   DLT_IBM_SP : constant := 145;  --  /usr/include/pcap/bpf.h:535
   DLT_IBM_SN : constant := 146;  --  /usr/include/pcap/bpf.h:536

   DLT_USER0 : constant := 147;  --  /usr/include/pcap/bpf.h:563
   DLT_USER1 : constant := 148;  --  /usr/include/pcap/bpf.h:564
   DLT_USER2 : constant := 149;  --  /usr/include/pcap/bpf.h:565
   DLT_USER3 : constant := 150;  --  /usr/include/pcap/bpf.h:566
   DLT_USER4 : constant := 151;  --  /usr/include/pcap/bpf.h:567
   DLT_USER5 : constant := 152;  --  /usr/include/pcap/bpf.h:568
   DLT_USER6 : constant := 153;  --  /usr/include/pcap/bpf.h:569
   DLT_USER7 : constant := 154;  --  /usr/include/pcap/bpf.h:570
   DLT_USER8 : constant := 155;  --  /usr/include/pcap/bpf.h:571
   DLT_USER9 : constant := 156;  --  /usr/include/pcap/bpf.h:572
   DLT_USER10 : constant := 157;  --  /usr/include/pcap/bpf.h:573
   DLT_USER11 : constant := 158;  --  /usr/include/pcap/bpf.h:574
   DLT_USER12 : constant := 159;  --  /usr/include/pcap/bpf.h:575
   DLT_USER13 : constant := 160;  --  /usr/include/pcap/bpf.h:576
   DLT_USER14 : constant := 161;  --  /usr/include/pcap/bpf.h:577
   DLT_USER15 : constant := 162;  --  /usr/include/pcap/bpf.h:578

   DLT_IEEE802_11_RADIO_AVS : constant := 163;  --  /usr/include/pcap/bpf.h:590

   DLT_JUNIPER_MONITOR : constant := 164;  --  /usr/include/pcap/bpf.h:598

   DLT_BACNET_MS_TP : constant := 165;  --  /usr/include/pcap/bpf.h:603

   DLT_PPP_PPPD : constant := 166;  --  /usr/include/pcap/bpf.h:619
   --  unsupported macro: DLT_PPP_WITH_DIRECTION DLT_PPP_PPPD
   --  unsupported macro: DLT_LINUX_PPP_WITHDIRECTION DLT_PPP_PPPD

   DLT_JUNIPER_PPPOE : constant := 167;  --  /usr/include/pcap/bpf.h:634
   DLT_JUNIPER_PPPOE_ATM : constant := 168;  --  /usr/include/pcap/bpf.h:635

   DLT_GPRS_LLC : constant := 169;  --  /usr/include/pcap/bpf.h:637
   DLT_GPF_T : constant := 170;  --  /usr/include/pcap/bpf.h:638
   DLT_GPF_F : constant := 171;  --  /usr/include/pcap/bpf.h:639

   DLT_GCOM_T1E1 : constant := 172;  --  /usr/include/pcap/bpf.h:645
   DLT_GCOM_SERIAL : constant := 173;  --  /usr/include/pcap/bpf.h:646

   DLT_JUNIPER_PIC_PEER : constant := 174;  --  /usr/include/pcap/bpf.h:653

   DLT_ERF_ETH : constant := 175;  --  /usr/include/pcap/bpf.h:661
   DLT_ERF_POS : constant := 176;  --  /usr/include/pcap/bpf.h:662

   DLT_LINUX_LAPD : constant := 177;  --  /usr/include/pcap/bpf.h:670

   DLT_JUNIPER_ETHER : constant := 178;  --  /usr/include/pcap/bpf.h:679
   DLT_JUNIPER_PPP : constant := 179;  --  /usr/include/pcap/bpf.h:680
   DLT_JUNIPER_FRELAY : constant := 180;  --  /usr/include/pcap/bpf.h:681
   DLT_JUNIPER_CHDLC : constant := 181;  --  /usr/include/pcap/bpf.h:682

   DLT_MFR : constant := 182;  --  /usr/include/pcap/bpf.h:687

   DLT_JUNIPER_VP : constant := 183;  --  /usr/include/pcap/bpf.h:695

   DLT_A429 : constant := 184;  --  /usr/include/pcap/bpf.h:704

   DLT_A653_ICM : constant := 185;  --  /usr/include/pcap/bpf.h:711

   DLT_USB : constant := 186;  --  /usr/include/pcap/bpf.h:717

   DLT_BLUETOOTH_HCI_H4 : constant := 187;  --  /usr/include/pcap/bpf.h:723

   DLT_IEEE802_16_MAC_CPS : constant := 188;  --  /usr/include/pcap/bpf.h:729

   DLT_USB_LINUX : constant := 189;  --  /usr/include/pcap/bpf.h:735

   DLT_CAN20B : constant := 190;  --  /usr/include/pcap/bpf.h:744

   DLT_IEEE802_15_4_LINUX : constant := 191;  --  /usr/include/pcap/bpf.h:750

   DLT_PPI : constant := 192;  --  /usr/include/pcap/bpf.h:756

   DLT_IEEE802_16_MAC_CPS_RADIO : constant := 193;  --  /usr/include/pcap/bpf.h:762

   DLT_JUNIPER_ISM : constant := 194;  --  /usr/include/pcap/bpf.h:770

   DLT_IEEE802_15_4 : constant := 195;  --  /usr/include/pcap/bpf.h:778

   DLT_SITA : constant := 196;  --  /usr/include/pcap/bpf.h:784

   DLT_ERF : constant := 197;  --  /usr/include/pcap/bpf.h:791

   DLT_RAIF1 : constant := 198;  --  /usr/include/pcap/bpf.h:798

   DLT_IPMB : constant := 199;  --  /usr/include/pcap/bpf.h:805

   DLT_JUNIPER_ST : constant := 200;  --  /usr/include/pcap/bpf.h:812

   DLT_BLUETOOTH_HCI_H4_WITH_PHDR : constant := 201;  --  /usr/include/pcap/bpf.h:818

   DLT_AX25_KISS : constant := 202;  --  /usr/include/pcap/bpf.h:827

   DLT_LAPD : constant := 203;  --  /usr/include/pcap/bpf.h:834

   DLT_PPP_WITH_DIR : constant := 204;  --  /usr/include/pcap/bpf.h:842
   DLT_C_HDLC_WITH_DIR : constant := 205;  --  /usr/include/pcap/bpf.h:843
   DLT_FRELAY_WITH_DIR : constant := 206;  --  /usr/include/pcap/bpf.h:844
   DLT_LAPB_WITH_DIR : constant := 207;  --  /usr/include/pcap/bpf.h:845

   DLT_IPMB_LINUX : constant := 209;  --  /usr/include/pcap/bpf.h:856

   DLT_FLEXRAY : constant := 210;  --  /usr/include/pcap/bpf.h:862

   DLT_MOST : constant := 211;  --  /usr/include/pcap/bpf.h:869

   DLT_LIN : constant := 212;  --  /usr/include/pcap/bpf.h:876

   DLT_X2E_SERIAL : constant := 213;  --  /usr/include/pcap/bpf.h:882

   DLT_X2E_XORAYA : constant := 214;  --  /usr/include/pcap/bpf.h:888

   DLT_IEEE802_15_4_NONASK_PHY : constant := 215;  --  /usr/include/pcap/bpf.h:899

   DLT_LINUX_EVDEV : constant := 216;  --  /usr/include/pcap/bpf.h:907

   DLT_GSMTAP_UM : constant := 217;  --  /usr/include/pcap/bpf.h:914
   DLT_GSMTAP_ABIS : constant := 218;  --  /usr/include/pcap/bpf.h:915

   DLT_MPLS : constant := 219;  --  /usr/include/pcap/bpf.h:922

   DLT_USB_LINUX_MMAPPED : constant := 220;  --  /usr/include/pcap/bpf.h:928

   DLT_DECT : constant := 221;  --  /usr/include/pcap/bpf.h:934

   DLT_AOS : constant := 222;  --  /usr/include/pcap/bpf.h:945

   DLT_WIHART : constant := 223;  --  /usr/include/pcap/bpf.h:954

   DLT_FC_2 : constant := 224;  --  /usr/include/pcap/bpf.h:960

   DLT_FC_2_WITH_FRAME_DELIMS : constant := 225;  --  /usr/include/pcap/bpf.h:974

   DLT_IPNET : constant := 226;  --  /usr/include/pcap/bpf.h:1022

   DLT_CAN_SOCKETCAN : constant := 227;  --  /usr/include/pcap/bpf.h:1031

   DLT_IPV4 : constant := 228;  --  /usr/include/pcap/bpf.h:1037
   DLT_IPV6 : constant := 229;  --  /usr/include/pcap/bpf.h:1038

   DLT_IEEE802_15_4_NOFCS : constant := 230;  --  /usr/include/pcap/bpf.h:1045

   DLT_DBUS : constant := 231;  --  /usr/include/pcap/bpf.h:1063

   DLT_JUNIPER_VS : constant := 232;  --  /usr/include/pcap/bpf.h:1069
   DLT_JUNIPER_SRX_E2E : constant := 233;  --  /usr/include/pcap/bpf.h:1070
   DLT_JUNIPER_FIBRECHANNEL : constant := 234;  --  /usr/include/pcap/bpf.h:1071

   DLT_DVB_CI : constant := 235;  --  /usr/include/pcap/bpf.h:1083

   DLT_MUX27010 : constant := 236;  --  /usr/include/pcap/bpf.h:1090

   DLT_STANAG_5066_D_PDU : constant := 237;  --  /usr/include/pcap/bpf.h:1096

   DLT_JUNIPER_ATM_CEMIC : constant := 238;  --  /usr/include/pcap/bpf.h:1102

   DLT_NFLOG : constant := 239;  --  /usr/include/pcap/bpf.h:1110

   DLT_NETANALYZER : constant := 240;  --  /usr/include/pcap/bpf.h:1120

   DLT_NETANALYZER_TRANSPARENT : constant := 241;  --  /usr/include/pcap/bpf.h:1131

   DLT_IPOIB : constant := 242;  --  /usr/include/pcap/bpf.h:1138

   DLT_MPEG_2_TS : constant := 243;  --  /usr/include/pcap/bpf.h:1145

   DLT_NG40 : constant := 244;  --  /usr/include/pcap/bpf.h:1153

   DLT_NFC_LLCP : constant := 245;  --  /usr/include/pcap/bpf.h:1163

   DLT_PFSYNC : constant := 246;  --  /usr/include/pcap/bpf.h:1173

   DLT_INFINIBAND : constant := 247;  --  /usr/include/pcap/bpf.h:1181

   DLT_SCTP : constant := 248;  --  /usr/include/pcap/bpf.h:1188

   DLT_USBPCAP : constant := 249;  --  /usr/include/pcap/bpf.h:1195

   DLT_RTAC_SERIAL : constant := 250;  --  /usr/include/pcap/bpf.h:1203

   DLT_BLUETOOTH_LE_LL : constant := 251;  --  /usr/include/pcap/bpf.h:1210

   DLT_WIRESHARK_UPPER_PDU : constant := 252;  --  /usr/include/pcap/bpf.h:1223

   DLT_NETLINK : constant := 253;  --  /usr/include/pcap/bpf.h:1228

   DLT_BLUETOOTH_LINUX_MONITOR : constant := 254;  --  /usr/include/pcap/bpf.h:1233

   DLT_BLUETOOTH_BREDR_BB : constant := 255;  --  /usr/include/pcap/bpf.h:1239

   DLT_BLUETOOTH_LE_LL_WITH_PHDR : constant := 256;  --  /usr/include/pcap/bpf.h:1244

   DLT_PROFIBUS_DL : constant := 257;  --  /usr/include/pcap/bpf.h:1249

   DLT_PKTAP : constant := 258;  --  /usr/include/pcap/bpf.h:1298

   DLT_EPON : constant := 259;  --  /usr/include/pcap/bpf.h:1306

   DLT_IPMI_HPM_2 : constant := 260;  --  /usr/include/pcap/bpf.h:1312

   DLT_MATCHING_MAX : constant := 260;  --  /usr/include/pcap/bpf.h:1314
   --  arg-macro: function DLT_CLASS (x)
   --    return (x) and 16#03ff0000#;

   DLT_CLASS_NETBSD_RAWAF : constant := 16#02240000#;  --  /usr/include/pcap/bpf.h:1330
   --  arg-macro: function DLT_NETBSD_RAWAF (af)
   --    return DLT_CLASS_NETBSD_RAWAF or (af);
   --  arg-macro: function DLT_NETBSD_RAWAF_AF (x)
   --    return (x) and 16#0000ffff#;
   --  arg-macro: function DLT_IS_NETBSD_RAWAF (x)
   --    return DLT_CLASS(x) = DLT_CLASS_NETBSD_RAWAF;
   --  arg-macro: function BPF_CLASS (code)
   --    return (code) and 16#07#;

   BPF_LD : constant := 16#00#;  --  /usr/include/pcap/bpf.h:1351
   BPF_LDX : constant := 16#01#;  --  /usr/include/pcap/bpf.h:1352
   BPF_ST : constant := 16#02#;  --  /usr/include/pcap/bpf.h:1353
   BPF_STX : constant := 16#03#;  --  /usr/include/pcap/bpf.h:1354
   BPF_ALU : constant := 16#04#;  --  /usr/include/pcap/bpf.h:1355
   BPF_JMP : constant := 16#05#;  --  /usr/include/pcap/bpf.h:1356
   BPF_RET : constant := 16#06#;  --  /usr/include/pcap/bpf.h:1357
   BPF_MISC : constant := 16#07#;  --  /usr/include/pcap/bpf.h:1358
   --  arg-macro: function BPF_SIZE (code)
   --    return (code) and 16#18#;

   BPF_W : constant := 16#00#;  --  /usr/include/pcap/bpf.h:1362
   BPF_H : constant := 16#08#;  --  /usr/include/pcap/bpf.h:1363
   BPF_B : constant := 16#10#;  --  /usr/include/pcap/bpf.h:1364
   --  arg-macro: function BPF_MODE (code)
   --    return (code) and 16#e0#;

   BPF_IMM : constant := 16#00#;  --  /usr/include/pcap/bpf.h:1367
   BPF_ABS : constant := 16#20#;  --  /usr/include/pcap/bpf.h:1368
   BPF_IND : constant := 16#40#;  --  /usr/include/pcap/bpf.h:1369
   BPF_MEM : constant := 16#60#;  --  /usr/include/pcap/bpf.h:1370
   BPF_LEN : constant := 16#80#;  --  /usr/include/pcap/bpf.h:1371
   BPF_MSH : constant := 16#a0#;  --  /usr/include/pcap/bpf.h:1372
   --  arg-macro: function BPF_OP (code)
   --    return (code) and 16#f0#;

   BPF_ADD : constant := 16#00#;  --  /usr/include/pcap/bpf.h:1378
   BPF_SUB : constant := 16#10#;  --  /usr/include/pcap/bpf.h:1379
   BPF_MUL : constant := 16#20#;  --  /usr/include/pcap/bpf.h:1380
   BPF_DIV : constant := 16#30#;  --  /usr/include/pcap/bpf.h:1381
   BPF_OR : constant := 16#40#;  --  /usr/include/pcap/bpf.h:1382
   BPF_AND : constant := 16#50#;  --  /usr/include/pcap/bpf.h:1383
   BPF_LSH : constant := 16#60#;  --  /usr/include/pcap/bpf.h:1384
   BPF_RSH : constant := 16#70#;  --  /usr/include/pcap/bpf.h:1385
   BPF_NEG : constant := 16#80#;  --  /usr/include/pcap/bpf.h:1386
   BPF_MOD : constant := 16#90#;  --  /usr/include/pcap/bpf.h:1387
   BPF_XOR : constant := 16#a0#;  --  /usr/include/pcap/bpf.h:1388

   BPF_JA : constant := 16#00#;  --  /usr/include/pcap/bpf.h:1395
   BPF_JEQ : constant := 16#10#;  --  /usr/include/pcap/bpf.h:1396
   BPF_JGT : constant := 16#20#;  --  /usr/include/pcap/bpf.h:1397
   BPF_JGE : constant := 16#30#;  --  /usr/include/pcap/bpf.h:1398
   BPF_JSET : constant := 16#40#;  --  /usr/include/pcap/bpf.h:1399
   --  arg-macro: function BPF_SRC (code)
   --    return (code) and 16#08#;

   BPF_K : constant := 16#00#;  --  /usr/include/pcap/bpf.h:1412
   BPF_X : constant := 16#08#;  --  /usr/include/pcap/bpf.h:1413
   --  arg-macro: function BPF_RVAL (code)
   --    return (code) and 16#18#;

   BPF_A : constant := 16#10#;  --  /usr/include/pcap/bpf.h:1417
   --  arg-macro: function BPF_MISCOP (code)
   --    return (code) and 16#f8#;

   BPF_TAX : constant := 16#00#;  --  /usr/include/pcap/bpf.h:1422

   BPF_TXA : constant := 16#80#;  --  /usr/include/pcap/bpf.h:1439
   --  arg-macro: procedure BPF_STMT (code, k)
   --    { (u_short)(code), 0, 0, k }
   --  arg-macro: procedure BPF_JUMP (code, k, jt, jf)
   --    { (u_short)(code), jt, jf, k }

   BPF_MEMWORDS : constant := 16;  --  /usr/include/pcap/bpf.h:1483

  ---
  -- * Copyright (c) 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997
  -- *	The Regents of the University of California.  All rights reserved.
  -- *
  -- * This code is derived from the Stanford/CMU enet packet filter,
  -- * (net/enet.c) distributed as part of 4.3BSD, and code contributed
  -- * to Berkeley by Steven McCanne and Van Jacobson both of Lawrence 
  -- * Berkeley Laboratory.
  -- *
  -- * Redistribution and use in source and binary forms, with or without
  -- * modification, are permitted provided that the following conditions
  -- * are met:
  -- * 1. Redistributions of source code must retain the above copyright
  -- *    notice, this list of conditions and the following disclaimer.
  -- * 2. Redistributions in binary form must reproduce the above copyright
  -- *    notice, this list of conditions and the following disclaimer in the
  -- *    documentation and/or other materials provided with the distribution.
  -- * 3. All advertising materials mentioning features or use of this software
  -- *    must display the following acknowledgement:
  -- *      This product includes software developed by the University of
  -- *      California, Berkeley and its contributors.
  -- * 4. Neither the name of the University nor the names of its contributors
  -- *    may be used to endorse or promote products derived from this software
  -- *    without specific prior written permission.
  -- *
  -- * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
  -- * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  -- * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  -- * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
  -- * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  -- * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  -- * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  -- * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  -- * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  -- * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  -- * SUCH DAMAGE.
  -- *
  -- *      @(#)bpf.h       7.1 (Berkeley) 5/7/91
  --  

  -- * This is libpcap's cut-down version of bpf.h; it includes only
  -- * the stuff needed for the code generator and the userland BPF
  -- * interpreter, and the libpcap APIs for setting filters, etc..
  -- *
  -- * "pcap-bpf.c" will include the native OS version, as it deals with
  -- * the OS's BPF implementation.
  -- *
  -- * At least two programs found by Google Code Search explicitly includes
  -- * <pcap/bpf.h> (even though <pcap.h>/<pcap/pcap.h> includes it for you),
  -- * so moving that stuff to <pcap/pcap.h> would break the build for some
  -- * programs.
  --  

  -- * If we've already included <net/bpf.h>, don't re-define this stuff.
  -- * We assume BSD-style multiple-include protection in <net/bpf.h>,
  -- * which is true of all but the oldest versions of FreeBSD and NetBSD,
  -- * or Tru64 UNIX-style multiple-include protection (or, at least,
  -- * Tru64 UNIX 5.x-style; I don't have earlier versions available to check),
  -- * or AIX-style multiple-include protection (or, at least, AIX 5.x-style;
  -- * I don't have earlier versions available to check).
  -- *
  -- * We do not check for BPF_MAJOR_VERSION, as that's defined by
  -- * <linux/filter.h>, which is directly or indirectly included in some
  -- * programs that also include pcap.h, and <linux/filter.h> doesn't
  -- * define stuff we need.
  -- *
  -- * This also provides our own multiple-include protection.
  --  

  -- BSD style release date  
   subtype bpf_int32 is int;  -- /usr/include/pcap/bpf.h:85

   subtype bpf_u_int32 is unsigned;  -- /usr/include/pcap/bpf.h:86

  -- * Alignment macros.  BPF_WORDALIGN rounds up to the next 
  -- * even multiple of BPF_ALIGNMENT.
  -- *
  -- * Tcpdump's print-pflog.c uses this, so we define it here.
  --  

  -- * Structure for "pcap_compile()", "pcap_setfilter()", etc..
  --  

   type bpf_insn;
   type bpf_program is record
      bf_len : aliased unsigned;  -- /usr/include/pcap/bpf.h:106
      bf_insns : access bpf_insn;  -- /usr/include/pcap/bpf.h:107
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/pcap/bpf.h:105

  -- * Link-layer header type codes.
  -- *
  -- * Do *NOT* add new values to this list without asking
  -- * "tcpdump-workers@lists.tcpdump.org" for a value.  Otherwise, you run
  -- * the risk of using a value that's already being used for some other
  -- * purpose, and of having tools that read libpcap-format captures not
  -- * being able to handle captures with your new DLT_ value, with no hope
  -- * that they will ever be changed to do so (as that would destroy their
  -- * ability to read captures using that value for that other purpose).
  -- *
  -- * See
  -- *
  -- *	http://www.tcpdump.org/linktypes.html
  -- *
  -- * for detailed descriptions of some of these link-layer header types.
  --  

  -- * These are the types that are the same on all platforms, and that
  -- * have been defined by <net/bpf.h> for ages.
  --  

  -- * These are types that are different on some platforms, and that
  -- * have been defined by <net/bpf.h> for ages.  We use #ifdefs to
  -- * detect the BSDs that define them differently from the traditional
  -- * libpcap <net/bpf.h>
  -- *
  -- * XXX - DLT_ATM_RFC1483 is 13 in BSD/OS, and DLT_RAW is 14 in BSD/OS,
  -- * but I don't know what the right #define is for BSD/OS.
  --  

  -- * Given that the only OS that currently generates BSD/OS SLIP or PPP
  -- * is, well, BSD/OS, arguably everybody should have chosen its values
  -- * for DLT_SLIP_BSDOS and DLT_PPP_BSDOS, which are 15 and 16, but they
  -- * didn't.  So it goes.
  --  

  -- * 17 was used for DLT_PFLOG in OpenBSD; it no longer is.
  -- *
  -- * It was DLT_LANE8023 in SuSE 6.3, so we defined LINKTYPE_PFLOG
  -- * as 117 so that pflog captures would use a link-layer header type
  -- * value that didn't collide with any other values.  On all
  -- * platforms other than OpenBSD, we defined DLT_PFLOG as 117,
  -- * and we mapped between LINKTYPE_PFLOG and DLT_PFLOG.
  -- *
  -- * OpenBSD eventually switched to using 117 for DLT_PFLOG as well.
  -- *
  -- * Don't use 17 for anything else.
  --  

  -- * 18 is used for DLT_PFSYNC in OpenBSD, NetBSD, DragonFly BSD and
  -- * Mac OS X; don't use it for anything else.  (FreeBSD uses 121,
  -- * which collides with DLT_HHDLC, even though it doesn't use 18
  -- * for anything and doesn't appear to have ever used it for anything.)
  -- *
  -- * We define it as 18 on those platforms; it is, unfortunately, used
  -- * for DLT_CIP in Suse 6.3, so we don't define it as DLT_PFSYNC
  -- * in general.  As the packet format for it, like that for
  -- * DLT_PFLOG, is not only OS-dependent but OS-version-dependent,
  -- * we don't support printing it in tcpdump except on OSes that
  -- * have the relevant header files, so it's not that useful on
  -- * other platforms.
  --  

  -- * Apparently Redback uses this for its SmartEdge 400/800.  I hope
  -- * nobody else decided to use it, too.
  --  

  -- * These values are defined by NetBSD; other platforms should refrain from
  -- * using them for other purposes, so that NetBSD savefiles with link
  -- * types of 50 or 51 can be read as this type on all platforms.
  --  

  -- * The Axent Raptor firewall - now the Symantec Enterprise Firewall - uses
  -- * a link-layer type of 99 for the tcpdump it supplies.  The link-layer
  -- * header has 6 bytes of unknown data, something that appears to be an
  -- * Ethernet type, and 36 bytes that appear to be 0 in at least one capture
  -- * I've seen.
  --  

  -- * Values between 100 and 103 are used in capture file headers as
  -- * link-layer header type LINKTYPE_ values corresponding to DLT_ types
  -- * that differ between platforms; don't use those values for new DLT_
  -- * new types.
  --  

  -- * Values starting with 104 are used for newly-assigned link-layer
  -- * header type values; for those link-layer header types, the DLT_
  -- * value returned by pcap_datalink() and passed to pcap_open_dead(),
  -- * and the LINKTYPE_ value that appears in capture files, are the
  -- * same.
  -- *
  -- * DLT_MATCHING_MIN is the lowest such value; DLT_MATCHING_MAX is
  -- * the highest such value.
  --  

  -- * This value was defined by libpcap 0.5; platforms that have defined
  -- * it with a different value should define it here with that value -
  -- * a link type of 104 in a save file will be mapped to DLT_C_HDLC,
  -- * whatever value that happens to be, so programs will correctly
  -- * handle files with that link type regardless of the value of
  -- * DLT_C_HDLC.
  -- *
  -- * The name DLT_C_HDLC was used by BSD/OS; we use that name for source
  -- * compatibility with programs written for BSD/OS.
  -- *
  -- * libpcap 0.5 defined it as DLT_CHDLC; we define DLT_CHDLC as well,
  -- * for source compatibility with programs written for libpcap 0.5.
  --  

  -- * 106 is reserved for Linux Classical IP over ATM; it's like DLT_RAW,
  -- * except when it isn't.  (I.e., sometimes it's just raw IP, and
  -- * sometimes it isn't.)  We currently handle it as DLT_LINUX_SLL,
  -- * so that we don't have to worry about the link-layer header.)
  --  

  -- * Frame Relay; BSD/OS has a DLT_FR with a value of 11, but that collides
  -- * with other values.
  -- * DLT_FR and DLT_FRELAY packets start with the Q.922 Frame Relay header
  -- * (DLCI, etc.).
  --  

  -- * OpenBSD DLT_LOOP, for loopback devices; it's like DLT_NULL, except
  -- * that the AF_ type in the link-layer header is in network byte order.
  -- *
  -- * DLT_LOOP is 12 in OpenBSD, but that's DLT_RAW in other OSes, so
  -- * we don't use 12 for it in OSes other than OpenBSD.
  --  

  -- * Encapsulated packets for IPsec; DLT_ENC is 13 in OpenBSD, but that's
  -- * DLT_SLIP_BSDOS in NetBSD, so we don't use 13 for it in OSes other
  -- * than OpenBSD.
  --  

  -- * Values between 110 and 112 are reserved for use in capture file headers
  -- * as link-layer types corresponding to DLT_ types that might differ
  -- * between platforms; don't use those values for new DLT_ types
  -- * other than the corresponding DLT_ types.
  --  

  -- * This is for Linux cooked sockets.
  --  

  -- * Apple LocalTalk hardware.
  --  

  -- * Acorn Econet.
  --  

  -- * Reserved for use with OpenBSD ipfilter.
  --  

  -- * OpenBSD DLT_PFLOG.
  --  

  -- * Registered for Cisco-internal use.
  --  

  -- * For 802.11 cards using the Prism II chips, with a link-layer
  -- * header including Prism monitor mode information plus an 802.11
  -- * header.
  --  

  -- * Reserved for Aironet 802.11 cards, with an Aironet link-layer header
  -- * (see Doug Ambrisko's FreeBSD patches).
  --  

  -- * Sigh.
  -- *
  -- * This was reserved for Siemens HiPath HDLC on 2002-01-25, as
  -- * requested by Tomas Kukosa.
  -- *
  -- * On 2004-02-25, a FreeBSD checkin to sys/net/bpf.h was made that
  -- * assigned 121 as DLT_PFSYNC.  Its libpcap does DLT_ <-> LINKTYPE_
  -- * mapping, so it probably supports capturing on the pfsync device
  -- * but not saving the captured data to a pcap file.
  -- *
  -- * OpenBSD, from which pf came, however, uses 18 for DLT_PFSYNC;
  -- * their libpcap does no DLT_ <-> LINKTYPE_ mapping, so it would
  -- * use 18 in pcap files as well.
  -- *
  -- * NetBSD and DragonFly BSD also use 18 for DLT_PFSYNC; their
  -- * libpcaps do DLT_ <-> LINKTYPE_ mapping, and neither has an entry
  -- * for DLT_PFSYNC, so it might not be able to write out dump files
  -- * with 18 as the link-layer header type.  (Earlier versions might
  -- * not have done mapping, in which case they'd work the same way
  -- * OpenBSD does.)
  -- *
  -- * Mac OS X defines it as 18, but doesn't appear to use it as of
  -- * Mac OS X 10.7.3.  Its libpcap does DLT_ <-> LINKTYPE_ mapping.
  -- *
  -- * We'll define DLT_PFSYNC as 121 on FreeBSD and define it as 18 on
  -- * all other platforms.  We'll define DLT_HHDLC as 121 on everything
  -- * except for FreeBSD; anybody who wants to compile, on FreeBSD, code
  -- * that uses DLT_HHDLC is out of luck.
  -- *
  -- * We'll define LINKTYPE_PFSYNC as 18, *even on FreeBSD*, and map
  -- * it, so that savefiles won't use 121 for PFSYNC - they'll all
  -- * use 18.  Code that uses pcap_datalink() to determine the link-layer
  -- * header type of a savefile won't, when built and run on FreeBSD,
  -- * be able to distinguish between LINKTYPE_PFSYNC and LINKTYPE_HHDLC
  -- * capture files; code that doesn't, such as the code in Wireshark,
  -- * will be able to distinguish between them.
  --  

  -- * This is for RFC 2625 IP-over-Fibre Channel.
  -- *
  -- * This is not for use with raw Fibre Channel, where the link-layer
  -- * header starts with a Fibre Channel frame header; it's for IP-over-FC,
  -- * where the link-layer header starts with an RFC 2625 Network_Header
  -- * field.
  --  

  -- * This is for Full Frontal ATM on Solaris with SunATM, with a
  -- * pseudo-header followed by an AALn PDU.
  -- *
  -- * There may be other forms of Full Frontal ATM on other OSes,
  -- * with different pseudo-headers.
  -- *
  -- * If ATM software returns a pseudo-header with VPI/VCI information
  -- * (and, ideally, packet type information, e.g. signalling, ILMI,
  -- * LANE, LLC-multiplexed traffic, etc.), it should not use
  -- * DLT_ATM_RFC1483, but should get a new DLT_ value, so tcpdump
  -- * and the like don't have to infer the presence or absence of a
  -- * pseudo-header and the form of the pseudo-header.
  --  

  -- 
  -- * Reserved as per request from Kent Dahlgren <kent@praesum.com>
  -- * for private use.
  --  

  -- * Header for 802.11 plus a number of bits of link-layer information
  -- * including radio information, used by some recent BSD drivers as
  -- * well as the madwifi Atheros driver for Linux.
  --  

  -- * Reserved for the TZSP encapsulation, as per request from
  -- * Chris Waters <chris.waters@networkchemistry.com>
  -- * TZSP is a generic encapsulation for any other link type,
  -- * which includes a means to include meta-information
  -- * with the packet, e.g. signal strength and channel
  -- * for 802.11 packets.
  --  

  -- * BSD's ARCNET headers have the source host, destination host,
  -- * and type at the beginning of the packet; that's what's handed
  -- * up to userland via BPF.
  -- *
  -- * Linux's ARCNET headers, however, have a 2-byte offset field
  -- * between the host IDs and the type; that's what's handed up
  -- * to userland via PF_PACKET sockets.
  -- *
  -- * We therefore have to have separate DLT_ values for them.
  --  

  -- * Juniper-private data link types, as per request from
  -- * Hannes Gredler <hannes@juniper.net>.  The DLT_s are used
  -- * for passing on chassis-internal metainformation such as
  -- * QOS profiles, etc..
  --  

  -- * Apple IP-over-IEEE 1394, as per a request from Dieter Siegmund
  -- * <dieter@apple.com>.  The header that's presented is an Ethernet-like
  -- * header:
  -- *
  -- *	#define FIREWIRE_EUI64_LEN	8
  -- *	struct firewire_header {
  -- *		u_char  firewire_dhost[FIREWIRE_EUI64_LEN];
  -- *		u_char  firewire_shost[FIREWIRE_EUI64_LEN];
  -- *		u_short firewire_type;
  -- *	};
  -- *
  -- * with "firewire_type" being an Ethernet type value, rather than,
  -- * for example, raw GASP frames being handed up.
  --  

  -- * Various SS7 encapsulations, as per a request from Jeff Morriss
  -- * <jeff.morriss[AT]ulticom.com> and subsequent discussions.
  --  

  -- * DOCSIS MAC frames.
  --  

  -- * Linux-IrDA packets. Protocol defined at http://www.irda.org.
  -- * Those packets include IrLAP headers and above (IrLMP...), but
  -- * don't include Phy framing (SOF/EOF/CRC & byte stuffing), because Phy
  -- * framing can be handled by the hardware and depend on the bitrate.
  -- * This is exactly the format you would get capturing on a Linux-IrDA
  -- * interface (irdaX), but not on a raw serial port.
  -- * Note the capture is done in "Linux-cooked" mode, so each packet include
  -- * a fake packet header (struct sll_header). This is because IrDA packet
  -- * decoding is dependant on the direction of the packet (incomming or
  -- * outgoing).
  -- * When/if other platform implement IrDA capture, we may revisit the
  -- * issue and define a real DLT_IRDA...
  -- * Jean II
  --  

  -- * Reserved for IBM SP switch and IBM Next Federation switch.
  --  

  -- * Reserved for private use.  If you have some link-layer header type
  -- * that you want to use within your organization, with the capture files
  -- * using that link-layer header type not ever be sent outside your
  -- * organization, you can use these values.
  -- *
  -- * No libpcap release will use these for any purpose, nor will any
  -- * tcpdump release use them, either.
  -- *
  -- * Do *NOT* use these in capture files that you expect anybody not using
  -- * your private versions of capture-file-reading tools to read; in
  -- * particular, do *NOT* use them in products, otherwise you may find that
  -- * people won't be able to use tcpdump, or snort, or Ethereal, or... to
  -- * read capture files from your firewall/intrusion detection/traffic
  -- * monitoring/etc. appliance, or whatever product uses that DLT_ value,
  -- * and you may also find that the developers of those applications will
  -- * not accept patches to let them read those files.
  -- *
  -- * Also, do not use them if somebody might send you a capture using them
  -- * for *their* private type and tools using them for *your* private type
  -- * would have to read them.
  -- *
  -- * Instead, ask "tcpdump-workers@lists.tcpdump.org" for a new DLT_ value,
  -- * as per the comment above, and use the type you're given.
  --  

  -- * For future use with 802.11 captures - defined by AbsoluteValue
  -- * Systems to store a number of bits of link-layer information
  -- * including radio information:
  -- *
  -- *	http://www.shaftnet.org/~pizza/software/capturefrm.txt
  -- *
  -- * but it might be used by some non-AVS drivers now or in the
  -- * future.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>.  The DLT_s are used
  -- * for passing on chassis-internal metainformation such as
  -- * QOS profiles, etc..
  --  

  -- * BACnet MS/TP frames.
  --  

  -- * Another PPP variant as per request from Karsten Keil <kkeil@suse.de>.
  -- *
  -- * This is used in some OSes to allow a kernel socket filter to distinguish
  -- * between incoming and outgoing packets, on a socket intended to
  -- * supply pppd with outgoing packets so it can do dial-on-demand and
  -- * hangup-on-lack-of-demand; incoming packets are filtered out so they
  -- * don't cause pppd to hold the connection up (you don't want random
  -- * input packets such as port scans, packets from old lost connections,
  -- * etc. to force the connection to stay up).
  -- *
  -- * The first byte of the PPP header (0xff03) is modified to accomodate
  -- * the direction - 0x00 = IN, 0x01 = OUT.
  --  

  -- * Names for backwards compatibility with older versions of some PPP
  -- * software; new software should use DLT_PPP_PPPD.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>.  The DLT_s are used
  -- * for passing on chassis-internal metainformation such as
  -- * QOS profiles, cookies, etc..
  --  

  -- * Requested by Oolan Zimmer <oz@gcom.com> for use in Gcom's T1/E1 line
  -- * monitoring equipment.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>.  The DLT_ is used
  -- * for internal communication to Physical Interface Cards (PIC)
  --  

  -- * Link types requested by Gregor Maier <gregor@endace.com> of Endace
  -- * Measurement Systems.  They add an ERF header (see
  -- * http://www.endace.com/support/EndaceRecordFormat.pdf) in front of
  -- * the link-layer header.
  --  

  -- * Requested by Daniele Orlandi <daniele@orlandi.com> for raw LAPD
  -- * for vISDN (http://www.orlandi.com/visdn/).  Its link-layer header
  -- * includes additional information before the LAPD header, so it's
  -- * not necessarily a generic LAPD header.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>. 
  -- * The DLT_ are used for prepending meta-information
  -- * like interface index, interface name
  -- * before standard Ethernet, PPP, Frelay & C-HDLC Frames
  --  

  -- * Multi Link Frame Relay (FRF.16)
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>. 
  -- * The DLT_ is used for internal communication with a
  -- * voice Adapter Card (PIC)
  --  

  -- * Arinc 429 frames.
  -- * DLT_ requested by Gianluca Varenni <gianluca.varenni@cacetech.com>.
  -- * Every frame contains a 32bit A429 label.
  -- * More documentation on Arinc 429 can be found at
  -- * http://www.condoreng.com/support/downloads/tutorials/ARINCTutorial.pdf
  --  

  -- * Arinc 653 Interpartition Communication messages.
  -- * DLT_ requested by Gianluca Varenni <gianluca.varenni@cacetech.com>.
  -- * Please refer to the A653-1 standard for more information.
  --  

  -- * USB packets, beginning with a USB setup header; requested by
  -- * Paolo Abeni <paolo.abeni@email.it>.
  --  

  -- * Bluetooth HCI UART transport layer (part H:4); requested by
  -- * Paolo Abeni.
  --  

  -- * IEEE 802.16 MAC Common Part Sublayer; requested by Maria Cruz
  -- * <cruz_petagay@bah.com>.
  --  

  -- * USB packets, beginning with a Linux USB header; requested by
  -- * Paolo Abeni <paolo.abeni@email.it>.
  --  

  -- * Controller Area Network (CAN) v. 2.0B packets.
  -- * DLT_ requested by Gianluca Varenni <gianluca.varenni@cacetech.com>.
  -- * Used to dump CAN packets coming from a CAN Vector board.
  -- * More documentation on the CAN v2.0B frames can be found at
  -- * http://www.can-cia.org/downloads/?269
  --  

  -- * IEEE 802.15.4, with address fields padded, as is done by Linux
  -- * drivers; requested by Juergen Schimmer.
  --  

  -- * Per Packet Information encapsulated packets.
  -- * DLT_ requested by Gianluca Varenni <gianluca.varenni@cacetech.com>.
  --  

  -- * Header for 802.16 MAC Common Part Sublayer plus a radiotap radio header;
  -- * requested by Charles Clancy.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>. 
  -- * The DLT_ is used for internal communication with a
  -- * integrated service module (ISM).
  --  

  -- * IEEE 802.15.4, exactly as it appears in the spec (no padding, no
  -- * nothing); requested by Mikko Saarnivala <mikko.saarnivala@sensinode.com>.
  -- * For this one, we expect the FCS to be present at the end of the frame;
  -- * if the frame has no FCS, DLT_IEEE802_15_4_NOFCS should be used.
  --  

  -- * Various link-layer types, with a pseudo-header, for SITA
  -- * (http://www.sita.aero/); requested by Fulko Hew (fulko.hew@gmail.com).
  --  

  -- * Various link-layer types, with a pseudo-header, for Endace DAG cards;
  -- * encapsulates Endace ERF records.  Requested by Stephen Donnelly
  -- * <stephen@endace.com>.
  --  

  -- * Special header prepended to Ethernet packets when capturing from a
  -- * u10 Networks board.  Requested by Phil Mulholland
  -- * <phil@u10networks.com>.
  --  

  -- * IPMB packet for IPMI, beginning with the I2C slave address, followed
  -- * by the netFn and LUN, etc..  Requested by Chanthy Toeung
  -- * <chanthy.toeung@ca.kontron.com>.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>. 
  -- * The DLT_ is used for capturing data on a secure tunnel interface.
  --  

  -- * Bluetooth HCI UART transport layer (part H:4), with pseudo-header
  -- * that includes direction information; requested by Paolo Abeni.
  --  

  -- * AX.25 packet with a 1-byte KISS header; see
  -- *
  -- *	http://www.ax25.net/kiss.htm
  -- *
  -- * as per Richard Stearn <richard@rns-stearn.demon.co.uk>.
  --  

  -- * LAPD packets from an ISDN channel, starting with the address field,
  -- * with no pseudo-header.
  -- * Requested by Varuna De Silva <varunax@gmail.com>.
  --  

  -- * Variants of various link-layer headers, with a one-byte direction
  -- * pseudo-header prepended - zero means "received by this host",
  -- * non-zero (any non-zero value) means "sent by this host" - as per
  -- * Will Barker <w.barker@zen.co.uk>.
  --  

  -- * 208 is reserved for an as-yet-unspecified proprietary link-layer
  -- * type, as requested by Will Barker.
  --  

  -- * IPMB with a Linux-specific pseudo-header; as requested by Alexey Neyman
  -- * <avn@pigeonpoint.com>.
  --  

  -- * FlexRay automotive bus - http://www.flexray.com/ - as requested
  -- * by Hannes Kaelber <hannes.kaelber@x2e.de>.
  --  

  -- * Media Oriented Systems Transport (MOST) bus for multimedia
  -- * transport - http://www.mostcooperation.com/ - as requested
  -- * by Hannes Kaelber <hannes.kaelber@x2e.de>.
  --  

  -- * Local Interconnect Network (LIN) bus for vehicle networks -
  -- * http://www.lin-subbus.org/ - as requested by Hannes Kaelber
  -- * <hannes.kaelber@x2e.de>.
  --  

  -- * X2E-private data link type used for serial line capture,
  -- * as requested by Hannes Kaelber <hannes.kaelber@x2e.de>.
  --  

  -- * X2E-private data link type used for the Xoraya data logger
  -- * family, as requested by Hannes Kaelber <hannes.kaelber@x2e.de>.
  --  

  -- * IEEE 802.15.4, exactly as it appears in the spec (no padding, no
  -- * nothing), but with the PHY-level data for non-ASK PHYs (4 octets
  -- * of 0 as preamble, one octet of SFD, one octet of frame length+
  -- * reserved bit, and then the MAC-layer data, starting with the
  -- * frame control field).
  -- *
  -- * Requested by Max Filippov <jcmvbkbc@gmail.com>.
  --  

  -- 
  -- * David Gibson <david@gibson.dropbear.id.au> requested this for
  -- * captures from the Linux kernel /dev/input/eventN devices. This
  -- * is used to communicate keystrokes and mouse movements from the
  -- * Linux kernel to display systems, such as Xorg. 
  --  

  -- * GSM Um and Abis interfaces, preceded by a "gsmtap" header.
  -- *
  -- * Requested by Harald Welte <laforge@gnumonks.org>.
  --  

  -- * MPLS, with an MPLS label as the link-layer header.
  -- * Requested by Michele Marchetto <michele@openbsd.org> on behalf
  -- * of OpenBSD.
  --  

  -- * USB packets, beginning with a Linux USB header, with the USB header
  -- * padded to 64 bytes; required for memory-mapped access.
  --  

  -- * DECT packets, with a pseudo-header; requested by
  -- * Matthias Wenzel <tcpdump@mazzoo.de>.
  --  

  -- * From: "Lidwa, Eric (GSFC-582.0)[SGT INC]" <eric.lidwa-1@nasa.gov>
  -- * Date: Mon, 11 May 2009 11:18:30 -0500
  -- *
  -- * DLT_AOS. We need it for AOS Space Data Link Protocol.
  -- *   I have already written dissectors for but need an OK from
  -- *   legal before I can submit a patch.
  -- *
  --  

  -- * Wireless HART (Highway Addressable Remote Transducer)
  -- * From the HART Communication Foundation
  -- * IES/PAS 62591
  -- *
  -- * Requested by Sam Roberts <vieuxtech@gmail.com>.
  --  

  -- * Fibre Channel FC-2 frames, beginning with a Frame_Header.
  -- * Requested by Kahou Lei <kahou82@gmail.com>.
  --  

  -- * Fibre Channel FC-2 frames, beginning with an encoding of the
  -- * SOF, and ending with an encoding of the EOF.
  -- *
  -- * The encodings represent the frame delimiters as 4-byte sequences
  -- * representing the corresponding ordered sets, with K28.5
  -- * represented as 0xBC, and the D symbols as the corresponding
  -- * byte values; for example, SOFi2, which is K28.5 - D21.5 - D1.2 - D21.2,
  -- * is represented as 0xBC 0xB5 0x55 0x55.
  -- *
  -- * Requested by Kahou Lei <kahou82@gmail.com>.
  --  

  -- * Solaris ipnet pseudo-header; requested by Darren Reed <Darren.Reed@Sun.COM>.
  -- *
  -- * The pseudo-header starts with a one-byte version number; for version 2,
  -- * the pseudo-header is:
  -- *
  -- * struct dl_ipnetinfo {
  -- *     u_int8_t   dli_version;
  -- *     u_int8_t   dli_family;
  -- *     u_int16_t  dli_htype;
  -- *     u_int32_t  dli_pktlen;
  -- *     u_int32_t  dli_ifindex;
  -- *     u_int32_t  dli_grifindex;
  -- *     u_int32_t  dli_zsrc;
  -- *     u_int32_t  dli_zdst;
  -- * };
  -- *
  -- * dli_version is 2 for the current version of the pseudo-header.
  -- *
  -- * dli_family is a Solaris address family value, so it's 2 for IPv4
  -- * and 26 for IPv6.
  -- *
  -- * dli_htype is a "hook type" - 0 for incoming packets, 1 for outgoing
  -- * packets, and 2 for packets arriving from another zone on the same
  -- * machine.
  -- *
  -- * dli_pktlen is the length of the packet data following the pseudo-header
  -- * (so the captured length minus dli_pktlen is the length of the
  -- * pseudo-header, assuming the entire pseudo-header was captured).
  -- *
  -- * dli_ifindex is the interface index of the interface on which the
  -- * packet arrived.
  -- *
  -- * dli_grifindex is the group interface index number (for IPMP interfaces).
  -- *
  -- * dli_zsrc is the zone identifier for the source of the packet.
  -- *
  -- * dli_zdst is the zone identifier for the destination of the packet.
  -- *
  -- * A zone number of 0 is the global zone; a zone number of 0xffffffff
  -- * means that the packet arrived from another host on the network, not
  -- * from another zone on the same machine.
  -- *
  -- * An IPv4 or IPv6 datagram follows the pseudo-header; dli_family indicates
  -- * which of those it is.
  --  

  -- * CAN (Controller Area Network) frames, with a pseudo-header as supplied
  -- * by Linux SocketCAN.  See Documentation/networking/can.txt in the Linux
  -- * source.
  -- *
  -- * Requested by Felix Obenhuber <felix@obenhuber.de>.
  --  

  -- * Raw IPv4/IPv6; different from DLT_RAW in that the DLT_ value specifies
  -- * whether it's v4 or v6.  Requested by Darren Reed <Darren.Reed@Sun.COM>.
  --  

  -- * IEEE 802.15.4, exactly as it appears in the spec (no padding, no
  -- * nothing), and with no FCS at the end of the frame; requested by
  -- * Jon Smirl <jonsmirl@gmail.com>.
  --  

  -- * Raw D-Bus:
  -- *
  -- *	http://www.freedesktop.org/wiki/Software/dbus
  -- *
  -- * messages:
  -- *
  -- *	http://dbus.freedesktop.org/doc/dbus-specification.html#message-protocol-messages
  -- *
  -- * starting with the endianness flag, followed by the message type, etc.,
  -- * but without the authentication handshake before the message sequence:
  -- *
  -- *	http://dbus.freedesktop.org/doc/dbus-specification.html#auth-protocol
  -- *
  -- * Requested by Martin Vidner <martin@vidner.net>.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>.
  --  

  -- * DVB-CI (DVB Common Interface for communication between a PC Card
  -- * module and a DVB receiver).  See
  -- *
  -- *	http://www.kaiser.cx/pcap-dvbci.html
  -- *
  -- * for the specification.
  -- *
  -- * Requested by Martin Kaiser <martin@kaiser.cx>.
  --  

  -- * Variant of 3GPP TS 27.010 multiplexing protocol (similar to, but
  -- * *not* the same as, 27.010).  Requested by Hans-Christoph Schemmel
  -- * <hans-christoph.schemmel@cinterion.com>.
  --  

  -- * STANAG 5066 D_PDUs.  Requested by M. Baris Demiray
  -- * <barisdemiray@gmail.com>.
  --  

  -- * Juniper-private data link type, as per request from
  -- * Hannes Gredler <hannes@juniper.net>.
  --  

  -- * NetFilter LOG messages 
  -- * (payload of netlink NFNL_SUBSYS_ULOG/NFULNL_MSG_PACKET packets)
  -- *
  -- * Requested by Jakub Zawadzki <darkjames-ws@darkjames.pl>
  --  

  -- * Hilscher Gesellschaft fuer Systemautomation mbH link-layer type
  -- * for Ethernet packets with a 4-byte pseudo-header and always
  -- * with the payload including the FCS, as supplied by their
  -- * netANALYZER hardware and software.
  -- *
  -- * Requested by Holger P. Frommer <HPfrommer@hilscher.com>
  --  

  -- * Hilscher Gesellschaft fuer Systemautomation mbH link-layer type
  -- * for Ethernet packets with a 4-byte pseudo-header and FCS and
  -- * with the Ethernet header preceded by 7 bytes of preamble and
  -- * 1 byte of SFD, as supplied by their netANALYZER hardware and
  -- * software.
  -- *
  -- * Requested by Holger P. Frommer <HPfrommer@hilscher.com>
  --  

  -- * IP-over-InfiniBand, as specified by RFC 4391.
  -- *
  -- * Requested by Petr Sumbera <petr.sumbera@oracle.com>.
  --  

  -- * MPEG-2 transport stream (ISO 13818-1/ITU-T H.222.0).
  -- *
  -- * Requested by Guy Martin <gmsoft@tuxicoman.be>.
  --  

  -- * ng4T GmbH's UMTS Iub/Iur-over-ATM and Iub/Iur-over-IP format as
  -- * used by their ng40 protocol tester.
  -- *
  -- * Requested by Jens Grimmer <jens.grimmer@ng4t.com>.
  --  

  -- * Pseudo-header giving adapter number and flags, followed by an NFC
  -- * (Near-Field Communications) Logical Link Control Protocol (LLCP) PDU,
  -- * as specified by NFC Forum Logical Link Control Protocol Technical
  -- * Specification LLCP 1.1.
  -- *
  -- * Requested by Mike Wakerly <mikey@google.com>.
  --  

  -- * 245 is used as LINKTYPE_PFSYNC; do not use it for any other purpose.
  -- *
  -- * DLT_PFSYNC has different values on different platforms, and all of
  -- * them collide with something used elsewhere.  On platforms that
  -- * don't already define it, define it as 245.
  --  

  -- * Raw InfiniBand packets, starting with the Local Routing Header.
  -- *
  -- * Requested by Oren Kladnitsky <orenk@mellanox.com>.
  --  

  -- * SCTP, with no lower-level protocols (i.e., no IPv4 or IPv6).
  -- *
  -- * Requested by Michael Tuexen <Michael.Tuexen@lurchi.franken.de>.
  --  

  -- * USB packets, beginning with a USBPcap header.
  -- *
  -- * Requested by Tomasz Mon <desowin@gmail.com>
  --  

  -- * Schweitzer Engineering Laboratories "RTAC" product serial-line
  -- * packets.
  -- *
  -- * Requested by Chris Bontje <chris_bontje@selinc.com>.
  --  

  -- * Bluetooth Low Energy air interface link-layer packets.
  -- *
  -- * Requested by Mike Kershaw <dragorn@kismetwireless.net>.
  --  

  -- * DLT type for upper-protocol layer PDU saves from wireshark.
  -- * 
  -- * the actual contents are determined by two TAGs stored with each
  -- * packet:
  -- *   EXP_PDU_TAG_LINKTYPE          the link type (LINKTYPE_ value) of the
  -- *				   original packet.
  -- *
  -- *   EXP_PDU_TAG_PROTO_NAME        the name of the wireshark dissector
  -- * 				   that can make sense of the data stored.
  --  

  -- * DLT type for the netlink protocol (nlmon devices).
  --  

  -- * Bluetooth Linux Monitor headers for the BlueZ stack.
  --  

  -- * Bluetooth Basic Rate/Enhanced Data Rate baseband packets, as
  -- * captured by Ubertooth.
  --  

  -- * Bluetooth Low Energy link layer packets, as captured by Ubertooth.
  --  

  -- * PROFIBUS data link layer.
  --  

  -- * Apple's DLT_PKTAP headers.
  -- *
  -- * Sadly, the folks at Apple either had no clue that the DLT_USERn values
  -- * are for internal use within an organization and partners only, and
  -- * didn't know that the right way to get a link-layer header type is to
  -- * ask tcpdump.org for one, or knew and didn't care, so they just
  -- * used DLT_USER2, which causes problems for everything except for
  -- * their version of tcpdump.
  -- *
  -- * So I'll just give them one; hopefully this will show up in a
  -- * libpcap release in time for them to get this into 10.10 Big Sur
  -- * or whatever Mavericks' successor is called.  LINKTYPE_PKTAP
  -- * will be 258 *even on OS X*; that is *intentional*, so that
  -- * PKTAP files look the same on *all* OSes (different OSes can have
  -- * different numerical values for a given DLT_, but *MUST NOT* have
  -- * different values for what goes in a file, as files can be moved
  -- * between OSes!).
  -- *
  -- * When capturing, on a system with a Darwin-based OS, on a device
  -- * that returns 149 (DLT_USER2 and Apple's DLT_PKTAP) with this
  -- * version of libpcap, the DLT_ value for the pcap_t  will be DLT_PKTAP,
  -- * and that will continue to be DLT_USER2 on Darwin-based OSes. That way,
  -- * binary compatibility with Mavericks is preserved for programs using
  -- * this version of libpcap.  This does mean that if you were using
  -- * DLT_USER2 for some capture device on OS X, you can't do so with
  -- * this version of libpcap, just as you can't with Apple's libpcap -
  -- * on OS X, they define DLT_PKTAP to be DLT_USER2, so programs won't
  -- * be able to distinguish between PKTAP and whatever you were using
  -- * DLT_USER2 for.
  -- *
  -- * If the program saves the capture to a file using this version of
  -- * libpcap's pcap_dump code, the LINKTYPE_ value in the file will be
  -- * LINKTYPE_PKTAP, which will be 258, even on Darwin-based OSes.
  -- * That way, the file will *not* be a DLT_USER2 file.  That means
  -- * that the latest version of tcpdump, when built with this version
  -- * of libpcap, and sufficiently recent versions of Wireshark will
  -- * be able to read those files and interpret them correctly; however,
  -- * Apple's version of tcpdump in OS X 10.9 won't be able to handle
  -- * them.  (Hopefully, Apple will pick up this version of libpcap,
  -- * and the corresponding version of tcpdump, so that tcpdump will
  -- * be able to handle the old LINKTYPE_USER2 captures *and* the new
  -- * LINKTYPE_PKTAP captures.)
  --  

  -- * Ethernet packets preceded by a header giving the last 6 octets
  -- * of the preamble specified by 802.3-2012 Clause 65, section
  -- * 65.1.3.2 "Transmit".
  --  

  -- * IPMI trace packets, as specified by Table 3-20 "Trace Data Block Format"
  -- * in the PICMG HPM.2 specification.
  --  

  -- * DLT and savefile link type values are split into a class and
  -- * a member of that class.  A class value of 0 indicates a regular
  -- * DLT_/LINKTYPE_ value.
  --  

  -- * NetBSD-specific generic "raw" link type.  The class value indicates
  -- * that this is the generic raw type, and the lower 16 bits are the
  -- * address family we're dealing with.  Those values are NetBSD-specific;
  -- * do not assume that they correspond to AF_ values for your operating
  -- * system.
  --  

  -- * The instruction encodings.
  -- *
  -- * Please inform tcpdump-workers@lists.tcpdump.org if you use any
  -- * of the reserved values, so that we can note that they're used
  -- * (and perhaps implement it in the reference BPF implementation
  -- * and encourage its implementation elsewhere).
  --  

  -- * The upper 8 bits of the opcode aren't used. BSD/OS used 0x8000.
  --  

  -- instruction classes  
  -- ld/ldx fields  
  --				0x18	reserved; used by BSD/OS  
  --				0xc0	reserved; used by BSD/OS  
  --				0xe0	reserved; used by BSD/OS  
  -- alu/jmp fields  
  --				0xb0	reserved  
  --				0xc0	reserved  
  --				0xd0	reserved  
  --				0xe0	reserved  
  --				0xf0	reserved  
  --				0x50	reserved; used on BSD/OS  
  --				0x60	reserved  
  --				0x70	reserved  
  --				0x80	reserved  
  --				0x90	reserved  
  --				0xa0	reserved  
  --				0xb0	reserved  
  --				0xc0	reserved  
  --				0xd0	reserved  
  --				0xe0	reserved  
  --				0xf0	reserved  
  -- ret - BPF_K and BPF_X also apply  
  --				0x18	reserved  
  -- misc  
  --				0x08	reserved  
  --				0x10	reserved  
  --				0x18	reserved  
  -- #define	BPF_COP		0x20	NetBSD "coprocessor" extensions  
  --				0x28	reserved  
  --				0x30	reserved  
  --				0x38	reserved  
  -- #define	BPF_COPX	0x40	NetBSD "coprocessor" extensions  
  --					also used on BSD/OS  
  --				0x48	reserved  
  --				0x50	reserved  
  --				0x58	reserved  
  --				0x60	reserved  
  --				0x68	reserved  
  --				0x70	reserved  
  --				0x78	reserved  
  --				0x88	reserved  
  --				0x90	reserved  
  --				0x98	reserved  
  --				0xa0	reserved  
  --				0xa8	reserved  
  --				0xb0	reserved  
  --				0xb8	reserved  
  --				0xc0	reserved; used on BSD/OS  
  --				0xc8	reserved  
  --				0xd0	reserved  
  --				0xd8	reserved  
  --				0xe0	reserved  
  --				0xe8	reserved  
  --				0xf0	reserved  
  --				0xf8	reserved  
  -- * The instruction data structure.
  --  

   type bpf_insn is record
      code : aliased unsigned_short;  -- /usr/include/pcap/bpf.h:1460
      jt : aliased unsigned_char;  -- /usr/include/pcap/bpf.h:1461
      jf : aliased unsigned_char;  -- /usr/include/pcap/bpf.h:1462
      k : aliased bpf_u_int32;  -- /usr/include/pcap/bpf.h:1463
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/pcap/bpf.h:1459

  -- * Macros for insn array initializers.
  --  

  -- * Number of scratch memory words (for BPF_LD|BPF_MEM and BPF_ST).
  --  

end PCAP.Low_Level.pcap_bpf_h;
--  end read only
