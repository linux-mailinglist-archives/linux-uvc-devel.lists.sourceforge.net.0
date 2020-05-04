Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 674BF1C491C
	for <lists+linux-uvc-devel@lfdr.de>; Mon,  4 May 2020 23:34:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jViif-0006OA-OR; Mon, 04 May 2020 21:33:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrea0spam@gmail.com>) id 1jViid-0006Ny-Jr
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 21:33:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:
 From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T7JKSZ7Uf2Y7xKRNgiAe+2uT4amDZ8OpRwsKI3Qa04A=; b=gsuOYwdR4+dILbn2WbCj0orYo0
 t1S/K+D64t03yyIeoPEYDFxAxpt/JW9VuD0R6wd19AxwU5GXOvwpRIP03xvKh0foiokMwyqdjl6fa
 0eaBV+93Ug4A5xubKcQ98+Hfb54BuSjZvjs6/U5cf7MJam1sRzdZI0PigbfPA9lJpTpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T7JKSZ7Uf2Y7xKRNgiAe+2uT4amDZ8OpRwsKI3Qa04A=; b=h
 rmuErYJtUHO+lhAYDdfr5N6QAbYwei+Ml91mzj0fpEqWYdgqyioYRXstzC0Djts/+uHV7nQUIxBWn
 Vdw/pbHk7/URd1BtkW+AtZBeQc1/NavyYBBbl2rq/KDKHwQPH56FSt2g0Vj2x0mZXoJ7zP/OqISX6
 AInKMIyL1yuYSviE=;
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jViiZ-007U40-Gn
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 21:33:43 +0000
Received: by mail-wr1-f42.google.com with SMTP id k1so266747wrx.4
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 04 May 2020 14:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language;
 bh=T7JKSZ7Uf2Y7xKRNgiAe+2uT4amDZ8OpRwsKI3Qa04A=;
 b=NRLW2UEuT8tnzmNo/tkvtRU6X3InSdIMeE1KWoYYnWRa8AB3YMYIbfSORpNgfNv7Jw
 cf/Mp3Nnh9FWgc9cjKG+n2nt+8n/tQ6jhBVSgm+n6nwZLu+teuHrz6KmVNngo7LEqjR2
 fR4R7XVgyfcG4DIlj0Za9NFYYfS57EC4T1GxrKBuPa/c09INg2ILZAs+qiEtSk29pzhh
 GPcqliWCcIPXAZDqyqB0LYtgvi1IeKKQ6QtGVTpPPUy3obDZ3JgR3pyRlXPvrtcz3yKn
 nXw14Gdam42fWysLE2wJ8JppkA/vIH0tJMpDh+72zWo+RARInj6UmxNXLIq0KH7lkZJx
 tKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language;
 bh=T7JKSZ7Uf2Y7xKRNgiAe+2uT4amDZ8OpRwsKI3Qa04A=;
 b=f2msbs/VfgR2RazVbkU9ctkr220jjEXA9RyAH0d8HvHvZPUYqGu49zWjZkH6B+m6NS
 Nk7zSSNzMwjYfpTzLGAngk5ehgI7ZeMMyDhriqq/sl/hE1XE/RdGeJuBnjzQh9sf/Q2U
 grGV41N1gbMG8DGMsSFOcJjUTV14i2ZdZMBRHuPDhJ0pFpEc+hOJbsc7M6m6illfSpg4
 mhIKW4IysEb7Oum8+P2nG++pbd6BhXdZu6cvI23/2xQ0C/VMAQ/WjlVjFv733jIk5fRe
 k5HzRhVW6Utf/WeFtNOW/VaPw0zFgqGKtIceL7cIcUpGr7sBqqsZT7T3onDxMyhfLM16
 7Z2w==
X-Gm-Message-State: AGi0PuYS9AYWSmE9OVdxZa36aR+YK/cMVGLL9HGl7kfxgX1h1sXmP37Q
 tHoKUKrulJgcwJP+uGjJvJvrnUbSyXk=
X-Google-Smtp-Source: APiQypJsrjWPycH/TwOVDBpoABzfXoEBYH/6DV3MvUxa6cenn1M65DtAzd/B+ttPZ2mbx0jZ21pI9Q==
X-Received: by 2002:adf:8295:: with SMTP id 21mr1071284wrc.383.1588628012787; 
 Mon, 04 May 2020 14:33:32 -0700 (PDT)
