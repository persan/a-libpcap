--  begin read only
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings (Off); -- Since this is automaticly generated

with Interfaces.C; use Interfaces.C;
with PCAP.Low_Level.pcap_bpf_h;

with System.Linux;
with Interfaces.C.Strings;
with System;
limited with Interfaces.C_Streams;


package PCAP.Low_Level.pcap_pcap_h is

   PCAP_VERSION_MAJOR : constant := 2;  --  /usr/include/pcap/pcap.h:65
   PCAP_VERSION_MINOR : constant := 4;  --  /usr/include/pcap/pcap.h:66

   PCAP_ERRBUF_SIZE : constant := 256;  --  /usr/include/pcap/pcap.h:68
   --  arg-macro: function LT_FCS_LENGTH_PRESENT (x)
   --    return (x) and 16#04000000#;
   --  arg-macro: function LT_FCS_LENGTH (x)
   --    return ((x) and 16#F0000000#) >> 28;
   --  arg-macro: function LT_FCS_DATALINK_EXT (x)
   --    return (((x) and 16#F#) << 28) or 16#04000000#;

   PCAP_IF_LOOPBACK : constant := 16#00000001#;  --  /usr/include/pcap/pcap.h:222
   PCAP_IF_UP : constant := 16#00000002#;  --  /usr/include/pcap/pcap.h:223
   PCAP_IF_RUNNING : constant := 16#00000004#;  --  /usr/include/pcap/pcap.h:224

   PCAP_ERROR : constant := -1;  --  /usr/include/pcap/pcap.h:246
   PCAP_ERROR_BREAK : constant := -2;  --  /usr/include/pcap/pcap.h:247
   PCAP_ERROR_NOT_ACTIVATED : constant := -3;  --  /usr/include/pcap/pcap.h:248
   PCAP_ERROR_ACTIVATED : constant := -4;  --  /usr/include/pcap/pcap.h:249
   PCAP_ERROR_NO_SUCH_DEVICE : constant := -5;  --  /usr/include/pcap/pcap.h:250
   PCAP_ERROR_RFMON_NOTSUP : constant := -6;  --  /usr/include/pcap/pcap.h:251
   PCAP_ERROR_NOT_RFMON : constant := -7;  --  /usr/include/pcap/pcap.h:252
   PCAP_ERROR_PERM_DENIED : constant := -8;  --  /usr/include/pcap/pcap.h:253
   PCAP_ERROR_IFACE_NOT_UP : constant := -9;  --  /usr/include/pcap/pcap.h:254
   PCAP_ERROR_CANTSET_TSTAMP_TYPE : constant := -10;  --  /usr/include/pcap/pcap.h:255
   PCAP_ERROR_PROMISC_PERM_DENIED : constant := -11;  --  /usr/include/pcap/pcap.h:256
   PCAP_ERROR_TSTAMP_PRECISION_NOTSUP : constant := -12;  --  /usr/include/pcap/pcap.h:257

   PCAP_WARNING : constant := 1;  --  /usr/include/pcap/pcap.h:264
   PCAP_WARNING_PROMISC_NOTSUP : constant := 2;  --  /usr/include/pcap/pcap.h:265
   PCAP_WARNING_TSTAMP_TYPE_NOTSUP : constant := 3;  --  /usr/include/pcap/pcap.h:266

   PCAP_NETMASK_UNKNOWN : constant := 16#ffffffff#;  --  /usr/include/pcap/pcap.h:272

   PCAP_TSTAMP_HOST : constant := 0;  --  /usr/include/pcap/pcap.h:334
   PCAP_TSTAMP_HOST_LOWPREC : constant := 1;  --  /usr/include/pcap/pcap.h:335
   PCAP_TSTAMP_HOST_HIPREC : constant := 2;  --  /usr/include/pcap/pcap.h:336
   PCAP_TSTAMP_ADAPTER : constant := 3;  --  /usr/include/pcap/pcap.h:337
   PCAP_TSTAMP_ADAPTER_UNSYNCED : constant := 4;  --  /usr/include/pcap/pcap.h:338

   PCAP_TSTAMP_PRECISION_MICRO : constant := 0;  --  /usr/include/pcap/pcap.h:346
   PCAP_TSTAMP_PRECISION_NANO : constant := 1;  --  /usr/include/pcap/pcap.h:347

  -- -*- Mode: c; tab-width: 8; indent-tabs-mode: 1; c-basic-offset: 8; -*-  
  -- * Copyright (c) 1993, 1994, 1995, 1996, 1997
  -- *	The Regents of the University of California.  All rights reserved.
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
  -- *	This product includes software developed by the Computer Systems
  -- *	Engineering Group at Lawrence Berkeley Laboratory.
  -- * 4. Neither the name of the University nor of the Laboratory may be used
  -- *    to endorse or promote products derived from this software without
  -- *    specific prior written permission.
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
  --  

  -- * Version number of the current version of the pcap file format.
  -- *
  -- * NOTE: this is *NOT* the version number of the libpcap library.
  -- * To fetch the version information for the version of libpcap
  -- * you're using, use pcap_lib_version().
  --  

  -- * Compatibility for systems that have a bpf.h that
  -- * predates the bpf typedefs for 64-bit support.
  --  

   type pcap is null record;   -- incomplete struct

   subtype pcap_t is pcap;  -- /usr/include/pcap/pcap.h:79

   type pcap_dumper is null record;   -- incomplete struct

   subtype pcap_dumper_t is pcap_dumper;  -- /usr/include/pcap/pcap.h:80

   type pcap_if;
   subtype pcap_if_t is pcap_if;  -- /usr/include/pcap/pcap.h:81

   type pcap_addr;
   subtype pcap_addr_t is pcap_addr;  -- /usr/include/pcap/pcap.h:82

  -- * The first record in the file contains saved values for some
  -- * of the flags used in the printout phases of tcpdump.
  -- * Many fields here are 32 bit ints so compilers won't insert unwanted
  -- * padding; these files need to be interchangeable across architectures.
  -- *
  -- * Do not change the layout of this structure, in any way (this includes
  -- * changes that only affect the length of fields in this structure).
  -- *
  -- * Also, do not change the interpretation of any of the members of this
  -- * structure, in any way (this includes using values other than
  -- * LINKTYPE_ values, as defined in "savefile.c", in the "linktype"
  -- * field).
  -- *
  -- * Instead:
  -- *
  -- *	introduce a new structure for the new format, if the layout
  -- *	of the structure changed;
  -- *
  -- *	send mail to "tcpdump-workers@lists.tcpdump.org", requesting
  -- *	a new magic number for your new capture file format, and, when
  -- *	you get the new magic number, put it in "savefile.c";
  -- *
  -- *	use that magic number for save files with the changed file
  -- *	header;
  -- *
  -- *	make the code in "savefile.c" capable of reading files with
  -- *	the old file header as well as files with the new file header
  -- *	(using the magic number to determine the header format).
  -- *
  -- * Then supply the changes by forking the branch at
  -- *
  -- *	https://github.com/the-tcpdump-group/libpcap/issues
  -- *
  -- * and issuing a pull request, so that future versions of libpcap and
  -- * programs that use it (such as tcpdump) will be able to read your new
  -- * capture file format.
  --  

   type pcap_file_header is record
      magic : aliased unsigned;  -- /usr/include/pcap/pcap.h:123
      version_major : aliased unsigned_short;  -- /usr/include/pcap/pcap.h:124
      version_minor : aliased unsigned_short;  -- /usr/include/pcap/pcap.h:125
      thiszone : aliased int;  -- /usr/include/pcap/pcap.h:126
      sigfigs : aliased unsigned;  -- /usr/include/pcap/pcap.h:127
      snaplen : aliased unsigned;  -- /usr/include/pcap/pcap.h:128
      linktype : aliased unsigned;  -- /usr/include/pcap/pcap.h:129
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/pcap/pcap.h:122

  -- gmt to local correction  
  -- accuracy of timestamps  
  -- max length saved portion of each pkt  
  -- data link type (LINKTYPE_*)  
  -- * Macros for the value returned by pcap_datalink_ext().
  -- *
  -- * If LT_FCS_LENGTH_PRESENT(x) is true, the LT_FCS_LENGTH(x) macro
  -- * gives the FCS length of packets in the capture.
  --  

   type pcap_direction_t is 
     (PCAP_D_INOUT,
      PCAP_D_IN,
      PCAP_D_OUT)
   with Convention => C;  -- /usr/include/pcap/pcap.h:146

  -- * Generic per-packet information, as supplied by libpcap.
  -- *
  -- * The time stamp can and should be a "struct timeval", regardless of
  -- * whether your system supports 32-bit tv_sec in "struct timeval",
  -- * 64-bit tv_sec in "struct timeval", or both if it supports both 32-bit
  -- * and 64-bit applications.  The on-disk format of savefiles uses 32-bit
  -- * tv_sec (and tv_usec); this structure is irrelevant to that.  32-bit
  -- * and 64-bit versions of libpcap, even if they're on the same platform,
  -- * should supply the appropriate version of "struct timeval", even if
  -- * that's not what the underlying packet capture mechanism supplies.
  --  

  -- time stamp  
   type pcap_pkthdr is record
      ts : aliased System.Linux.timeval;  -- /usr/include/pcap/pcap.h:161
      caplen : aliased unsigned;  -- /usr/include/pcap/pcap.h:162
      len : aliased unsigned;  -- /usr/include/pcap/pcap.h:163
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/pcap/pcap.h:160

  -- length of portion present  
  -- length this packet (off wire)  
  -- * As returned by the pcap_stats()
  --  

  -- number of packets received  
   type pcap_stat is record
      ps_recv : aliased unsigned;  -- /usr/include/pcap/pcap.h:170
      ps_drop : aliased unsigned;  -- /usr/include/pcap/pcap.h:171
      ps_ifdrop : aliased unsigned;  -- /usr/include/pcap/pcap.h:172
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/pcap/pcap.h:169

  -- number of packets dropped  
  -- drops by interface -- only supported on some platforms  
  -- number of packets that reach the application  
  -- * As returned by the pcap_stats_ex()
  --  

  -- total packets received        
  -- total packets transmitted     
  -- total bytes received          
  -- total bytes transmitted       
  -- bad packets received          
  -- packet transmit problems      
  -- no space in Rx buffers        
  -- no space available for Tx     
  -- multicast packets received    
  -- detailed rx_errors:  
  -- receiver ring buff overflow   
  -- recv'd pkt with crc error     
  -- recv'd frame alignment error  
  -- recv'r fifo overrun           
  -- recv'r missed packet          
  -- detailed tx_errors  
  -- * Item in a list of interfaces.
  --  

   type pcap_if is record
      next : access pcap_if;  -- /usr/include/pcap/pcap.h:215
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/pcap/pcap.h:216
      description : Interfaces.C.Strings.chars_ptr;  -- /usr/include/pcap/pcap.h:217
      addresses : access pcap_addr;  -- /usr/include/pcap/pcap.h:218
      flags : aliased unsigned;  -- /usr/include/pcap/pcap.h:219
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/pcap/pcap.h:214

  -- name to hand to "pcap_open_live()"  
  -- textual description of interface, or NULL  
  -- PCAP_IF_ interface flags  
  -- * Representation of an interface address.
  --  

   type sockaddr;
   type pcap_addr is record
      next : access pcap_addr;  -- /usr/include/pcap/pcap.h:230
      addr : access sockaddr;  -- /usr/include/pcap/pcap.h:231
      netmask : access sockaddr;  -- /usr/include/pcap/pcap.h:232
      broadaddr : access sockaddr;  -- /usr/include/pcap/pcap.h:233
      dstaddr : access sockaddr;  -- /usr/include/pcap/pcap.h:234
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/pcap/pcap.h:229

  -- address  
   type sockaddr is null record;   -- incomplete struct

  -- netmask for that address  
  -- broadcast address for that address  
  -- P2P destination address for that address  
   type pcap_handler is access procedure
        (arg1 : access unsigned_char;
         arg2 : access constant pcap_pkthdr;
         arg3 : access unsigned_char)
   with Convention => C;  -- /usr/include/pcap/pcap.h:237

  -- * Error codes for the pcap API.
  -- * These will all be negative, so you can check for the success or
  -- * failure of a call that returns these codes by checking for a
  -- * negative value.
  --  

  -- * Warning codes for the pcap API.
  -- * These will all be positive and non-zero, so they won't look like
  -- * errors.
  --  

  -- * Value to pass to pcap_compile() as the netmask if you don't know what
  -- * the netmask is.
  --  

   function pcap_lookupdev (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_lookupdev";

   function pcap_lookupnet
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access unsigned;
      arg3 : access unsigned;
      arg4 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/pcap/pcap.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_lookupnet";

   function pcap_create (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return access pcap_t  -- /usr/include/pcap/pcap.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_create";

   function pcap_set_snaplen (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_snaplen";

   function pcap_set_promisc (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_promisc";

   function pcap_can_set_rfmon (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_can_set_rfmon";

   function pcap_set_rfmon (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_rfmon";

   function pcap_set_timeout (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_timeout";

   function pcap_set_tstamp_type (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_tstamp_type";

   function pcap_set_immediate_mode (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_immediate_mode";

   function pcap_set_buffer_size (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_buffer_size";

   function pcap_set_tstamp_precision (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_tstamp_precision";

   function pcap_get_tstamp_precision (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_get_tstamp_precision";

   function pcap_activate (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_activate";

   function pcap_list_tstamp_types (arg1 : access pcap_t; arg2 : System.Address) return int  -- /usr/include/pcap/pcap.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_list_tstamp_types";

   procedure pcap_free_tstamp_types (arg1 : access int)  -- /usr/include/pcap/pcap.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_free_tstamp_types";

   function pcap_tstamp_type_name_to_val (arg1 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/pcap/pcap.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_tstamp_type_name_to_val";

   function pcap_tstamp_type_val_to_name (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_tstamp_type_val_to_name";

   function pcap_tstamp_type_val_to_description (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_tstamp_type_val_to_description";

  -- * Time stamp types.
  -- * Not all systems and interfaces will necessarily support all of these.
  -- *
  -- * A system that supports PCAP_TSTAMP_HOST is offering time stamps
  -- * provided by the host machine, rather than by the capture device,
  -- * but not committing to any characteristics of the time stamp;
  -- * it will not offer any of the PCAP_TSTAMP_HOST_ subtypes.
  -- *
  -- * PCAP_TSTAMP_HOST_LOWPREC is a time stamp, provided by the host machine,
  -- * that's low-precision but relatively cheap to fetch; it's normally done
  -- * using the system clock, so it's normally synchronized with times you'd
  -- * fetch from system calls.
  -- *
  -- * PCAP_TSTAMP_HOST_HIPREC is a time stamp, provided by the host machine,
  -- * that's high-precision; it might be more expensive to fetch.  It might
  -- * or might not be synchronized with the system clock, and might have
  -- * problems with time stamps for packets received on different CPUs,
  -- * depending on the platform.
  -- *
  -- * PCAP_TSTAMP_ADAPTER is a high-precision time stamp supplied by the
  -- * capture device; it's synchronized with the system clock.
  -- *
  -- * PCAP_TSTAMP_ADAPTER_UNSYNCED is a high-precision time stamp supplied by
  -- * the capture device; it's not synchronized with the system clock.
  -- *
  -- * Note that time stamps synchronized with the system clock can go
  -- * backwards, as the system clock can go backwards.  If a clock is
  -- * not in sync with the system clock, that could be because the
  -- * system clock isn't keeping accurate time, because the other
  -- * clock isn't keeping accurate time, or both.
  -- *
  -- * Note that host-provided time stamps generally correspond to the
  -- * time when the time-stamping code sees the packet; this could
  -- * be some unknown amount of time after the first or last bit of
  -- * the packet is received by the network adapter, due to batching
  -- * of interrupts for packet arrival, queueing delays, etc..
  --  

  -- * Time stamp resolution types.
  -- * Not all systems and interfaces will necessarily support all of these
  -- * resolutions when doing live captures; all of them can be requested
  -- * when reading a savefile.
  --  

   function pcap_open_live
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : Interfaces.C.Strings.chars_ptr) return access pcap_t  -- /usr/include/pcap/pcap.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_open_live";

   function pcap_open_dead (arg1 : int; arg2 : int) return access pcap_t  -- /usr/include/pcap/pcap.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_open_dead";

   function pcap_open_dead_with_tstamp_precision
     (arg1 : int;
      arg2 : int;
      arg3 : unsigned) return access pcap_t  -- /usr/include/pcap/pcap.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_open_dead_with_tstamp_precision";

   function pcap_open_offline_with_tstamp_precision
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr) return access pcap_t  -- /usr/include/pcap/pcap.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_open_offline_with_tstamp_precision";

   function pcap_open_offline (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return access pcap_t  -- /usr/include/pcap/pcap.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_open_offline";

   function pcap_fopen_offline_with_tstamp_precision
     (arg1 : access Interfaces.C_Streams.FILEs;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr) return access pcap_t  -- /usr/include/pcap/pcap.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_fopen_offline_with_tstamp_precision";

   function pcap_fopen_offline (arg1 : access Interfaces.C_Streams.FILEs; arg2 : Interfaces.C.Strings.chars_ptr) return access pcap_t  -- /usr/include/pcap/pcap.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_fopen_offline";

   procedure pcap_close (arg1 : access pcap_t)  -- /usr/include/pcap/pcap.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_close";

   function pcap_loop
     (arg1 : access pcap_t;
      arg2 : int;
      arg3 : pcap_handler;
      arg4 : access unsigned_char) return int  -- /usr/include/pcap/pcap.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_loop";

   function pcap_dispatch
     (arg1 : access pcap_t;
      arg2 : int;
      arg3 : pcap_handler;
      arg4 : access unsigned_char) return int  -- /usr/include/pcap/pcap.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dispatch";

   function pcap_next (arg1 : access pcap_t; arg2 : access pcap_pkthdr) return access unsigned_char  -- /usr/include/pcap/pcap.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_next";

   function pcap_next_ex
     (arg1 : access pcap_t;
      arg2 : System.Address;
      arg3 : System.Address) return int  -- /usr/include/pcap/pcap.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_next_ex";

   procedure pcap_breakloop (arg1 : access pcap_t)  -- /usr/include/pcap/pcap.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_breakloop";

   function pcap_stats (arg1 : access pcap_t; arg2 : access pcap_stat) return int  -- /usr/include/pcap/pcap.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_stats";

   function pcap_setfilter (arg1 : access pcap_t; arg2 : access pcap_bpf_h.bpf_program) return int  -- /usr/include/pcap/pcap.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_setfilter";

   function pcap_setdirection (arg1 : access pcap_t; arg2 : pcap_direction_t) return int  -- /usr/include/pcap/pcap.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_setdirection";

   function pcap_getnonblock (arg1 : access pcap_t; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/pcap/pcap.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_getnonblock";

   function pcap_setnonblock
     (arg1 : access pcap_t;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/pcap/pcap.h:382
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_setnonblock";

   function pcap_inject
     (arg1 : access pcap_t;
      arg2 : System.Address;
      arg3 : size_t) return int  -- /usr/include/pcap/pcap.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_inject";

   function pcap_sendpacket
     (arg1 : access pcap_t;
      arg2 : access unsigned_char;
      arg3 : int) return int  -- /usr/include/pcap/pcap.h:384
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_sendpacket";

   function pcap_statustostr (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_statustostr";

   function pcap_strerror (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_strerror";

   function pcap_geterr (arg1 : access pcap_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_geterr";

   procedure pcap_perror (arg1 : access pcap_t; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/pcap/pcap.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_perror";

   function pcap_compile
     (arg1 : access pcap_t;
      arg2 : access pcap_bpf_h.bpf_program;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : unsigned) return int  -- /usr/include/pcap/pcap.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_compile";

   function pcap_compile_nopcap
     (arg1 : int;
      arg2 : int;
      arg3 : access pcap_bpf_h.bpf_program;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : int;
      arg6 : unsigned) return int  -- /usr/include/pcap/pcap.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_compile_nopcap";

   procedure pcap_freecode (arg1 : access pcap_bpf_h.bpf_program)  -- /usr/include/pcap/pcap.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_freecode";

   function pcap_offline_filter
     (arg1 : access constant pcap_bpf_h.bpf_program;
      arg2 : access constant pcap_pkthdr;
      arg3 : access unsigned_char) return int  -- /usr/include/pcap/pcap.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_offline_filter";

   function pcap_datalink (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:396
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_datalink";

   function pcap_datalink_ext (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_datalink_ext";

   function pcap_list_datalinks (arg1 : access pcap_t; arg2 : System.Address) return int  -- /usr/include/pcap/pcap.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_list_datalinks";

   function pcap_set_datalink (arg1 : access pcap_t; arg2 : int) return int  -- /usr/include/pcap/pcap.h:399
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_set_datalink";

   procedure pcap_free_datalinks (arg1 : access int)  -- /usr/include/pcap/pcap.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_free_datalinks";

   function pcap_datalink_name_to_val (arg1 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/pcap/pcap.h:401
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_datalink_name_to_val";

   function pcap_datalink_val_to_name (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_datalink_val_to_name";

   function pcap_datalink_val_to_description (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_datalink_val_to_description";

   function pcap_snapshot (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_snapshot";

   function pcap_is_swapped (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_is_swapped";

   function pcap_major_version (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_major_version";

   function pcap_minor_version (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_minor_version";

  -- XXX  
   function pcap_file (arg1 : access pcap_t) return access Interfaces.C_Streams.FILEs  -- /usr/include/pcap/pcap.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_file";

   function pcap_fileno (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_fileno";

   function pcap_dump_open (arg1 : access pcap_t; arg2 : Interfaces.C.Strings.chars_ptr) return access pcap_dumper_t  -- /usr/include/pcap/pcap.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dump_open";

   function pcap_dump_fopen (arg1 : access pcap_t; fp : access Interfaces.C_Streams.FILEs) return access pcap_dumper_t  -- /usr/include/pcap/pcap.h:414
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dump_fopen";

   function pcap_dump_file (arg1 : access pcap_dumper_t) return access Interfaces.C_Streams.FILEs  -- /usr/include/pcap/pcap.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dump_file";

   function pcap_dump_ftell (arg1 : access pcap_dumper_t) return long  -- /usr/include/pcap/pcap.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dump_ftell";

   function pcap_dump_flush (arg1 : access pcap_dumper_t) return int  -- /usr/include/pcap/pcap.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dump_flush";

   procedure pcap_dump_close (arg1 : access pcap_dumper_t)  -- /usr/include/pcap/pcap.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dump_close";

   procedure pcap_dump
     (arg1 : access unsigned_char;
      arg2 : access constant pcap_pkthdr;
      arg3 : access unsigned_char)  -- /usr/include/pcap/pcap.h:419
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_dump";

   function pcap_findalldevs (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/pcap/pcap.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_findalldevs";

   procedure pcap_freealldevs (arg1 : access pcap_if_t)  -- /usr/include/pcap/pcap.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_freealldevs";

   function pcap_lib_version return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_lib_version";

  -- * On at least some versions of NetBSD, we don't want to declare
  -- * bpf_filter() here, as it's also be declared in <net/bpf.h>, with a
  -- * different signature, but, on other BSD-flavored UN*Xes, it's not
  -- * declared in <net/bpf.h>, so we *do* want to declare it here, so it's
  -- * declared when we build pcap-bpf.c.
  --  

   function bpf_filter
     (arg1 : access constant pcap_bpf_h.bpf_insn;
      arg2 : access unsigned_char;
      arg3 : unsigned;
      arg4 : unsigned) return unsigned  -- /usr/include/pcap/pcap.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "bpf_filter";

   function bpf_validate (arg1 : access constant pcap_bpf_h.bpf_insn; arg2 : int) return int  -- /usr/include/pcap/pcap.h:436
   with Import => True, 
        Convention => C, 
        External_Name => "bpf_validate";

   function bpf_image (arg1 : access constant pcap_bpf_h.bpf_insn; arg2 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/pcap/pcap.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "bpf_image";

   procedure bpf_dump (arg1 : access constant pcap_bpf_h.bpf_program; arg2 : int)  -- /usr/include/pcap/pcap.h:438
   with Import => True, 
        Convention => C, 
        External_Name => "bpf_dump";

  -- * Win32 definitions
  --  

  -- Include file with the wpcap-specific extensions  
  -- * MS-DOS definitions
  --  

  -- * UN*X definitions
  --  

   function pcap_get_selectable_fd (arg1 : access pcap_t) return int  -- /usr/include/pcap/pcap.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "pcap_get_selectable_fd";

end PCAP.Low_Level.pcap_pcap_h;
--  end read only
