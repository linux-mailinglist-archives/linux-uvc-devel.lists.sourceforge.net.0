Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BF91370DE
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 10 Jan 2020 16:14:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1ipvz5-0003YR-HH; Fri, 10 Jan 2020 15:13:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <d.jacobi@solpeg.de>) id 1ipvz4-0003YI-1x
 for linux-uvc-devel@lists.sourceforge.net; Fri, 10 Jan 2020 15:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=15LhlAjuYbUoJ21DKia7SvUjypuGVkEn/l5jmxglZKI=; b=BeLcsxebl20FosxoQL6pbSADK
 1Vp98u4t0qFPzQ+AWkyVd2lhDmN6XhfX2xt6JGwBskOXGZzz+J7dZC/oNzVl3oM1sQVAG8uUbndvC
 M6jY+g2inUn5uMK5dP0ReOd/Dl2qCpBx6Ktb+SZ9QDg5JHlJ/xElIYeRjOEsl+J8zmTTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=15LhlAjuYbUoJ21DKia7SvUjypuGVkEn/l5jmxglZKI=; b=cnK2BLvtpZTcAyLahwxLS1ni1m
 tJPNZxsWm0wUc0hn6CtkSXhvnp6ksmtB1fv+Pn11WAE8viI/38MvbVCJCG8j7u72JSx7J/FagYUP5
 ms2J6C23n0aTUnRBW9VxrfZ2quVPqW0Lru/i92qnTJrv76oJXJOwnOrTywTVnQzZS5M8=;
Received: from dsp1.rb-host.de ([91.211.112.206])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipvz1-00FZDr-TP
 for linux-uvc-devel@lists.sourceforge.net; Fri, 10 Jan 2020 15:13:58 +0000