Received: from [192.168.1.248]
 (host45-181-dynamic.5-87-r.retail.telecomitalia.it. [87.5.181.45])
 by smtp.gmail.com with ESMTPSA id c190sm428896wme.4.2020.05.04.14.33.31
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 14:33:32 -0700 (PDT)
To: linux-uvc-devel@lists.sourceforge.net
From: Andrea Santa Pazienza <andrea0spam@gmail.com>
Message-ID: <63c3f962-6ca9-7841-5f7c-214f2c89f82c@gmail.com>
Date: Mon, 4 May 2020 23:33:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------35305762424F618AEA087788"
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andrea0spam[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jViiZ-007U40-Gn
Subject: [linux-uvc-devel] Chicony webcam 042f:b483 on Asus F200M
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

This is a multi-part message in MIME format.
--------------35305762424F618AEA087788
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,
I'm trying to make this webcam work on Debian 10.3:
Chicony 04f2:b483.

According to https://www.ideasonboard.org/uvc/faq/ I checked it is a UVC 
webcam

xxxxxx@xxxxxx:~$ lsusb -d 04f2:b483 -v | grep "14 Video"
Couldn't open device, some information will be missing
       bFunctionClass         14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video

I have also many problems

sudo echo 0xffff > /sys/module/uvcvideo/parameters/trace no reply at all

sudo echo 0 > /sys/module/uvcvideo/parameters/trace no reply at all

lsmod sometimes shows me the device and sometimes not.

I hope someone can help.



--------------35305762424F618AEA087788
Content-Type: text/x-log; charset=UTF-8;
 name="dmesg.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="dmesg.log"

[    0.000000] Linux version 4.19.0-8-amd64 (debian-kernel@lists.debian.org) (gcc version 8.3.0 (Debian 8.3.0-6)) #1 SMP Debian 4.19.98-1+deb10u1 (2020-04-27)
[    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-4.19.0-8-amd64 root=UUID=fef35d13-e472-4b23-8df9-d898d89ed594 ro quiet splash resume=UUID=68cd4c6e-9939-43cc-bdbf-ab9ffdce243c
[    0.000000] x86/fpu: x87 FPU will use FXSAVE
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000008efff] usable
[    0.000000] BIOS-e820: [mem 0x000000000008f000-0x000000000008ffff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x0000000000090000-0x000000000009ffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000001fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000020000000-0x00000000200fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000020100000-0x00000000b8d4afff] usable
[    0.000000] BIOS-e820: [mem 0x00000000b8d4b000-0x00000000b8d7afff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000b8d7b000-0x00000000b8ec6fff] usable
[    0.000000] BIOS-e820: [mem 0x00000000b8ec7000-0x00000000b93b7fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x00000000b93b8000-0x00000000b9b49fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000b9b4a000-0x00000000b9babfff] type 20
[    0.000000] BIOS-e820: [mem 0x00000000b9bac000-0x00000000b9bacfff] usable
[    0.000000] BIOS-e820: [mem 0x00000000b9bad000-0x00000000b9beefff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000b9bef000-0x00000000b9d64fff] usable
[    0.000000] BIOS-e820: [mem 0x00000000b9d65000-0x00000000b9ff9fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000b9ffa000-0x00000000b9ffffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000e00f8000-0x00000000e00f8fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed01000-0x00000000fed01fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ffc00000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000013fffffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] efi: EFI v2.31 by American Megatrends
[    0.000000] efi:  ACPI=0xb93a2000  ACPI 2.0=0xb93a2000  SMBIOS=0xf04d0  MPS=0xfd540 
[    0.000000] secureboot: Secure boot could not be determined (mode 0)
[    0.000000] SMBIOS 2.8 present.
[    0.000000] DMI: ASUSTeK COMPUTER INC. X200MA/X200MA, BIOS X200MA.504 11/13/2014
[    0.000000] tsc: Detected 2165.800 MHz processor
[    0.002640] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.002644] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.002656] last_pfn = 0x140000 max_arch_pfn = 0x400000000
[    0.002661] MTRR default type: uncachable
[    0.002663] MTRR fixed ranges enabled:
[    0.002665]   00000-9FFFF write-back
[    0.002667]   A0000-BFFFF uncachable
[    0.002669]   C0000-E7FFF write-through
[    0.002671]   E8000-FFFFF write-protect
[    0.002673] MTRR variable ranges enabled:
[    0.002676]   0 base 000000000 mask F80000000 write-back
[    0.002678]   1 base 080000000 mask FC0000000 write-back
[    0.002680]   2 base 0BA000000 mask FFE000000 uncachable
[    0.002682]   3 base 0BC000000 mask FFC000000 uncachable
[    0.002685]   4 base 100000000 mask FC0000000 write-back
[    0.002686]   5 disabled
[    0.002688]   6 disabled
[    0.002689]   7 disabled
[    0.002934] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT  
[    0.003045] e820: update [mem 0xba000000-0xffffffff] usable ==> reserved
[    0.003054] last_pfn = 0xba000 max_arch_pfn = 0x400000000
[    0.008558] found SMP MP-table at [mem 0x000fd700-0x000fd70f]
[    0.008596] BRK [0x3e401000, 0x3e401fff] PGTABLE
[    0.008600] BRK [0x3e402000, 0x3e402fff] PGTABLE
[    0.008602] BRK [0x3e403000, 0x3e403fff] PGTABLE
[    0.008678] BRK [0x3e404000, 0x3e404fff] PGTABLE
[    0.008683] BRK [0x3e405000, 0x3e405fff] PGTABLE
[    0.009128] BRK [0x3e406000, 0x3e406fff] PGTABLE
[    0.009254] BRK [0x3e407000, 0x3e407fff] PGTABLE
[    0.009324] BRK [0x3e408000, 0x3e408fff] PGTABLE
[    0.009417] BRK [0x3e409000, 0x3e409fff] PGTABLE
[    0.009553] RAMDISK: [mem 0x3397b000-0x35cb4fff]
[    0.009562] ACPI: Early table checksum verification disabled
[    0.009567] ACPI: RSDP 0x00000000B93A2000 000024 (v02 _ASUS_)
[    0.009573] ACPI: XSDT 0x00000000B93A2080 00008C (v01 _ASUS_ Notebook 01072009 AMI  00010013)
[    0.009581] ACPI: FACP 0x00000000B93B3ED8 00010C (v05 _ASUS_ Notebook 01072009 AMI  00010013)
[    0.009589] ACPI BIOS Warning (bug): 32/64X length mismatch in FADT/Gpe0Block: 128/32 (20180810/tbfadt-569)
[    0.009596] ACPI: DSDT 0x00000000B93A21A0 011D34 (v02 _ASUS_ Notebook 01072009 INTL 20120913)
[    0.009602] ACPI: FACS 0x00000000B93B7F80 000040
[    0.009607] ACPI: APIC 0x00000000B93B3FE8 000068 (v03 _ASUS_ Notebook 01072009 AMI  00010013)
[    0.009613] ACPI: FPDT 0x00000000B93B4050 000044 (v01 _ASUS_ Notebook 01072009 AMI  00010013)
[    0.009619] ACPI: MCFG 0x00000000B93B4098 00003C (v01 _ASUS_ Notebook 01072009 MSFT 00000097)
[    0.009624] ACPI: LPIT 0x00000000B93B40D8 000104 (v01 _ASUS_ Notebook 00000003 VLV2 0100000D)
[    0.009630] ACPI: ECDT 0x00000000B93B41E0 0000C1 (v01 _ASUS_ Notebook 01072009 AMI. 00000005)
[    0.009636] ACPI: HPET 0x00000000B93B42A8 000038 (v01 _ASUS_ Notebook 01072009 AMI. 00000005)
[    0.009642] ACPI: SSDT 0x00000000B93B42E0 000763 (v01 PmRef  CpuPm    00003000 INTL 20061109)
[    0.009648] ACPI: SSDT 0x00000000B93B4A48 000290 (v01 PmRef  Cpu0Tst  00003000 INTL 20061109)
[    0.009654] ACPI: SSDT 0x00000000B93B4CD8 00017A (v01 PmRef  ApTst    00003000 INTL 20061109)
[    0.009659] ACPI: UEFI 0x00000000B93B4E58 000042 (v01 _ASUS_ Notebook 00000000      00000000)
[    0.009665] ACPI: BGRT 0x00000000B93B4EA0 000038 (v00 _ASUS_ Notebook 01072009 AMI  00010013)
[    0.009671] ACPI: MSDM 0x00000000B8D78F98 000055 (v03 _ASUS_ Notebook 00000000 ASUS 00000001)
[    0.009686] ACPI: Local APIC address 0xfee00000
[    0.009857] No NUMA configuration found
[    0.009859] Faking a node at [mem 0x0000000000000000-0x000000013fffffff]
[    0.009866] NODE_DATA(0) allocated [mem 0x13fff7000-0x13fffbfff]
[    0.009918] Zone ranges:
[    0.009920]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.009923]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.009925]   Normal   [mem 0x0000000100000000-0x000000013fffffff]
[    0.009927]   Device   empty
[    0.009928] Movable zone start for each node
[    0.009930] Early memory node ranges
[    0.009932]   node   0: [mem 0x0000000000001000-0x000000000008efff]
[    0.009933]   node   0: [mem 0x0000000000090000-0x000000000009ffff]
[    0.009935]   node   0: [mem 0x0000000000100000-0x000000001fffffff]
[    0.009937]   node   0: [mem 0x0000000020100000-0x00000000b8d4afff]
[    0.009938]   node   0: [mem 0x00000000b8d7b000-0x00000000b8ec6fff]
[    0.009940]   node   0: [mem 0x00000000b9bac000-0x00000000b9bacfff]
[    0.009941]   node   0: [mem 0x00000000b9bef000-0x00000000b9d64fff]
[    0.009943]   node   0: [mem 0x00000000b9ffa000-0x00000000b9ffffff]
[    0.009944]   node   0: [mem 0x0000000100000000-0x000000013fffffff]
[    0.009951] Reserved but unavailable: 98 pages
[    0.009953] Initmem setup node 0 [mem 0x0000000000001000-0x000000013fffffff]
[    0.009957] On node 0 totalpages: 1019570
[    0.009959]   DMA zone: 64 pages used for memmap
[    0.009960]   DMA zone: 40 pages reserved
[    0.009962]   DMA zone: 3998 pages, LIFO batch:0
[    0.010162]   DMA32 zone: 11773 pages used for memmap
[    0.010164]   DMA32 zone: 753428 pages, LIFO batch:63
[    0.050175]   Normal zone: 4096 pages used for memmap
[    0.050177]   Normal zone: 262144 pages, LIFO batch:63
[    0.062676] x86/hpet: Will disable the HPET for this platform because it's not reliable
[    0.062684] Reserving Intel graphics memory at [mem 0xbb000000-0xbeffffff]
[    0.062805] ACPI: PM-Timer IO Port: 0x408
[    0.062810] ACPI: Local APIC address 0xfee00000
[    0.062821] ACPI: LAPIC_NMI (acpi_id[0x01] dfl res lint[0x41])
[    0.062823] ACPI: NMI not connected to LINT 1!
[    0.062825] ACPI: LAPIC_NMI (acpi_id[0x02] dfl edge lint[0xdb])
[    0.062826] ACPI: NMI not connected to LINT 1!
[    0.062839] IOAPIC[0]: apic_id 1, version 32, address 0xfec00000, GSI 0-86
[    0.062843] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.062846] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.062849] ACPI: IRQ0 used by override.
[    0.062852] ACPI: IRQ9 used by override.
[    0.062855] Using ACPI (MADT) for SMP configuration information
[    0.062858] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.062874] e820: update [mem 0xadf19000-0xadf2dfff] usable ==> reserved
[    0.062891] smpboot: Allowing 2 CPUs, 0 hotplug CPUs
[    0.062932] PM: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.062936] PM: Registered nosave memory: [mem 0x0008f000-0x0008ffff]
[    0.062940] PM: Registered nosave memory: [mem 0x000a0000-0x000fffff]
[    0.062943] PM: Registered nosave memory: [mem 0x20000000-0x200fffff]
[    0.062947] PM: Registered nosave memory: [mem 0xadf19000-0xadf2dfff]
[    0.062950] PM: Registered nosave memory: [mem 0xb8d4b000-0xb8d7afff]
[    0.062954] PM: Registered nosave memory: [mem 0xb8ec7000-0xb93b7fff]
[    0.062956] PM: Registered nosave memory: [mem 0xb93b8000-0xb9b49fff]
[    0.062957] PM: Registered nosave memory: [mem 0xb9b4a000-0xb9babfff]
[    0.062961] PM: Registered nosave memory: [mem 0xb9bad000-0xb9beefff]
[    0.062964] PM: Registered nosave memory: [mem 0xb9d65000-0xb9ff9fff]
[    0.062968] PM: Registered nosave memory: [mem 0xba000000-0xbaffffff]
[    0.062970] PM: Registered nosave memory: [mem 0xbb000000-0xbeffffff]
[    0.062971] PM: Registered nosave memory: [mem 0xbf000000-0xe00f7fff]
[    0.062973] PM: Registered nosave memory: [mem 0xe00f8000-0xe00f8fff]
[    0.062974] PM: Registered nosave memory: [mem 0xe00f9000-0xfed00fff]
[    0.062975] PM: Registered nosave memory: [mem 0xfed01000-0xfed01fff]
[    0.062977] PM: Registered nosave memory: [mem 0xfed02000-0xffbfffff]
[    0.062978] PM: Registered nosave memory: [mem 0xffc00000-0xffffffff]
[    0.062982] [mem 0xbf000000-0xe00f7fff] available for PCI devices
[    0.062984] Booting paravirtualized kernel on bare hardware
[    0.062989] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645519600211568 ns
[    0.267865] random: get_random_bytes called from start_kernel+0x93/0x52c with crng_init=0
[    0.267883] setup_percpu: NR_CPUS:512 nr_cpumask_bits:512 nr_cpu_ids:2 nr_node_ids:1
[    0.268536] percpu: Embedded 45 pages/cpu s144408 r8192 d31720 u1048576
[    0.268552] pcpu-alloc: s144408 r8192 d31720 u1048576 alloc=1*2097152
[    0.268555] pcpu-alloc: [0] 0 1 
[    0.268600] Built 1 zonelists, mobility grouping on.  Total pages: 1003597
[    0.268602] Policy zone: Normal
[    0.268605] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-4.19.0-8-amd64 root=UUID=fef35d13-e472-4b23-8df9-d898d89ed594 ro quiet splash resume=UUID=68cd4c6e-9939-43cc-bdbf-ab9ffdce243c
[    0.287886] Calgary: detecting Calgary via BIOS EBDA area
[    0.287889] Calgary: Unable to locate Rio Grande table in EBDA - bailing!
[    0.314869] Memory: 3650196K/4078280K available (10252K kernel code, 1241K rwdata, 3320K rodata, 1592K init, 2276K bss, 428084K reserved, 0K cma-reserved)
[    0.315124] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.315137] Kernel/User page tables isolation: enabled
[    0.315234] ftrace: allocating 31847 entries in 125 pages
[    0.334314] rcu: Hierarchical RCU implementation.
[    0.334318] rcu: 	RCU restricting CPUs from NR_CPUS=512 to nr_cpu_ids=2.
[    0.334320] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=2
[    0.341218] NR_IRQS: 33024, nr_irqs: 512, preallocated irqs: 16
[    0.341587] Console: colour dummy device 80x25
[    0.341594] console [tty0] enabled
[    0.341639] ACPI: Core revision 20180810
[    0.341877] APIC: Switch to symmetric I/O mode setup
[    0.342756] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=0 pin2=0
[    0.361886] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x1f37ff50e1e, max_idle_ns: 440795224014 ns
[    0.361905] Calibrating delay loop (skipped), value calculated using timer frequency.. 4331.60 BogoMIPS (lpj=8663200)
[    0.361910] pid_max: default: 32768 minimum: 301
[    0.362934] Security Framework initialized
[    0.362937] Yama: disabled by default; enable with sysctl kernel.yama.*
[    0.362973] AppArmor: AppArmor initialized
[    0.364438] Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes)
[    0.365229] Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes)
[    0.365293] Mount-cache hash table entries: 8192 (order: 4, 65536 bytes)
[    0.365321] Mountpoint-cache hash table entries: 8192 (order: 4, 65536 bytes)
[    0.365703] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    0.365705] ENERGY_PERF_BIAS: View and update with x86_energy_perf_policy(8)
[    0.365734] CPU0: Thermal monitoring enabled (TM1)
[    0.365739] process: using mwait in idle threads
[    0.365745] Last level iTLB entries: 4KB 48, 2MB 0, 4MB 0
[    0.365746] Last level dTLB entries: 4KB 128, 2MB 16, 4MB 16, 1GB 0
[    0.365749] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    0.365752] Spectre V2 : Mitigation: Full generic retpoline
[    0.365753] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
[    0.365788] MDS: Vulnerable: Clear CPU buffers attempted, no microcode
[    0.366058] Freeing SMP alternatives memory: 24K
[    0.387550] TSC deadline timer enabled
[    0.387555] smpboot: CPU0: Intel(R) Celeron(R) CPU  N2840  @ 2.16GHz (family: 0x6, model: 0x37, stepping: 0x8)
[    0.387829] Performance Events: PEBS fmt2+, 8-deep LBR, Silvermont events, 8-deep LBR, full-width counters, Intel PMU driver.
[    0.387847] ... version:                3
[    0.387849] ... bit width:              40
[    0.387850] ... generic registers:      2
[    0.387851] ... value mask:             000000ffffffffff
[    0.387853] ... max period:             0000007fffffffff
[    0.387854] ... fixed-purpose events:   3
[    0.387855] ... event mask:             0000000700000003
[    0.387938] rcu: Hierarchical SRCU implementation.
[    0.388613] random: crng done (trusting CPU's manufacturer)
[    0.388880] NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    0.388966] smp: Bringing up secondary CPUs ...
[    0.389205] x86: Booting SMP configuration:
[    0.389207] .... node  #0, CPUs:      #1
[    0.389408] smp: Brought up 1 node, 2 CPUs
[    0.389408] smpboot: Max logical packages: 1
[    0.389408] smpboot: Total of 2 processors activated (8663.20 BogoMIPS)
[    0.389408] devtmpfs: initialized
[    0.389408] x86/mm: Memory block size: 128MB
[    0.389408] PM: Registering ACPI NVS region [mem 0x0008f000-0x0008ffff] (4096 bytes)
[    0.389408] PM: Registering ACPI NVS region [mem 0xb8ec7000-0xb93b7fff] (5181440 bytes)
[    0.389910] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.389910] futex hash table entries: 512 (order: 3, 32768 bytes)
[    0.389910] pinctrl core: initialized pinctrl subsystem
[    0.389910] NET: Registered protocol family 16
[    0.389910] audit: initializing netlink subsys (disabled)
[    0.389929] audit: type=2000 audit(1588626326.048:1): state=initialized audit_enabled=0 res=1
[    0.390111] cpuidle: using governor ladder
[    0.390120] cpuidle: using governor menu
[    0.390188] ACPI: bus type PCI registered
[    0.390191] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.390315] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
[    0.390320] PCI: not using MMCONFIG
[    0.390322] PCI: Using configuration type 1 for base access
[    0.391434] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.391434] ACPI: Added _OSI(Module Device)
[    0.391434] ACPI: Added _OSI(Processor Device)
[    0.391434] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.391434] ACPI: Added _OSI(Processor Aggregator Device)
[    0.391434] ACPI: Added _OSI(Linux-Dell-Video)
[    0.391434] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    0.391434] ACPI: EC: EC started
[    0.391434] ACPI: EC: interrupt blocked
[    0.391434] ACPI: \: Used as first EC
[    0.391434] ACPI: \: GPE=0x18, EC_CMD/EC_SC=0x66, EC_DATA=0x62
[    0.391434] ACPI: \: Used as boot ECDT EC to handle transactions
[    0.414579] ACPI: 4 ACPI AML tables successfully acquired and loaded
[    0.419040] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    0.423060] ACPI: Dynamic OEM Table Load:
[    0.423071] ACPI: SSDT 0xFFFF9954BA97F800 00045B (v01 PmRef  Cpu0Ist  00003000 INTL 20061109)
[    0.423740] ACPI: Dynamic OEM Table Load:
[    0.423748] ACPI: SSDT 0xFFFF9954BA979000 000433 (v01 PmRef  Cpu0Cst  00003001 INTL 20061109)
[    0.424678] ACPI: Dynamic OEM Table Load:
[    0.424685] ACPI: SSDT 0xFFFF9954BA96D800 00015F (v01 PmRef  ApIst    00003000 INTL 20061109)
[    0.425124] ACPI: Dynamic OEM Table Load:
[    0.425131] ACPI: SSDT 0xFFFF9954BA981F00 00008D (v01 PmRef  ApCst    00003000 INTL 20061109)
[    0.426098] ACPI: Interpreter enabled
[    0.426140] ACPI: (supports S0 S3 S4 S5)
[    0.426142] ACPI: Using IOAPIC for interrupt routing
[    0.426205] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe0000000-0xefffffff] (base 0xe0000000)
[    0.427185] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in ACPI motherboard resources
[    0.427215] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    0.427967] ACPI: Enabled 6 GPEs in block 00 to 3F
[    0.438224] ACPI: Power Resource [USBC] (on)
[    0.440294] ACPI: Power Resource [PLPE] (on)
[    0.440748] ACPI: Power Resource [PLPE] (on)
[    0.445534] ACPI: Power Resource [CLK0] (off)
[    0.445616] ACPI: Power Resource [CLK1] (off)
[    0.449426] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.449435] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI]
[    0.449520] acpi PNP0A08:00: _OSC failed (AE_ERROR); disabling ASPM
[    0.450231] PCI host bridge to bus 0000:00
[    0.450236] pci_bus 0000:00: root bus resource [io  0x0070-0x0077]
[    0.450239] pci_bus 0000:00: root bus resource [io  0x0000-0x006f window]
[    0.450241] pci_bus 0000:00: root bus resource [io  0x0078-0x0cf7 window]
[    0.450243] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.450246] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    0.450248] pci_bus 0000:00: root bus resource [mem 0x000c0000-0x000dffff window]
[    0.450251] pci_bus 0000:00: root bus resource [mem 0x000e0000-0x000fffff window]
[    0.450253] pci_bus 0000:00: root bus resource [mem 0xc0000000-0xd0815ffe window]
[    0.450256] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.450268] pci 0000:00:00.0: [8086:0f00] type 00 class 0x060000
[    0.450472] pci 0000:00:02.0: [8086:0f31] type 00 class 0x030000
[    0.450487] pci 0000:00:02.0: reg 0x10: [mem 0xd0000000-0xd03fffff]
[    0.450497] pci 0000:00:02.0: reg 0x18: [mem 0xc0000000-0xcfffffff pref]
[    0.450507] pci 0000:00:02.0: reg 0x20: [io  0xf080-0xf087]
[    0.450525] pci 0000:00:02.0: BAR 2: assigned to efifb
[    0.450722] pci 0000:00:13.0: [8086:0f23] type 00 class 0x010601
[    0.450744] pci 0000:00:13.0: reg 0x10: [io  0xf070-0xf077]
[    0.450753] pci 0000:00:13.0: reg 0x14: [io  0xf060-0xf063]
[    0.450762] pci 0000:00:13.0: reg 0x18: [io  0xf050-0xf057]
[    0.450771] pci 0000:00:13.0: reg 0x1c: [io  0xf040-0xf043]
[    0.450780] pci 0000:00:13.0: reg 0x20: [io  0xf020-0xf03f]
[    0.450789] pci 0000:00:13.0: reg 0x24: [mem 0xd0815000-0xd08157ff]
[    0.450835] pci 0000:00:13.0: PME# supported from D3hot
[    0.451002] pci 0000:00:14.0: [8086:0f35] type 00 class 0x0c0330
[    0.451023] pci 0000:00:14.0: reg 0x10: [mem 0xd0800000-0xd080ffff 64bit]
[    0.451082] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    0.451254] pci 0000:00:1a.0: [8086:0f18] type 00 class 0x108000
[    0.451284] pci 0000:00:1a.0: reg 0x10: [mem 0xd0500000-0xd05fffff]
[    0.451297] pci 0000:00:1a.0: reg 0x14: [mem 0xd0400000-0xd04fffff]
[    0.451397] pci 0000:00:1a.0: PME# supported from D0 D3hot
[    0.451566] pci 0000:00:1b.0: [8086:0f04] type 00 class 0x040300
[    0.451591] pci 0000:00:1b.0: reg 0x10: [mem 0xd0810000-0xd0813fff 64bit]
[    0.451662] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.451828] pci 0000:00:1c.0: [8086:0f48] type 01 class 0x060400
[    0.451897] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.452069] pci 0000:00:1c.1: [8086:0f4a] type 01 class 0x060400
[    0.452137] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.452307] pci 0000:00:1c.3: [8086:0f4e] type 01 class 0x060400
[    0.452375] pci 0000:00:1c.3: PME# supported from D0 D3hot D3cold
[    0.452553] pci 0000:00:1f.0: [8086:0f1c] type 00 class 0x060100
[    0.452784] pci 0000:00:1f.3: [8086:0f12] type 00 class 0x0c0500
[    0.452827] pci 0000:00:1f.3: reg 0x10: [mem 0xd0814000-0xd081401f]
[    0.452896] pci 0000:00:1f.3: reg 0x20: [io  0xf000-0xf01f]
[    0.453226] pci 0000:00:1c.0: PCI bridge to [bus 01]
[    0.453376] pci 0000:02:00.0: [14e4:4365] type 00 class 0x028000
[    0.453413] pci 0000:02:00.0: reg 0x10: [mem 0xd0700000-0xd0707fff 64bit]
[    0.453472] pci 0000:02:00.0: enabling Extended Tags
[    0.453553] pci 0000:02:00.0: supports D1 D2
[    0.453555] pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
[    0.453719] pci 0000:00:1c.1: PCI bridge to [bus 02]
[    0.453725] pci 0000:00:1c.1:   bridge window [mem 0xd0700000-0xd07fffff]
[    0.453836] pci 0000:03:00.0: [10ec:5286] type 00 class 0xff0000
[    0.453865] pci 0000:03:00.0: reg 0x10: [mem 0xd0600000-0xd060ffff]
[    0.454007] pci 0000:03:00.0: supports D1 D2
[    0.454010] pci 0000:03:00.0: PME# supported from D1 D2 D3hot D3cold
[    0.454160] pci 0000:03:00.2: [10ec:8136] type 00 class 0x020000
[    0.454188] pci 0000:03:00.2: reg 0x10: [io  0xe000-0xe0ff]
[    0.454215] pci 0000:03:00.2: reg 0x18: [mem 0xd0614000-0xd0614fff 64bit]
[    0.454233] pci 0000:03:00.2: reg 0x20: [mem 0xd0610000-0xd0613fff 64bit pref]
[    0.454322] pci 0000:03:00.2: supports D1 D2
[    0.454324] pci 0000:03:00.2: PME# supported from D0 D1 D2 D3hot D3cold
[    0.454474] pci 0000:00:1c.3: PCI bridge to [bus 03]
[    0.454478] pci 0000:00:1c.3:   bridge window [io  0xe000-0xefff]
[    0.454482] pci 0000:00:1c.3:   bridge window [mem 0xd0600000-0xd06fffff]
[    0.455578] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 *10 12)
[    0.455700] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 *10 12)
[    0.455823] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 *5 6 10 12)
[    0.455951] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 *5 6 10 12)
[    0.456072] ACPI: PCI Interrupt Link [LNKE] (IRQs *3 4 5 6 10 12)
[    0.456195] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 10 12) *0, disabled.
[    0.456318] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 *4 5 6 10 12)
[    0.456436] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 10 12) *0, disabled.
[    0.458612] ACPI: EC: interrupt unblocked
[    0.458631] ACPI: EC: event unblocked
[    0.458641] ACPI: \_SB_.PCI0.SBRG.EC0_: GPE=0x18, EC_CMD/EC_SC=0x66, EC_DATA=0x62
[    0.458644] ACPI: \_SB_.PCI0.SBRG.EC0_: Used as boot DSDT EC to handle transactions and events
[    0.458795] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    0.458795] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    0.458795] pci 0000:00:02.0: vgaarb: bridge control possible
[    0.458795] vgaarb: loaded
[    0.458795] pps_core: LinuxPPS API ver. 1 registered
[    0.458795] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    0.458795] PTP clock support registered
[    0.458795] EDAC MC: Ver: 3.0.0
[    0.458795] Registered efivars operations
[    0.458795] PCI: Using ACPI for IRQ routing
[    0.465205] PCI: pci_cache_line_size set to 64 bytes
[    0.465273] e820: reserve RAM buffer [mem 0x0008f000-0x0008ffff]
[    0.465276] e820: reserve RAM buffer [mem 0xadf19000-0xafffffff]
[    0.465278] e820: reserve RAM buffer [mem 0xb8d4b000-0xbbffffff]
[    0.465280] e820: reserve RAM buffer [mem 0xb8ec7000-0xbbffffff]
[    0.465283] e820: reserve RAM buffer [mem 0xb9bad000-0xbbffffff]
[    0.465285] e820: reserve RAM buffer [mem 0xb9d65000-0xbbffffff]
[    0.465287] e820: reserve RAM buffer [mem 0xba000000-0xbbffffff]
[    0.465472] clocksource: Switched to clocksource tsc-early
[    0.482634] VFS: Disk quotas dquot_6.6.0
[    0.482663] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    0.482871] AppArmor: AppArmor Filesystem Enabled
[    0.482907] pnp: PnP ACPI init
[    0.483022] pnp 00:00: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.483306] system 00:01: [io  0x0680-0x069f] has been reserved
[    0.483310] system 00:01: [io  0x0400-0x047f] has been reserved
[    0.483312] system 00:01: [io  0x0500-0x05fe] has been reserved
[    0.483315] system 00:01: [io  0x0600-0x061f] has been reserved
[    0.483324] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.483444] system 00:02: [io  0x03f8-0x0411] could not be reserved
[    0.483453] system 00:02: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.483586] pnp 00:03: Plug and Play ACPI device, IDs ETD0108 SYN0a00 SYN0002 PNP0f03 PNP0f13 PNP0f12 (active)
[    0.483670] pnp 00:04: Plug and Play ACPI device, IDs ATK3001 PNP030b (active)
[    0.484117] system 00:05: [mem 0xe0000000-0xefffffff] could not be reserved
[    0.484121] system 00:05: [mem 0xfed01000-0xfed01fff] has been reserved
[    0.484124] system 00:05: [mem 0xfed03000-0xfed03fff] has been reserved
[    0.484126] system 00:05: [mem 0xfed04000-0xfed04fff] has been reserved
[    0.484129] system 00:05: [mem 0xfed0c000-0xfed0ffff] has been reserved
[    0.484132] system 00:05: [mem 0xfed08000-0xfed08fff] has been reserved
[    0.484135] system 00:05: [mem 0xfed1c000-0xfed1cfff] has been reserved
[    0.484138] system 00:05: [mem 0xfee00000-0xfeefffff] has been reserved
[    0.484140] system 00:05: [mem 0xfef00000-0xfeffffff] has been reserved
[    0.484149] system 00:05: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.485722] pnp: PnP ACPI: found 6 devices
[    0.493746] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    0.493782] pci 0000:00:1c.0: PCI bridge to [bus 01]
[    0.493793] pci 0000:00:1c.1: PCI bridge to [bus 02]
[    0.493798] pci 0000:00:1c.1:   bridge window [mem 0xd0700000-0xd07fffff]
[    0.493805] pci 0000:00:1c.3: PCI bridge to [bus 03]
[    0.493809] pci 0000:00:1c.3:   bridge window [io  0xe000-0xefff]
[    0.493813] pci 0000:00:1c.3:   bridge window [mem 0xd0600000-0xd06fffff]
[    0.493821] pci_bus 0000:00: resource 4 [io  0x0070-0x0077]
[    0.493823] pci_bus 0000:00: resource 5 [io  0x0000-0x006f window]
[    0.493826] pci_bus 0000:00: resource 6 [io  0x0078-0x0cf7 window]
[    0.493828] pci_bus 0000:00: resource 7 [io  0x0d00-0xffff window]
[    0.493831] pci_bus 0000:00: resource 8 [mem 0x000a0000-0x000bffff window]
[    0.493834] pci_bus 0000:00: resource 9 [mem 0x000c0000-0x000dffff window]
[    0.493836] pci_bus 0000:00: resource 10 [mem 0x000e0000-0x000fffff window]
[    0.493839] pci_bus 0000:00: resource 11 [mem 0xc0000000-0xd0815ffe window]
[    0.493842] pci_bus 0000:02: resource 1 [mem 0xd0700000-0xd07fffff]
[    0.493845] pci_bus 0000:03: resource 0 [io  0xe000-0xefff]
[    0.493847] pci_bus 0000:03: resource 1 [mem 0xd0600000-0xd06fffff]
[    0.494053] NET: Registered protocol family 2
[    0.494357] tcp_listen_portaddr_hash hash table entries: 2048 (order: 3, 32768 bytes)
[    0.494400] TCP established hash table entries: 32768 (order: 6, 262144 bytes)
[    0.494529] TCP bind hash table entries: 32768 (order: 7, 524288 bytes)
[    0.494671] TCP: Hash tables configured (established 32768 bind 32768)
[    0.494755] UDP hash table entries: 2048 (order: 4, 65536 bytes)
[    0.494797] UDP-Lite hash table entries: 2048 (order: 4, 65536 bytes)
[    0.494917] NET: Registered protocol family 1
[    0.494927] NET: Registered protocol family 44
[    0.494946] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    0.495327] PCI: CLS 64 bytes, default 64
[    0.495423] Unpacking initramfs...
[    1.487311] Freeing initrd memory: 36072K
[    1.487318] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    1.487320] software IO TLB: mapped [mem 0xa6585000-0xaa585000] (64MB)
[    1.487386] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x1f37ff50e1e, max_idle_ns: 440795224014 ns
[    1.487419] clocksource: Switched to clocksource tsc
[    1.488499] Initialise system trusted keyrings
[    1.488516] Key type blacklist registered
[    1.488611] workingset: timestamp_bits=40 max_order=20 bucket_order=0
[    1.491220] zbud: loaded
[    1.847159] Key type asymmetric registered
[    1.847162] Asymmetric key parser 'x509' registered
[    1.847189] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 247)
[    1.847249] io scheduler noop registered
[    1.847251] io scheduler deadline registered
[    1.847323] io scheduler cfq registered (default)
[    1.847326] io scheduler mq-deadline registered
[    1.848138] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    1.848165] efifb: probing for efifb
[    1.848193] efifb: framebuffer at 0xc0000000, using 1920k, total 1920k
[    1.848195] efifb: mode is 800x600x32, linelength=3200, pages=1
[    1.848196] efifb: scrolling: redraw
[    1.848199] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    1.851267] Console: switching to colour frame buffer device 100x37
[    1.854115] fb0: EFI VGA frame buffer device
[    1.854134] intel_idle: MWAIT substates: 0x33000020
[    1.854135] intel_idle: v0.4.1 model 0x37
[    1.854293] intel_idle: lapic_timer_reliable_states 0xffffffff
[    1.856530] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.876779] serial8250: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200) is a 16550A
[    1.877834] hpet: number irqs doesn't agree with number of timers
[    1.877883] Linux agpgart interface v0.103
[    1.877978] AMD IOMMUv2 driver by Joerg Roedel <jroedel@suse.de>
[    1.877979] AMD IOMMUv2 functionality not available on this system
[    1.878418] i8042: PNP: PS/2 Controller [PNP030b:PS2K,PNP0f03:PS2M] at 0x60,0x64 irq 1,12
[    1.880664] i8042: Detected active multiplexing controller, rev 1.1
[    1.881798] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.881808] serio: i8042 AUX0 port at 0x60,0x64 irq 12
[    1.881862] serio: i8042 AUX1 port at 0x60,0x64 irq 12
[    1.881925] serio: i8042 AUX2 port at 0x60,0x64 irq 12
[    1.881973] serio: i8042 AUX3 port at 0x60,0x64 irq 12
[    1.882298] mousedev: PS/2 mouse device common for all mice
[    1.882391] rtc_cmos 00:00: RTC can wake from S4
[    1.882649] rtc_cmos 00:00: registered as rtc0
[    1.882679] rtc_cmos 00:00: alarms up to one month, y3k, 242 bytes nvram
[    1.882703] intel_pstate: Intel P-state driver initializing
[    1.883232] ledtrig-cpu: registered to indicate activity on CPUs
[    1.885704] NET: Registered protocol family 10
[    1.920013] Segment Routing with IPv6
[    1.920057] mip6: Mobile IPv6
[    1.920062] NET: Registered protocol family 17
[    1.920125] mpls_gso: MPLS GSO support
[    1.920418] mce: Using 6 MCE banks
[    1.920496] microcode: sig=0x30678, pf=0x8, revision=0x815
[    1.920586] microcode: Microcode Update Driver: v2.2.
[    1.920606] sched_clock: Marking stable (1920225984, 348379)->(1926235966, -5661603)
[    1.920933] registered taskstats version 1
[    1.920934] Loading compiled-in X.509 certificates
[    1.922001] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input0
[    1.991616] Loaded X.509 cert 'Debian Secure Boot CA: 6ccece7e4c6c0d1f6149f3dd27dfcc5cbb419ea1'
[    1.991645] Loaded X.509 cert 'Debian Secure Boot Signer: 00a7468def'
[    1.992380] Loaded UEFI:db cert 'ASUSTeK Notebook SW Key Certificate: b8e581e4df77a5bb4282d5ccfc00c071' linked to secondary sys keyring
[    1.992797] Loaded UEFI:db cert 'ASUSTeK MotherBoard SW Key Certificate: da83b990422ebc8c441f8d8b039a65a2' linked to secondary sys keyring
[    1.992839] Loaded UEFI:db cert 'Microsoft Corporation UEFI CA 2011: 13adbf4309bd82709c8cd54f316ed522988a1bd4' linked to secondary sys keyring
[    1.992881] Loaded UEFI:db cert 'Microsoft Windows Production PCA 2011: a92902398e16c49778cd90f99e4f9ae17c55af53' linked to secondary sys keyring
[    1.993301] Loaded UEFI:db cert 'Canonical Ltd. Master Certificate Authority: ad91990bc22ab1f517048c23b6655a268e345a63' linked to secondary sys keyring
[    1.993531] zswap: loaded using pool lzo/zbud
[    1.993623] AppArmor: AppArmor sha1 policy hashing enabled
[    1.994251] rtc_cmos 00:00: setting system clock to 2020-05-04 21:05:28 UTC (1588626328)
[    2.171384] Freeing unused kernel image memory: 1592K
[    2.182330] Write protecting the kernel read-only data: 16384k
[    2.183720] Freeing unused kernel image memory: 2028K
[    2.184300] Freeing unused kernel image memory: 776K
[    2.206396] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    2.206550] x86/mm: Checking user space page tables
[    2.224439] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    2.224443] Run /init as init process
[    2.609467] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input5
[    2.609505] ACPI: Power Button [PWRB]
[    2.609599] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input6
[    2.609609] ACPI: Lid Switch [LID]
[    2.610120] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input7
[    2.610401] ACPI: Sleep Button [SLPB]
[    2.610490] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input8
[    2.610748] ACPI: Power Button [PWRF]
[    2.625332] hidraw: raw HID events driver (C) Jiri Kosina
[    2.654141] thermal LNXTHERM:00: registered as thermal_zone0
[    2.654143] ACPI: Thermal Zone [THRM] (0 C)
[    2.699922] i801_smbus 0000:00:1f.3: SMBus using PCI interrupt
[    2.710711] r8169 0000:03:00.2: can't disable ASPM; OS doesn't have ASPM control
[    2.745676] SCSI subsystem initialized
[    2.749450] libphy: r8169: probed
[    2.749818] r8169 0000:03:00.2 eth0: RTL8402, 08:62:66:70:30:d2, XID 44000800, IRQ 88
[    2.750747] ACPI: bus type USB registered
[    2.750783] usbcore: registered new interface driver usbfs
[    2.750803] usbcore: registered new interface driver hub
[    2.753970] usbcore: registered new device driver usb
[    2.825659] r8169 0000:03:00.2 enp3s0f2: renamed from eth0
[    2.843127] libata version 3.00 loaded.
[    2.850258] ahci 0000:00:13.0: version 3.0
[    2.857389] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    2.857399] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 1
[    2.858471] xhci_hcd 0000:00:14.0: hcc params 0x200077c1 hci version 0x100 quirks 0x0000000000009810
[    2.858476] xhci_hcd 0000:00:14.0: cache line size of 64 is not supported
[    2.859253] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 4.19
[    2.859256] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.859258] usb usb1: Product: xHCI Host Controller
[    2.859259] usb usb1: Manufacturer: Linux 4.19.0-8-amd64 xhci-hcd
[    2.859261] usb usb1: SerialNumber: 0000:00:14.0
[    2.859636] hub 1-0:1.0: USB hub found
[    2.859652] hub 1-0:1.0: 6 ports detected
[    2.861141] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    2.861151] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 2
[    2.861158] xhci_hcd 0000:00:14.0: Host supports USB 3.0 SuperSpeed
[    2.861229] usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 4.19
[    2.861232] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.861234] usb usb2: Product: xHCI Host Controller
[    2.861236] usb usb2: Manufacturer: Linux 4.19.0-8-amd64 xhci-hcd
[    2.861237] usb usb2: SerialNumber: 0000:00:14.0
[    2.861600] hub 2-0:1.0: USB hub found
[    2.861613] hub 2-0:1.0: 1 port detected
[    2.868063] ahci 0000:00:13.0: AHCI 0001.0300 32 slots 2 ports 3 Gbps 0x1 impl SATA mode
[    2.868067] ahci 0000:00:13.0: flags: 64bit ncq pm led clo pio slum part deso sadm apst 
[    2.868881] scsi host0: ahci
[    2.869578] scsi host1: ahci
[    2.869718] ata1: SATA max UDMA/133 abar m2048@0xd0815000 port 0xd0815100 irq 89
[    2.869720] ata2: DUMMY
[    2.931963] checking generic (c0000000 1e0000) vs hw (c0000000 10000000)
[    2.931966] fb: switching to inteldrmfb from EFI VGA
[    2.932001] Console: switching to colour dummy device 80x25
[    2.932134] [drm] Replacing VGA console driver
[    2.932245] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    2.932246] [drm] Driver supports precise vblank timestamp query.
[    2.933000] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    3.043411] [drm] Initialized i915 1.6.0 20180719 for 0000:00:02.0 on minor 0
[    3.044692] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    3.050061] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input13
[    3.061797] fbcon: inteldrmfb (fb0) is primary device
[    3.186540] ata1: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[    3.194333] usb 1-4: new high-speed USB device number 2 using xhci_hcd
[    3.241957] ata1.00: ATA-8: TOSHIBA MQ01ABF050, AM0B1J, max UDMA/100
[    3.241969] ata1.00: 976773168 sectors, multi 16: LBA48 NCQ (depth 32), AA
[    3.245258] ata1.00: configured for UDMA/100
[    3.246900] scsi 0:0:0:0: Direct-Access     ATA      TOSHIBA MQ01ABF0 1J   PQ: 0 ANSI: 5
[    3.344662] usb 1-4: New USB device found, idVendor=05e3, idProduct=0608, bcdDevice=85.37
[    3.344675] usb 1-4: New USB device strings: Mfr=0, Product=1, SerialNumber=0
[    3.344683] usb 1-4: Product: USB2.0 Hub
[    3.346432] hub 1-4:1.0: USB hub found
[    3.346808] hub 1-4:1.0: 3 ports detected
[    3.348723] usb: port power management may be unreliable
[    3.469488] psmouse serio4: elantech: assuming hardware version 4 (with firmware version 0x461f1a)
[    3.486207] psmouse serio4: elantech: Synaptics capabilities query result 0x10, 0x15, 0x0c.
[    3.501849] psmouse serio4: elantech: Elan sample query result 1c, 79, 75
[    3.576879] input: ETPS/2 Elantech Touchpad as /devices/platform/i8042/serio4/input/input12
[    3.638335] usb 1-4.1: new full-speed USB device number 3 using xhci_hcd
[    3.742287] usb 1-4.1: New USB device found, idVendor=04ca, idProduct=2006, bcdDevice= 1.12
[    3.742300] usb 1-4.1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    3.742308] usb 1-4.1: Product: BCM43142A0
[    3.742316] usb 1-4.1: Manufacturer: Broadcom Corp
[    3.742324] usb 1-4.1: SerialNumber: D053496A7B90
[    4.438416] Console: switching to colour frame buffer device 170x48
[    4.469145] i915 0000:00:02.0: fb0: inteldrmfb frame buffer device
[    4.495162] sd 0:0:0:0: [sda] 976773168 512-byte logical blocks: (500 GB/466 GiB)
[    4.495167] sd 0:0:0:0: [sda] 4096-byte physical blocks
[    4.495184] sd 0:0:0:0: [sda] Write Protect is off
[    4.495187] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    4.495214] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    4.624258]  sda: sda1 sda2 sda3
[    4.625018] sd 0:0:0:0: [sda] Attached SCSI disk
[    5.726079] raid6: sse2x1   gen()  1164 MB/s
[    5.794037] raid6: sse2x1   xor()  2608 MB/s
[    5.862037] raid6: sse2x2   gen()  1590 MB/s
[    5.930040] raid6: sse2x2   xor()  3099 MB/s
[    5.998055] raid6: sse2x4   gen()  2011 MB/s
[    6.065900] raid6: sse2x4   xor()  2295 MB/s
[    6.065902] raid6: using algorithm sse2x4 gen() 2011 MB/s
[    6.065903] raid6: .... xor() 2295 MB/s, rmw enabled
[    6.065905] raid6: using ssse3x2 recovery algorithm
[    6.082438] xor: measuring software checksum speed
[    6.122033]    prefetch64-sse:  8215.000 MB/sec
[    6.162031]    generic_sse:  7469.000 MB/sec
[    6.162033] xor: using function: prefetch64-sse (8215.000 MB/sec)
[    6.282962] Btrfs loaded, crc32c=crc32c-intel
[    6.578948] PM: Image not found (code -22)
[    6.928285] cryptd: max_cpu_qlen set to 1000
[    7.153318] EXT4-fs (sda2): mounted filesystem with ordered data mode. Opts: (null)
[    9.212879] systemd[1]: Inserted module 'autofs4'
[    9.459371] efivars: duplicate variable: AcpiGlobalVariable-c020489e-6db2-4ef2-9aa5-ca06fc11d36a
[    9.610073] systemd[1]: systemd 241 running in system mode. (+PAM +AUDIT +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD -IDN2 +IDN -PCRE2 default-hierarchy=hybrid)
[    9.630591] systemd[1]: Detected architecture x86-64.
[    9.662535] systemd[1]: Set hostname to <deb-asus>.
[   10.860476] systemd[1]: Set up automount Arbitrary Executable File Formats File System Automount Point.
[   10.860901] systemd[1]: Listening on Journal Socket.
[   10.861047] systemd[1]: Listening on initctl Compatibility Named Pipe.
[   10.863880] systemd[1]: Mounting Huge Pages File System...
[   10.864292] systemd[1]: Listening on udev Control Socket.
[   10.936990] systemd[1]: Condition check resulted in Set Up Additional Binary Formats being skipped.
[   10.937059] systemd[1]: Reached target Remote File Systems.
[   11.059253] EXT4-fs (sda2): re-mounted. Opts: (null)
[   11.529648] systemd-journald[209]: Received request to flush runtime journal from PID 1
[   12.339187] ACPI: AC Adapter [AC0] (off-line)
[   12.394927] input: PC Speaker as /devices/platform/pcspkr/input/input14
[   12.395379] EFI Variables Facility v0.08 2004-May-17
[   12.405916] efivars: duplicate variable: AcpiGlobalVariable-c020489e-6db2-4ef2-9aa5-ca06fc11d36a
[   12.414431] battery: ACPI: Battery Slot [BAT0] (battery present)
[   12.426844] pstore: Using compression: deflate
[   12.426854] pstore: Registered efi as persistent store backend
[   12.478173] input: Asus Wireless Radio Control as /devices/LNXSYSTM:00/LNXSYBUS:00/ATK4001:00/input/input15
[   12.502526] asus_wmi: ASUS WMI generic driver loaded
[   12.523576] asus_wmi: Initialization: 0x1
[   12.523938] asus_wmi: BIOS WMI version: 7.9
[   12.524026] asus_wmi: SFUN value: 0x4a0877
[   12.546740] input: Asus WMI hotkeys as /devices/platform/asus-nb-wmi/input/input16
[   12.565024] asus_wmi: Number of fans: 1
[   12.659203] alg: No test for fips(ansi_cprng) (fips_ansi_cprng)
[   12.872759] Bluetooth: Core ver 2.22
[   12.872783] NET: Registered protocol family 31
[   12.872784] Bluetooth: HCI device and connection manager initialized
[   12.872793] Bluetooth: HCI socket layer initialized
[   12.872796] Bluetooth: L2CAP socket layer initialized
[   12.872805] Bluetooth: SCO socket layer initialized
[   12.956092] iTCO_vendor_support: vendor-support=0
[   12.958236] iTCO_wdt: Intel TCO WatchDog Timer Driver v1.11
[   12.958308] iTCO_wdt: Found a Bay Trail SoC TCO device (Version=3, TCOBASE=0x0460)
[   12.958453] iTCO_wdt: initialized. heartbeat=30 sec (nowayout=0)
[   13.227441] sd 0:0:0:0: Attached scsi generic sg0 type 0
[   13.277677] Bluetooth: HCI UART driver ver 2.3
[   13.277681] Bluetooth: HCI UART protocol H4 registered
[   13.277682] Bluetooth: HCI UART protocol BCSP registered
[   13.277713] Bluetooth: HCI UART protocol LL registered
[   13.277715] Bluetooth: HCI UART protocol ATH3K registered
[   13.277734] Bluetooth: HCI UART protocol Three-wire (H5) registered
[   13.277779] Bluetooth: HCI UART protocol Intel registered
[   13.279491] Bluetooth: HCI UART protocol Broadcom registered
[   13.279527] Bluetooth: HCI UART protocol QCA registered
[   13.279529] Bluetooth: HCI UART protocol AG6XX registered
[   13.279530] Bluetooth: HCI UART protocol Marvell registered
[   14.040454] wl: loading out-of-tree module taints kernel.
[   14.040485] wl: module license 'MIXED/Proprietary' taints kernel.
[   14.040489] Disabling lock debugging due to kernel taint
[   14.049649] wl: module verification failed: signature and/or required key missing - tainting kernel
[   14.088095] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller 6.30.223.271 (r587334)

