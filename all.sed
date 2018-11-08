s/with PCAP.Low_Level.x86_64_linux_gnu_sys_types_h;//
s/PCAP.Low_Level.x86_64_linux_gnu_bits_time_h/System.Linux/
s/PCAP.Low_Level.stdio_h/Interfaces.C_Streams/g
s/FILE/FILEs/g
s/with PCAP.Low_Level.stddef_h;//
s/PCAP.Low_Level.x86_64_linux_gnu_sys_types_h.u_int/unsigned/g
s/PCAP.Low_Level.x86_64_linux_gnu_sys_types_h.u_char/unsigned_char/g
s/PCAP.Low_Level.x86_64_linux_gnu_sys_types_h.u_short/unsigned_short/g
s/PCAP.Low_Level.pcap_bpf_h.bpf_u_int32/unsigned/
s/PCAP.Low_Level.pcap_bpf_h.bpf_int32/int/
s/PCAP.Low_Level.stddef_h.size_t/size_t/g
s/pragma Style_Checks (Off);/pragma Style_Checks (Off);\
pragma Warnings (Off); -- Since this is automaticly generated/

s/PCAP.Low_Level.pcap_bpf_h.bpf_program/pcap_bpf_h.bpf_program/
s/PCAP.Low_Level.pcap_bpf_h.bpf_insn/pcap_bpf_h.bpf_insn/

s/pragma Ada_2012;/--  begin read only\
pragma Ada_2012;/

s/end PCAP.Low_Level.pcap_pcap_h;/end PCAP.Low_Level.pcap_pcap_h;\
--  end read only/

s/end PCAP.Low_Level.pcap_bpf_h;/end PCAP.Low_Level.pcap_bpf_h;\
--  end read only/
