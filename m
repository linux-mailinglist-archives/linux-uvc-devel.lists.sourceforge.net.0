Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E303255AB6
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 28 Aug 2020 14:59:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kBdyd-0006RN-Lf; Fri, 28 Aug 2020 12:59:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <saumell.jose@gmail.com>) id 1kBdyb-0006Qj-Gb
 for linux-uvc-devel@lists.sourceforge.net; Fri, 28 Aug 2020 12:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QFBJPxlcvFJhCLFA5DlFAibKUTDRmDuZLOfyPXtiTX8=; b=TbEz/HIyl46OdW4rNZh6zODarz
 dABbEVAHRROkPyU6I6RVY2jO08DUI1WqSqPDb4ERh1qjFT5olr/++xsIk8/jx5sj7rOOFjYuE6WPm
 0uEC9UkxZcQe3dEyOXSs9S4P2NUBp4hjKm5r1UUQGpN5X8kmHENSTdhixq4uRd02eDqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QFBJPxlcvFJhCLFA5DlFAibKUTDRmDuZLOfyPXtiTX8=; b=Q
 Xm8x5NKClYUXl4fpUeGwol5YYsm9Ys+pWsyStH/zBEKvvaS4sTmzqamZcRGFtA6+Aqly1S4d3c+dj
 NnkNIHb81mqixdolmZdkBrVyKIhX6Z1xUe6rKoKEz3B2nXX/kNUd1FUR2KaZkkS8Cm0QmiLlQqQOv
 j6bZ9XELrFhmX1VM=;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kBdyN-003M38-AP
 for linux-uvc-devel@lists.sourceforge.net; Fri, 28 Aug 2020 12:59:28 +0000
Received: by mail-wm1-f48.google.com with SMTP id z9so826690wmk.1
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 28 Aug 2020 05:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=QFBJPxlcvFJhCLFA5DlFAibKUTDRmDuZLOfyPXtiTX8=;
 b=U4Qx7IoHnc3I0krcucr4RzdNO/DvQ+DzpLa/X+5veveI6eMiTypn3EyTeSO+WWI6W1
 aslqDOqWlFHAMtCyTe4oZ4g51/KrJtWWYGSwbd5ZippCaQpwT7Z4rdANi2s784OWhisQ
 Nsg0wcQqU3lEc/QUGvWKemjAxg98ACgV66he1d6gHWG9YRg0aO8Cgfik+7g4yz94Z0xz
 dzi1lsT9JO1s6RytqbYR5cpejgbbduMO8Bs/IPDawQDwGsd3zr6D/M27XfMchWOk2DJ1
 lFhUuEfdFbMWq2CIHERqXFL0ItW+WlLY+BHRTdLTUXZ2S012n6prgcl4dZ6ns55q3Abz
 oomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=QFBJPxlcvFJhCLFA5DlFAibKUTDRmDuZLOfyPXtiTX8=;
 b=ETaMOY7jJoaO7LcGbMzPh1fRijpaR1TJVH3IWkbmJI6XTuqaNe8SNrkOzM1+aF/4Tc
 CiD8ga1ppXUyq46CgtWcSZHxi6+PwBFuRC8ktmbJidIi5dEw9QMJSjdqAphip+KHCWrr
 F/VrlfW26w8IlzL9Bvp/W1WJgTmI7mgj8OgaytdSzEdpRD8Gz93R4qM8APT9kEyUpR2+
 BSNAu3uU+yiJz7IX0GwTMwhpKn6shLpooI5AsjjNY5XdEilccrvE9MrVRaRM1LZK45OU
 NN4BZLkC9SN1wFukxRtP/AugiMXTIBBFXLHK/V0rd/Le1aIqgFQpVkahhYHqXhpApJ6z
 et+w==
X-Gm-Message-State: AOAM530gxnyGDhQIiShl6lkxTr+ccEX/7yGpTFRgxcWRDtkKdEXndUvH
 xF/zEj/C4M730pKIBO42gCC8HO6rbkMmh6S4
X-Google-Smtp-Source: ABdhPJyLbCx2OrshVAlDFAANeAyNbZ+hbN9owJoHnBXcc13e2cAj7LSWXIdGee5k/S7jCfiKGm5DJQ==
X-Received: by 2002:a7b:c8da:: with SMTP id f26mr1579887wml.126.1598619541479; 
 Fri, 28 Aug 2020 05:59:01 -0700 (PDT)
