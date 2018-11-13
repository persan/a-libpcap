limited private with Pcap.Low_Level.Pcap_Pcap_H;
private with Ada.Finalization;
private with Ada.Streams;
with Interfaces.C_Streams;
package Pcap is

   type Pcap_T is tagged private;

   type Ipv4Addr is private;
   type Ipv4Mask is private;

   function Lookupdev (D : String) return String;
   type Datalink_Type is private;
   DLT_NULL : constant Datalink_Type;
   DLT_EN10MB : constant Datalink_Type;
   DLT_EN3MB : constant Datalink_Type;
   DLT_AX25 : constant Datalink_Type;
   DLT_PRONET : constant Datalink_Type;
   DLT_CHAOS : constant Datalink_Type;
   DLT_IEEE802 : constant Datalink_Type;
   DLT_ARCNET : constant Datalink_Type;
   DLT_SLIP : constant Datalink_Type;
   DLT_PPP : constant Datalink_Type;
   DLT_FDDI : constant Datalink_Type;

   DLT_ATM_RFC1483 : constant Datalink_Type;

   DLT_RAW : constant Datalink_Type;

   DLT_SLIP_BSDOS : constant Datalink_Type;
   DLT_PPP_BSDOS  : constant Datalink_Type;

   DLT_ATM_CLIP : constant Datalink_Type;

   DLT_REDBACK_SMARTEDGE : constant Datalink_Type;

   DLT_PPP_SERIAL : constant Datalink_Type;
   DLT_PPP_ETHER  : constant Datalink_Type;

   DLT_SYMANTEC_FIREWALL : constant Datalink_Type;

   DLT_MATCHING_MIN : constant Datalink_Type;

   DLT_C_HDLC : constant Datalink_Type;
   --  unsupported macro: DLT_CHDLC DLT_C_HDLC

   DLT_IEEE802_11 : constant Datalink_Type;

   DLT_FRELAY : constant Datalink_Type;

   DLT_LOOP : constant Datalink_Type;

   DLT_ENC : constant Datalink_Type;

   DLT_LINUX_SLL : constant Datalink_Type;

   DLT_LTALK : constant Datalink_Type;

   DLT_ECONET : constant Datalink_Type;

   DLT_IPFILTER : constant Datalink_Type;

   DLT_PFLOG : constant Datalink_Type;

   DLT_CISCO_IOS : constant Datalink_Type;

   DLT_PRISM_HEADER : constant Datalink_Type;

   DLT_AIRONET_HEADER : constant Datalink_Type;

   DLT_HHDLC : constant Datalink_Type;

   DLT_IP_OVER_FC : constant Datalink_Type;

   DLT_SUNATM : constant Datalink_Type;

   DLT_RIO     : constant Datalink_Type;
   DLT_PCI_EXP : constant Datalink_Type;
   DLT_AURORA  : constant Datalink_Type;

   DLT_IEEE802_11_RADIO : constant Datalink_Type;

   DLT_TZSP : constant Datalink_Type;

   DLT_ARCNET_LINUX : constant Datalink_Type;

   DLT_JUNIPER_MLPPP    : constant Datalink_Type;
   DLT_JUNIPER_MLFR     : constant Datalink_Type;
   DLT_JUNIPER_ES       : constant Datalink_Type;
   DLT_JUNIPER_GGSN     : constant Datalink_Type;
   DLT_JUNIPER_MFR      : constant Datalink_Type;
   DLT_JUNIPER_ATM2     : constant Datalink_Type;
   DLT_JUNIPER_SERVICES : constant Datalink_Type;
   DLT_JUNIPER_ATM1     : constant Datalink_Type;

   DLT_APPLE_IP_OVER_IEEE1394 : constant Datalink_Type;

   DLT_MTP2_WITH_PHDR : constant Datalink_Type;
   DLT_MTP2           : constant Datalink_Type;
   DLT_MTP3           : constant Datalink_Type;
   DLT_SCCP           : constant Datalink_Type;

   DLT_DOCSIS : constant Datalink_Type;

   DLT_LINUX_IRDA : constant Datalink_Type;

   DLT_IBM_SP : constant Datalink_Type;
   DLT_IBM_SN : constant Datalink_Type;

   DLT_USER0  : constant Datalink_Type;
   DLT_USER1  : constant Datalink_Type;
   DLT_USER2  : constant Datalink_Type;
   DLT_USER3  : constant Datalink_Type;
   DLT_USER4  : constant Datalink_Type;
   DLT_USER5  : constant Datalink_Type;
   DLT_USER6  : constant Datalink_Type;
   DLT_USER7  : constant Datalink_Type;
   DLT_USER8  : constant Datalink_Type;
   DLT_USER9  : constant Datalink_Type;
   DLT_USER10 : constant Datalink_Type;
   DLT_USER11 : constant Datalink_Type;
   DLT_USER12 : constant Datalink_Type;
   DLT_USER13 : constant Datalink_Type;
   DLT_USER14 : constant Datalink_Type;
   DLT_USER15 : constant Datalink_Type;

   DLT_IEEE802_11_RADIO_AVS : constant Datalink_Type;

   DLT_JUNIPER_MONITOR : constant Datalink_Type;

   DLT_BACNET_MS_TP : constant Datalink_Type;

   DLT_PPP_PPPD : constant Datalink_Type;
   --  unsupported macro: DLT_PPP_WITH_DIRECTION DLT_PPP_PPPD
   --  unsupported macro: DLT_LINUX_PPP_WITHDIRECTION DLT_PPP_PPPD

   DLT_JUNIPER_PPPOE : constant Datalink_Type;
   DLT_JUNIPER_PPPOE_ATM : constant Datalink_Type;

   DLT_GPRS_LLC : constant Datalink_Type;
   DLT_GPF_T    : constant Datalink_Type;
   DLT_GPF_F    : constant Datalink_Type;

   DLT_GCOM_T1E1   : constant Datalink_Type;
   DLT_GCOM_SERIAL : constant Datalink_Type;

   DLT_JUNIPER_PIC_PEER : constant Datalink_Type;

   DLT_ERF_ETH : constant Datalink_Type;
   DLT_ERF_POS : constant Datalink_Type;

   DLT_LINUX_LAPD : constant Datalink_Type;

   DLT_JUNIPER_ETHER  : constant Datalink_Type;
   DLT_JUNIPER_PPP    : constant Datalink_Type;
   DLT_JUNIPER_FRELAY : constant Datalink_Type;
   DLT_JUNIPER_CHDLC  : constant Datalink_Type;

   DLT_MFR : constant Datalink_Type;

   DLT_JUNIPER_VP : constant Datalink_Type;

   DLT_A429 : constant Datalink_Type;

   DLT_A653_ICM : constant Datalink_Type;

   DLT_USB : constant Datalink_Type;

   DLT_BLUETOOTH_HCI_H4 : constant Datalink_Type;

   DLT_IEEE802_16_MAC_CPS : constant Datalink_Type;

   DLT_USB_LINUX : constant Datalink_Type;

   DLT_CAN20B : constant Datalink_Type;

   DLT_IEEE802_15_4_LINUX : constant Datalink_Type;

   DLT_PPI : constant Datalink_Type;

   DLT_IEEE802_16_MAC_CPS_RADIO : constant Datalink_Type;

   DLT_JUNIPER_ISM : constant Datalink_Type;

   DLT_IEEE802_15_4 : constant Datalink_Type;

   DLT_SITA : constant Datalink_Type;

   DLT_ERF : constant Datalink_Type;

   DLT_RAIF1 : constant Datalink_Type;

   DLT_IPMB : constant Datalink_Type;

   DLT_JUNIPER_ST : constant Datalink_Type;

   DLT_BLUETOOTH_HCI_H4_WITH_PHDR : constant Datalink_Type;

   DLT_AX25_KISS : constant Datalink_Type;

   DLT_LAPD : constant Datalink_Type;

   DLT_PPP_WITH_DIR    : constant Datalink_Type;
   DLT_C_HDLC_WITH_DIR : constant Datalink_Type;
   DLT_FRELAY_WITH_DIR : constant Datalink_Type;
   DLT_LAPB_WITH_DIR   : constant Datalink_Type;

   DLT_IPMB_LINUX : constant Datalink_Type;

   DLT_FLEXRAY : constant Datalink_Type;

   DLT_MOST : constant Datalink_Type;

   DLT_LIN : constant Datalink_Type;

   DLT_X2E_SERIAL : constant Datalink_Type;

   DLT_X2E_XORAYA : constant Datalink_Type;

   DLT_IEEE802_15_4_NONASK_PHY : constant Datalink_Type;

   DLT_LINUX_EVDEV : constant Datalink_Type;

   DLT_GSMTAP_UM   : constant Datalink_Type;
   DLT_GSMTAP_ABIS : constant Datalink_Type;

   DLT_MPLS : constant Datalink_Type;

   DLT_USB_LINUX_MMAPPED : constant Datalink_Type;

   DLT_DECT : constant Datalink_Type;

   DLT_AOS : constant Datalink_Type;

   DLT_WIHART : constant Datalink_Type;

   DLT_FC_2 : constant Datalink_Type;

   DLT_FC_2_WITH_FRAME_DELIMS : constant Datalink_Type;

   DLT_IPNET : constant Datalink_Type;

   DLT_CAN_SOCKETCAN : constant Datalink_Type;

   DLT_IPV4 : constant Datalink_Type;
   DLT_IPV6 : constant Datalink_Type;

   DLT_IEEE802_15_4_NOFCS : constant Datalink_Type;

   DLT_DBUS : constant Datalink_Type;

   DLT_JUNIPER_VS           : constant Datalink_Type;
   DLT_JUNIPER_SRX_E2E      : constant Datalink_Type;
   DLT_JUNIPER_FIBRECHANNEL : constant Datalink_Type;

   DLT_DVB_CI : constant Datalink_Type;

   DLT_MUX27010 : constant Datalink_Type;

   DLT_STANAG_5066_D_PDU : constant Datalink_Type;

   DLT_JUNIPER_ATM_CEMIC : constant Datalink_Type;

   DLT_NFLOG : constant Datalink_Type;

   DLT_NETANALYZER : constant Datalink_Type;

   DLT_NETANALYZER_TRANSPARENT : constant Datalink_Type;

   DLT_IPOIB : constant Datalink_Type;

   DLT_MPEG_2_TS : constant Datalink_Type;

   DLT_NG40 : constant Datalink_Type;

   DLT_NFC_LLCP : constant Datalink_Type;

   DLT_PFSYNC : constant Datalink_Type;

   DLT_INFINIBAND : constant Datalink_Type;

   DLT_SCTP : constant Datalink_Type;

   DLT_USBPCAP : constant Datalink_Type;

   DLT_RTAC_SERIAL : constant Datalink_Type;

   DLT_BLUETOOTH_LE_LL : constant Datalink_Type;

   DLT_WIRESHARK_UPPER_PDU : constant Datalink_Type;

   DLT_NETLINK : constant Datalink_Type;

   DLT_BLUETOOTH_LINUX_MONITOR : constant Datalink_Type;

   DLT_BLUETOOTH_BREDR_BB : constant Datalink_Type;

   DLT_BLUETOOTH_LE_LL_WITH_PHDR : constant Datalink_Type;

   DLT_PROFIBUS_DL : constant Datalink_Type;

   DLT_PKTAP : constant Datalink_Type;

   DLT_EPON : constant Datalink_Type;

   DLT_IPMI_HPM_2 : constant Datalink_Type;

   DLT_MATCHING_MAX : constant Datalink_Type;
   --  arg-macro: function DLT_CLASS (x)
   --    return (x) and 16#03ff0000#;

   DLT_CLASS_NETBSD_RAWAF : constant Datalink_Type;

   procedure Lookupnet
     (Net  : String;
      Addr : out Ipv4Addr;
      Mask : out Ipv4Mask);
   --  Is used to determine the IPv4 network number and mask associated with the network device device
   -------------------------------------------------------------------------------------------------

   function Create (Source : String := "any") return Pcap_T;
   --  Create is used to create a packet capture handle to look at packets on the network.
   --  source is a string that specifies the network device to open;
   --  a source argument of "any" can be used to capture packets from all interfaces.
   --  The returned handle must be activated with activate()
   --  before packets can be captured with it.
   --  Options for the capture, such as promiscuous mode,
   --  can be set on the handle before activating it
   -------------------------------------------------------------------------------------------------

   procedure Set_Snaplen (Self : Pcap_T; Snaplen : Natural);
   -- Sets the snapshot length to be used on a capture handle when the handle is activated to snaplen.
   -------------------------------------------------------------------------------------------------

   procedure Set_Promisc (Self : Pcap_T; Promisc : Boolean);
   --   Sets whether promiscuous mode should be set on a capture handle when the handle is activated
   -------------------------------------------------------------------------------------------------

   function Can_Set_Rfmon (Self : Pcap_T) return Boolean;
   --  Checks whether monitor mode could be set on a capture handle when the handle is activated
   -------------------------------------------------------------------------------------------------

   procedure Set_Rfmon (Self : Pcap_T; Promisc : Boolean);
   --  Sets whether monitor mode should be set on a capture handle when the handle is activated
   -------------------------------------------------------------------------------------------------

   procedure Set_Timeout (Self : Pcap_T; TimeOut : Duration);
   --  Sets the read timeout that will be used on a capture handle when the handle is activated
   -------------------------------------------------------------------------------------------------

   type Tstamp_Type is (HOST, HOST_LOWPREC, HOST_HIPREC, ADAPTER, ADAPTER_UNSYNCED);
   --  HOST:
   --    Time stamp provided by the host on which the capture is being done.
   --    The precision of this time stamp is unspecified; it might or might not be synchronized with the host operating system's clock.
   --  HOST_LOWPREC:
   --    Time stamp provided by the host on which the capture is being done.
   --    This is a low-precision time stamp, synchronized with the host operating system's clock.
   --  HOST_HIPREC:
   --    Time stamp provided by the host on which the capture is being done.
   --    This is a high-precision time stamp; it might or might not be synchronized
   --    with the host operating system's clock.
   --    It might be more expensive to fetch than HOST_LOWPREC.
   --  ADAPTER:
   --    Time stamp provided by the network adapter on which the capture is being done.
   --    This is a high-precision time stamp, synchronized with the host operating system's clock.
   --  ADAPTER_UNSYNCED:
   --    Time stamp provided by the network adapter on which the capture is being done.
   --    This is a high-precision time stamp; it is not synchronized with the host
   --    operating system's clock.

   procedure  Set_Tstamp_Type (Self : Pcap_T ;  Arg2 : Tstamp_Type := HOST);
   --  sets the type of time stamp desired for
   --  packets captured on the pcap descriptor
   -------------------------------------------------------------------------------------------------



   procedure Set_Immediate_Mode (Self : Pcap_T ;  Immediate_Mode : Boolean := True);
   --  Sets whether immediate mode should be set on a capture handle when the handle is activated.
   --  If immediate_mode is non-zero, immediate mode will be set, otherwise it will not be set.
   -------------------------------------------------------------------------------------------------

   procedure Set_Buffer_Size (Self : Pcap_T ;  Buffer_Size : Natural);
   --  sets the buffer size that will be used on a capture handle when the handle
   --  is activated to buffer_size, which is in units of bytes
   -------------------------------------------------------------------------------------------------


   type Tstamp_Precision_Type is (MICRO, NANO);
   procedure Set_Tstamp_Precision (Self : Pcap_T ;  Precision : Tstamp_Precision_Type := MICRO);
   --  Sets the precision of the time stamp desired for packets captured on the
   --  pcap descriptor to the type specified by tstamp_precision



   function Get_Tstamp_Precision (Arg1 : Pcap_T) return Tstamp_Precision_Type;
   --  returns the precision of the time stamp returned in Packet Captures On The Pcap Descriptor
   -------------------------------------------------------------------------------------------------



   function Activate (Arg1 : access Pcap_T) return Integer;
   --  is used to activate a packet capture handle to look at packets on the network,
   --  with the options that were set on the handle being in effect.
   -------------------------------------------------------------------------------------------------


   type Tstamp_Types is array (Natural range <>) of Tstamp_Type;
   function List_Tstamp_Types (Self : Pcap_T) return Tstamp_Types;
   --  is used to get a list of  the  supported  time
   --  stamp  types  of the  interface associated  with the pcap descriptor
   -------------------------------------------------------------------------------------------------

   function To_Description (Arg1 : Tstamp_Type) return String;
   --  translates a time stamp type value to a short description of that time stamp type

   Default_MTU : constant := 1500;
   function Open_Live
     (Device           : String := "any";
      Snapshot_Length  : Natural := Default_MTU;
      Promisc          : Boolean := False;
      Buffer_Timeout   : Duration := 1.0) return Pcap_T;
   --  Is used to obtain a packet capture handle to look packets on the network.
   --  device is a string that specifies the network device to open
   --  https://linux.die.net/man/3/pcap_open_live
   ---------------------------------------------------------------------------------

   function Open_Dead (Linktype         : Datalink_Type;
                       Snapshot_Length  : Natural := Default_MTU) return Pcap_T;
   --  Is used for creating a pcap_t structure to use when calling the other functions in libpcap.
   --  It is typically used when just using libpcap for compiling BPF code.
   --  https://linux.die.net/man/3/pcap_open_dead
   ---------------------------------------------------------------------------------


   function Open_Dead_With_Tstamp_Precision
     (Linktype        : Datalink_Type;
      Snapshot_Length : Natural := Default_MTU;
      Precision       : Tstamp_Precision_Type) return Pcap_T;

   function Open_Offline_With_Tstamp_Precision
     (Device           : String := "any";
      Precision        : Tstamp_Precision_Type) return Pcap_T;




   function Open_Offline (Device : String := "any") return Pcap_T;




   function Open_Offline_With_Tstamp_Precision
     (Arg1        : access Interfaces.C_Streams.FILEs;
      Precision   : Tstamp_Precision_Type) return Pcap_T;




   function Fopen_Offline (Arg1 : access Interfaces.C_Streams.FILEs) return Pcap_T;




   procedure Close (Arg1 : Pcap_T);

