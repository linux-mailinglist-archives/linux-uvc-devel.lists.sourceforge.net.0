Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C1B6A5247
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 28 Feb 2023 05:17:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1pWrPb-000871-63;
	Tue, 28 Feb 2023 04:16:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <laser@HammerVE.com>) id 1pWrPZ-00086v-Qf
 for linux-uvc-devel@lists.sourceforge.net;
 Tue, 28 Feb 2023 04:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:From:To:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SJBQ9YBGb5Xd4JC4/kOLyXWshlP/PMOmN51MiDy3JAQ=; b=EXPV3LuGgWqEN8tZa+BO8wtI0c
 q2USMNB/opgynJ3JnZ3bg7HItA+5ugeGbcExzOz30umQFEqbBCeECTrW4w6daprvizYC7mdPLvqLp
 b9SHR/y7tcjfBEow2xM/6hEBrkb8b7Ng9+sOCfUROvQevzFIOBPeoom8+Cwn7ofwPt5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:From:To:MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SJBQ9YBGb5Xd4JC4/kOLyXWshlP/PMOmN51MiDy3JAQ=; b=R
 1njh7kAqux+/D3y7VfKzbipzQBvY0h74f3eFBnKxLJG8wk07gt8w5zId+vIGP/m6++AqWXkY7FZ66
 AwJmJY/2WmohMkvpuVQad/LguoRx6LrN60EOtJSjEg++fJjvvWoS9Vs/98P/wnXQMVkqx2YRyWI5H
 V9hziPUCmnbDgzfU=;
Received: from [162.241.192.237] (helo=server.hammerve.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pWrPW-0008Bs-FU for linux-uvc-devel@lists.sourceforge.net;
 Tue, 28 Feb 2023 04:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=hammerve.com; s=default; h=Subject:From:To:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SJBQ9YBGb5Xd4JC4/kOLyXWshlP/PMOmN51MiDy3JAQ=; b=phvthD+rpMN+xaSY0oufiapX+m
 7+p/2ly6VMbspLBwyVtlcNaKMqIq20JaCdyxfTuN9IuAq4xO48HWt7fmjBwaWB8O4s+PI55dTAFTc
 T2qV1XIyhsLCt0iuB0XFzKvGm;
Received: from cpe-174-96-30-15.neo.res.rr.com ([174.96.30.15]:58328
 helo=[192.168.0.139])
 by server.hammerve.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <laser@HammerVE.com>) id 1pWquM-00048I-Ph
 for linux-uvc-devel@lists.sourceforge.net; Mon, 27 Feb 2023 20:44:06 -0700
Message-ID: <66806958-12b9-ac96-86a6-eae4e88d2bc2@HammerVE.com>
Date: Mon, 27 Feb 2023 22:44:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: linux-uvc-devel@lists.sourceforge.net
Content-Language: en-US
From: Mark Lasersohn <laser@HammerVE.com>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.hammerve.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - HammerVE.com
X-Get-Message-Sender-Via: server.hammerve.com: authenticated_id:
 laser@hammerve.com
X-Authenticated-Sender: server.hammerve.com: laser@hammerve.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I have a Sony SRG-120DU camera. When I connect via USB3, I
 get dmesg: [ 1010.810058] usb 4-3: new SuperSpeed USB device number 6 using
 xhci_hcd [ 1010.830763] usb 4-3: LPM exit latency is zeroed, disabling LPM.
 [ 1010.831279] usb 4-3: New USB device found, idVendor=054c [...] 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pWrPW-0008Bs-FU
Subject: [linux-uvc-devel] No streaming interface found for terminal
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
Content-Type: multipart/mixed; boundary="===============5807000157297433588=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============5807000157297433588==
Content-Type: multipart/alternative;
 boundary="------------7bkyg6ylRRqPpz4dwqFtalav"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7bkyg6ylRRqPpz4dwqFtalav
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

I have a Sony SRG-120DU camera. When I connect via USB3, I get dmesg:

