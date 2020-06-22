Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C9C2043BA
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 23 Jun 2020 00:36:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jnV3H-0001LT-Mz; Mon, 22 Jun 2020 22:36:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sur3@gmx.de>) id 1jnV3F-0001LH-Ut
 for linux-uvc-devel@lists.sourceforge.net; Mon, 22 Jun 2020 22:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j4ZvcXlXR60k8dMN5PGCRyHAMQREfets9baYLeBLIM4=; b=iS8HVPefJnzUMy+foxOzu/vOMD
 m1cpmww1bfGQaspNLveiSQHTOFm7aLIhZ6ANccL24BoMK1rUqv7Mqo7diWdmMzrf0Sr0Hya3ZFC4J
 8JBBJxQK0Ue2FU6llUAdLd2CErg+JHgIYUKbXMzWgPbrnL9l5cuUHwCOi7fosncyK2uk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j4ZvcXlXR60k8dMN5PGCRyHAMQREfets9baYLeBLIM4=; b=Y
 yl86NBGMsfjeWDT6VkL+94Kpb8gdrbAxnOYA0QP7eLrKwZq0ejyqW7iVy3IfBXZWYA7X/wfBIQWA/
 sPAX/X9RpvqQFEVYnC+moyHgogeIR/dU70xN9niW/Zsv/zc0X1Rp5gZsxZsx/7DsmlfgGT8+DZdsf
 93dFjvfe+JDilTIc=;
