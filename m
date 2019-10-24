Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C514BE36E0
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 24 Oct 2019 17:41:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iNfEv-0007Dt-OJ; Thu, 24 Oct 2019 15:41:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <neuberfran@gmail.com>) id 1iNfEu-0007Dc-09
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 15:41:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oRdSbv28NKCAaW6r+wAbHQ3L8n5WtYolk5Scri3R8Es=; b=BfsjUr0gPn19SHMF5gilYRyr8f
 YPp45IQneW5LrsY161qfTyMRFMsAKctZ6EdgXKVi6/u++UZrFn/76494c6C7B1zx6CXdDqblo+Vc1
 nvdn+Yzofq+1jUIha6sDo13NrQMtxXOVyFdV1Vp00RSUGi8xbVu3DWXCnRtmNZUJY84g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oRdSbv28NKCAaW6r+wAbHQ3L8n5WtYolk5Scri3R8Es=; b=T
 B291mNyh4hx+TcIgDXPphSYKpU1AM+Nt6tr/zXCe/J/BHEXe8M4AcqsPumkO7fjrCq1gVPinx/GOd
 PaarWnDlU6B9iPwPd4kN9gV+WihxhW8fUNioJb9iZaXPFedrFcQW60nWs2rumXkc9PMCjafFeaB6M
 beTCVWn1Fj4Rc5AY=;
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iNfEr-001lao-Hs
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 15:41:27 +0000
Received: by mail-pf1-f182.google.com with SMTP id b25so1339926pfi.13
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 24 Oct 2019 08:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=oRdSbv28NKCAaW6r+wAbHQ3L8n5WtYolk5Scri3R8Es=;
 b=hrak2S+H/FP7plfehjB3mCs+xA+y7np58F9MUpkCi/VymAvd+2NM0mffGBojYuVp8K
 EFRP77MLUltjA2SBpVySYBz1Pn6OTuwDiJU/7gubdHPmS+eVm6RMCXP7Km4kymCGua2V
 4s/0r98Y4Qxw+swGsGotbE6U/M5XiOo7OQ84ErfFAx83BGoHBG3cDHpDe0ghEl0Ja5s2
 s0rjK0VAIXhJdQWdMozqQ1xNg+6ZMqPVEtdfWZEk/r27/r1Z1tt+/cJDEQSj9NlVzQeo
 krAB0xv4ex7qf1g6ttdCF737SHsZm3v6v3jEtW6QaTjrQVgtMkql9Xf3FfyFMXB/6vF7
 d7Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=oRdSbv28NKCAaW6r+wAbHQ3L8n5WtYolk5Scri3R8Es=;
 b=JACWpSV7aR/CQzNzAKZpaev7KMax45nIFuo1qE+yA5QDXYYAD8A6TWj19TcHVUmk6j
 I7RKPWm4ILNIJktrpMbiajqBYhNvuIRq0nTlgbI/wMLa+d83T10Ag1u3uy4wAVV9lRc1
 IijfMJhxBVUQq430BJduxDF7hzS8emZBqLVk2JKSJV4ADdxy23QDaHW/mcoqAUGOn6Gr
 qQvEHBN/XrGUnOQMhZU4qlEbWqKIi4loYk/iMQPOGXD6pj50hi48KAVm7WrYDGIJ58r1
 uqTyhh15Yf3yBfAPqd0W938hPjTEVLh5/5iWGzYstyPmpLzacNKHyI44A2pucGw1/Dop
 o3Bw==
X-Gm-Message-State: APjAAAVXQuDDqQgBczhwbE3jxdtGDjDQOtCakYOCLNfvvDRqbmdF0QP0
 38yd58btVZSLCBUxKfLUlkMurOJtmr7yiBkgfh+6IpEzDYg=
X-Google-Smtp-Source: APXvYqyQEZzMRVQWwisU17qzvWkSSP+zR1lq/BQQPLKJ1l5RyW4Hv5PMCszR+pH25fOAH53sgbRRgPksYBmDDRwWLOY=
X-Received: by 2002:aa7:9aa2:: with SMTP id x2mr18297182pfi.103.1571931679094; 
 Thu, 24 Oct 2019 08:41:19 -0700 (PDT)