Received: from dsp1.rb-host.de (localhost.localdomain [127.0.0.1])
 by dsp1.rb-host.de (Proxmox) with ESMTP id 6DB50C2280
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 10 Jan 2020 16:13:49 +0100 (CET)
To: linux-uvc-devel@lists.sourceforge.net
References: <f97bf8f1-f878-7879-63cc-ef0f20510c84@solpeg.de>
From: Dieko Jacobi <d.jacobi@solpeg.de>
Message-ID: <6b170c6e-7ca8-c5f7-2ee4-05bc64df335c@solpeg.de>
Date: Fri, 10 Jan 2020 16:13:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <f97bf8f1-f878-7879-63cc-ef0f20510c84@solpeg.de>
Content-Type: multipart/mixed; boundary="------------4A2E12807CA5DE97181A5A66"
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.101.4 at mail-s3.rb-host.de
X-Virus-Status: Clean
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [91.211.112.206 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: solpeg.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipvz1-00FZDr-TP
Subject: Re: [linux-uvc-devel] Support for Samsung VG-STC4000 Webcam
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
--------------4A2E12807CA5DE97181A5A66
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Ok, the FAQ says I should provide a lsusb.log

Here it comes...



Am 10.01.20 um 15:51 schrieb Dieko Jacobi:
> Hallo,
>
> I have a Samsung VG-STC4000 Webcam and it seems the device is not 
> supported. How can I get it to work?
>
> 4 years ago or so Samsung produced this camera for their smart TVs in 
> order to support video conferencing with Microsoft skype.
> Since Microsoft ended the support for skype on samsung TVs, the skype 
> app is no longer available and the webcam device ist useless.
>
> I try to avoid sending the device into trash...
>
> When I plug the device I get this info with lsusb:
>
> ID 04e8:2061 Samsung Electronics Co., Ltd
>
> dmesg:
>
> [Fr Jan 10 15:41:12 2020] usb 1-7: new high-speed USB device number 9 
> using ehci-pci
> [Fr Jan 10 15:41:12 2020] usb 1-7: New USB device found, 
> idVendor=04e8, idProduct=2061
> [Fr Jan 10 15:41:12 2020] usb 1-7: New USB device strings: Mfr=1, 
> Product=2, SerialNumber=0
> [Fr Jan 10 15:41:12 2020] usb 1-7: Product: USB2.0 UVC HQ WebCam
> [Fr Jan 10 15:41:12 2020] usb 1-7: Manufacturer: Alpha Imaging Tech. Corp.
> [Fr Jan 10 15:41:12 2020] uvcvideo: Found UVC 1.00 device USB2.0 UVC 
> HQ WebCam (04e8:2061)
> [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
> Extension 2 was not initialized!
> [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
> Extension 6 was not initialized!
> [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
> Extension 5 was not initialized!
> [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
> Processing 3 was not initialized!
> [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
> Camera 1 was not initialized!
> [Fr Jan 10 15:41:12 2020] input: USB2.0 UVC HQ WebCam as 
> /devices/pci0000:00/0000:00:04.1/usb1/1-7/1-7:1.0/input/input19
>
> Thanks for your support !
>
>
>
> _______________________________________________
> Linux-uvc-devel mailing list
> Linux-uvc-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
-- 

____________
Dieko Jacobi

*S**o**lPEG* GmbH - Solar Power Expert Group
Normannenweg 17-21, 20537 Hamburg

tel: +49 40 79 69 59 36 <tel:+494079695936> | fax: +49 40 79 69 59 38
mail: d.jacobi@solpeg.de <mailto:d.jacobi@solpeg.de>
web: www.solpeg.de <http://www.solpeg.de/>

SolPEG GmbH - Sitz der Gesellschaft: Hamburg - Amtsgericht Hamburg, HRB 
106140 - Geschäftsführer: Dieko Jacobi (Vors.), Kai Barke, André Schumann


--------------4A2E12807CA5DE97181A5A66
Content-Type: text/x-log; charset=UTF-8;
 name="lsusb.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="lsusb.log"


Bus 001 Device 009: ID 04e8:2061 Samsung Electronics Co., Ltd 
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 ?
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x04e8 Samsung Electronics Co., Ltd
  idProduct          0x2061 
  bcdDevice            7.30
  iManufacturer           1 Alpha Imaging Tech. Corp.
  iProduct                2 USB2.0 UVC HQ WebCam
  iSerial                 0 
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength          503
    bNumInterfaces          4
    bConfigurationValue     1
    iConfiguration          0 
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
      iFunction               0 
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0 
      iInterface              0 
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.00
        wTotalLength          132
        dwClockFrequency      144.000000MHz
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
        guidExtensionCode         {6ad1492c-b832-8544-3ea8-643a152362f2}
        bNumControl             6
        bNrPins                 1
        baSourceID( 0)          6
        bControlSize            2
        bmControls( 0)       0x00
        bmControls( 1)       0x00
        iExtension              0 
      VideoControl Interface Descriptor:
        bLength                27
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 6
        guidExtensionCode         {d09ee423-7811-314f-ae52-d2fb8a8d3b48}
        bNumControl             5
        bNrPins                 1
        baSourceID( 0)          5
        bControlSize            2
        bmControls( 0)       0x1f
        bmControls( 1)       0x00
        iExtension              0 
      VideoControl Interface Descriptor:
        bLength                27
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 5
        guidExtensionCode         {bd5321b4-d635-ca45-b203-4e0149b301bc}
        bNumControl            16
        bNrPins                 1
        baSourceID( 0)          3
        bControlSize            2
        bmControls( 0)       0x00
        bmControls( 1)       0x00
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
        bmControls           0x00000000
      VideoControl Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      5 (PROCESSING_UNIT)
      Warning: Descriptor too short
        bUnitID                 3
        bSourceID               1
        wMaxMultiplier          0
        bControlSize            2
        bmControls     0x00000000
        iProcessing             0 
        bmVideoStandards     0x65
          None
          PAL - 625/50
          PAL - 525/60
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x83  EP 3 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0040  1x 64 bytes
        bInterval               8
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
        wTotalLength                      285
        bEndPointAddress                  129
        bmInfo                              0
        bTerminalLink                       4
        bStillCaptureMethod                 2
        bTriggerSupport                     1
        bTriggerUsage                       0
        bControlSize                        1
        bmaControls( 0)                    27
      VideoStreaming Interface Descriptor:
        bLength                            27
        bDescriptorType                    36
        bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
        bFormatIndex                        1
        bNumFrameDescriptors                7
        guidFormat                            {59555932-0000-1000-8000-00aa00389b71}
        bBitsPerPixel                      16
        bDefaultFrameIndex                  1
        bAspectRatioX                       0
        bAspectRatioY                       0
        bmInterlaceFlags                 0x00
          Interlaced stream or variable: No
          Fields per frame: 2 fields
          Field 1 first: No
          Field pattern: Field 1 only
          bCopyProtect                      0
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         1
        bmCapabilities                   0x00
          Still image unsupported
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
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            848
        wHeight                           480
        dwMinBitRate                195379200
        dwMaxBitRate                195379200
        dwMaxVideoFrameBufferSize      814080
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                 36864000
        dwMaxBitRate                 36864000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            400
        wHeight                           296
        dwMinBitRate                 56832000
        dwMaxBitRate                 56832000
        dwMaxVideoFrameBufferSize      236800
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            384
        wHeight                           216
        dwMinBitRate                 39813120
        dwMaxBitRate                 39813120
        dwMaxVideoFrameBufferSize      165888
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            352
        wHeight                           288
        dwMinBitRate                 48660480
        dwMaxBitRate                 48660480
        dwMaxVideoFrameBufferSize      202752
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         7
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                147456000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval        1000000
        bFrameIntervalType                  1
        dwFrameInterval( 0)           1000000
      VideoStreaming Interface Descriptor:
        bLength                            19
        bDescriptorType                    36
        bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)
        bEndpointAddress                    0
        bNumImageSizePatterns               3
        wWidth( 0)                        640
        wHeight( 0)                       480
        wWidth( 1)                        320
        wHeight( 1)                       240
        wWidth( 2)                        160
        wHeight( 2)                       120
        bNumCompressionPatterns             3
        bCompression( 0)                    3
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
        wMaxPacketSize     0x13f8  3x 1016 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        2
      bAlternateSetting       0
      bNumEndpoints           2
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass    255 Vendor Specific Subclass
      bInterfaceProtocol    255 Vendor Specific Protocol
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x01  EP 1 OUT
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               0
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass    255 Vendor Specific Subclass
      bInterfaceProtocol    255 Vendor Specific Protocol
      iInterface              0 
Device Qualifier (for other device speed):
  bLength                10
  bDescriptorType         6
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 ?
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  bNumConfigurations      1
Device Status:     0x0000
  (Bus Powered)

--------------4A2E12807CA5DE97181A5A66
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------4A2E12807CA5DE97181A5A66
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--------------4A2E12807CA5DE97181A5A66--