Received: from enzo ([78.190.107.187])
 by smtp.gmail.com with ESMTPSA id c6sm1948841wrr.15.2020.08.28.05.58.59
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Aug 2020 05:59:00 -0700 (PDT)
Date: Fri, 28 Aug 2020 15:59:41 +0300
From: "Jose A. Saumell" <saumell.jose@gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <20200828125941.GA1545@enzo>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (saumell.jose[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.48 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.it]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.48 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kBdyN-003M38-AP
Subject: [linux-uvc-devel] Webcam black screen feed (04f2:b5c5)
X-BeenThere: linux-uvc-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux UVC development <linux-uvc-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux-uvc-devel>, 
 <mailto:linux-uvc-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux-uvc-devel>
List-Post: <mailto:linux-uvc-devel@lists.sourceforge.net>
List-Help: <mailto:linux-uvc-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel>, 
 <mailto:linux-uvc-devel-request@lists.sourceforge.net?subject=subscribe>
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello members of the group,

I have a problem with the integraged webcam on my Acer SF114-32 laptop.

When I open the webcam with any app (skype, qv4l2,etc) , I get a black screen.  It seems like the camera is recognized and the connection is made because  the green light on the camera module turns on at that moment, however no image.

I thought it was a hardware problem so I bought another camera module and I get the same result with the new module. This made me write to this group for help.

I am pretty certain I have tested the camera with linux when I bought it (and worked) but it has been a while and now I doubt the test might have been under Windows.

uname -a
Linux enzo 5.8.5_1 #1 SMP Thu Aug 27 08:23:40 UTC 2020 x86_64 GNU/Linux

I am attaching log files.

Thanks in advance for any help.

Regards, Jose








--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="dmesg.log"

[    0.000000] microcode: microcode updated early to revision 0x32, date = 2019-08-28
[    0.000000] Linux version 5.8.5_1 (buildbot@vm1-a-mci-us) (gcc (GCC) 9.3.0, GNU ld (GNU Binutils) 2.34) #1 SMP Thu Aug 27 08:23:40 UTC 2020
[    0.000000] Command line: BOOT_IMAGE=/vmlinuz-5.8.5_1 root=UUID=9608e769-59ec-486e-b043-af7396382127 ro loglevel=6 slub_debug=P page_poison=1
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x008: 'MPX bounds registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x010: 'MPX CSR'
[    0.000000] x86/fpu: xstate_offset[3]:  576, xstate_sizes[3]:   64
[    0.000000] x86/fpu: xstate_offset[4]:  640, xstate_sizes[4]:   64
[    0.000000] x86/fpu: Enabled xstate features 0x1b, context size is 704 bytes, using 'compacted' format.
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x0000000000057fff] usable
[    0.000000] BIOS-e820: [mem 0x0000000000058000-0x0000000000058fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000059000-0x000000000009dfff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009e000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000000fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000010000000-0x0000000012150fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000012151000-0x0000000074540fff] usable
[    0.000000] BIOS-e820: [mem 0x0000000074541000-0x0000000074a40fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000074a41000-0x0000000074d40fff] type 20
[    0.000000] BIOS-e820: [mem 0x0000000074d41000-0x0000000077740fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000077741000-0x00000000777a0fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x00000000777a1000-0x00000000777e0fff] ACPI data
[    0.000000] BIOS-e820: [mem 0x00000000777e1000-0x0000000078cabfff] usable
[    0.000000] BIOS-e820: [mem 0x0000000078cac000-0x00000000795abfff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000795ac000-0x0000000079bfffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000079c00000-0x000000007fffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000d3709000-0x00000000d3709fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000e3ffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed01000-0x00000000fed01fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ff800000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000017fffffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] efi: EFI v2.60 by INSYDE Corp.
[    0.000000] efi: ACPI=0x777e0000 ACPI 2.0=0x777e0014 TPMFinalLog=0x77637000 ESRT=0x74807018 SMBIOS=0x747f5000 SMBIOS 3.0=0x747f3000 
[    0.000000] SMBIOS 3.0.1 present.
[    0.000000] DMI: Acer Swift SF114-32/Sapporo_GL_S, BIOS V1.09 04/03/2019
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 1094.400 MHz processor
[    0.000022] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000027] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000044] last_pfn = 0x180000 max_arch_pfn = 0x400000000
[    0.000052] MTRR default type: uncachable
[    0.000054] MTRR fixed ranges enabled:
[    0.000058]   00000-9FFFF write-back
[    0.000060]   A0000-BFFFF uncachable
[    0.000063]   C0000-FFFFF write-protect
[    0.000064] MTRR variable ranges enabled:
[    0.000068]   0 base 00FF800000 mask 7FFF800000 write-combining
[    0.000071]   1 base 0000000000 mask 7F80000000 write-back
[    0.000074]   2 base 007A000000 mask 7FFE000000 uncachable
[    0.000077]   3 base 007C000000 mask 7FFC000000 uncachable
[    0.000079]   4 base 0100000000 mask 7F80000000 write-back
[    0.000081]   5 base 0090000000 mask 7FF0000000 write-combining
[    0.000083]   6 disabled
[    0.000084]   7 disabled
[    0.000086]   8 disabled
[    0.000087]   9 disabled
[    0.000201] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT  
[    0.000289] last_pfn = 0x79c00 max_arch_pfn = 0x400000000
[    0.010783] esrt: Reserving ESRT space from 0x0000000074807018 to 0x0000000074807050.
[    0.010809] check: Scanning 1 areas for low memory corruption
[    0.010820] Using GB pages for direct mapping
[    0.011650] Secure boot could not be determined
[    0.011653] RAMDISK: [mem 0x3682b000-0x3740cfff]
[    0.011673] ACPI: Early table checksum verification disabled
[    0.011679] ACPI: RSDP 0x00000000777E0014 000024 (v02 ACRSYS)
[    0.011688] ACPI: XSDT 0x00000000777BD188 00010C (v01 ACRSYS ACRPRDCT 00000003      01000013)
[    0.011700] ACPI: FACP 0x00000000777D3000 000114 (v06 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011713] ACPI: DSDT 0x00000000777C1000 009FAF (v02 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011721] ACPI: FACS 0x0000000077797000 000040
[    0.011726] ACPI: FACS 0x0000000077797000 000040
[    0.011731] ACPI: SSDT 0x00000000777DC000 0029D3 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
[    0.011738] ACPI: SSDT 0x00000000777DA000 000781 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
[    0.011746] ACPI: MSDM 0x00000000777D8000 000055 (v03 ACRSYS ACRPRDCT 00000001 1025 00040000)
[    0.011753] ACPI: DBG2 0x00000000777D6000 000072 (v00 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011760] ACPI: LPIT 0x00000000777D1000 00005C (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011767] ACPI: MCFG 0x00000000777CF000 00003C (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011773] ACPI: PRAM 0x00000000777CD000 000030 (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011780] ACPI: SSDT 0x00000000777BE000 00247D (v02 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011787] ACPI: SSDT 0x00000000777BB000 00072B (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
[    0.011794] ACPI: SSDT 0x00000000777B9000 00017C (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
[    0.011801] ACPI: SSDT 0x00000000777B0000 005414 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
[    0.011808] ACPI: WDAT 0x00000000777AE000 000104 (v01 ACRSYS ACRPRDCT 00000000 1025 00040000)
[    0.011815] ACPI: UEFI 0x00000000777DF000 000236 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
[    0.011822] ACPI: TPM2 0x00000000777D9000 000034 (v04 ACRSYS ACRPRDCT 00000002 1025 00040000)
[    0.011829] ACPI: DBGP 0x00000000777D5000 000034 (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011836] ACPI: APIC 0x00000000777D0000 000084 (v03 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011843] ACPI: WSMT 0x00000000777CB000 000028 (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011849] ACPI: SSDT 0x00000000777BA000 00032D (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
[    0.011856] ACPI: FPDT 0x00000000777CC000 000044 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
[    0.011863] ACPI: BDAT 0x00000000777D7000 000030 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
[    0.011870] ACPI: NPKT 0x00000000777CE000 000065 (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011877] ACPI: SSDT 0x00000000777B6000 002777 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
[    0.011884] ACPI: UEFI 0x00000000777DB000 000042 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
[    0.011891] ACPI: SSDT 0x00000000777BC000 00045A (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
[    0.011898] ACPI: HPET 0x00000000777D2000 000038 (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011905] ACPI: DMAR 0x00000000777D4000 0000A8 (v01 ACRSYS ACRPRDCT 00000003 1025 00040000)
[    0.011911] ACPI: BGRT 0x00000000777AF000 000038 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
[    0.011918] ACPI: NHLT 0x00000000777AD000 00002D (v00 ACRSYS ACRPRDCT 00000002 1025 00040000)
[    0.011935] ACPI: Local APIC address 0xfee00000
[    0.012417] No NUMA configuration found
[    0.012419] Faking a node at [mem 0x0000000000000000-0x000000017fffffff]
[    0.012430] NODE_DATA(0) allocated [mem 0x17fffb000-0x17fffffff]
[    0.012493] Zone ranges:
[    0.012495]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.012498]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.012501]   Normal   [mem 0x0000000100000000-0x000000017fffffff]
[    0.012503]   Device   empty
[    0.012505] Movable zone start for each node
[    0.012507] Early memory node ranges
[    0.012509]   node   0: [mem 0x0000000000001000-0x0000000000057fff]
[    0.012512]   node   0: [mem 0x0000000000059000-0x000000000009dfff]
[    0.012514]   node   0: [mem 0x0000000000100000-0x000000000fffffff]
[    0.012516]   node   0: [mem 0x0000000012151000-0x0000000074540fff]
[    0.012518]   node   0: [mem 0x00000000777e1000-0x0000000078cabfff]
[    0.012519]   node   0: [mem 0x00000000795ac000-0x0000000079bfffff]
[    0.012521]   node   0: [mem 0x0000000100000000-0x000000017fffffff]
[    0.013669] Zeroed struct page in unavailable ranges: 49493 pages
[    0.013672] Initmem setup node 0 [mem 0x0000000000001000-0x000000017fffffff]
[    0.013677] On node 0 totalpages: 999083
[    0.013680]   DMA zone: 64 pages used for memmap
[    0.013681]   DMA zone: 22 pages reserved
[    0.013683]   DMA zone: 3996 pages, LIFO batch:0
[    0.013757]   DMA32 zone: 7357 pages used for memmap
[    0.013760]   DMA32 zone: 470799 pages, LIFO batch:63
[    0.023443]   Normal zone: 8192 pages used for memmap
[    0.023445]   Normal zone: 524288 pages, LIFO batch:63
[    0.034578] Reserving Intel graphics memory at [mem 0x7c000000-0x7fffffff]
[    0.035212] ACPI: PM-Timer IO Port: 0x408
[    0.035217] ACPI: Local APIC address 0xfee00000
[    0.035233] ACPI: LAPIC_NMI (acpi_id[0x01] high level lint[0x1])
[    0.035235] ACPI: LAPIC_NMI (acpi_id[0x02] high level lint[0x1])
[    0.035237] ACPI: LAPIC_NMI (acpi_id[0x03] high level lint[0x1])
[    0.035239] ACPI: LAPIC_NMI (acpi_id[0x04] high level lint[0x1])
[    0.035278] IOAPIC[0]: apic_id 1, version 32, address 0xfec00000, GSI 0-119
[    0.035283] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.035287] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 low level)
[    0.035290] ACPI: IRQ0 used by override.
[    0.035293] ACPI: IRQ9 used by override.
[    0.035297] Using ACPI (MADT) for SMP configuration information
[    0.035300] ACPI: HPET id: 0x8086a701 base: 0xfed00000
[    0.035318] e820: update [mem 0x717b3000-0x718a6fff] usable ==> reserved
[    0.035341] TSC deadline timer available
[    0.035343] smpboot: Allowing 4 CPUs, 0 hotplug CPUs
[    0.035414] PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.035419] PM: hibernation: Registered nosave memory: [mem 0x00058000-0x00058fff]
[    0.035423] PM: hibernation: Registered nosave memory: [mem 0x0009e000-0x000fffff]
[    0.035428] PM: hibernation: Registered nosave memory: [mem 0x10000000-0x12150fff]
[    0.035432] PM: hibernation: Registered nosave memory: [mem 0x717b3000-0x718a6fff]
[    0.035437] PM: hibernation: Registered nosave memory: [mem 0x74541000-0x74a40fff]
[    0.035438] PM: hibernation: Registered nosave memory: [mem 0x74a41000-0x74d40fff]
[    0.035440] PM: hibernation: Registered nosave memory: [mem 0x74d41000-0x77740fff]
[    0.035442] PM: hibernation: Registered nosave memory: [mem 0x77741000-0x777a0fff]
[    0.035443] PM: hibernation: Registered nosave memory: [mem 0x777a1000-0x777e0fff]
[    0.035448] PM: hibernation: Registered nosave memory: [mem 0x78cac000-0x795abfff]
[    0.035452] PM: hibernation: Registered nosave memory: [mem 0x79c00000-0x7fffffff]
[    0.035454] PM: hibernation: Registered nosave memory: [mem 0x80000000-0xd3708fff]
[    0.035456] PM: hibernation: Registered nosave memory: [mem 0xd3709000-0xd3709fff]
[    0.035457] PM: hibernation: Registered nosave memory: [mem 0xd370a000-0xdfffffff]
[    0.035459] PM: hibernation: Registered nosave memory: [mem 0xe0000000-0xe3ffffff]
[    0.035461] PM: hibernation: Registered nosave memory: [mem 0xe4000000-0xfed00fff]
[    0.035462] PM: hibernation: Registered nosave memory: [mem 0xfed01000-0xfed01fff]
[    0.035464] PM: hibernation: Registered nosave memory: [mem 0xfed02000-0xff7fffff]
[    0.035465] PM: hibernation: Registered nosave memory: [mem 0xff800000-0xffffffff]
[    0.035470] [mem 0x80000000-0xd3708fff] available for PCI devices
[    0.035472] Booting paravirtualized kernel on bare hardware
[    0.035479] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
[    0.047111] setup_percpu: NR_CPUS:256 nr_cpumask_bits:256 nr_cpu_ids:4 nr_node_ids:1
[    0.047955] percpu: Embedded 55 pages/cpu s185176 r8192 d31912 u524288
[    0.047976] pcpu-alloc: s185176 r8192 d31912 u524288 alloc=1*2097152
[    0.047978] pcpu-alloc: [0] 0 1 2 3 
[    0.048045] Built 1 zonelists, mobility grouping on.  Total pages: 983448
[    0.048048] Policy zone: Normal
[    0.048051] Kernel command line: BOOT_IMAGE=/vmlinuz-5.8.5_1 root=UUID=9608e769-59ec-486e-b043-af7396382127 ro loglevel=6 slub_debug=P page_poison=1
[    0.049280] Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.049927] Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.050022] mem auto-init: stack:off, heap alloc:off, heap free:off
[    1.375175] Memory: 3755212K/3996332K available (12291K kernel code, 1364K rwdata, 5596K rodata, 1580K init, 1728K bss, 241120K reserved, 0K cma-reserved)
[    1.375192] random: get_random_u64 called from __kmem_cache_create+0x3e/0x530 with crng_init=0
[    1.375724] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    1.375756] Kernel/User page tables isolation: enabled
[    1.375802] ftrace: allocating 36606 entries in 143 pages
[    1.408458] ftrace: allocated 143 pages with 5 groups
[    1.408776] rcu: Hierarchical RCU implementation.
[    1.408779] rcu: 	RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
[    1.408781] 	Trampoline variant of Tasks RCU enabled.
[    1.408782] 	Rude variant of Tasks RCU enabled.
[    1.408783] 	Tracing variant of Tasks RCU enabled.
[    1.408785] rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
[    1.408787] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    1.421425] NR_IRQS: 16640, nr_irqs: 1024, preallocated irqs: 16
[    1.422435] Console: colour dummy device 80x25
[    1.422463] printk: console [tty0] enabled
[    1.422532] ACPI: Core revision 20200528
[    1.423509] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 99544814920 ns
[    1.423613] APIC: Switch to symmetric I/O mode setup
[    1.423617] DMAR: Host address width 39
[    1.423620] DMAR: DRHD base: 0x000000fed64000 flags: 0x0
[    1.423648] DMAR: dmar0: reg_base_addr fed64000 ver 1:0 cap 1c0000c40660462 ecap 9e2ff0505e
[    1.423650] DMAR: DRHD base: 0x000000fed65000 flags: 0x1
[    1.423669] DMAR: dmar1: reg_base_addr fed65000 ver 1:0 cap d2008c40660462 ecap f050da
[    1.423673] DMAR: RMRR base: 0x00000077713000 end: 0x00000077732fff
[    1.423683] DMAR: RMRR base: 0x0000007b800000 end: 0x0000007fffffff
[    1.423695] DMAR-IR: IOAPIC id 1 under DRHD base  0xfed65000 IOMMU 1
[    1.423697] DMAR-IR: HPET id 0 under DRHD base 0xfed65000
[    1.423699] DMAR-IR: Queued invalidation will be enabled to support x2apic and Intr-remapping.
[    1.425225] DMAR-IR: Enabled IRQ remapping in x2apic mode
[    1.425228] x2apic enabled
[    1.425251] Switched APIC routing to cluster x2apic.
[    1.430471] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    1.434567] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0xfc66f4fc7c, max_idle_ns: 440795224246 ns
[    1.434578] Calibrating delay loop (skipped), value calculated using timer frequency.. 2188.80 BogoMIPS (lpj=1094400)
[    1.434583] pid_max: default: 32768 minimum: 301
[    1.459718] LSM: Security Framework initializing
[    1.459739] Yama: becoming mindful.
[    1.459821] Mount-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    1.459825] Mountpoint-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    1.461251] x86/cpu: User Mode Instruction Prevention (UMIP) activated
[    1.461325] mce: CPU0: Thermal monitoring enabled (TM1)
[    1.461412] process: using mwait in idle threads
[    1.461417] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
[    1.461418] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
[    1.461427] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    1.461432] Spectre V2 : Mitigation: Enhanced IBRS
[    1.461435] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
[    1.461439] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    1.461442] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl and seccomp
[    1.461830] Freeing SMP alternatives memory: 32K
[    1.464228] smpboot: CPU0: Intel(R) Pentium(R) Silver N5000 CPU @ 1.10GHz (family: 0x6, model: 0x7a, stepping: 0x1)
[    1.464558] Performance Events: PEBS fmt3+, Goldmont plus events, 32-deep LBR, full-width counters, Intel PMU driver.
[    1.464570] ... version:                4
[    1.464572] ... bit width:              48
[    1.464573] ... generic registers:      4
[    1.464573] ... value mask:             0000ffffffffffff
[    1.464573] ... max period:             00007fffffffffff
[    1.464573] ... fixed-purpose events:   3
[    1.464573] ... event mask:             000000070000000f
[    1.464573] rcu: Hierarchical SRCU implementation.
[    1.465649] NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    1.465887] smp: Bringing up secondary CPUs ...
[    1.466238] x86: Booting SMP configuration:
[    1.466240] .... node  #0, CPUs:      #1 #2 #3
[    1.471989] smp: Brought up 1 node, 4 CPUs
[    1.471989] smpboot: Max logical packages: 1
[    1.471989] smpboot: Total of 4 processors activated (8755.20 BogoMIPS)
[    1.473069] devtmpfs: initialized
[    1.473069] x86/mm: Memory block size: 128MB
[    1.476078] PM: Registering ACPI NVS region [mem 0x77741000-0x777a0fff] (393216 bytes)
[    1.476668] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
[    1.476668] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    1.476786] pinctrl core: initialized pinctrl subsystem
[    1.477117] thermal_sys: Registered thermal governor 'bang_bang'
[    1.477118] thermal_sys: Registered thermal governor 'step_wise'
[    1.477120] thermal_sys: Registered thermal governor 'user_space'
[    1.477122] thermal_sys: Registered thermal governor 'power_allocator'
[    1.477872] NET: Registered protocol family 16
[    1.478615] audit: initializing netlink subsys (disabled)
[    1.478640] audit: type=2000 audit(1598618769.051:1): state=initialized audit_enabled=0 res=1
[    1.479124] cpuidle: using governor ladder
[    1.479132] cpuidle: using governor menu
[    1.479210] ACPI: bus type PCI registered
[    1.479210] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    1.479850] PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xe0000000-0xe3ffffff] (base 0xe0000000)
[    1.479877] PCI: MMCONFIG at [mem 0xe0000000-0xe3ffffff] reserved in E820
[    1.479902] PCI: Using configuration type 1 for base access
[    1.487046] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    1.487046] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    1.490686] fbcon: Taking over console
[    1.490749] ACPI: Added _OSI(Module Device)
[    1.490751] ACPI: Added _OSI(Processor Device)
[    1.490753] ACPI: Added _OSI(3.0 _SCP Extensions)
[    1.490755] ACPI: Added _OSI(Processor Aggregator Device)
[    1.490764] ACPI: Added _OSI(Linux-Dell-Video)
[    1.490771] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    1.490779] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    1.596764] ACPI: 10 ACPI AML tables successfully acquired and loaded
[    1.618295] ACPI: Dynamic OEM Table Load:
[    1.618317] ACPI: SSDT 0xFFFF9FE23E904C00 000102 (v02 PmRef  Cpu0Cst  00003001 INTL 20130117)
[    1.623251] ACPI: Dynamic OEM Table Load:
[    1.623269] ACPI: SSDT 0xFFFF9FE23E905000 00015F (v02 PmRef  ApIst    00003000 INTL 20130117)
[    1.625916] ACPI: Dynamic OEM Table Load:
[    1.625932] ACPI: SSDT 0xFFFF9FE23EFCDA28 00008D (v02 PmRef  ApCst    00003000 INTL 20130117)
[    1.637296] ACPI: EC: EC started
[    1.637298] ACPI: EC: interrupt blocked
[    1.755901] ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
[    1.755911] ACPI: \_SB_.PCI0.LPCB.EC0_: Boot DSDT EC used to handle transactions
[    1.755912] ACPI: Interpreter enabled
[    1.756095] ACPI: (supports S0 S3 S4 S5)
[    1.756098] ACPI: Using IOAPIC for interrupt routing
[    1.756352] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    1.760667] ACPI: Enabled 10 GPEs in block 00 to 7F
[    1.772809] ACPI: Power Resource [DRST] (on)
[    1.775327] ACPI: Power Resource [DRST] (on)
[    1.777940] ACPI: Power Resource [DRST] (on)
[    1.780507] ACPI: Power Resource [DRST] (on)
[    1.783066] ACPI: Power Resource [DRST] (on)
[    1.785594] ACPI: Power Resource [DRST] (on)
[    1.818809] ACPI: Power Resource [WRST] (on)
[    1.861087] ACPI: Power Resource [FN00] (on)
[    1.863176] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    1.863197] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
[    1.869114] acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug PME AER PCIeCapability LTR]
[    1.869202] acpi PNP0A08:00: [Firmware Info]: MMCONFIG for domain 0000 [bus 00-3f] only partially covers this bridge
[    1.873791] PCI host bridge to bus 0000:00
[    1.873798] pci_bus 0000:00: root bus resource [io  0x0070-0x0077]
[    1.873803] pci_bus 0000:00: root bus resource [io  0x0000-0x006f window]
[    1.873808] pci_bus 0000:00: root bus resource [io  0x0078-0x0cf7 window]
[    1.873813] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    1.873817] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    1.873822] pci_bus 0000:00: root bus resource [mem 0x000c0000-0x000dffff window]
[    1.873826] pci_bus 0000:00: root bus resource [mem 0x000e0000-0x000fffff window]
[    1.873830] pci_bus 0000:00: root bus resource [mem 0x7c000001-0x7fffffff window]
[    1.873835] pci_bus 0000:00: root bus resource [mem 0x80000000-0xbfffffff window]
[    1.873839] pci_bus 0000:00: root bus resource [mem 0xe0000000-0xefffffff window]
[    1.873843] pci_bus 0000:00: root bus resource [mem 0xfea00000-0xfeafffff window]
[    1.873847] pci_bus 0000:00: root bus resource [mem 0xfed00000-0xfed003ff window]
[    1.873851] pci_bus 0000:00: root bus resource [mem 0xfed01000-0xfed01fff window]
[    1.873855] pci_bus 0000:00: root bus resource [mem 0xfed03000-0xfed03fff window]
[    1.873859] pci_bus 0000:00: root bus resource [mem 0xfed06000-0xfed06fff window]
[    1.873862] pci_bus 0000:00: root bus resource [mem 0xfed08000-0xfed09fff window]
[    1.873866] pci_bus 0000:00: root bus resource [mem 0xfed80000-0xfedbffff window]
[    1.873870] pci_bus 0000:00: root bus resource [mem 0xfed1c000-0xfed1cfff window]
[    1.873874] pci_bus 0000:00: root bus resource [mem 0xfee00000-0xfeefffff window]
[    1.873879] pci_bus 0000:00: root bus resource [bus 00-ff]
[    1.873923] pci 0000:00:00.0: [8086:31f0] type 00 class 0x060000
[    1.875499] pci 0000:00:00.1: [8086:318c] type 00 class 0x118000
[    1.875545] pci 0000:00:00.1: reg 0x10: [mem 0x80000000-0x80007fff 64bit]
[    1.877154] pci 0000:00:02.0: [8086:3184] type 00 class 0x030000
[    1.877175] pci 0000:00:02.0: reg 0x10: [mem 0xa0000000-0xa0ffffff 64bit]
[    1.877187] pci 0000:00:02.0: reg 0x18: [mem 0x90000000-0x9fffffff 64bit pref]
[    1.877195] pci 0000:00:02.0: reg 0x20: [io  0x1000-0x103f]
[    1.877239] pci 0000:00:02.0: BAR 2: assigned to efifb
[    1.878954] pci 0000:00:0c.0: [8086:31dc] type 00 class 0x028000
[    1.879047] pci 0000:00:0c.0: reg 0x10: [mem 0xa1110000-0xa1113fff 64bit]
[    1.879457] pci 0000:00:0c.0: PME# supported from D0 D3hot D3cold
[    1.880993] pci 0000:00:0e.0: [8086:3198] type 00 class 0x040380
[    1.881031] pci 0000:00:0e.0: reg 0x10: [mem 0xa1114000-0xa1117fff 64bit]
[    1.881073] pci 0000:00:0e.0: reg 0x20: [mem 0xa1000000-0xa10fffff 64bit]
[    1.881191] pci 0000:00:0e.0: PME# supported from D0 D3hot D3cold
[    1.882922] pci 0000:00:0f.0: [8086:319a] type 00 class 0x078000
[    1.882976] pci 0000:00:0f.0: reg 0x10: [mem 0xa111a000-0xa111afff 64bit]
[    1.883152] pci 0000:00:0f.0: PME# supported from D3hot
[    1.884495] pci 0000:00:12.0: [8086:31e3] type 00 class 0x010601
[    1.884523] pci 0000:00:12.0: reg 0x10: [mem 0xa1118000-0xa1119fff]
[    1.884535] pci 0000:00:12.0: reg 0x14: [mem 0xa1121000-0xa11210ff]
[    1.884546] pci 0000:00:12.0: reg 0x18: [io  0x1080-0x1087]
[    1.884573] pci 0000:00:12.0: reg 0x1c: [io  0x1088-0x108b]
[    1.884588] pci 0000:00:12.0: reg 0x20: [io  0x1060-0x107f]
[    1.884600] pci 0000:00:12.0: reg 0x24: [mem 0xa111f000-0xa111f7ff]
[    1.884669] pci 0000:00:12.0: PME# supported from D3hot
[    1.886097] pci 0000:00:13.0: [8086:31d8] type 01 class 0x060400
[    1.886281] pci 0000:00:13.0: PME# supported from D0 D3hot D3cold
[    1.887837] pci 0000:00:15.0: [8086:31a8] type 00 class 0x0c0330
[    1.887867] pci 0000:00:15.0: reg 0x10: [mem 0xa1100000-0xa110ffff 64bit]
[    1.887978] pci 0000:00:15.0: PME# supported from D3hot D3cold
[    1.889472] pci 0000:00:17.0: [8086:31b4] type 00 class 0x118000
[    1.889507] pci 0000:00:17.0: reg 0x10: [mem 0xa111b000-0xa111bfff 64bit]
[    1.889524] pci 0000:00:17.0: reg 0x18: [mem 0xa111c000-0xa111cfff 64bit]
[    1.891113] pci 0000:00:1c.0: [8086:31cc] type 00 class 0x080501
[    1.891171] pci 0000:00:1c.0: reg 0x10: [mem 0xa111d000-0xa111dfff 64bit]
[    1.891200] pci 0000:00:1c.0: reg 0x18: [mem 0xa111e000-0xa111efff 64bit]
[    1.893008] pci 0000:00:1f.0: [8086:31e8] type 00 class 0x060100
[    1.894725] pci 0000:00:1f.1: [8086:31d4] type 00 class 0x0c0500
[    1.894802] pci 0000:00:1f.1: reg 0x10: [mem 0xa1120000-0xa11200ff 64bit]
[    1.894893] pci 0000:00:1f.1: reg 0x20: [io  0x1040-0x105f]
[    1.896638] pci 0000:00:13.0: PCI bridge to [bus 01]
[    1.902582] ACPI: PCI Interrupt Link [LNKA] (IRQs *3 4 5 6 10 11 12 14 15)
[    1.903151] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 *4 5 6 10 11 12 14 15)
[    1.903706] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 *5 6 10 11 12 14 15)
[    1.904274] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 *6 10 11 12 14 15)
[    1.904826] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 10 11 12 14 15) *7
[    1.905378] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 10 11 12 14 15) *9
[    1.905929] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 6 *10 11 12 14 15)
[    1.906472] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 10 *11 12 14 15)
[    1.912821] ACPI: EC: interrupt unblocked
[    1.912823] ACPI: EC: event unblocked
[    1.912843] ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
[    1.912845] ACPI: EC: GPE=0x25
[    1.912852] ACPI: \_SB_.PCI0.LPCB.EC0_: Boot DSDT EC initialization complete
[    1.912858] ACPI: \_SB_.PCI0.LPCB.EC0_: EC: Used to handle transactions and events
[    1.913098] iommu: Default domain type: Translated 
[    1.913141] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    1.913141] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    1.913141] pci 0000:00:02.0: vgaarb: bridge control possible
[    1.913141] vgaarb: loaded
[    1.913829] pps_core: LinuxPPS API ver. 1 registered
[    1.913831] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    1.913846] PTP clock support registered
[    1.913866] EDAC MC: Ver: 3.0.0
[    1.914060] Registered efivars operations
[    1.915147] PCI: Using ACPI for IRQ routing
[    1.922507] PCI: pci_cache_line_size set to 64 bytes
[    1.922642] e820: reserve RAM buffer [mem 0x00058000-0x0005ffff]
[    1.922646] e820: reserve RAM buffer [mem 0x0009e000-0x0009ffff]
[    1.922649] e820: reserve RAM buffer [mem 0x717b3000-0x73ffffff]
[    1.922652] e820: reserve RAM buffer [mem 0x74541000-0x77ffffff]
[    1.922656] e820: reserve RAM buffer [mem 0x78cac000-0x7bffffff]
[    1.922659] e820: reserve RAM buffer [mem 0x79c00000-0x7bffffff]
[    1.922792] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    1.922801] hpet0: 8 comparators, 64-bit 19.200000 MHz counter
[    1.925609] clocksource: Switched to clocksource tsc-early
[    1.982436] VFS: Disk quotas dquot_6.6.0
[    1.982481] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    1.982768] pnp: PnP ACPI init
[    1.983084] system 00:00: [io  0x0680-0x069f] has been reserved
[    1.983097] system 00:00: [io  0x0400-0x047f] could not be reserved
[    1.983108] system 00:00: [io  0x0500-0x05fe] has been reserved
[    1.983121] system 00:00: [mem 0xfe800000-0xfe80ffff] has been reserved
[    1.983138] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (active)
[    1.983824] pnp 00:01: Plug and Play ACPI device, IDs PNP0303 (active)
[    1.985764] system 00:02: [mem 0xe0000000-0xefffffff] could not be reserved
[    1.985775] system 00:02: [mem 0xfea00000-0xfeafffff] has been reserved
[    1.985789] system 00:02: [mem 0xfed01000-0xfed01fff] has been reserved
[    1.985799] system 00:02: [mem 0xfed03000-0xfed03fff] has been reserved
[    1.985809] system 00:02: [mem 0xfed06000-0xfed06fff] has been reserved
[    1.985819] system 00:02: [mem 0xfed08000-0xfed09fff] has been reserved
[    1.985829] system 00:02: [mem 0xfed80000-0xfedbffff] has been reserved
[    1.985839] system 00:02: [mem 0xfed1c000-0xfed1cfff] has been reserved
[    1.985849] system 00:02: [mem 0xfee00000-0xfeefffff] has been reserved
[    1.985862] system 00:02: Plug and Play ACPI device, IDs PNP0c02 (active)
[    1.987172] pnp 00:03: Plug and Play ACPI device, IDs PNP0b00 (active)
[    1.989856] pnp: PnP ACPI: found 4 devices
[    2.001979] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    2.002354] NET: Registered protocol family 2
[    2.002850] tcp_listen_portaddr_hash hash table entries: 2048 (order: 3, 32768 bytes, linear)
[    2.002875] TCP established hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    2.003084] TCP bind hash table entries: 32768 (order: 7, 524288 bytes, linear)
[    2.003249] TCP: Hash tables configured (established 32768 bind 32768)
[    2.003467] UDP hash table entries: 2048 (order: 4, 65536 bytes, linear)
[    2.003493] UDP-Lite hash table entries: 2048 (order: 4, 65536 bytes, linear)
[    2.003663] NET: Registered protocol family 1
[    2.003698] pci 0000:00:13.0: PCI bridge to [bus 01]
[    2.003732] pci_bus 0000:00: resource 4 [io  0x0070-0x0077]
[    2.003736] pci_bus 0000:00: resource 5 [io  0x0000-0x006f window]
[    2.003739] pci_bus 0000:00: resource 6 [io  0x0078-0x0cf7 window]
[    2.003742] pci_bus 0000:00: resource 7 [io  0x0d00-0xffff window]
[    2.003746] pci_bus 0000:00: resource 8 [mem 0x000a0000-0x000bffff window]
[    2.003749] pci_bus 0000:00: resource 9 [mem 0x000c0000-0x000dffff window]
[    2.003752] pci_bus 0000:00: resource 10 [mem 0x000e0000-0x000fffff window]
[    2.003755] pci_bus 0000:00: resource 11 [mem 0x7c000001-0x7fffffff window]
[    2.003758] pci_bus 0000:00: resource 12 [mem 0x80000000-0xbfffffff window]
[    2.003761] pci_bus 0000:00: resource 13 [mem 0xe0000000-0xefffffff window]
[    2.003764] pci_bus 0000:00: resource 14 [mem 0xfea00000-0xfeafffff window]
[    2.003767] pci_bus 0000:00: resource 15 [mem 0xfed00000-0xfed003ff window]
[    2.003770] pci_bus 0000:00: resource 16 [mem 0xfed01000-0xfed01fff window]
[    2.003773] pci_bus 0000:00: resource 17 [mem 0xfed03000-0xfed03fff window]
[    2.003776] pci_bus 0000:00: resource 18 [mem 0xfed06000-0xfed06fff window]
[    2.003779] pci_bus 0000:00: resource 19 [mem 0xfed08000-0xfed09fff window]
[    2.003782] pci_bus 0000:00: resource 20 [mem 0xfed80000-0xfedbffff window]
[    2.003785] pci_bus 0000:00: resource 21 [mem 0xfed1c000-0xfed1cfff window]
[    2.003788] pci_bus 0000:00: resource 22 [mem 0xfee00000-0xfeefffff window]
[    2.005101] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    2.007714] PCI: CLS 64 bytes, default 64
[    2.007864] Trying to unpack rootfs image as initramfs...
[    2.357123] Freeing initrd memory: 12168K
[    2.357252] DMAR: No ATSR found
[    2.357501] DMAR: dmar0: Using Queued invalidation
[    2.357529] DMAR: dmar1: Using Queued invalidation
[    2.358187] pci 0000:00:00.0: Adding to iommu group 0
[    2.358230] pci 0000:00:00.1: Adding to iommu group 0
[    2.358305] pci 0000:00:02.0: Adding to iommu group 1
[    2.358381] pci 0000:00:0c.0: Adding to iommu group 2
[    2.358457] pci 0000:00:0e.0: Adding to iommu group 3
[    2.358535] pci 0000:00:0f.0: Adding to iommu group 4
[    2.358611] pci 0000:00:12.0: Adding to iommu group 5
[    2.358704] pci 0000:00:13.0: Adding to iommu group 6
[    2.358782] pci 0000:00:15.0: Adding to iommu group 7
[    2.358859] pci 0000:00:17.0: Adding to iommu group 8
[    2.358921] pci 0000:00:1c.0: Adding to iommu group 9
[    2.358991] pci 0000:00:1f.0: Adding to iommu group 10
[    2.359034] pci 0000:00:1f.1: Adding to iommu group 10
[    2.377609] DMAR: Intel(R) Virtualization Technology for Directed I/O
[    2.377611] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    2.377615] software IO TLB: mapped [mem 0x6d652000-0x71652000] (64MB)
[    2.378043] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0xfc66f4fc7c, max_idle_ns: 440795224246 ns
[    2.378072] clocksource: Switched to clocksource tsc
[    2.378336] check: Scanning for low memory corruption every 60 seconds
[    2.379805] Initialise system trusted keyrings
[    2.379964] workingset: timestamp_bits=40 max_order=20 bucket_order=0
[    2.389365] zbud: loaded
[    2.390748] Key type asymmetric registered
[    2.390756] Asymmetric key parser 'x509' registered
[    2.390786] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 246)
[    2.390899] io scheduler mq-deadline registered
[    2.390901] io scheduler kyber registered
[    2.391066] io scheduler bfq registered
[    2.392798] pcieport 0000:00:13.0: PME: Signaling with IRQ 122
[    2.393128] efifb: probing for efifb
[    2.393176] efifb: framebuffer at 0x90000000, using 8128k, total 8128k
[    2.393178] efifb: mode is 1920x1080x32, linelength=7680, pages=1
[    2.393179] efifb: scrolling: redraw
[    2.393183] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    2.393537] Console: switching to colour frame buffer device 240x67
[    2.407519] fb0: EFI VGA frame buffer device
[    2.407545] intel_idle: MWAIT substates: 0x11242020
[    2.407548] intel_idle: v0.5.1 model 0x7A
[    2.409214] intel_idle: Local APIC timer is reliable in all C-states
[    2.419555] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    2.423273] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    2.423275] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    2.423405] i8042: PNP: PS/2 Controller [PNP0303:KBD0] at 0x60,0x64 irq 1
[    2.423407] i8042: PNP: PS/2 appears to have AUX port disabled, if this is incorrect please boot with i8042.nopnp
[    2.424463] serio: i8042 KBD port at 0x60,0x64 irq 1
[    2.424917] mousedev: PS/2 mouse device common for all mice
[    2.425085] rtc_cmos 00:03: RTC can wake from S4
[    2.426028] rtc_cmos 00:03: registered as rtc0
[    2.426184] rtc_cmos 00:03: setting system clock to 2020-08-28T12:46:10 UTC (1598618770)
[    2.426284] rtc_cmos 00:03: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    2.426320] intel_pstate: Intel P-state driver initializing
[    2.427022] ledtrig-cpu: registered to indicate activity on CPUs
[    2.427028] EFI Variables Facility v0.08 2004-May-17
[    2.438458] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input0
[    2.500896] NET: Registered protocol family 10
[    2.506517] Segment Routing with IPv6
[    2.506518] RPL Segment Routing with IPv6
[    2.506542] NET: Registered protocol family 17
[    2.506715] Key type dns_resolver registered
[    2.507466] microcode: sig=0x706a1, pf=0x1, revision=0x32
[    2.507605] microcode: Microcode Update Driver: v2.2.
[    2.507802] resctrl: L2 allocation detected
[    2.507802] resctrl: L2DATA allocation detected
[    2.507803] resctrl: L2CODE allocation detected
[    2.507807] IPI shorthand broadcast: enabled
[    2.507819] sched_clock: Marking stable (2502374658, 5405567)->(2518679555, -10899330)
[    2.508057] registered taskstats version 1
[    2.508077] Loading compiled-in X.509 certificates
[    2.508174] zswap: loaded using pool lzo/zbud
[    2.508358] Key type ._fscrypt registered
[    2.508380] Key type .fscrypt registered
[    2.508401] Key type fscrypt-provisioning registered
[    2.513766] Freeing unused kernel image (initmem) memory: 1580K
[    2.518811] Write protecting the kernel read-only data: 20480k
[    2.520092] Freeing unused kernel image (text/rodata gap) memory: 2044K
[    2.520560] Freeing unused kernel image (rodata/data gap) memory: 548K
[    2.521385] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    2.521428] x86/mm: Checking user space page tables
[    2.521658] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    2.521688] Run /init as init process
[    2.521690]   with arguments:
[    2.521692]     /init
[    2.521711]   with environment:
[    2.521712]     HOME=/
[    2.521713]     TERM=linux
[    2.521714]     BOOT_IMAGE=/vmlinuz-5.8.5_1
[    2.722672] systemd-udevd[221]: starting version 3.2.9
[    2.723267] random: systemd-udevd: uninitialized urandom read (16 bytes read)
[    2.723355] random: systemd-udevd: uninitialized urandom read (16 bytes read)
[    2.723446] random: systemd-udevd: uninitialized urandom read (16 bytes read)
[    2.724717] udevd[222]: starting eudev-3.2.9
[    2.767167] acpi PNP0C14:01: duplicate WMI GUID 05901221-D566-11D1-B2F0-00A0C9062910 (first instance was on PNP0C14:00)
[    2.776540] battery: ACPI: Battery Slot [BAT0] (battery present)
[    2.782884] hid: raw HID events driver (C) Jiri Kosina
[    2.793220] SCSI subsystem initialized
[    2.794012] sdhci: Secure Digital Host Controller Interface driver
[    2.794013] sdhci: Copyright(c) Pierre Ossman
[    2.799520] sdhci-pci 0000:00:1c.0: SDHCI controller found [8086:31cc] (rev 3)
[    2.801605] Linux agpgart interface v0.103
[    2.803499] mmc0: CQHCI version 5.10
[    2.806673] libata version 3.00 loaded.
[    2.807869] ACPI: bus type USB registered
[    2.807996] usbcore: registered new interface driver usbfs
[    2.808068] usbcore: registered new interface driver hub
[    2.808137] usbcore: registered new device driver usb
[    2.808277] mmc0: SDHCI controller on PCI [0000:00:1c.0] using ADMA 64-bit
[    2.809916] ahci 0000:00:12.0: version 3.0
[    2.818342] xhci_hcd 0000:00:15.0: xHCI Host Controller
[    2.818355] xhci_hcd 0000:00:15.0: new USB bus registered, assigned bus number 1
[    2.819565] xhci_hcd 0000:00:15.0: hcc params 0x200077c1 hci version 0x100 quirks 0x0000000000009810
[    2.819571] xhci_hcd 0000:00:15.0: cache line size of 64 is not supported
[    2.820465] ahci 0000:00:12.0: AHCI 0001.0301 32 slots 1 ports 6 Gbps 0x1 impl SATA mode
[    2.820469] ahci 0000:00:12.0: flags: 64bit ncq sntf pm clo only pmp pio slum part deso sadm sds apst 
[    2.821016] hub 1-0:1.0: USB hub found
[    2.821041] hub 1-0:1.0: 9 ports detected
[    2.823611] scsi host0: ahci
[    2.823892] ata1: SATA max UDMA/133 abar m2048@0xa111f000 port 0xa111f100 irq 123
[    2.825303] xhci_hcd 0000:00:15.0: xHCI Host Controller
[    2.825308] xhci_hcd 0000:00:15.0: new USB bus registered, assigned bus number 2
[    2.825313] xhci_hcd 0000:00:15.0: Host supports USB 3.0 SuperSpeed
[    2.825690] hub 2-0:1.0: USB hub found
[    2.825727] hub 2-0:1.0: 7 ports detected
[    2.826588] usb: port power management may be unreliable
[    2.892384] Setting dangerous option enable_guc - tainting kernel
[    2.892433] Setting dangerous option enable_fbc - tainting kernel
[    2.895347] i915 0000:00:02.0: [drm] VT-d active for gfx access
[    2.895351] checking generic (90000000 7f0000) vs hw (a0000000 1000000)
[    2.895352] checking generic (90000000 7f0000) vs hw (90000000 10000000)
[    2.895353] fb0: switching to inteldrmfb from EFI VGA
[    2.895522] Console: switching to colour dummy device 80x25
[    2.895589] i915 0000:00:02.0: vgaarb: deactivate vga console
[    2.895971] i915 0000:00:02.0: [drm] couldn't get memory information
[    2.895977] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    2.896022] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    2.896588] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/glk_dmc_ver1_04.bin (v1.4)
[    3.026800] [drm] GuC communication enabled
[    3.031738] i915 0000:00:02.0: [drm] GuC firmware i915/glk_guc_33.0.0.bin version 33.0 submission:disabled
[    3.031744] i915 0000:00:02.0: [drm] HuC firmware i915/glk_huc_4.0.0.bin version 4.0 authenticated:yes
[    3.034534] [drm] Initialized i915 1.6.0 20200515 for 0000:00:02.0 on minor 0
[    3.038540] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    3.039237] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input1
[    3.041372] fbcon: i915drmfb (fb0) is primary device
[    3.045817] Console: switching to colour frame buffer device 240x67
[    3.078860] i915 0000:00:02.0: fb0: i915drmfb frame buffer device
[    3.100500] mmc0: Command Queue Engine enabled
[    3.100521] mmc0: new HS400 MMC card at address 0001
[    3.104891] mmcblk0: mmc0:0001 DF4064 58.2 GiB 
[    3.105075] mmcblk0boot0: mmc0:0001 DF4064 partition 1 4.00 MiB
[    3.105195] mmcblk0boot1: mmc0:0001 DF4064 partition 2 4.00 MiB
[    3.105262] mmcblk0rpmb: mmc0:0001 DF4064 partition 3 4.00 MiB, chardev (240:0)
[    3.111096]  mmcblk0: p1 p2 p3 p4
[    3.135468] random: fast init done
[    3.149621] usb 1-1: new full-speed USB device number 2 using xhci_hcd
[    3.291924] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    3.293552] ata1.00: ATA-11: WDC WDS500G2B0B-00YS70, X61190WD, max UDMA/133
[    3.293558] ata1.00: 976773168 sectors, multi 1: LBA48 NCQ (depth 32), AA
[    3.296169] ata1.00: configured for UDMA/133
[    3.296545] scsi 0:0:0:0: Direct-Access     ATA      WDC WDS500G2B0B- 90WD PQ: 0 ANSI: 5
[    3.302814] sd 0:0:0:0: [sda] 976773168 512-byte logical blocks: (500 GB/466 GiB)
[    3.302887] sd 0:0:0:0: [sda] Write Protect is off
[    3.302914] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    3.302935] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    3.314348]  sda: sda1 sda2 sda3
[    3.315320] sd 0:0:0:0: [sda] Attached SCSI disk
[    3.395662] usb 1-7: new high-speed USB device number 3 using xhci_hcd
[    3.427389] SGI XFS with ACLs, security attributes, realtime, quota, no debug enabled
[    3.430976] XFS (sda1): Mounting V5 Filesystem
[    3.448916] XFS (sda1): Ending clean mount
[    3.537077] dracut: Mounted root filesystem /dev/sda1
[    3.609883] dracut: Switching root
[    3.652823] usb 1-9: new full-speed USB device number 4 using xhci_hcd
[    3.712138] fuse: init (API version 7.31)
[    3.736579] raid6: sse2x4   gen()  8200 MB/s
[    3.753580] raid6: sse2x4   xor()  1232 MB/s
[    3.770578] raid6: sse2x2   gen()  8389 MB/s
[    3.787576] raid6: sse2x2   xor()  4965 MB/s
[    3.804579] raid6: sse2x1   gen()  6470 MB/s
[    3.821576] raid6: sse2x1   xor()  4081 MB/s
[    3.821578] raid6: using algorithm sse2x2 gen() 8389 MB/s
[    3.821578] raid6: .... xor() 4965 MB/s, rmw enabled
[    3.821579] raid6: using ssse3x2 recovery algorithm
[    3.822492] xor: measuring software checksum speed
[    3.831599]    prefetch64-sse: 13228.000 MB/sec
[    3.841603]    generic_sse: 11136.000 MB/sec
[    3.841605] xor: using function: prefetch64-sse (13228.000 MB/sec)
[    3.881494] Btrfs loaded, crc32c=crc32c-intel
[    3.885961] Non-volatile memory driver v1.3
[    3.961964] loop: module loaded
[    3.969305] tun: Universal TUN/TAP device driver, 1.6
[    3.975001] PPP generic driver version 2.4.2
[    3.988902] device-mapper: uevent: version 1.0.3
[    3.989045] device-mapper: ioctl: 4.42.0-ioctl (2020-02-27) initialised: dm-devel@redhat.com
[    3.992000] VFIO - User Level meta-driver version: 0.3
[    4.014378] Bluetooth: Core ver 2.22
[    4.014415] NET: Registered protocol family 31
[    4.014416] Bluetooth: HCI device and connection manager initialized
[    4.014422] Bluetooth: HCI socket layer initialized
[    4.014425] Bluetooth: L2CAP socket layer initialized
[    4.014430] Bluetooth: SCO socket layer initialized
[    4.029925] NET: Registered protocol family 40
[    4.069436] udevd[493]: starting version 3.2.9
[    4.071752] urandom_read: 3 callbacks suppressed
[    4.071754] random: udevd: uninitialized urandom read (16 bytes read)
[    4.071910] random: udevd: uninitialized urandom read (16 bytes read)
[    4.072233] random: udevd: uninitialized urandom read (16 bytes read)
[    4.112989] udevd[494]: starting eudev-3.2.9
[    4.149760] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input2
[    4.149822] ACPI: Lid Switch [LID0]
[    4.149937] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input3
[    4.149988] ACPI: Sleep Button [SLPB]
[    4.150110] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input4
[    4.150180] ACPI: Power Button [PWRF]
[    4.187475] ACPI: AC Adapter [ADP1] (off-line)
[    4.195224] thermal LNXTHERM:00: registered as thermal_zone2
[    4.195225] ACPI: Thermal Zone [TZ01] (42 C)
[    4.207870] proc_thermal 0000:00:00.1: Creating sysfs group for PROC_THERMAL_PCI
[    4.226630] mmc0: Requiring re-tune after rpm resume
[    4.236853] usbcore: registered new interface driver btusb
[    4.236940] acer_wmi: Acer Laptop ACPI-WMI Extras
[    4.236976] acer_wmi: Function bitmap for Communication Button: 0x1
[    4.237491] mc: Linux media interface: v0.10
[    4.239815] Bluetooth: hci0: Bootloader revision 0.1 build 42 week 52 2015
[    4.240855] Bluetooth: hci0: Device revision is 2
[    4.240856] Bluetooth: hci0: Secure boot is enabled
[    4.240857] Bluetooth: hci0: OTP lock is enabled
[    4.240858] Bluetooth: hci0: API lock is enabled
[    4.240858] Bluetooth: hci0: Debug lock is disabled
[    4.240859] Bluetooth: hci0: Minimum firmware build 1 week 10 2014
[    4.250308] Bluetooth: hci0: Found device firmware: intel/ibt-17-16-1.sfi
[    4.262126] idma64 idma64.0: Found Intel integrated DMA 64-bit
[    4.262707] i801_smbus 0000:00:1f.1: SPD Write Disable is set
[    4.262782] i801_smbus 0000:00:1f.1: SMBus using PCI interrupt
[    4.262862] i2c i2c-4: 1/1 memory slots populated (from DMI)
[    4.263013] input: Acer WMI hotkeys as /devices/virtual/input/input5
[    4.268119] input: PC Speaker as /devices/platform/pcspkr/input/input6
[    4.269496] snd_hda_intel 0000:00:0e.0: DSP detected with PCI class/subclass/prog-if info 0x040380
[    4.269964] snd_hda_intel 0000:00:0e.0: bound 0000:00:02.0 (ops i915_globals_exit [i915])
[    4.275134] videodev: Linux video capture interface: v2.00
[    4.277846] RAPL PMU: API unit is 2^-32 Joules, 4 fixed counters, 655360 ms ovfl timer
[    4.277847] RAPL PMU: hw unit of domain pp0-core 2^-14 Joules
[    4.277848] RAPL PMU: hw unit of domain package 2^-14 Joules
[    4.277849] RAPL PMU: hw unit of domain dram 2^-14 Joules
[    4.277849] RAPL PMU: hw unit of domain pp1-gpu 2^-14 Joules
[    4.286837] cryptd: max_cpu_qlen set to 1000
[    4.286838] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    4.289433] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    4.289545] platform regulatory.0: Direct firmware load for regulatory.db failed with error -2
[    4.289603] cfg80211: failed to load regulatory.db
[    4.293958] SSE version of gcm_enc/dec engaged.
[    4.301448] Intel(R) Wireless WiFi driver for Linux
[    4.303732] uvcvideo: Found UVC 1.00 device HD WebCam (04f2:b5c5)
[    4.309146] iwlwifi 0000:00:0c.0: WRT: Overriding region id 0
[    4.309199] iwlwifi 0000:00:0c.0: WRT: Overriding region id 1
[    4.309234] iwlwifi 0000:00:0c.0: WRT: Overriding region id 2
[    4.309270] iwlwifi 0000:00:0c.0: WRT: Overriding region id 3
[    4.309306] iwlwifi 0000:00:0c.0: WRT: Overriding region id 4
[    4.309336] iwlwifi 0000:00:0c.0: WRT: Overriding region id 6
[    4.309365] iwlwifi 0000:00:0c.0: WRT: Overriding region id 8
[    4.309393] iwlwifi 0000:00:0c.0: WRT: Overriding region id 9
[    4.309423] iwlwifi 0000:00:0c.0: WRT: Overriding region id 10
[    4.309453] iwlwifi 0000:00:0c.0: WRT: Overriding region id 11
[    4.309484] iwlwifi 0000:00:0c.0: WRT: Overriding region id 15
[    4.309514] iwlwifi 0000:00:0c.0: WRT: Overriding region id 16
[    4.309543] iwlwifi 0000:00:0c.0: WRT: Overriding region id 18
[    4.309590] iwlwifi 0000:00:0c.0: WRT: Overriding region id 19
[    4.309622] iwlwifi 0000:00:0c.0: WRT: Overriding region id 20
[    4.309652] iwlwifi 0000:00:0c.0: WRT: Overriding region id 21
[    4.309688] iwlwifi 0000:00:0c.0: Found debug destination: EXTERNAL_DRAM
[    4.309689] iwlwifi 0000:00:0c.0: Found debug configuration: 0
[    4.310636] iwlwifi 0000:00:0c.0: loaded firmware version 46.8902351f.0 9000-pu-b0-jf-b0-46.ucode op_mode iwlmvm
[    4.310693] iwlwifi 0000:00:0c.0: Direct firmware load for iwl-debug-yoyo.bin failed with error -2
[    4.314133] uvcvideo 1-7:1.0: Entity type for entity Extension 4 was not initialized!
[    4.314189] uvcvideo 1-7:1.0: Entity type for entity Processing 2 was not initialized!
[    4.314233] uvcvideo 1-7:1.0: Entity type for entity Camera 1 was not initialized!
[    4.314390] input: HD WebCam: HD WebCam as /devices/pci0000:00/0000:00:15.0/usb1/1-7/1-7:1.0/input/input7
[    4.314687] usbcore: registered new interface driver uvcvideo
[    4.314688] USB Video Class driver (1.1.1)
[    4.354188] intel_rapl_common: Found RAPL domain package
[    4.354191] intel_rapl_common: Found RAPL domain core
[    4.354193] intel_rapl_common: Found RAPL domain uncore
[    4.354195] intel_rapl_common: Found RAPL domain dram
[    4.356778] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC256: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:speaker
[    4.356797] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[    4.356798] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
[    4.356799] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=0x0
[    4.356800] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[    4.356819] snd_hda_codec_realtek hdaudioC0D0:      Mic=0x12
[    4.365017] iwlwifi 0000:00:0c.0: Detected Intel(R) Wireless-AC 9560, REV=0x318
[    4.383923] intel_telemetry_core Init
[    4.388104] Invalid pltconfig, ensure IPC1 device is enabled in BIOS
[    4.397189] mei_hdcp 0000:00:0f.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 (ops i915_globals_exit [i915])
[    4.404399] Invalid pltconfig, ensure IPC1 device is enabled in BIOS
[    4.409552] i2c_hid i2c-SYN1B7F:00: supply vdd not found, using dummy regulator
[    4.409670] i2c_hid i2c-SYN1B7F:00: supply vddl not found, using dummy regulator
[    4.417882] iwlwifi 0000:00:0c.0: base HW address: b4:6b:fc:4c:2c:b9
[    4.425555] input: HDA Digital PCBeep as /devices/pci0000:00/0000:00:0e.0/sound/card0/input8
[    4.425730] input: HDA Intel PCH Front Headphone as /devices/pci0000:00/0000:00:0e.0/sound/card0/input9
[    4.425928] input: HDA Intel PCH HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:0e.0/sound/card0/input10
[    4.425972] Invalid pltconfig, ensure IPC1 device is enabled in BIOS
[    4.426085] input: HDA Intel PCH HDMI/DP,pcm=7 as /devices/pci0000:00/0000:00:0e.0/sound/card0/input11
[    4.426251] input: HDA Intel PCH HDMI/DP,pcm=8 as /devices/pci0000:00/0000:00:0e.0/sound/card0/input12
[    4.426388] input: HDA Intel PCH HDMI/DP,pcm=9 as /devices/pci0000:00/0000:00:0e.0/sound/card0/input13
[    4.426538] input: HDA Intel PCH HDMI/DP,pcm=10 as /devices/pci0000:00/0000:00:0e.0/sound/card0/input14
[    4.444137] Invalid pltconfig, ensure IPC1 device is enabled in BIOS
[    4.445200] input: SYN1B7F:00 06CB:CD41 Mouse as /devices/pci0000:00/0000:00:17.0/i2c_designware.0/i2c-5/i2c-SYN1B7F:00/0018:06CB:CD41.0001/input/input15
[    4.445517] input: SYN1B7F:00 06CB:CD41 Touchpad as /devices/pci0000:00/0000:00:17.0/i2c_designware.0/i2c-5/i2c-SYN1B7F:00/0018:06CB:CD41.0001/input/input16
[    4.445854] hid-generic 0018:06CB:CD41.0001: input,hidraw0: I2C HID v1.00 Mouse [SYN1B7F:00 06CB:CD41] on i2c-SYN1B7F:00
[    4.484226] input: SYN1B7F:00 06CB:CD41 Mouse as /devices/pci0000:00/0000:00:17.0/i2c_designware.0/i2c-5/i2c-SYN1B7F:00/0018:06CB:CD41.0001/input/input18
[    4.484638] input: SYN1B7F:00 06CB:CD41 Touchpad as /devices/pci0000:00/0000:00:17.0/i2c_designware.0/i2c-5/i2c-SYN1B7F:00/0018:06CB:CD41.0001/input/input19
[    4.484946] ieee80211 phy0: Selected rate control algorithm 'iwl-mvm-rs'
[    4.484986] hid-multitouch 0018:06CB:CD41.0001: input,hidraw0: I2C HID v1.00 Mouse [SYN1B7F:00 06CB:CD41] on i2c-SYN1B7F:00
[    4.485840] thermal thermal_zone5: failed to read out thermal zone (-61)
[    4.488319] iwlwifi 0000:00:0c.0 wlp0s12f0: renamed from wlan0
[    4.871654] random: crng init done
[    4.871655] random: 1 urandom warning(s) missed due to ratelimiting
[    4.915515] xfs filesystem being remounted at / supports timestamps until 2038 (0x7fffffff)
[    4.948365] EXT4-fs (mmcblk0p2): mounting ext2 file system using the ext4 subsystem
[    4.951004] EXT4-fs (mmcblk0p2): mounted filesystem without journal. Opts: discard
[    4.951013] ext2 filesystem being mounted at /boot supports timestamps until 2038 (0x7fffffff)
[    4.985374] EXT4-fs (sda3): mounted filesystem with ordered data mode. Opts: discard
[    6.056502] Bluetooth: hci0: Waiting for firmware download to complete
[    6.056992] Bluetooth: hci0: Firmware loaded in 1775992 usecs
[    6.057369] Bluetooth: hci0: Waiting for device to boot
[    6.071099] Bluetooth: hci0: Device booted in 13549 usecs
[    6.075931] Bluetooth: hci0: Found Intel DDC parameters: intel/ibt-17-16-1.ddc
[    6.077989] Bluetooth: hci0: Applying Intel DDC parameters completed
[    6.079057] Bluetooth: hci0: Firmware revision 0.1 build 12 week 13 2020
[    6.564443] ahci 0000:00:12.0: port does not support device sleep
[    6.642131] udevd[651]: starting version 3.2.9
[    6.655384] 8021q: 802.1Q VLAN Support v1.8
[    6.659834] udevd[651]: starting eudev-3.2.9
[    7.076710] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    7.076712] Bluetooth: BNEP filters: protocol multicast
[    7.076717] Bluetooth: BNEP socket layer initialized
[    7.081319] NET: Registered protocol family 38
[    7.098371] Bluetooth: RFCOMM TTY layer initialized
[    7.098378] Bluetooth: RFCOMM socket layer initialized
[    7.098386] Bluetooth: RFCOMM ver 1.11
[   10.365241] wlp0s12f0: authenticate with c4:71:54:12:bb:6b
[   10.368349] wlp0s12f0: send auth to c4:71:54:12:bb:6b (try 1/3)
[   10.408609] wlp0s12f0: authenticated
[   10.409873] wlp0s12f0: associate with c4:71:54:12:bb:6b (try 1/3)
[   10.411247] wlp0s12f0: RX AssocResp from c4:71:54:12:bb:6b (capab=0x11 status=0 aid=2)
[   10.413918] wlp0s12f0: associated
[   10.629226] IPv6: ADDRCONF(NETDEV_CHANGE): wlp0s12f0: link becomes ready
[   14.524799] acer_wmi: Unknown function number - 8 - 1
[   75.303093] uvcvideo: uvc_v4l2_open
[   75.415187] uvcvideo: Resuming interface 0
[   75.415214] uvcvideo: Resuming interface 1
[   75.637528] uvcvideo: uvc_v4l2_release
[   75.637967] uvcvideo: uvc_v4l2_open
[   75.640012] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.640013] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.642706] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.642708] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.644869] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.644871] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.647149] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.647152] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.649440] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.649442] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.651854] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.651857] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.654166] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.654169] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.656766] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.656769] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.659129] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   75.659131] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   75.702062] uvcvideo: uvc_v4l2_poll
[   75.704915] uvcvideo: uvc_v4l2_poll
[   75.723664] uvcvideo: uvc_v4l2_poll
[   75.739741] uvcvideo: uvc_v4l2_poll
[   75.739777] uvcvideo: uvc_v4l2_poll
[   75.866924] uvcvideo: uvc_v4l2_poll
[   75.867052] uvcvideo: uvc_v4l2_poll
[   75.867061] uvcvideo: uvc_v4l2_poll
[   75.874811] uvcvideo: uvc_v4l2_poll
[   75.874933] uvcvideo: uvc_v4l2_poll
[   75.874942] uvcvideo: uvc_v4l2_poll
[   75.882748] uvcvideo: uvc_v4l2_poll
[   75.882870] uvcvideo: uvc_v4l2_poll
[   75.882878] uvcvideo: uvc_v4l2_poll
[   75.890683] uvcvideo: uvc_v4l2_poll
[   75.890805] uvcvideo: uvc_v4l2_poll
[   75.890814] uvcvideo: uvc_v4l2_poll
[   75.898639] uvcvideo: uvc_v4l2_poll
[   75.898780] uvcvideo: uvc_v4l2_poll
[   75.898789] uvcvideo: uvc_v4l2_poll
[   75.906372] uvcvideo: uvc_v4l2_poll
[   75.906494] uvcvideo: uvc_v4l2_poll
[   75.906502] uvcvideo: uvc_v4l2_poll
[   75.914362] uvcvideo: uvc_v4l2_poll
[   75.914484] uvcvideo: uvc_v4l2_poll
[   75.914493] uvcvideo: uvc_v4l2_poll
[   75.922277] uvcvideo: uvc_v4l2_poll
[   75.922400] uvcvideo: uvc_v4l2_poll
[   75.922408] uvcvideo: uvc_v4l2_poll
[   75.930200] uvcvideo: uvc_v4l2_poll
[   75.930322] uvcvideo: uvc_v4l2_poll
[   75.930331] uvcvideo: uvc_v4l2_poll
[   75.938168] uvcvideo: uvc_v4l2_poll
[   75.938290] uvcvideo: uvc_v4l2_poll
[   75.938298] uvcvideo: uvc_v4l2_poll
[   75.946126] uvcvideo: uvc_v4l2_poll
[   75.946248] uvcvideo: uvc_v4l2_poll
[   75.946257] uvcvideo: uvc_v4l2_poll
[   75.953963] uvcvideo: uvc_v4l2_poll
[   75.954085] uvcvideo: uvc_v4l2_poll
[   75.954093] uvcvideo: uvc_v4l2_poll
[   75.961895] uvcvideo: uvc_v4l2_poll
[   75.962017] uvcvideo: uvc_v4l2_poll
[   75.962026] uvcvideo: uvc_v4l2_poll
[   75.969870] uvcvideo: uvc_v4l2_poll
[   75.969991] uvcvideo: uvc_v4l2_poll
[   75.970000] uvcvideo: uvc_v4l2_poll
[   75.977761] uvcvideo: uvc_v4l2_poll
[   75.977883] uvcvideo: uvc_v4l2_poll
[   75.977891] uvcvideo: uvc_v4l2_poll
[   75.985686] uvcvideo: uvc_v4l2_poll
[   75.985807] uvcvideo: uvc_v4l2_poll
[   75.985815] uvcvideo: uvc_v4l2_poll
[   75.993533] uvcvideo: uvc_v4l2_poll
[   75.993662] uvcvideo: uvc_v4l2_poll
[   75.993670] uvcvideo: uvc_v4l2_poll
[   76.001471] uvcvideo: uvc_v4l2_poll
[   76.001603] uvcvideo: uvc_v4l2_poll
[   76.001611] uvcvideo: uvc_v4l2_poll
[   76.009557] uvcvideo: uvc_v4l2_poll
[   76.009686] uvcvideo: uvc_v4l2_poll
[   76.009695] uvcvideo: uvc_v4l2_poll
[   76.017365] uvcvideo: uvc_v4l2_poll
[   76.017486] uvcvideo: uvc_v4l2_poll
[   76.017495] uvcvideo: uvc_v4l2_poll
[   76.025274] uvcvideo: uvc_v4l2_poll
[   76.025397] uvcvideo: uvc_v4l2_poll
[   76.025405] uvcvideo: uvc_v4l2_poll
[   76.033204] uvcvideo: uvc_v4l2_poll
[   76.033326] uvcvideo: uvc_v4l2_poll
[   76.033335] uvcvideo: uvc_v4l2_poll
[   76.041140] uvcvideo: uvc_v4l2_poll
[   76.041263] uvcvideo: uvc_v4l2_poll
[   76.041271] uvcvideo: uvc_v4l2_poll
[   76.048995] uvcvideo: uvc_v4l2_poll
[   76.049117] uvcvideo: uvc_v4l2_poll
[   76.049126] uvcvideo: uvc_v4l2_poll
[   76.056983] uvcvideo: uvc_v4l2_poll
[   76.057104] uvcvideo: uvc_v4l2_poll
[   76.057113] uvcvideo: uvc_v4l2_poll
[   76.064900] uvcvideo: uvc_v4l2_poll
[   76.065023] uvcvideo: uvc_v4l2_poll
[   76.065031] uvcvideo: uvc_v4l2_poll
[   76.072744] uvcvideo: uvc_v4l2_poll
[   76.072866] uvcvideo: uvc_v4l2_poll
[   76.072875] uvcvideo: uvc_v4l2_poll
[   76.080754] uvcvideo: uvc_v4l2_poll
[   76.080876] uvcvideo: uvc_v4l2_poll
[   76.080885] uvcvideo: uvc_v4l2_poll
[   76.088691] uvcvideo: uvc_v4l2_poll
[   76.088813] uvcvideo: uvc_v4l2_poll
[   76.088822] uvcvideo: uvc_v4l2_poll
[   76.096533] uvcvideo: uvc_v4l2_poll
[   76.096662] uvcvideo: uvc_v4l2_poll
[   76.096671] uvcvideo: uvc_v4l2_poll
[   76.104465] uvcvideo: uvc_v4l2_poll
[   76.104596] uvcvideo: uvc_v4l2_poll
[   76.104605] uvcvideo: uvc_v4l2_poll
[   76.112399] uvcvideo: uvc_v4l2_poll
[   76.112522] uvcvideo: uvc_v4l2_poll
[   76.112531] uvcvideo: uvc_v4l2_poll
[   76.120262] uvcvideo: uvc_v4l2_poll
[   76.120385] uvcvideo: uvc_v4l2_poll
[   76.120394] uvcvideo: uvc_v4l2_poll
[   76.128273] uvcvideo: uvc_v4l2_poll
[   76.128396] uvcvideo: uvc_v4l2_poll
[   76.128405] uvcvideo: uvc_v4l2_poll
[   76.136187] uvcvideo: uvc_v4l2_poll
[   76.136309] uvcvideo: uvc_v4l2_poll
[   76.136317] uvcvideo: uvc_v4l2_poll
[   76.143982] uvcvideo: uvc_v4l2_poll
[   76.144144] uvcvideo: uvc_v4l2_poll
[   76.144843] uvcvideo: uvc_v4l2_poll
[   76.151793] uvcvideo: uvc_v4l2_poll
[   76.152012] uvcvideo: uvc_v4l2_poll
[   76.158576] uvcvideo: uvc_v4l2_poll
[   76.159548] uvcvideo: uvc_v4l2_poll
[   76.159632] uvcvideo: uvc_v4l2_poll
[   76.159886] uvcvideo: uvc_v4l2_poll
[   76.167794] uvcvideo: uvc_v4l2_poll
[   76.167959] uvcvideo: uvc_v4l2_poll
[   76.168477] uvcvideo: uvc_v4l2_poll
[   76.175743] uvcvideo: uvc_v4l2_poll
[   76.175927] uvcvideo: uvc_v4l2_poll
[   76.176452] uvcvideo: uvc_v4l2_poll
[   76.183520] uvcvideo: uvc_v4l2_poll
[   76.183695] uvcvideo: uvc_v4l2_poll
[   76.183704] uvcvideo: uvc_v4l2_poll
[   76.191519] uvcvideo: uvc_v4l2_poll
[   76.191699] uvcvideo: uvc_v4l2_poll
[   76.191708] uvcvideo: uvc_v4l2_poll
[   76.199269] uvcvideo: uvc_v4l2_poll
[   76.199443] uvcvideo: uvc_v4l2_poll
[   76.199827] uvcvideo: uvc_v4l2_poll
[   76.207250] uvcvideo: uvc_v4l2_poll
[   76.207404] uvcvideo: uvc_v4l2_poll
[   76.207980] uvcvideo: uvc_v4l2_poll
[   76.215251] uvcvideo: uvc_v4l2_poll
[   76.215418] uvcvideo: uvc_v4l2_poll
[   76.215942] uvcvideo: uvc_v4l2_poll
[   76.223121] uvcvideo: uvc_v4l2_poll
[   76.223286] uvcvideo: uvc_v4l2_poll
[   76.223646] uvcvideo: uvc_v4l2_poll
[   76.231086] uvcvideo: uvc_v4l2_poll
[   76.231224] uvcvideo: uvc_v4l2_poll
[   76.231233] uvcvideo: uvc_v4l2_poll
[   76.239006] uvcvideo: uvc_v4l2_poll
[   76.239145] uvcvideo: uvc_v4l2_poll
[   76.239153] uvcvideo: uvc_v4l2_poll
[   76.247015] uvcvideo: uvc_v4l2_poll
[   76.247154] uvcvideo: uvc_v4l2_poll
[   76.247163] uvcvideo: uvc_v4l2_poll
[   76.254998] uvcvideo: uvc_v4l2_poll
[   76.255137] uvcvideo: uvc_v4l2_poll
[   76.255146] uvcvideo: uvc_v4l2_poll
[   76.262773] uvcvideo: uvc_v4l2_poll
[   76.262911] uvcvideo: uvc_v4l2_poll
[   76.262920] uvcvideo: uvc_v4l2_poll
[   76.270688] uvcvideo: uvc_v4l2_poll
[   76.270828] uvcvideo: uvc_v4l2_poll
[   76.270836] uvcvideo: uvc_v4l2_poll
[   76.547917] uvcvideo: uvc_v4l2_poll
[   76.548069] uvcvideo: uvc_v4l2_poll
[   76.548487] uvcvideo: uvc_v4l2_poll
[   76.555965] uvcvideo: uvc_v4l2_poll
[   76.556131] uvcvideo: uvc_v4l2_poll
[   76.556806] uvcvideo: uvc_v4l2_poll
[   76.563821] uvcvideo: uvc_v4l2_poll
[   76.563943] uvcvideo: uvc_v4l2_poll
[   76.563951] uvcvideo: uvc_v4l2_poll
[   76.571657] uvcvideo: uvc_v4l2_poll
[   76.571777] uvcvideo: uvc_v4l2_poll
[   76.571786] uvcvideo: uvc_v4l2_poll
[   76.579470] uvcvideo: uvc_v4l2_poll
[   76.579641] uvcvideo: uvc_v4l2_poll
[   76.579690] uvcvideo: uvc_v4l2_poll
[   76.587245] uvcvideo: uvc_v4l2_poll
[   76.587378] uvcvideo: uvc_v4l2_poll
[   76.587387] uvcvideo: uvc_v4l2_poll
[   76.595403] uvcvideo: uvc_v4l2_poll
[   76.595523] uvcvideo: uvc_v4l2_poll
[   76.595532] uvcvideo: uvc_v4l2_poll
[   76.603370] uvcvideo: uvc_v4l2_poll
[   76.603505] uvcvideo: uvc_v4l2_poll
[   76.603513] uvcvideo: uvc_v4l2_poll
[   76.611065] uvcvideo: uvc_v4l2_poll
[   76.611195] uvcvideo: uvc_v4l2_poll
[   76.611204] uvcvideo: uvc_v4l2_poll
[   76.619083] uvcvideo: uvc_v4l2_poll
[   76.619205] uvcvideo: uvc_v4l2_poll
[   76.619214] uvcvideo: uvc_v4l2_poll
[   76.627157] uvcvideo: uvc_v4l2_poll
[   76.627280] uvcvideo: uvc_v4l2_poll
[   76.627288] uvcvideo: uvc_v4l2_poll
[   76.635141] uvcvideo: uvc_v4l2_poll
[   76.635261] uvcvideo: uvc_v4l2_poll
[   76.635269] uvcvideo: uvc_v4l2_poll
[   76.643045] uvcvideo: uvc_v4l2_poll
[   76.643168] uvcvideo: uvc_v4l2_poll
[   76.643176] uvcvideo: uvc_v4l2_poll
[   76.650889] uvcvideo: uvc_v4l2_poll
[   76.651012] uvcvideo: uvc_v4l2_poll
[   76.651021] uvcvideo: uvc_v4l2_poll
[   76.658947] uvcvideo: uvc_v4l2_poll
[   76.659069] uvcvideo: uvc_v4l2_poll
[   76.659078] uvcvideo: uvc_v4l2_poll
[   76.666803] uvcvideo: uvc_v4l2_poll
[   76.666925] uvcvideo: uvc_v4l2_poll
[   76.666933] uvcvideo: uvc_v4l2_poll
[   76.674702] uvcvideo: uvc_v4l2_poll
[   76.674824] uvcvideo: uvc_v4l2_poll
[   76.674833] uvcvideo: uvc_v4l2_poll
[   76.682586] uvcvideo: uvc_v4l2_poll
[   76.682709] uvcvideo: uvc_v4l2_poll
[   76.682717] uvcvideo: uvc_v4l2_poll
[   76.690569] uvcvideo: uvc_v4l2_poll
[   76.690704] uvcvideo: uvc_v4l2_poll
[   76.690713] uvcvideo: uvc_v4l2_poll
[   76.698423] uvcvideo: uvc_v4l2_poll
[   76.698545] uvcvideo: uvc_v4l2_poll
[   76.698554] uvcvideo: uvc_v4l2_poll
[   76.706406] uvcvideo: uvc_v4l2_poll
[   76.706528] uvcvideo: uvc_v4l2_poll
[   76.706537] uvcvideo: uvc_v4l2_poll
[   76.714096] uvcvideo: uvc_v4l2_poll
[   76.714217] uvcvideo: uvc_v4l2_poll
[   76.714226] uvcvideo: uvc_v4l2_poll
[   76.722027] uvcvideo: uvc_v4l2_poll
[   76.722149] uvcvideo: uvc_v4l2_poll
[   76.722158] uvcvideo: uvc_v4l2_poll
[   76.730144] uvcvideo: uvc_v4l2_poll
[   76.730267] uvcvideo: uvc_v4l2_poll
[   76.730276] uvcvideo: uvc_v4l2_poll
[   76.904340] uvcvideo: uvc_v4l2_poll
[   76.904457] uvcvideo: uvc_v4l2_poll
[   76.904465] uvcvideo: uvc_v4l2_poll
[   76.912247] uvcvideo: uvc_v4l2_poll
[   76.912349] uvcvideo: uvc_v4l2_poll
[   76.912357] uvcvideo: uvc_v4l2_poll
[   76.920017] uvcvideo: uvc_v4l2_poll
[   76.920118] uvcvideo: uvc_v4l2_poll
[   76.920127] uvcvideo: uvc_v4l2_poll
[   76.927984] uvcvideo: uvc_v4l2_poll
[   76.928085] uvcvideo: uvc_v4l2_poll
[   76.928093] uvcvideo: uvc_v4l2_poll
[   76.936004] uvcvideo: uvc_v4l2_poll
[   76.936106] uvcvideo: uvc_v4l2_poll
[   76.936115] uvcvideo: uvc_v4l2_poll
[   76.943939] uvcvideo: uvc_v4l2_poll
[   76.944041] uvcvideo: uvc_v4l2_poll
[   76.944050] uvcvideo: uvc_v4l2_poll
[   76.951926] uvcvideo: uvc_v4l2_poll
[   76.952061] uvcvideo: uvc_v4l2_poll
[   76.952070] uvcvideo: uvc_v4l2_poll
[   76.959811] uvcvideo: uvc_v4l2_poll
[   76.959975] uvcvideo: uvc_v4l2_poll
[   76.960436] uvcvideo: uvc_v4l2_poll
[   76.967780] uvcvideo: uvc_v4l2_poll
[   76.967913] uvcvideo: uvc_v4l2_poll
[   76.967923] uvcvideo: uvc_v4l2_poll
[   76.975716] uvcvideo: uvc_v4l2_poll
[   76.975848] uvcvideo: uvc_v4l2_poll
[   76.975857] uvcvideo: uvc_v4l2_poll
[   76.983402] uvcvideo: uvc_v4l2_poll
[   76.983535] uvcvideo: uvc_v4l2_poll
[   76.983544] uvcvideo: uvc_v4l2_poll
[   76.991357] uvcvideo: uvc_v4l2_poll
[   76.991487] uvcvideo: uvc_v4l2_poll
[   76.991496] uvcvideo: uvc_v4l2_poll
[   76.999344] uvcvideo: uvc_v4l2_poll
[   76.999474] uvcvideo: uvc_v4l2_poll
[   76.999483] uvcvideo: uvc_v4l2_poll
[   77.007278] uvcvideo: uvc_v4l2_poll
[   77.007448] uvcvideo: uvc_v4l2_poll
[   77.007827] uvcvideo: uvc_v4l2_poll
[   77.015220] uvcvideo: uvc_v4l2_poll
[   77.015352] uvcvideo: uvc_v4l2_poll
[   77.015361] uvcvideo: uvc_v4l2_poll
[   77.022933] uvcvideo: uvc_v4l2_poll
[   77.023064] uvcvideo: uvc_v4l2_poll
[   77.023073] uvcvideo: uvc_v4l2_poll
[   77.030822] uvcvideo: uvc_v4l2_poll
[   77.030954] uvcvideo: uvc_v4l2_poll
[   77.030963] uvcvideo: uvc_v4l2_poll
[   77.038989] uvcvideo: uvc_v4l2_poll
[   77.039119] uvcvideo: uvc_v4l2_poll
[   77.039128] uvcvideo: uvc_v4l2_poll
[   77.046776] uvcvideo: uvc_v4l2_poll
[   77.046907] uvcvideo: uvc_v4l2_poll
[   77.046916] uvcvideo: uvc_v4l2_poll
[   77.054966] uvcvideo: uvc_v4l2_poll
[   77.055097] uvcvideo: uvc_v4l2_poll
[   77.055105] uvcvideo: uvc_v4l2_poll
[   77.062824] uvcvideo: uvc_v4l2_poll
[   77.062955] uvcvideo: uvc_v4l2_poll
[   77.062963] uvcvideo: uvc_v4l2_poll
[   77.070800] uvcvideo: uvc_v4l2_poll
[   77.070933] uvcvideo: uvc_v4l2_poll
[   77.070942] uvcvideo: uvc_v4l2_poll
[   77.078723] uvcvideo: uvc_v4l2_poll
[   77.078855] uvcvideo: uvc_v4l2_poll
[   77.078864] uvcvideo: uvc_v4l2_poll
[   77.086506] uvcvideo: uvc_v4l2_poll
[   77.086701] uvcvideo: uvc_v4l2_poll
[   77.086710] uvcvideo: uvc_v4l2_poll
[   77.094377] uvcvideo: uvc_v4l2_poll
[   77.094510] uvcvideo: uvc_v4l2_poll
[   77.094518] uvcvideo: uvc_v4l2_poll
[   77.102299] uvcvideo: uvc_v4l2_poll
[   77.102432] uvcvideo: uvc_v4l2_poll
[   77.102441] uvcvideo: uvc_v4l2_poll
[   77.110316] uvcvideo: uvc_v4l2_poll
[   77.110448] uvcvideo: uvc_v4l2_poll
[   77.110457] uvcvideo: uvc_v4l2_poll
[   77.118176] uvcvideo: uvc_v4l2_poll
[   77.118306] uvcvideo: uvc_v4l2_poll
[   77.118315] uvcvideo: uvc_v4l2_poll
[   77.125929] uvcvideo: uvc_v4l2_poll
[   77.126061] uvcvideo: uvc_v4l2_poll
[   77.126070] uvcvideo: uvc_v4l2_poll
[   77.134014] uvcvideo: uvc_v4l2_poll
[   77.134148] uvcvideo: uvc_v4l2_poll
[   77.134157] uvcvideo: uvc_v4l2_poll
[   77.142004] uvcvideo: uvc_v4l2_poll
[   77.142136] uvcvideo: uvc_v4l2_poll
[   77.142145] uvcvideo: uvc_v4l2_poll
[   77.149925] uvcvideo: uvc_v4l2_poll
[   77.150058] uvcvideo: uvc_v4l2_poll
[   77.150067] uvcvideo: uvc_v4l2_poll
[   77.157789] uvcvideo: uvc_v4l2_poll
[   77.157922] uvcvideo: uvc_v4l2_poll
[   77.157931] uvcvideo: uvc_v4l2_poll
[   77.165755] uvcvideo: uvc_v4l2_poll
[   77.165889] uvcvideo: uvc_v4l2_poll
[   77.165897] uvcvideo: uvc_v4l2_poll
[   77.173770] uvcvideo: uvc_v4l2_poll
[   77.173901] uvcvideo: uvc_v4l2_poll
[   77.173910] uvcvideo: uvc_v4l2_poll
[   77.181553] uvcvideo: uvc_v4l2_poll
[   77.181692] uvcvideo: uvc_v4l2_poll
[   77.181701] uvcvideo: uvc_v4l2_poll
[   77.189097] uvcvideo: uvc_v4l2_poll
[   77.189203] uvcvideo: uvc_v4l2_poll
[   77.189212] uvcvideo: uvc_v4l2_poll
[   77.197520] uvcvideo: uvc_v4l2_poll
[   77.197668] uvcvideo: uvc_v4l2_poll
[   77.197677] uvcvideo: uvc_v4l2_poll
[   77.205397] uvcvideo: uvc_v4l2_poll
[   77.205529] uvcvideo: uvc_v4l2_poll
[   77.205538] uvcvideo: uvc_v4l2_poll
[   77.213300] uvcvideo: uvc_v4l2_poll
[   77.213433] uvcvideo: uvc_v4l2_poll
[   77.213442] uvcvideo: uvc_v4l2_poll
[   77.221230] uvcvideo: uvc_v4l2_poll
[   77.221380] uvcvideo: uvc_v4l2_poll
[   77.221676] uvcvideo: uvc_v4l2_poll
[   77.229209] uvcvideo: uvc_v4l2_poll
[   77.229390] uvcvideo: uvc_v4l2_poll
[   77.229399] uvcvideo: uvc_v4l2_poll
[   77.236786] uvcvideo: uvc_v4l2_poll
[   77.236956] uvcvideo: uvc_v4l2_poll
[   77.237313] uvcvideo: uvc_v4l2_poll
[   77.245274] uvcvideo: uvc_v4l2_poll
[   77.245430] uvcvideo: uvc_v4l2_poll
[   77.245439] uvcvideo: uvc_v4l2_poll
[   77.252844] uvcvideo: uvc_v4l2_poll
[   77.252973] uvcvideo: uvc_v4l2_poll
[   77.252982] uvcvideo: uvc_v4l2_poll
[   77.282761] uvcvideo: uvc_v4l2_poll
[   77.282843] uvcvideo: uvc_v4l2_poll
[   77.292211] uvcvideo: uvc_v4l2_poll
[   77.292345] uvcvideo: uvc_v4l2_poll
[   77.292354] uvcvideo: uvc_v4l2_poll
[   77.300143] uvcvideo: uvc_v4l2_poll
[   77.300276] uvcvideo: uvc_v4l2_poll
[   77.300285] uvcvideo: uvc_v4l2_poll
[   77.308181] uvcvideo: uvc_v4l2_poll
[   77.308312] uvcvideo: uvc_v4l2_poll
[   77.308321] uvcvideo: uvc_v4l2_poll
[   77.316196] uvcvideo: uvc_v4l2_poll
[   77.316326] uvcvideo: uvc_v4l2_poll
[   77.316335] uvcvideo: uvc_v4l2_poll
[   77.323994] uvcvideo: uvc_v4l2_poll
[   77.324124] uvcvideo: uvc_v4l2_poll
[   77.324133] uvcvideo: uvc_v4l2_poll
[   77.331872] uvcvideo: uvc_v4l2_poll
[   77.332003] uvcvideo: uvc_v4l2_poll
[   77.332012] uvcvideo: uvc_v4l2_poll
[   77.339968] uvcvideo: uvc_v4l2_poll
[   77.340100] uvcvideo: uvc_v4l2_poll
[   77.340109] uvcvideo: uvc_v4l2_poll
[   77.347897] uvcvideo: uvc_v4l2_poll
[   77.348029] uvcvideo: uvc_v4l2_poll
[   77.348038] uvcvideo: uvc_v4l2_poll
[   77.355733] uvcvideo: uvc_v4l2_poll
[   77.355865] uvcvideo: uvc_v4l2_poll
[   77.355874] uvcvideo: uvc_v4l2_poll
[   77.371587] uvcvideo: uvc_v4l2_poll
[   77.371719] uvcvideo: uvc_v4l2_poll
[   77.371728] uvcvideo: uvc_v4l2_poll
[   77.403370] uvcvideo: uvc_v4l2_poll
[   77.403503] uvcvideo: uvc_v4l2_poll
[   77.403512] uvcvideo: uvc_v4l2_poll
[   77.411259] uvcvideo: uvc_v4l2_poll
[   77.411392] uvcvideo: uvc_v4l2_poll
[   77.411401] uvcvideo: uvc_v4l2_poll
[   77.442947] uvcvideo: uvc_v4l2_poll
[   77.443080] uvcvideo: uvc_v4l2_poll
[   77.443089] uvcvideo: uvc_v4l2_poll
[   77.530246] uvcvideo: uvc_v4l2_poll
[   77.530871] uvcvideo: uvc_v4l2_poll
[   77.530886] uvcvideo: uvc_v4l2_poll
[   77.593500] uvcvideo: uvc_v4l2_poll
[   77.593675] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   77.593676] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   77.595537] uvcvideo: Trying format 0x47504a4d (MJPG): 1280x720.
[   77.595538] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[   77.597507] uvcvideo: Setting frame interval to 1/30 (333333).
[   77.611524] uvcvideo: uvc_v4l2_mmap
[   77.611566] uvcvideo: uvc_v4l2_mmap
[   77.611610] uvcvideo: uvc_v4l2_mmap
[   77.611648] uvcvideo: uvc_v4l2_mmap
[   77.612097] uvcvideo: Device requested 3072 B/frame bandwidth.
[   77.612099] uvcvideo: Selecting alternate setting 7 (3072 B/frame bandwidth).
[   78.196991] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[   78.199142] uvcvideo: uvc_v4l2_poll
[   78.280089] uvcvideo: uvc_v4l2_poll
[   78.306555] uvcvideo: uvc_v4l2_poll
[   78.306642] uvcvideo: uvc_v4l2_poll
[   78.425012] uvcvideo: uvc_v4l2_poll
[   78.425127] uvcvideo: uvc_v4l2_poll
[   78.425135] uvcvideo: uvc_v4l2_poll
[   78.432898] uvcvideo: uvc_v4l2_poll
[   78.432923] uvcvideo: uvc_v4l2_poll
[   78.432937] uvcvideo: uvc_v4l2_poll
[   78.440880] uvcvideo: uvc_v4l2_poll
[   78.440904] uvcvideo: uvc_v4l2_poll
[   78.440912] uvcvideo: uvc_v4l2_poll
[   78.448737] uvcvideo: uvc_v4l2_poll
[   78.448761] uvcvideo: uvc_v4l2_poll
[   78.448770] uvcvideo: uvc_v4l2_poll
[   78.456741] uvcvideo: uvc_v4l2_poll
[   78.456765] uvcvideo: uvc_v4l2_poll
[   78.456773] uvcvideo: uvc_v4l2_poll
[   78.464652] uvcvideo: uvc_v4l2_poll
[   78.464676] uvcvideo: uvc_v4l2_poll
[   78.464692] uvcvideo: uvc_v4l2_poll
[   78.472570] uvcvideo: uvc_v4l2_poll
[   78.472599] uvcvideo: uvc_v4l2_poll
[   78.472608] uvcvideo: uvc_v4l2_poll
[   78.480498] uvcvideo: uvc_v4l2_poll
[   78.480521] uvcvideo: uvc_v4l2_poll
[   78.480530] uvcvideo: uvc_v4l2_poll
[   78.488360] uvcvideo: uvc_v4l2_poll
[   78.488383] uvcvideo: uvc_v4l2_poll
[   78.488392] uvcvideo: uvc_v4l2_poll
[   78.496330] uvcvideo: uvc_v4l2_poll
[   78.496354] uvcvideo: uvc_v4l2_poll
[   78.496362] uvcvideo: uvc_v4l2_poll
[   78.504259] uvcvideo: uvc_v4l2_poll
[   78.504282] uvcvideo: uvc_v4l2_poll
[   78.504291] uvcvideo: uvc_v4l2_poll
[   78.512150] uvcvideo: uvc_v4l2_poll
[   78.512174] uvcvideo: uvc_v4l2_poll
[   78.512188] uvcvideo: uvc_v4l2_poll
[   78.520035] uvcvideo: uvc_v4l2_poll
[   78.520066] uvcvideo: uvc_v4l2_poll
[   78.520074] uvcvideo: uvc_v4l2_poll
[   79.019002] uvcvideo: uvc_v4l2_poll
[   79.019033] uvcvideo: uvc_v4l2_poll
[   79.019042] uvcvideo: uvc_v4l2_poll
[   79.026968] uvcvideo: uvc_v4l2_poll
[   79.026992] uvcvideo: uvc_v4l2_poll
[   79.027000] uvcvideo: uvc_v4l2_poll
[   79.034834] uvcvideo: uvc_v4l2_poll
[   79.034857] uvcvideo: uvc_v4l2_poll
[   79.034866] uvcvideo: uvc_v4l2_poll
[   79.042746] uvcvideo: uvc_v4l2_poll
[   79.042769] uvcvideo: uvc_v4l2_poll
[   79.042778] uvcvideo: uvc_v4l2_poll
[   79.050709] uvcvideo: uvc_v4l2_poll
[   79.050732] uvcvideo: uvc_v4l2_poll
[   79.050741] uvcvideo: uvc_v4l2_poll
[   79.058601] uvcvideo: uvc_v4l2_poll
[   79.058624] uvcvideo: uvc_v4l2_poll
[   79.058633] uvcvideo: uvc_v4l2_poll
[   79.066541] uvcvideo: uvc_v4l2_poll
[   79.066572] uvcvideo: uvc_v4l2_poll
[   79.066586] uvcvideo: uvc_v4l2_poll
[   79.074505] uvcvideo: uvc_v4l2_poll
[   79.074528] uvcvideo: uvc_v4l2_poll
[   79.074537] uvcvideo: uvc_v4l2_poll
[   79.082410] uvcvideo: uvc_v4l2_poll
[   79.082440] uvcvideo: uvc_v4l2_poll
[   79.082449] uvcvideo: uvc_v4l2_poll
[   79.090347] uvcvideo: uvc_v4l2_poll
[   79.090371] uvcvideo: uvc_v4l2_poll
[   79.090379] uvcvideo: uvc_v4l2_poll
[   79.098252] uvcvideo: uvc_v4l2_poll
[   79.098276] uvcvideo: uvc_v4l2_poll
[   79.098284] uvcvideo: uvc_v4l2_poll
[   79.106173] uvcvideo: uvc_v4l2_poll
[   79.106203] uvcvideo: uvc_v4l2_poll
[   79.106212] uvcvideo: uvc_v4l2_poll
[   79.113993] uvcvideo: uvc_v4l2_poll
[   79.114017] uvcvideo: uvc_v4l2_poll
[   79.114025] uvcvideo: uvc_v4l2_poll
[   79.121924] uvcvideo: uvc_v4l2_poll
[   79.121953] uvcvideo: uvc_v4l2_poll
[   79.121962] uvcvideo: uvc_v4l2_poll
[   79.129987] uvcvideo: uvc_v4l2_poll
[   79.130032] uvcvideo: uvc_v4l2_poll
[   79.130040] uvcvideo: uvc_v4l2_poll
[   79.137819] uvcvideo: uvc_v4l2_poll
[   79.137846] uvcvideo: uvc_v4l2_poll
[   79.137855] uvcvideo: uvc_v4l2_poll
[   79.145613] uvcvideo: uvc_v4l2_poll
[   79.145639] uvcvideo: uvc_v4l2_poll
[   79.145647] uvcvideo: uvc_v4l2_poll
[   79.153534] uvcvideo: uvc_v4l2_poll
[   79.153565] uvcvideo: uvc_v4l2_poll
[   79.153574] uvcvideo: uvc_v4l2_poll
[   79.161479] uvcvideo: uvc_v4l2_poll
[   79.161503] uvcvideo: uvc_v4l2_poll
[   79.161511] uvcvideo: uvc_v4l2_poll
[   79.169378] uvcvideo: uvc_v4l2_poll
[   79.169401] uvcvideo: uvc_v4l2_poll
[   79.169410] uvcvideo: uvc_v4l2_poll
[   79.177333] uvcvideo: uvc_v4l2_poll
[   79.177356] uvcvideo: uvc_v4l2_poll
[   79.177365] uvcvideo: uvc_v4l2_poll
[   79.185252] uvcvideo: uvc_v4l2_poll
[   79.185276] uvcvideo: uvc_v4l2_poll
[   79.185284] uvcvideo: uvc_v4l2_poll
[   79.193259] uvcvideo: uvc_v4l2_poll
[   79.193283] uvcvideo: uvc_v4l2_poll
[   79.193291] uvcvideo: uvc_v4l2_poll
[   79.201192] uvcvideo: uvc_v4l2_poll
[   79.201216] uvcvideo: uvc_v4l2_poll
[   79.201224] uvcvideo: uvc_v4l2_poll
[   79.209042] uvcvideo: uvc_v4l2_poll
[   79.209094] uvcvideo: uvc_v4l2_poll
[   79.209103] uvcvideo: uvc_v4l2_poll
[   79.216942] uvcvideo: uvc_v4l2_poll
[   79.216965] uvcvideo: uvc_v4l2_poll
[   79.216974] uvcvideo: uvc_v4l2_poll
[   79.224778] uvcvideo: uvc_v4l2_poll
[   79.224801] uvcvideo: uvc_v4l2_poll
[   79.224817] uvcvideo: uvc_v4l2_poll
[   79.232811] uvcvideo: uvc_v4l2_poll
[   79.232834] uvcvideo: uvc_v4l2_poll
[   79.232843] uvcvideo: uvc_v4l2_poll
[   79.240640] uvcvideo: uvc_v4l2_poll
[   79.240663] uvcvideo: uvc_v4l2_poll
[   79.240672] uvcvideo: uvc_v4l2_poll
[   79.248648] uvcvideo: uvc_v4l2_poll
[   79.248671] uvcvideo: uvc_v4l2_poll
[   79.248680] uvcvideo: uvc_v4l2_poll
[   79.256566] uvcvideo: uvc_v4l2_poll
[   79.256595] uvcvideo: uvc_v4l2_poll
[   79.256603] uvcvideo: uvc_v4l2_poll
[   79.264463] uvcvideo: uvc_v4l2_poll
[   79.264487] uvcvideo: uvc_v4l2_poll
[   79.264495] uvcvideo: uvc_v4l2_poll
[   79.272388] uvcvideo: uvc_v4l2_poll
[   79.272627] uvcvideo: uvc_v4l2_poll
[   79.272636] uvcvideo: uvc_v4l2_poll
[   79.280304] uvcvideo: uvc_v4l2_poll
[   79.280334] uvcvideo: uvc_v4l2_poll
[   79.280343] uvcvideo: uvc_v4l2_poll
[   79.282454] uvcvideo: uvc_v4l2_poll
[   79.282467] uvcvideo: uvc_v4l2_poll
[   79.288225] uvcvideo: uvc_v4l2_poll
[   79.288258] uvcvideo: uvc_v4l2_poll
[   79.288266] uvcvideo: uvc_v4l2_poll
[   79.296146] uvcvideo: uvc_v4l2_poll
[   79.296172] uvcvideo: uvc_v4l2_poll
[   79.296181] uvcvideo: uvc_v4l2_poll
[   79.304033] uvcvideo: uvc_v4l2_poll
[   79.304058] uvcvideo: uvc_v4l2_poll
[   79.304067] uvcvideo: uvc_v4l2_poll
[   79.311966] uvcvideo: uvc_v4l2_poll
[   79.311992] uvcvideo: uvc_v4l2_poll
[   79.312001] uvcvideo: uvc_v4l2_poll
[   79.319855] uvcvideo: uvc_v4l2_poll
[   79.319880] uvcvideo: uvc_v4l2_poll
[   79.319888] uvcvideo: uvc_v4l2_poll
[   79.327798] uvcvideo: uvc_v4l2_poll
[   79.327823] uvcvideo: uvc_v4l2_poll
[   79.327831] uvcvideo: uvc_v4l2_poll
[   79.335702] uvcvideo: uvc_v4l2_poll
[   79.335728] uvcvideo: uvc_v4l2_poll
[   79.335736] uvcvideo: uvc_v4l2_poll
[   79.343673] uvcvideo: uvc_v4l2_poll
[   79.343699] uvcvideo: uvc_v4l2_poll
[   79.343708] uvcvideo: uvc_v4l2_poll
[   79.351548] uvcvideo: uvc_v4l2_poll
[   79.351573] uvcvideo: uvc_v4l2_poll
[   79.351590] uvcvideo: uvc_v4l2_poll
[   79.573423] uvcvideo: uvc_v4l2_poll
[   79.573450] uvcvideo: uvc_v4l2_poll
[   79.573460] uvcvideo: uvc_v4l2_poll
[   79.581276] uvcvideo: uvc_v4l2_poll
[   79.581302] uvcvideo: uvc_v4l2_poll
[   79.581311] uvcvideo: uvc_v4l2_poll
[   79.589312] uvcvideo: uvc_v4l2_poll
[   79.589617] uvcvideo: uvc_v4l2_poll
[   79.589626] uvcvideo: uvc_v4l2_poll
[   79.597202] uvcvideo: uvc_v4l2_poll
[   79.597227] uvcvideo: uvc_v4l2_poll
[   79.597236] uvcvideo: uvc_v4l2_poll
[   79.605182] uvcvideo: uvc_v4l2_poll
[   79.605227] uvcvideo: uvc_v4l2_poll
[   79.605235] uvcvideo: uvc_v4l2_poll
[   79.613078] uvcvideo: uvc_v4l2_poll
[   79.613122] uvcvideo: uvc_v4l2_poll
[   79.613130] uvcvideo: uvc_v4l2_poll
[   79.620905] uvcvideo: uvc_v4l2_poll
[   79.620949] uvcvideo: uvc_v4l2_poll
[   79.620958] uvcvideo: uvc_v4l2_poll
[   79.628904] uvcvideo: uvc_v4l2_poll
[   79.628948] uvcvideo: uvc_v4l2_poll
[   79.628957] uvcvideo: uvc_v4l2_poll
[   79.636764] uvcvideo: uvc_v4l2_poll
[   79.636809] uvcvideo: uvc_v4l2_poll
[   79.636817] uvcvideo: uvc_v4l2_poll
[   79.644734] uvcvideo: uvc_v4l2_poll
[   79.644778] uvcvideo: uvc_v4l2_poll
[   79.644787] uvcvideo: uvc_v4l2_poll
[   79.652590] uvcvideo: uvc_v4l2_poll
[   79.652633] uvcvideo: uvc_v4l2_poll
[   79.652642] uvcvideo: uvc_v4l2_poll
[   79.660506] uvcvideo: uvc_v4l2_poll
[   79.660551] uvcvideo: uvc_v4l2_poll
[   79.660559] uvcvideo: uvc_v4l2_poll
[   79.668423] uvcvideo: uvc_v4l2_poll
[   79.668467] uvcvideo: uvc_v4l2_poll
[   79.668476] uvcvideo: uvc_v4l2_poll
[   79.676311] uvcvideo: uvc_v4l2_poll
[   79.676354] uvcvideo: uvc_v4l2_poll
[   79.676365] uvcvideo: uvc_v4l2_poll
[   79.684235] uvcvideo: uvc_v4l2_poll
[   79.684279] uvcvideo: uvc_v4l2_poll
[   79.684287] uvcvideo: uvc_v4l2_poll
[   79.692166] uvcvideo: uvc_v4l2_poll
[   79.692210] uvcvideo: uvc_v4l2_poll
[   79.692219] uvcvideo: uvc_v4l2_poll
[   79.700105] uvcvideo: uvc_v4l2_poll
[   79.700150] uvcvideo: uvc_v4l2_poll
[   79.700158] uvcvideo: uvc_v4l2_poll
[   79.708019] uvcvideo: uvc_v4l2_poll
[   79.708064] uvcvideo: uvc_v4l2_poll
[   79.708072] uvcvideo: uvc_v4l2_poll
[   79.715891] uvcvideo: uvc_v4l2_poll
[   79.715916] uvcvideo: uvc_v4l2_poll
[   79.715924] uvcvideo: uvc_v4l2_poll
[   79.723796] uvcvideo: uvc_v4l2_poll
[   79.723821] uvcvideo: uvc_v4l2_poll
[   79.723830] uvcvideo: uvc_v4l2_poll
[   79.731700] uvcvideo: uvc_v4l2_poll
[   79.731725] uvcvideo: uvc_v4l2_poll
[   79.731734] uvcvideo: uvc_v4l2_poll
[   79.739607] uvcvideo: uvc_v4l2_poll
[   79.739632] uvcvideo: uvc_v4l2_poll
[   79.739641] uvcvideo: uvc_v4l2_poll
[   79.747563] uvcvideo: uvc_v4l2_poll
[   79.747596] uvcvideo: uvc_v4l2_poll
[   79.747605] uvcvideo: uvc_v4l2_poll
[   79.961457] uvcvideo: uvc_v4l2_poll
[   79.961485] uvcvideo: uvc_v4l2_poll
[   79.961494] uvcvideo: uvc_v4l2_poll
[   79.969391] uvcvideo: uvc_v4l2_poll
[   79.969435] uvcvideo: uvc_v4l2_poll
[   79.969443] uvcvideo: uvc_v4l2_poll
[   79.977339] uvcvideo: uvc_v4l2_poll
[   79.977383] uvcvideo: uvc_v4l2_poll
[   79.977392] uvcvideo: uvc_v4l2_poll
[   79.985240] uvcvideo: uvc_v4l2_poll
[   79.985285] uvcvideo: uvc_v4l2_poll
[   79.985293] uvcvideo: uvc_v4l2_poll
[   79.993139] uvcvideo: uvc_v4l2_poll
[   79.993184] uvcvideo: uvc_v4l2_poll
[   79.993193] uvcvideo: uvc_v4l2_poll
[   80.001056] uvcvideo: uvc_v4l2_poll
[   80.001100] uvcvideo: uvc_v4l2_poll
[   80.001109] uvcvideo: uvc_v4l2_poll
[   80.008926] uvcvideo: uvc_v4l2_poll
[   80.008948] uvcvideo: uvc_v4l2_poll
[   80.008957] uvcvideo: uvc_v4l2_poll
[   80.040747] uvcvideo: uvc_v4l2_poll
[   80.041893] uvcvideo: uvc_v4l2_poll
[   80.042556] uvcvideo: uvc_v4l2_poll
[   80.048521] uvcvideo: uvc_v4l2_poll
[   80.048563] uvcvideo: uvc_v4l2_poll
[   80.048740] uvcvideo: uvc_v4l2_poll
[   80.056398] uvcvideo: uvc_v4l2_poll
[   80.056426] uvcvideo: uvc_v4l2_poll
[   80.056435] uvcvideo: uvc_v4l2_poll
[   80.064341] uvcvideo: uvc_v4l2_poll
[   80.064368] uvcvideo: uvc_v4l2_poll
[   80.064377] uvcvideo: uvc_v4l2_poll
[   80.072213] uvcvideo: uvc_v4l2_poll
[   80.072240] uvcvideo: uvc_v4l2_poll
[   80.072249] uvcvideo: uvc_v4l2_poll
[   80.080151] uvcvideo: uvc_v4l2_poll
[   80.080177] uvcvideo: uvc_v4l2_poll
[   80.080186] uvcvideo: uvc_v4l2_poll
[   80.088075] uvcvideo: uvc_v4l2_poll
[   80.088102] uvcvideo: uvc_v4l2_poll
[   80.088111] uvcvideo: uvc_v4l2_poll
[   80.096019] uvcvideo: uvc_v4l2_poll
[   80.096045] uvcvideo: uvc_v4l2_poll
[   80.096054] uvcvideo: uvc_v4l2_poll
[   80.103938] uvcvideo: uvc_v4l2_poll
[   80.103965] uvcvideo: uvc_v4l2_poll
[   80.103974] uvcvideo: uvc_v4l2_poll
[   80.111870] uvcvideo: uvc_v4l2_poll
[   80.111896] uvcvideo: uvc_v4l2_poll
[   80.111905] uvcvideo: uvc_v4l2_poll
[   80.119798] uvcvideo: uvc_v4l2_poll
[   80.119824] uvcvideo: uvc_v4l2_poll
[   80.119833] uvcvideo: uvc_v4l2_poll
[   80.127735] uvcvideo: uvc_v4l2_poll
[   80.127762] uvcvideo: uvc_v4l2_poll
[   80.127770] uvcvideo: uvc_v4l2_poll
[   80.135718] uvcvideo: uvc_v4l2_poll
[   80.135751] uvcvideo: uvc_v4l2_poll
[   80.135759] uvcvideo: uvc_v4l2_poll
[   80.143796] uvcvideo: uvc_v4l2_poll
[   80.143900] uvcvideo: uvc_v4l2_poll
[   80.143909] uvcvideo: uvc_v4l2_poll
[   80.151747] uvcvideo: uvc_v4l2_poll
[   80.151852] uvcvideo: uvc_v4l2_poll
[   80.151861] uvcvideo: uvc_v4l2_poll
[   80.159905] uvcvideo: uvc_v4l2_poll
[   80.160055] uvcvideo: uvc_v4l2_poll
[   80.160065] uvcvideo: uvc_v4l2_poll
[   80.167524] uvcvideo: uvc_v4l2_poll
[   80.167680] uvcvideo: uvc_v4l2_poll
[   80.168077] uvcvideo: uvc_v4l2_poll
[   80.175214] uvcvideo: uvc_v4l2_poll
[   80.175242] uvcvideo: uvc_v4l2_poll
[   80.175251] uvcvideo: uvc_v4l2_poll
[   80.183131] uvcvideo: uvc_v4l2_poll
[   80.183159] uvcvideo: uvc_v4l2_poll
[   80.183167] uvcvideo: uvc_v4l2_poll
[   80.191033] uvcvideo: uvc_v4l2_poll
[   80.191059] uvcvideo: uvc_v4l2_poll
[   80.191068] uvcvideo: uvc_v4l2_poll
[   80.198964] uvcvideo: uvc_v4l2_poll
[   80.199011] uvcvideo: uvc_v4l2_poll
[   80.199020] uvcvideo: uvc_v4l2_poll
[   80.206887] uvcvideo: uvc_v4l2_poll
[   80.206917] uvcvideo: uvc_v4l2_poll
[   80.206926] uvcvideo: uvc_v4l2_poll
[   80.214806] uvcvideo: uvc_v4l2_poll
[   80.214836] uvcvideo: uvc_v4l2_poll
[   80.214845] uvcvideo: uvc_v4l2_poll
[   80.222740] uvcvideo: uvc_v4l2_poll
[   80.222770] uvcvideo: uvc_v4l2_poll
[   80.222781] uvcvideo: uvc_v4l2_poll
[   80.230683] uvcvideo: uvc_v4l2_poll
[   80.230743] uvcvideo: uvc_v4l2_poll
[   80.230967] uvcvideo: uvc_v4l2_poll
[   80.238588] uvcvideo: uvc_v4l2_poll
[   80.238622] uvcvideo: uvc_v4l2_poll
[   80.238631] uvcvideo: uvc_v4l2_poll
[   80.246480] uvcvideo: uvc_v4l2_poll
[   80.246514] uvcvideo: uvc_v4l2_poll
[   80.246523] uvcvideo: uvc_v4l2_poll
[   80.254443] uvcvideo: uvc_v4l2_poll
[   80.254475] uvcvideo: uvc_v4l2_poll
[   80.254484] uvcvideo: uvc_v4l2_poll
[   80.262335] uvcvideo: uvc_v4l2_poll
[   80.262367] uvcvideo: uvc_v4l2_poll
[   80.262376] uvcvideo: uvc_v4l2_poll
[   80.270220] uvcvideo: uvc_v4l2_poll
[   80.270252] uvcvideo: uvc_v4l2_poll
[   80.270261] uvcvideo: uvc_v4l2_poll
[   80.278142] uvcvideo: uvc_v4l2_poll
[   80.278174] uvcvideo: uvc_v4l2_poll
[   80.278183] uvcvideo: uvc_v4l2_poll
[   80.286102] uvcvideo: uvc_v4l2_poll
[   80.286134] uvcvideo: uvc_v4l2_poll
[   80.286143] uvcvideo: uvc_v4l2_poll
[   80.294005] uvcvideo: uvc_v4l2_poll
[   80.294040] uvcvideo: uvc_v4l2_poll
[   80.294049] uvcvideo: uvc_v4l2_poll
[   80.301923] uvcvideo: uvc_v4l2_poll
[   80.301955] uvcvideo: uvc_v4l2_poll
[   80.301964] uvcvideo: uvc_v4l2_poll
[   80.309884] uvcvideo: uvc_v4l2_poll
[   80.309916] uvcvideo: uvc_v4l2_poll
[   80.309925] uvcvideo: uvc_v4l2_poll
[   80.317826] uvcvideo: uvc_v4l2_poll
[   80.317859] uvcvideo: uvc_v4l2_poll
[   80.317868] uvcvideo: uvc_v4l2_poll
[   80.325738] uvcvideo: uvc_v4l2_poll
[   80.325770] uvcvideo: uvc_v4l2_poll
[   80.325779] uvcvideo: uvc_v4l2_poll
[   80.365383] uvcvideo: uvc_v4l2_poll
[   80.365418] uvcvideo: uvc_v4l2_poll
[   80.365427] uvcvideo: uvc_v4l2_poll
[   80.373322] uvcvideo: uvc_v4l2_poll
[   80.373374] uvcvideo: uvc_v4l2_poll
[   80.373383] uvcvideo: uvc_v4l2_poll
[   80.381242] uvcvideo: uvc_v4l2_poll
[   80.381293] uvcvideo: uvc_v4l2_poll
[   80.381302] uvcvideo: uvc_v4l2_poll
[   80.397058] uvcvideo: uvc_v4l2_poll
[   80.397109] uvcvideo: uvc_v4l2_poll
[   80.397118] uvcvideo: uvc_v4l2_poll
[   80.420830] uvcvideo: uvc_v4l2_poll
[   80.420868] uvcvideo: uvc_v4l2_poll
[   80.420892] uvcvideo: uvc_v4l2_poll
[   80.428729] uvcvideo: uvc_v4l2_poll
[   80.428786] uvcvideo: uvc_v4l2_poll
[   80.428795] uvcvideo: uvc_v4l2_poll
[   80.761472] uvcvideo: uvc_v4l2_poll
[   80.761563] uvcvideo: uvc_v4l2_poll
[   80.761572] uvcvideo: uvc_v4l2_poll
[   80.816835] uvcvideo: uvc_v4l2_poll
[   80.816871] uvcvideo: uvc_v4l2_poll
[   80.816880] uvcvideo: uvc_v4l2_poll
[   80.832660] uvcvideo: uvc_v4l2_poll
[   80.832698] uvcvideo: uvc_v4l2_poll
[   80.832707] uvcvideo: uvc_v4l2_poll
[   80.895960] uvcvideo: uvc_v4l2_poll
[   80.895993] uvcvideo: uvc_v4l2_poll
[   80.896001] uvcvideo: uvc_v4l2_poll
[   81.165295] uvcvideo: uvc_v4l2_poll
[   81.165332] uvcvideo: uvc_v4l2_poll
[   81.165341] uvcvideo: uvc_v4l2_poll
[   81.283293] uvcvideo: uvc_v4l2_poll
[   81.283307] uvcvideo: uvc_v4l2_poll
[   81.371250] uvcvideo: uvc_v4l2_poll
[   81.371774] uvcvideo: uvc_v4l2_poll
[   81.371789] uvcvideo: uvc_v4l2_poll
[   81.569188] uvcvideo: uvc_v4l2_poll
[   81.809261] uvcvideo: uvc_v4l2_release
[   81.809408] uvcvideo: uvc_v4l2_open
[   81.813568] uvcvideo: uvc_v4l2_poll
[   81.813659] uvcvideo: uvc_v4l2_poll
[   81.813812] uvcvideo: uvc_v4l2_poll
[   81.813833] uvcvideo: uvc_v4l2_poll
[   82.337991] uvcvideo: uvc_v4l2_poll
[   82.338124] uvcvideo: uvc_v4l2_poll
[   82.338133] uvcvideo: uvc_v4l2_poll
[   82.345873] uvcvideo: uvc_v4l2_poll
[   82.346007] uvcvideo: uvc_v4l2_poll
[   82.346015] uvcvideo: uvc_v4l2_poll
[   82.385422] uvcvideo: uvc_v4l2_poll
[   82.385555] uvcvideo: uvc_v4l2_poll
[   82.385564] uvcvideo: uvc_v4l2_poll
[   82.401247] uvcvideo: uvc_v4l2_poll
[   82.401381] uvcvideo: uvc_v4l2_poll
[   82.401389] uvcvideo: uvc_v4l2_poll
[   82.409166] uvcvideo: uvc_v4l2_poll
[   82.409298] uvcvideo: uvc_v4l2_poll
[   82.409307] uvcvideo: uvc_v4l2_poll
[   82.417167] uvcvideo: uvc_v4l2_poll
[   82.417300] uvcvideo: uvc_v4l2_poll
[   82.417309] uvcvideo: uvc_v4l2_poll
[   82.425044] uvcvideo: uvc_v4l2_poll
[   82.425177] uvcvideo: uvc_v4l2_poll
[   82.425186] uvcvideo: uvc_v4l2_poll
[   82.432955] uvcvideo: uvc_v4l2_poll
[   82.433087] uvcvideo: uvc_v4l2_poll
[   82.433096] uvcvideo: uvc_v4l2_poll
[   82.440918] uvcvideo: uvc_v4l2_poll
[   82.441077] uvcvideo: uvc_v4l2_poll
[   82.441490] uvcvideo: uvc_v4l2_poll
[   82.448769] uvcvideo: uvc_v4l2_poll
[   82.448888] uvcvideo: uvc_v4l2_poll
[   82.448897] uvcvideo: uvc_v4l2_poll
[   82.456796] uvcvideo: uvc_v4l2_poll
[   82.456898] uvcvideo: uvc_v4l2_poll
[   82.456906] uvcvideo: uvc_v4l2_poll
[   82.464485] uvcvideo: uvc_v4l2_poll
[   82.468120] uvcvideo: uvc_v4l2_poll
[   82.468989] uvcvideo: uvc_v4l2_poll
[   82.472436] uvcvideo: uvc_v4l2_poll
[   82.472592] uvcvideo: uvc_v4l2_poll
[   82.472602] uvcvideo: uvc_v4l2_poll
[   82.480179] uvcvideo: uvc_v4l2_poll
[   82.480323] uvcvideo: uvc_v4l2_poll
[   82.480332] uvcvideo: uvc_v4l2_poll
[   82.488050] uvcvideo: uvc_v4l2_poll
[   82.488152] uvcvideo: uvc_v4l2_poll
[   82.488160] uvcvideo: uvc_v4l2_poll
[   82.496003] uvcvideo: uvc_v4l2_poll
[   82.496105] uvcvideo: uvc_v4l2_poll
[   82.496114] uvcvideo: uvc_v4l2_poll
[   82.503855] uvcvideo: uvc_v4l2_poll
[   82.503955] uvcvideo: uvc_v4l2_poll
[   82.503964] uvcvideo: uvc_v4l2_poll
[   82.511863] uvcvideo: uvc_v4l2_poll
[   82.511964] uvcvideo: uvc_v4l2_poll
[   82.511973] uvcvideo: uvc_v4l2_poll
[   82.520045] uvcvideo: uvc_v4l2_poll
[   82.520147] uvcvideo: uvc_v4l2_poll
[   82.520156] uvcvideo: uvc_v4l2_poll
[   82.528003] uvcvideo: uvc_v4l2_poll
[   82.528106] uvcvideo: uvc_v4l2_poll
[   82.528115] uvcvideo: uvc_v4l2_poll
[   82.535935] uvcvideo: uvc_v4l2_poll
[   82.536037] uvcvideo: uvc_v4l2_poll
[   82.536046] uvcvideo: uvc_v4l2_poll
[   82.543676] uvcvideo: uvc_v4l2_poll
[   82.543795] uvcvideo: uvc_v4l2_poll
[   82.543803] uvcvideo: uvc_v4l2_poll
[   82.551572] uvcvideo: uvc_v4l2_poll
[   82.551682] uvcvideo: uvc_v4l2_poll
[   82.551691] uvcvideo: uvc_v4l2_poll
[   82.559568] uvcvideo: uvc_v4l2_poll
[   82.559702] uvcvideo: uvc_v4l2_poll
[   82.559711] uvcvideo: uvc_v4l2_poll
[   82.567481] uvcvideo: uvc_v4l2_poll
[   82.567618] uvcvideo: uvc_v4l2_poll
[   82.567628] uvcvideo: uvc_v4l2_poll
[   82.575422] uvcvideo: uvc_v4l2_poll
[   82.575525] uvcvideo: uvc_v4l2_poll
[   82.575533] uvcvideo: uvc_v4l2_poll
[   82.583404] uvcvideo: uvc_v4l2_poll
[   82.584066] uvcvideo: uvc_v4l2_poll
[   82.584075] uvcvideo: uvc_v4l2_poll
[   82.590981] uvcvideo: uvc_v4l2_poll
[   82.591082] uvcvideo: uvc_v4l2_poll
[   82.591090] uvcvideo: uvc_v4l2_poll
[   82.599271] uvcvideo: uvc_v4l2_poll
[   82.599373] uvcvideo: uvc_v4l2_poll
[   82.599382] uvcvideo: uvc_v4l2_poll
[   82.607129] uvcvideo: uvc_v4l2_poll
[   82.607231] uvcvideo: uvc_v4l2_poll
[   82.607240] uvcvideo: uvc_v4l2_poll
[   82.614965] uvcvideo: uvc_v4l2_poll
[   82.615066] uvcvideo: uvc_v4l2_poll
[   82.615074] uvcvideo: uvc_v4l2_poll
[   82.623010] uvcvideo: uvc_v4l2_poll
[   82.623112] uvcvideo: uvc_v4l2_poll
[   82.623121] uvcvideo: uvc_v4l2_poll
[   82.630951] uvcvideo: uvc_v4l2_poll
[   82.631053] uvcvideo: uvc_v4l2_poll
[   82.631062] uvcvideo: uvc_v4l2_poll
[   82.638644] uvcvideo: uvc_v4l2_poll
[   82.638765] uvcvideo: uvc_v4l2_poll
[   82.638774] uvcvideo: uvc_v4l2_poll
[   82.899865] uvcvideo: uvc_v4l2_poll
[   82.899984] uvcvideo: uvc_v4l2_poll
[   82.899992] uvcvideo: uvc_v4l2_poll
[   82.907997] uvcvideo: uvc_v4l2_poll
[   82.908118] uvcvideo: uvc_v4l2_poll
[   82.908126] uvcvideo: uvc_v4l2_poll
[   82.915939] uvcvideo: uvc_v4l2_poll
[   82.916062] uvcvideo: uvc_v4l2_poll
[   82.916071] uvcvideo: uvc_v4l2_poll
[   82.924443] uvcvideo: uvc_v4l2_poll
[   82.924546] uvcvideo: uvc_v4l2_poll
[   82.924555] uvcvideo: uvc_v4l2_poll
[   82.931755] uvcvideo: uvc_v4l2_poll
[   82.931859] uvcvideo: uvc_v4l2_poll
[   82.931868] uvcvideo: uvc_v4l2_poll
[   82.939689] uvcvideo: uvc_v4l2_poll
[   82.939808] uvcvideo: uvc_v4l2_poll
[   82.939816] uvcvideo: uvc_v4l2_poll
[   82.947269] uvcvideo: uvc_v4l2_poll
[   82.947363] uvcvideo: uvc_v4l2_poll
[   82.947372] uvcvideo: uvc_v4l2_poll
[   82.955331] uvcvideo: uvc_v4l2_poll
[   82.955430] uvcvideo: uvc_v4l2_poll
[   82.955439] uvcvideo: uvc_v4l2_poll
[   82.963280] uvcvideo: uvc_v4l2_poll
[   82.963381] uvcvideo: uvc_v4l2_poll
[   82.963390] uvcvideo: uvc_v4l2_poll
[   82.971232] uvcvideo: uvc_v4l2_poll
[   82.971335] uvcvideo: uvc_v4l2_poll
[   82.971344] uvcvideo: uvc_v4l2_poll
[   82.979160] uvcvideo: uvc_v4l2_poll
[   82.979262] uvcvideo: uvc_v4l2_poll
[   82.979271] uvcvideo: uvc_v4l2_poll
[   82.987201] uvcvideo: uvc_v4l2_poll
[   82.987304] uvcvideo: uvc_v4l2_poll
[   82.987313] uvcvideo: uvc_v4l2_poll
[   82.994989] uvcvideo: uvc_v4l2_poll
[   82.995092] uvcvideo: uvc_v4l2_poll
[   82.995100] uvcvideo: uvc_v4l2_poll
[   83.003081] uvcvideo: uvc_v4l2_poll
[   83.003183] uvcvideo: uvc_v4l2_poll
[   83.003192] uvcvideo: uvc_v4l2_poll
[   83.010827] uvcvideo: uvc_v4l2_poll
[   83.010930] uvcvideo: uvc_v4l2_poll
[   83.010939] uvcvideo: uvc_v4l2_poll
[   83.018919] uvcvideo: uvc_v4l2_poll
[   83.019020] uvcvideo: uvc_v4l2_poll
[   83.019029] uvcvideo: uvc_v4l2_poll
[   83.026973] uvcvideo: uvc_v4l2_poll
[   83.027075] uvcvideo: uvc_v4l2_poll
[   83.027084] uvcvideo: uvc_v4l2_poll
[   83.034840] uvcvideo: uvc_v4l2_poll
[   83.034943] uvcvideo: uvc_v4l2_poll
[   83.034951] uvcvideo: uvc_v4l2_poll
[   83.283145] uvcvideo: uvc_v4l2_poll
[   83.283180] uvcvideo: uvc_v4l2_poll
[   83.706839] uvcvideo: uvc_v4l2_poll
[   83.706916] uvcvideo: uvc_v4l2_poll
[   83.914449] uvcvideo: uvc_v4l2_poll
[   83.919715] uvcvideo: uvc_v4l2_poll
[   83.919726] uvcvideo: uvc_v4l2_poll
[   84.037211] uvcvideo: uvc_v4l2_poll
[   84.037307] uvcvideo: uvc_v4l2_poll
[   84.037316] uvcvideo: uvc_v4l2_poll
[   84.037418] uvcvideo: uvc_v4l2_poll
[   84.037450] uvcvideo: uvc_v4l2_poll
[   84.207112] uvcvideo: uvc_v4l2_poll
[   84.207181] uvcvideo: uvc_v4l2_poll
[   84.207325] uvcvideo: uvc_v4l2_poll
[   84.207422] uvcvideo: uvc_v4l2_poll
[   84.207434] uvcvideo: uvc_v4l2_poll
[   84.207490] uvcvideo: uvc_v4l2_poll
[   84.207510] uvcvideo: uvc_v4l2_poll
[   84.207518] uvcvideo: uvc_v4l2_poll
[   84.207547] uvcvideo: uvc_v4l2_poll
[   84.207561] uvcvideo: uvc_v4l2_poll
[   84.207617] uvcvideo: uvc_v4l2_poll
[   84.207630] uvcvideo: uvc_v4l2_poll
[   84.207637] uvcvideo: uvc_v4l2_poll
[   84.207759] uvcvideo: uvc_v4l2_poll
[   84.207786] uvcvideo: uvc_v4l2_poll
[   84.207795] uvcvideo: uvc_v4l2_poll
[   84.208014] uvcvideo: uvc_v4l2_poll
[   84.209595] uvcvideo: uvc_v4l2_poll
[   84.224538] uvcvideo: uvc_v4l2_poll
[   84.224782] uvcvideo: uvc_v4l2_poll
[   84.224798] uvcvideo: uvc_v4l2_poll
[   84.372035] uvcvideo: uvc_v4l2_poll
[   84.372109] uvcvideo: uvc_v4l2_poll
[   84.372118] uvcvideo: uvc_v4l2_poll
[   84.724220] uvcvideo: uvc_v4l2_poll
[   84.724292] uvcvideo: uvc_v4l2_poll
[   84.724399] uvcvideo: uvc_v4l2_poll
[   84.724546] uvcvideo: uvc_v4l2_release
[   87.069428] uvcvideo: Suspending interface 1
[   87.069432] uvcvideo: Suspending interface 0

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="lsusb.log"