[ 1010.810058] usb 4-3: new SuperSpeed USB device number 6 using xhci_hcd
[ 1010.830763] usb 4-3: LPM exit latency is zeroed, disabling LPM.
[ 1010.831279] usb 4-3: New USB device found, idVendor=054c, 
idProduct=0b7f, bcdDevice= 0.01
[ 1010.831288] usb 4-3: New USB device strings: Mfr=0, Product=2, 
SerialNumber=0
[ 1010.831291] usb 4-3: Product: SRG-120DU Series
[ 1010.833700] usb 4-3: Found UVC 1.00 device SRG-120DU Series (054c:0b7f)
[ 1010.833713] usb 4-3: No streaming interface found for terminal 2.
[ 1010.833852] input: SRG-120DU Series: SRG-120DU Ser as 
/devices/pci0000:00/0000:00:14.0/usb4/4-3/4-3:1.0/input/input44

and no /dev/video* device is created.

lsusb -v for 054c:0b7f produces:

Bus 004 Device 006: ID 054c:0b7f Sony Corp. SRG-120DU Series
Device Descriptor:
   bLength                18
   bDescriptorType         1
   bcdUSB               3.00
   bDeviceClass          239 Miscellaneous Device
   bDeviceSubClass         2
   bDeviceProtocol         1 Interface Association
   bMaxPacketSize0         9
   idVendor           0x054c Sony Corp.
   idProduct          0x0b7f
   bcdDevice            0.01
   iManufacturer           0
   iProduct                2 SRG-120DU Series
   iSerial                 0
   bNumConfigurations      1
   Configuration Descriptor:
     bLength                 9
     bDescriptorType         2
     wTotalLength       0x00dd
     bNumInterfaces          2
     bConfigurationValue     1
     iConfiguration          0
     bmAttributes         0xc0
       Self Powered
     MaxPower              144mA
     Interface Association:
       bLength                 8
       bDescriptorType        11
       bFirstInterface         0
       bInterfaceCount         2
       bFunctionClass         14 Video
       bFunctionSubClass       3 Video Interface Collection
       bFunctionProtocol       0
       iFunction               2 SRG-120DU Series
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        0
       bAlternateSetting       0
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      1 Video Control
       bInterfaceProtocol      0
       iInterface              2 SRG-120DU Series
       VideoControl Interface Descriptor:
         bLength                13
         bDescriptorType        36
         bDescriptorSubtype      1 (HEADER)
         bcdUVC               1.00
         wTotalLength       0x004e
         dwClockFrequency        1.000000MHz
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
         bmControls           0x00000000
       VideoControl Interface Descriptor:
         bLength                 9
         bDescriptorType        36
         bDescriptorSubtype      3 (OUTPUT_TERMINAL)
         bTerminalID             2
         wTerminalType      0x0101 USB Streaming
         bAssocTerminal          0
         bSourceID               4
         iTerminal               0
       VideoControl Interface Descriptor:
         bLength                11
         bDescriptorType        36
         bDescriptorSubtype      5 (PROCESSING_UNIT)
       Warning: Descriptor too short
         bUnitID                 3
         bSourceID               1
         wMaxMultiplier          0
         bControlSize            2
         bmControls     0x00000000
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
         bUnitID                 4
         guidExtensionCode {0fce0c35-5728-43e0-a5cb-fde8f16efb22}
         bNumControl             3
         bNrPins                 1
         baSourceID( 0)          3
         bControlSize            2
         bmControls( 0)       0x07
         bmControls( 1)       0x00
         iExtension              0
       Endpoint Descriptor:
         bLength                 7
         bDescriptorType         5
         bEndpointAddress     0x81  EP 1 IN
         bmAttributes            3
           Transfer Type            Interrupt
           Synch Type               None
           Usage Type               Data
         wMaxPacketSize     0x0040  1x 64 bytes
         bInterval               1
         bMaxBurst               0
     Interface Descriptor:
       bLength                 9
       bDescriptorType         4
       bInterfaceNumber        1
       bAlternateSetting       0
       bNumEndpoints           1
       bInterfaceClass        14 Video
       bInterfaceSubClass      2 Video Streaming
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
         bMaxBurst              15
         INTERFACE CLASS:  0e 24 01 01 4d 00 83 00 02 00 00 00 01 00
         INTERFACE CLASS:  1b 24 04 01 01 59 55 59 32 00 00 10 00 80 00 