[   14.242233] usbcore: registered new interface driver btusb
[   14.265601] wl 0000:02:00.0 wlp2s0: renamed from wlan0
[   14.352763] snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_audio_component_bind_ops [i915])
[   14.355890] Bluetooth: hci0: BCM: chip id 70
[   14.356880] Bluetooth: hci0: BCM: features 0x06
[   14.372898] Bluetooth: hci0: BCM43142A
[   14.373887] Bluetooth: hci0: BCM43142A0 (001.001.011) build 0000
[   14.424750] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC3236: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:speaker
[   14.424754] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[   14.424757] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
[   14.424758] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=0x0
[   14.424760] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[   14.424762] snd_hda_codec_realtek hdaudioC0D0:      Mic=0x1b
[   14.550968] bluetooth hci0: firmware: failed to load brcm/BCM43142A0-04ca-2006.hcd (-2)
[   14.550983] firmware_class: See https://wiki.debian.org/Firmware for information about missing firmware
[   14.550995] bluetooth hci0: Direct firmware load for brcm/BCM43142A0-04ca-2006.hcd failed with error -2
[   14.551005] Bluetooth: hci0: BCM: Patch brcm/BCM43142A0-04ca-2006.hcd not found
[   14.715241] input: HDA Intel PCH Headphone as /devices/pci0000:00/0000:00:1b.0/sound/card0/input17
[   14.715376] input: HDA Intel PCH HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:1b.0/sound/card0/input18
[   15.094497] intel_rapl: Found RAPL domain package
[   15.094500] intel_rapl: Found RAPL domain core
[   15.322611] Adding 8636800k swap on /dev/sda3.  Priority:-2 extents:1 across:8636800k FS
[   16.565916] Bluetooth: hci0: command 0x1003 tx timeout
[   16.566763] Bluetooth: hci0: unexpected event for opcode 0x1003
[   17.777238] audit: type=1400 audit(1588626344.275:2): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-oopslash" pid=352 comm="apparmor_parser"
[   17.804012] audit: type=1400 audit(1588626344.303:3): apparmor="STATUS" operation="profile_load" profile="unconfined" name="nvidia_modprobe" pid=351 comm="apparmor_parser"
[   17.804020] audit: type=1400 audit(1588626344.303:4): apparmor="STATUS" operation="profile_load" profile="unconfined" name="nvidia_modprobe//kmod" pid=351 comm="apparmor_parser"
[   17.826654] audit: type=1400 audit(1588626344.327:5): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-senddoc" pid=354 comm="apparmor_parser"
[   17.830696] audit: type=1400 audit(1588626344.331:6): apparmor="STATUS" operation="profile_load" profile="unconfined" name="/usr/bin/man" pid=355 comm="apparmor_parser"
[   17.830703] audit: type=1400 audit(1588626344.331:7): apparmor="STATUS" operation="profile_load" profile="unconfined" name="man_filter" pid=355 comm="apparmor_parser"
[   17.830708] audit: type=1400 audit(1588626344.331:8): apparmor="STATUS" operation="profile_load" profile="unconfined" name="man_groff" pid=355 comm="apparmor_parser"
[   17.832679] audit: type=1400 audit(1588626344.331:9): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-soffice" pid=353 comm="apparmor_parser"
[   17.832687] audit: type=1400 audit(1588626344.331:10): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-soffice//gpg" pid=353 comm="apparmor_parser"
[   17.834808] audit: type=1400 audit(1588626344.335:11): apparmor="STATUS" operation="profile_load" profile="unconfined" name="libreoffice-xpdfimport" pid=356 comm="apparmor_parser"
[   20.907669] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[   20.907672] Bluetooth: BNEP filters: protocol multicast
[   20.907677] Bluetooth: BNEP socket layer initialized
[   21.533930] usb 1-3: new high-speed USB device number 4 using xhci_hcd
[   21.726684] usb 1-3: config 1 interface 1 altsetting 4 endpoint 0x81 has invalid wMaxPacketSize 0
[   21.732984] usb 1-3: New USB device found, idVendor=04f2, idProduct=b483, bcdDevice=99.14
[   21.732987] usb 1-3: New USB device strings: Mfr=0, Product=1, SerialNumber=0
[   21.732989] usb 1-3: Product: USB2.0 VGA UVC WebCam
[   21.750163] usb 1-3: USB disconnect, device number 4
[   22.117394] media: Linux media interface: v0.10
[   22.155706] videodev: Linux video capture interface: v2.00
[   22.437914] usb 1-3: new high-speed USB device number 5 using xhci_hcd
[   22.623537] usb 1-3: config 1 interface 1 altsetting 4 endpoint 0x81 has invalid wMaxPacketSize 0
[   22.629856] usb 1-3: New USB device found, idVendor=04f2, idProduct=b483, bcdDevice=99.14
[   22.629859] usb 1-3: New USB device strings: Mfr=0, Product=1, SerialNumber=0
[   22.629861] usb 1-3: Product: USB2.0 VGA UVC WebCam
[   23.148501] uvcvideo: Found UVC 1.00 device USB2.0 VGA UVC WebCam (04f2:b483)
[   23.255119] uvcvideo 1-3:1.0: Entity type for entity Extension 2 was not initialized!
[   23.255124] uvcvideo 1-3:1.0: Entity type for entity Extension 5 was not initialized!
[   23.255126] uvcvideo 1-3:1.0: Entity type for entity Processing 3 was not initialized!
[   23.255129] uvcvideo 1-3:1.0: Entity type for entity Camera 1 was not initialized!
[   23.255329] input: USB2.0 VGA UVC WebCam: USB2.0 V as /devices/pci0000:00/0000:00:14.0/usb1/1-3/1-3:1.0/input/input19
[   23.255719] usbcore: registered new interface driver uvcvideo
[   23.255721] USB Video Class driver (1.1.1)
[   24.685090] IPv6: ADDRCONF(NETDEV_UP): enp3s0f2: link is not ready
[   24.685333] r8169 0000:03:00.2: firmware: failed to load rtl_nic/rtl8402-1.fw (-2)
[   24.685339] r8169 0000:03:00.2: Direct firmware load for rtl_nic/rtl8402-1.fw failed with error -2
[   24.685344] r8169 0000:03:00.2 enp3s0f2: unable to load firmware patch rtl_nic/rtl8402-1.fw (-2)
[   24.685714] Generic PHY r8169-302:00: attached PHY driver [Generic PHY] (mii_bus:phy_addr=r8169-302:00, irq=IGNORE)
[   24.811673] IPv6: ADDRCONF(NETDEV_UP): enp3s0f2: link is not ready
[   24.831099] IPv6: ADDRCONF(NETDEV_UP): wlp2s0: link is not ready
[   25.062723] IPv6: ADDRCONF(NETDEV_UP): wlp2s0: link is not ready
[   26.144861] IPv6: ADDRCONF(NETDEV_CHANGE): wlp2s0: link becomes ready
[   39.083698] Bluetooth: RFCOMM TTY layer initialized
[   39.083715] Bluetooth: RFCOMM socket layer initialized
[   39.083732] Bluetooth: RFCOMM ver 1.11
[   72.584602] fuse init (API version 7.27)
[   78.999311] rfkill: input handler disabled