Bus 001 Device 003: ID 04f2:b5c5 Chicony Electronics Co., Ltd HD WebCam
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x04f2 Chicony Electronics Co., Ltd
  idProduct          0xb5c5 
  bcdDevice           96.18
  iManufacturer           3 Generic
  iProduct                1 HD WebCam
  iSerial                 2 200901010001
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x021e
    bNumInterfaces          2
    bConfigurationValue     1
    iConfiguration          4 USB Camera
    bmAttributes         0x80
      (Bus Powered)
    MaxPower              500mA
    Interface Association:
      bLength                 8
      bDescriptorType        11
      bFirstInterface         0
      bInterfaceCount         2
      bFunctionClass         14 Video
      bFunctionSubClass       3 Video Interface Collection
      bFunctionProtocol       0 
      iFunction               5 HD WebCam
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0 
      iInterface              5 HD WebCam
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.00
        wTotalLength       0x004e
        dwClockFrequency       15.000000MHz
        bInCollection           1
        baInterfaceNr( 0)       1
      VideoControl Interface Descriptor:
        bLength                18
        bDescriptorType        36
        bDescriptorSubtype      2 (INPUT_TERMINAL)
        bTerminalID             1
        wTerminalType      0x0201 Camera Sensor
        bAssocTerminal          0
        iTerminal               0 
        wObjectiveFocalLengthMin      0
        wObjectiveFocalLengthMax      0
        wOcularFocalLength            0
        bControlSize                  3
        bmControls           0x0000000a
          Auto-Exposure Mode
          Exposure Time (Absolute)
      VideoControl Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      5 (PROCESSING_UNIT)
      Warning: Descriptor too short
        bUnitID                 2
        bSourceID               1
        wMaxMultiplier          0
        bControlSize            2
        bmControls     0x0000157f
          Brightness
          Contrast
          Hue
          Saturation
          Sharpness
          Gamma
          White Balance Temperature
          Backlight Compensation
          Power Line Frequency
          White Balance Temperature, Auto
        iProcessing             0 
        bmVideoStandards     0x09
          None
          SECAM - 625/50
      VideoControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             3
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               4
        iTerminal               0 
      VideoControl Interface Descriptor:
        bLength                27
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 4
        guidExtensionCode         {1229a78c-47b4-4094-b0ce-db07386fb938}
        bNumControl             2
        bNrPins                 1
        baSourceID( 0)          2
        bControlSize            2
        bmControls( 0)       0x00
        bmControls( 1)       0x06
        iExtension              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x83  EP 3 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0010  1x 16 bytes
        bInterval               6
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      VideoStreaming Interface Descriptor:
        bLength                            15
        bDescriptorType                    36
        bDescriptorSubtype                  1 (INPUT_HEADER)
        bNumFormats                         2
        wTotalLength                   0x0131
        bEndPointAddress                  129
        bmInfo                              0
        bTerminalLink                       3
        bStillCaptureMethod                 1
        bTriggerSupport                     1
        bTriggerUsage                       0
        bControlSize                        1
        bmaControls( 0)                     0
        bmaControls( 1)                     0
      VideoStreaming Interface Descriptor:
        bLength                            11
        bDescriptorType                    36
        bDescriptorSubtype                  6 (FORMAT_MJPEG)
        bFormatIndex                        1
        bNumFrameDescriptors                4
        bFlags                              1
          Fixed-size samples: Yes
        bDefaultFrameIndex                  1
        bAspectRatioX                       0
        bAspectRatioY                       0
        bmInterlaceFlags                 0x00
          Interlaced stream or variable: No
          Fields per frame: 1 fields
          Field 1 first: No
          Field pattern: Field 1 only
        bCopyProtect                        0
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         1
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                442368000
        dwMaxBitRate                442368000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         2
        bmCapabilities                   0x01
          Still image supported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                147456000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         3
        bmCapabilities                   0x01
          Still image supported
        wWidth                            640
        wHeight                           360
        dwMinBitRate                110592000
        dwMaxBitRate                110592000
        dwMaxVideoFrameBufferSize      460800
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         4
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                442368000
        dwMaxBitRate                442368000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                             6
        bDescriptorType                    36
        bDescriptorSubtype                 13 (COLORFORMAT)
        bColorPrimaries                     1 (BT.709,sRGB)
        bTransferCharacteristics            1 (BT.709)
        bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
      VideoStreaming Interface Descriptor:
        bLength                            27
        bDescriptorType                    36
        bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
        bFormatIndex                        2
        bNumFrameDescriptors                4
        guidFormat                            {32595559-0000-0010-8000-00aa00389b71}
        bBitsPerPixel                      16
        bDefaultFrameIndex                  1
        bAspectRatioX                       0
        bAspectRatioY                       0
        bmInterlaceFlags                 0x00
          Interlaced stream or variable: No
          Fields per frame: 2 fields
          Field 1 first: No
          Field pattern: Field 1 only
        bCopyProtect                        0
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         1
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                147456000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval        1000000
        bFrameIntervalType                  1
        dwFrameInterval( 0)           1000000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         2
        bmCapabilities                   0x01
          Still image supported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                147456000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         3
        bmCapabilities                   0x01
          Still image supported
        wWidth                            640
        wHeight                           360
        dwMinBitRate                110592000
        dwMaxBitRate                110592000
        dwMaxVideoFrameBufferSize      460800
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         4
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                147456000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval        1000000
        bFrameIntervalType                  1
        dwFrameInterval( 0)           1000000
      VideoStreaming Interface Descriptor:
        bLength                             6
        bDescriptorType                    36
        bDescriptorSubtype                 13 (COLORFORMAT)
        bColorPrimaries                     1 (BT.709,sRGB)
        bTransferCharacteristics            1 (BT.709)
        bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       1
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0080  1x 128 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       2
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       3
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       4
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0b00  2x 768 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       5
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0c00  2x 1024 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       6
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x1380  3x 896 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       7
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x1400  3x 1024 bytes
        bInterval               1
Device Qualifier (for other device speed):
  bLength                10
  bDescriptorType         6
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  bNumConfigurations      1
Device Status:     0x0000
  (Bus Powered)

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--ZGiS0Q5IWpPtfppv--