00 aa 00 38 9b 71 10 01 00 00 00 00
         INTERFACE CLASS:  1e 24 05 01 00 00 05 d0 02 00 00 f9 15 00 00 
f9 15 00 20 1c 00 80 1a 06 00 01 80 1a 06 00
         INTERFACE CLASS:  06 24 0d 01 01 04
Binary Object Store Descriptor:
   bLength                 5
   bDescriptorType        15
   wTotalLength       0x0016
   bNumDeviceCaps          2
   USB 2.0 Extension Device Capability:
     bLength                 7
     bDescriptorType        16
     bDevCapabilityType      2
     bmAttributes   0x00000006
       BESL Link Power Management (LPM) Supported
   SuperSpeed USB Device Capability:
     bLength                10
     bDescriptorType        16
     bDevCapabilityType      3
     bmAttributes         0x00
     wSpeedsSupported   0x000c
       Device can operate at High Speed (480Mbps)
       Device can operate at SuperSpeed (5Gbps)
     bFunctionalitySupport   3
       Lowest fully-functional device speed is SuperSpeed (5Gbps)
     bU1DevExitLat           0 micro seconds
     bU2DevExitLat           0 micro seconds
can't get debug descriptor: Resource temporarily unavailable
Device Status:     0x0001
   Self Powered

Though discontinued some years ago, Sony advertised this camera as 
supported by UVC, as "plug and play" without an additional driver. It 
does produce a video signal on Windows via USB3, but fails on Linux. I 
am running Linux Mint:

Linux Mint 20.3 Una
5.14.0-1057-oem #64-Ubuntu SMP Mon Jan 23 17:02:19 UTC 2023 x86_64 
x86_64 x86_64 GNU/Linux

Thank you for your time,
Mark Lasersohn