--------------35305762424F618AEA087788
Content-Type: text/x-log; charset=UTF-8;
 name="lsusb.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="lsusb.log"


Bus 001 Device 005: ID 04f2:b483 Chicony Electronics Co., Ltd 
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x04f2 Chicony Electronics Co., Ltd
  idProduct          0xb483 
  bcdDevice           99.14
  iManufacturer           0 
  iProduct                1 USB2.0 VGA UVC WebCam
  iSerial                 0 
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x01b5
    bNumInterfaces          2
    bConfigurationValue     1
    iConfiguration          0 
    bmAttributes         0x80
      (Bus Powered)
    MaxPower              200mA
    Interface Association:
      bLength                 8
      bDescriptorType        11
      bFirstInterface         0
      bInterfaceCount         2
      bFunctionClass         14 Video
      bFunctionSubClass       3 Video Interface Collection
      bFunctionProtocol       0 
      iFunction               1 USB2.0 VGA UVC WebCam
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0 
      iInterface              1 USB2.0 VGA UVC WebCam
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.00
        wTotalLength       0x0069
        dwClockFrequency       60.000000MHz
        bInCollection           1
        baInterfaceNr( 0)       1
      VideoControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             4
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               2
        iTerminal               0 
      VideoControl Interface Descriptor:
        bLength                27
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 2
        guidExtensionCode         {5e5d360b-e45f-4581-9b0b-374669ba05d4}
        bNumControl            16
        bNrPins                 1
        baSourceID( 0)          5
        bControlSize            2
        bmControls( 0)       0xff
        bmControls( 1)       0x00
        iExtension              0 
      VideoControl Interface Descriptor:
        bLength                27
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 5
        guidExtensionCode         {ecdadf03-8fe3-4d27-893b-a18d25aeee09}
        bNumControl            16
        bNrPins                 1
        baSourceID( 0)          3
        bControlSize            2
        bmControls( 0)       0xff
        bmControls( 1)       0x03
        iExtension              0 
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
        bmControls           0x0000000e
          Auto-Exposure Mode
          Auto-Exposure Priority
          Exposure Time (Absolute)
      VideoControl Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      5 (PROCESSING_UNIT)
      Warning: Descriptor too short
        bUnitID                 3
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
        bmVideoStandards     0x00
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x83  EP 3 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0017  1x 23 bytes
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
        bLength                            14
        bDescriptorType                    36
        bDescriptorSubtype                  1 (INPUT_HEADER)
        bNumFormats                         1
        wTotalLength                   0x00dd
        bEndPointAddress                  129
        bmInfo                              0
        bTerminalLink                       4
        bStillCaptureMethod                 1
        bTriggerSupport                     1
        bTriggerUsage                       1
        bControlSize                        1
        bmaControls( 0)                     0
      VideoStreaming Interface Descriptor:
        bLength                            27
        bDescriptorType                    36
        bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
        bFormatIndex                        1
        bNumFrameDescriptors                6
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
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 18432000
        dwMaxBitRate                 18432000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         2
        bmCapabilities                   0x01
          Still image supported
        wWidth                            160
        wHeight                           120
        dwMinBitRate                  1152000
        dwMaxBitRate                  1152000
        dwMaxVideoFrameBufferSize       38400
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
        wWidth                            176
        wHeight                           144
        dwMinBitRate                  1520640
        dwMaxBitRate                  1520640
        dwMaxVideoFrameBufferSize       50688
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
        wWidth                            320
        wHeight                           240
        dwMinBitRate                  4608000
        dwMaxBitRate                  4608000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         5
        bmCapabilities                   0x01
          Still image supported
        wWidth                            352
        wHeight                           288
        dwMinBitRate                  6082560
        dwMaxBitRate                  6082560
        dwMaxVideoFrameBufferSize      202752
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         6
        bmCapabilities                   0x01
          Still image supported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 18432000
        dwMaxBitRate                 18432000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
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
        wMaxPacketSize     0x1400  3x 1024 bytes
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
        wMaxPacketSize     0x0400  1x 1024 bytes
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
        wMaxPacketSize     0x0c00  2x 1024 bytes
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
        wMaxPacketSize     0x0000  1x 0 bytes
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

--------------35305762424F618AEA087788
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------35305762424F618AEA087788
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--------------35305762424F618AEA087788--