private
   type Pcap_T is new Ada.Finalization.Controlled with record
      Impl : access Pcap.Low_Level.Pcap_Pcap_H.Pcap;
   end record;
   type Ipv4Addr is new Ada.Streams.Stream_Element_Array (1 .. 4);
   type Ipv4Mask is new Ipv4Addr;
   type Datalink_Type is new Integer;
   DLT_NULL : constant Datalink_Type := 0;  --  /usr/include/pcap/bpf.h:132
   DLT_EN10MB : constant Datalink_Type := 1;  --  /usr/include/pcap/bpf.h:133
   DLT_EN3MB : constant Datalink_Type := 2;  --  /usr/include/pcap/bpf.h:134
   DLT_AX25 : constant Datalink_Type := 3;  --  /usr/include/pcap/bpf.h:135
   DLT_PRONET : constant Datalink_Type := 4;  --  /usr/include/pcap/bpf.h:136
   DLT_CHAOS : constant Datalink_Type := 5;  --  /usr/include/pcap/bpf.h:137
   DLT_IEEE802 : constant Datalink_Type := 6;  --  /usr/include/pcap/bpf.h:138
   DLT_ARCNET : constant Datalink_Type := 7;  --  /usr/include/pcap/bpf.h:139
   DLT_SLIP : constant Datalink_Type := 8;  --  /usr/include/pcap/bpf.h:140
   DLT_PPP : constant Datalink_Type := 9;  --  /usr/include/pcap/bpf.h:141
   DLT_FDDI : constant Datalink_Type := 10;  --  /usr/include/pcap/bpf.h:142

   DLT_ATM_RFC1483 : constant Datalink_Type := 11;  --  /usr/include/pcap/bpf.h:153

   DLT_RAW : constant Datalink_Type := 12;  --  /usr/include/pcap/bpf.h:158

   DLT_SLIP_BSDOS : constant Datalink_Type := 15;  --  /usr/include/pcap/bpf.h:173
   DLT_PPP_BSDOS : constant Datalink_Type := 16;  --  /usr/include/pcap/bpf.h:174

   DLT_ATM_CLIP : constant Datalink_Type := 19;  --  /usr/include/pcap/bpf.h:209

   DLT_REDBACK_SMARTEDGE : constant Datalink_Type := 32;  --  /usr/include/pcap/bpf.h:215

   DLT_PPP_SERIAL : constant Datalink_Type := 50;  --  /usr/include/pcap/bpf.h:222
   DLT_PPP_ETHER : constant Datalink_Type := 51;  --  /usr/include/pcap/bpf.h:223

   DLT_SYMANTEC_FIREWALL : constant Datalink_Type := 99;  --  /usr/include/pcap/bpf.h:232

   DLT_MATCHING_MIN : constant Datalink_Type := 104;  --  /usr/include/pcap/bpf.h:251

   DLT_C_HDLC : constant Datalink_Type := 104;  --  /usr/include/pcap/bpf.h:267
   --  unsupported macro: DLT_CHDLC DLT_C_HDLC

   DLT_IEEE802_11 : constant Datalink_Type := 105;  --  /usr/include/pcap/bpf.h:270

   DLT_FRELAY : constant Datalink_Type := 107;  --  /usr/include/pcap/bpf.h:285

   DLT_LOOP : constant Datalink_Type := 108;  --  /usr/include/pcap/bpf.h:297

   DLT_ENC : constant Datalink_Type := 109;  --  /usr/include/pcap/bpf.h:308

   DLT_LINUX_SLL : constant Datalink_Type := 113;  --  /usr/include/pcap/bpf.h:321

   DLT_LTALK : constant Datalink_Type := 114;  --  /usr/include/pcap/bpf.h:326

   DLT_ECONET : constant Datalink_Type := 115;  --  /usr/include/pcap/bpf.h:331

   DLT_IPFILTER : constant Datalink_Type := 116;  --  /usr/include/pcap/bpf.h:336

   DLT_PFLOG : constant Datalink_Type := 117;  --  /usr/include/pcap/bpf.h:341

   DLT_CISCO_IOS : constant Datalink_Type := 118;  --  /usr/include/pcap/bpf.h:346

   DLT_PRISM_HEADER : constant Datalink_Type := 119;  --  /usr/include/pcap/bpf.h:353

   DLT_AIRONET_HEADER : constant Datalink_Type := 120;  --  /usr/include/pcap/bpf.h:359

   DLT_HHDLC : constant Datalink_Type := 121;  --  /usr/include/pcap/bpf.h:402

   DLT_IP_OVER_FC : constant Datalink_Type := 122;  --  /usr/include/pcap/bpf.h:413

   DLT_SUNATM : constant Datalink_Type := 123;  --  /usr/include/pcap/bpf.h:429

   DLT_RIO : constant Datalink_Type := 124;  --  /usr/include/pcap/bpf.h:435
   DLT_PCI_EXP : constant Datalink_Type := 125;  --  /usr/include/pcap/bpf.h:436
   DLT_AURORA : constant Datalink_Type := 126;  --  /usr/include/pcap/bpf.h:437

   DLT_IEEE802_11_RADIO : constant Datalink_Type := 127;  --  /usr/include/pcap/bpf.h:444

   DLT_TZSP : constant Datalink_Type := 128;  --  /usr/include/pcap/bpf.h:454

   DLT_ARCNET_LINUX : constant Datalink_Type := 129;  --  /usr/include/pcap/bpf.h:467

   DLT_JUNIPER_MLPPP : constant Datalink_Type := 130;  --  /usr/include/pcap/bpf.h:475
   DLT_JUNIPER_MLFR : constant Datalink_Type := 131;  --  /usr/include/pcap/bpf.h:476
   DLT_JUNIPER_ES : constant Datalink_Type := 132;  --  /usr/include/pcap/bpf.h:477
   DLT_JUNIPER_GGSN : constant Datalink_Type := 133;  --  /usr/include/pcap/bpf.h:478
   DLT_JUNIPER_MFR : constant Datalink_Type := 134;  --  /usr/include/pcap/bpf.h:479
   DLT_JUNIPER_ATM2 : constant Datalink_Type := 135;  --  /usr/include/pcap/bpf.h:480
   DLT_JUNIPER_SERVICES : constant Datalink_Type := 136;  --  /usr/include/pcap/bpf.h:481
   DLT_JUNIPER_ATM1 : constant Datalink_Type := 137;  --  /usr/include/pcap/bpf.h:482

   DLT_APPLE_IP_OVER_IEEE1394 : constant Datalink_Type := 138;  --  /usr/include/pcap/bpf.h:499

   DLT_MTP2_WITH_PHDR : constant Datalink_Type := 139;  --  /usr/include/pcap/bpf.h:505
   DLT_MTP2 : constant Datalink_Type := 140;  --  /usr/include/pcap/bpf.h:506
   DLT_MTP3 : constant Datalink_Type := 141;  --  /usr/include/pcap/bpf.h:507
   DLT_SCCP : constant Datalink_Type := 142;  --  /usr/include/pcap/bpf.h:508

   DLT_DOCSIS : constant Datalink_Type := 143;  --  /usr/include/pcap/bpf.h:513

   DLT_LINUX_IRDA : constant Datalink_Type := 144;  --  /usr/include/pcap/bpf.h:530

   DLT_IBM_SP : constant Datalink_Type := 145;  --  /usr/include/pcap/bpf.h:535
   DLT_IBM_SN : constant Datalink_Type := 146;  --  /usr/include/pcap/bpf.h:536

   DLT_USER0 : constant Datalink_Type := 147;  --  /usr/include/pcap/bpf.h:563
   DLT_USER1 : constant Datalink_Type := 148;  --  /usr/include/pcap/bpf.h:564
   DLT_USER2 : constant Datalink_Type := 149;  --  /usr/include/pcap/bpf.h:565
   DLT_USER3 : constant Datalink_Type := 150;  --  /usr/include/pcap/bpf.h:566
   DLT_USER4 : constant Datalink_Type := 151;  --  /usr/include/pcap/bpf.h:567
   DLT_USER5 : constant Datalink_Type := 152;  --  /usr/include/pcap/bpf.h:568
   DLT_USER6 : constant Datalink_Type := 153;  --  /usr/include/pcap/bpf.h:569
   DLT_USER7 : constant Datalink_Type := 154;  --  /usr/include/pcap/bpf.h:570
   DLT_USER8 : constant Datalink_Type := 155;  --  /usr/include/pcap/bpf.h:571
   DLT_USER9 : constant Datalink_Type := 156;  --  /usr/include/pcap/bpf.h:572
   DLT_USER10 : constant Datalink_Type := 157;  --  /usr/include/pcap/bpf.h:573
   DLT_USER11 : constant Datalink_Type := 158;  --  /usr/include/pcap/bpf.h:574
   DLT_USER12 : constant Datalink_Type := 159;  --  /usr/include/pcap/bpf.h:575
   DLT_USER13 : constant Datalink_Type := 160;  --  /usr/include/pcap/bpf.h:576
   DLT_USER14 : constant Datalink_Type := 161;  --  /usr/include/pcap/bpf.h:577
   DLT_USER15 : constant Datalink_Type := 162;  --  /usr/include/pcap/bpf.h:578

   DLT_IEEE802_11_RADIO_AVS : constant Datalink_Type := 163;  --  /usr/include/pcap/bpf.h:590

   DLT_JUNIPER_MONITOR : constant Datalink_Type := 164;  --  /usr/include/pcap/bpf.h:598

   DLT_BACNET_MS_TP : constant Datalink_Type := 165;  --  /usr/include/pcap/bpf.h:603

   DLT_PPP_PPPD : constant Datalink_Type := 166;  --  /usr/include/pcap/bpf.h:619
   --  unsupported macro: DLT_PPP_WITH_DIRECTION DLT_PPP_PPPD
   --  unsupported macro: DLT_LINUX_PPP_WITHDIRECTION DLT_PPP_PPPD

   DLT_JUNIPER_PPPOE : constant Datalink_Type := 167;  --  /usr/include/pcap/bpf.h:634
   DLT_JUNIPER_PPPOE_ATM : constant Datalink_Type := 168;  --  /usr/include/pcap/bpf.h:635

   DLT_GPRS_LLC : constant Datalink_Type := 169;  --  /usr/include/pcap/bpf.h:637
   DLT_GPF_T : constant Datalink_Type := 170;  --  /usr/include/pcap/bpf.h:638
   DLT_GPF_F : constant Datalink_Type := 171;  --  /usr/include/pcap/bpf.h:639

   DLT_GCOM_T1E1 : constant Datalink_Type := 172;  --  /usr/include/pcap/bpf.h:645
   DLT_GCOM_SERIAL : constant Datalink_Type := 173;  --  /usr/include/pcap/bpf.h:646

   DLT_JUNIPER_PIC_PEER : constant Datalink_Type := 174;  --  /usr/include/pcap/bpf.h:653

   DLT_ERF_ETH : constant Datalink_Type := 175;  --  /usr/include/pcap/bpf.h:661
   DLT_ERF_POS : constant Datalink_Type := 176;  --  /usr/include/pcap/bpf.h:662

   DLT_LINUX_LAPD : constant Datalink_Type := 177;  --  /usr/include/pcap/bpf.h:670

   DLT_JUNIPER_ETHER : constant Datalink_Type := 178;  --  /usr/include/pcap/bpf.h:679
   DLT_JUNIPER_PPP : constant Datalink_Type := 179;  --  /usr/include/pcap/bpf.h:680
   DLT_JUNIPER_FRELAY : constant Datalink_Type := 180;  --  /usr/include/pcap/bpf.h:681
   DLT_JUNIPER_CHDLC : constant Datalink_Type := 181;  --  /usr/include/pcap/bpf.h:682

   DLT_MFR : constant Datalink_Type := 182;  --  /usr/include/pcap/bpf.h:687

   DLT_JUNIPER_VP : constant Datalink_Type := 183;  --  /usr/include/pcap/bpf.h:695

   DLT_A429 : constant Datalink_Type := 184;  --  /usr/include/pcap/bpf.h:704

   DLT_A653_ICM : constant Datalink_Type := 185;  --  /usr/include/pcap/bpf.h:711

   DLT_USB : constant Datalink_Type := 186;  --  /usr/include/pcap/bpf.h:717

   DLT_BLUETOOTH_HCI_H4 : constant Datalink_Type := 187;  --  /usr/include/pcap/bpf.h:723

   DLT_IEEE802_16_MAC_CPS : constant Datalink_Type := 188;  --  /usr/include/pcap/bpf.h:729

   DLT_USB_LINUX : constant Datalink_Type := 189;  --  /usr/include/pcap/bpf.h:735

   DLT_CAN20B : constant Datalink_Type := 190;  --  /usr/include/pcap/bpf.h:744

   DLT_IEEE802_15_4_LINUX : constant Datalink_Type := 191;  --  /usr/include/pcap/bpf.h:750

   DLT_PPI : constant Datalink_Type := 192;  --  /usr/include/pcap/bpf.h:756

   DLT_IEEE802_16_MAC_CPS_RADIO : constant Datalink_Type := 193;  --  /usr/include/pcap/bpf.h:762

   DLT_JUNIPER_ISM : constant Datalink_Type := 194;  --  /usr/include/pcap/bpf.h:770

   DLT_IEEE802_15_4 : constant Datalink_Type := 195;  --  /usr/include/pcap/bpf.h:778

   DLT_SITA : constant Datalink_Type := 196;  --  /usr/include/pcap/bpf.h:784

   DLT_ERF : constant Datalink_Type := 197;  --  /usr/include/pcap/bpf.h:791

   DLT_RAIF1 : constant Datalink_Type := 198;  --  /usr/include/pcap/bpf.h:798

   DLT_IPMB : constant Datalink_Type := 199;  --  /usr/include/pcap/bpf.h:805

   DLT_JUNIPER_ST : constant Datalink_Type := 200;  --  /usr/include/pcap/bpf.h:812

   DLT_BLUETOOTH_HCI_H4_WITH_PHDR : constant Datalink_Type := 201;  --  /usr/include/pcap/bpf.h:818

   DLT_AX25_KISS : constant Datalink_Type := 202;  --  /usr/include/pcap/bpf.h:827

   DLT_LAPD : constant Datalink_Type := 203;  --  /usr/include/pcap/bpf.h:834

   DLT_PPP_WITH_DIR : constant Datalink_Type := 204;  --  /usr/include/pcap/bpf.h:842
   DLT_C_HDLC_WITH_DIR : constant Datalink_Type := 205;  --  /usr/include/pcap/bpf.h:843
   DLT_FRELAY_WITH_DIR : constant Datalink_Type := 206;  --  /usr/include/pcap/bpf.h:844
   DLT_LAPB_WITH_DIR : constant Datalink_Type := 207;  --  /usr/include/pcap/bpf.h:845

   DLT_IPMB_LINUX : constant Datalink_Type := 209;  --  /usr/include/pcap/bpf.h:856

   DLT_FLEXRAY : constant Datalink_Type := 210;  --  /usr/include/pcap/bpf.h:862

   DLT_MOST : constant Datalink_Type := 211;  --  /usr/include/pcap/bpf.h:869

   DLT_LIN : constant Datalink_Type := 212;  --  /usr/include/pcap/bpf.h:876

   DLT_X2E_SERIAL : constant Datalink_Type := 213;  --  /usr/include/pcap/bpf.h:882

   DLT_X2E_XORAYA : constant Datalink_Type := 214;  --  /usr/include/pcap/bpf.h:888

   DLT_IEEE802_15_4_NONASK_PHY : constant Datalink_Type := 215;  --  /usr/include/pcap/bpf.h:899

   DLT_LINUX_EVDEV : constant Datalink_Type := 216;  --  /usr/include/pcap/bpf.h:907

   DLT_GSMTAP_UM : constant Datalink_Type := 217;  --  /usr/include/pcap/bpf.h:914
   DLT_GSMTAP_ABIS : constant Datalink_Type := 218;  --  /usr/include/pcap/bpf.h:915

   DLT_MPLS : constant Datalink_Type := 219;  --  /usr/include/pcap/bpf.h:922

   DLT_USB_LINUX_MMAPPED : constant Datalink_Type := 220;  --  /usr/include/pcap/bpf.h:928

   DLT_DECT : constant Datalink_Type := 221;  --  /usr/include/pcap/bpf.h:934

   DLT_AOS : constant Datalink_Type := 222;  --  /usr/include/pcap/bpf.h:945

   DLT_WIHART : constant Datalink_Type := 223;  --  /usr/include/pcap/bpf.h:954

   DLT_FC_2 : constant Datalink_Type := 224;  --  /usr/include/pcap/bpf.h:960

   DLT_FC_2_WITH_FRAME_DELIMS : constant Datalink_Type := 225;  --  /usr/include/pcap/bpf.h:974

   DLT_IPNET : constant Datalink_Type := 226;  --  /usr/include/pcap/bpf.h:1022

   DLT_CAN_SOCKETCAN : constant Datalink_Type := 227;  --  /usr/include/pcap/bpf.h:1031

   DLT_IPV4 : constant Datalink_Type := 228;  --  /usr/include/pcap/bpf.h:1037
   DLT_IPV6 : constant Datalink_Type := 229;  --  /usr/include/pcap/bpf.h:1038

   DLT_IEEE802_15_4_NOFCS : constant Datalink_Type := 230;  --  /usr/include/pcap/bpf.h:1045

   DLT_DBUS : constant Datalink_Type := 231;  --  /usr/include/pcap/bpf.h:1063

   DLT_JUNIPER_VS : constant Datalink_Type := 232;  --  /usr/include/pcap/bpf.h:1069
   DLT_JUNIPER_SRX_E2E : constant Datalink_Type := 233;  --  /usr/include/pcap/bpf.h:1070
   DLT_JUNIPER_FIBRECHANNEL : constant Datalink_Type := 234;  --  /usr/include/pcap/bpf.h:1071

   DLT_DVB_CI : constant Datalink_Type := 235;  --  /usr/include/pcap/bpf.h:1083

   DLT_MUX27010 : constant Datalink_Type := 236;  --  /usr/include/pcap/bpf.h:1090

   DLT_STANAG_5066_D_PDU : constant Datalink_Type := 237;  --  /usr/include/pcap/bpf.h:1096

   DLT_JUNIPER_ATM_CEMIC : constant Datalink_Type := 238;  --  /usr/include/pcap/bpf.h:1102

   DLT_NFLOG : constant Datalink_Type := 239;  --  /usr/include/pcap/bpf.h:1110

   DLT_NETANALYZER : constant Datalink_Type := 240;  --  /usr/include/pcap/bpf.h:1120

   DLT_NETANALYZER_TRANSPARENT : constant Datalink_Type := 241;  --  /usr/include/pcap/bpf.h:1131

   DLT_IPOIB : constant Datalink_Type := 242;  --  /usr/include/pcap/bpf.h:1138

   DLT_MPEG_2_TS : constant Datalink_Type := 243;  --  /usr/include/pcap/bpf.h:1145

   DLT_NG40 : constant Datalink_Type := 244;  --  /usr/include/pcap/bpf.h:1153

   DLT_NFC_LLCP : constant Datalink_Type := 245;  --  /usr/include/pcap/bpf.h:1163

   DLT_PFSYNC : constant Datalink_Type := 246;  --  /usr/include/pcap/bpf.h:1173

   DLT_INFINIBAND : constant Datalink_Type := 247;  --  /usr/include/pcap/bpf.h:1181

   DLT_SCTP : constant Datalink_Type := 248;  --  /usr/include/pcap/bpf.h:1188

   DLT_USBPCAP : constant Datalink_Type := 249;  --  /usr/include/pcap/bpf.h:1195

   DLT_RTAC_SERIAL : constant Datalink_Type := 250;  --  /usr/include/pcap/bpf.h:1203

   DLT_BLUETOOTH_LE_LL : constant Datalink_Type := 251;  --  /usr/include/pcap/bpf.h:1210

   DLT_WIRESHARK_UPPER_PDU : constant Datalink_Type := 252;  --  /usr/include/pcap/bpf.h:1223

   DLT_NETLINK : constant Datalink_Type := 253;  --  /usr/include/pcap/bpf.h:1228

   DLT_BLUETOOTH_LINUX_MONITOR : constant Datalink_Type := 254;  --  /usr/include/pcap/bpf.h:1233

   DLT_BLUETOOTH_BREDR_BB : constant Datalink_Type := 255;  --  /usr/include/pcap/bpf.h:1239

   DLT_BLUETOOTH_LE_LL_WITH_PHDR : constant Datalink_Type := 256;  --  /usr/include/pcap/bpf.h:1244

   DLT_PROFIBUS_DL : constant Datalink_Type := 257;  --  /usr/include/pcap/bpf.h:1249

   DLT_PKTAP : constant Datalink_Type := 258;  --  /usr/include/pcap/bpf.h:1298

   DLT_EPON : constant Datalink_Type := 259;  --  /usr/include/pcap/bpf.h:1306

   DLT_IPMI_HPM_2 : constant Datalink_Type := 260;  --  /usr/include/pcap/bpf.h:1312

   DLT_MATCHING_MAX : constant Datalink_Type := 260;  --  /usr/include/pcap/bpf.h:1314
   --  arg-macro: function DLT_CLASS (x)
   --    return (x) and 16#03ff0000#;

   DLT_CLASS_NETBSD_RAWAF : constant Datalink_Type := 16#02240000#;

end Pcap;