MIME-Version: 1.0
From: Neuber Sousa <neuberfran@gmail.com>
Date: Thu, 24 Oct 2019 12:41:07 -0300
Message-ID: <CABWL1Pn0enp+FzXnK=-gk5xiYTB0naN3Qgv0yhHOVP-3cWOuGg@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (neuberfran[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1iNfEr-001lao-Hs
Subject: [linux-uvc-devel] webcam not supported yet or NOT UVC COMPATIBLE,
 PLEASE HELP ME
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
Content-Type: multipart/mixed; boundary="===============7096846977900848729=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============7096846977900848729==
Content-Type: multipart/alternative; boundary="00000000000057fe770595a9dd9e"

--00000000000057fe770595a9dd9e
Content-Type: text/plain; charset="UTF-8"

*What about my webcam its compatible with UVC ? or no?*



*Below LSUSB -v command result:*



Bus 001 Device 002: ID 090c:71b3 Silicon Motion, Inc. - Taiwan (formerly
Feiya
T
echnology Corp.) SM731 Camera

Device Descriptor:

  bLength                18

  bDescriptorType         1

  bcdUSB               2.00

  bDeviceClass          239 Miscellaneous Device

  bDeviceSubClass         2 ?

  bDeviceProtocol         1 Interface Association

  bMaxPacketSize0        64

  idVendor           0x090c Silicon Motion, Inc. - Taiwan (formerly Feiya
Techno
logy Corp.)

  idProduct          0x71b3 SM731 Camera

  bcdDevice           96.01

  iManufacturer           1 Image Processor

  iProduct                2 USB 2.0 PC Cam

  iSerial                 0

  bNumConfigurations      1

  Configuration Descriptor:

    bLength                 9

    bDescriptorType         2

    wTotalLength          471

    bNumInterfaces          2

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

        wTotalLength           77

        dwClockFrequency       30.000000MHz

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

        bmControls           0x00000000

      VideoControl Interface Descriptor:

        bLength                26

        bDescriptorType        36

        bDescriptorSubtype      6 (EXTENSION_UNIT)

        bUnitID                 2

        guidExtensionCode         {92423946-d10c-e34a-8783-3133f9eaaa3b}

        bNumControl             3

        bNrPins                 1

        baSourceID( 0)          1

        bControlSize            1

        bmControls( 0)       0xff

        iExtension              0

      VideoControl Interface Descriptor:

        bLength                11

        bDescriptorType        36

        bDescriptorSubtype      5 (PROCESSING_UNIT)

      Warning: Descriptor too short

        bUnitID                 3

        bSourceID               2

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

        bmVideoStandards     0x 9

          None

          SECAM - 625/50

      VideoControl Interface Descriptor:

        bLength                 9

        bDescriptorType        36

        bDescriptorSubtype      3 (OUTPUT_TERMINAL)

        bTerminalID             4

        wTerminalType      0x0101 USB Streaming

        bAssocTerminal          0

        bSourceID               3

        iTerminal               0

      Endpoint Descriptor:

        bLength                 7

        bDescriptorType         5

        bEndpointAddress     0x83  EP 3 IN

        bmAttributes            3

          Transfer Type            Interrupt

          Synch Type               None

          Usage Type               Data

        wMaxPacketSize     0x0008  1x 8 bytes

        bInterval              16

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

        wTotalLength                      283

        bEndPointAddress                  129

        bmInfo                              0

        bTerminalLink                       4

        bStillCaptureMethod                 2

        bTriggerSupport                     1

        bTriggerUsage                       1

        bControlSize                        1

        bmaControls( 0)                    27

      VideoStreaming Interface Descriptor:

        bLength                            27

        bDescriptorType                    36

        bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)

        bFormatIndex                        1

        bNumFrameDescriptors                5

        guidFormat
{59555932-0000-1000-8000-00aa00389
b71}

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

        bLength                            42

        bDescriptorType                    36

        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)

        bFrameIndex                         1

        bmCapabilities                   0x00

          Still image unsupported

        wWidth                            640

        wHeight                           480

        dwMinBitRate                   912384

        dwMaxBitRate                   912384

        dwMaxVideoFrameBufferSize      614400

        dwDefaultFrameInterval         333333

        bFrameIntervalType                  4

        dwFrameInterval( 0)            333333

        dwFrameInterval( 1)            333334

        dwFrameInterval( 2)            333335

        dwFrameInterval( 3)            333336

      VideoStreaming Interface Descriptor:

        bLength                            42

        bDescriptorType                    36

        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)

        bFrameIndex                         2

        bmCapabilities                   0x00

          Still image unsupported

        wWidth                            352

        wHeight                           288

        dwMinBitRate                   912384

        dwMaxBitRate                   912384

        dwMaxVideoFrameBufferSize      202752

        dwDefaultFrameInterval         333333

        bFrameIntervalType                  4

        dwFrameInterval( 0)            333333

        dwFrameInterval( 1)            333334

        dwFrameInterval( 2)            333335

        dwFrameInterval( 3)            333336

      VideoStreaming Interface Descriptor:

        bLength                            42

        bDescriptorType                    36

        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)

        bFrameIndex                         3

        bmCapabilities                   0x00

          Still image unsupported

        wWidth                            320

        wHeight                           240

        dwMinBitRate                   912384

        dwMaxBitRate                   912384

        dwMaxVideoFrameBufferSize      153600

        dwDefaultFrameInterval         333333

        bFrameIntervalType                  4

        dwFrameInterval( 0)            333333

        dwFrameInterval( 1)            333334

        dwFrameInterval( 2)            333335

        dwFrameInterval( 3)            333336

      VideoStreaming Interface Descriptor:

        bLength                            42

        bDescriptorType                    36

        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)

        bFrameIndex                         4

        bmCapabilities                   0x00

          Still image unsupported

        wWidth                            176

        wHeight                           144

        dwMinBitRate                   912384

        dwMaxBitRate                   912384

        dwMaxVideoFrameBufferSize       50688

        dwDefaultFrameInterval         333333

        bFrameIntervalType                  4

        dwFrameInterval( 0)            333333

        dwFrameInterval( 1)            333334

        dwFrameInterval( 2)            333335

        dwFrameInterval( 3)            333336

      VideoStreaming Interface Descriptor:

        bLength                            42

        bDescriptorType                    36

        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)

        bFrameIndex                         5

        bmCapabilities                   0x00

          Still image unsupported

        wWidth                            160

        wHeight                           120

        dwMinBitRate                   912384

        dwMaxBitRate                   912384

        dwMaxVideoFrameBufferSize       38400

        dwDefaultFrameInterval         333333

        bFrameIntervalType                  4

        dwFrameInterval( 0)            333333

        dwFrameInterval( 1)            333334

        dwFrameInterval( 2)            333335

        dwFrameInterval( 3)            333336

      VideoStreaming Interface Descriptor:

        bLength                            26

        bDescriptorType                    36

        bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)

        bEndpointAddress                    0

        bNumImageSizePatterns               5

        wWidth( 0)                        640

        wHeight( 0)                       480

        wWidth( 1)                        352

        wHeight( 1)                       288

        wWidth( 2)                        320

        wHeight( 2)                       240

        wWidth( 3)                        176

        wHeight( 3)                       144

        wWidth( 4)                        160

        wHeight( 4)                       120

        bNumCompressionPatterns             5

      VideoStreaming Interface Descriptor:

        bLength                             6

        bDescriptorType                    36

        bDescriptorSubtype                 13 (COLORFORMAT)

        bColorPrimaries                     0 (Unspecified)

        bTransferCharacteristics            0 (Unspecified)

        bMatrixCoefficients                 0 (Unspecified)

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

        wMaxPacketSize     0x1340  3x 832 bytes

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

        wMaxPacketSize     0x1300  3x 768 bytes

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

        wMaxPacketSize     0x1400  3x 1024 bytes

        bInterval               1

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

