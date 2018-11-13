








function loop
     (Self : Pcap_T ;
      Arg2 : int;
      Arg3 : Pcap_Handler;
      Arg4 : access Unsigned_Char) return Integer;




   function Dispatch
     (Self : Pcap_T ;
      Arg2 : int;
      Arg3 : Pcap_Handler;
      Arg4 : access Unsigned_Char) return Integer;




   function Next (Self : Pcap_T ;  Arg2 : access Pcap_Pkthdr) return access Unsigned_Char




   function Next_Ex
     (Self : Pcap_T ;
      Arg2 : System.Address;
      Arg3 : System.Address) return Integer;




   procedure Breakloop (Arg1 : access Pcap_T)




   function Stats (Self : Pcap_T ;  Arg2 : access Pcap_Stat) return Integer;




   function Setfilter (Self : Pcap_T ;  Arg2 : access Pcap_Bpf_H.Bpf_Program) return Integer;




   function Setdirection (Self : Pcap_T ;  Arg2 : Pcap_Direction_T) return Integer;




   function Getnonblock (Self : Pcap_T ;  Arg2 : String) return Integer;




   function Setnonblock
     (Self : Pcap_T ;
      Arg2 : int;
      Arg3 : String) return Integer;




   function Inject
     (Self : Pcap_T ;
      Arg2 : System.Address;
      Arg3 : Size_T) return Integer;




   function Sendpacket
     (Self : Pcap_T ;
      Arg2 : access Unsigned_Char;
      Arg3 : int) return Integer;




   function Statustostr (Arg1 : int) return String




   function Strerror (Arg1 : int) return String




   function Geterr (Arg1 : access Pcap_T) return String




   procedure Perror (Self : Pcap_T ;  Arg2 : String)




   function Compile
     (Self : Pcap_T ;
      Arg2 : access Pcap_Bpf_H.Bpf_Program;
      Arg3 : String;
      Arg4 : int;
      Arg5 : Unsigned) return Integer;




   function Compile_Nopcap
     (Arg1 : int;
      Arg2 : int;
      Arg3 : access Pcap_Bpf_H.Bpf_Program;
      Arg4 : String;
      Arg5 : int;
      Arg6 : Unsigned) return Integer;




   procedure Freecode (Arg1 : access Pcap_Bpf_H.Bpf_Program)




   function Offline_Filter
     (Arg1 : access constant Pcap_Bpf_H.Bpf_Program;
      Arg2 : access constant Pcap_Pkthdr;
      Arg3 : access Unsigned_Char) return Integer;




   function Datalink (Arg1 : access Pcap_T) return Integer;




   function Datalink_Ext (Arg1 : access Pcap_T) return Integer;




   function List_Datalinks (Self : Pcap_T ;  Arg2 : System.Address) return Integer;




   function Set_Datalink (Self : Pcap_T ;  Arg2 : int) return Integer;




   procedure Free_Datalinks (Arg1 : access int)




   function Datalink_Name_To_Val (Arg1 : String) return Integer;




   function Datalink_Val_To_Name (Arg1 : int) return String




   function Datalink_Val_To_Description (Arg1 : int) return String




   function Snapshot (Arg1 : access Pcap_T) return Integer;




   function Is_Swapped (Arg1 : access Pcap_T) return Integer;




   function Major_Version (Arg1 : access Pcap_T) return Integer;




   function Minor_Version (Arg1 : access Pcap_T) return Integer;





   function File (Arg1 : access Pcap_T) return access Interfaces.C_Streams.FILEs




   function Fileno (Arg1 : access Pcap_T) return Integer;




   function Dump_Open (Self : Pcap_T ;  Arg2 : String) return access Pcap_Dumper_T




   function Dump_Fopen (Self : Pcap_T ;  Fp : access Interfaces.C_Streams.FILEs) return access Pcap_Dumper_T




   function Dump_File (Arg1 : access Pcap_Dumper_T) return access Interfaces.C_Streams.FILEs




   function Dump_Ftell (Arg1 : access Pcap_Dumper_T) return long




   function Dump_Flush (Arg1 : access Pcap_Dumper_T) return Integer;




   procedure Dump_Close (Arg1 : access Pcap_Dumper_T)




   procedure Dump
     (Arg1 : access Unsigned_Char;
      Arg2 : access constant Pcap_Pkthdr;
      Arg3 : access Unsigned_Char)




   function Findalldevs (Arg1 : System.Address; Arg2 : String) return Integer;




   procedure Freealldevs (Arg1 : access Pcap_If_T)




   function Lib_Version return String











   function Bpf_Filter
     (Arg1 : access constant Pcap_Bpf_H.Bpf_Insn;
      Arg2 : access Unsigned_Char;
      Arg3 : Unsigned;
      Arg4 : Unsigned) return Unsigned




   function Bpf_Validate (Arg1 : access constant Pcap_Bpf_H.Bpf_Insn; Arg2 : int) return Integer;




   function Bpf_Image (Arg1 : access constant Pcap_Bpf_H.Bpf_Insn; Arg2 : int) return String




   procedure Bpf_Dump (Arg1 : access constant Pcap_Bpf_H.Bpf_Program; Arg2 : int)



   function Get_Selectable_Fd (Arg1 : Pcap_T) return Integer;




end PCAP.Low_Level.Pcap_Pcap_H;
