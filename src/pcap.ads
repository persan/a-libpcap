limited private with Pcap.Low_Level.Pcap_Pcap_H;
private with Ada.Finalization;
package Pcap is
   type Pcap_T (<>) is tagged private;

   function Lookupdev (D : String) return String;
   function Create (Source : String := "any") return Pcap_T;
   --  Create is used to create a packet capture handle to look at packets on the network.
   --  source is a string that specifies the network device to open;
   --  a source argument of "any" can be used to capture packets from all interfaces.
   --  The returned handle must be activated with activate()
   --  before packets can be captured with it.
   --  Options for the capture, such as promiscuous mode,
   --  can be set on the handle before activating it

   procedure Set_Snaplen (Self : Pcap_T; Snaplen : Natural);
   -- Aets the snapshot length to be used on a capture handle when the handle is activated to snaplen.

   procedure Set_Promisc (Self : Pcap_T; Promisc : Boolean);
   --   sets whether promiscuous mode should be set on a capture handle when the handle is activated

   function Can_Set_Rfmon (Self : Pcap_T) return Boolean;
   -- checks whether monitor mode could be set on a capture handle when the handle is activated

   procedure Set_Rfmon (Self : Pcap_T; Promisc : Boolean);
   --  sets whether monitor mode should be set on a capture handle when the handle is activated

   procedure Set_Timeout (Self : Pcap_T; TimeOut : Duration);
   --  sets the read timeout that will be used on a capture handle when the handle is activated



private
   type Pcap_T is new Ada.Finalization.Controlled with record
      Impl : access Pcap.Low_Level.Pcap_Pcap_H.Pcap;
   end record;
end Pcap;