--00000000000057fe770595a9dd9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWwtZ3MiIHN0eWxlPSJtYXJnaW46MHB4O3Bh
ZGRpbmc6MHB4IDBweCAyMHB4O3dpZHRoOjY5NnB4O2ZvbnQtZmFtaWx5OlJvYm90byxSb2JvdG9E
cmFmdCxIZWx2ZXRpY2EsQXJpYWwsc2Fucy1zZXJpZjtmb250LXNpemU6bWVkaXVtIj48ZGl2IGNs
YXNzPSJnbWFpbC0iPjxkaXYgaWQ9ImdtYWlsLTpvMSIgY2xhc3M9ImdtYWlsLWlpIGdtYWlsLWd0
IiBzdHlsZT0iZm9udC1zaXplOjAuODc1cmVtO2RpcmVjdGlvbjpsdHI7bWFyZ2luOjhweCAwcHgg
MHB4O3BhZGRpbmc6MHB4Ij48ZGl2IGlkPSJnbWFpbC06bzAiIGNsYXNzPSJnbWFpbC1hM3MgZ21h
aWwtYVhqQ0ggZ21haWwtbXNnNDU4MzcxOTAzOTc4MjQzMzUzMSIgc3R5bGU9Im92ZXJmbG93Omhp
ZGRlbjtmb250LXZhcmlhbnQtbnVtZXJpYzpub3JtYWw7Zm9udC12YXJpYW50LWVhc3QtYXNpYW46
bm9ybWFsO2ZvbnQtc3RyZXRjaDpub3JtYWw7Zm9udC1zaXplOnNtYWxsO2xpbmUtaGVpZ2h0OjEu
NTtmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+PGRpdiBsYW5nPSJQVC1C
UiI+PGRpdiBjbGFzcz0iZ21haWwtbV80NTgzNzE5MDM5NzgyNDMzNTMxV29yZFNlY3Rpb24xIj48
cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48dT48c3BhbiBzdHlsZT0iY29sb3I6cmVkIj5XaGF0IGFi
b3V0IG15IHdlYmNhbSBpdHMgY29tcGF0aWJsZSB3aXRoIFVWQyA/IG9yIG5vPzx1PjwvdT48dT48
L3U+PC9zcGFuPjwvdT48L2I+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjx1PjxzcGFuIHN0
eWxlPSJjb2xvcjpyZWQiPjx1PjwvdT48c3BhbiBzdHlsZT0idGV4dC1kZWNvcmF0aW9uLWxpbmU6
bm9uZSI+wqA8L3NwYW4+PHU+PC91Pjwvc3Bhbj48L3U+PC9iPjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj48Yj48dT48c3BhbiBzdHlsZT0iY29sb3I6cmVkIj5CZWxvdyBMU1VTQiAtdiBjb21tYW5k
IHJlc3VsdDo8dT48L3U+PHU+PC91Pjwvc3Bhbj48L3U+PC9iPjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj48dT48L3U+wqA8dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPkJ1cyAwMDEgRGV2
aWNlIDAwMjogSUQgMDkwYzo3MWIzIFNpbGljb24gTW90aW9uLCBJbmMuIC0gVGFpd2FuIChmb3Jt
ZXJseSBGZWl5YSBUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlY2hub2xvZ3kgQ29ycC4pIFNNNzMxIENhbWVyYTx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPkRldmljZSBEZXNjcmlwdG9yOjx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgMTg8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoCBi
RGVzY3JpcHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgIDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoCBiY2RVU0LCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDIuMDA8
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoCBiRGV2aWNlQ2xhc3PCoMKg
wqDCoMKgwqDCoMKgwqAgMjM5IE1pc2NlbGxhbmVvdXMgRGV2aWNlPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgYkRldmljZVN1YkNsYXNzwqDCoMKgwqDCoMKgwqDCoCAy
ID88dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoCBiRGV2aWNlUHJvdG9j
b2zCoMKgwqDCoMKgwqDCoMKgIDEgSW50ZXJmYWNlIEFzc29jaWF0aW9uPHU+PC91Pjx1PjwvdT48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgYk1heFBhY2tldFNpemUwwqDCoMKgwqDCoMKgIMKg
NjQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoCBpZFZlbmRvcsKgwqDC
oMKgwqDCoMKgwqDCoMKgIDB4MDkwYyBTaWxpY29uIE1vdGlvbiwgSW5jLiAtIFRhaXdhbiAoZm9y
bWVybHkgRmVpeWEgVGVjaG5vwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2d5IENvcnAuKTx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgIGlkUHJvZHVjdMKgwqDCoMKgwqDCoMKgwqDCoCAweDcxYjMgU003
MzEgQ2FtZXJhPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgYmNkRGV2
aWNlwqDCoMKgwqDCoMKgwqDCoMKgwqAgOTYuMDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj7CoCBpTWFudWZhY3R1cmVywqDCoMKgwqDCoMKgwqDCoMKgwqAgMSBJbWFnZSBQ
cm9jZXNzb3I8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoCBpUHJvZHVj
dMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyIFVTQiAyLjAgUEMgQ2FtPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgaVNlcmlhbMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDA8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7C
oCBiTnVtQ29uZmlndXJhdGlvbnPCoMKgwqDCoMKgIDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoCBDb25maWd1cmF0aW9uIERlc2NyaXB0b3I6PHU+PC91Pjx1PjwvdT48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgIGJEZXNjcmlwdG9yVHlwZcKgwqDCoMKgwqDCoMKgwqAgMjx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoCB3VG90YWxMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqAg
NDcxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgIGJOdW1JbnRl
cmZhY2VzwqDCoMKgwqDCoMKgwqDCoMKgIDI8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqAgYkNvbmZpZ3VyYXRpb25WYWx1ZcKgwqDCoMKgIDE8dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqAgaUNvbmZpZ3VyYXRpb27CoMKgwqDCoMKg
wqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoCBi
bUF0dHJpYnV0ZXPCoMKgwqDCoMKgwqDCoMKgIDB4ODA8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIChCdXMgUG93ZXJlZCk8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqAgTWF4UG93ZXLCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA1MDBtQTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoCBJ
bnRlcmZhY2UgQXNzb2NpYXRpb246PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoCBiTGVuZ3RowqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgODx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkRlc2NyaXB0
b3JUeXBlwqDCoMKgwqDCoMKgwqAgMTE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgIGJGaXJzdEludGVyZmFjZcKgwqDCoMKgwqDCoMKgwqAgMDx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkludGVyZmFjZUNvdW50
wqDCoMKgwqDCoMKgwqDCoCAyPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoCBiRnVuY3Rpb25DbGFzc8KgwqDCoMKgwqDCoMKgwqAgMTQgVmlkZW88dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJGdW5jdGlvblN1YkNs
YXNzwqDCoMKgwqDCoMKgIDMgVmlkZW8gSW50ZXJmYWNlIENvbGxlY3Rpb248dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJGdW5jdGlvblByb3RvY29swqDC
oMKgwqDCoMKgIDA8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgIGlGdW5jdGlvbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMDx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoCBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJMZW5ndGjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9
Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiRGVzY3JpcHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgIDQ8
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZh
Y2VOdW1iZXLCoMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoCBiQWx0ZXJuYXRlU2V0dGluZ8KgwqDCoMKgwqDCoCAwPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiTnVtRW5kcG9pbnRzwqDC
oMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwi
PsKgwqDCoMKgwqAgYkludGVyZmFjZUNsYXNzwqDCoMKgwqDCoMKgwqAgMTQgVmlkZW88dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZhY2VTdWJD
bGFzc8KgwqDCoMKgwqAgMSBWaWRlbyBDb250cm9sPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9
Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiSW50ZXJmYWNlUHJvdG9jb2zCoMKgwqDCoMKgIDA8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGlJbnRlcmZhY2XC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoCBWaWRlb0NvbnRyb2wgSW50ZXJmYWNlIERlc2NyaXB0b3I6PHU+
PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkxlbmd0
aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxMzx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJEZXNjcmlwdG9yVHlwZcKgwqDCoMKgwqDC
oMKgIDM2PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKg
wqAgYkRlc2NyaXB0b3JTdWJ0eXBlwqDCoMKgwqDCoCAxIChIRUFERVIpPHU+PC91Pjx1PjwvdT48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYmNkVVZDwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAxLjAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoMKgwqAgd1RvdGFsTGVuZ3RowqDCoMKgwqDCoMKgwqDCoMKgwqAgNzc8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd0Nsb2Nr
RnJlcXVlbmN5wqDCoMKgwqDCoMKgIDMwLjAwMDAwME1Iejx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJJbkNvbGxlY3Rpb27CoMKgwqDCoMKgwqDC
oMKgwqDCoCAxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDC
oMKgwqAgYmFJbnRlcmZhY2VOciggMCnCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNj
cmlwdG9yOjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTg8dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRGVzY3JpcHRvclR5cGXC
oMKgwqDCoMKgwqDCoCAzNjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKg
wqDCoMKgwqDCoMKgIGJEZXNjcmlwdG9yU3VidHlwZcKgwqDCoMKgwqAgMiAoSU5QVVRfVEVSTUlO
QUwpPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAg
YlRlcm1pbmFsSUTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdUZXJtaW5hbFR5cGXCoMKgwqDCoMKg
IDB4MDIwMSBDYW1lcmEgU2Vuc29yPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoMKgwqAgYkFzc29jVGVybWluYWzCoMKgwqDCoMKgwqDCoMKgwqAgMDx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGlUZXJtaW5h
bMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdPYmplY3RpdmVGb2NhbExlbmd0aE1pbsKgwqDC
oMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIHdPYmplY3RpdmVGb2NhbExlbmd0aE1heMKgwqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdPY3VsYXJGb2NhbExlbmd0aMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgIGJDb250cm9sU2l6ZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgMzx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqDCoMKgIGJtQ29udHJvbHPCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDAwMDAwMDAwPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBWaWRlb0NvbnRyb2wgSW50
ZXJmYWNlIERlc2NyaXB0b3I6PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoMKgwqAgYkxlbmd0aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyNjx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJEZXNj
cmlwdG9yVHlwZcKgwqDCoMKgwqDCoMKgIDM2PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2NyaXB0b3JTdWJ0eXBlwqDCoMKgwqDCoCA2IChF
WFRFTlNJT05fVU5JVCk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoCBiVW5pdElEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgIMKgwqDCoMKgwqDCoGd1aWRFeHRl
bnNpb25Db2RlwqDCoMKgwqDCoMKgwqDCoCB7OTI0MjM5NDYtZDEwYy1lMzRhLTg3ODMtMzEzM2Y5
ZWFhYTNifTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIGJOdW1Db250cm9swqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDM8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiTnJQaW5zwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgIGJhU291cmNlSUQoIDApwqDCoMKgwqDCoMKgwqDCoMKgIDE8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiQ29udHJv
bFNpemXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBibUNvbnRyb2xzKCAwKcKgwqDCoMKgwqDCoCAweGZm
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgaUV4
dGVuc2lvbsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDA8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIFZpZGVvQ29udHJvbCBJbnRlcmZhY2UgRGVzY3Jp
cHRvcjo8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDC
oCBiTGVuZ3RowqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDExPHU+PC91Pjx1PjwvdT48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2NyaXB0b3JUeXBlwqDC
oMKgwqDCoMKgwqAgMzY8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoCBiRGVzY3JpcHRvclN1YnR5cGXCoMKgwqDCoMKgIDUgKFBST0NFU1NJTkdfVU5J
VCk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIFdhcm5p
bmc6IERlc2NyaXB0b3IgdG9vIHNob3J0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqAgYlVuaXRJRMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIMKg
wqBiU291cmNlSUTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3TWF4TXVsdGlwbGllcsKgwqDC
oMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqAgYkNvbnRyb2xTaXplwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYm1Db250cm9sc8Kg
wqDCoMKgIDB4MDAwMDE1N2Y8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7C
oMKgwqDCoMKgwqDCoMKgwqAgQnJpZ2h0bmVzczx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBDb250cmFzdDx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBIdWU8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgU2F0dXJhdGlvbjx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBTaGFy
cG5lc3M8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDC
oMKgwqAgR2FtbWE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoMKgwqAgV2hpdGUgQmFsYW5jZSBUZW1wZXJhdHVyZTx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBCYWNrbGlnaHQgQ29tcGVuc2F0
aW9uPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDC
oMKgIFBvd2VyIExpbmUgRnJlcXVlbmN5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgIFdoaXRlIEJhbGFuY2UgVGVtcGVyYXR1cmUsIEF1dG88
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBpUHJv
Y2Vzc2luZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xh
c3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYm1WaWRlb1N0YW5kYXJkc8KgwqDCoMKgIDB4
IDk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKg
wqAgTm9uZTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgwqDCoCBTRUNBTSAtIDYyNS81MDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqAgVmlkZW9Db250cm9sIEludGVyZmFjZSBEZXNjcmlwdG9yOjx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJMZW5ndGjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9
Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2NyaXB0b3JUeXBlwqDCoMKgwqDCoMKgwqAg
MzY8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBi
RGVzY3JpcHRvclN1YnR5cGXCoMKgwqDCoMKgIDMgKE9VVFBVVF9URVJNSU5BTCk8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiVGVybWluYWxJRMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqAgd1Rlcm1pbmFsVHlwZcKgwqDCoMKgwqAgMHgwMTAxIFVTQiBT
dHJlYW1pbmc8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgIMKgwqDC
oMKgwqBiQXNzb2NUZXJtaW5hbMKgwqDCoMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYlNvdXJjZUlEwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAzPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoMKgwqAgaVRlcm1pbmFswqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwPHU+
PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBFbmRwb2ludCBE
ZXNjcmlwdG9yOjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqDCoMKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA3PHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2NyaXB0b3JU
eXBlwqDCoMKgwqDCoMKgwqDCoCA1PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoMKgwqAgYkVuZHBvaW50QWRkcmVzc8KgwqDCoMKgIDB4ODPCoCBFUCAzIElO
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYm1B
dHRyaWJ1dGVzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xh
c3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgIFRyYW5zZmVyIFR5cGXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIEludGVycnVwdDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBTeW5jaCBUeXBlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBOb25lPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDC
oMKgwqDCoMKgIFVzYWdlIFR5cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERhdGE8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3TWF4UGFj
a2V0U2l6ZcKgwqDCoMKgIDB4MDAwOMKgIDF4IDggYnl0ZXM8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiSW50ZXJ2YWzCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAxNjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDC
oCBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiRGVzY3Jp
cHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgIDQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZhY2VOdW1iZXLCoMKgwqDCoMKgwqDCoCAxPHU+PC91
Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiQWx0ZXJuYXRlU2V0
dGluZ8KgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoCBiTnVtRW5kcG9pbnRzwqDCoMKgwqDCoMKgwqDCoMKgwqAgMDx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkludGVyZmFjZUNsYXNzwqDC
oMKgwqDCoMKgwqAgMTQgVmlkZW88dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgIGJJbnRlcmZhY2VTdWJDbGFzc8KgwqDCoMKgwqAgMiBWaWRlbyBTdHJlYW1p
bmc8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRl
cmZhY2VQcm90b2NvbMKgwqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPsKgwqDCoMKgwqAgaUludGVyZmFjZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDA8
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIFZpZGVvU3Ry
ZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRGVzY3JpcHRvclR5cGXCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzNjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJEZXNjcmlwdG9yU3VidHlwZcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgwqDCoMKgMSAoSU5QVVRfSEVBREVSKTx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJOdW1Gb3JtYXRzwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDE8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3VG90YWxMZW5ndGjCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjgzPHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkVuZFBvaW50QWRkcmVzc8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTI5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9
Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYm1JbmZvwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYlRlcm1pbmFsTGlua8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDQ8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIMKgwqBiU3RpbGxDYXB0dXJlTWV0aG9kwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJUcmlnZ2VyU3VwcG9ydMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJUcmlnZ2VyVXNhZ2XCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqAgYkNvbnRyb2xTaXplwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqAgYm1hQ29udHJvbHMoIDApwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgMjc8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOjx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJMZW5ndGjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjc8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRGVzY3Jp
cHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzNjx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJEZXNjcmlwdG9y
U3VidHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNCAoRk9STUFUX1VOQ09N
UFJFU1NFRCk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoCBiRm9ybWF0SW5kZXjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqAgwqBiTnVtRnJhbWVEZXNjcmlwdG9yc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA1
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgZ3Vp
ZEZvcm1hdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB7NTk1NTU5MzItMDAwMC0xMDAwLTgwMDAtMDBhYTAwMzg5wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiNzF9PHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkJpdHNQZXJQaXhl
bMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxNjx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJEZWZhdWx0RnJhbWVJ
bmRleMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJBc3BlY3RSYXRpb1jCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkFzcGVjdFJhdGlvWcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDA8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBibUludGVybGFjZUZsYWdzwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgwMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBJbnRlcmxhY2VkIHN0cmVhbSBvciB2YXJp
YWJsZTogTm88dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoMKgwqAgRmllbGRzIHBlciBmcmFtZTogMiBmaWVsZHM8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgRmllbGQgMSBmaXJzdDogTm88dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgRmll
bGQgcGF0dGVybjogRmllbGQgMSBvbmx5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgIGJDb3B5UHJvdGVjdMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoCBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiTGVuZ3Ro
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDQy
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRl
c2NyaXB0b3JUeXBlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMzY8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRGVzY3Jp
cHRvclN1YnR5cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDUgKEZSQU1FX1VO
Q09NUFJFU1NFRCk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoCBiRnJhbWVJbmRleMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqAgYm1DYXBhYmlsaXRpZXPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgMHgwMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgwqDCoCBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdXaWR0aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqA2NDA8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3SGVpZ2h0wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA0ODA8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd01pbkJpdFJhdGXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOTEyMzg0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xh
c3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgZHdNYXhCaXRSYXRlwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDkxMjM4NDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJN
c29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3TWF4VmlkZW9GcmFtZUJ1ZmZlclNpemXCoMKgwqDC
oMKgIDYxNDQwMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqDCoMKgIGR3RGVmYXVsdEZyYW1lSW50ZXJ2YWzCoMKgwqDCoMKgwqDCoMKgIDMzMzMzMzx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJGcmFtZUlu
dGVydmFsVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNDx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3RnJhbWVJbnRlcnZh
bCggMCnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDMzMzMzMzx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3RnJhbWVJbnRlcnZhbCggMSnCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDMzMzMzNDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgIGR3RnJhbWVJbnRlcnZhbCggMinCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDMzMzMzNTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqDCoMKgIGR3RnJhbWVJbnRlcnZhbCggMynCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDMzMzMzNjx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgVmlkZW9TdHJl
YW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkxlbmd0aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA0Mjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJEZXNjcmlwdG9yVHlwZcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDM2PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2NyaXB0b3JTdWJ0eXBlwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA1IChGUkFNRV9VTkNPTVBSRVNTRUQpPHU+PC91Pjx1PjwvdT48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkZyYW1lSW5kZXjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgMjx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJtQ2FwYWJpbGl0aWVzwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MDA8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgU3RpbGwgaW1hZ2UgdW5zdXBw
b3J0ZWQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDC
oCB3V2lkdGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgMzUyPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDC
oMKgwqAgd0hlaWdodMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgMjg4PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqAgZHdNaW5CaXRSYXRlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDkxMjM4NDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIGR3TWF4Qml0UmF0ZcKgwqDCoMKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqA5MTIz
ODQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBk
d01heFZpZGVvRnJhbWVCdWZmZXJTaXplwqDCoMKgwqDCoCAyMDI3NTI8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd0RlZmF1bHRGcmFtZUludGVy
dmFswqDCoMKgwqDCoMKgwqDCoCAzMzMzMzM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRnJhbWVJbnRlcnZhbFR5cGXCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgwqDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDApwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAzMzMzMzM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDEpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMzMzMzQ8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIMKgwqBkd0ZyYW1l
SW50ZXJ2YWwoIDIpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMzMzMzU8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDMp
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMzMzMzY8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj7CoMKgwqDCoMKgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9y
Ojx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJM
ZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgNDI8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDC
oCBiRGVzY3JpcHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAz
Njx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJE
ZXNjcmlwdG9yU3VidHlwZcKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgNSAoRlJB
TUVfVU5DT01QUkVTU0VEKTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKg
wqDCoMKgwqDCoMKgIGJGcmFtZUluZGV4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7C
oMKgwqDCoMKgwqDCoCBibUNhcGFiaWxpdGllc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAweDAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqDCoMKgIFN0aWxsIGltYWdlIHVuc3VwcG9ydGVkPHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgd1dpZHRowqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDMyMDx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdIZWlnaHTCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI0MDx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3TWluQml0UmF0ZcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5MTIzODQ8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd01heEJpdFJhdGXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOTEyMzg0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xh
c3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgZHdNYXhWaWRlb0ZyYW1lQnVmZmVyU2l6ZcKg
wqDCoMKgwqAgMTUzNjAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbMKgwqDCoMKgwqDCoMKgwqAgMzMzMzMz
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkZy
YW1lSW50ZXJ2YWxUeXBlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA0PHU+PC91
Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgZHdGcmFtZUlu
dGVydmFsKCAwKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMzMzMzMzPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgZHdGcmFtZUludGVydmFsKCAxKcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMzMzMzM0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgZHdGcmFtZUludGVydmFsKCAyKcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgMzMzMzM1PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqAgZHdGcmFtZUludGVydmFsKCAzKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMzMz
MzM2PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBWaWRl
b1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiTGVuZ3RowqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDQyPHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2NyaXB0b3JUeXBlwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMzY8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRGVzY3JpcHRvclN1YnR5cGXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDUgKEZSQU1FX1VOQ09NUFJFU1NFRCk8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRnJhbWVJbmRleMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA0PHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYm1DYXBhYmlsaXRp
ZXPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgwMDx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBTdGlsbCBpbWFnZSB1
bnN1cHBvcnRlZDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqDCoMKgIHdXaWR0aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAxNzY8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoCB3SGVpZ2h0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAxNDQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7C
oMKgwqDCoMKgwqDCoCBkd01pbkJpdFJhdGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgOTEyMzg0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqAgZHdNYXhCaXRSYXRlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDkxMjM4NDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIGR3TWF4VmlkZW9GcmFtZUJ1ZmZlclNpemXCoMKgwqDCoMKgwqAgNTA2ODg8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIMKgwqBkd0RlZmF1bHRGcmFt
ZUludGVydmFswqDCoMKgwqDCoMKgwqDCoCAzMzMzMzM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRnJhbWVJbnRlcnZhbFR5cGXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDApwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAzMzMzMzM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKg
wqDCoMKgwqDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDEpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMzMz
MzQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBk
d0ZyYW1lSW50ZXJ2YWwoIDIpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMzMzMzU8dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd0ZyYW1lSW50ZXJ2
YWwoIDMpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMzMzMzY8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNj
cmlwdG9yOjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgNDI8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoCBiRGVzY3JpcHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAzNjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIGJEZXNjcmlwdG9yU3VidHlwZcKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
NSAoRlJBTUVfVU5DT01QUkVTU0VEKTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgIGJGcmFtZUluZGV4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDU8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgwqDCoCBibUNhcGFiaWxpdGllc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAweDAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoMKgwqDCoMKgIFN0aWxsIGltYWdlIHVuc3VwcG9ydGVkPHU+PC91Pjx1PjwvdT48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgd1dpZHRowqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDE2MDx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdIZWlnaHTCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEyMDx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3TWluQml0UmF0
ZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5MTIzODQ8dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBkd01heEJpdFJhdGXCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOTEyMzg0PHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgZHdNYXhWaWRlb0ZyYW1lQnVmZmVy
U2l6ZcKgwqDCoMKgwqDCoCAzODQwMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgIGR3RGVmYXVsdEZyYW1lSW50ZXJ2YWzCoMKgwqDCoMKgwqDCoMKg
IDMzMzMzMzx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDC
oMKgIGJGcmFtZUludGVydmFsVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
NDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3
RnJhbWVJbnRlcnZhbCggMCnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDMzMzMzMzx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3RnJhbWVJbnRlcnZh
bCggMSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDMzMzMzNDx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGR3RnJhbWVJbnRlcnZhbCggMinCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDMzMzMzNTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPsKgwqDCoMKgwqDCoMKgIGR3RnJhbWVJbnRlcnZhbCggMynCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDMzMzMzNjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqAgVmlkZW9TdHJlYW1pbmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6PHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkxlbmd0aMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyNjx1PjwvdT48dT48L3U+
PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJEZXNjcmlwdG9yVHlwZcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDM2PHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2NyaXB0b3JTdWJ0eXBlwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzIChTVElMTF9JTUFHRV9GUkFNRSk8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRW5kcG9p
bnRBZGRyZXNzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMDx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJOdW1JbWFnZVNp
emVQYXR0ZXJuc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNTx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdXaWR0aCggMCnCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDY0MDx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdIZWlnaHQoIDApwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNDgwPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgd1dpZHRoKCAxKcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMzUyPHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgd0hlaWdodCggMSnCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyODg8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3V2lkdGgoIDIpwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMjA8dT48L3U+PHU+PC91PjwvcD48
cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3SGVpZ2h0KCAyKcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI0MDx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdXaWR0aCggMynCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDE3Njx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIHdIZWlnaHQoIDMpwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTQ0PHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgd1dpZHRoKCA0KcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTYwPHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgd0hlaWdodCggNCnCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAxMjA8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiTnVtQ29tcHJlc3Npb25QYXR0ZXJuc8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA1PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgwqDCoCBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiTGVuZ3Ro
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Njx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJE
ZXNjcmlwdG9yVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDM2PHU+
PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkRlc2Ny
aXB0b3JTdWJ0eXBlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTMgKENPTE9SRk9S
TUFUKTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKg
IGJDb2xvclByaW1hcmllc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKg
MCAoVW5zcGVjaWZpZWQpPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDC
oMKgwqDCoMKgwqAgYlRyYW5zZmVyQ2hhcmFjdGVyaXN0aWNzwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAwIChVbnNwZWNpZmllZCk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7C
oMKgwqDCoMKgwqDCoCBiTWF0cml4Q29lZmZpY2llbnRzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgMCAoVW5zcGVjaWZpZWQpPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+wqDCoMKgIEludGVyZmFjZSBEZXNjcmlwdG9yOjx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkxlbmd0aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDk8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgIGJEZXNjcmlwdG9yVHlwZcKgwqDCoMKgwqDCoMKgwqAgNDx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkludGVyZmFjZU51bWJlcsKgwqDCoMKgIMKg
wqDCoDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJB
bHRlcm5hdGVTZXR0aW5nwqDCoMKgwqDCoMKgIDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJOdW1FbmRwb2ludHPCoMKgwqDCoMKgwqDCoMKgwqDCoCAx
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiSW50ZXJm
YWNlQ2xhc3PCoMKgwqDCoMKgwqDCoCAxNCBWaWRlbzx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkludGVyZmFjZVN1YkNsYXNzwqDCoMKgwqDCoCAyIFZp
ZGVvIFN0cmVhbWluZzx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDC
oMKgwqAgYkludGVyZmFjZVByb3RvY29swqDCoMKgwqDCoCAwPHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBpSW50ZXJmYWNlwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqAgRW5kcG9pbnQgRGVzY3JpcHRvcjo8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgwqDCoCBiTGVuZ3RowqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgNzx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKg
IGJEZXNjcmlwdG9yVHlwZcKgwqDCoMKgwqDCoMKgwqAgNTx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJFbmRwb2ludEFkZHJlc3PCoMKgwqDCoCAw
eDgxwqAgRVAgMSBJTjx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDC
oMKgwqDCoMKgIGJtQXR0cmlidXRlc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNTx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBUcmFuc2ZlciBU
eXBlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJc29jaHJvbm91czx1PjwvdT48dT48L3U+PC9wPjxw
IGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgwqDCoCBTeW5jaCBUeXBlwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBBc3luY2hyb25vdXM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFz
cz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgVXNhZ2UgVHlwZcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgRGF0YTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwi
PsKgwqDCoMKgwqDCoMKgIHdNYXhQYWNrZXRTaXplwqDCoMKgwqAgMHgxNDAwwqAgM3ggMTAyNCBi
eXRlczx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKg
IGJJbnRlcnZhbMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9w
PjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoCBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJMZW5ndGjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1z
b05vcm1hbCI+wqDCoMKgwqDCoCBiRGVzY3JpcHRvclR5cGXCoMKgwqDCoMKgIMKgwqDCoDQ8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZhY2VO
dW1iZXLCoMKgwqDCoMKgwqDCoCAxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoCBiQWx0ZXJuYXRlU2V0dGluZ8KgwqDCoMKgwqDCoCAyPHU+PC91Pjx1Pjwv
dT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiTnVtRW5kcG9pbnRzwqDCoMKg
wqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKg
wqDCoMKgwqAgYkludGVyZmFjZUNsYXNzwqDCoMKgwqDCoMKgwqAgMTQgVmlkZW88dT48L3U+PHU+
PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZhY2VTdWJDbGFz
c8KgwqDCoMKgwqAgMiBWaWRlbyBTdHJlYW1pbmc8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZhY2VQcm90b2NvbMKgwqDCoMKgwqAgMDx1Pjwv
dT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgaUludGVyZmFjZcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDA8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoCDCoEVuZHBvaW50IERlc2NyaXB0b3I6PHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkxlbmd0aMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDc8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgwqDCoCBiRGVzY3JpcHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgIDU8dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRW5kcG9pbnRB
ZGRyZXNzwqDCoMKgwqAgMHg4McKgIEVQIDEgSU48dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBibUF0dHJpYnV0ZXPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDU8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDC
oMKgwqAgVHJhbnNmZXIgVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSXNvY2hyb25vdXM8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgU3lu
Y2ggVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQXN5bmNocm9ub3VzPHU+PC91Pjx1
PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqDCoMKgIFVzYWdlIFR5
cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERhdGE8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3TWF4UGFja2V0U2l6ZcKgwqDCoMKgIDB4
MTM0MMKgIDN4IDgzMiBieXRlczx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwi
PsKgwqDCoMKgwqDCoMKgIGJJbnRlcnZhbMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1
PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoCBJbnRlcmZhY2UgRGVz
Y3JpcHRvcjo8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
IGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5PHU+PC91Pjx1PjwvdT48
L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiRGVzY3JpcHRvclR5cGXCoMKgwqDC
oMKgwqDCoMKgIDQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgIGJJbnRlcmZhY2VOdW1iZXLCoMKgwqDCoMKgwqDCoCAxPHU+PC91Pjx1PjwvdT48L3A+PHAg
Y2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiQWx0ZXJuYXRlU2V0dGluZ8KgwqDCoMKgwqDC
oCAzPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiTnVt
RW5kcG9pbnRzwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNz
PSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkludGVyZmFjZUNsYXNzwqDCoMKgwqDCoMKgwqAgMTQg
VmlkZW88dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJ
bnRlcmZhY2VTdWJDbGFzc8KgwqDCoMKgwqAgMiBWaWRlbyBTdHJlYW1pbmc8dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZhY2VQcm90b2NvbMKg
wqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKg
wqAgaUludGVyZmFjZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDA8dT48L3U+PHU+PC91Pjwv
cD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIEVuZHBvaW50IERlc2NyaXB0b3I6PHU+
PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKgwqAgYkxlbmd0
aMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDc8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRGVzY3JpcHRvclR5cGXCoMKgwqDCoMKg
wqDCoMKgIDU8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoCBiRW5kcG9pbnRBZGRyZXNzwqDCoMKgwqAgMHg4McKgIEVQIDEgSU48dT48L3U+PHU+PC91
PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBibUF0dHJpYnV0ZXPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDU8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgwqDCoMKgwqAgVHJhbnNmZXIgVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
SXNvY2hyb25vdXM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDC
oMKgwqDCoMKgwqAgU3luY2ggVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQXN5bmNo
cm9ub3VzPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoMKg
wqDCoMKgIFVzYWdlIFR5cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERhdGE8dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCB3TWF4UGFja2V0
U2l6ZcKgwqDCoMKgIDB4MTMwMMKgIDN4IDc2OCBieXRlczx1PjwvdT48dT48L3U+PC9wPjxwIGNs
YXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqDCoMKgIGJJbnRlcnZhbMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgMTx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDC
oCBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgIGJMZW5ndGjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5
PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiRGVzY3Jp
cHRvclR5cGXCoMKgwqDCoMKgwqDCoMKgIDQ8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRlcmZhY2VOdW1iZXLCoMKgwqDCoMKgwqDCoCAxPHU+PC91
Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKgwqDCoCBiQWx0ZXJuYXRlU2V0
dGluZ8KgwqDCoMKgwqDCoCA0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+
wqDCoMKgwqDCoCBiTnVtRW5kcG9pbnRzwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgwqDCoMKgwqAgYkludGVyZmFjZUNsYXNzwqDC
oMKgwqDCoMKgwqAgMTQgVmlkZW88dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFs
Ij7CoMKgwqDCoMKgIGJJbnRlcmZhY2VTdWJDbGFzc8KgwqDCoMKgwqAgMiBWaWRlbyBTdHJlYW1p
bmc8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIGJJbnRl
cmZhY2VQcm90b2NvbMKgwqDCoMKgwqAgMDx1PjwvdT48dT48L3U+PC9wPjxwIGNsYXNzPSJNc29O
b3JtYWwiPsKgwqDCoMKgwqAgaUludGVyZmFjZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDA8
dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgIEVuZHBvaW50
IERlc2NyaXB0b3I6PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqDCoMKg
wqDCoMKgwqAgYkxlbmd0aMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgwqDCoDc8dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiRGVzY3JpcHRv
clR5cGXCoMKgwqDCoMKgwqDCoMKgIDU8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9y
bWFsIj7CoMKgwqDCoMKgwqDCoCBiRW5kcG9pbnRBZGRyZXNzwqDCoMKgwqAgMHg4McKgIEVQIDEg
SU48dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBi
bUF0dHJpYnV0ZXPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDU8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgVHJhbnNmZXIgVHlwZcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgSXNvY2hyb25vdXM8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNv
Tm9ybWFsIj7CoMKgwqDCoMKgwqDCoMKgwqAgU3luY2ggVHlwZcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgQXN5bmNocm9ub3VzPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqDCoMKgwqDCoMKgwqDCoMKgIFVzYWdlIFR5cGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIERhdGE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKg
wqDCoCB3TWF4UGFja2V0U2l6ZcKgwqDCoMKgIDB4MTQwMMKgIDN4IDEwMjQgYnl0ZXM8dT48L3U+
PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoMKgwqDCoMKgwqDCoCBiSW50ZXJ2YWzC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDE8dT48L3U+PHU+PC91PjwvcD48cCBjbGFzcz0i
TXNvTm9ybWFsIj5EZXZpY2UgUXVhbGlmaWVyIChmb3Igb3RoZXIgZGV2aWNlIHNwZWVkKTo8dT48
L3U+PHU+PC91PjwvcD48cCBjbGFzcz0iTXNvTm9ybWFsIj7CoCBiTGVuZ3RowqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDEwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1h
bCI+wqAgYkRlc2NyaXB0b3JUeXBlwqDCoMKgwqDCoMKgwqDCoCA2PHU+PC91Pjx1PjwvdT48L3A+
PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgYmNkVVNCwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAyLjAwPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgYkRldmljZUNs
YXNzwqDCoMKgwqDCoMKgwqDCoMKgIDIzOSBNaXNjZWxsYW5lb3VzIERldmljZTx1PjwvdT48dT48
L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgIGJEZXZpY2VTdWJDbGFzc8KgwqDCoMKgwqDC
oMKgwqAgMiA/PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgYkRldmlj
ZVByb3RvY29swqDCoMKgwqDCoMKgwqDCoCAxIEludGVyZmFjZSBBc3NvY2lhdGlvbjx1PjwvdT48
dT48L3U+PC9wPjxwIGNsYXNzPSJNc29Ob3JtYWwiPsKgIGJNYXhQYWNrZXRTaXplMMKgwqDCoMKg
wqDCoMKgIDY0PHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05vcm1hbCI+wqAgYk51bUNv
bmZpZ3VyYXRpb25zwqDCoMKgwqDCoCAxPHU+PC91Pjx1PjwvdT48L3A+PHAgY2xhc3M9Ik1zb05v
cm1hbCI+RGV2aWNlIFN0YXR1czrCoMKgwqDCoCAweDAwMDA8dT48L3U+PHU+PC91PjwvcD48cCBj
bGFzcz0iTXNvTm9ybWFsIj7CoCAoQnVzIFBvd2VyZWQpPHU+PC91Pjx1PjwvdT48L3A+PGRpdiBj
bGFzcz0iZ21haWwteWo2cW8iPjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsLWFkTCI+PC9kaXY+PC9k
aXY+PGRpdiBjbGFzcz0iZ21haWwtYWRMIj48L2Rpdj48L2Rpdj48ZGl2IGNsYXNzPSJnbWFpbC1h
ZEwiPjwvZGl2PjwvZGl2PjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsLWhpIiBzdHlsZT0iYm9yZGVy
LWJvdHRvbS1sZWZ0LXJhZGl1czoxcHg7Ym9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6MXB4O3Bh
ZGRpbmc6MHB4O3dpZHRoOmF1dG87YmFja2dyb3VuZDpyZ2IoMjQyLDI0MiwyNDIpO21hcmdpbjow
cHgiPjwvZGl2PjwvZGl2PjwvZGl2PjxiciBjbGFzcz0iZ21haWwtQXBwbGUtaW50ZXJjaGFuZ2Ut
bmV3bGluZSI+PC9kaXY+DQo=
--00000000000057fe770595a9dd9e--


--===============7096846977900848729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7096846977900848729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============7096846977900848729==--

