Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6C11B8A62
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 26 Apr 2020 02:45:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jSVQ9-00026t-OM; Sun, 26 Apr 2020 00:45:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cbullow@gmail.com>) id 1jSVQ8-00026h-4u
 for linux-uvc-devel@lists.sourceforge.net; Sun, 26 Apr 2020 00:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:To:From:References:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0K3NM80ewIZeZUBO8Q5brGlxbYDymX0NGwyheX7Qfv8=; b=XHTYyRVg9zjzJgBrNjWm23HaZ
 LnCPKpzrfQfss20H8XSAP0B0rQoktgCFq4UgYg14QdCxZ31okc9cB97d3LhubxJ7lTPNkLUMorxIs
 hbXeDiPLzj8Itf2rL/M4OW116xfqcXEVMgISaBdT10PZR95p0RoILHf4Xwe61/NdWnWv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:To:From:References:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0K3NM80ewIZeZUBO8Q5brGlxbYDymX0NGwyheX7Qfv8=; b=cSFVCnr5VXpZE9eRTNeOp0hruy
 G+Q+qykuF6/+ECCgdyU5cWpVRz89NmQ5zCyoCdHOUUTqLMoQIvMK/wWYbW9RiMWPjddoYz+DRJtjh
 Q2Pyj+D01xzWQx0ouCJgJRaJLGn3nj+iT9IHuaV5PiByOTpcD3u3Tjk2iCgvvHGOogQY=;
Received: from mail-pf1-f179.google.com ([209.85.210.179])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jSVPu-00B53K-W2
 for linux-uvc-devel@lists.sourceforge.net; Sun, 26 Apr 2020 00:45:20 +0000
Received: by mail-pf1-f179.google.com with SMTP id v63so6883223pfb.10
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat, 25 Apr 2020 17:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:references:from:to:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=0K3NM80ewIZeZUBO8Q5brGlxbYDymX0NGwyheX7Qfv8=;
 b=bIy6yzXejj5ono2sE+Y9SvW+mbpm6Fp5rM4TQmbm4X/WIhG5ngv1KN5GSex2LoN0Pp
 ap3keB2LsxeYSNNah25I2f3GktfjeKN69PlY08ne5lJyqP1hgI+qAY+wtt4B8TweOUNn
 7EH2WCOyY7BrzYh807QM/FACiqbTXbo+zZv/O6fFhABzMfE6iwc0emUZEYw6pEEK+hlO
 jlNKQkG3yhpKEn3un43nKfTTE62wZcFaZsf/rZDX2aa8z7Uk0gCFfYsJvh2hzYqv0H20
 Y4oeLEvyQW174Fbz2tx+zLzLsDIiFpX6kZugPunknTli7y2YLXo4FCkIv/CJylEc41Xf
 DSPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:references:from:to:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=0K3NM80ewIZeZUBO8Q5brGlxbYDymX0NGwyheX7Qfv8=;
 b=JWu0W8/vxJ4PPJqSwC1Dn0Ly8eeJfhAilLYcSXsqTHs6QDH23dElHxkk5k8+4qyE+2
 qJ1M8d5JNOhjXhbvRUzDTnpLAGYLKWopF6EPPKfGnUMbmdnrPyhMGCV+eDZwIPp2BHSs
 s3VXGxlBHg4nKM8Kiq8Jk4TQ3DW6sf8iiuioqFIam/4KZrKOv4vHtpCdyMAW4xkPLfIU
 XvfWTseKoL94B57W6ID3M5CaNuhcjNtM0QC2EzMitHBuisQwMf+WPUOh0Y16Lgn0nIM7
 10qrl10Ye5/U03z6l1qxc94f6sfytzrv6z1mXPXk+sHLgt//cykSX5ucxKEAYddFIlxn
 JK8A==
X-Gm-Message-State: AGi0PuY1txeyBCXS+i6ZPwAa1vX/LuOUxtg+FW2ODWNDlkwtgQg+fJcp
 NuOhFt1MJELWJyLikeDgskLiAbyg
X-Google-Smtp-Source: APiQypJeq6lUtY0L5UT3GBDQi9eHBuWpMCXAg0VY9cFdNM7w8TdmuDwD3NBRMe4NR96OMedJE8QgmA==
X-Received: by 2002:a62:7656:: with SMTP id r83mr16636380pfc.71.1587861900304; 
 Sat, 25 Apr 2020 17:45:00 -0700 (PDT)
