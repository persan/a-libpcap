pragma Ada_2012;
package body Pcap is

   ---------------
   -- Lookupdev --
   ---------------

   function Lookupdev (D : String) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lookupdev unimplemented");
      return raise Program_Error with "Unimplemented function Lookupdev";
   end Lookupdev;

   ---------------
   -- Lookupnet --
   ---------------

   procedure Lookupnet
     (Net  : String;
      Addr : out Ipv4Addr;
      Mask : out Ipv4Mask)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lookupnet unimplemented");
      raise Program_Error with "Unimplemented procedure Lookupnet";
   end Lookupnet;

   ------------
   -- Create --
   ------------

   function Create (Source : String := "any") return Pcap_T is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create unimplemented");
      return raise Program_Error with "Unimplemented function Create";
   end Create;

   -----------------
   -- Set_Snaplen --
   -----------------

   procedure Set_Snaplen (Self : Pcap_T; Snaplen : Natural) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Snaplen unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Snaplen";
   end Set_Snaplen;

   -----------------
   -- Set_Promisc --
   -----------------

   procedure Set_Promisc (Self : Pcap_T; Promisc : Boolean) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Promisc unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Promisc";
   end Set_Promisc;

   -------------------
   -- Can_Set_Rfmon --
   -------------------

   function Can_Set_Rfmon (Self : Pcap_T) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Can_Set_Rfmon unimplemented");
      return raise Program_Error with "Unimplemented function Can_Set_Rfmon";
   end Can_Set_Rfmon;

   ---------------
   -- Set_Rfmon --
   ---------------

   procedure Set_Rfmon (Self : Pcap_T; Promisc : Boolean) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Rfmon unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Rfmon";
   end Set_Rfmon;

   -----------------
   -- Set_Timeout --
   -----------------

   procedure Set_Timeout (Self : Pcap_T; TimeOut : Duration) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Timeout unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Timeout";
   end Set_Timeout;

   ---------------------
   -- Set_Tstamp_Type --
   ---------------------

   procedure Set_Tstamp_Type (Self : Pcap_T; Arg2 : Tstamp_Type := HOST) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Tstamp_Type unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Tstamp_Type";
   end Set_Tstamp_Type;

   ------------------------
   -- Set_Immediate_Mode --
   ------------------------

   procedure Set_Immediate_Mode
     (Self : Pcap_T;
      Immediate_Mode : Boolean := True)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Immediate_Mode unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Immediate_Mode";
   end Set_Immediate_Mode;

   ---------------------
   -- Set_Buffer_Size --
   ---------------------

   procedure Set_Buffer_Size (Self : Pcap_T; Buffer_Size : Natural) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Buffer_Size unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Buffer_Size";
   end Set_Buffer_Size;

   --------------------------
   -- Set_Tstamp_Precision --
   --------------------------

   procedure Set_Tstamp_Precision
     (Self : Pcap_T;
      Precision : Tstamp_Precision_Type := MICRO)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Tstamp_Precision unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Tstamp_Precision";
   end Set_Tstamp_Precision;

   --------------------------
   -- Get_Tstamp_Precision --
   --------------------------

   function Get_Tstamp_Precision
     (Arg1 : Pcap_T)
      return Tstamp_Precision_Type
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Tstamp_Precision unimplemented");
      return raise Program_Error with "Unimplemented function Get_Tstamp_Precision";
   end Get_Tstamp_Precision;

   --------------
   -- Activate --
   --------------

   function Activate (Arg1 : access Pcap_T) return Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Activate unimplemented");
      return raise Program_Error with "Unimplemented function Activate";
   end Activate;

   -----------------------
   -- List_Tstamp_Types --
   -----------------------

   function List_Tstamp_Types (Self : Pcap_T) return Tstamp_Types is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "List_Tstamp_Types unimplemented");
      return raise Program_Error with "Unimplemented function List_Tstamp_Types";
   end List_Tstamp_Types;

end Pcap;