--------------7bkyg6ylRRqPpz4dwqFtalav
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>
    </p>
    <div class="moz-text-flowed" style="font-family: -moz-fixed;
      font-size: 12px;" lang="x-unicode">I have a Sony SRG-120DU camera.
      When I connect via USB3, I get dmesg:
      <br>
      <br>
      [ 1010.810058] usb 4-3: new SuperSpeed USB device number 6 using
      xhci_hcd
      <br>
      [ 1010.830763] usb 4-3: LPM exit latency is zeroed, disabling LPM.
      <br>
      [ 1010.831279] usb 4-3: New USB device found, idVendor=054c,
      idProduct=0b7f, bcdDevice= 0.01
      <br>
      [ 1010.831288] usb 4-3: New USB device strings: Mfr=0, Product=2,
      SerialNumber=0
      <br>
      [ 1010.831291] usb 4-3: Product: SRG-120DU Series
      <br>
      [ 1010.833700] usb 4-3: Found UVC 1.00 device SRG-120DU Series
      (054c:0b7f)
      <br>
      [ 1010.833713] usb 4-3: No streaming interface found for terminal
      2.
      <br>
      [ 1010.833852] input: SRG-120DU Series: SRG-120DU Ser as
      /devices/pci0000:00/0000:00:14.0/usb4/4-3/4-3:1.0/input/input44
      <br>
      <br>
      and no /dev/video* device is created.
      <br>
      <br>
      lsusb -v for 054c:0b7f produces:
      <br>
      <br>
      Bus 004 Device 006: ID 054c:0b7f Sony Corp. SRG-120DU Series
      <br>
      Device Descriptor:
      <br>
        bLength                18
      <br>
        bDescriptorType         1
      <br>
        bcdUSB               3.00
      <br>
        bDeviceClass          239 Miscellaneous Device
      <br>
        bDeviceSubClass         2
      <br>
        bDeviceProtocol         1 Interface Association
      <br>
        bMaxPacketSize0         9
      <br>
        idVendor           0x054c Sony Corp.
      <br>
        idProduct          0x0b7f
      <br>
        bcdDevice            0.01
      <br>
        iManufacturer           0
      <br>
        iProduct                2 SRG-120DU Series
      <br>
        iSerial                 0
      <br>
        bNumConfigurations      1
      <br>
        Configuration Descriptor:
      <br>
          bLength                 9
      <br>
          bDescriptorType         2
      <br>
          wTotalLength       0x00dd
      <br>
          bNumInterfaces          2
      <br>
          bConfigurationValue     1
      <br>
          iConfiguration          0
      <br>
          bmAttributes         0xc0
      <br>
            Self Powered
      <br>
          MaxPower              144mA
      <br>
          Interface Association:
      <br>
            bLength                 8
      <br>
            bDescriptorType        11
      <br>
            bFirstInterface         0
      <br>
            bInterfaceCount         2
      <br>
            bFunctionClass         14 Video
      <br>
            bFunctionSubClass       3 Video Interface Collection
      <br>
            bFunctionProtocol       0
      <br>
            iFunction               2 SRG-120DU Series
      <br>
          Interface Descriptor:
      <br>
            bLength                 9
      <br>
            bDescriptorType         4
      <br>
            bInterfaceNumber        0
      <br>
            bAlternateSetting       0
      <br>
            bNumEndpoints           1
      <br>
            bInterfaceClass        14 Video
      <br>
            bInterfaceSubClass      1 Video Control
      <br>
            bInterfaceProtocol      0
      <br>
            iInterface              2 SRG-120DU Series
      <br>
            VideoControl Interface Descriptor:
      <br>
              bLength                13
      <br>
              bDescriptorType        36
      <br>
              bDescriptorSubtype      1 (HEADER)
      <br>
              bcdUVC               1.00
      <br>
              wTotalLength       0x004e
      <br>
              dwClockFrequency        1.000000MHz
      <br>
              bInCollection           1
      <br>
              baInterfaceNr( 0)       1
      <br>
            VideoControl Interface Descriptor:
      <br>
              bLength                18
      <br>
              bDescriptorType        36
      <br>
              bDescriptorSubtype      2 (INPUT_TERMINAL)
      <br>
              bTerminalID             1
      <br>
              wTerminalType      0x0201 Camera Sensor
      <br>
              bAssocTerminal          0
      <br>
              iTerminal               0
      <br>
              wObjectiveFocalLengthMin      0
      <br>
              wObjectiveFocalLengthMax      0
      <br>
              wOcularFocalLength            0
      <br>
              bControlSize                  3
      <br>
              bmControls           0x00000000
      <br>
            VideoControl Interface Descriptor:
      <br>
              bLength                 9
      <br>
              bDescriptorType        36
      <br>
              bDescriptorSubtype      3 (OUTPUT_TERMINAL)
      <br>
              bTerminalID             2
      <br>
              wTerminalType      0x0101 USB Streaming
      <br>
              bAssocTerminal          0
      <br>
              bSourceID               4
      <br>
              iTerminal               0
      <br>
            VideoControl Interface Descriptor:
      <br>
              bLength                11
      <br>
              bDescriptorType        36
      <br>
              bDescriptorSubtype      5 (PROCESSING_UNIT)
      <br>
            Warning: Descriptor too short
      <br>
              bUnitID                 3
      <br>
              bSourceID               1
      <br>
              wMaxMultiplier          0
      <br>
              bControlSize            2
      <br>
              bmControls     0x00000000
      <br>
              iProcessing             0
      <br>
              bmVideoStandards     0x1b
      <br>
                None
      <br>
                NTSC - 525/60
      <br>
                SECAM - 625/50
      <br>
                NTSC - 625/50
      <br>
            VideoControl Interface Descriptor:
      <br>
              bLength                27
      <br>
              bDescriptorType        36
      <br>
              bDescriptorSubtype      6 (EXTENSION_UNIT)
      <br>
              bUnitID                 4
      <br>
              guidExtensionCode {0fce0c35-5728-43e0-a5cb-fde8f16efb22}
      <br>
              bNumControl             3
      <br>
              bNrPins                 1
      <br>
              baSourceID( 0)          3
      <br>
              bControlSize            2
      <br>
              bmControls( 0)       0x07
      <br>
              bmControls( 1)       0x00
      <br>
              iExtension              0
      <br>
            Endpoint Descriptor:
      <br>
              bLength                 7
      <br>
              bDescriptorType         5
      <br>
              bEndpointAddress     0x81  EP 1 IN
      <br>
              bmAttributes            3
      <br>
                Transfer Type            Interrupt
      <br>
                Synch Type               None
      <br>
                Usage Type               Data
      <br>
              wMaxPacketSize     0x0040  1x 64 bytes
      <br>
              bInterval               1
      <br>
              bMaxBurst               0
      <br>
          Interface Descriptor:
      <br>
            bLength                 9
      <br>
            bDescriptorType         4
      <br>
            bInterfaceNumber        1
      <br>
            bAlternateSetting       0
      <br>
            bNumEndpoints           1
      <br>
            bInterfaceClass        14 Video
      <br>
            bInterfaceSubClass      2 Video Streaming
      <br>
            bInterfaceProtocol      0
      <br>
            iInterface              0
      <br>
            Endpoint Descriptor:
      <br>
              bLength                 7
      <br>
              bDescriptorType         5
      <br>
              bEndpointAddress     0x83  EP 3 IN
      <br>
              bmAttributes            2
      <br>
                Transfer Type            Bulk
      <br>
                Synch Type               None
      <br>
                Usage Type               Data
      <br>
              wMaxPacketSize     0x0400  1x 1024 bytes
      <br>
              bInterval               0
      <br>
              bMaxBurst              15
      <br>
              INTERFACE CLASS:  0e 24 01 01 4d 00 83 00 02 00 00 00 01
      00
      <br>
              INTERFACE CLASS:  1b 24 04 01 01 59 55 59 32 00 00 10 00
      80 00 00 aa 00 38 9b 71 10 01 00 00 00 00
      <br>
              INTERFACE CLASS:  1e 24 05 01 00 00 05 d0 02 00 00 f9 15
      00 00 f9 15 00 20 1c 00 80 1a 06 00 01 80 1a 06 00
      <br>
              INTERFACE CLASS:  06 24 0d 01 01 04
      <br>
      Binary Object Store Descriptor:
      <br>
        bLength                 5
      <br>
        bDescriptorType        15
      <br>
        wTotalLength       0x0016
      <br>
        bNumDeviceCaps          2
      <br>
        USB 2.0 Extension Device Capability:
      <br>
          bLength                 7
      <br>
          bDescriptorType        16
      <br>
          bDevCapabilityType      2
      <br>
          bmAttributes   0x00000006
      <br>
            BESL Link Power Management (LPM) Supported
      <br>
        SuperSpeed USB Device Capability:
      <br>
          bLength                10
      <br>
          bDescriptorType        16
      <br>
          bDevCapabilityType      3
      <br>
          bmAttributes         0x00
      <br>
          wSpeedsSupported   0x000c
      <br>
            Device can operate at High Speed (480Mbps)
      <br>
            Device can operate at SuperSpeed (5Gbps)
      <br>
          bFunctionalitySupport   3
      <br>
            Lowest fully-functional device speed is SuperSpeed (5Gbps)
      <br>
          bU1DevExitLat           0 micro seconds
      <br>
          bU2DevExitLat           0 micro seconds
      <br>
      can't get debug descriptor: Resource temporarily unavailable
      <br>
      Device Status:     0x0001
      <br>
        Self Powered
      <br>
      <br>
      Though discontinued some years ago, Sony advertised this camera as
      supported by UVC, as "plug and play" without an additional driver.
      It does produce a video signal on Windows via USB3, but fails on
      Linux. I am running Linux Mint:
      <br>
      <br>
      Linux Mint 20.3 Una
      <br>
      5.14.0-1057-oem #64-Ubuntu SMP Mon Jan 23 17:02:19 UTC 2023 x86_64
      x86_64 x86_64 GNU/Linux
      <br>
      <br>
      Thank you for your time,
      <br>
      Mark Lasersohn
      <br>
      <br>
    </div>
  </body>
</html>

--------------7bkyg6ylRRqPpz4dwqFtalav--


--===============5807000157297433588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5807000157297433588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============5807000157297433588==--