Received: from [192.168.50.220] ([101.164.33.150])
 by smtp.gmail.com with ESMTPSA id c3sm8856129pfa.160.2020.04.25.17.44.56
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 17:44:59 -0700 (PDT)
References: <000c01d61adc$ea65dd80$bf319880$@gmail.com>
From: Christian Bullow <cbullow@gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Forwarded-Message-Id: <000c01d61adc$ea65dd80$bf319880$@gmail.com>
Message-ID: <65eb6955-c33f-13b3-c100-1e0381003b20@gmail.com>
Date: Sun, 26 Apr 2020 10:44:54 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <000c01d61adc$ea65dd80$bf319880$@gmail.com>
Content-Type: multipart/mixed; boundary="------------397391A4D6C1CF314471C0F2"
Content-Language: en-US
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (cbullow[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jSVPu-00B53K-W2
Subject: [linux-uvc-devel] Fwd: FW: Logitech Streamcam 046d:0893
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
--------------397391A4D6C1CF314471C0F2
Content-Type: multipart/alternative;
 boundary="------------88EEE35CFEED4292AA07ACC0"


--------------88EEE35CFEED4292AA07ACC0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all

I played with different commands again today. Cheese generally 
blackscreens and guvcview segfaults. But I eventually got it going. I 
couldn't work out why, but possibly it was the installation of the 
following packages:

/2020-04-26 00:54:31 upgrade distro-info-data:all 0.43ubuntu1 0.43ubuntu1.1
2020-04-26 00:54:31 upgrade libnetplan0:amd64 0.99-0ubuntu1 0.99-0ubuntu2
2020-04-26 00:54:31 upgrade netplan.io:amd64 0.99-0ubuntu1 0.99-0ubuntu2
*2020-04-26 10:10:35 install libv4l2rds0:amd64 <none> 1.18.0-2build1*/*/
/**/2020-04-26 10:10:35 install v4l-utils:amd64 <none> 1.18.0-2build1/*/
/

I tried simply/Cheese -d /dev/video0 /appears to work!

Running a command like this works to produce video at least:

    mplayer tv:// -tv
    driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30

Given the formats listed (attached in txt file) I tried the maximum 
video resolution and framerate possible and it worked!

    vicomte@Hercules:~$ mplayer tv:// -tv
    driver=v4l2:width=1920:height=1080:device=/dev/video0 -fps 60
    MPlayer 1.3.0 (Debian), built with gcc-9 (C) 2000-2016 MPlayer Team
    do_connect: could not connect to socket
    connect: No such file or directory
    Failed to open LIRC support. You will not be able to use your remote
    control.
    Playing tv://.
    TV file format detected.
    Selected driver: v4l2
      name: Video 4 Linux 2 input
      author: Martin Olschewski <olschewski@zpr.uni-koeln.de>
      comment: first try, more to come ;-)
    v4l2: your device driver does not support VIDIOC_G_STD ioctl,
    VIDIOC_G_PARM was used instead.
    Selected device: Logitech StreamCam
      Capabilities:  video capture  streaming
      supported norms:
      inputs: 0 = Camera 1;
      Current input: 0
      Current format: YUYV
    tv.c: norm_from_string(pal): Bogus norm parameter, setting default.
    v4l2: ioctl enum norm failed: Inappropriate ioctl for device
    Error: Cannot set norm!
    Selected input hasn't got a tuner!
    v4l2: ioctl set mute failed: Invalid argument
    v4l2: ioctl query control failed: Invalid argument
    ==========================================================================
    Opening video decoder: [raw] RAW Uncompressed Video
    Movie-Aspect is undefined - no prescaling applied.
    VO: [vdpau] 1920x1080 => 1920x1080 Packed YUY2
    Selected video codec: [rawyuy2] vfm: raw (RAW YUY2)
    ==========================================================================
    Audio: no sound
    FPS forced to be 60.000  (ftime: 0.017).
    Starting playback...
    V:   0.0 122/122  0% 20%  0.0% 0 0
    v4l2: ioctl set mute failed: Invalid argument
    v4l2: 123 frames successfully processed, 5 frames dropped.

Regards

Christian


*From:*Christian Bullow <cbullow@gmail.com>
*Sent:* Friday, 24 April 2020 1:34 PM
*To:* linux-uvc-devel@lists.sourceforge.net
*Subject:* Logitech Streamcam 046d:0893

Hi all

A new camera to consider. Logitech Streamcam. Below is on Ubuntu 20.04 
LTS RC1, 5.4.0-26 kernel.

Linux Hercules 5.4.0-26-generic #30-Ubuntu SMP Mon Apr 20 16:58:30 UTC 
2020 x86_64 x86_64 x86_64 GNU/Linux

*dmesg output:*

[21123.369748] usb 2-1: new SuperSpeed Gen 1 USB device number 2 using 
xhci_hcd
[21123.396594] usb 2-1: New USB device found, idVendor=046d, 
idProduct=0893, bcdDevice= 3.17
[21123.396597] usb 2-1: New USB device strings: Mfr=0, Product=2, 
SerialNumber=3
[21123.396598] usb 2-1: Product: Logitech StreamCam
[21123.396599] usb 2-1: SerialNumber: F5BD26E4
[21123.410665] uvcvideo: Found UVC 1.00 device Logitech StreamCam 
(046d:0893)
[21123.426719] uvcvideo 2-1:1.0: Entity type for entity Processing 3 was 
not initialized!
[21123.426722] uvcvideo 2-1:1.0: Entity type for entity Extension 14 was 
not initialized!
[21123.426725] uvcvideo 2-1:1.0: Entity type for entity Extension 6 was 
not initialized!
[21123.426727] uvcvideo 2-1:1.0: Entity type for entity Extension 8 was 
not initialized!
[21123.426729] uvcvideo 2-1:1.0: Entity type for entity Extension 9 was 
not initialized!
[21123.426730] uvcvideo 2-1:1.0: Entity type for entity Extension 10 was 
not initialized!
[21123.426732] uvcvideo 2-1:1.0: Entity type for entity Extension 11 was 
not initialized!
[21123.426734] uvcvideo 2-1:1.0: Entity type for entity Camera 1 was not 
initialized!
[21123.426835] input: Logitech StreamCam as 
/devices/pci0000:00/0000:00:01.3/0000:03:00.0/usb2/2-1/2-1:1.0/input/input28
[21123.439347] usb 2-1: current rate 16000 is different from the runtime 
rate 24000
[21123.445869] usb 2-1: current rate 16000 is different from the runtime 
rate 32000
[21123.452602] usb 2-1: current rate 16000 is different from the runtime 
rate 48000
[21123.471723] hid-generic 0003:046D:0893.0007: hiddev1,hidraw6: USB HID 
v1.11 Device [Logitech StreamCam] on usb-0000:03:00.0-1/input5
[21123.570858] usb 2-1: current rate 16000 is different from the runtime 
rate 48000
[21123.581862] usb 2-1: current rate 16000 is different from the runtime 
rate 48000
[21123.596367] usb 2-1: current rate 16000 is different from the runtime 
rate 48000
[21150.846275] usb 2-1: reset SuperSpeed Gen 1 USB device number 2 using 
xhci_hcd

*When attempting to run guvcview:*

[21151.939890] guvcview[47761]: segfault at 7f7f88b31000 ip 
00007f7f90b6a678 sp 00007f7f8932ff78 error 6 in 
libv4lconvert.so.0.0.0[7f7f90b5b000+19000]

*When attempting to trace:*

vicomte@Hercules:~$ sudo echo 0xffff > /sys/module/uvcvideo/parameters/trace
bash: /sys/module/uvcvideo/parameters/trace: Permission denied

*When attempting to run Cheese:*

[21246.991605] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13

[21246.991610] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f0540 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.991851] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.991854] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f0560 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.992476] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.992479] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f0570 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.992481] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.992483] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f0580 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.992484] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.992486] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f0590 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.992487] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.992489] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f05a0 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.992490] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.992492] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f05b0 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.992493] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.992495] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f05c0 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0
[21246.992976] xhci_hcd 0000:03:00.0: ERROR Transfer event TRB DMA ptr 
not part of current TD ep_index 2 comp_code 13
[21246.992979] xhci_hcd 0000:03:00.0: Looking for event-dma 
00000000f88f05d0 trb-start 00000000f88f0520 trb-end 00000000f88f0520 
seg-start 00000000f88f0000 seg-end 00000000f88f0ff0

*lsusb -vv output:*

Bus 002 Device 002: ID 046d:0893 Logitech, Inc. Logitech StreamCam
Device Descriptor:
   bLength                18
   bDescriptorType         1
   bcdUSB               3.20
   bDeviceClass          239 Miscellaneous Device
   bDeviceSubClass         2
   bDeviceProtocol         1 Interface Association
   bMaxPacketSize0         9
   idVendor           0x046d Logitech, Inc.
   idProduct          0x0893
   bcdDevice            3.17
   iManufacturer           0
   iProduct                2 Logitech StreamCam
   iSerial                 3 F5BD26E4
   bNumConfigurations      1
   Configuration Descriptor:
     bLength                 9
     bDescriptorType         2
     wTotalLength       0x0933
     bNumInterfaces          6
     bConfigurationValue     1
     iConfiguration          0
     bmAttributes         0x80
       (Bus Powered)
     MaxPower              896mA
     Interface Association:
       bLength                 8
       bDescriptorType        11
       bFirstInterface         0
       bInterfaceCount         2
       bFunctionClass         14 Video
       bFunctionSubClass       3 Video Interface Collection
       bFunctionProtocol       0
       iFunction               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        0
       bAlternateSetting       0
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      1 Video Control
       bInterfaceProtocol      0
       iInterface              0
       VideoControl Interface Descriptor:
         bLength                13
         bDescriptorType        36
         bDescriptorSubtype      1 (HEADER)
         bcdUVC               1.00
         wTotalLength       0x00d8
         dwClockFrequency       30.000000MHz
         bInCollection           1
         baInterfaceNr( 0)       1
       VideoControl Interface Descriptor:
         bLength                18
         bDescriptorType        36
         bDescriptorSubtype      2 (INPUT_TERMINAL)
         bTerminalID             1
         wTerminalType      0x0201 Camera Sensor
         bAssocTerminal          0
         iTerminal               0
         wObjectiveFocalLengthMin      0
         wObjectiveFocalLengthMax      0
         wOcularFocalLength            0
         bControlSize                  3
         bmControls           0x00022a2e
           Auto-Exposure Mode
           Auto-Exposure Priority
           Exposure Time (Absolute)
           Focus (Absolute)
           Zoom (Absolute)
           PanTilt (Absolute)
           Roll (Absolute)
           Focus, Auto
       VideoControl Interface Descriptor:
         bLength                11
         bDescriptorType        36
         bDescriptorSubtype      5 (PROCESSING_UNIT)
       Warning: Descriptor too short
         bUnitID                 3
         bSourceID               1
         wMaxMultiplier      16384
         bControlSize            2
         bmControls     0x0000175b
           Brightness
           Contrast
           Saturation
           Sharpness
           White Balance Temperature
           Backlight Compensation
           Gain
           Power Line Frequency
           White Balance Temperature, Auto
         iProcessing             0
         bmVideoStandards     0x1b
           None
           NTSC - 525/60
           SECAM - 625/50
           NTSC - 625/50
       VideoControl Interface Descriptor:
         bLength                27
         bDescriptorType        36
         bDescriptorSubtype      6 (EXTENSION_UNIT)
         bUnitID                14
         guidExtensionCode {2c49d16a-32b8-4485-3ea8-643a152362f2}
         bNumControl             6
         bNrPins                 1
         baSourceID( 0)          3
         bControlSize            2
         bmControls( 0)       0x3f
         bmControls( 1)       0x00
         iExtension              0
       VideoControl Interface Descriptor:
         bLength                27
         bDescriptorType        36
         bDescriptorSubtype      6 (EXTENSION_UNIT)
         bUnitID                 6
         guidExtensionCode {23e49ed0-1178-4f31-ae52-d2fb8a8d3b48}
         bNumControl            14
         bNrPins                 1
         baSourceID( 0)          3
         bControlSize            2
         bmControls( 0)       0xff
         bmControls( 1)       0x6f
         iExtension              0
       VideoControl Interface Descriptor:
         bLength                27
         bDescriptorType        36
         bDescriptorSubtype      6 (EXTENSION_UNIT)
         bUnitID                 8
         guidExtensionCode {69678ee4-410f-40db-a850-7420d7d8240e}
         bNumControl             8
         bNrPins                 1
         baSourceID( 0)          3
         bControlSize            2
         bmControls( 0)       0x3f
         bmControls( 1)       0x0f
         iExtension              0
       VideoControl Interface Descriptor:
         bLength                28
         bDescriptorType        36
         bDescriptorSubtype      6 (EXTENSION_UNIT)
         bUnitID                 9
         guidExtensionCode {1f5d4ca9-de11-4487-840d-50933c8ec8d1}
         bNumControl            18
         bNrPins                 1
         baSourceID( 0)          3
         bControlSize            3
         bmControls( 0)       0xff
         bmControls( 1)       0xff
         bmControls( 2)       0x03
         iExtension              0
       VideoControl Interface Descriptor:
         bLength                28
         bDescriptorType        36
         bDescriptorSubtype      6 (EXTENSION_UNIT)
         bUnitID                10
         guidExtensionCode {49e40215-f434-47fe-b158-0e885023e51b}
         bNumControl            11
         bNrPins                 1
         baSourceID( 0)          3
         bControlSize            3
         bmControls( 0)       0xfa
         bmControls( 1)       0xff
         bmControls( 2)       0x01
         iExtension              0
       VideoControl Interface Descriptor:
         bLength                28
         bDescriptorType        36
         bDescriptorSubtype      6 (EXTENSION_UNIT)
         bUnitID                11
         guidExtensionCode {ffe52d21-8030-4e2c-82d9-f587d00540bd}
         bNumControl             4
         bNrPins                 1
         baSourceID( 0)          3
         bControlSize            3
         bmControls( 0)       0x00
         bmControls( 1)       0x41
         bmControls( 2)       0x01
         iExtension              0
       VideoControl Interface Descriptor:
         bLength                 9
         bDescriptorType        36
         bDescriptorSubtype      3 (OUTPUT_TERMINAL)
         bTerminalID             4
         wTerminalType      0x0101 USB Streaming
         bAssocTerminal          0
         bSourceID               3
         iTerminal               0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x85  EP 5 IN
         bmAttributes            3
           Transfer Type            Interrupt
           Synch Type               None
           Usage Type               Data
         wMaxPacketSize     0x0040  1x 64 bytes
         bInterval               8
         bMaxBurst               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       0
       bNumEndpoints           0
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       VideoStreaming Interface Descriptor:
         bLength                            16
         bDescriptorType                    36
         bDescriptorSubtype                  1 (INPUT_HEADER)
         bNumFormats                         3
         wTotalLength                   0x05b9
         bEndPointAddress                  129
         bmInfo                              0
         bTerminalLink                       4
         bStillCaptureMethod                 0
         bTriggerSupport                     0
         bTriggerUsage                       0
         bControlSize                        1
         bmaControls( 0)                     0
         bmaControls( 1)                     0
         bmaControls( 2)                     0
       VideoStreaming Interface Descriptor:
         bLength                            27
         bDescriptorType                    36
         bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
         bFormatIndex                        1
         bNumFrameDescriptors               11
         guidFormat {32595559-0000-0010-8000-00aa00389b71}
         bBitsPerPixel                      16
         bDefaultFrameIndex                  1
         bAspectRatioX                       0
         bAspectRatioY                       0
         bmInterlaceFlags                 0x00
           Interlaced stream or variable: No
           Fields per frame: 2 fields
           Field 1 first: No
           Field pattern: Field 1 only
         bCopyProtect                        0
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         1
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            640
         wHeight                           480
         dwMinBitRate                 24576000
         dwMaxBitRate                147456000
         dwMaxVideoFrameBufferSize      614400
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         2
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            176
         wHeight                           144
         dwMinBitRate                  2027520
         dwMaxBitRate                 12165120
         dwMaxVideoFrameBufferSize       50688
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         3
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            320
         wHeight                           240
         dwMinBitRate                  6144000
         dwMaxBitRate                 36864000
         dwMaxVideoFrameBufferSize      153600
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         4
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            424
         wHeight                           240
         dwMinBitRate                  8140800
         dwMaxBitRate                 48844800
         dwMaxVideoFrameBufferSize      203520
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         5
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            640
         wHeight                           360
         dwMinBitRate                 18432000
         dwMaxBitRate                110592000
         dwMaxVideoFrameBufferSize      460800
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         6
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            848
         wHeight                           480
         dwMinBitRate                 32563200
         dwMaxBitRate                195379200
         dwMaxVideoFrameBufferSize      814080
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         7
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            960
         wHeight                           540
         dwMinBitRate                 41472000
         dwMaxBitRate                248832000
         dwMaxVideoFrameBufferSize     1036800
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         8
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1280
         wHeight                           720
         dwMinBitRate                 73728000
         dwMaxBitRate                442368000
         dwMaxVideoFrameBufferSize     1843200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         9
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1600
         wHeight                           896
         dwMinBitRate                114688000
         dwMaxBitRate                688128000
         dwMaxVideoFrameBufferSize     2867200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                        10
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1920
         wHeight                          1080
         dwMinBitRate                165888000
         dwMaxBitRate                995328000
         dwMaxVideoFrameBufferSize     4147200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            30
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                        11
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           2304
         wHeight                          1296
         dwMinBitRate                238878720
         dwMaxBitRate                238878720
         dwMaxVideoFrameBufferSize     5971968
         dwDefaultFrameInterval        2000000
         bFrameIntervalType                  1
         dwFrameInterval( 0)           2000000
       VideoStreaming Interface Descriptor:
         bLength                             6
         bDescriptorType                    36
         bDescriptorSubtype                 13 (COLORFORMAT)
         bColorPrimaries                     1 (BT.709,sRGB)
         bTransferCharacteristics            1 (BT.709)
         bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
       VideoStreaming Interface Descriptor:
         bLength                            11
         bDescriptorType                    36
         bDescriptorSubtype                  6 (FORMAT_MJPEG)
         bFormatIndex                        2
         bNumFrameDescriptors               10
         bFlags                              1
           Fixed-size samples: Yes
         bDefaultFrameIndex                  1
         bAspectRatioX                       0
         bAspectRatioY                       0
         bmInterlaceFlags                 0x00
           Interlaced stream or variable: No
           Fields per frame: 1 fields
           Field 1 first: No
           Field pattern: Field 1 only
         bCopyProtect                        0
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         1
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            640
         wHeight                           480
         dwMinBitRate                 24576000
         dwMaxBitRate                294912000
         dwMaxVideoFrameBufferSize      614400
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         2
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            176
         wHeight                           144
         dwMinBitRate                  2027520
         dwMaxBitRate                 24330240
         dwMaxVideoFrameBufferSize       50688
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         3
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            320
         wHeight                           240
         dwMinBitRate                  6144000
         dwMaxBitRate                 73728000
         dwMaxVideoFrameBufferSize      153600
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         4
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            424
         wHeight                           240
         dwMinBitRate                  8140800
         dwMaxBitRate                 97689600
         dwMaxVideoFrameBufferSize      203520
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         5
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            640
         wHeight                           360
         dwMinBitRate                 18432000
         dwMaxBitRate                221184000
         dwMaxVideoFrameBufferSize      460800
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         6
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            848
         wHeight                           480
         dwMinBitRate                 32563200
         dwMaxBitRate                390758400
         dwMaxVideoFrameBufferSize      814080
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         7
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            960
         wHeight                           540
         dwMinBitRate                 41472000
         dwMaxBitRate                497664000
         dwMaxVideoFrameBufferSize     1036800
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         8
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1280
         wHeight                           720
         dwMinBitRate                 73728000
         dwMaxBitRate                884736000
         dwMaxVideoFrameBufferSize     1843200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                         9
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1600
         wHeight                           896
         dwMinBitRate                114688000
         dwMaxBitRate                1376256000
         dwMaxVideoFrameBufferSize     2867200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            58
         bDescriptorType                    36
         bDescriptorSubtype                  7 (FRAME_MJPEG)
         bFrameIndex                        10
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1920
         wHeight                          1080
         dwMinBitRate                165888000
         dwMaxBitRate                1990656000
         dwMaxVideoFrameBufferSize     4147200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  8
         dwFrameInterval( 0)            166666
         dwFrameInterval( 1)            333333
         dwFrameInterval( 2)            416666
         dwFrameInterval( 3)            500000
         dwFrameInterval( 4)            666666
         dwFrameInterval( 5)           1000000
         dwFrameInterval( 6)           1333333
         dwFrameInterval( 7)           2000000
       VideoStreaming Interface Descriptor:
         bLength                             6
         bDescriptorType                    36
         bDescriptorSubtype                 13 (COLORFORMAT)
         bColorPrimaries                     1 (BT.709,sRGB)
         bTransferCharacteristics            1 (BT.709)
         bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
       VideoStreaming Interface Descriptor:
         bLength                            27
         bDescriptorType                    36
         bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
         bFormatIndex                        3
         bNumFrameDescriptors                4
         guidFormat {3231564e-0000-0010-8000-00aa00389b71}
         bBitsPerPixel                      12
         bDefaultFrameIndex                  1
         bAspectRatioX                       0
         bAspectRatioY                       0
         bmInterlaceFlags                 0x00
           Interlaced stream or variable: No
           Fields per frame: 2 fields
           Field 1 first: No
           Field pattern: Field 1 only
         bCopyProtect                        0
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         1
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            640
         wHeight                           480
         dwMinBitRate                 24576000
         dwMaxBitRate                147456000
         dwMaxVideoFrameBufferSize      614400
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         2
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                            640
         wHeight                           360
         dwMinBitRate                 18432000
         dwMaxBitRate                110592000
         dwMaxVideoFrameBufferSize      460800
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         3
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1280
         wHeight                           720
         dwMinBitRate                 73728000
         dwMaxBitRate                442368000
         dwMaxVideoFrameBufferSize     1843200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                            54
         bDescriptorType                    36
         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
         bFrameIndex                         4
         bmCapabilities                   0x00
           Still image unsupported
         wWidth                           1920
         wHeight                          1080
         dwMinBitRate                165888000
         dwMaxBitRate                995328000
         dwMaxVideoFrameBufferSize     4147200
         dwDefaultFrameInterval         333333
         bFrameIntervalType                  7
         dwFrameInterval( 0)            333333
         dwFrameInterval( 1)            416666
         dwFrameInterval( 2)            500000
         dwFrameInterval( 3)            666666
         dwFrameInterval( 4)           1000000
         dwFrameInterval( 5)           1333333
         dwFrameInterval( 6)           2000000
       VideoStreaming Interface Descriptor:
         bLength                             6
         bDescriptorType                    36
         bDescriptorSubtype                 13 (COLORFORMAT)
         bColorPrimaries                     1 (BT.709,sRGB)
         bTransferCharacteristics            1 (BT.709)
         bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       1
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0180  1x 384 bytes
         bInterval               1
         bMaxBurst               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       2
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0280  1x 640 bytes
         bInterval               1
         bMaxBurst               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       3
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x03b0  1x 944 bytes
         bInterval               1
         bMaxBurst               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       4
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       5
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               1
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       6
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               2
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       7
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               2
         Mult                    1
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       8
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               2
         Mult                    2
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       9
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               3
         Mult                    2
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting      10
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               4
         Mult                    2
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting      11
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               5
         Mult                    2
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting      12
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               6
         Mult                    2
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting      13
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               7
         Mult                    2
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting      14
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               1
         bMaxBurst               9
         Mult                    2
     Interface Association:
       bLength                 8
       bDescriptorType        11
       bFirstInterface         2
       bInterfaceCount         2
       bFunctionClass          1 Audio
       bFunctionSubClass       2 Streaming
       bFunctionProtocol       0
       iFunction               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        2
       bAlternateSetting       0
       bNumEndpoints           0
       bInterfaceClass         1 Audio
       bInterfaceSubClass      1 Control Device
       bInterfaceProtocol      0
       iInterface              0
       AudioControl Interface Descriptor:
         bLength                 9
         bDescriptorType        36
         bDescriptorSubtype      1 (HEADER)
         bcdADC               1.00
         wTotalLength       0x0026
         bInCollection           1
         baInterfaceNr(0)        3
       AudioControl Interface Descriptor:
         bLength                12
         bDescriptorType        36
         bDescriptorSubtype      2 (INPUT_TERMINAL)
         bTerminalID             1
         wTerminalType      0x0201 Microphone
         bAssocTerminal          0
         bNrChannels             2
         wChannelConfig     0x0003
           Left Front (L)
           Right Front (R)
         iChannelNames           0
         iTerminal               0
       AudioControl Interface Descriptor:
         bLength                 9
         bDescriptorType        36
         bDescriptorSubtype      3 (OUTPUT_TERMINAL)
         bTerminalID             3
         wTerminalType      0x0101 USB Streaming
         bAssocTerminal          0
         bSourceID               5
         iTerminal               0
       AudioControl Interface Descriptor:
         bLength                 8
         bDescriptorType        36
         bDescriptorSubtype      6 (FEATURE_UNIT)
         bUnitID                 5
         bSourceID               1
         bControlSize            1
         bmaControls(0)       0x03
           Mute Control
           Volume Control
         iFeature                0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        3
       bAlternateSetting       0
       bNumEndpoints           0
       bInterfaceClass         1 Audio
       bInterfaceSubClass      2 Streaming
       bInterfaceProtocol      0
       iInterface              0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        3
       bAlternateSetting       1
       bNumEndpoints           1
       bInterfaceClass         1 Audio
       bInterfaceSubClass      2 Streaming
       bInterfaceProtocol      0
       iInterface              0
       AudioStreaming Interface Descriptor:
         bLength                 7
         bDescriptorType        36
         bDescriptorSubtype      1 (AS_GENERAL)
         bTerminalLink           3
         bDelay                  1 frames
         wFormatTag         0x0001 PCM
       AudioStreaming Interface Descriptor:
         bLength                11
         bDescriptorType        36
         bDescriptorSubtype      2 (FORMAT_TYPE)
         bFormatType             1 (FORMAT_TYPE_I)
         bNrChannels             2
         bSubframeSize           2
         bBitResolution         16
         bSamFreqType            1 Discrete
         tSamFreq[ 0]        16000
       Endpoint Descriptor:
         bLength                 9
         bDescriptorType         5
         bEndpointAddress     0x84  EP 4 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0044  1x 68 bytes
         bInterval               4
         bRefresh                0
         bSynchAddress           0
         bMaxBurst               0
         AudioStreaming Endpoint Descriptor:
           bLength                 7
           bDescriptorType        37
           bDescriptorSubtype      1 (EP_GENERAL)
           bmAttributes         0x01
             Sampling Frequency
           bLockDelayUnits         0 Undefined
           wLockDelay         0x0000
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        3
       bAlternateSetting       2
       bNumEndpoints           1
       bInterfaceClass         1 Audio
       bInterfaceSubClass      2 Streaming
       bInterfaceProtocol      0
       iInterface              0
       AudioStreaming Interface Descriptor:
         bLength                 7
         bDescriptorType        36
         bDescriptorSubtype      1 (AS_GENERAL)
         bTerminalLink           3
         bDelay                  1 frames
         wFormatTag         0x0001 PCM
       AudioStreaming Interface Descriptor:
         bLength                11
         bDescriptorType        36
         bDescriptorSubtype      2 (FORMAT_TYPE)
         bFormatType             1 (FORMAT_TYPE_I)
         bNrChannels             2
         bSubframeSize           2
         bBitResolution         16
         bSamFreqType            1 Discrete
         tSamFreq[ 0]        24000
       Endpoint Descriptor:
         bLength                 9
         bDescriptorType         5
         bEndpointAddress     0x84  EP 4 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0064  1x 100 bytes
         bInterval               4
         bRefresh                0
         bSynchAddress           0
         bMaxBurst               0
         AudioStreaming Endpoint Descriptor:
           bLength                 7
           bDescriptorType        37
           bDescriptorSubtype      1 (EP_GENERAL)
           bmAttributes         0x01
             Sampling Frequency
           bLockDelayUnits         0 Undefined
           wLockDelay         0x0000
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        3
       bAlternateSetting       3
       bNumEndpoints           1
       bInterfaceClass         1 Audio
       bInterfaceSubClass      2 Streaming
       bInterfaceProtocol      0
       iInterface              0
       AudioStreaming Interface Descriptor:
         bLength                 7
         bDescriptorType        36
         bDescriptorSubtype      1 (AS_GENERAL)
         bTerminalLink           3
         bDelay                  1 frames
         wFormatTag         0x0001 PCM
       AudioStreaming Interface Descriptor:
         bLength                11
         bDescriptorType        36
         bDescriptorSubtype      2 (FORMAT_TYPE)
         bFormatType             1 (FORMAT_TYPE_I)
         bNrChannels             2
         bSubframeSize           2
         bBitResolution         16
         bSamFreqType            1 Discrete
         tSamFreq[ 0]        32000
       Endpoint Descriptor:
         bLength                 9
         bDescriptorType         5
         bEndpointAddress     0x84  EP 4 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x0084  1x 132 bytes
         bInterval               4
         bRefresh                0
         bSynchAddress           0
         bMaxBurst               0
         AudioStreaming Endpoint Descriptor:
           bLength                 7
           bDescriptorType        37
           bDescriptorSubtype      1 (EP_GENERAL)
           bmAttributes         0x01
             Sampling Frequency
           bLockDelayUnits         0 Undefined
           wLockDelay         0x0000
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        3
       bAlternateSetting       4
       bNumEndpoints           1
       bInterfaceClass         1 Audio
       bInterfaceSubClass      2 Streaming
       bInterfaceProtocol      0
       iInterface              0
       AudioStreaming Interface Descriptor:
         bLength                 7
         bDescriptorType        36
         bDescriptorSubtype      1 (AS_GENERAL)
         bTerminalLink           3
         bDelay                  1 frames
         wFormatTag         0x0001 PCM
       AudioStreaming Interface Descriptor:
         bLength                11
         bDescriptorType        36
         bDescriptorSubtype      2 (FORMAT_TYPE)
         bFormatType             1 (FORMAT_TYPE_I)
         bNrChannels             2
         bSubframeSize           2
         bBitResolution         16
         bSamFreqType            1 Discrete
         tSamFreq[ 0]        48000
       Endpoint Descriptor:
         bLength                 9
         bDescriptorType         5
         bEndpointAddress     0x84  EP 4 IN
         bmAttributes            5
           Transfer Type            Isochronous
           Synch Type               Asynchronous
           Usage Type               Data
         wMaxPacketSize     0x00c4  1x 196 bytes
         bInterval               4
         bRefresh                0
         bSynchAddress           0
         bMaxBurst               0
         AudioStreaming Endpoint Descriptor:
           bLength                 7
           bDescriptorType        37
           bDescriptorSubtype      1 (EP_GENERAL)
           bmAttributes         0x01
             Sampling Frequency
           bLockDelayUnits         0 Undefined
           wLockDelay         0x0000
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        4
       bAlternateSetting       0
       bNumEndpoints           1
       bInterfaceClass       255 Vendor Specific Class
       bInterfaceSubClass    255 Vendor Specific Subclass
       bInterfaceProtocol      0
       iInterface              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x83  EP 3 IN
         bmAttributes            2
           Transfer Type            Bulk
           Synch Type               None
           Usage Type               Data
         wMaxPacketSize     0x0400  1x 1024 bytes
         bInterval               0
         bMaxBurst               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        5
       bAlternateSetting       0
       bNumEndpoints           1
       bInterfaceClass         3 Human Interface Device
       bInterfaceSubClass      0
       bInterfaceProtocol      0
       iInterface              0
         HID Device Descriptor:
           bLength                 9
           bDescriptorType        33
           bcdHID               1.11
           bCountryCode            0 Not supported
           bNumDescriptors         1
           bDescriptorType        34 Report
           wDescriptorLength     108
          Report Descriptors:
            ** UNAVAILABLE **
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x87  EP 7 IN
         bmAttributes            3
           Transfer Type            Interrupt
           Synch Type               None
           Usage Type               Data
         wMaxPacketSize     0x0002  1x 2 bytes
         bInterval               6
         bMaxBurst               0
Binary Object Store Descriptor:
   bLength                 5
   bDescriptorType        15
   wTotalLength       0x0016
   bNumDeviceCaps          2
   USB 2.0 Extension Device Capability:
     bLength                 7
     bDescriptorType        16
     bDevCapabilityType      2
     bmAttributes   0x00000002
       HIRD Link Power Management (LPM) Supported
   SuperSpeed USB Device Capability:
     bLength                10
     bDescriptorType        16
     bDevCapabilityType      3
     bmAttributes         0x00
     wSpeedsSupported   0x000e
       Device can operate at Full Speed (12Mbps)
       Device can operate at High Speed (480Mbps)
       Device can operate at SuperSpeed (5Gbps)
     bFunctionalitySupport   2
       Lowest fully-functional device speed is High Speed (480Mbps)
     bU1DevExitLat          10 micro seconds
     bU2DevExitLat         256 micro seconds
Device Status:     0x0000
   (Bus Powered)


--------------88EEE35CFEED4292AA07ACC0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi all</p>
    <p>I played with different commands again today. Cheese generally
      blackscreens and guvcview segfaults. But I eventually got it
      going. I couldn't work out why, but possibly it was the
      installation of the following packages:</p>
    <p><i>2020-04-26 00:54:31 upgrade distro-info-data:all 0.43ubuntu1
        0.43ubuntu1.1<br>
        2020-04-26 00:54:31 upgrade libnetplan0:amd64 0.99-0ubuntu1
        0.99-0ubuntu2<br>
        2020-04-26 00:54:31 upgrade netplan.io:amd64 0.99-0ubuntu1
        0.99-0ubuntu2<br>
        <b>2020-04-26 10:10:35 install libv4l2rds0:amd64 &lt;none&gt;
          1.18.0-2build1</b></i><b><i><br>
        </i></b><b><i>2020-04-26 10:10:35 install v4l-utils:amd64
          &lt;none&gt; 1.18.0-2build1</i></b><i><br>
      </i></p>
    <p>I tried simply<i> Cheese -d /dev/video0 </i>appears to work!</p>
    <p>Running a command like this works to produce video at least: <br>
    </p>
    <blockquote>
      <p><font size="-1" face="Courier New, Courier, monospace">mplayer
          tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0
          -fps 30</font></p>
    </blockquote>
    <p>Given the formats listed (attached in txt file) I tried the
      maximum video resolution and framerate possible and it worked!<br>
    </p>
    <blockquote>
      <p><font size="-2" face="Courier New, Courier, monospace">vicomte@Hercules:~$
          mplayer tv:// -tv
          driver=v4l2:width=1920:height=1080:device=/dev/video0 -fps 60<br>
          MPlayer 1.3.0 (Debian), built with gcc-9 (C) 2000-2016 MPlayer
          Team<br>
          do_connect: could not connect to socket<br>
          connect: No such file or directory<br>
          Failed to open LIRC support. You will not be able to use your
          remote control.</font><br>
        <font size="-2" face="Courier New, Courier, monospace">Playing
          tv://.<br>
          TV file format detected.<br>
          Selected driver: v4l2<br>
           name: Video 4 Linux 2 input<br>
           author: Martin Olschewski <a class="moz-txt-link-rfc2396E" href="mailto:olschewski@zpr.uni-koeln.de">&lt;olschewski@zpr.uni-koeln.de&gt;</a><br>
           comment: first try, more to come ;-)<br>
          v4l2: your device driver does not support VIDIOC_G_STD ioctl,
          VIDIOC_G_PARM was used instead.<br>
          Selected device: Logitech StreamCam<br>
           Capabilities:  video capture  streaming<br>
           supported norms:<br>
           inputs: 0 = Camera 1;<br>
           Current input: 0<br>
           Current format: YUYV<br>
          tv.c: norm_from_string(pal): Bogus norm parameter, setting
          default.<br>
          v4l2: ioctl enum norm failed: Inappropriate ioctl for device<br>
          Error: Cannot set norm!<br>
          Selected input hasn't got a tuner!<br>
          v4l2: ioctl set mute failed: Invalid argument<br>
          v4l2: ioctl query control failed: Invalid argument<br>
==========================================================================<br>
          Opening video decoder: [raw] RAW Uncompressed Video<br>
          Movie-Aspect is undefined - no prescaling applied.<br>
          VO: [vdpau] 1920x1080 =&gt; 1920x1080 Packed YUY2 <br>
          Selected video codec: [rawyuy2] vfm: raw (RAW YUY2)<br>
==========================================================================<br>
          Audio: no sound<br>
          FPS forced to be 60.000  (ftime: 0.017).<br>
          Starting playback...<br>
          V:   0.0 122/122  0% 20%  0.0% 0 0 <br>
          v4l2: ioctl set mute failed: Invalid argument<br>
          v4l2: 123 frames successfully processed, 5 frames dropped.</font><br>
      </p>
    </blockquote>
    <p>Regards</p>
    <p>Christian<br>
    </p>
    <div class="moz-forward-container"><span
        style="mso-fareast-language:EN-US"><o:p></o:p></span>
      <div class="WordSection1">
        <p class="MsoNormal"><span style="mso-fareast-language:EN-US"><o:p><br>
            </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span lang="EN-US">From:</span></b><span
                lang="EN-US"> Christian Bullow <a class="moz-txt-link-rfc2396E" href="mailto:cbullow@gmail.com">&lt;cbullow@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Friday, 24 April 2020 1:34 PM<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:linux-uvc-devel@lists.sourceforge.net">linux-uvc-devel@lists.sourceforge.net</a><br>
                <b>Subject:</b> Logitech Streamcam 046d:0893<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">Hi all <o:p></o:p></p>
          <p>A new camera to consider. Logitech Streamcam. Below is on
            Ubuntu 20.04 LTS RC1, 5.4.0-26 kernel.<o:p></o:p></p>
          <p>Linux Hercules 5.4.0-26-generic #30-Ubuntu SMP Mon Apr 20
            16:58:30 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux<o:p></o:p></p>
          <p><b>dmesg output:</b><o:p></o:p></p>
          <p>[21123.369748] usb 2-1: new SuperSpeed Gen 1 USB device
            number 2 using xhci_hcd<br>
            [21123.396594] usb 2-1: New USB device found, idVendor=046d,
            idProduct=0893, bcdDevice= 3.17<br>
            [21123.396597] usb 2-1: New USB device strings: Mfr=0,
            Product=2, SerialNumber=3<br>
            [21123.396598] usb 2-1: Product: Logitech StreamCam<br>
            [21123.396599] usb 2-1: SerialNumber: F5BD26E4<br>
            [21123.410665] uvcvideo: Found UVC 1.00 device Logitech
            StreamCam (046d:0893)<br>
            [21123.426719] uvcvideo 2-1:1.0: Entity type for entity
            Processing 3 was not initialized!<br>
            [21123.426722] uvcvideo 2-1:1.0: Entity type for entity
            Extension 14 was not initialized!<br>
            [21123.426725] uvcvideo 2-1:1.0: Entity type for entity
            Extension 6 was not initialized!<br>
            [21123.426727] uvcvideo 2-1:1.0: Entity type for entity
            Extension 8 was not initialized!<br>
            [21123.426729] uvcvideo 2-1:1.0: Entity type for entity
            Extension 9 was not initialized!<br>
            [21123.426730] uvcvideo 2-1:1.0: Entity type for entity
            Extension 10 was not initialized!<br>
            [21123.426732] uvcvideo 2-1:1.0: Entity type for entity
            Extension 11 was not initialized!<br>
            [21123.426734] uvcvideo 2-1:1.0: Entity type for entity
            Camera 1 was not initialized!<br>
            [21123.426835] input: Logitech StreamCam as
/devices/pci0000:00/0000:00:01.3/0000:03:00.0/usb2/2-1/2-1:1.0/input/input28<br>
            [21123.439347] usb 2-1: current rate 16000 is different from
            the runtime rate 24000<br>
            [21123.445869] usb 2-1: current rate 16000 is different from
            the runtime rate 32000<br>
            [21123.452602] usb 2-1: current rate 16000 is different from
            the runtime rate 48000<br>
            [21123.471723] hid-generic 0003:046D:0893.0007:
            hiddev1,hidraw6: USB HID v1.11 Device [Logitech StreamCam]
            on usb-0000:03:00.0-1/input5<br>
            [21123.570858] usb 2-1: current rate 16000 is different from
            the runtime rate 48000<br>
            [21123.581862] usb 2-1: current rate 16000 is different from
            the runtime rate 48000<br>
            [21123.596367] usb 2-1: current rate 16000 is different from
            the runtime rate 48000<br>
            [21150.846275] usb 2-1: reset SuperSpeed Gen 1 USB device
            number 2 using xhci_hcd<o:p></o:p></p>
          <p><b>When attempting to run guvcview:</b><o:p></o:p></p>
          <p>[21151.939890] guvcview[47761]: segfault at 7f7f88b31000 ip
            00007f7f90b6a678 sp 00007f7f8932ff78 error 6 in
            libv4lconvert.so.0.0.0[7f7f90b5b000+19000]<o:p></o:p></p>
          <p><b>When attempting to trace:</b><o:p></o:p></p>
          <p style="margin-bottom:12.0pt">vicomte@Hercules:~$ sudo echo
            0xffff &gt; /sys/module/uvcvideo/parameters/trace<br>
            bash: /sys/module/uvcvideo/parameters/trace: Permission
            denied<o:p></o:p></p>
          <p><b>When attempting to run Cheese:</b><o:p></o:p></p>
          <p class="MsoNormal">[21246.991605] xhci_hcd 0000:03:00.0:
            ERROR Transfer event TRB DMA ptr not part of current TD
            ep_index 2 comp_code 13<o:p></o:p></p>
          <p>[21246.991610] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f0540 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.991851] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.991854] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f0560 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.992476] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.992479] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f0570 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.992481] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.992483] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f0580 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.992484] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.992486] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f0590 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.992487] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.992489] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f05a0 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.992490] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.992492] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f05b0 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.992493] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.992495] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f05c0 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<br>
            [21246.992976] xhci_hcd 0000:03:00.0: ERROR Transfer event
            TRB DMA ptr not part of current TD ep_index 2 comp_code 13<br>
            [21246.992979] xhci_hcd 0000:03:00.0: Looking for event-dma
            00000000f88f05d0 trb-start 00000000f88f0520 trb-end
            00000000f88f0520 seg-start 00000000f88f0000 seg-end
            00000000f88f0ff0<o:p></o:p></p>
          <p><b>lsusb -vv output:</b><o:p></o:p></p>
          <p>Bus 002 Device 002: ID 046d:0893 Logitech, Inc. Logitech
            StreamCam<br>
            Device Descriptor:<br>
              bLength                18<br>
              bDescriptorType         1<br>
              bcdUSB               3.20<br>
              bDeviceClass          239 Miscellaneous Device<br>
              bDeviceSubClass         2 <br>
              bDeviceProtocol         1 Interface Association<br>
              bMaxPacketSize0         9<br>
              idVendor           0x046d Logitech, Inc.<br>
              idProduct          0x0893 <br>
              bcdDevice            3.17<br>
              iManufacturer           0 <br>
              iProduct                2 Logitech StreamCam<br>
              iSerial                 3 F5BD26E4<br>
              bNumConfigurations      1<br>
              Configuration Descriptor:<br>
                bLength                 9<br>
                bDescriptorType         2<br>
                wTotalLength       0x0933<br>
                bNumInterfaces          6<br>
                bConfigurationValue     1<br>
                iConfiguration          0 <br>
                bmAttributes         0x80<br>
                  (Bus Powered)<br>
                MaxPower              896mA<br>
                Interface Association:<br>
                  bLength                 8<br>
                  bDescriptorType        11<br>
                  bFirstInterface         0<br>
                  bInterfaceCount         2<br>
                  bFunctionClass         14 Video<br>
                  bFunctionSubClass       3 Video Interface Collection<br>
                  bFunctionProtocol       0 <br>
                  iFunction               0 <br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        0<br>
                  bAlternateSetting       0<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      1 Video Control<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  VideoControl Interface Descriptor:<br>
                    bLength                13<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      1 (HEADER)<br>
                    bcdUVC               1.00<br>
                    wTotalLength       0x00d8<br>
                    dwClockFrequency       30.000000MHz<br>
                    bInCollection           1<br>
                    baInterfaceNr( 0)       1<br>
                  VideoControl Interface Descriptor:<br>
                    bLength                18<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      2 (INPUT_TERMINAL)<br>
                    bTerminalID             1<br>
                    wTerminalType      0x0201 Camera Sensor<br>
                    bAssocTerminal          0<br>
                    iTerminal               0 <br>
                    wObjectiveFocalLengthMin      0<br>
                    wObjectiveFocalLengthMax      0<br>
                    wOcularFocalLength            0<br>
                    bControlSize                  3<br>
                    bmControls           0x00022a2e<br>
                      Auto-Exposure Mode<br>
                      Auto-Exposure Priority<br>
                      Exposure Time (Absolute)<br>
                      Focus (Absolute)<br>
                      Zoom (Absolute)<br>
                      PanTilt (Absolute)<br>
                      Roll (Absolute)<br>
                      Focus, Auto<br>
                  VideoControl Interface Descriptor:<br>
                    bLength                11<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      5 (PROCESSING_UNIT)<br>
                  Warning: Descriptor too short<br>
                    bUnitID                 3<br>
                    bSourceID               1<br>
                    wMaxMultiplier      16384<br>
                    bControlSize            2<br>
                    bmControls     0x0000175b<br>
                      Brightness<br>
                      Contrast<br>
                      Saturation<br>
                      Sharpness<br>
                      White Balance Temperature<br>
                      Backlight Compensation<br>
                      Gain<br>
                      Power Line Frequency<br>
                      White Balance Temperature, Auto<br>
                    iProcessing             0 <br>
                    bmVideoStandards     0x1b<br>
                      None<br>
                      NTSC - 525/60<br>
                      SECAM - 625/50<br>
                      NTSC - 625/50<br>
                  VideoControl Interface Descriptor:<br>
                    bLength                27<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      6 (EXTENSION_UNIT)<br>
                    bUnitID                14<br>
                    guidExtensionCode        
            {2c49d16a-32b8-4485-3ea8-643a152362f2}<br>
                    bNumControl             6<br>
                    bNrPins                 1<br>
                    baSourceID( 0)          3<br>
                    bControlSize            2<br>
                    bmControls( 0)       0x3f<br>
                    bmControls( 1)       0x00<br>
                    iExtension              0 <br>
                  VideoControl Interface Descriptor:<br>
                    bLength                27<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      6 (EXTENSION_UNIT)<br>
                    bUnitID                 6<br>
                    guidExtensionCode        
            {23e49ed0-1178-4f31-ae52-d2fb8a8d3b48}<br>
                    bNumControl            14<br>
                    bNrPins                 1<br>
                    baSourceID( 0)          3<br>
                    bControlSize            2<br>
                    bmControls( 0)       0xff<br>
                    bmControls( 1)       0x6f<br>
                    iExtension              0 <br>
                  VideoControl Interface Descriptor:<br>
                    bLength                27<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      6 (EXTENSION_UNIT)<br>
                    bUnitID                 8<br>
                    guidExtensionCode        
            {69678ee4-410f-40db-a850-7420d7d8240e}<br>
                    bNumControl             8<br>
                    bNrPins                 1<br>
                    baSourceID( 0)          3<br>
                    bControlSize            2<br>
                    bmControls( 0)       0x3f<br>
                    bmControls( 1)       0x0f<br>
                    iExtension              0 <br>
                  VideoControl Interface Descriptor:<br>
                    bLength                28<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      6 (EXTENSION_UNIT)<br>
                    bUnitID                 9<br>
                    guidExtensionCode        
            {1f5d4ca9-de11-4487-840d-50933c8ec8d1}<br>
                    bNumControl            18<br>
                    bNrPins                 1<br>
                    baSourceID( 0)          3<br>
                    bControlSize            3<br>
                    bmControls( 0)       0xff<br>
                    bmControls( 1)       0xff<br>
                    bmControls( 2)       0x03<br>
                    iExtension              0 <br>
                  VideoControl Interface Descriptor:<br>
                    bLength                28<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      6 (EXTENSION_UNIT)<br>
                    bUnitID                10<br>
                    guidExtensionCode        
            {49e40215-f434-47fe-b158-0e885023e51b}<br>
                    bNumControl            11<br>
                    bNrPins                 1<br>
                    baSourceID( 0)          3<br>
                    bControlSize            3<br>
                    bmControls( 0)       0xfa<br>
                    bmControls( 1)       0xff<br>
                    bmControls( 2)       0x01<br>
                    iExtension              0 <br>
                  VideoControl Interface Descriptor:<br>
                    bLength                28<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      6 (EXTENSION_UNIT)<br>
                    bUnitID                11<br>
                    guidExtensionCode        
            {ffe52d21-8030-4e2c-82d9-f587d00540bd}<br>
                    bNumControl             4<br>
                    bNrPins                 1<br>
                    baSourceID( 0)          3<br>
                    bControlSize            3<br>
                    bmControls( 0)       0x00<br>
                    bmControls( 1)       0x41<br>
                    bmControls( 2)       0x01<br>
                    iExtension              0 <br>
                  VideoControl Interface Descriptor:<br>
                    bLength                 9<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      3 (OUTPUT_TERMINAL)<br>
                    bTerminalID             4<br>
                    wTerminalType      0x0101 USB Streaming<br>
                    bAssocTerminal          0<br>
                    bSourceID               3<br>
                    iTerminal               0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x85  EP 5 IN<br>
                    bmAttributes            3<br>
                      Transfer Type            Interrupt<br>
                      Synch Type               None<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0040  1x 64 bytes<br>
                    bInterval               8<br>
                    bMaxBurst               0<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       0<br>
                  bNumEndpoints           0<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            16<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  1 (INPUT_HEADER)<br>
                    bNumFormats                         3<br>
                    wTotalLength                   0x05b9<br>
                    bEndPointAddress                  129<br>
                    bmInfo                              0<br>
                    bTerminalLink                       4<br>
                    bStillCaptureMethod                 0<br>
                    bTriggerSupport                     0<br>
                    bTriggerUsage                       0<br>
                    bControlSize                        1<br>
                    bmaControls( 0)                     0<br>
                    bmaControls( 1)                     0<br>
                    bmaControls( 2)                     0<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            27<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  4
            (FORMAT_UNCOMPRESSED)<br>
                    bFormatIndex                        1<br>
                    bNumFrameDescriptors               11<br>
                    guidFormat                           
            {32595559-0000-0010-8000-00aa00389b71}<br>
                    bBitsPerPixel                      16<br>
                    bDefaultFrameIndex                  1<br>
                    bAspectRatioX                       0<br>
                    bAspectRatioY                       0<br>
                    bmInterlaceFlags                 0x00<br>
                      Interlaced stream or variable: No<br>
                      Fields per frame: 2 fields<br>
                      Field 1 first: No<br>
                      Field pattern: Field 1 only<br>
                    bCopyProtect                        0<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         1<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            640<br>
                    wHeight                           480<br>
                    dwMinBitRate                 24576000<br>
                    dwMaxBitRate                147456000<br>
                    dwMaxVideoFrameBufferSize      614400<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         2<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            176<br>
                    wHeight                           144<br>
                    dwMinBitRate                  2027520<br>
                    dwMaxBitRate                 12165120<br>
                    dwMaxVideoFrameBufferSize       50688<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         3<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            320<br>
                    wHeight                           240<br>
                    dwMinBitRate                  6144000<br>
                    dwMaxBitRate                 36864000<br>
                    dwMaxVideoFrameBufferSize      153600<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         4<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            424<br>
                    wHeight                           240<br>
                    dwMinBitRate                  8140800<br>
                    dwMaxBitRate                 48844800<br>
                    dwMaxVideoFrameBufferSize      203520<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         5<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            640<br>
                    wHeight                           360<br>
                    dwMinBitRate                 18432000<br>
                    dwMaxBitRate                110592000<br>
                    dwMaxVideoFrameBufferSize      460800<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         6<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            848<br>
                    wHeight                           480<br>
                    dwMinBitRate                 32563200<br>
                    dwMaxBitRate                195379200<br>
                    dwMaxVideoFrameBufferSize      814080<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         7<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            960<br>
                    wHeight                           540<br>
                    dwMinBitRate                 41472000<br>
                    dwMaxBitRate                248832000<br>
                    dwMaxVideoFrameBufferSize     1036800<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         8<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1280<br>
                    wHeight                           720<br>
                    dwMinBitRate                 73728000<br>
                    dwMaxBitRate                442368000<br>
                    dwMaxVideoFrameBufferSize     1843200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         9<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1600<br>
                    wHeight                           896<br>
                    dwMinBitRate                114688000<br>
                    dwMaxBitRate                688128000<br>
                    dwMaxVideoFrameBufferSize     2867200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                        10<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1920<br>
                    wHeight                          1080<br>
                    dwMinBitRate                165888000<br>
                    dwMaxBitRate                995328000<br>
                    dwMaxVideoFrameBufferSize     4147200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            30<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                        11<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           2304<br>
                    wHeight                          1296<br>
                    dwMinBitRate                238878720<br>
                    dwMaxBitRate                238878720<br>
                    dwMaxVideoFrameBufferSize     5971968<br>
                    dwDefaultFrameInterval        2000000<br>
                    bFrameIntervalType                  1<br>
                    dwFrameInterval( 0)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                             6<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                 13 (COLORFORMAT)<br>
                    bColorPrimaries                     1 (BT.709,sRGB)<br>
                    bTransferCharacteristics            1 (BT.709)<br>
                    bMatrixCoefficients                 4 (SMPTE 170M
            (BT.601))<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            11<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  6 (FORMAT_MJPEG)<br>
                    bFormatIndex                        2<br>
                    bNumFrameDescriptors               10<br>
                    bFlags                              1<br>
                      Fixed-size samples: Yes<br>
                    bDefaultFrameIndex                  1<br>
                    bAspectRatioX                       0<br>
                    bAspectRatioY                       0<br>
                    bmInterlaceFlags                 0x00<br>
                      Interlaced stream or variable: No<br>
                      Fields per frame: 1 fields<br>
                      Field 1 first: No<br>
                      Field pattern: Field 1 only<br>
                    bCopyProtect                        0<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         1<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            640<br>
                    wHeight                           480<br>
                    dwMinBitRate                 24576000<br>
                    dwMaxBitRate                294912000<br>
                    dwMaxVideoFrameBufferSize      614400<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         2<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            176<br>
                    wHeight                           144<br>
                    dwMinBitRate                  2027520<br>
                    dwMaxBitRate                 24330240<br>
                    dwMaxVideoFrameBufferSize       50688<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         3<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            320<br>
                    wHeight                           240<br>
                    dwMinBitRate                  6144000<br>
                    dwMaxBitRate                 73728000<br>
                    dwMaxVideoFrameBufferSize      153600<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         4<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            424<br>
                    wHeight                           240<br>
                    dwMinBitRate                  8140800<br>
                    dwMaxBitRate                 97689600<br>
                    dwMaxVideoFrameBufferSize      203520<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         5<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            640<br>
                    wHeight                           360<br>
                    dwMinBitRate                 18432000<br>
                    dwMaxBitRate                221184000<br>
                    dwMaxVideoFrameBufferSize      460800<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         6<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            848<br>
                    wHeight                           480<br>
                    dwMinBitRate                 32563200<br>
                    dwMaxBitRate                390758400<br>
                    dwMaxVideoFrameBufferSize      814080<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         7<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            960<br>
                    wHeight                           540<br>
                    dwMinBitRate                 41472000<br>
                    dwMaxBitRate                497664000<br>
                    dwMaxVideoFrameBufferSize     1036800<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         8<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1280<br>
                    wHeight                           720<br>
                    dwMinBitRate                 73728000<br>
                    dwMaxBitRate                884736000<br>
                    dwMaxVideoFrameBufferSize     1843200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                         9<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1600<br>
                    wHeight                           896<br>
                    dwMinBitRate                114688000<br>
                    dwMaxBitRate                1376256000<br>
                    dwMaxVideoFrameBufferSize     2867200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            58<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  7 (FRAME_MJPEG)<br>
                    bFrameIndex                        10<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1920<br>
                    wHeight                          1080<br>
                    dwMinBitRate                165888000<br>
                    dwMaxBitRate                1990656000<br>
                    dwMaxVideoFrameBufferSize     4147200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  8<br>
                    dwFrameInterval( 0)            166666<br>
                    dwFrameInterval( 1)            333333<br>
                    dwFrameInterval( 2)            416666<br>
                    dwFrameInterval( 3)            500000<br>
                    dwFrameInterval( 4)            666666<br>
                    dwFrameInterval( 5)           1000000<br>
                    dwFrameInterval( 6)           1333333<br>
                    dwFrameInterval( 7)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                             6<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                 13 (COLORFORMAT)<br>
                    bColorPrimaries                     1 (BT.709,sRGB)<br>
                    bTransferCharacteristics            1 (BT.709)<br>
                    bMatrixCoefficients                 4 (SMPTE 170M
            (BT.601))<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            27<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  4
            (FORMAT_UNCOMPRESSED)<br>
                    bFormatIndex                        3<br>
                    bNumFrameDescriptors                4<br>
                    guidFormat                           
            {3231564e-0000-0010-8000-00aa00389b71}<br>
                    bBitsPerPixel                      12<br>
                    bDefaultFrameIndex                  1<br>
                    bAspectRatioX                       0<br>
                    bAspectRatioY                       0<br>
                    bmInterlaceFlags                 0x00<br>
                      Interlaced stream or variable: No<br>
                      Fields per frame: 2 fields<br>
                      Field 1 first: No<br>
                      Field pattern: Field 1 only<br>
                    bCopyProtect                        0<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         1<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            640<br>
                    wHeight                           480<br>
                    dwMinBitRate                 24576000<br>
                    dwMaxBitRate                147456000<br>
                    dwMaxVideoFrameBufferSize      614400<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         2<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                            640<br>
                    wHeight                           360<br>
                    dwMinBitRate                 18432000<br>
                    dwMaxBitRate                110592000<br>
                    dwMaxVideoFrameBufferSize      460800<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         3<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1280<br>
                    wHeight                           720<br>
                    dwMinBitRate                 73728000<br>
                    dwMaxBitRate                442368000<br>
                    dwMaxVideoFrameBufferSize     1843200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                            54<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                  5
            (FRAME_UNCOMPRESSED)<br>
                    bFrameIndex                         4<br>
                    bmCapabilities                   0x00<br>
                      Still image unsupported<br>
                    wWidth                           1920<br>
                    wHeight                          1080<br>
                    dwMinBitRate                165888000<br>
                    dwMaxBitRate                995328000<br>
                    dwMaxVideoFrameBufferSize     4147200<br>
                    dwDefaultFrameInterval         333333<br>
                    bFrameIntervalType                  7<br>
                    dwFrameInterval( 0)            333333<br>
                    dwFrameInterval( 1)            416666<br>
                    dwFrameInterval( 2)            500000<br>
                    dwFrameInterval( 3)            666666<br>
                    dwFrameInterval( 4)           1000000<br>
                    dwFrameInterval( 5)           1333333<br>
                    dwFrameInterval( 6)           2000000<br>
                  VideoStreaming Interface Descriptor:<br>
                    bLength                             6<br>
                    bDescriptorType                    36<br>
                    bDescriptorSubtype                 13 (COLORFORMAT)<br>
                    bColorPrimaries                     1 (BT.709,sRGB)<br>
                    bTransferCharacteristics            1 (BT.709)<br>
                    bMatrixCoefficients                 4 (SMPTE 170M
            (BT.601))<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       1<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0180  1x 384 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               0<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       2<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0280  1x 640 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               0<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       3<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x03b0  1x 944 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               0<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       4<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               0<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       5<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               1<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       6<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               2<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       7<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               2<br>
                    Mult                    1<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       8<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               2<br>
                    Mult                    2<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting       9<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               3<br>
                    Mult                    2<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting      10<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               4<br>
                    Mult                    2<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting      11<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               5<br>
                    Mult                    2<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting      12<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               6<br>
                    Mult                    2<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting      13<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               7<br>
                    Mult                    2<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        1<br>
                  bAlternateSetting      14<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass        14 Video<br>
                  bInterfaceSubClass      2 Video Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x81  EP 1 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               1<br>
                    bMaxBurst               9<br>
                    Mult                    2<br>
                Interface Association:<br>
                  bLength                 8<br>
                  bDescriptorType        11<br>
                  bFirstInterface         2<br>
                  bInterfaceCount         2<br>
                  bFunctionClass          1 Audio<br>
                  bFunctionSubClass       2 Streaming<br>
                  bFunctionProtocol       0 <br>
                  iFunction               0 <br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        2<br>
                  bAlternateSetting       0<br>
                  bNumEndpoints           0<br>
                  bInterfaceClass         1 Audio<br>
                  bInterfaceSubClass      1 Control Device<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  AudioControl Interface Descriptor:<br>
                    bLength                 9<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      1 (HEADER)<br>
                    bcdADC               1.00<br>
                    wTotalLength       0x0026<br>
                    bInCollection           1<br>
                    baInterfaceNr(0)        3<br>
                  AudioControl Interface Descriptor:<br>
                    bLength                12<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      2 (INPUT_TERMINAL)<br>
                    bTerminalID             1<br>
                    wTerminalType      0x0201 Microphone<br>
                    bAssocTerminal          0<br>
                    bNrChannels             2<br>
                    wChannelConfig     0x0003<br>
                      Left Front (L)<br>
                      Right Front (R)<br>
                    iChannelNames           0 <br>
                    iTerminal               0 <br>
                  AudioControl Interface Descriptor:<br>
                    bLength                 9<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      3 (OUTPUT_TERMINAL)<br>
                    bTerminalID             3<br>
                    wTerminalType      0x0101 USB Streaming<br>
                    bAssocTerminal          0<br>
                    bSourceID               5<br>
                    iTerminal               0 <br>
                  AudioControl Interface Descriptor:<br>
                    bLength                 8<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      6 (FEATURE_UNIT)<br>
                    bUnitID                 5<br>
                    bSourceID               1<br>
                    bControlSize            1<br>
                    bmaControls(0)       0x03<br>
                      Mute Control<br>
                      Volume Control<br>
                    iFeature                0 <br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        3<br>
                  bAlternateSetting       0<br>
                  bNumEndpoints           0<br>
                  bInterfaceClass         1 Audio<br>
                  bInterfaceSubClass      2 Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        3<br>
                  bAlternateSetting       1<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass         1 Audio<br>
                  bInterfaceSubClass      2 Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      1 (AS_GENERAL)<br>
                    bTerminalLink           3<br>
                    bDelay                  1 frames<br>
                    wFormatTag         0x0001 PCM<br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                11<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      2 (FORMAT_TYPE)<br>
                    bFormatType             1 (FORMAT_TYPE_I)<br>
                    bNrChannels             2<br>
                    bSubframeSize           2<br>
                    bBitResolution         16<br>
                    bSamFreqType            1 Discrete<br>
                    tSamFreq[ 0]        16000<br>
                  Endpoint Descriptor:<br>
                    bLength                 9<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x84  EP 4 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0044  1x 68 bytes<br>
                    bInterval               4<br>
                    bRefresh                0<br>
                    bSynchAddress           0<br>
                    bMaxBurst               0<br>
                    AudioStreaming Endpoint Descriptor:<br>
                      bLength                 7<br>
                      bDescriptorType        37<br>
                      bDescriptorSubtype      1 (EP_GENERAL)<br>
                      bmAttributes         0x01<br>
                        Sampling Frequency<br>
                      bLockDelayUnits         0 Undefined<br>
                      wLockDelay         0x0000<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        3<br>
                  bAlternateSetting       2<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass         1 Audio<br>
                  bInterfaceSubClass      2 Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      1 (AS_GENERAL)<br>
                    bTerminalLink           3<br>
                    bDelay                  1 frames<br>
                    wFormatTag         0x0001 PCM<br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                11<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      2 (FORMAT_TYPE)<br>
                    bFormatType             1 (FORMAT_TYPE_I)<br>
                    bNrChannels             2<br>
                    bSubframeSize           2<br>
                    bBitResolution         16<br>
                    bSamFreqType            1 Discrete<br>
                    tSamFreq[ 0]        24000<br>
                  Endpoint Descriptor:<br>
                    bLength                 9<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x84  EP 4 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0064  1x 100 bytes<br>
                    bInterval               4<br>
                    bRefresh                0<br>
                    bSynchAddress           0<br>
                    bMaxBurst               0<br>
                    AudioStreaming Endpoint Descriptor:<br>
                      bLength                 7<br>
                      bDescriptorType        37<br>
                      bDescriptorSubtype      1 (EP_GENERAL)<br>
                      bmAttributes         0x01<br>
                        Sampling Frequency<br>
                      bLockDelayUnits         0 Undefined<br>
                      wLockDelay         0x0000<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        3<br>
                  bAlternateSetting       3<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass         1 Audio<br>
                  bInterfaceSubClass      2 Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      1 (AS_GENERAL)<br>
                    bTerminalLink           3<br>
                    bDelay                  1 frames<br>
                    wFormatTag         0x0001 PCM<br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                11<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      2 (FORMAT_TYPE)<br>
                    bFormatType             1 (FORMAT_TYPE_I)<br>
                    bNrChannels             2<br>
                    bSubframeSize           2<br>
                    bBitResolution         16<br>
                    bSamFreqType            1 Discrete<br>
                    tSamFreq[ 0]        32000<br>
                  Endpoint Descriptor:<br>
                    bLength                 9<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x84  EP 4 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0084  1x 132 bytes<br>
                    bInterval               4<br>
                    bRefresh                0<br>
                    bSynchAddress           0<br>
                    bMaxBurst               0<br>
                    AudioStreaming Endpoint Descriptor:<br>
                      bLength                 7<br>
                      bDescriptorType        37<br>
                      bDescriptorSubtype      1 (EP_GENERAL)<br>
                      bmAttributes         0x01<br>
                        Sampling Frequency<br>
                      bLockDelayUnits         0 Undefined<br>
                      wLockDelay         0x0000<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        3<br>
                  bAlternateSetting       4<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass         1 Audio<br>
                  bInterfaceSubClass      2 Streaming<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      1 (AS_GENERAL)<br>
                    bTerminalLink           3<br>
                    bDelay                  1 frames<br>
                    wFormatTag         0x0001 PCM<br>
                  AudioStreaming Interface Descriptor:<br>
                    bLength                11<br>
                    bDescriptorType        36<br>
                    bDescriptorSubtype      2 (FORMAT_TYPE)<br>
                    bFormatType             1 (FORMAT_TYPE_I)<br>
                    bNrChannels             2<br>
                    bSubframeSize           2<br>
                    bBitResolution         16<br>
                    bSamFreqType            1 Discrete<br>
                    tSamFreq[ 0]        48000<br>
                  Endpoint Descriptor:<br>
                    bLength                 9<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x84  EP 4 IN<br>
                    bmAttributes            5<br>
                      Transfer Type            Isochronous<br>
                      Synch Type               Asynchronous<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x00c4  1x 196 bytes<br>
                    bInterval               4<br>
                    bRefresh                0<br>
                    bSynchAddress           0<br>
                    bMaxBurst               0<br>
                    AudioStreaming Endpoint Descriptor:<br>
                      bLength                 7<br>
                      bDescriptorType        37<br>
                      bDescriptorSubtype      1 (EP_GENERAL)<br>
                      bmAttributes         0x01<br>
                        Sampling Frequency<br>
                      bLockDelayUnits         0 Undefined<br>
                      wLockDelay         0x0000<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        4<br>
                  bAlternateSetting       0<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass       255 Vendor Specific Class<br>
                  bInterfaceSubClass    255 Vendor Specific Subclass<br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x83  EP 3 IN<br>
                    bmAttributes            2<br>
                      Transfer Type            Bulk<br>
                      Synch Type               None<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0400  1x 1024 bytes<br>
                    bInterval               0<br>
                    bMaxBurst               0<br>
                Interface Descriptor:<br>
                  bLength                 9<br>
                  bDescriptorType         4<br>
                  bInterfaceNumber        5<br>
                  bAlternateSetting       0<br>
                  bNumEndpoints           1<br>
                  bInterfaceClass         3 Human Interface Device<br>
                  bInterfaceSubClass      0 <br>
                  bInterfaceProtocol      0 <br>
                  iInterface              0 <br>
                    HID Device Descriptor:<br>
                      bLength                 9<br>
                      bDescriptorType        33<br>
                      bcdHID               1.11<br>
                      bCountryCode            0 Not supported<br>
                      bNumDescriptors         1<br>
                      bDescriptorType        34 Report<br>
                      wDescriptorLength     108<br>
                     Report Descriptors: <br>
                       ** UNAVAILABLE **<br>
                  Endpoint Descriptor:<br>
                    bLength                 7<br>
                    bDescriptorType         5<br>
                    bEndpointAddress     0x87  EP 7 IN<br>
                    bmAttributes            3<br>
                      Transfer Type            Interrupt<br>
                      Synch Type               None<br>
                      Usage Type               Data<br>
                    wMaxPacketSize     0x0002  1x 2 bytes<br>
                    bInterval               6<br>
                    bMaxBurst               0<br>
            Binary Object Store Descriptor:<br>
              bLength                 5<br>
              bDescriptorType        15<br>
              wTotalLength       0x0016<br>
              bNumDeviceCaps          2<br>
              USB 2.0 Extension Device Capability:<br>
                bLength                 7<br>
                bDescriptorType        16<br>
                bDevCapabilityType      2<br>
                bmAttributes   0x00000002<br>
                  HIRD Link Power Management (LPM) Supported<br>
              SuperSpeed USB Device Capability:<br>
                bLength                10<br>
                bDescriptorType        16<br>
                bDevCapabilityType      3<br>
                bmAttributes         0x00<br>
                wSpeedsSupported   0x000e<br>
                  Device can operate at Full Speed (12Mbps)<br>
                  Device can operate at High Speed (480Mbps)<br>
                  Device can operate at SuperSpeed (5Gbps)<br>
                bFunctionalitySupport   2<br>
                  Lowest fully-functional device speed is High Speed
            (480Mbps)<br>
                bU1DevExitLat          10 micro seconds<br>
                bU2DevExitLat         256 micro seconds<br>
            Device Status:     0x0000<br>
              (Bus Powered)<o:p></o:p></p>
          <p><o:p> </o:p></p>
        </div>
      </div>
    </div>
  </body>
</html>

--------------88EEE35CFEED4292AA07ACC0--

--------------397391A4D6C1CF314471C0F2
Content-Type: text/plain; charset=UTF-8;
 name="lsusbStreamcam.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="lsusbStreamcam.txt"

CkJ1cyAwMDIgRGV2aWNlIDAwMjogSUQgMDQ2ZDowODkzIExvZ2l0ZWNoLCBJbmMuIExvZ2l0
ZWNoIFN0cmVhbUNhbQpEZXZpY2UgRGVzY3JpcHRvcjoKICBiTGVuZ3RoICAgICAgICAgICAg
ICAgIDE4CiAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgMQogIGJjZFVTQiAgICAgICAgICAg
ICAgIDMuMjAKICBiRGV2aWNlQ2xhc3MgICAgICAgICAgMjM5IE1pc2NlbGxhbmVvdXMgRGV2
aWNlCiAgYkRldmljZVN1YkNsYXNzICAgICAgICAgMiAKICBiRGV2aWNlUHJvdG9jb2wgICAg
ICAgICAxIEludGVyZmFjZSBBc3NvY2lhdGlvbgogIGJNYXhQYWNrZXRTaXplMCAgICAgICAg
IDkKICBpZFZlbmRvciAgICAgICAgICAgMHgwNDZkIExvZ2l0ZWNoLCBJbmMuCiAgaWRQcm9k
dWN0ICAgICAgICAgIDB4MDg5MyAKICBiY2REZXZpY2UgICAgICAgICAgICAzLjE3CiAgaU1h
bnVmYWN0dXJlciAgICAgICAgICAgMCAKICBpUHJvZHVjdCAgICAgICAgICAgICAgICAyIExv
Z2l0ZWNoIFN0cmVhbUNhbQogIGlTZXJpYWwgICAgICAgICAgICAgICAgIDMgRjVCRDI2RTQK
ICBiTnVtQ29uZmlndXJhdGlvbnMgICAgICAxCiAgQ29uZmlndXJhdGlvbiBEZXNjcmlwdG9y
OgogICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQogICAgYkRlc2NyaXB0b3JUeXBlICAg
ICAgICAgMgogICAgd1RvdGFsTGVuZ3RoICAgICAgIDB4MDkzMwogICAgYk51bUludGVyZmFj
ZXMgICAgICAgICAgNgogICAgYkNvbmZpZ3VyYXRpb25WYWx1ZSAgICAgMQogICAgaUNvbmZp
Z3VyYXRpb24gICAgICAgICAgMCAKICAgIGJtQXR0cmlidXRlcyAgICAgICAgIDB4ODAKICAg
ICAgKEJ1cyBQb3dlcmVkKQogICAgTWF4UG93ZXIgICAgICAgICAgICAgIDg5Nm1BCiAgICBJ
bnRlcmZhY2UgQXNzb2NpYXRpb246CiAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDgK
ICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAxMQogICAgICBiRmlyc3RJbnRlcmZhY2Ug
ICAgICAgICAwCiAgICAgIGJJbnRlcmZhY2VDb3VudCAgICAgICAgIDIKICAgICAgYkZ1bmN0
aW9uQ2xhc3MgICAgICAgICAxNCBWaWRlbwogICAgICBiRnVuY3Rpb25TdWJDbGFzcyAgICAg
ICAzIFZpZGVvIEludGVyZmFjZSBDb2xsZWN0aW9uCiAgICAgIGJGdW5jdGlvblByb3RvY29s
ICAgICAgIDAgCiAgICAgIGlGdW5jdGlvbiAgICAgICAgICAgICAgIDAgCiAgICBJbnRlcmZh
Y2UgRGVzY3JpcHRvcjoKICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQogICAgICBi
RGVzY3JpcHRvclR5cGUgICAgICAgICA0CiAgICAgIGJJbnRlcmZhY2VOdW1iZXIgICAgICAg
IDAKICAgICAgYkFsdGVybmF0ZVNldHRpbmcgICAgICAgMAogICAgICBiTnVtRW5kcG9pbnRz
ICAgICAgICAgICAxCiAgICAgIGJJbnRlcmZhY2VDbGFzcyAgICAgICAgMTQgVmlkZW8KICAg
ICAgYkludGVyZmFjZVN1YkNsYXNzICAgICAgMSBWaWRlbyBDb250cm9sCiAgICAgIGJJbnRl
cmZhY2VQcm90b2NvbCAgICAgIDAgCiAgICAgIGlJbnRlcmZhY2UgICAgICAgICAgICAgIDAg
CiAgICAgIFZpZGVvQ29udHJvbCBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVu
Z3RoICAgICAgICAgICAgICAgIDEzCiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAz
NgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgIDEgKEhFQURFUikKICAgICAgICBi
Y2RVVkMgICAgICAgICAgICAgICAxLjAwCiAgICAgICAgd1RvdGFsTGVuZ3RoICAgICAgIDB4
MDBkOAogICAgICAgIGR3Q2xvY2tGcmVxdWVuY3kgICAgICAgMzAuMDAwMDAwTUh6CiAgICAg
ICAgYkluQ29sbGVjdGlvbiAgICAgICAgICAgMQogICAgICAgIGJhSW50ZXJmYWNlTnIoIDAp
ICAgICAgIDEKICAgICAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAg
ICAgIGJMZW5ndGggICAgICAgICAgICAgICAgMTgKICAgICAgICBiRGVzY3JpcHRvclR5cGUg
ICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgMiAoSU5QVVRfVEVS
TUlOQUwpCiAgICAgICAgYlRlcm1pbmFsSUQgICAgICAgICAgICAgMQogICAgICAgIHdUZXJt
aW5hbFR5cGUgICAgICAweDAyMDEgQ2FtZXJhIFNlbnNvcgogICAgICAgIGJBc3NvY1Rlcm1p
bmFsICAgICAgICAgIDAKICAgICAgICBpVGVybWluYWwgICAgICAgICAgICAgICAwIAogICAg
ICAgIHdPYmplY3RpdmVGb2NhbExlbmd0aE1pbiAgICAgIDAKICAgICAgICB3T2JqZWN0aXZl
Rm9jYWxMZW5ndGhNYXggICAgICAwCiAgICAgICAgd09jdWxhckZvY2FsTGVuZ3RoICAgICAg
ICAgICAgMAogICAgICAgIGJDb250cm9sU2l6ZSAgICAgICAgICAgICAgICAgIDMKICAgICAg
ICBibUNvbnRyb2xzICAgICAgICAgICAweDAwMDIyYTJlCiAgICAgICAgICBBdXRvLUV4cG9z
dXJlIE1vZGUKICAgICAgICAgIEF1dG8tRXhwb3N1cmUgUHJpb3JpdHkKICAgICAgICAgIEV4
cG9zdXJlIFRpbWUgKEFic29sdXRlKQogICAgICAgICAgRm9jdXMgKEFic29sdXRlKQogICAg
ICAgICAgWm9vbSAoQWJzb2x1dGUpCiAgICAgICAgICBQYW5UaWx0IChBYnNvbHV0ZSkKICAg
ICAgICAgIFJvbGwgKEFic29sdXRlKQogICAgICAgICAgRm9jdXMsIEF1dG8KICAgICAgVmlk
ZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5ndGggICAgICAg
ICAgICAgICAgMTEKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgIDM2CiAgICAgICAg
YkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgNSAoUFJPQ0VTU0lOR19VTklUKQogICAgICBXYXJu
aW5nOiBEZXNjcmlwdG9yIHRvbyBzaG9ydAogICAgICAgIGJVbml0SUQgICAgICAgICAgICAg
ICAgIDMKICAgICAgICBiU291cmNlSUQgICAgICAgICAgICAgICAxCiAgICAgICAgd01heE11
bHRpcGxpZXIgICAgICAxNjM4NAogICAgICAgIGJDb250cm9sU2l6ZSAgICAgICAgICAgIDIK
ICAgICAgICBibUNvbnRyb2xzICAgICAweDAwMDAxNzViCiAgICAgICAgICBCcmlnaHRuZXNz
CiAgICAgICAgICBDb250cmFzdAogICAgICAgICAgU2F0dXJhdGlvbgogICAgICAgICAgU2hh
cnBuZXNzCiAgICAgICAgICBXaGl0ZSBCYWxhbmNlIFRlbXBlcmF0dXJlCiAgICAgICAgICBC
YWNrbGlnaHQgQ29tcGVuc2F0aW9uCiAgICAgICAgICBHYWluCiAgICAgICAgICBQb3dlciBM
aW5lIEZyZXF1ZW5jeQogICAgICAgICAgV2hpdGUgQmFsYW5jZSBUZW1wZXJhdHVyZSwgQXV0
bwogICAgICAgIGlQcm9jZXNzaW5nICAgICAgICAgICAgIDAgCiAgICAgICAgYm1WaWRlb1N0
YW5kYXJkcyAgICAgMHgxYgogICAgICAgICAgTm9uZQogICAgICAgICAgTlRTQyAtIDUyNS82
MAogICAgICAgICAgU0VDQU0gLSA2MjUvNTAKICAgICAgICAgIE5UU0MgLSA2MjUvNTAKICAg
ICAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5ndGgg
ICAgICAgICAgICAgICAgMjcKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgIDM2CiAg
ICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgNiAoRVhURU5TSU9OX1VOSVQpCiAgICAg
ICAgYlVuaXRJRCAgICAgICAgICAgICAgICAxNAogICAgICAgIGd1aWRFeHRlbnNpb25Db2Rl
ICAgICAgICAgezJjNDlkMTZhLTMyYjgtNDQ4NS0zZWE4LTY0M2ExNTIzNjJmMn0KICAgICAg
ICBiTnVtQ29udHJvbCAgICAgICAgICAgICA2CiAgICAgICAgYk5yUGlucyAgICAgICAgICAg
ICAgICAgMQogICAgICAgIGJhU291cmNlSUQoIDApICAgICAgICAgIDMKICAgICAgICBiQ29u
dHJvbFNpemUgICAgICAgICAgICAyCiAgICAgICAgYm1Db250cm9scyggMCkgICAgICAgMHgz
ZgogICAgICAgIGJtQ29udHJvbHMoIDEpICAgICAgIDB4MDAKICAgICAgICBpRXh0ZW5zaW9u
ICAgICAgICAgICAgICAwIAogICAgICBWaWRlb0NvbnRyb2wgSW50ZXJmYWNlIERlc2NyaXB0
b3I6CiAgICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAyNwogICAgICAgIGJEZXNjcmlw
dG9yVHlwZSAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICA2IChF
WFRFTlNJT05fVU5JVCkKICAgICAgICBiVW5pdElEICAgICAgICAgICAgICAgICA2CiAgICAg
ICAgZ3VpZEV4dGVuc2lvbkNvZGUgICAgICAgICB7MjNlNDllZDAtMTE3OC00ZjMxLWFlNTIt
ZDJmYjhhOGQzYjQ4fQogICAgICAgIGJOdW1Db250cm9sICAgICAgICAgICAgMTQKICAgICAg
ICBiTnJQaW5zICAgICAgICAgICAgICAgICAxCiAgICAgICAgYmFTb3VyY2VJRCggMCkgICAg
ICAgICAgMwogICAgICAgIGJDb250cm9sU2l6ZSAgICAgICAgICAgIDIKICAgICAgICBibUNv
bnRyb2xzKCAwKSAgICAgICAweGZmCiAgICAgICAgYm1Db250cm9scyggMSkgICAgICAgMHg2
ZgogICAgICAgIGlFeHRlbnNpb24gICAgICAgICAgICAgIDAgCiAgICAgIFZpZGVvQ29udHJv
bCBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAg
IDI3CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAzNgogICAgICAgIGJEZXNjcmlw
dG9yU3VidHlwZSAgICAgIDYgKEVYVEVOU0lPTl9VTklUKQogICAgICAgIGJVbml0SUQgICAg
ICAgICAgICAgICAgIDgKICAgICAgICBndWlkRXh0ZW5zaW9uQ29kZSAgICAgICAgIHs2OTY3
OGVlNC00MTBmLTQwZGItYTg1MC03NDIwZDdkODI0MGV9CiAgICAgICAgYk51bUNvbnRyb2wg
ICAgICAgICAgICAgOAogICAgICAgIGJOclBpbnMgICAgICAgICAgICAgICAgIDEKICAgICAg
ICBiYVNvdXJjZUlEKCAwKSAgICAgICAgICAzCiAgICAgICAgYkNvbnRyb2xTaXplICAgICAg
ICAgICAgMgogICAgICAgIGJtQ29udHJvbHMoIDApICAgICAgIDB4M2YKICAgICAgICBibUNv
bnRyb2xzKCAxKSAgICAgICAweDBmCiAgICAgICAgaUV4dGVuc2lvbiAgICAgICAgICAgICAg
MCAKICAgICAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJM
ZW5ndGggICAgICAgICAgICAgICAgMjgKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAg
IDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgNiAoRVhURU5TSU9OX1VOSVQp
CiAgICAgICAgYlVuaXRJRCAgICAgICAgICAgICAgICAgOQogICAgICAgIGd1aWRFeHRlbnNp
b25Db2RlICAgICAgICAgezFmNWQ0Y2E5LWRlMTEtNDQ4Ny04NDBkLTUwOTMzYzhlYzhkMX0K
ICAgICAgICBiTnVtQ29udHJvbCAgICAgICAgICAgIDE4CiAgICAgICAgYk5yUGlucyAgICAg
ICAgICAgICAgICAgMQogICAgICAgIGJhU291cmNlSUQoIDApICAgICAgICAgIDMKICAgICAg
ICBiQ29udHJvbFNpemUgICAgICAgICAgICAzCiAgICAgICAgYm1Db250cm9scyggMCkgICAg
ICAgMHhmZgogICAgICAgIGJtQ29udHJvbHMoIDEpICAgICAgIDB4ZmYKICAgICAgICBibUNv
bnRyb2xzKCAyKSAgICAgICAweDAzCiAgICAgICAgaUV4dGVuc2lvbiAgICAgICAgICAgICAg
MCAKICAgICAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJM
ZW5ndGggICAgICAgICAgICAgICAgMjgKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAg
IDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgNiAoRVhURU5TSU9OX1VOSVQp
CiAgICAgICAgYlVuaXRJRCAgICAgICAgICAgICAgICAxMAogICAgICAgIGd1aWRFeHRlbnNp
b25Db2RlICAgICAgICAgezQ5ZTQwMjE1LWY0MzQtNDdmZS1iMTU4LTBlODg1MDIzZTUxYn0K
ICAgICAgICBiTnVtQ29udHJvbCAgICAgICAgICAgIDExCiAgICAgICAgYk5yUGlucyAgICAg
ICAgICAgICAgICAgMQogICAgICAgIGJhU291cmNlSUQoIDApICAgICAgICAgIDMKICAgICAg
ICBiQ29udHJvbFNpemUgICAgICAgICAgICAzCiAgICAgICAgYm1Db250cm9scyggMCkgICAg
ICAgMHhmYQogICAgICAgIGJtQ29udHJvbHMoIDEpICAgICAgIDB4ZmYKICAgICAgICBibUNv
bnRyb2xzKCAyKSAgICAgICAweDAxCiAgICAgICAgaUV4dGVuc2lvbiAgICAgICAgICAgICAg
MCAKICAgICAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJM
ZW5ndGggICAgICAgICAgICAgICAgMjgKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAg
IDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgNiAoRVhURU5TSU9OX1VOSVQp
CiAgICAgICAgYlVuaXRJRCAgICAgICAgICAgICAgICAxMQogICAgICAgIGd1aWRFeHRlbnNp
b25Db2RlICAgICAgICAge2ZmZTUyZDIxLTgwMzAtNGUyYy04MmQ5LWY1ODdkMDA1NDBiZH0K
ICAgICAgICBiTnVtQ29udHJvbCAgICAgICAgICAgICA0CiAgICAgICAgYk5yUGlucyAgICAg
ICAgICAgICAgICAgMQogICAgICAgIGJhU291cmNlSUQoIDApICAgICAgICAgIDMKICAgICAg
ICBiQ29udHJvbFNpemUgICAgICAgICAgICAzCiAgICAgICAgYm1Db250cm9scyggMCkgICAg
ICAgMHgwMAogICAgICAgIGJtQ29udHJvbHMoIDEpICAgICAgIDB4NDEKICAgICAgICBibUNv
bnRyb2xzKCAyKSAgICAgICAweDAxCiAgICAgICAgaUV4dGVuc2lvbiAgICAgICAgICAgICAg
MCAKICAgICAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJM
ZW5ndGggICAgICAgICAgICAgICAgIDkKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAg
IDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgMyAoT1VUUFVUX1RFUk1JTkFM
KQogICAgICAgIGJUZXJtaW5hbElEICAgICAgICAgICAgIDQKICAgICAgICB3VGVybWluYWxU
eXBlICAgICAgMHgwMTAxIFVTQiBTdHJlYW1pbmcKICAgICAgICBiQXNzb2NUZXJtaW5hbCAg
ICAgICAgICAwCiAgICAgICAgYlNvdXJjZUlEICAgICAgICAgICAgICAgMwogICAgICAgIGlU
ZXJtaW5hbCAgICAgICAgICAgICAgIDAgCiAgICAgIEVuZHBvaW50IERlc2NyaXB0b3I6CiAg
ICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgNwogICAgICAgIGJEZXNjcmlwdG9yVHlw
ZSAgICAgICAgIDUKICAgICAgICBiRW5kcG9pbnRBZGRyZXNzICAgICAweDg1ICBFUCA1IElO
CiAgICAgICAgYm1BdHRyaWJ1dGVzICAgICAgICAgICAgMwogICAgICAgICAgVHJhbnNmZXIg
VHlwZSAgICAgICAgICAgIEludGVycnVwdAogICAgICAgICAgU3luY2ggVHlwZSAgICAgICAg
ICAgICAgIE5vbmUKICAgICAgICAgIFVzYWdlIFR5cGUgICAgICAgICAgICAgICBEYXRhCiAg
ICAgICAgd01heFBhY2tldFNpemUgICAgIDB4MDA0MCAgMXggNjQgYnl0ZXMKICAgICAgICBi
SW50ZXJ2YWwgICAgICAgICAgICAgICA4CiAgICAgICAgYk1heEJ1cnN0ICAgICAgICAgICAg
ICAgMAogICAgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgIGJMZW5ndGggICAgICAgICAg
ICAgICAgIDkKICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNAogICAgICBiSW50ZXJm
YWNlTnVtYmVyICAgICAgICAxCiAgICAgIGJBbHRlcm5hdGVTZXR0aW5nICAgICAgIDAKICAg
ICAgYk51bUVuZHBvaW50cyAgICAgICAgICAgMAogICAgICBiSW50ZXJmYWNlQ2xhc3MgICAg
ICAgIDE0IFZpZGVvCiAgICAgIGJJbnRlcmZhY2VTdWJDbGFzcyAgICAgIDIgVmlkZW8gU3Ry
ZWFtaW5nCiAgICAgIGJJbnRlcmZhY2VQcm90b2NvbCAgICAgIDAgCiAgICAgIGlJbnRlcmZh
Y2UgICAgICAgICAgICAgIDAgCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNj
cmlwdG9yOgogICAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgMTYK
ICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAg
YkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgICAgICAgICAgICAgMSAoSU5QVVRfSEVBREVSKQog
ICAgICAgIGJOdW1Gb3JtYXRzICAgICAgICAgICAgICAgICAgICAgICAgIDMKICAgICAgICB3
VG90YWxMZW5ndGggICAgICAgICAgICAgICAgICAgMHgwNWI5CiAgICAgICAgYkVuZFBvaW50
QWRkcmVzcyAgICAgICAgICAgICAgICAgIDEyOQogICAgICAgIGJtSW5mbyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDAKICAgICAgICBiVGVybWluYWxMaW5rICAgICAgICAgICAg
ICAgICAgICAgICA0CiAgICAgICAgYlN0aWxsQ2FwdHVyZU1ldGhvZCAgICAgICAgICAgICAg
ICAgMAogICAgICAgIGJUcmlnZ2VyU3VwcG9ydCAgICAgICAgICAgICAgICAgICAgIDAKICAg
ICAgICBiVHJpZ2dlclVzYWdlICAgICAgICAgICAgICAgICAgICAgICAwCiAgICAgICAgYkNv
bnRyb2xTaXplICAgICAgICAgICAgICAgICAgICAgICAgMQogICAgICAgIGJtYUNvbnRyb2xz
KCAwKSAgICAgICAgICAgICAgICAgICAgIDAKICAgICAgICBibWFDb250cm9scyggMSkgICAg
ICAgICAgICAgICAgICAgICAwCiAgICAgICAgYm1hQ29udHJvbHMoIDIpICAgICAgICAgICAg
ICAgICAgICAgMAogICAgICBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoK
ICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICAgICAgICAgICAgIDI3CiAgICAgICAg
YkRlc2NyaXB0b3JUeXBlICAgICAgICAgICAgICAgICAgICAzNgogICAgICAgIGJEZXNjcmlw
dG9yU3VidHlwZSAgICAgICAgICAgICAgICAgIDQgKEZPUk1BVF9VTkNPTVBSRVNTRUQpCiAg
ICAgICAgYkZvcm1hdEluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgMQogICAgICAgIGJO
dW1GcmFtZURlc2NyaXB0b3JzICAgICAgICAgICAgICAgMTEKICAgICAgICBndWlkRm9ybWF0
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHszMjU5NTU1OS0wMDAwLTAwMTAtODAwMC0w
MGFhMDAzODliNzF9CiAgICAgICAgYkJpdHNQZXJQaXhlbCAgICAgICAgICAgICAgICAgICAg
ICAxNgogICAgICAgIGJEZWZhdWx0RnJhbWVJbmRleCAgICAgICAgICAgICAgICAgIDEKICAg
ICAgICBiQXNwZWN0UmF0aW9YICAgICAgICAgICAgICAgICAgICAgICAwCiAgICAgICAgYkFz
cGVjdFJhdGlvWSAgICAgICAgICAgICAgICAgICAgICAgMAogICAgICAgIGJtSW50ZXJsYWNl
RmxhZ3MgICAgICAgICAgICAgICAgIDB4MDAKICAgICAgICAgIEludGVybGFjZWQgc3RyZWFt
IG9yIHZhcmlhYmxlOiBObwogICAgICAgICAgRmllbGRzIHBlciBmcmFtZTogMiBmaWVsZHMK
ICAgICAgICAgIEZpZWxkIDEgZmlyc3Q6IE5vCiAgICAgICAgICBGaWVsZCBwYXR0ZXJuOiBG
aWVsZCAxIG9ubHkKICAgICAgICBiQ29weVByb3RlY3QgICAgICAgICAgICAgICAgICAgICAg
ICAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDEKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA2NDAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgNDgwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAyNDU3NjAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAxNDc0NTYwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAgNjE0NDAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDIKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICAxNzYK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgMTQ0CiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAgMjAyNzUyMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAgMTIxNjUxMjAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAgIDUwNjg4CiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDMKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICAzMjAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgMjQwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAgNjE0NDAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAgMzY4NjQwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAgMTUzNjAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDQKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA0MjQK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgMjQwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAgODE0MDgwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAgNDg4NDQ4MDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAgMjAzNTIwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDUKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA2NDAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgMzYwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAxODQzMjAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAxMTA1OTIwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAgNDYwODAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDYKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA4NDgK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgNDgwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAzMjU2MzIwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAxOTUzNzkyMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAgODE0MDgwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDcKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA5NjAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICA0MTQ3MjAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAyNDg4MzIwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAxMDM2ODAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDgKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgIDEyODAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgNzIwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICA3MzcyODAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICA0NDIzNjgwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAxODQzMjAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDkKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgIDE2MDAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgODk2CiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgIDExNDY4ODAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICA2ODgxMjgwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAyODY3MjAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgMTAKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgIDE5MjAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAxMDgwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgIDE2NTg4ODAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICA5OTUzMjgwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICA0MTQ3MjAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDcKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAyMDAw
MDAwCiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgMzAKICAgICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0
eXBlICAgICAgICAgICAgICAgICAgNSAoRlJBTUVfVU5DT01QUkVTU0VEKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgMTEKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgIDIzMDQK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAxMjk2CiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgIDIzODg3ODcyMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAyMzg4Nzg3MjAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICA1OTcxOTY4CiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgMjAwMDAwMAogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDEKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAyMDAwMDAwCiAg
ICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5n
dGggICAgICAgICAgICAgICAgICAgICAgICAgICAgIDYKICAgICAgICBiRGVzY3JpcHRvclR5
cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAg
ICAgICAgICAgICAgICAxMyAoQ09MT1JGT1JNQVQpCiAgICAgICAgYkNvbG9yUHJpbWFyaWVz
ICAgICAgICAgICAgICAgICAgICAgMSAoQlQuNzA5LHNSR0IpCiAgICAgICAgYlRyYW5zZmVy
Q2hhcmFjdGVyaXN0aWNzICAgICAgICAgICAgMSAoQlQuNzA5KQogICAgICAgIGJNYXRyaXhD
b2VmZmljaWVudHMgICAgICAgICAgICAgICAgIDQgKFNNUFRFIDE3ME0gKEJULjYwMSkpCiAg
ICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5n
dGggICAgICAgICAgICAgICAgICAgICAgICAgICAgMTEKICAgICAgICBiRGVzY3JpcHRvclR5
cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAg
ICAgICAgICAgICAgICAgNiAoRk9STUFUX01KUEVHKQogICAgICAgIGJGb3JtYXRJbmRleCAg
ICAgICAgICAgICAgICAgICAgICAgIDIKICAgICAgICBiTnVtRnJhbWVEZXNjcmlwdG9ycyAg
ICAgICAgICAgICAgIDEwCiAgICAgICAgYkZsYWdzICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgMQogICAgICAgICAgRml4ZWQtc2l6ZSBzYW1wbGVzOiBZZXMKICAgICAgICBiRGVm
YXVsdEZyYW1lSW5kZXggICAgICAgICAgICAgICAgICAxCiAgICAgICAgYkFzcGVjdFJhdGlv
WCAgICAgICAgICAgICAgICAgICAgICAgMAogICAgICAgIGJBc3BlY3RSYXRpb1kgICAgICAg
ICAgICAgICAgICAgICAgIDAKICAgICAgICBibUludGVybGFjZUZsYWdzICAgICAgICAgICAg
ICAgICAweDAwCiAgICAgICAgICBJbnRlcmxhY2VkIHN0cmVhbSBvciB2YXJpYWJsZTogTm8K
ICAgICAgICAgIEZpZWxkcyBwZXIgZnJhbWU6IDEgZmllbGRzCiAgICAgICAgICBGaWVsZCAx
IGZpcnN0OiBObwogICAgICAgICAgRmllbGQgcGF0dGVybjogRmllbGQgMSBvbmx5CiAgICAg
ICAgYkNvcHlQcm90ZWN0ICAgICAgICAgICAgICAgICAgICAgICAgMAogICAgICBWaWRlb1N0
cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDU4CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAg
ICAgICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgICAgICAgICAg
ICAgIDcgKEZSQU1FX01KUEVHKQogICAgICAgIGJGcmFtZUluZGV4ICAgICAgICAgICAgICAg
ICAgICAgICAgIDEKICAgICAgICBibUNhcGFiaWxpdGllcyAgICAgICAgICAgICAgICAgICAw
eDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZAogICAgICAgIHdXaWR0aCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA2NDAKICAgICAgICB3SGVpZ2h0ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgNDgwCiAgICAgICAgZHdNaW5CaXRSYXRlICAgICAgICAgICAg
ICAgICAyNDU3NjAwMAogICAgICAgIGR3TWF4Qml0UmF0ZSAgICAgICAgICAgICAgICAyOTQ5
MTIwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVCdWZmZXJTaXplICAgICAgNjE0NDAwCiAg
ICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAgICAgICAgIDMzMzMzMwogICAgICAgIGJG
cmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAgICAgIDgKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDApICAgICAgICAgICAgMTY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCAx
KSAgICAgICAgICAgIDMzMzMzMwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMikgICAgICAg
ICAgICA0MTY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDMpICAgICAgICAgICAgNTAw
MDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0KSAgICAgICAgICAgIDY2NjY2NgogICAg
ICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAgICAgIDEwMDAwMDAKICAgICAgICBkd0Zy
YW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAxMzMzMzMzCiAgICAgICAgZHdGcmFtZUludGVy
dmFsKCA3KSAgICAgICAgICAgMjAwMDAwMAogICAgICBWaWRlb1N0cmVhbWluZyBJbnRlcmZh
Y2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDU4CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgICAgICAgICAgICAzNgog
ICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgICAgICAgICAgICAgIDcgKEZSQU1FX01K
UEVHKQogICAgICAgIGJGcmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDIKICAg
ICAgICBibUNhcGFiaWxpdGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBT
dGlsbCBpbWFnZSB1bnN1cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAxNzYKICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgMTQ0CiAgICAgICAgZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAgMjAyNzUyMAog
ICAgICAgIGR3TWF4Qml0UmF0ZSAgICAgICAgICAgICAgICAgMjQzMzAyNDAKICAgICAgICBk
d01heFZpZGVvRnJhbWVCdWZmZXJTaXplICAgICAgIDUwNjg4CiAgICAgICAgZHdEZWZhdWx0
RnJhbWVJbnRlcnZhbCAgICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlw
ZSAgICAgICAgICAgICAgICAgIDgKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAg
ICAgICAgMTY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDMz
MzMzMwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA0MTY2NjYKICAg
ICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDMpICAgICAgICAgICAgNTAwMDAwCiAgICAgICAgZHdG
cmFtZUludGVydmFsKCA0KSAgICAgICAgICAgIDY2NjY2NgogICAgICAgIGR3RnJhbWVJbnRl
cnZhbCggNSkgICAgICAgICAgIDEwMDAwMDAKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYp
ICAgICAgICAgICAxMzMzMzMzCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA3KSAgICAgICAg
ICAgMjAwMDAwMAogICAgICBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoK
ICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICAgICAgICAgICAgIDU4CiAgICAgICAg
YkRlc2NyaXB0b3JUeXBlICAgICAgICAgICAgICAgICAgICAzNgogICAgICAgIGJEZXNjcmlw
dG9yU3VidHlwZSAgICAgICAgICAgICAgICAgIDcgKEZSQU1FX01KUEVHKQogICAgICAgIGJG
cmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDMKICAgICAgICBibUNhcGFiaWxp
dGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1
cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICAzMjAK
ICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgMjQwCiAgICAgICAg
ZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAgNjE0NDAwMAogICAgICAgIGR3TWF4Qml0
UmF0ZSAgICAgICAgICAgICAgICAgNzM3MjgwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVC
dWZmZXJTaXplICAgICAgMTUzNjAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAg
ICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAg
ICAgIDgKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMTY2NjY2CiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDMzMzMzMwogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA0MTY2NjYKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDMpICAgICAgICAgICAgNTAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0
KSAgICAgICAgICAgIDY2NjY2NgogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAg
ICAgIDEwMDAwMDAKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAxMzMz
MzMzCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA3KSAgICAgICAgICAgMjAwMDAwMAogICAg
ICBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3Ro
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDU4CiAgICAgICAgYkRlc2NyaXB0b3JUeXBl
ICAgICAgICAgICAgICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAg
ICAgICAgICAgICAgIDcgKEZSQU1FX01KUEVHKQogICAgICAgIGJGcmFtZUluZGV4ICAgICAg
ICAgICAgICAgICAgICAgICAgIDQKICAgICAgICBibUNhcGFiaWxpdGllcyAgICAgICAgICAg
ICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZAogICAgICAg
IHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA0MjQKICAgICAgICB3SGVpZ2h0
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMjQwCiAgICAgICAgZHdNaW5CaXRSYXRlICAg
ICAgICAgICAgICAgICAgODE0MDgwMAogICAgICAgIGR3TWF4Qml0UmF0ZSAgICAgICAgICAg
ICAgICAgOTc2ODk2MDAKICAgICAgICBkd01heFZpZGVvRnJhbWVCdWZmZXJTaXplICAgICAg
MjAzNTIwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAgICAgICAgIDMzMzMzMwog
ICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAgICAgIDgKICAgICAgICBk
d0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMTY2NjY2CiAgICAgICAgZHdGcmFtZUlu
dGVydmFsKCAxKSAgICAgICAgICAgIDMzMzMzMwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCgg
MikgICAgICAgICAgICA0MTY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDMpICAgICAg
ICAgICAgNTAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0KSAgICAgICAgICAgIDY2
NjY2NgogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAgICAgIDEwMDAwMDAKICAg
ICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAxMzMzMzMzCiAgICAgICAgZHdG
cmFtZUludGVydmFsKCA3KSAgICAgICAgICAgMjAwMDAwMAogICAgICBWaWRlb1N0cmVhbWlu
ZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDU4CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgICAgICAg
ICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgICAgICAgICAgICAgIDcg
KEZSQU1FX01KUEVHKQogICAgICAgIGJGcmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAg
ICAgIDUKICAgICAgICBibUNhcGFiaWxpdGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAg
ICAgICAgICBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICA2NDAKICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgMzYwCiAgICAgICAgZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAx
ODQzMjAwMAogICAgICAgIGR3TWF4Qml0UmF0ZSAgICAgICAgICAgICAgICAyMjExODQwMDAK
ICAgICAgICBkd01heFZpZGVvRnJhbWVCdWZmZXJTaXplICAgICAgNDYwODAwCiAgICAgICAg
ZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAgICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUlu
dGVydmFsVHlwZSAgICAgICAgICAgICAgICAgIDgKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwo
IDApICAgICAgICAgICAgMTY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAg
ICAgICAgIDMzMzMzMwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA0
MTY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDMpICAgICAgICAgICAgNTAwMDAwCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCA0KSAgICAgICAgICAgIDY2NjY2NgogICAgICAgIGR3
RnJhbWVJbnRlcnZhbCggNSkgICAgICAgICAgIDEwMDAwMDAKICAgICAgICBkd0ZyYW1lSW50
ZXJ2YWwoIDYpICAgICAgICAgICAxMzMzMzMzCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA3
KSAgICAgICAgICAgMjAwMDAwMAogICAgICBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVz
Y3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICAgICAgICAgICAgIDU4
CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgICAgICAgICAgICAzNgogICAgICAg
IGJEZXNjcmlwdG9yU3VidHlwZSAgICAgICAgICAgICAgICAgIDcgKEZSQU1FX01KUEVHKQog
ICAgICAgIGJGcmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDYKICAgICAgICBi
bUNhcGFiaWxpdGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBp
bWFnZSB1bnN1cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA4NDgKICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgNDgw
CiAgICAgICAgZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgICAzMjU2MzIwMAogICAgICAg
IGR3TWF4Qml0UmF0ZSAgICAgICAgICAgICAgICAzOTA3NTg0MDAKICAgICAgICBkd01heFZp
ZGVvRnJhbWVCdWZmZXJTaXplICAgICAgODE0MDgwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJ
bnRlcnZhbCAgICAgICAgIDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAg
ICAgICAgICAgICAgIDgKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAg
MTY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDMzMzMzMwog
ICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMikgICAgICAgICAgICA0MTY2NjYKICAgICAgICBk
d0ZyYW1lSW50ZXJ2YWwoIDMpICAgICAgICAgICAgNTAwMDAwCiAgICAgICAgZHdGcmFtZUlu
dGVydmFsKCA0KSAgICAgICAgICAgIDY2NjY2NgogICAgICAgIGR3RnJhbWVJbnRlcnZhbCgg
NSkgICAgICAgICAgIDEwMDAwMDAKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAg
ICAgICAxMzMzMzMzCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA3KSAgICAgICAgICAgMjAw
MDAwMAogICAgICBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAg
ICBiTGVuZ3RoICAgICAgICAgICAgICAgICAgICAgICAgICAgIDU4CiAgICAgICAgYkRlc2Ny
aXB0b3JUeXBlICAgICAgICAgICAgICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3Vi
dHlwZSAgICAgICAgICAgICAgICAgIDcgKEZSQU1FX01KUEVHKQogICAgICAgIGJGcmFtZUlu
ZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDcKICAgICAgICBibUNhcGFiaWxpdGllcyAg
ICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1cHBvcnRl
ZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA5NjAKICAgICAg
ICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAgICAgICAgNTQwCiAgICAgICAgZHdNaW5C
aXRSYXRlICAgICAgICAgICAgICAgICA0MTQ3MjAwMAogICAgICAgIGR3TWF4Qml0UmF0ZSAg
ICAgICAgICAgICAgICA0OTc2NjQwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVCdWZmZXJT
aXplICAgICAxMDM2ODAwCiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAgICAgICAg
IDMzMzMzMwogICAgICAgIGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAgICAgIDgK
ICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDApICAgICAgICAgICAgMTY2NjY2CiAgICAgICAg
ZHdGcmFtZUludGVydmFsKCAxKSAgICAgICAgICAgIDMzMzMzMwogICAgICAgIGR3RnJhbWVJ
bnRlcnZhbCggMikgICAgICAgICAgICA0MTY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwo
IDMpICAgICAgICAgICAgNTAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0KSAgICAg
ICAgICAgIDY2NjY2NgogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAgICAgIDEw
MDAwMDAKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAxMzMzMzMzCiAg
ICAgICAgZHdGcmFtZUludGVydmFsKCA3KSAgICAgICAgICAgMjAwMDAwMAogICAgICBWaWRl
b1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDU4CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAg
ICAgICAgICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgICAgICAg
ICAgICAgIDcgKEZSQU1FX01KUEVHKQogICAgICAgIGJGcmFtZUluZGV4ICAgICAgICAgICAg
ICAgICAgICAgICAgIDgKICAgICAgICBibUNhcGFiaWxpdGllcyAgICAgICAgICAgICAgICAg
ICAweDAwCiAgICAgICAgICBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZAogICAgICAgIHdXaWR0
aCAgICAgICAgICAgICAgICAgICAgICAgICAgIDEyODAKICAgICAgICB3SGVpZ2h0ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgNzIwCiAgICAgICAgZHdNaW5CaXRSYXRlICAgICAgICAg
ICAgICAgICA3MzcyODAwMAogICAgICAgIGR3TWF4Qml0UmF0ZSAgICAgICAgICAgICAgICA4
ODQ3MzYwMDAKICAgICAgICBkd01heFZpZGVvRnJhbWVCdWZmZXJTaXplICAgICAxODQzMjAw
CiAgICAgICAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCAgICAgICAgIDMzMzMzMwogICAgICAg
IGJGcmFtZUludGVydmFsVHlwZSAgICAgICAgICAgICAgICAgIDgKICAgICAgICBkd0ZyYW1l
SW50ZXJ2YWwoIDApICAgICAgICAgICAgMTY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFs
KCAxKSAgICAgICAgICAgIDMzMzMzMwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMikgICAg
ICAgICAgICA0MTY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDMpICAgICAgICAgICAg
NTAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA0KSAgICAgICAgICAgIDY2NjY2Ngog
ICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNSkgICAgICAgICAgIDEwMDAwMDAKICAgICAgICBk
d0ZyYW1lSW50ZXJ2YWwoIDYpICAgICAgICAgICAxMzMzMzMzCiAgICAgICAgZHdGcmFtZUlu
dGVydmFsKCA3KSAgICAgICAgICAgMjAwMDAwMAogICAgICBWaWRlb1N0cmVhbWluZyBJbnRl
cmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDU4CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgICAgICAgICAgICAz
NgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgICAgICAgICAgICAgIDcgKEZSQU1F
X01KUEVHKQogICAgICAgIGJGcmFtZUluZGV4ICAgICAgICAgICAgICAgICAgICAgICAgIDkK
ICAgICAgICBibUNhcGFiaWxpdGllcyAgICAgICAgICAgICAgICAgICAweDAwCiAgICAgICAg
ICBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZAogICAgICAgIHdXaWR0aCAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDE2MDAKICAgICAgICB3SGVpZ2h0ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgODk2CiAgICAgICAgZHdNaW5CaXRSYXRlICAgICAgICAgICAgICAgIDExNDY4ODAw
MAogICAgICAgIGR3TWF4Qml0UmF0ZSAgICAgICAgICAgICAgICAxMzc2MjU2MDAwCiAgICAg
ICAgZHdNYXhWaWRlb0ZyYW1lQnVmZmVyU2l6ZSAgICAgMjg2NzIwMAogICAgICAgIGR3RGVm
YXVsdEZyYW1lSW50ZXJ2YWwgICAgICAgICAzMzMzMzMKICAgICAgICBiRnJhbWVJbnRlcnZh
bFR5cGUgICAgICAgICAgICAgICAgICA4CiAgICAgICAgZHdGcmFtZUludGVydmFsKCAwKSAg
ICAgICAgICAgIDE2NjY2NgogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMSkgICAgICAgICAg
ICAzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDIpICAgICAgICAgICAgNDE2NjY2
CiAgICAgICAgZHdGcmFtZUludGVydmFsKCAzKSAgICAgICAgICAgIDUwMDAwMAogICAgICAg
IGR3RnJhbWVJbnRlcnZhbCggNCkgICAgICAgICAgICA2NjY2NjYKICAgICAgICBkd0ZyYW1l
SW50ZXJ2YWwoIDUpICAgICAgICAgICAxMDAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFs
KCA2KSAgICAgICAgICAgMTMzMzMzMwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNykgICAg
ICAgICAgIDIwMDAwMDAKICAgICAgVmlkZW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0
b3I6CiAgICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgICAgICAgICAgICA1OAogICAg
ICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgICAgICAgICAgICAgMzYKICAgICAgICBiRGVz
Y3JpcHRvclN1YnR5cGUgICAgICAgICAgICAgICAgICA3IChGUkFNRV9NSlBFRykKICAgICAg
ICBiRnJhbWVJbmRleCAgICAgICAgICAgICAgICAgICAgICAgIDEwCiAgICAgICAgYm1DYXBh
YmlsaXRpZXMgICAgICAgICAgICAgICAgICAgMHgwMAogICAgICAgICAgU3RpbGwgaW1hZ2Ug
dW5zdXBwb3J0ZWQKICAgICAgICB3V2lkdGggICAgICAgICAgICAgICAgICAgICAgICAgICAx
OTIwCiAgICAgICAgd0hlaWdodCAgICAgICAgICAgICAgICAgICAgICAgICAgMTA4MAogICAg
ICAgIGR3TWluQml0UmF0ZSAgICAgICAgICAgICAgICAxNjU4ODgwMDAKICAgICAgICBkd01h
eEJpdFJhdGUgICAgICAgICAgICAgICAgMTk5MDY1NjAwMAogICAgICAgIGR3TWF4VmlkZW9G
cmFtZUJ1ZmZlclNpemUgICAgIDQxNDcyMDAKICAgICAgICBkd0RlZmF1bHRGcmFtZUludGVy
dmFsICAgICAgICAgMzMzMzMzCiAgICAgICAgYkZyYW1lSW50ZXJ2YWxUeXBlICAgICAgICAg
ICAgICAgICAgOAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMCkgICAgICAgICAgICAxNjY2
NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDEpICAgICAgICAgICAgMzMzMzMzCiAgICAg
ICAgZHdGcmFtZUludGVydmFsKCAyKSAgICAgICAgICAgIDQxNjY2NgogICAgICAgIGR3RnJh
bWVJbnRlcnZhbCggMykgICAgICAgICAgICA1MDAwMDAKICAgICAgICBkd0ZyYW1lSW50ZXJ2
YWwoIDQpICAgICAgICAgICAgNjY2NjY2CiAgICAgICAgZHdGcmFtZUludGVydmFsKCA1KSAg
ICAgICAgICAgMTAwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNikgICAgICAgICAg
IDEzMzMzMzMKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDcpICAgICAgICAgICAyMDAwMDAw
CiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJM
ZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgIDYKICAgICAgICBiRGVzY3JpcHRv
clR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBl
ICAgICAgICAgICAgICAgICAxMyAoQ09MT1JGT1JNQVQpCiAgICAgICAgYkNvbG9yUHJpbWFy
aWVzICAgICAgICAgICAgICAgICAgICAgMSAoQlQuNzA5LHNSR0IpCiAgICAgICAgYlRyYW5z
ZmVyQ2hhcmFjdGVyaXN0aWNzICAgICAgICAgICAgMSAoQlQuNzA5KQogICAgICAgIGJNYXRy
aXhDb2VmZmljaWVudHMgICAgICAgICAgICAgICAgIDQgKFNNUFRFIDE3ME0gKEJULjYwMSkp
CiAgICAgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJM
ZW5ndGggICAgICAgICAgICAgICAgICAgICAgICAgICAgMjcKICAgICAgICBiRGVzY3JpcHRv
clR5cGUgICAgICAgICAgICAgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBl
ICAgICAgICAgICAgICAgICAgNCAoRk9STUFUX1VOQ09NUFJFU1NFRCkKICAgICAgICBiRm9y
bWF0SW5kZXggICAgICAgICAgICAgICAgICAgICAgICAzCiAgICAgICAgYk51bUZyYW1lRGVz
Y3JpcHRvcnMgICAgICAgICAgICAgICAgNAogICAgICAgIGd1aWRGb3JtYXQgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgezMyMzE1NjRlLTAwMDAtMDAxMC04MDAwLTAwYWEwMDM4OWI3
MX0KICAgICAgICBiQml0c1BlclBpeGVsICAgICAgICAgICAgICAgICAgICAgIDEyCiAgICAg
ICAgYkRlZmF1bHRGcmFtZUluZGV4ICAgICAgICAgICAgICAgICAgMQogICAgICAgIGJBc3Bl
Y3RSYXRpb1ggICAgICAgICAgICAgICAgICAgICAgIDAKICAgICAgICBiQXNwZWN0UmF0aW9Z
ICAgICAgICAgICAgICAgICAgICAgICAwCiAgICAgICAgYm1JbnRlcmxhY2VGbGFncyAgICAg
ICAgICAgICAgICAgMHgwMAogICAgICAgICAgSW50ZXJsYWNlZCBzdHJlYW0gb3IgdmFyaWFi
bGU6IE5vCiAgICAgICAgICBGaWVsZHMgcGVyIGZyYW1lOiAyIGZpZWxkcwogICAgICAgICAg
RmllbGQgMSBmaXJzdDogTm8KICAgICAgICAgIEZpZWxkIHBhdHRlcm46IEZpZWxkIDEgb25s
eQogICAgICAgIGJDb3B5UHJvdGVjdCAgICAgICAgICAgICAgICAgICAgICAgIDAKICAgICAg
VmlkZW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA1NAogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAg
ICAgICAgICAgICAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAg
ICAgICAgICAgICA1IChGUkFNRV9VTkNPTVBSRVNTRUQpCiAgICAgICAgYkZyYW1lSW5kZXgg
ICAgICAgICAgICAgICAgICAgICAgICAgMQogICAgICAgIGJtQ2FwYWJpbGl0aWVzICAgICAg
ICAgICAgICAgICAgIDB4MDAKICAgICAgICAgIFN0aWxsIGltYWdlIHVuc3VwcG9ydGVkCiAg
ICAgICAgd1dpZHRoICAgICAgICAgICAgICAgICAgICAgICAgICAgIDY0MAogICAgICAgIHdI
ZWlnaHQgICAgICAgICAgICAgICAgICAgICAgICAgICA0ODAKICAgICAgICBkd01pbkJpdFJh
dGUgICAgICAgICAgICAgICAgIDI0NTc2MDAwCiAgICAgICAgZHdNYXhCaXRSYXRlICAgICAg
ICAgICAgICAgIDE0NzQ1NjAwMAogICAgICAgIGR3TWF4VmlkZW9GcmFtZUJ1ZmZlclNpemUg
ICAgICA2MTQ0MDAKICAgICAgICBkd0RlZmF1bHRGcmFtZUludGVydmFsICAgICAgICAgMzMz
MzMzCiAgICAgICAgYkZyYW1lSW50ZXJ2YWxUeXBlICAgICAgICAgICAgICAgICAgNwogICAg
ICAgIGR3RnJhbWVJbnRlcnZhbCggMCkgICAgICAgICAgICAzMzMzMzMKICAgICAgICBkd0Zy
YW1lSW50ZXJ2YWwoIDEpICAgICAgICAgICAgNDE2NjY2CiAgICAgICAgZHdGcmFtZUludGVy
dmFsKCAyKSAgICAgICAgICAgIDUwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMykg
ICAgICAgICAgICA2NjY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDQpICAgICAgICAg
ICAxMDAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA1KSAgICAgICAgICAgMTMzMzMz
MwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNikgICAgICAgICAgIDIwMDAwMDAKICAgICAg
VmlkZW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA1NAogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAg
ICAgICAgICAgICAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAg
ICAgICAgICAgICA1IChGUkFNRV9VTkNPTVBSRVNTRUQpCiAgICAgICAgYkZyYW1lSW5kZXgg
ICAgICAgICAgICAgICAgICAgICAgICAgMgogICAgICAgIGJtQ2FwYWJpbGl0aWVzICAgICAg
ICAgICAgICAgICAgIDB4MDAKICAgICAgICAgIFN0aWxsIGltYWdlIHVuc3VwcG9ydGVkCiAg
ICAgICAgd1dpZHRoICAgICAgICAgICAgICAgICAgICAgICAgICAgIDY0MAogICAgICAgIHdI
ZWlnaHQgICAgICAgICAgICAgICAgICAgICAgICAgICAzNjAKICAgICAgICBkd01pbkJpdFJh
dGUgICAgICAgICAgICAgICAgIDE4NDMyMDAwCiAgICAgICAgZHdNYXhCaXRSYXRlICAgICAg
ICAgICAgICAgIDExMDU5MjAwMAogICAgICAgIGR3TWF4VmlkZW9GcmFtZUJ1ZmZlclNpemUg
ICAgICA0NjA4MDAKICAgICAgICBkd0RlZmF1bHRGcmFtZUludGVydmFsICAgICAgICAgMzMz
MzMzCiAgICAgICAgYkZyYW1lSW50ZXJ2YWxUeXBlICAgICAgICAgICAgICAgICAgNwogICAg
ICAgIGR3RnJhbWVJbnRlcnZhbCggMCkgICAgICAgICAgICAzMzMzMzMKICAgICAgICBkd0Zy
YW1lSW50ZXJ2YWwoIDEpICAgICAgICAgICAgNDE2NjY2CiAgICAgICAgZHdGcmFtZUludGVy
dmFsKCAyKSAgICAgICAgICAgIDUwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMykg
ICAgICAgICAgICA2NjY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDQpICAgICAgICAg
ICAxMDAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA1KSAgICAgICAgICAgMTMzMzMz
MwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNikgICAgICAgICAgIDIwMDAwMDAKICAgICAg
VmlkZW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA1NAogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAg
ICAgICAgICAgICAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAg
ICAgICAgICAgICA1IChGUkFNRV9VTkNPTVBSRVNTRUQpCiAgICAgICAgYkZyYW1lSW5kZXgg
ICAgICAgICAgICAgICAgICAgICAgICAgMwogICAgICAgIGJtQ2FwYWJpbGl0aWVzICAgICAg
ICAgICAgICAgICAgIDB4MDAKICAgICAgICAgIFN0aWxsIGltYWdlIHVuc3VwcG9ydGVkCiAg
ICAgICAgd1dpZHRoICAgICAgICAgICAgICAgICAgICAgICAgICAgMTI4MAogICAgICAgIHdI
ZWlnaHQgICAgICAgICAgICAgICAgICAgICAgICAgICA3MjAKICAgICAgICBkd01pbkJpdFJh
dGUgICAgICAgICAgICAgICAgIDczNzI4MDAwCiAgICAgICAgZHdNYXhCaXRSYXRlICAgICAg
ICAgICAgICAgIDQ0MjM2ODAwMAogICAgICAgIGR3TWF4VmlkZW9GcmFtZUJ1ZmZlclNpemUg
ICAgIDE4NDMyMDAKICAgICAgICBkd0RlZmF1bHRGcmFtZUludGVydmFsICAgICAgICAgMzMz
MzMzCiAgICAgICAgYkZyYW1lSW50ZXJ2YWxUeXBlICAgICAgICAgICAgICAgICAgNwogICAg
ICAgIGR3RnJhbWVJbnRlcnZhbCggMCkgICAgICAgICAgICAzMzMzMzMKICAgICAgICBkd0Zy
YW1lSW50ZXJ2YWwoIDEpICAgICAgICAgICAgNDE2NjY2CiAgICAgICAgZHdGcmFtZUludGVy
dmFsKCAyKSAgICAgICAgICAgIDUwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMykg
ICAgICAgICAgICA2NjY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDQpICAgICAgICAg
ICAxMDAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA1KSAgICAgICAgICAgMTMzMzMz
MwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNikgICAgICAgICAgIDIwMDAwMDAKICAgICAg
VmlkZW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA1NAogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAg
ICAgICAgICAgICAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAg
ICAgICAgICAgICA1IChGUkFNRV9VTkNPTVBSRVNTRUQpCiAgICAgICAgYkZyYW1lSW5kZXgg
ICAgICAgICAgICAgICAgICAgICAgICAgNAogICAgICAgIGJtQ2FwYWJpbGl0aWVzICAgICAg
ICAgICAgICAgICAgIDB4MDAKICAgICAgICAgIFN0aWxsIGltYWdlIHVuc3VwcG9ydGVkCiAg
ICAgICAgd1dpZHRoICAgICAgICAgICAgICAgICAgICAgICAgICAgMTkyMAogICAgICAgIHdI
ZWlnaHQgICAgICAgICAgICAgICAgICAgICAgICAgIDEwODAKICAgICAgICBkd01pbkJpdFJh
dGUgICAgICAgICAgICAgICAgMTY1ODg4MDAwCiAgICAgICAgZHdNYXhCaXRSYXRlICAgICAg
ICAgICAgICAgIDk5NTMyODAwMAogICAgICAgIGR3TWF4VmlkZW9GcmFtZUJ1ZmZlclNpemUg
ICAgIDQxNDcyMDAKICAgICAgICBkd0RlZmF1bHRGcmFtZUludGVydmFsICAgICAgICAgMzMz
MzMzCiAgICAgICAgYkZyYW1lSW50ZXJ2YWxUeXBlICAgICAgICAgICAgICAgICAgNwogICAg
ICAgIGR3RnJhbWVJbnRlcnZhbCggMCkgICAgICAgICAgICAzMzMzMzMKICAgICAgICBkd0Zy
YW1lSW50ZXJ2YWwoIDEpICAgICAgICAgICAgNDE2NjY2CiAgICAgICAgZHdGcmFtZUludGVy
dmFsKCAyKSAgICAgICAgICAgIDUwMDAwMAogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggMykg
ICAgICAgICAgICA2NjY2NjYKICAgICAgICBkd0ZyYW1lSW50ZXJ2YWwoIDQpICAgICAgICAg
ICAxMDAwMDAwCiAgICAgICAgZHdGcmFtZUludGVydmFsKCA1KSAgICAgICAgICAgMTMzMzMz
MwogICAgICAgIGR3RnJhbWVJbnRlcnZhbCggNikgICAgICAgICAgIDIwMDAwMDAKICAgICAg
VmlkZW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgNgogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAg
ICAgICAgICAgICAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAg
ICAgICAgICAgIDEzIChDT0xPUkZPUk1BVCkKICAgICAgICBiQ29sb3JQcmltYXJpZXMgICAg
ICAgICAgICAgICAgICAgICAxIChCVC43MDksc1JHQikKICAgICAgICBiVHJhbnNmZXJDaGFy
YWN0ZXJpc3RpY3MgICAgICAgICAgICAxIChCVC43MDkpCiAgICAgICAgYk1hdHJpeENvZWZm
aWNpZW50cyAgICAgICAgICAgICAgICAgNCAoU01QVEUgMTcwTSAoQlQuNjAxKSkKICAgIElu
dGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAg
ICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDQKICAgICAgYkludGVyZmFjZU51bWJlciAg
ICAgICAgMQogICAgICBiQWx0ZXJuYXRlU2V0dGluZyAgICAgICAxCiAgICAgIGJOdW1FbmRw
b2ludHMgICAgICAgICAgIDEKICAgICAgYkludGVyZmFjZUNsYXNzICAgICAgICAxNCBWaWRl
bwogICAgICBiSW50ZXJmYWNlU3ViQ2xhc3MgICAgICAyIFZpZGVvIFN0cmVhbWluZwogICAg
ICBiSW50ZXJmYWNlUHJvdG9jb2wgICAgICAwIAogICAgICBpSW50ZXJmYWNlICAgICAgICAg
ICAgICAwIAogICAgICBFbmRwb2ludCBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5ndGggICAg
ICAgICAgICAgICAgIDcKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA1CiAgICAg
ICAgYkVuZHBvaW50QWRkcmVzcyAgICAgMHg4MSAgRVAgMSBJTgogICAgICAgIGJtQXR0cmli
dXRlcyAgICAgICAgICAgIDUKICAgICAgICAgIFRyYW5zZmVyIFR5cGUgICAgICAgICAgICBJ
c29jaHJvbm91cwogICAgICAgICAgU3luY2ggVHlwZSAgICAgICAgICAgICAgIEFzeW5jaHJv
bm91cwogICAgICAgICAgVXNhZ2UgVHlwZSAgICAgICAgICAgICAgIERhdGEKICAgICAgICB3
TWF4UGFja2V0U2l6ZSAgICAgMHgwMTgwICAxeCAzODQgYnl0ZXMKICAgICAgICBiSW50ZXJ2
YWwgICAgICAgICAgICAgICAxCiAgICAgICAgYk1heEJ1cnN0ICAgICAgICAgICAgICAgMAog
ICAgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAg
IDkKICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNAogICAgICBiSW50ZXJmYWNlTnVt
YmVyICAgICAgICAxCiAgICAgIGJBbHRlcm5hdGVTZXR0aW5nICAgICAgIDIKICAgICAgYk51
bUVuZHBvaW50cyAgICAgICAgICAgMQogICAgICBiSW50ZXJmYWNlQ2xhc3MgICAgICAgIDE0
IFZpZGVvCiAgICAgIGJJbnRlcmZhY2VTdWJDbGFzcyAgICAgIDIgVmlkZW8gU3RyZWFtaW5n
CiAgICAgIGJJbnRlcmZhY2VQcm90b2NvbCAgICAgIDAgCiAgICAgIGlJbnRlcmZhY2UgICAg
ICAgICAgICAgIDAgCiAgICAgIEVuZHBvaW50IERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0
aCAgICAgICAgICAgICAgICAgNwogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDUK
ICAgICAgICBiRW5kcG9pbnRBZGRyZXNzICAgICAweDgxICBFUCAxIElOCiAgICAgICAgYm1B
dHRyaWJ1dGVzICAgICAgICAgICAgNQogICAgICAgICAgVHJhbnNmZXIgVHlwZSAgICAgICAg
ICAgIElzb2Nocm9ub3VzCiAgICAgICAgICBTeW5jaCBUeXBlICAgICAgICAgICAgICAgQXN5
bmNocm9ub3VzCiAgICAgICAgICBVc2FnZSBUeXBlICAgICAgICAgICAgICAgRGF0YQogICAg
ICAgIHdNYXhQYWNrZXRTaXplICAgICAweDAyODAgIDF4IDY0MCBieXRlcwogICAgICAgIGJJ
bnRlcnZhbCAgICAgICAgICAgICAgIDEKICAgICAgICBiTWF4QnVyc3QgICAgICAgICAgICAg
ICAwCiAgICBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgYkxlbmd0aCAgICAgICAgICAg
ICAgICAgOQogICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA0CiAgICAgIGJJbnRlcmZh
Y2VOdW1iZXIgICAgICAgIDEKICAgICAgYkFsdGVybmF0ZVNldHRpbmcgICAgICAgMwogICAg
ICBiTnVtRW5kcG9pbnRzICAgICAgICAgICAxCiAgICAgIGJJbnRlcmZhY2VDbGFzcyAgICAg
ICAgMTQgVmlkZW8KICAgICAgYkludGVyZmFjZVN1YkNsYXNzICAgICAgMiBWaWRlbyBTdHJl
YW1pbmcKICAgICAgYkludGVyZmFjZVByb3RvY29sICAgICAgMCAKICAgICAgaUludGVyZmFj
ZSAgICAgICAgICAgICAgMCAKICAgICAgRW5kcG9pbnQgRGVzY3JpcHRvcjoKICAgICAgICBi
TGVuZ3RoICAgICAgICAgICAgICAgICA3CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAg
ICAgNQogICAgICAgIGJFbmRwb2ludEFkZHJlc3MgICAgIDB4ODEgIEVQIDEgSU4KICAgICAg
ICBibUF0dHJpYnV0ZXMgICAgICAgICAgICA1CiAgICAgICAgICBUcmFuc2ZlciBUeXBlICAg
ICAgICAgICAgSXNvY2hyb25vdXMKICAgICAgICAgIFN5bmNoIFR5cGUgICAgICAgICAgICAg
ICBBc3luY2hyb25vdXMKICAgICAgICAgIFVzYWdlIFR5cGUgICAgICAgICAgICAgICBEYXRh
CiAgICAgICAgd01heFBhY2tldFNpemUgICAgIDB4MDNiMCAgMXggOTQ0IGJ5dGVzCiAgICAg
ICAgYkludGVydmFsICAgICAgICAgICAgICAgMQogICAgICAgIGJNYXhCdXJzdCAgICAgICAg
ICAgICAgIDAKICAgIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICBiTGVuZ3RoICAgICAg
ICAgICAgICAgICA5CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDQKICAgICAgYklu
dGVyZmFjZU51bWJlciAgICAgICAgMQogICAgICBiQWx0ZXJuYXRlU2V0dGluZyAgICAgICA0
CiAgICAgIGJOdW1FbmRwb2ludHMgICAgICAgICAgIDEKICAgICAgYkludGVyZmFjZUNsYXNz
ICAgICAgICAxNCBWaWRlbwogICAgICBiSW50ZXJmYWNlU3ViQ2xhc3MgICAgICAyIFZpZGVv
IFN0cmVhbWluZwogICAgICBiSW50ZXJmYWNlUHJvdG9jb2wgICAgICAwIAogICAgICBpSW50
ZXJmYWNlICAgICAgICAgICAgICAwIAogICAgICBFbmRwb2ludCBEZXNjcmlwdG9yOgogICAg
ICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDcKICAgICAgICBiRGVzY3JpcHRvclR5cGUg
ICAgICAgICA1CiAgICAgICAgYkVuZHBvaW50QWRkcmVzcyAgICAgMHg4MSAgRVAgMSBJTgog
ICAgICAgIGJtQXR0cmlidXRlcyAgICAgICAgICAgIDUKICAgICAgICAgIFRyYW5zZmVyIFR5
cGUgICAgICAgICAgICBJc29jaHJvbm91cwogICAgICAgICAgU3luY2ggVHlwZSAgICAgICAg
ICAgICAgIEFzeW5jaHJvbm91cwogICAgICAgICAgVXNhZ2UgVHlwZSAgICAgICAgICAgICAg
IERhdGEKICAgICAgICB3TWF4UGFja2V0U2l6ZSAgICAgMHgwNDAwICAxeCAxMDI0IGJ5dGVz
CiAgICAgICAgYkludGVydmFsICAgICAgICAgICAgICAgMQogICAgICAgIGJNYXhCdXJzdCAg
ICAgICAgICAgICAgIDAKICAgIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICBiTGVuZ3Ro
ICAgICAgICAgICAgICAgICA5CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDQKICAg
ICAgYkludGVyZmFjZU51bWJlciAgICAgICAgMQogICAgICBiQWx0ZXJuYXRlU2V0dGluZyAg
ICAgICA1CiAgICAgIGJOdW1FbmRwb2ludHMgICAgICAgICAgIDEKICAgICAgYkludGVyZmFj
ZUNsYXNzICAgICAgICAxNCBWaWRlbwogICAgICBiSW50ZXJmYWNlU3ViQ2xhc3MgICAgICAy
IFZpZGVvIFN0cmVhbWluZwogICAgICBiSW50ZXJmYWNlUHJvdG9jb2wgICAgICAwIAogICAg
ICBpSW50ZXJmYWNlICAgICAgICAgICAgICAwIAogICAgICBFbmRwb2ludCBEZXNjcmlwdG9y
OgogICAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDcKICAgICAgICBiRGVzY3JpcHRv
clR5cGUgICAgICAgICA1CiAgICAgICAgYkVuZHBvaW50QWRkcmVzcyAgICAgMHg4MSAgRVAg
MSBJTgogICAgICAgIGJtQXR0cmlidXRlcyAgICAgICAgICAgIDUKICAgICAgICAgIFRyYW5z
ZmVyIFR5cGUgICAgICAgICAgICBJc29jaHJvbm91cwogICAgICAgICAgU3luY2ggVHlwZSAg
ICAgICAgICAgICAgIEFzeW5jaHJvbm91cwogICAgICAgICAgVXNhZ2UgVHlwZSAgICAgICAg
ICAgICAgIERhdGEKICAgICAgICB3TWF4UGFja2V0U2l6ZSAgICAgMHgwNDAwICAxeCAxMDI0
IGJ5dGVzCiAgICAgICAgYkludGVydmFsICAgICAgICAgICAgICAgMQogICAgICAgIGJNYXhC
dXJzdCAgICAgICAgICAgICAgIDEKICAgIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICBi
TGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAg
IDQKICAgICAgYkludGVyZmFjZU51bWJlciAgICAgICAgMQogICAgICBiQWx0ZXJuYXRlU2V0
dGluZyAgICAgICA2CiAgICAgIGJOdW1FbmRwb2ludHMgICAgICAgICAgIDEKICAgICAgYklu
dGVyZmFjZUNsYXNzICAgICAgICAxNCBWaWRlbwogICAgICBiSW50ZXJmYWNlU3ViQ2xhc3Mg
ICAgICAyIFZpZGVvIFN0cmVhbWluZwogICAgICBiSW50ZXJmYWNlUHJvdG9jb2wgICAgICAw
IAogICAgICBpSW50ZXJmYWNlICAgICAgICAgICAgICAwIAogICAgICBFbmRwb2ludCBEZXNj
cmlwdG9yOgogICAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDcKICAgICAgICBiRGVz
Y3JpcHRvclR5cGUgICAgICAgICA1CiAgICAgICAgYkVuZHBvaW50QWRkcmVzcyAgICAgMHg4
MSAgRVAgMSBJTgogICAgICAgIGJtQXR0cmlidXRlcyAgICAgICAgICAgIDUKICAgICAgICAg
IFRyYW5zZmVyIFR5cGUgICAgICAgICAgICBJc29jaHJvbm91cwogICAgICAgICAgU3luY2gg
VHlwZSAgICAgICAgICAgICAgIEFzeW5jaHJvbm91cwogICAgICAgICAgVXNhZ2UgVHlwZSAg
ICAgICAgICAgICAgIERhdGEKICAgICAgICB3TWF4UGFja2V0U2l6ZSAgICAgMHgwNDAwICAx
eCAxMDI0IGJ5dGVzCiAgICAgICAgYkludGVydmFsICAgICAgICAgICAgICAgMQogICAgICAg
IGJNYXhCdXJzdCAgICAgICAgICAgICAgIDIKICAgIEludGVyZmFjZSBEZXNjcmlwdG9yOgog
ICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAg
ICAgICAgIDQKICAgICAgYkludGVyZmFjZU51bWJlciAgICAgICAgMQogICAgICBiQWx0ZXJu
YXRlU2V0dGluZyAgICAgICA3CiAgICAgIGJOdW1FbmRwb2ludHMgICAgICAgICAgIDEKICAg
ICAgYkludGVyZmFjZUNsYXNzICAgICAgICAxNCBWaWRlbwogICAgICBiSW50ZXJmYWNlU3Vi
Q2xhc3MgICAgICAyIFZpZGVvIFN0cmVhbWluZwogICAgICBiSW50ZXJmYWNlUHJvdG9jb2wg
ICAgICAwIAogICAgICBpSW50ZXJmYWNlICAgICAgICAgICAgICAwIAogICAgICBFbmRwb2lu
dCBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDcKICAgICAg
ICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA1CiAgICAgICAgYkVuZHBvaW50QWRkcmVzcyAg
ICAgMHg4MSAgRVAgMSBJTgogICAgICAgIGJtQXR0cmlidXRlcyAgICAgICAgICAgIDUKICAg
ICAgICAgIFRyYW5zZmVyIFR5cGUgICAgICAgICAgICBJc29jaHJvbm91cwogICAgICAgICAg
U3luY2ggVHlwZSAgICAgICAgICAgICAgIEFzeW5jaHJvbm91cwogICAgICAgICAgVXNhZ2Ug
VHlwZSAgICAgICAgICAgICAgIERhdGEKICAgICAgICB3TWF4UGFja2V0U2l6ZSAgICAgMHgw
NDAwICAxeCAxMDI0IGJ5dGVzCiAgICAgICAgYkludGVydmFsICAgICAgICAgICAgICAgMQog
ICAgICAgIGJNYXhCdXJzdCAgICAgICAgICAgICAgIDIKICAgICAgICBNdWx0ICAgICAgICAg
ICAgICAgICAgICAxCiAgICBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgYkxlbmd0aCAg
ICAgICAgICAgICAgICAgOQogICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA0CiAgICAg
IGJJbnRlcmZhY2VOdW1iZXIgICAgICAgIDEKICAgICAgYkFsdGVybmF0ZVNldHRpbmcgICAg
ICAgOAogICAgICBiTnVtRW5kcG9pbnRzICAgICAgICAgICAxCiAgICAgIGJJbnRlcmZhY2VD
bGFzcyAgICAgICAgMTQgVmlkZW8KICAgICAgYkludGVyZmFjZVN1YkNsYXNzICAgICAgMiBW
aWRlbyBTdHJlYW1pbmcKICAgICAgYkludGVyZmFjZVByb3RvY29sICAgICAgMCAKICAgICAg
aUludGVyZmFjZSAgICAgICAgICAgICAgMCAKICAgICAgRW5kcG9pbnQgRGVzY3JpcHRvcjoK
ICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA3CiAgICAgICAgYkRlc2NyaXB0b3JU
eXBlICAgICAgICAgNQogICAgICAgIGJFbmRwb2ludEFkZHJlc3MgICAgIDB4ODEgIEVQIDEg
SU4KICAgICAgICBibUF0dHJpYnV0ZXMgICAgICAgICAgICA1CiAgICAgICAgICBUcmFuc2Zl
ciBUeXBlICAgICAgICAgICAgSXNvY2hyb25vdXMKICAgICAgICAgIFN5bmNoIFR5cGUgICAg
ICAgICAgICAgICBBc3luY2hyb25vdXMKICAgICAgICAgIFVzYWdlIFR5cGUgICAgICAgICAg
ICAgICBEYXRhCiAgICAgICAgd01heFBhY2tldFNpemUgICAgIDB4MDQwMCAgMXggMTAyNCBi
eXRlcwogICAgICAgIGJJbnRlcnZhbCAgICAgICAgICAgICAgIDEKICAgICAgICBiTWF4QnVy
c3QgICAgICAgICAgICAgICAyCiAgICAgICAgTXVsdCAgICAgICAgICAgICAgICAgICAgMgog
ICAgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAg
IDkKICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNAogICAgICBiSW50ZXJmYWNlTnVt
YmVyICAgICAgICAxCiAgICAgIGJBbHRlcm5hdGVTZXR0aW5nICAgICAgIDkKICAgICAgYk51
bUVuZHBvaW50cyAgICAgICAgICAgMQogICAgICBiSW50ZXJmYWNlQ2xhc3MgICAgICAgIDE0
IFZpZGVvCiAgICAgIGJJbnRlcmZhY2VTdWJDbGFzcyAgICAgIDIgVmlkZW8gU3RyZWFtaW5n
CiAgICAgIGJJbnRlcmZhY2VQcm90b2NvbCAgICAgIDAgCiAgICAgIGlJbnRlcmZhY2UgICAg
ICAgICAgICAgIDAgCiAgICAgIEVuZHBvaW50IERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0
aCAgICAgICAgICAgICAgICAgNwogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDUK
ICAgICAgICBiRW5kcG9pbnRBZGRyZXNzICAgICAweDgxICBFUCAxIElOCiAgICAgICAgYm1B
dHRyaWJ1dGVzICAgICAgICAgICAgNQogICAgICAgICAgVHJhbnNmZXIgVHlwZSAgICAgICAg
ICAgIElzb2Nocm9ub3VzCiAgICAgICAgICBTeW5jaCBUeXBlICAgICAgICAgICAgICAgQXN5
bmNocm9ub3VzCiAgICAgICAgICBVc2FnZSBUeXBlICAgICAgICAgICAgICAgRGF0YQogICAg
ICAgIHdNYXhQYWNrZXRTaXplICAgICAweDA0MDAgIDF4IDEwMjQgYnl0ZXMKICAgICAgICBi
SW50ZXJ2YWwgICAgICAgICAgICAgICAxCiAgICAgICAgYk1heEJ1cnN0ICAgICAgICAgICAg
ICAgMwogICAgICAgIE11bHQgICAgICAgICAgICAgICAgICAgIDIKICAgIEludGVyZmFjZSBE
ZXNjcmlwdG9yOgogICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAgIGJEZXNj
cmlwdG9yVHlwZSAgICAgICAgIDQKICAgICAgYkludGVyZmFjZU51bWJlciAgICAgICAgMQog
ICAgICBiQWx0ZXJuYXRlU2V0dGluZyAgICAgIDEwCiAgICAgIGJOdW1FbmRwb2ludHMgICAg
ICAgICAgIDEKICAgICAgYkludGVyZmFjZUNsYXNzICAgICAgICAxNCBWaWRlbwogICAgICBi
SW50ZXJmYWNlU3ViQ2xhc3MgICAgICAyIFZpZGVvIFN0cmVhbWluZwogICAgICBiSW50ZXJm
YWNlUHJvdG9jb2wgICAgICAwIAogICAgICBpSW50ZXJmYWNlICAgICAgICAgICAgICAwIAog
ICAgICBFbmRwb2ludCBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5ndGggICAgICAgICAgICAg
ICAgIDcKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA1CiAgICAgICAgYkVuZHBv
aW50QWRkcmVzcyAgICAgMHg4MSAgRVAgMSBJTgogICAgICAgIGJtQXR0cmlidXRlcyAgICAg
ICAgICAgIDUKICAgICAgICAgIFRyYW5zZmVyIFR5cGUgICAgICAgICAgICBJc29jaHJvbm91
cwogICAgICAgICAgU3luY2ggVHlwZSAgICAgICAgICAgICAgIEFzeW5jaHJvbm91cwogICAg
ICAgICAgVXNhZ2UgVHlwZSAgICAgICAgICAgICAgIERhdGEKICAgICAgICB3TWF4UGFja2V0
U2l6ZSAgICAgMHgwNDAwICAxeCAxMDI0IGJ5dGVzCiAgICAgICAgYkludGVydmFsICAgICAg
ICAgICAgICAgMQogICAgICAgIGJNYXhCdXJzdCAgICAgICAgICAgICAgIDQKICAgICAgICBN
dWx0ICAgICAgICAgICAgICAgICAgICAyCiAgICBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAg
ICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQogICAgICBiRGVzY3JpcHRvclR5cGUgICAg
ICAgICA0CiAgICAgIGJJbnRlcmZhY2VOdW1iZXIgICAgICAgIDEKICAgICAgYkFsdGVybmF0
ZVNldHRpbmcgICAgICAxMQogICAgICBiTnVtRW5kcG9pbnRzICAgICAgICAgICAxCiAgICAg
IGJJbnRlcmZhY2VDbGFzcyAgICAgICAgMTQgVmlkZW8KICAgICAgYkludGVyZmFjZVN1YkNs
YXNzICAgICAgMiBWaWRlbyBTdHJlYW1pbmcKICAgICAgYkludGVyZmFjZVByb3RvY29sICAg
ICAgMCAKICAgICAgaUludGVyZmFjZSAgICAgICAgICAgICAgMCAKICAgICAgRW5kcG9pbnQg
RGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA3CiAgICAgICAg
YkRlc2NyaXB0b3JUeXBlICAgICAgICAgNQogICAgICAgIGJFbmRwb2ludEFkZHJlc3MgICAg
IDB4ODEgIEVQIDEgSU4KICAgICAgICBibUF0dHJpYnV0ZXMgICAgICAgICAgICA1CiAgICAg
ICAgICBUcmFuc2ZlciBUeXBlICAgICAgICAgICAgSXNvY2hyb25vdXMKICAgICAgICAgIFN5
bmNoIFR5cGUgICAgICAgICAgICAgICBBc3luY2hyb25vdXMKICAgICAgICAgIFVzYWdlIFR5
cGUgICAgICAgICAgICAgICBEYXRhCiAgICAgICAgd01heFBhY2tldFNpemUgICAgIDB4MDQw
MCAgMXggMTAyNCBieXRlcwogICAgICAgIGJJbnRlcnZhbCAgICAgICAgICAgICAgIDEKICAg
ICAgICBiTWF4QnVyc3QgICAgICAgICAgICAgICA1CiAgICAgICAgTXVsdCAgICAgICAgICAg
ICAgICAgICAgMgogICAgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgIGJMZW5ndGggICAg
ICAgICAgICAgICAgIDkKICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNAogICAgICBi
SW50ZXJmYWNlTnVtYmVyICAgICAgICAxCiAgICAgIGJBbHRlcm5hdGVTZXR0aW5nICAgICAg
MTIKICAgICAgYk51bUVuZHBvaW50cyAgICAgICAgICAgMQogICAgICBiSW50ZXJmYWNlQ2xh
c3MgICAgICAgIDE0IFZpZGVvCiAgICAgIGJJbnRlcmZhY2VTdWJDbGFzcyAgICAgIDIgVmlk
ZW8gU3RyZWFtaW5nCiAgICAgIGJJbnRlcmZhY2VQcm90b2NvbCAgICAgIDAgCiAgICAgIGlJ
bnRlcmZhY2UgICAgICAgICAgICAgIDAgCiAgICAgIEVuZHBvaW50IERlc2NyaXB0b3I6CiAg
ICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgNwogICAgICAgIGJEZXNjcmlwdG9yVHlw
ZSAgICAgICAgIDUKICAgICAgICBiRW5kcG9pbnRBZGRyZXNzICAgICAweDgxICBFUCAxIElO
CiAgICAgICAgYm1BdHRyaWJ1dGVzICAgICAgICAgICAgNQogICAgICAgICAgVHJhbnNmZXIg
VHlwZSAgICAgICAgICAgIElzb2Nocm9ub3VzCiAgICAgICAgICBTeW5jaCBUeXBlICAgICAg
ICAgICAgICAgQXN5bmNocm9ub3VzCiAgICAgICAgICBVc2FnZSBUeXBlICAgICAgICAgICAg
ICAgRGF0YQogICAgICAgIHdNYXhQYWNrZXRTaXplICAgICAweDA0MDAgIDF4IDEwMjQgYnl0
ZXMKICAgICAgICBiSW50ZXJ2YWwgICAgICAgICAgICAgICAxCiAgICAgICAgYk1heEJ1cnN0
ICAgICAgICAgICAgICAgNgogICAgICAgIE11bHQgICAgICAgICAgICAgICAgICAgIDIKICAg
IEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5
CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDQKICAgICAgYkludGVyZmFjZU51bWJl
ciAgICAgICAgMQogICAgICBiQWx0ZXJuYXRlU2V0dGluZyAgICAgIDEzCiAgICAgIGJOdW1F
bmRwb2ludHMgICAgICAgICAgIDEKICAgICAgYkludGVyZmFjZUNsYXNzICAgICAgICAxNCBW
aWRlbwogICAgICBiSW50ZXJmYWNlU3ViQ2xhc3MgICAgICAyIFZpZGVvIFN0cmVhbWluZwog
ICAgICBiSW50ZXJmYWNlUHJvdG9jb2wgICAgICAwIAogICAgICBpSW50ZXJmYWNlICAgICAg
ICAgICAgICAwIAogICAgICBFbmRwb2ludCBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5ndGgg
ICAgICAgICAgICAgICAgIDcKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA1CiAg
ICAgICAgYkVuZHBvaW50QWRkcmVzcyAgICAgMHg4MSAgRVAgMSBJTgogICAgICAgIGJtQXR0
cmlidXRlcyAgICAgICAgICAgIDUKICAgICAgICAgIFRyYW5zZmVyIFR5cGUgICAgICAgICAg
ICBJc29jaHJvbm91cwogICAgICAgICAgU3luY2ggVHlwZSAgICAgICAgICAgICAgIEFzeW5j
aHJvbm91cwogICAgICAgICAgVXNhZ2UgVHlwZSAgICAgICAgICAgICAgIERhdGEKICAgICAg
ICB3TWF4UGFja2V0U2l6ZSAgICAgMHgwNDAwICAxeCAxMDI0IGJ5dGVzCiAgICAgICAgYklu
dGVydmFsICAgICAgICAgICAgICAgMQogICAgICAgIGJNYXhCdXJzdCAgICAgICAgICAgICAg
IDcKICAgICAgICBNdWx0ICAgICAgICAgICAgICAgICAgICAyCiAgICBJbnRlcmZhY2UgRGVz
Y3JpcHRvcjoKICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQogICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICA0CiAgICAgIGJJbnRlcmZhY2VOdW1iZXIgICAgICAgIDEKICAg
ICAgYkFsdGVybmF0ZVNldHRpbmcgICAgICAxNAogICAgICBiTnVtRW5kcG9pbnRzICAgICAg
ICAgICAxCiAgICAgIGJJbnRlcmZhY2VDbGFzcyAgICAgICAgMTQgVmlkZW8KICAgICAgYklu
dGVyZmFjZVN1YkNsYXNzICAgICAgMiBWaWRlbyBTdHJlYW1pbmcKICAgICAgYkludGVyZmFj
ZVByb3RvY29sICAgICAgMCAKICAgICAgaUludGVyZmFjZSAgICAgICAgICAgICAgMCAKICAg
ICAgRW5kcG9pbnQgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAg
ICA3CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNQogICAgICAgIGJFbmRwb2lu
dEFkZHJlc3MgICAgIDB4ODEgIEVQIDEgSU4KICAgICAgICBibUF0dHJpYnV0ZXMgICAgICAg
ICAgICA1CiAgICAgICAgICBUcmFuc2ZlciBUeXBlICAgICAgICAgICAgSXNvY2hyb25vdXMK
ICAgICAgICAgIFN5bmNoIFR5cGUgICAgICAgICAgICAgICBBc3luY2hyb25vdXMKICAgICAg
ICAgIFVzYWdlIFR5cGUgICAgICAgICAgICAgICBEYXRhCiAgICAgICAgd01heFBhY2tldFNp
emUgICAgIDB4MDQwMCAgMXggMTAyNCBieXRlcwogICAgICAgIGJJbnRlcnZhbCAgICAgICAg
ICAgICAgIDEKICAgICAgICBiTWF4QnVyc3QgICAgICAgICAgICAgICA5CiAgICAgICAgTXVs
dCAgICAgICAgICAgICAgICAgICAgMgogICAgSW50ZXJmYWNlIEFzc29jaWF0aW9uOgogICAg
ICBiTGVuZ3RoICAgICAgICAgICAgICAgICA4CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAg
ICAgMTEKICAgICAgYkZpcnN0SW50ZXJmYWNlICAgICAgICAgMgogICAgICBiSW50ZXJmYWNl
Q291bnQgICAgICAgICAyCiAgICAgIGJGdW5jdGlvbkNsYXNzICAgICAgICAgIDEgQXVkaW8K
ICAgICAgYkZ1bmN0aW9uU3ViQ2xhc3MgICAgICAgMiBTdHJlYW1pbmcKICAgICAgYkZ1bmN0
aW9uUHJvdG9jb2wgICAgICAgMCAKICAgICAgaUZ1bmN0aW9uICAgICAgICAgICAgICAgMCAK
ICAgIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICBiTGVuZ3RoICAgICAgICAgICAgICAg
ICA5CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDQKICAgICAgYkludGVyZmFjZU51
bWJlciAgICAgICAgMgogICAgICBiQWx0ZXJuYXRlU2V0dGluZyAgICAgICAwCiAgICAgIGJO
dW1FbmRwb2ludHMgICAgICAgICAgIDAKICAgICAgYkludGVyZmFjZUNsYXNzICAgICAgICAg
MSBBdWRpbwogICAgICBiSW50ZXJmYWNlU3ViQ2xhc3MgICAgICAxIENvbnRyb2wgRGV2aWNl
CiAgICAgIGJJbnRlcmZhY2VQcm90b2NvbCAgICAgIDAgCiAgICAgIGlJbnRlcmZhY2UgICAg
ICAgICAgICAgIDAgCiAgICAgIEF1ZGlvQ29udHJvbCBJbnRlcmZhY2UgRGVzY3JpcHRvcjoK
ICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAgICAgYkRlc2NyaXB0b3JU
eXBlICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgIDEgKEhFQURF
UikKICAgICAgICBiY2RBREMgICAgICAgICAgICAgICAxLjAwCiAgICAgICAgd1RvdGFsTGVu
Z3RoICAgICAgIDB4MDAyNgogICAgICAgIGJJbkNvbGxlY3Rpb24gICAgICAgICAgIDEKICAg
ICAgICBiYUludGVyZmFjZU5yKDApICAgICAgICAzCiAgICAgIEF1ZGlvQ29udHJvbCBJbnRl
cmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgIDEyCiAg
ICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3Vi
dHlwZSAgICAgIDIgKElOUFVUX1RFUk1JTkFMKQogICAgICAgIGJUZXJtaW5hbElEICAgICAg
ICAgICAgIDEKICAgICAgICB3VGVybWluYWxUeXBlICAgICAgMHgwMjAxIE1pY3JvcGhvbmUK
ICAgICAgICBiQXNzb2NUZXJtaW5hbCAgICAgICAgICAwCiAgICAgICAgYk5yQ2hhbm5lbHMg
ICAgICAgICAgICAgMgogICAgICAgIHdDaGFubmVsQ29uZmlnICAgICAweDAwMDMKICAgICAg
ICAgIExlZnQgRnJvbnQgKEwpCiAgICAgICAgICBSaWdodCBGcm9udCAoUikKICAgICAgICBp
Q2hhbm5lbE5hbWVzICAgICAgICAgICAwIAogICAgICAgIGlUZXJtaW5hbCAgICAgICAgICAg
ICAgIDAgCiAgICAgIEF1ZGlvQ29udHJvbCBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAg
ICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAg
ICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgIDMgKE9VVFBVVF9URVJN
SU5BTCkKICAgICAgICBiVGVybWluYWxJRCAgICAgICAgICAgICAzCiAgICAgICAgd1Rlcm1p
bmFsVHlwZSAgICAgIDB4MDEwMSBVU0IgU3RyZWFtaW5nCiAgICAgICAgYkFzc29jVGVybWlu
YWwgICAgICAgICAgMAogICAgICAgIGJTb3VyY2VJRCAgICAgICAgICAgICAgIDUKICAgICAg
ICBpVGVybWluYWwgICAgICAgICAgICAgICAwIAogICAgICBBdWRpb0NvbnRyb2wgSW50ZXJm
YWNlIERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOAogICAg
ICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5
cGUgICAgICA2IChGRUFUVVJFX1VOSVQpCiAgICAgICAgYlVuaXRJRCAgICAgICAgICAgICAg
ICAgNQogICAgICAgIGJTb3VyY2VJRCAgICAgICAgICAgICAgIDEKICAgICAgICBiQ29udHJv
bFNpemUgICAgICAgICAgICAxCiAgICAgICAgYm1hQ29udHJvbHMoMCkgICAgICAgMHgwMwog
ICAgICAgICAgTXV0ZSBDb250cm9sCiAgICAgICAgICBWb2x1bWUgQ29udHJvbAogICAgICAg
IGlGZWF0dXJlICAgICAgICAgICAgICAgIDAgCiAgICBJbnRlcmZhY2UgRGVzY3JpcHRvcjoK
ICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQogICAgICBiRGVzY3JpcHRvclR5cGUg
ICAgICAgICA0CiAgICAgIGJJbnRlcmZhY2VOdW1iZXIgICAgICAgIDMKICAgICAgYkFsdGVy
bmF0ZVNldHRpbmcgICAgICAgMAogICAgICBiTnVtRW5kcG9pbnRzICAgICAgICAgICAwCiAg
ICAgIGJJbnRlcmZhY2VDbGFzcyAgICAgICAgIDEgQXVkaW8KICAgICAgYkludGVyZmFjZVN1
YkNsYXNzICAgICAgMiBTdHJlYW1pbmcKICAgICAgYkludGVyZmFjZVByb3RvY29sICAgICAg
MCAKICAgICAgaUludGVyZmFjZSAgICAgICAgICAgICAgMCAKICAgIEludGVyZmFjZSBEZXNj
cmlwdG9yOgogICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAgIGJEZXNjcmlw
dG9yVHlwZSAgICAgICAgIDQKICAgICAgYkludGVyZmFjZU51bWJlciAgICAgICAgMwogICAg
ICBiQWx0ZXJuYXRlU2V0dGluZyAgICAgICAxCiAgICAgIGJOdW1FbmRwb2ludHMgICAgICAg
ICAgIDEKICAgICAgYkludGVyZmFjZUNsYXNzICAgICAgICAgMSBBdWRpbwogICAgICBiSW50
ZXJmYWNlU3ViQ2xhc3MgICAgICAyIFN0cmVhbWluZwogICAgICBiSW50ZXJmYWNlUHJvdG9j
b2wgICAgICAwIAogICAgICBpSW50ZXJmYWNlICAgICAgICAgICAgICAwIAogICAgICBBdWRp
b1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAg
ICAgICAgICAgICA3CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAzNgogICAgICAg
IGJEZXNjcmlwdG9yU3VidHlwZSAgICAgIDEgKEFTX0dFTkVSQUwpCiAgICAgICAgYlRlcm1p
bmFsTGluayAgICAgICAgICAgMwogICAgICAgIGJEZWxheSAgICAgICAgICAgICAgICAgIDEg
ZnJhbWVzCiAgICAgICAgd0Zvcm1hdFRhZyAgICAgICAgIDB4MDAwMSBQQ00KICAgICAgQXVk
aW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAgICAg
ICAgICAgICAgICAxMQogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgMzYKICAgICAg
ICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAyIChGT1JNQVRfVFlQRSkKICAgICAgICBiRm9y
bWF0VHlwZSAgICAgICAgICAgICAxIChGT1JNQVRfVFlQRV9JKQogICAgICAgIGJOckNoYW5u
ZWxzICAgICAgICAgICAgIDIKICAgICAgICBiU3ViZnJhbWVTaXplICAgICAgICAgICAyCiAg
ICAgICAgYkJpdFJlc29sdXRpb24gICAgICAgICAxNgogICAgICAgIGJTYW1GcmVxVHlwZSAg
ICAgICAgICAgIDEgRGlzY3JldGUKICAgICAgICB0U2FtRnJlcVsgMF0gICAgICAgIDE2MDAw
CiAgICAgIEVuZHBvaW50IERlc2NyaXB0b3I6CiAgICAgICAgYkxlbmd0aCAgICAgICAgICAg
ICAgICAgOQogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDUKICAgICAgICBiRW5k
cG9pbnRBZGRyZXNzICAgICAweDg0ICBFUCA0IElOCiAgICAgICAgYm1BdHRyaWJ1dGVzICAg
ICAgICAgICAgNQogICAgICAgICAgVHJhbnNmZXIgVHlwZSAgICAgICAgICAgIElzb2Nocm9u
b3VzCiAgICAgICAgICBTeW5jaCBUeXBlICAgICAgICAgICAgICAgQXN5bmNocm9ub3VzCiAg
ICAgICAgICBVc2FnZSBUeXBlICAgICAgICAgICAgICAgRGF0YQogICAgICAgIHdNYXhQYWNr
ZXRTaXplICAgICAweDAwNDQgIDF4IDY4IGJ5dGVzCiAgICAgICAgYkludGVydmFsICAgICAg
ICAgICAgICAgNAogICAgICAgIGJSZWZyZXNoICAgICAgICAgICAgICAgIDAKICAgICAgICBi
U3luY2hBZGRyZXNzICAgICAgICAgICAwCiAgICAgICAgYk1heEJ1cnN0ICAgICAgICAgICAg
ICAgMAogICAgICAgIEF1ZGlvU3RyZWFtaW5nIEVuZHBvaW50IERlc2NyaXB0b3I6CiAgICAg
ICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA3CiAgICAgICAgICBiRGVzY3JpcHRvclR5
cGUgICAgICAgIDM3CiAgICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAxIChFUF9H
RU5FUkFMKQogICAgICAgICAgYm1BdHRyaWJ1dGVzICAgICAgICAgMHgwMQogICAgICAgICAg
ICBTYW1wbGluZyBGcmVxdWVuY3kKICAgICAgICAgIGJMb2NrRGVsYXlVbml0cyAgICAgICAg
IDAgVW5kZWZpbmVkCiAgICAgICAgICB3TG9ja0RlbGF5ICAgICAgICAgMHgwMDAwCiAgICBJ
bnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQog
ICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA0CiAgICAgIGJJbnRlcmZhY2VOdW1iZXIg
ICAgICAgIDMKICAgICAgYkFsdGVybmF0ZVNldHRpbmcgICAgICAgMgogICAgICBiTnVtRW5k
cG9pbnRzICAgICAgICAgICAxCiAgICAgIGJJbnRlcmZhY2VDbGFzcyAgICAgICAgIDEgQXVk
aW8KICAgICAgYkludGVyZmFjZVN1YkNsYXNzICAgICAgMiBTdHJlYW1pbmcKICAgICAgYklu
dGVyZmFjZVByb3RvY29sICAgICAgMCAKICAgICAgaUludGVyZmFjZSAgICAgICAgICAgICAg
MCAKICAgICAgQXVkaW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgICAg
Ykxlbmd0aCAgICAgICAgICAgICAgICAgNwogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAg
ICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAxIChBU19HRU5FUkFMKQog
ICAgICAgIGJUZXJtaW5hbExpbmsgICAgICAgICAgIDMKICAgICAgICBiRGVsYXkgICAgICAg
ICAgICAgICAgICAxIGZyYW1lcwogICAgICAgIHdGb3JtYXRUYWcgICAgICAgICAweDAwMDEg
UENNCiAgICAgIEF1ZGlvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgMTEKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAg
ICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JTdWJ0eXBlICAgICAgMiAoRk9STUFUX1RZUEUp
CiAgICAgICAgYkZvcm1hdFR5cGUgICAgICAgICAgICAgMSAoRk9STUFUX1RZUEVfSSkKICAg
ICAgICBiTnJDaGFubmVscyAgICAgICAgICAgICAyCiAgICAgICAgYlN1YmZyYW1lU2l6ZSAg
ICAgICAgICAgMgogICAgICAgIGJCaXRSZXNvbHV0aW9uICAgICAgICAgMTYKICAgICAgICBi
U2FtRnJlcVR5cGUgICAgICAgICAgICAxIERpc2NyZXRlCiAgICAgICAgdFNhbUZyZXFbIDBd
ICAgICAgICAyNDAwMAogICAgICBFbmRwb2ludCBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5n
dGggICAgICAgICAgICAgICAgIDkKICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgICA1
CiAgICAgICAgYkVuZHBvaW50QWRkcmVzcyAgICAgMHg4NCAgRVAgNCBJTgogICAgICAgIGJt
QXR0cmlidXRlcyAgICAgICAgICAgIDUKICAgICAgICAgIFRyYW5zZmVyIFR5cGUgICAgICAg
ICAgICBJc29jaHJvbm91cwogICAgICAgICAgU3luY2ggVHlwZSAgICAgICAgICAgICAgIEFz
eW5jaHJvbm91cwogICAgICAgICAgVXNhZ2UgVHlwZSAgICAgICAgICAgICAgIERhdGEKICAg
ICAgICB3TWF4UGFja2V0U2l6ZSAgICAgMHgwMDY0ICAxeCAxMDAgYnl0ZXMKICAgICAgICBi
SW50ZXJ2YWwgICAgICAgICAgICAgICA0CiAgICAgICAgYlJlZnJlc2ggICAgICAgICAgICAg
ICAgMAogICAgICAgIGJTeW5jaEFkZHJlc3MgICAgICAgICAgIDAKICAgICAgICBiTWF4QnVy
c3QgICAgICAgICAgICAgICAwCiAgICAgICAgQXVkaW9TdHJlYW1pbmcgRW5kcG9pbnQgRGVz
Y3JpcHRvcjoKICAgICAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDcKICAgICAgICAg
IGJEZXNjcmlwdG9yVHlwZSAgICAgICAgMzcKICAgICAgICAgIGJEZXNjcmlwdG9yU3VidHlw
ZSAgICAgIDEgKEVQX0dFTkVSQUwpCiAgICAgICAgICBibUF0dHJpYnV0ZXMgICAgICAgICAw
eDAxCiAgICAgICAgICAgIFNhbXBsaW5nIEZyZXF1ZW5jeQogICAgICAgICAgYkxvY2tEZWxh
eVVuaXRzICAgICAgICAgMCBVbmRlZmluZWQKICAgICAgICAgIHdMb2NrRGVsYXkgICAgICAg
ICAweDAwMDAKICAgIEludGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICBiTGVuZ3RoICAgICAg
ICAgICAgICAgICA5CiAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAgICAgIDQKICAgICAgYklu
dGVyZmFjZU51bWJlciAgICAgICAgMwogICAgICBiQWx0ZXJuYXRlU2V0dGluZyAgICAgICAz
CiAgICAgIGJOdW1FbmRwb2ludHMgICAgICAgICAgIDEKICAgICAgYkludGVyZmFjZUNsYXNz
ICAgICAgICAgMSBBdWRpbwogICAgICBiSW50ZXJmYWNlU3ViQ2xhc3MgICAgICAyIFN0cmVh
bWluZwogICAgICBiSW50ZXJmYWNlUHJvdG9jb2wgICAgICAwIAogICAgICBpSW50ZXJmYWNl
ICAgICAgICAgICAgICAwIAogICAgICBBdWRpb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3Jp
cHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA3CiAgICAgICAgYkRlc2Ny
aXB0b3JUeXBlICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9yU3VidHlwZSAgICAgIDEg
KEFTX0dFTkVSQUwpCiAgICAgICAgYlRlcm1pbmFsTGluayAgICAgICAgICAgMwogICAgICAg
IGJEZWxheSAgICAgICAgICAgICAgICAgIDEgZnJhbWVzCiAgICAgICAgd0Zvcm1hdFRhZyAg
ICAgICAgIDB4MDAwMSBQQ00KICAgICAgQXVkaW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2Ny
aXB0b3I6CiAgICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAxMQogICAgICAgIGJEZXNj
cmlwdG9yVHlwZSAgICAgICAgMzYKICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAy
IChGT1JNQVRfVFlQRSkKICAgICAgICBiRm9ybWF0VHlwZSAgICAgICAgICAgICAxIChGT1JN
QVRfVFlQRV9JKQogICAgICAgIGJOckNoYW5uZWxzICAgICAgICAgICAgIDIKICAgICAgICBi
U3ViZnJhbWVTaXplICAgICAgICAgICAyCiAgICAgICAgYkJpdFJlc29sdXRpb24gICAgICAg
ICAxNgogICAgICAgIGJTYW1GcmVxVHlwZSAgICAgICAgICAgIDEgRGlzY3JldGUKICAgICAg
ICB0U2FtRnJlcVsgMF0gICAgICAgIDMyMDAwCiAgICAgIEVuZHBvaW50IERlc2NyaXB0b3I6
CiAgICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQogICAgICAgIGJEZXNjcmlwdG9y
VHlwZSAgICAgICAgIDUKICAgICAgICBiRW5kcG9pbnRBZGRyZXNzICAgICAweDg0ICBFUCA0
IElOCiAgICAgICAgYm1BdHRyaWJ1dGVzICAgICAgICAgICAgNQogICAgICAgICAgVHJhbnNm
ZXIgVHlwZSAgICAgICAgICAgIElzb2Nocm9ub3VzCiAgICAgICAgICBTeW5jaCBUeXBlICAg
ICAgICAgICAgICAgQXN5bmNocm9ub3VzCiAgICAgICAgICBVc2FnZSBUeXBlICAgICAgICAg
ICAgICAgRGF0YQogICAgICAgIHdNYXhQYWNrZXRTaXplICAgICAweDAwODQgIDF4IDEzMiBi
eXRlcwogICAgICAgIGJJbnRlcnZhbCAgICAgICAgICAgICAgIDQKICAgICAgICBiUmVmcmVz
aCAgICAgICAgICAgICAgICAwCiAgICAgICAgYlN5bmNoQWRkcmVzcyAgICAgICAgICAgMAog
ICAgICAgIGJNYXhCdXJzdCAgICAgICAgICAgICAgIDAKICAgICAgICBBdWRpb1N0cmVhbWlu
ZyBFbmRwb2ludCBEZXNjcmlwdG9yOgogICAgICAgICAgYkxlbmd0aCAgICAgICAgICAgICAg
ICAgNwogICAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAzNwogICAgICAgICAgYkRl
c2NyaXB0b3JTdWJ0eXBlICAgICAgMSAoRVBfR0VORVJBTCkKICAgICAgICAgIGJtQXR0cmli
dXRlcyAgICAgICAgIDB4MDEKICAgICAgICAgICAgU2FtcGxpbmcgRnJlcXVlbmN5CiAgICAg
ICAgICBiTG9ja0RlbGF5VW5pdHMgICAgICAgICAwIFVuZGVmaW5lZAogICAgICAgICAgd0xv
Y2tEZWxheSAgICAgICAgIDB4MDAwMAogICAgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAg
IGJMZW5ndGggICAgICAgICAgICAgICAgIDkKICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAg
ICAgNAogICAgICBiSW50ZXJmYWNlTnVtYmVyICAgICAgICAzCiAgICAgIGJBbHRlcm5hdGVT
ZXR0aW5nICAgICAgIDQKICAgICAgYk51bUVuZHBvaW50cyAgICAgICAgICAgMQogICAgICBi
SW50ZXJmYWNlQ2xhc3MgICAgICAgICAxIEF1ZGlvCiAgICAgIGJJbnRlcmZhY2VTdWJDbGFz
cyAgICAgIDIgU3RyZWFtaW5nCiAgICAgIGJJbnRlcmZhY2VQcm90b2NvbCAgICAgIDAgCiAg
ICAgIGlJbnRlcmZhY2UgICAgICAgICAgICAgIDAgCiAgICAgIEF1ZGlvU3RyZWFtaW5nIElu
dGVyZmFjZSBEZXNjcmlwdG9yOgogICAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDcK
ICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgIDM2CiAgICAgICAgYkRlc2NyaXB0b3JT
dWJ0eXBlICAgICAgMSAoQVNfR0VORVJBTCkKICAgICAgICBiVGVybWluYWxMaW5rICAgICAg
ICAgICAzCiAgICAgICAgYkRlbGF5ICAgICAgICAgICAgICAgICAgMSBmcmFtZXMKICAgICAg
ICB3Rm9ybWF0VGFnICAgICAgICAgMHgwMDAxIFBDTQogICAgICBBdWRpb1N0cmVhbWluZyBJ
bnRlcmZhY2UgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgIDEx
CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAzNgogICAgICAgIGJEZXNjcmlwdG9y
U3VidHlwZSAgICAgIDIgKEZPUk1BVF9UWVBFKQogICAgICAgIGJGb3JtYXRUeXBlICAgICAg
ICAgICAgIDEgKEZPUk1BVF9UWVBFX0kpCiAgICAgICAgYk5yQ2hhbm5lbHMgICAgICAgICAg
ICAgMgogICAgICAgIGJTdWJmcmFtZVNpemUgICAgICAgICAgIDIKICAgICAgICBiQml0UmVz
b2x1dGlvbiAgICAgICAgIDE2CiAgICAgICAgYlNhbUZyZXFUeXBlICAgICAgICAgICAgMSBE
aXNjcmV0ZQogICAgICAgIHRTYW1GcmVxWyAwXSAgICAgICAgNDgwMDAKICAgICAgRW5kcG9p
bnQgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAg
ICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNQogICAgICAgIGJFbmRwb2ludEFkZHJlc3Mg
ICAgIDB4ODQgIEVQIDQgSU4KICAgICAgICBibUF0dHJpYnV0ZXMgICAgICAgICAgICA1CiAg
ICAgICAgICBUcmFuc2ZlciBUeXBlICAgICAgICAgICAgSXNvY2hyb25vdXMKICAgICAgICAg
IFN5bmNoIFR5cGUgICAgICAgICAgICAgICBBc3luY2hyb25vdXMKICAgICAgICAgIFVzYWdl
IFR5cGUgICAgICAgICAgICAgICBEYXRhCiAgICAgICAgd01heFBhY2tldFNpemUgICAgIDB4
MDBjNCAgMXggMTk2IGJ5dGVzCiAgICAgICAgYkludGVydmFsICAgICAgICAgICAgICAgNAog
ICAgICAgIGJSZWZyZXNoICAgICAgICAgICAgICAgIDAKICAgICAgICBiU3luY2hBZGRyZXNz
ICAgICAgICAgICAwCiAgICAgICAgYk1heEJ1cnN0ICAgICAgICAgICAgICAgMAogICAgICAg
IEF1ZGlvU3RyZWFtaW5nIEVuZHBvaW50IERlc2NyaXB0b3I6CiAgICAgICAgICBiTGVuZ3Ro
ICAgICAgICAgICAgICAgICA3CiAgICAgICAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgIDM3
CiAgICAgICAgICBiRGVzY3JpcHRvclN1YnR5cGUgICAgICAxIChFUF9HRU5FUkFMKQogICAg
ICAgICAgYm1BdHRyaWJ1dGVzICAgICAgICAgMHgwMQogICAgICAgICAgICBTYW1wbGluZyBG
cmVxdWVuY3kKICAgICAgICAgIGJMb2NrRGVsYXlVbml0cyAgICAgICAgIDAgVW5kZWZpbmVk
CiAgICAgICAgICB3TG9ja0RlbGF5ICAgICAgICAgMHgwMDAwCiAgICBJbnRlcmZhY2UgRGVz
Y3JpcHRvcjoKICAgICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgOQogICAgICBiRGVzY3Jp
cHRvclR5cGUgICAgICAgICA0CiAgICAgIGJJbnRlcmZhY2VOdW1iZXIgICAgICAgIDQKICAg
ICAgYkFsdGVybmF0ZVNldHRpbmcgICAgICAgMAogICAgICBiTnVtRW5kcG9pbnRzICAgICAg
ICAgICAxCiAgICAgIGJJbnRlcmZhY2VDbGFzcyAgICAgICAyNTUgVmVuZG9yIFNwZWNpZmlj
IENsYXNzCiAgICAgIGJJbnRlcmZhY2VTdWJDbGFzcyAgICAyNTUgVmVuZG9yIFNwZWNpZmlj
IFN1YmNsYXNzCiAgICAgIGJJbnRlcmZhY2VQcm90b2NvbCAgICAgIDAgCiAgICAgIGlJbnRl
cmZhY2UgICAgICAgICAgICAgIDAgCiAgICAgIEVuZHBvaW50IERlc2NyaXB0b3I6CiAgICAg
ICAgYkxlbmd0aCAgICAgICAgICAgICAgICAgNwogICAgICAgIGJEZXNjcmlwdG9yVHlwZSAg
ICAgICAgIDUKICAgICAgICBiRW5kcG9pbnRBZGRyZXNzICAgICAweDgzICBFUCAzIElOCiAg
ICAgICAgYm1BdHRyaWJ1dGVzICAgICAgICAgICAgMgogICAgICAgICAgVHJhbnNmZXIgVHlw
ZSAgICAgICAgICAgIEJ1bGsKICAgICAgICAgIFN5bmNoIFR5cGUgICAgICAgICAgICAgICBO
b25lCiAgICAgICAgICBVc2FnZSBUeXBlICAgICAgICAgICAgICAgRGF0YQogICAgICAgIHdN
YXhQYWNrZXRTaXplICAgICAweDA0MDAgIDF4IDEwMjQgYnl0ZXMKICAgICAgICBiSW50ZXJ2
YWwgICAgICAgICAgICAgICAwCiAgICAgICAgYk1heEJ1cnN0ICAgICAgICAgICAgICAgMAog
ICAgSW50ZXJmYWNlIERlc2NyaXB0b3I6CiAgICAgIGJMZW5ndGggICAgICAgICAgICAgICAg
IDkKICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNAogICAgICBiSW50ZXJmYWNlTnVt
YmVyICAgICAgICA1CiAgICAgIGJBbHRlcm5hdGVTZXR0aW5nICAgICAgIDAKICAgICAgYk51
bUVuZHBvaW50cyAgICAgICAgICAgMQogICAgICBiSW50ZXJmYWNlQ2xhc3MgICAgICAgICAz
IEh1bWFuIEludGVyZmFjZSBEZXZpY2UKICAgICAgYkludGVyZmFjZVN1YkNsYXNzICAgICAg
MCAKICAgICAgYkludGVyZmFjZVByb3RvY29sICAgICAgMCAKICAgICAgaUludGVyZmFjZSAg
ICAgICAgICAgICAgMCAKICAgICAgICBISUQgRGV2aWNlIERlc2NyaXB0b3I6CiAgICAgICAg
ICBiTGVuZ3RoICAgICAgICAgICAgICAgICA5CiAgICAgICAgICBiRGVzY3JpcHRvclR5cGUg
ICAgICAgIDMzCiAgICAgICAgICBiY2RISUQgICAgICAgICAgICAgICAxLjExCiAgICAgICAg
ICBiQ291bnRyeUNvZGUgICAgICAgICAgICAwIE5vdCBzdXBwb3J0ZWQKICAgICAgICAgIGJO
dW1EZXNjcmlwdG9ycyAgICAgICAgIDEKICAgICAgICAgIGJEZXNjcmlwdG9yVHlwZSAgICAg
ICAgMzQgUmVwb3J0CiAgICAgICAgICB3RGVzY3JpcHRvckxlbmd0aCAgICAgMTA4CiAgICAg
ICAgIFJlcG9ydCBEZXNjcmlwdG9yczogCiAgICAgICAgICAgKiogVU5BVkFJTEFCTEUgKioK
ICAgICAgRW5kcG9pbnQgRGVzY3JpcHRvcjoKICAgICAgICBiTGVuZ3RoICAgICAgICAgICAg
ICAgICA3CiAgICAgICAgYkRlc2NyaXB0b3JUeXBlICAgICAgICAgNQogICAgICAgIGJFbmRw
b2ludEFkZHJlc3MgICAgIDB4ODcgIEVQIDcgSU4KICAgICAgICBibUF0dHJpYnV0ZXMgICAg
ICAgICAgICAzCiAgICAgICAgICBUcmFuc2ZlciBUeXBlICAgICAgICAgICAgSW50ZXJydXB0
CiAgICAgICAgICBTeW5jaCBUeXBlICAgICAgICAgICAgICAgTm9uZQogICAgICAgICAgVXNh
Z2UgVHlwZSAgICAgICAgICAgICAgIERhdGEKICAgICAgICB3TWF4UGFja2V0U2l6ZSAgICAg
MHgwMDAyICAxeCAyIGJ5dGVzCiAgICAgICAgYkludGVydmFsICAgICAgICAgICAgICAgNgog
ICAgICAgIGJNYXhCdXJzdCAgICAgICAgICAgICAgIDAKQmluYXJ5IE9iamVjdCBTdG9yZSBE
ZXNjcmlwdG9yOgogIGJMZW5ndGggICAgICAgICAgICAgICAgIDUKICBiRGVzY3JpcHRvclR5
cGUgICAgICAgIDE1CiAgd1RvdGFsTGVuZ3RoICAgICAgIDB4MDAxNgogIGJOdW1EZXZpY2VD
YXBzICAgICAgICAgIDIKICBVU0IgMi4wIEV4dGVuc2lvbiBEZXZpY2UgQ2FwYWJpbGl0eToK
ICAgIGJMZW5ndGggICAgICAgICAgICAgICAgIDcKICAgIGJEZXNjcmlwdG9yVHlwZSAgICAg
ICAgMTYKICAgIGJEZXZDYXBhYmlsaXR5VHlwZSAgICAgIDIKICAgIGJtQXR0cmlidXRlcyAg
IDB4MDAwMDAwMDIKICAgICAgSElSRCBMaW5rIFBvd2VyIE1hbmFnZW1lbnQgKExQTSkgU3Vw
cG9ydGVkCiAgU3VwZXJTcGVlZCBVU0IgRGV2aWNlIENhcGFiaWxpdHk6CiAgICBiTGVuZ3Ro
ICAgICAgICAgICAgICAgIDEwCiAgICBiRGVzY3JpcHRvclR5cGUgICAgICAgIDE2CiAgICBi
RGV2Q2FwYWJpbGl0eVR5cGUgICAgICAzCiAgICBibUF0dHJpYnV0ZXMgICAgICAgICAweDAw
CiAgICB3U3BlZWRzU3VwcG9ydGVkICAgMHgwMDBlCiAgICAgIERldmljZSBjYW4gb3BlcmF0
ZSBhdCBGdWxsIFNwZWVkICgxMk1icHMpCiAgICAgIERldmljZSBjYW4gb3BlcmF0ZSBhdCBI
aWdoIFNwZWVkICg0ODBNYnBzKQogICAgICBEZXZpY2UgY2FuIG9wZXJhdGUgYXQgU3VwZXJT
cGVlZCAoNUdicHMpCiAgICBiRnVuY3Rpb25hbGl0eVN1cHBvcnQgICAyCiAgICAgIExvd2Vz
dCBmdWxseS1mdW5jdGlvbmFsIGRldmljZSBzcGVlZCBpcyBIaWdoIFNwZWVkICg0ODBNYnBz
KQogICAgYlUxRGV2RXhpdExhdCAgICAgICAgICAxMCBtaWNybyBzZWNvbmRzCiAgICBiVTJE
ZXZFeGl0TGF0ICAgICAgICAgMjU2IG1pY3JvIHNlY29uZHMKRGV2aWNlIFN0YXR1czogICAg
IDB4MDAwMAogIChCdXMgUG93ZXJlZCkKCg==
--------------397391A4D6C1CF314471C0F2
Content-Type: text/plain; charset=UTF-8;
 name="streamcamformats0.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="streamcamformats0.txt"

aW9jdGw6IFZJRElPQ19FTlVNX0ZNVAoJVHlwZTogVmlkZW8gQ2FwdHVyZQoKCVswXTogJ1lV
WVYnIChZVVlWIDQ6MjoyKQoJWzFdOiAnTUpQRycgKE1vdGlvbi1KUEVHLCBjb21wcmVzc2Vk
KQoJWzJdOiAnTlYxMicgKFkvQ2JDciA0OjI6MCkK
--------------397391A4D6C1CF314471C0F2
Content-Type: text/plain; charset=UTF-8;
 name="streamcamformats1.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="streamcamformats1.txt"

aW9jdGw6IFZJRElPQ19FTlVNX0ZNVAoJVHlwZTogVmlkZW8gQ2FwdHVyZQoKCVswXTogJ1lV
WVYnIChZVVlWIDQ6MjoyKQoJCVNpemU6IERpc2NyZXRlIDY0MHg0ODAKCQkJSW50ZXJ2YWw6
IERpc2NyZXRlIDAuMDMzcyAoMzAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAu
MDQycyAoMjQuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAw
IGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDY3cyAoMTUuMDAwIGZwcykKCQkJSW50
ZXJ2YWw6IERpc2NyZXRlIDAuMTAwcyAoMTAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2Ny
ZXRlIDAuMTMzcyAoNy41MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4yMDBzICg1
LjAwMCBmcHMpCgkJU2l6ZTogRGlzY3JldGUgMTc2eDE0NAoJCQlJbnRlcnZhbDogRGlzY3Jl
dGUgMC4wMzNzICgzMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgy
NC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJ
CQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDog
RGlzY3JldGUgMC4xMDBzICgxMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4x
MzNzICg3LjUwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZw
cykKCQlTaXplOiBEaXNjcmV0ZSAzMjB4MjQwCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjAz
M3MgKDMwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA0MnMgKDI0LjAwMCBm
cHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA1MHMgKDIwLjAwMCBmcHMpCgkJCUludGVy
dmFsOiBEaXNjcmV0ZSAwLjA2N3MgKDE1LjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0
ZSAwLjEwMHMgKDEwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjEzM3MgKDcu
NTAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMjAwcyAoNS4wMDAgZnBzKQoJCVNp
emU6IERpc2NyZXRlIDQyNHgyNDAKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDMzcyAoMzAu
MDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDQycyAoMjQuMDAwIGZwcykKCQkJ
SW50ZXJ2YWw6IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERp
c2NyZXRlIDAuMDY3cyAoMTUuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTAw
cyAoMTAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTMzcyAoNy41MDAgZnBz
KQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4yMDBzICg1LjAwMCBmcHMpCgkJU2l6ZTogRGlz
Y3JldGUgNjQweDM2MAoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMzNzICgzMC4wMDAgZnBz
KQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgyNC4wMDAgZnBzKQoJCQlJbnRlcnZh
bDogRGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUg
MC4wNjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMDBzICgxMC4w
MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMzNzICg3LjUwMCBmcHMpCgkJCUlu
dGVydmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZwcykKCQlTaXplOiBEaXNjcmV0ZSA4
NDh4NDgwCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjAzM3MgKDMwLjAwMCBmcHMpCgkJCUlu
dGVydmFsOiBEaXNjcmV0ZSAwLjA0MnMgKDI0LjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNj
cmV0ZSAwLjA1MHMgKDIwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA2N3Mg
KDE1LjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjEwMHMgKDEwLjAwMCBmcHMp
CgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjEzM3MgKDcuNTAwIGZwcykKCQkJSW50ZXJ2YWw6
IERpc2NyZXRlIDAuMjAwcyAoNS4wMDAgZnBzKQoJCVNpemU6IERpc2NyZXRlIDk2MHg1NDAK
CQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDMzcyAoMzAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6
IERpc2NyZXRlIDAuMDQycyAoMjQuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAu
MDUwcyAoMjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDY3cyAoMTUuMDAw
IGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTAwcyAoMTAuMDAwIGZwcykKCQkJSW50
ZXJ2YWw6IERpc2NyZXRlIDAuMTMzcyAoNy41MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3Jl
dGUgMC4yMDBzICg1LjAwMCBmcHMpCgkJU2l6ZTogRGlzY3JldGUgMTI4MHg3MjAKCQkJSW50
ZXJ2YWw6IERpc2NyZXRlIDAuMDMzcyAoMzAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2Ny
ZXRlIDAuMDQycyAoMjQuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDUwcyAo
MjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDY3cyAoMTUuMDAwIGZwcykK
CQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTAwcyAoMTAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6
IERpc2NyZXRlIDAuMTMzcyAoNy41MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4y
MDBzICg1LjAwMCBmcHMpCgkJU2l6ZTogRGlzY3JldGUgMTYwMHg4OTYKCQkJSW50ZXJ2YWw6
IERpc2NyZXRlIDAuMDMzcyAoMzAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAu
MDQycyAoMjQuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAw
IGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDY3cyAoMTUuMDAwIGZwcykKCQkJSW50
ZXJ2YWw6IERpc2NyZXRlIDAuMTAwcyAoMTAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2Ny
ZXRlIDAuMTMzcyAoNy41MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4yMDBzICg1
LjAwMCBmcHMpCgkJU2l6ZTogRGlzY3JldGUgMTkyMHgxMDgwCgkJCUludGVydmFsOiBEaXNj
cmV0ZSAwLjAzM3MgKDMwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA0MnMg
KDI0LjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA1MHMgKDIwLjAwMCBmcHMp
CgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA2N3MgKDE1LjAwMCBmcHMpCgkJCUludGVydmFs
OiBEaXNjcmV0ZSAwLjEwMHMgKDEwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAw
LjEzM3MgKDcuNTAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMjAwcyAoNS4wMDAg
ZnBzKQoJCVNpemU6IERpc2NyZXRlIDIzMDR4MTI5NgoJCQlJbnRlcnZhbDogRGlzY3JldGUg
MC4yMDBzICg1LjAwMCBmcHMpCglbMV06ICdNSlBHJyAoTW90aW9uLUpQRUcsIGNvbXByZXNz
ZWQpCgkJU2l6ZTogRGlzY3JldGUgNjQweDQ4MAoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4w
MTdzICg2MC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMzNzICgzMC4wMDAg
ZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgyNC4wMDAgZnBzKQoJCQlJbnRl
cnZhbDogRGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3Jl
dGUgMC4wNjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMDBzICgx
MC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMzNzICg3LjUwMCBmcHMpCgkJ
CUludGVydmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZwcykKCQlTaXplOiBEaXNjcmV0
ZSAxNzZ4MTQ0CgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjAxN3MgKDYwLjAwMCBmcHMpCgkJ
CUludGVydmFsOiBEaXNjcmV0ZSAwLjAzM3MgKDMwLjAwMCBmcHMpCgkJCUludGVydmFsOiBE
aXNjcmV0ZSAwLjA0MnMgKDI0LjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA1
MHMgKDIwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA2N3MgKDE1LjAwMCBm
cHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjEwMHMgKDEwLjAwMCBmcHMpCgkJCUludGVy
dmFsOiBEaXNjcmV0ZSAwLjEzM3MgKDcuNTAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRl
IDAuMjAwcyAoNS4wMDAgZnBzKQoJCVNpemU6IERpc2NyZXRlIDMyMHgyNDAKCQkJSW50ZXJ2
YWw6IERpc2NyZXRlIDAuMDE3cyAoNjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRl
IDAuMDMzcyAoMzAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDQycyAoMjQu
MDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAwIGZwcykKCQkJ
SW50ZXJ2YWw6IERpc2NyZXRlIDAuMDY3cyAoMTUuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERp
c2NyZXRlIDAuMTAwcyAoMTAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTMz
cyAoNy41MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4yMDBzICg1LjAwMCBmcHMp
CgkJU2l6ZTogRGlzY3JldGUgNDI0eDI0MAoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMTdz
ICg2MC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMzNzICgzMC4wMDAgZnBz
KQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgyNC4wMDAgZnBzKQoJCQlJbnRlcnZh
bDogRGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUg
MC4wNjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMDBzICgxMC4w
MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMzNzICg3LjUwMCBmcHMpCgkJCUlu
dGVydmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZwcykKCQlTaXplOiBEaXNjcmV0ZSA2
NDB4MzYwCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjAxN3MgKDYwLjAwMCBmcHMpCgkJCUlu
dGVydmFsOiBEaXNjcmV0ZSAwLjAzM3MgKDMwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNj
cmV0ZSAwLjA0MnMgKDI0LjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA1MHMg
KDIwLjAwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjA2N3MgKDE1LjAwMCBmcHMp
CgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjEwMHMgKDEwLjAwMCBmcHMpCgkJCUludGVydmFs
OiBEaXNjcmV0ZSAwLjEzM3MgKDcuNTAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAu
MjAwcyAoNS4wMDAgZnBzKQoJCVNpemU6IERpc2NyZXRlIDg0OHg0ODAKCQkJSW50ZXJ2YWw6
IERpc2NyZXRlIDAuMDE3cyAoNjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAu
MDMzcyAoMzAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDQycyAoMjQuMDAw
IGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAwIGZwcykKCQkJSW50
ZXJ2YWw6IERpc2NyZXRlIDAuMDY3cyAoMTUuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2Ny
ZXRlIDAuMTAwcyAoMTAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTMzcyAo
Ny41MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4yMDBzICg1LjAwMCBmcHMpCgkJ
U2l6ZTogRGlzY3JldGUgOTYweDU0MAoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMTdzICg2
MC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMzNzICgzMC4wMDAgZnBzKQoJ
CQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgyNC4wMDAgZnBzKQoJCQlJbnRlcnZhbDog
RGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4w
NjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMDBzICgxMC4wMDAg
ZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMzNzICg3LjUwMCBmcHMpCgkJCUludGVy
dmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZwcykKCQlTaXplOiBEaXNjcmV0ZSAxMjgw
eDcyMAoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMTdzICg2MC4wMDAgZnBzKQoJCQlJbnRl
cnZhbDogRGlzY3JldGUgMC4wMzNzICgzMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3Jl
dGUgMC4wNDJzICgyNC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNTBzICgy
MC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNjdzICgxNS4wMDAgZnBzKQoJ
CQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMDBzICgxMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDog
RGlzY3JldGUgMC4xMzNzICg3LjUwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjIw
MHMgKDUuMDAwIGZwcykKCQlTaXplOiBEaXNjcmV0ZSAxNjAweDg5NgoJCQlJbnRlcnZhbDog
RGlzY3JldGUgMC4wMTdzICg2MC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4w
MzNzICgzMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgyNC4wMDAg
ZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJCQlJbnRl
cnZhbDogRGlzY3JldGUgMC4wNjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3Jl
dGUgMC4xMDBzICgxMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMzNzICg3
LjUwMCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZwcykKCQlT
aXplOiBEaXNjcmV0ZSAxOTIweDEwODAKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDE3cyAo
NjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDMzcyAoMzAuMDAwIGZwcykK
CQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDQycyAoMjQuMDAwIGZwcykKCQkJSW50ZXJ2YWw6
IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAu
MDY3cyAoMTUuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTAwcyAoMTAuMDAw
IGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTMzcyAoNy41MDAgZnBzKQoJCQlJbnRl
cnZhbDogRGlzY3JldGUgMC4yMDBzICg1LjAwMCBmcHMpCglbMl06ICdOVjEyJyAoWS9DYkNy
IDQ6MjowKQoJCVNpemU6IERpc2NyZXRlIDY0MHg0ODAKCQkJSW50ZXJ2YWw6IERpc2NyZXRl
IDAuMDMzcyAoMzAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDQycyAoMjQu
MDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAwIGZwcykKCQkJ
SW50ZXJ2YWw6IERpc2NyZXRlIDAuMDY3cyAoMTUuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERp
c2NyZXRlIDAuMTAwcyAoMTAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTMz
cyAoNy41MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4yMDBzICg1LjAwMCBmcHMp
CgkJU2l6ZTogRGlzY3JldGUgNjQweDM2MAoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMzNz
ICgzMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgyNC4wMDAgZnBz
KQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJCQlJbnRlcnZh
bDogRGlzY3JldGUgMC4wNjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUg
MC4xMDBzICgxMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMzNzICg3LjUw
MCBmcHMpCgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZwcykKCQlTaXpl
OiBEaXNjcmV0ZSAxMjgweDcyMAoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wMzNzICgzMC4w
MDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4wNDJzICgyNC4wMDAgZnBzKQoJCQlJ
bnRlcnZhbDogRGlzY3JldGUgMC4wNTBzICgyMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlz
Y3JldGUgMC4wNjdzICgxNS4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMDBz
ICgxMC4wMDAgZnBzKQoJCQlJbnRlcnZhbDogRGlzY3JldGUgMC4xMzNzICg3LjUwMCBmcHMp
CgkJCUludGVydmFsOiBEaXNjcmV0ZSAwLjIwMHMgKDUuMDAwIGZwcykKCQlTaXplOiBEaXNj
cmV0ZSAxOTIweDEwODAKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDMzcyAoMzAuMDAwIGZw
cykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMDQycyAoMjQuMDAwIGZwcykKCQkJSW50ZXJ2
YWw6IERpc2NyZXRlIDAuMDUwcyAoMjAuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRl
IDAuMDY3cyAoMTUuMDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTAwcyAoMTAu
MDAwIGZwcykKCQkJSW50ZXJ2YWw6IERpc2NyZXRlIDAuMTMzcyAoNy41MDAgZnBzKQoJCQlJ
bnRlcnZhbDogRGlzY3JldGUgMC4yMDBzICg1LjAwMCBmcHMpCg==
--------------397391A4D6C1CF314471C0F2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------397391A4D6C1CF314471C0F2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--------------397391A4D6C1CF314471C0F2--