Received: from mout.gmx.net ([212.227.17.22])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jnV3B-00CMco-3i
 for linux-uvc-devel@lists.sourceforge.net; Mon, 22 Jun 2020 22:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1592865374;
 bh=4EP4eD685PBMcDEYxxsSoQ47MgBW6UDjUIIjEULAzUE=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=Yjvkos7rKUfMvwslqMQLVM9xsokWsi61hyEUlS32Y3+9+1EN37s6HEcF8IG3FZ8Ak
 XPEFwm+A2XsMlvyo7XGmNJmUd6y+SZ8v+W7/xXCpDpvM92n3cU88HwKWtZTcyReHG4
 RaB0bhggqvAZo3MBDsrU58dfHDBLV00ZLR+5rJxw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.33] ([95.222.28.115]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MvK0X-1iwdTj1SHx-00rKma for
 <linux-uvc-devel@lists.sourceforge.net>; Tue, 23 Jun 2020 00:36:14 +0200
To: linux-uvc-devel@lists.sourceforge.net
From: sur3@gmx.de
Message-ID: <5d87a3ee-12b8-5fe8-289a-b7c6acde7059@gmx.de>
Date: Tue, 23 Jun 2020 00:35:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-GB
X-Provags-ID: V03:K1:ZcT7m/5b3eKo4bbHRPAvn/XJClLal7zg9HuMqAWRdkTu7Mhi+di
 DvwJfsUsuf3xaqzkV/CWKBaH6xl60GBMa3lrJHHQOhbs1PTfMqv+f9PBSS5hqRBRSoUwCn1
 Fc+HyEwvyzsq9uDqcWH1ac37F6OgQvKsbNAbkBojKH9JDBXKSVprbDn/k+sLJbQNvMwfTRv
 EipHRbVuOEwrI7OODuVUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dg31GyRXETM=:UBZRvS5+c0iGDGmiPgVI0x
 6nYPWAplMRwEqq0Rj2JfUZb/qkLEd0G7T2Jc6NtkZy5eUIXcifyBpqBYTyGdwGWPIUbd9VPnq
 YQS7spLJjACBXnw8gF7EYmo+BjRU0ipGp6gIT9zjrZUl/P2vKlZagsV10fM0Nzj7rOORJ+dag
 Iiy9XLR9f9O4bC3l0040UJkvzwG+E4bFXLZk/ntn3mCbWV8jbbTBVhg+ulufYDMQ6f868B0H7
 uC5Dgz8Q28SNb374ZByHe2fCHsbj6O8YujM7LBD4T0cYO0CU0DLu2U7XYBeVdkz3/87gZl5QO
 +6bX720a01tdJ5SKEVR2iOqOVOPbWNjqLf7787DnbSC3jxIYW2l5XYqdtbqUDP0j/L3vc/DAf
 EbcWVWh6dtS7lOgc+CnIVWta7O/gI6QUL4QnFlMPCZYBvk6WO1ADipVSoj0XMf00RgvTyQv9k
 +ey3otD1WLBWYV5sXbP3oMLEEV/js7pr4mPt2CerVtFvPzAFNPO6ZqA4udHI01NkTAHGrStHK
 88OzERFEkZG9f2Of6Ask6OYX5j1Lk39k87oe7IP59ajuzYBd9lFRyv8pv7ZPGfKMMqvE/cV6M
 zJGyFo1SAJoL16v8tZzgMKVVNeitf33zAlpaVzH29Xw9422LLCL41dJ+BpYhS5BXnrmov41U1
 zhW5sbXX+7H1/GhWyh0t305BCpWyjpu8gDEEFAAhOI34q85JcrqxcwSdiVqSpsWwXQxtenksg
 UXJDWJUAYwRg48tJ9axT1Gh33l8GF2VK/qKoXm47gZU0c48/9mwpf0qGVLHoDZlCQFii4A7YE
 /jaJKud8WugjiLcofl93+v1MbS5yCDuRaM6wg11T+L+rK4r1crlKGuXqphpmWXMDN1ArK/E50
 FrDrjy0dq6WLhunCP7P3USFR4x+Fh3slIlGTWD+vZVjJqzx3P90G8Nxujle+WgLRiHjCOkm/+
 8uBHGAwBzwFsroKGh8rHTkNv16j16ivRlbBkvr23FrGhQi2DjFX1yCbbRlzdwUMzuhVT88Q2l
 U58faeg8zHdjIS0hNFgcozpIjZOp4Mit9feyFijNGcqvHKFpC7ymRrqtffRUEBRS5/Ky3xZ+V
 3E2h0lQJ4GYGEEvR8DPe/P4mAtfVcEapXrc4qpbn6GpEvcNbUAb0T83fzP4iWC2Aj2DUoNwqs
 n8L9s4ijFQWtHEpZyB6B6fFFW7iCvrI5jqG15og04xmLAg2TOqmmngYnuJa2jryT6Uh7g=
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (sur3[at]gmx.de)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (sur3[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jnV3B-00CMco-3i
Subject: [linux-uvc-devel] usb quirks for 05e3:0515
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi I have the device 05e3:0515 which needs usbquirks=0x100.

But even after using this quirks I get the following error messages in
dmesg:
[ 7524.053017] uvcvideo: Failed to query (GET_INFO) UVC control 4 on
unit 1: -32 (exp. 1).
[ 7524.181141] input: USB2.0 Digital Camera: USB2.0 D as
/devices/pci0000:00/0000:00:01.3/0000:03:00.0/usb1/1-14/1-14:1.0/input/input101
[ 7524.500066] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit
1: -32 (exp. 4).

Are there additional quirks for those errors?
Also the device seems to disconnect itself sometimes:
[ 7750.836910] usb 1-14: USB disconnect, device number 99
[ 7753.968606] usb 1-14: new high-speed USB device number 100 using xhci_hcd


lsusb -v:

Bus 001 Device 096: ID 05e3:0515 Genesys Logic, Inc.
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x05e3 Genesys Logic, Inc.
  idProduct          0x0515
  bcdDevice            6.16
  iManufacturer           0
  iProduct                1 USB2.0 Digital Camera
  iSerial                 1 USB2.0 Digital Camera
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x01a9
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
      iFunction               1 USB2.0 Digital Camera
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0
      iInterface              1 USB2.0 Digital Camera
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
        bmControls           0x00000008
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
        bmControls     0x0000177f
          Brightness
          Contrast
          Hue
          Saturation
          Sharpness
          Gamma
          White Balance Temperature
          Backlight Compensation
          Gain
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
        wTotalLength                   0x0101
        bEndPointAddress                  129
        bmInfo                              0
        bTerminalLink                       4
        bStillCaptureMethod                 2
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
        guidFormat
{32595559-0000-0010-8000-00aa00389b71}
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
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 15360000
        dwMaxBitRate                 15360000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         400000
        bFrameIntervalType                  1
        dwFrameInterval( 0)            400000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            160
        wHeight                           120
        dwMinBitRate                   960000
        dwMaxBitRate                   960000
        dwMaxVideoFrameBufferSize       38400
        dwDefaultFrameInterval         400000
        bFrameIntervalType                  1
        dwFrameInterval( 0)            400000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            176
        wHeight                           144
        dwMinBitRate                  1267200
        dwMaxBitRate                  1267200
        dwMaxVideoFrameBufferSize       50688
        dwDefaultFrameInterval         400000
        bFrameIntervalType                  1
        dwFrameInterval( 0)            400000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                  3840000
        dwMaxBitRate                  3840000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         400000
        bFrameIntervalType                  1
        dwFrameInterval( 0)            400000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            352
        wHeight                           288
        dwMinBitRate                  5068800
        dwMaxBitRate                  5068800
        dwMaxVideoFrameBufferSize      202752
        dwDefaultFrameInterval         400000
        bFrameIntervalType                  1
        dwFrameInterval( 0)            400000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 15360000
        dwMaxBitRate                 15360000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         400000
        bFrameIntervalType                  1
        dwFrameInterval( 0)            400000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)
        bEndpointAddress                    0
        bNumImageSizePatterns               6
        wWidth( 0)                        640
        wHeight( 0)                       480
        wWidth( 1)                        160
        wHeight( 1)                       120
        wWidth( 2)                        176
        wHeight( 2)                       144
        wWidth( 3)                        320
        wHeight( 3)                       240
        wWidth( 4)                        352
        wHeight( 4)                       288
        wWidth( 5)                        640
        wHeight( 5)                       480
        bNumCompressionPatterns             0
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
can't get debug descriptor: Resource temporarily unavailable
Device Status:     0x0000
  (Bus Powered)


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
