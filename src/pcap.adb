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

end Pcap;
