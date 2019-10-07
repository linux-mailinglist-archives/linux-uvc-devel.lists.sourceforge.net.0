Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2BCCE36C
	for <lists+linux-uvc-devel@lfdr.de>; Mon,  7 Oct 2019 15:26:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iHT1n-0004kX-TA; Mon, 07 Oct 2019 13:26:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <phlomos@gmail.com>) id 1iHT1m-0004kP-52
 for linux-uvc-devel@lists.sourceforge.net; Mon, 07 Oct 2019 13:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Mime-Version:To:Date:Message-Id:Subject:
 Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CmRQsgtVCcA1bfBySk+B9UB3dbQTEq9EJa2mWGuq/xs=; b=KvgXiRmcQQdlwx+tfO8BSgUszF
 5V4Z+oekxXCV89UniJESS92JToOvyAGfolN+Sy0ixPJkiVgnk6fPjLKIii4d4fyNTnKgff95tjF9U
 iQMX904gi6cItShQ0Tzek+enN5LQBoJOrjLFzcIaRM6B2CspexanysTkAUkk0QCogzIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Mime-Version:To:Date:Message-Id:Subject:Content-Type:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CmRQsgtVCcA1bfBySk+B9UB3dbQTEq9EJa2mWGuq/xs=; b=C
 yJ790ZKJUpG5mdQCfS3QvX0fDM21ZfPmjO9dqPLoGmbmdK0d7qDKtwgeW5vC8gbhdHASf6zo0YHW9
 /s53+4cQHbziHcWXYQR0SIOgNaG8BDEFFGwY7RqmH4XJpWpB39wFX2H1+CvuWYqQdFklmDSzce09r
 a/FBMuEog+rzgTbs=;
Received: from mail-ed1-f45.google.com ([209.85.208.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iHT1i-008hwF-V4
 for linux-uvc-devel@lists.sourceforge.net; Mon, 07 Oct 2019 13:26:18 +0000
Received: by mail-ed1-f45.google.com with SMTP id c4so12454986edl.0
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 07 Oct 2019 06:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:message-id:date:to:mime-version;
 bh=CmRQsgtVCcA1bfBySk+B9UB3dbQTEq9EJa2mWGuq/xs=;
 b=cyRZakbjIxJxogk1XHs2MrMMOpZzKEIy+U11+kF74Fm5JtV4pgpZzNuST47gzMOUhQ
 NIw77Fa6uihMCTUT0rG1sKYlY9wsTpetxx7e/l8UOvKurtIhgIqW1b9vtQ21iFwCTu6M
 RcuytEsmgaydQElr3UN81clo+Spl1e79F3obHPSv+QxKOth4761S3ofA1wyGvTEBZMtV
 F3vZxBDKJx8n+bqYhf6QrLjZ2jcOqLU8C0JuJ0pFqnTGy/s74f/TZux8UHom8etwqDlB
 wqywhPVilBlognLdhBLrs4j8iVNi/d2HkLn6jp7aKeiPileu9lyvcVFN3vdPzXlwsyt1
 djuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:message-id:date:to:mime-version;
 bh=CmRQsgtVCcA1bfBySk+B9UB3dbQTEq9EJa2mWGuq/xs=;
 b=cP2ag+VZI9R2E4QVMhsYV5dpVmvEsni1OA4sR21eC/XATH5wkMdIlQTmdLj9m7Ef5C
 cizD9MbJdRr5vCz+R2o6wv3QKaedJb1tMBZZu36Ys46iDfc8hfZ3n/RbWy0PdFROuZID
 e4VtnUHaQfYENwmd9PNXFZofI5gRVK4yOGKExY17FGtWvytghuuL6wbsaqUDOY/FOehC
 oVXm8V7n60HgWmmpAsMp7g/AyiDqvlrDHDFt8cjveciid4f1ySabywnmuhDVDUFHXNEt
 u0M1ZIHHJPOJW6fbP/Ci4t9LloU4N/e1kyiaW8HsQxUSZEhwkkCV/FI9wnchjOaaR0Yc
 ZbCQ==
X-Gm-Message-State: APjAAAWZfm96ibIsC+y2wSa4pMt5Y+Ci9UuOESYQDlgr1UDWbu9TObz0
 v+WgKYhuJy9X0Pk7PKRCNjPkq494
X-Google-Smtp-Source: APXvYqy3GmBAExH00ba/hNcyJAH3lmxTKCmduZrIxnQzno/CL9kXNVUCcHtuyZBxWJk//rC3gFilPQ==
X-Received: by 2002:a50:fa09:: with SMTP id b9mr29039161edq.165.1570454767641; 
 Mon, 07 Oct 2019 06:26:07 -0700 (PDT)
Received: from cmumac2.unige.ch (cmumac2.unige.ch. [129.194.88.23])
 by smtp.gmail.com with ESMTPSA id 60sm3334870edg.10.2019.10.07.06.26.05
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 06:26:06 -0700 (PDT)
From: =?utf-8?Q?Heiri_M=C3=BCller?= <phlomos@gmail.com>
X-Priority: 5
Message-Id: <BB396BFE-331D-48D6-8D22-C5717D0762C3@gmail.com>
Date: Mon, 7 Oct 2019 15:26:03 +0200
To: STB via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
X-Mailer: Apple Mail (2.3445.104.11)
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (phlomos[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iHT1i-008hwF-V4
Subject: [linux-uvc-devel] ARC International
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
Content-Type: multipart/mixed; boundary="===============6566277610168211265=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net


--===============6566277610168211265==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2A3120E5-47F1-462F-B5B3-3CBE077957F3"


--Apple-Mail=_2A3120E5-47F1-462F-B5B3-3CBE077957F3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello,


I have a lot of problems with this camera: 05a3:9230

# lsusb -d 05a3:9230 -v

Bus 003 Device 004: ID 05a3:9230 ARC International Camera
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2=20
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x05a3 ARC International
  idProduct          0x9230 Camera
  bcdDevice            1.00
  iManufacturer           2 HD Camera Manufacturer
  iProduct                1 USB 2.0 Camera
  iSerial                 0=20
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x028f
    bNumInterfaces          2
    bConfigurationValue     1
    iConfiguration          0=20
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
      bFunctionProtocol       0=20
      iFunction               5 HD USB Camera
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0=20
      iInterface              5 HD USB Camera
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.00
        wTotalLength       0x004d
        dwClockFrequency       15.000000MHz
        bInCollection           1
        baInterfaceNr( 0)       1
      VideoControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             5
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               3
        iTerminal               0=20
      VideoControl Interface Descriptor:
        bLength                26
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 3
        guidExtensionCode         {28f03370-6311-4a2e-ba2c-6890eb334016}
        bNumControl             8
        bNrPins                 1
        baSourceID( 0)          2
        bControlSize            1
        bmControls( 0)       0x1f
        iExtension              0=20
      VideoControl Interface Descriptor:
        bLength                18
        bDescriptorType        36
        bDescriptorSubtype      2 (INPUT_TERMINAL)
        bTerminalID             1
        wTerminalType      0x0201 Camera Sensor
        bAssocTerminal          0
        iTerminal               0=20
        wObjectiveFocalLengthMin      0
        wObjectiveFocalLengthMax      0
        wOcularFocalLength            0
        bControlSize                  3
        bmControls           0x0002006e
          Auto-Exposure Mode
          Auto-Exposure Priority
          Exposure Time (Absolute)
          Focus (Absolute)
          Focus (Relative)
          Focus, Auto
      VideoControl Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      5 (PROCESSING_UNIT)
      Warning: Descriptor too short
        bUnitID                 2
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
        iProcessing             0=20
        bmVideoStandards     0x55
          None
          PAL - 625/50
          NTSC - 625/50
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
      bInterfaceProtocol      0=20
      iInterface              5 HD USB Camera
      VideoStreaming Interface Descriptor:
        bLength                            15
        bDescriptorType                    36
        bDescriptorSubtype                  1 (INPUT_HEADER)
        bNumFormats                         2
        wTotalLength                   0x01b3
        bEndPointAddress                  129
        bmInfo                              0
        bTerminalLink                       5
        bStillCaptureMethod                 2
        bTriggerSupport                     0
        bTriggerUsage                       0
        bControlSize                        1
        bmaControls( 0)                     0
        bmaControls( 1)                     0
      VideoStreaming Interface Descriptor:
        bLength                            11
        bDescriptorType                    36
        bDescriptorSubtype                  6 (FORMAT_MJPEG)
        bFormatIndex                        1
        bNumFrameDescriptors                6
        bFlags                              0
          Fixed-size samples: No
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
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                1028651672
        dwMaxBitRate                1028651672
        dwMaxVideoFrameBufferSize     4147789
        dwDefaultFrameInterval         322580
        bFrameIntervalType                  1
        dwFrameInterval( 0)            322580
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                590881431
        dwMaxBitRate                590881431
        dwMaxVideoFrameBufferSize      614989
        dwDefaultFrameInterval          83263
        bFrameIntervalType                  1
        dwFrameInterval( 0)             83263
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                461082720
        dwMaxBitRate                461082720
        dwMaxVideoFrameBufferSize      960589
        dwDefaultFrameInterval         166666
        bFrameIntervalType                  1
        dwFrameInterval( 0)            166666
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                885018720
        dwMaxBitRate                885018720
        dwMaxVideoFrameBufferSize     1843789
        dwDefaultFrameInterval         166666
        bFrameIntervalType                  1
        dwFrameInterval( 0)            166666
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                          1024
        dwMinBitRate                650263192
        dwMaxBitRate                650263192
        dwMaxVideoFrameBufferSize     2622029
        dwDefaultFrameInterval         322580
        bFrameIntervalType                  1
        dwFrameInterval( 0)            322580
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                148144791
        dwMaxBitRate                148144791
        dwMaxVideoFrameBufferSize      154189
        dwDefaultFrameInterval          83263
        bFrameIntervalType                  1
        dwFrameInterval( 0)             83263
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
        bNumFrameDescriptors                6
        guidFormat                            =
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
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                199065600
        dwMaxBitRate                199065600
        dwMaxVideoFrameBufferSize     4147200
        dwDefaultFrameInterval        1666666
        bFrameIntervalType                  1
        dwFrameInterval( 0)           1666666
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                152371200
        dwMaxBitRate                152371200
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         322580
        bFrameIntervalType                  1
        dwFrameInterval( 0)            322580
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                161280000
        dwMaxBitRate                161280000
        dwMaxVideoFrameBufferSize      960000
        dwDefaultFrameInterval         476190
        bFrameIntervalType                  1
        dwFrameInterval( 0)            476190
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                132710400
        dwMaxBitRate                132710400
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval        1111111
        bFrameIntervalType                  1
        dwFrameInterval( 0)           1111111
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                          1024
        dwMinBitRate                125829120
        dwMaxBitRate                125829120
        dwMaxVideoFrameBufferSize     2621440
        dwDefaultFrameInterval        1666666
        bFrameIntervalType                  1
        dwFrameInterval( 0)           1666666
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                 38092800
        dwMaxBitRate                 38092800
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         322580
        bFrameIntervalType                  1
        dwFrameInterval( 0)            322580
      VideoStreaming Interface Descriptor:
        bLength                            10
        bDescriptorType                    36
        bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)
        bEndpointAddress                    0
        bNumImageSizePatterns               1
        wWidth( 0)                       1920
        wHeight( 0)                      1080
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
      bInterfaceProtocol      0=20
      iInterface              0=20
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
      bInterfaceProtocol      0=20
      iInterface              0=20
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0100  1x 256 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       3
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0=20
      iInterface              0=20
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0320  1x 800 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       4
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0=20
      iInterface              0=20
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0b20  2x 800 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       5
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0=20
      iInterface              0=20
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x1320  3x 800 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       6
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0=20
      iInterface              0=20
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
  bDeviceSubClass         2=20
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  bNumConfigurations      1
can't get debug descriptor: Resource temporarily unavailable
Device Status:     0x0002
  (Bus Powered)
  Remote Wakeup Enabled

When I connect it, I get the following errors:

kernel: [32787.348442] usb 2-5: new high-speed USB device number 5 using =
xhci_hcd
kernel: [32787.348442] usb 2-5: new high-speed USB device number 5 using =
xhci_hcd
kernel: [32787.564156] usb 2-5: New USB device found, idVendor=3D05a3, =
idProduct=3D9230, bcdDevice=3D 1.00
kernel: [32787.564162] usb 2-5: New USB device strings: Mfr=3D2, =
Product=3D1, SerialNumber=3D0
kernel: [32787.564166] usb 2-5: Product: USB 2.0 Camera
kernel: [32787.564168] usb 2-5: Manufacturer: HD Camera Manufacturer
kernel: [32787.564156] usb 2-5: New USB device found, idVendor=3D05a3, =
idProduct=3D9230, bcdDevice=3D 1.00
kernel: [32787.564162] usb 2-5: New USB device strings: Mfr=3D2, =
Product=3D1, SerialNumber=3D0
kernel: [32787.564166] usb 2-5: Product: USB 2.0 Camera
kernel: [32787.564168] usb 2-5: Manufacturer: HD Camera Manufacturer
mtp-probe: checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"
mtp-probe: checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"
mtp-probe: bus: 2, device: 5 was not an MTP device
mtp-probe: bus: 2, device: 5 was not an MTP device
kernel: [32787.646917] uvcvideo: Found UVC 1.00 device USB 2.0 Camera =
(05a3:9230)
kernel: [32787.646917] uvcvideo: Found UVC 1.00 device USB 2.0 Camera =
(05a3:9230)
kernel: [32787.704217] uvcvideo 2-5:1.0: Entity type for entity =
Extension 3 was not initialized!
kernel: [32787.704219] uvcvideo 2-5:1.0: Entity type for entity =
Processing 2 was not initialized!
kernel: [32787.704221] uvcvideo 2-5:1.0: Entity type for entity Camera 1 =
was not initialized!
kernel: [32787.704286] input: USB 2.0 Camera: HD USB Camera as =
/devices/pci0000:00/0000:00:14.0/usb2/2-5/2-5:1.0/input/input11
kernel: [32787.704372] usbcore: registered new interface driver uvcvideo
kernel: [32787.704373] USB Video Class driver (1.1.1)
kernel: [32787.704217] uvcvideo 2-5:1.0: Entity type for entity =
Extension 3 was not initialized!
kernel: [32787.704219] uvcvideo 2-5:1.0: Entity type for entity =
Processing 2 was not initialized!
kernel: [32787.704221] uvcvideo 2-5:1.0: Entity type for entity Camera 1 =
was not initialized!
kernel: [32787.704286] input: USB 2.0 Camera: HD USB Camera as =
/devices/pci0000:00/0000:00:14.0/usb2/2-5/2-5:1.0/input/input11
kernel: [32787.704372] usbcore: registered new interface driver uvcvideo
kernel: [32787.704373] USB Video Class driver (1.1.1)
mtp-probe: checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"
mtp-probe: checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"
mtp-probe: bus: 2, device: 5 was not an MTP device
mtp-probe: bus: 2, device: 5 was not an MTP device


No picture with guvc:

# guvcview

=3D=3D> /var/log/syslog <=3D=3D
Oct  7 10:02:54 hotspot kernel: [252735.199538] uvcvideo: uvc_v4l2_open
GUVCVIEW: version 2.0.6
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
Oct  7 10:02:54 hotspot kernel: [252735.314695] uvcvideo: Resuming =
interface 0
Oct  7 10:02:54 hotspot kernel: [252735.314698] uvcvideo: Resuming =
interface 1
Oct  7 10:02:54 hotspot kernel: [252735.315246] uvcvideo: =
uvc_v4l2_release
Oct  7 10:02:54 hotspot kernel: [252735.316439] uvcvideo: uvc_v4l2_open
ALSA lib pcm.c:2565:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.rear
ALSA lib pcm.c:2565:(snd_pcm_open_noupdate) Unknown PCM =
cards.pcm.center_lfe
ALSA lib pcm.c:2565:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.side
ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel =
map
Cannot connect to server socket err =3D No such file or directory
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, =
skipping unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, =
skipping unlock
Cannot connect to server socket err =3D No such file or directory
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, =
skipping unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, =
skipping unlock
ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
ALSA lib pulse.c:243:(pulse_connect) PulseAudio: Unable to connect: =
Connection refused

ALSA lib pulse.c:243:(pulse_connect) PulseAudio: Unable to connect: =
Connection refused

ALSA lib pcm_a52.c:823:(_snd_pcm_a52_open) a52 is only for playback
ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type =
for card
ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type =
for card
Cannot connect to server socket err =3D No such file or directory
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, =
skipping unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, =
skipping unlock
Oct  7 10:02:55 hotspot kernel: [252736.084118] uvcvideo: Trying format =
0x47504a4d (MJPG): 640x480.
Oct  7 10:02:55 hotspot kernel: [252736.084120] uvcvideo: Using default =
frame interval 8326.3 us (120.1 fps).
Oct  7 10:02:55 hotspot kernel: [252736.140969] uvcvideo: Trying format =
0x47504a4d (MJPG): 640x480.
Oct  7 10:02:55 hotspot kernel: [252736.140971] uvcvideo: Using default =
frame interval 8326.3 us (120.1 fps).
Oct  7 10:02:55 hotspot kernel: [252736.199682] uvcvideo: uvc_v4l2_mmap
Oct  7 10:02:55 hotspot kernel: [252736.199713] uvcvideo: uvc_v4l2_mmap
Oct  7 10:02:55 hotspot kernel: [252736.199737] uvcvideo: uvc_v4l2_mmap
Oct  7 10:02:55 hotspot kernel: [252736.199761] uvcvideo: uvc_v4l2_mmap
Oct  7 10:02:55 hotspot kernel: [252736.199808] uvcvideo: Setting frame =
interval to 1/25 (400000).
libGL error: No matching fbConfigs or visuals found
libGL error: failed to load driver: swrast
X Error of failed request:  BadValue (integer parameter out of range for =
operation)
  Major opcode of failed request:  149 (GLX)
  Minor opcode of failed request:  3 (X_GLXCreateContext)
  Value in failed request:  0x0
  Serial number of failed request:  94
  Current serial number in output stream:  95
Oct  7 10:02:57 hotspot kernel: [252737.861637] uvcvideo: =
uvc_v4l2_release
Oct  7 10:02:59 hotspot kernel: [252739.865312] uvcvideo: Suspending =
interface 1
Oct  7 10:02:59 hotspot kernel: [252739.865316] uvcvideo: Suspending =
interface 0


Can anybody help me or at least list that camera as non supported?


Thanks for your work!=

--Apple-Mail=_2A3120E5-47F1-462F-B5B3-3CBE077957F3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D"">I have a lot of problems with this =
camera:&nbsp;05a3:9230</div><div class=3D""><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;"><br =
class=3D""></span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;"># lsusb -d 05a3:9230 -v</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; min-height: 13px;"><span =
class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;"></span><br class=3D""></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Bus 003 Device =
004: ID 05a3:9230 ARC International Camera</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Device =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 18</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bcdUSB &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
2.00</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bDeviceClass&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 239 Miscellaneous =
Device</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bDeviceSubClass &nbsp; &nbsp; &nbsp; &nbsp; 2&nbsp;</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bDeviceProtocol &nbsp; &nbsp; &nbsp; &nbsp; 1 Interface =
Association</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; bMaxPacketSize0&nbsp; &nbsp; &nbsp; &nbsp; =
64</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
idVendor &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0x05a3 ARC =
International</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; idProduct&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x9230 Camera</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; bcdDevice&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1.00</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; iManufacturer &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 2 HD Camera Manufacturer</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
iProduct&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 USB =
2.0 Camera</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; iSerial &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; bNumConfigurations&nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
Configuration Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; =
&nbsp; 2</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; wTotalLength &nbsp; &nbsp; &nbsp; 0x028f</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
bNumInterfaces&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
bConfigurationValue &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
iConfiguration&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; bmAttributes &nbsp; &nbsp; &nbsp; &nbsp; 0x80</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; (Bus Powered)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; MaxPower&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 500mA</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; Interface =
Association:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; 11</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bFirstInterface &nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceCount &nbsp; &nbsp; &nbsp; &nbsp; 2</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bFunctionClass &nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bFunctionSubClass &nbsp; &nbsp; &nbsp; 3 Video Interface =
Collection</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bFunctionProtocol &nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iFunction &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5 HD USB Camera</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
Interface Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 0</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 1 Video =
Control</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceProtocol&nbsp; &nbsp; &nbsp; =
0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; iInterface&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
5 HD USB Camera</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoControl Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 13</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; 1 =
(HEADER)</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bcdUVC &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1.00</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wTotalLength &nbsp; =
&nbsp; &nbsp; 0x004d</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwClockFrequency =
&nbsp; &nbsp; &nbsp; 15.000000MHz</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bInCollection &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; baInterfaceNr( 0) &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoControl Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 9</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; 3 =
(OUTPUT_TERMINAL)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bTerminalID &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wTerminalType&nbsp; &nbsp; &nbsp; 0x0101 USB =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bAssocTerminal&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bSourceID &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; iTerminal &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoControl Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 26</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
bDescriptorSubtype&nbsp; &nbsp; &nbsp; 6 =
(EXTENSION_UNIT)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bUnitID &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; guidExtensionCode &nbsp; &nbsp; &nbsp; &nbsp; =
{28f03370-6311-4a2e-ba2c-6890eb334016}</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bNumControl &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
8</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bNrPins &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; baSourceID( 0)&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 2</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bControlSize&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmControls( 0) &nbsp; &nbsp; &nbsp; 0x1f</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; iExtension&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoControl Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 18</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
bDescriptorSubtype&nbsp; &nbsp; &nbsp; 2 =
(INPUT_TERMINAL)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bTerminalID &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wTerminalType&nbsp; &nbsp; &nbsp; 0x0201 Camera =
Sensor</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bAssocTerminal&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; iTerminal &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
wObjectiveFocalLengthMin&nbsp; &nbsp; &nbsp; 0</span></div><div class=3D""=
 style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wObjectiveFocalLengthMax&nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; wOcularFocalLength&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 0</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bControlSize&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
3</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmControls &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x0002006e</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Auto-Exposure =
Mode</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Auto-Exposure Priority</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Exposure Time (Absolute)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Focus (Absolute)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Focus (Relative)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Focus, Auto</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; VideoControl Interface Descriptor:</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 11</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
bDescriptorSubtype&nbsp; &nbsp; &nbsp; 5 =
(PROCESSING_UNIT)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; Warning: Descriptor too =
short</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bUnitID &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 2</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bSourceID &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wMaxMultiplier&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bControlSize&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 2</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmControls &nbsp; &nbsp; =
0x0000177f</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Brightness</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Contrast</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Hue</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Saturation</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Sharpness</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Gamma</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; White Balance =
Temperature</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Backlight =
Compensation</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Gain</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Power Line Frequency</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; White Balance Temperature, Auto</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; iProcessing &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmVideoStandards &nbsp; &nbsp; =
0x55</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; None</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; PAL - 625/50</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; NTSC - 625/50</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; Endpoint Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bEndpointAddress &nbsp; &nbsp; 0x83&nbsp; EP 3 =
IN</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmAttributes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 3</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Transfer Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Interrupt</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Synch Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; None</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Usage Type &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Data</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wMaxPacketSize &nbsp; =
&nbsp; 0x0010&nbsp; 1x 16 bytes</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bInterval &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
6</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; Interface Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 0</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 2 Video =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bInterfaceProtocol&nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iInterface&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5 HD USB Camera</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; VideoStreaming Interface Descriptor:</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 15</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1 (INPUT_HEADER)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bNumFormats &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wTotalLength &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x01b3</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bEndPointAddress&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
129</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmInfo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bTerminalLink &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bStillCaptureMethod &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 2</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bTriggerSupport &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bTriggerUsage &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bControlSize&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmaControls( 0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bmaControls( 1) &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoStreaming Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 11</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 6 (FORMAT_MJPEG)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFormatIndex&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bNumFrameDescriptors&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 6</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bFlags&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Fixed-size =
samples: No</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
bDefaultFrameIndex&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bAspectRatioX &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bAspectRatioY &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmInterlaceFlags &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Interlaced =
stream or variable: No</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Fields per =
frame: 1 fields</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Field 1 first: =
No</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Field pattern: Field 1 only</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bCopyProtect&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; VideoStreaming Interface Descriptor:</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 30</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 7 (FRAME_MJPEG)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1920</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1080</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1028651672</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1028651672</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize &nbsp; &nbsp; 4147789</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval &nbsp; &nbsp; &nbsp; &nbsp; =
322580</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 322580</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 30</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7 (FRAME_MJPEG)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 640</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 480</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
590881431</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
590881431</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize&nbsp; &nbsp; &nbsp; 614989</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
83263</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 83263</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 30</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7 (FRAME_MJPEG)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 800</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 600</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
461082720</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
461082720</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize&nbsp; &nbsp; &nbsp; 960589</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval &nbsp; &nbsp; &nbsp; &nbsp; =
166666</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 166666</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 30</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7 (FRAME_MJPEG)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1280</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 720</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
885018720</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
885018720</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize &nbsp; &nbsp; 1843789</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval &nbsp; &nbsp; &nbsp; &nbsp; =
166666</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 166666</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 30</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7 (FRAME_MJPEG)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1280</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1024</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
650263192</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
650263192</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize &nbsp; &nbsp; 2622029</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval &nbsp; &nbsp; &nbsp; &nbsp; =
322580</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 322580</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 30</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7 (FRAME_MJPEG)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 320</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 240</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
148144791</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
148144791</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize&nbsp; &nbsp; &nbsp; 154189</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
83263</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 83263</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 6</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 13 (COLORFORMAT)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bColorPrimaries &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1 (BT.709,sRGB)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bTransferCharacteristics&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1 (BT.709)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bMatrixCoefficients =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4 (SMPTE 170M =
(BT.601))</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 27</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4 =
(FORMAT_UNCOMPRESSED)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bFormatIndex&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 2</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bNumFrameDescriptors&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 6</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; guidFormat&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; =
{32595559-0000-0010-8000-00aa00389b71}</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bBitsPerPixel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 16</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDefaultFrameIndex&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bAspectRatioX &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bAspectRatioY &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmInterlaceFlags &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Interlaced =
stream or variable: No</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Fields per =
frame: 2 fields</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Field 1 first: =
No</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Field pattern: Field 1 only</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bCopyProtect&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; VideoStreaming Interface Descriptor:</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 30</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 5 (FRAME_UNCOMPRESSED)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1920</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1080</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
199065600</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
199065600</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize &nbsp; &nbsp; 4147200</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval&nbsp; &nbsp; &nbsp; &nbsp; =
1666666</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1666666</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoStreaming Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 30</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 5 (FRAME_UNCOMPRESSED)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 640</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 480</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
152371200</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
152371200</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize&nbsp; &nbsp; &nbsp; 614400</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval &nbsp; &nbsp; &nbsp; &nbsp; =
322580</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 322580</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 30</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5 =
(FRAME_UNCOMPRESSED)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bFrameIndex &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 3</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Still image unsupported</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wWidth&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wHeight &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 600</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwMinBitRate&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 161280000</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
161280000</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize&nbsp; &nbsp; &nbsp; 960000</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval &nbsp; &nbsp; &nbsp; &nbsp; =
476190</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 476190</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 30</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5 =
(FRAME_UNCOMPRESSED)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bFrameIndex &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 4</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; Still image unsupported</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wWidth &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1280</span></div><div class=3D""=
 style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wHeight &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 720</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwMinBitRate&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 132710400</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
132710400</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize &nbsp; &nbsp; 1843200</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval&nbsp; &nbsp; &nbsp; &nbsp; =
1111111</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1111111</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoStreaming Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 30</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 5 (FRAME_UNCOMPRESSED)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1280</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1024</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
125829120</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMaxBitRate&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
125829120</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize &nbsp; &nbsp; 2621440</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval&nbsp; &nbsp; &nbsp; &nbsp; =
1666666</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1666666</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoStreaming Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 30</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 5 (FRAME_UNCOMPRESSED)</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bFrameIndex &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bmCapabilities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x00</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Still image =
unsupported</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 320</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wHeight &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 240</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; dwMinBitRate &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
38092800</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; dwMaxBitRate &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 38092800</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; =
dwMaxVideoFrameBufferSize&nbsp; &nbsp; &nbsp; 153600</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwDefaultFrameInterval &nbsp; &nbsp; &nbsp; &nbsp; =
322580</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bFrameIntervalType&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; dwFrameInterval( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 322580</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; VideoStreaming Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; 10</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bDescriptorType&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
36</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bDescriptorSubtype&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3 =
(STILL_IMAGE_FRAME)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bEndpointAddress&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bNumImageSizePatterns &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; wWidth( 0) &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1920</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; wHeight( 0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1080</span></div><div class=3D""=
 style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bNumCompressionPatterns &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; VideoStreaming Interface Descriptor:</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 36</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorSubtype &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 13 (COLORFORMAT)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bColorPrimaries &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 1 (BT.709,sRGB)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bTransferCharacteristics&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1 (BT.709)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bMatrixCoefficients =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4 (SMPTE 170M =
(BT.601))</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; Interface =
Descriptor:</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 2 Video =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bInterfaceProtocol&nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iInterface&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; Endpoint Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bEndpointAddress &nbsp; &nbsp; 0x81&nbsp; EP 1 =
IN</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmAttributes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Transfer Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Isochronous</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Synch Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Asynchronous</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Usage Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Data</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wMaxPacketSize &nbsp; &nbsp; 0x0080&nbsp; 1x 128 =
bytes</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bInterval &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; Interface Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 2</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 2 Video =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bInterfaceProtocol&nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iInterface&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; Endpoint Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bEndpointAddress &nbsp; &nbsp; 0x81&nbsp; EP 1 =
IN</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmAttributes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Transfer Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Isochronous</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Synch Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Asynchronous</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Usage Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Data</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wMaxPacketSize &nbsp; &nbsp; 0x0100&nbsp; 1x 256 =
bytes</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bInterval &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; Interface Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 3</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 2 Video =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bInterfaceProtocol&nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iInterface&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; Endpoint Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bEndpointAddress &nbsp; &nbsp; 0x81&nbsp; EP 1 =
IN</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmAttributes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Transfer Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Isochronous</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Synch Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Asynchronous</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Usage Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Data</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wMaxPacketSize &nbsp; &nbsp; 0x0320&nbsp; 1x 800 =
bytes</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bInterval &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; Interface Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 2 Video =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bInterfaceProtocol&nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iInterface&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; Endpoint Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bEndpointAddress &nbsp; &nbsp; 0x81&nbsp; EP 1 =
IN</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmAttributes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Transfer Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Isochronous</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Synch Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Asynchronous</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Usage Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Data</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wMaxPacketSize &nbsp; &nbsp; 0x0b20&nbsp; 2x 800 =
bytes</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bInterval &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; Interface Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 5</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 2 Video =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bInterfaceProtocol&nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iInterface&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; Endpoint Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bEndpointAddress &nbsp; &nbsp; 0x81&nbsp; EP 1 =
IN</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmAttributes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Transfer Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Isochronous</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Synch Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Asynchronous</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Usage Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Data</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wMaxPacketSize &nbsp; &nbsp; 0x1320&nbsp; 3x 800 =
bytes</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bInterval &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; Interface Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 4</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bInterfaceNumber&nbsp; &nbsp; &nbsp; &nbsp; 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bAlternateSetting &nbsp; &nbsp; &nbsp; 6</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; bNumEndpoints &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceClass&nbsp; &nbsp; &nbsp; &nbsp; 14 =
Video</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; bInterfaceSubClass&nbsp; &nbsp; &nbsp; 2 Video =
Streaming</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; bInterfaceProtocol&nbsp; =
&nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; iInterface&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp;</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; Endpoint Descriptor:</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; bLength &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; =
5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bEndpointAddress &nbsp; &nbsp; 0x81&nbsp; EP 1 =
IN</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bmAttributes&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 5</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; Transfer Type&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; Isochronous</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Synch Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
Asynchronous</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Usage Type =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Data</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; &nbsp; =
&nbsp; &nbsp; wMaxPacketSize &nbsp; &nbsp; 0x1400&nbsp; 3x 1024 =
bytes</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
&nbsp; &nbsp; &nbsp; bInterval &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 1</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">Device =
Qualifier (for other device speed):</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bLength&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
10</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bDescriptorType &nbsp; &nbsp; &nbsp; &nbsp; 6</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; bcdUSB =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.00</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bDeviceClass&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 239 Miscellaneous =
Device</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bDeviceSubClass &nbsp; &nbsp; &nbsp; &nbsp; 2&nbsp;</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bDeviceProtocol &nbsp; &nbsp; &nbsp; &nbsp; 1 Interface =
Association</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; bMaxPacketSize0&nbsp; &nbsp; &nbsp; &nbsp; =
64</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
bNumConfigurations&nbsp; &nbsp; &nbsp; 1</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">can't get debug =
descriptor: Resource temporarily unavailable</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Device Status: =
&nbsp; &nbsp; 0x0002</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; (Bus Powered)</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; Remote =
Wakeup Enabled</span></div></div><div class=3D""><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;"><br =
class=3D""></span></div><div class=3D"">When I connect it, I get the =
following errors:</div><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D""><font face=3D"Menlo" class=3D""><span =
class=3D"" style=3D"font-size: 11px;">kernel: [32787.348442] usb 2-5: =
new high-speed USB device number 5 using =
xhci_hcd</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.348442] usb 2-5: new high-speed USB device number 5 using =
xhci_hcd</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.564156] usb 2-5: New USB device found, idVendor=3D05a3, =
idProduct=3D9230, bcdDevice=3D 1.00</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.564162] usb 2-5: New USB =
device strings: Mfr=3D2, Product=3D1, =
SerialNumber=3D0</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.564166] usb 2-5: Product: USB 2.0 Camera</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.564168] usb 2-5: Manufacturer: =
HD Camera Manufacturer</span></font></div><div class=3D""><font =
face=3D"Menlo" class=3D""><span class=3D"" style=3D"font-size: =
11px;">kernel: [32787.564156] usb 2-5: New USB device found, =
idVendor=3D05a3, idProduct=3D9230, bcdDevice=3D =
1.00</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.564162] usb 2-5: New USB device strings: Mfr=3D2, Product=3D1, =
SerialNumber=3D0</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.564166] usb 2-5: Product: USB 2.0 Camera</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.564168] usb 2-5: Manufacturer: =
HD Camera Manufacturer</span></font></div><div class=3D""><font =
face=3D"Menlo" class=3D""><span class=3D"" style=3D"font-size: =
11px;">mtp-probe: checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">mtp-probe: checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">mtp-probe: bus: 2, device: 5 was not an MTP =
device</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">mtp-probe: bus: =
2, device: 5 was not an MTP device</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.646917] uvcvideo: Found UVC =
1.00 device USB 2.0 Camera (05a3:9230)</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.646917] uvcvideo: Found UVC =
1.00 device USB 2.0 Camera (05a3:9230)</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.704217] uvcvideo 2-5:1.0: =
Entity type for entity Extension 3 was not =
initialized!</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.704219] uvcvideo 2-5:1.0: Entity type for entity Processing 2 was =
not initialized!</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.704221] uvcvideo 2-5:1.0: Entity type for entity Camera 1 was not =
initialized!</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.704286] input: USB 2.0 Camera: HD USB Camera as =
/devices/pci0000:00/0000:00:14.0/usb2/2-5/2-5:1.0/input/input11</span></fo=
nt></div><div class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.704372] usbcore: registered =
new interface driver uvcvideo</span></font></div><div class=3D""><font =
face=3D"Menlo" class=3D""><span class=3D"" style=3D"font-size: =
11px;">kernel: [32787.704373] USB Video Class driver =
(1.1.1)</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.704217] uvcvideo 2-5:1.0: Entity type for entity Extension 3 was =
not initialized!</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.704219] uvcvideo 2-5:1.0: Entity type for entity Processing 2 was =
not initialized!</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.704221] uvcvideo 2-5:1.0: Entity type for entity Camera 1 was not =
initialized!</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">kernel: =
[32787.704286] input: USB 2.0 Camera: HD USB Camera as =
/devices/pci0000:00/0000:00:14.0/usb2/2-5/2-5:1.0/input/input11</span></fo=
nt></div><div class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">kernel: [32787.704372] usbcore: registered =
new interface driver uvcvideo</span></font></div><div class=3D""><font =
face=3D"Menlo" class=3D""><span class=3D"" style=3D"font-size: =
11px;">kernel: [32787.704373] USB Video Class driver =
(1.1.1)</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">mtp-probe: =
checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">mtp-probe: checking bus 2, device 5: =
"/sys/devices/pci0000:00/0000:00:14.0/usb2/2-5"</span></font></div><div =
class=3D""><font face=3D"Menlo" class=3D""><span class=3D"" =
style=3D"font-size: 11px;">mtp-probe: bus: 2, device: 5 was not an MTP =
device</span></font></div><div class=3D""><font face=3D"Menlo" =
class=3D""><span class=3D"" style=3D"font-size: 11px;">mtp-probe: bus: =
2, device: 5 was not an MTP device</span></font></div></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">No picture with guvc:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;"># guvcview</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;"><br =
class=3D""></span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">=3D=3D&gt; /var/log/syslog &lt;=3D=3D</span></div><d=
iv class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: =
11px; line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:54 hotspot kernel: [252735.199538] uvcvideo: =
uvc_v4l2_open</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">GUVCVIEW: version 2.0.6</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">V4L2_CORE: =
(UVCIOC_CTRL_MAP) Error: No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:54 hotspot kernel: [252735.314695] uvcvideo: Resuming interface =
0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:54 hotspot kernel: =
[252735.314698] uvcvideo: Resuming interface 1</span></div><div class=3D""=
 style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:54 hotspot kernel: [252735.315246] uvcvideo: =
uvc_v4l2_release</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:54 hotspot kernel: =
[252735.316439] uvcvideo: uvc_v4l2_open</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">ALSA lib =
pcm.c:2565:(snd_pcm_open_noupdate) Unknown PCM =
cards.pcm.rear</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">ALSA lib pcm.c:2565:(snd_pcm_open_noupdate) =
Unknown PCM cards.pcm.center_lfe</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">ALSA lib =
pcm.c:2565:(snd_pcm_open_noupdate) Unknown PCM =
cards.pcm.side</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">ALSA lib pcm_route.c:869:(find_matching_chmap) =
Found no matching channel map</span></div><div class=3D"" style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Cannot connect to server socket err =3D No such =
file or directory</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Cannot connect to server request =
channel</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">jack =
server is not running or cannot be started</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: =
no-common-ligatures;">JackShmReadWritePtr::~JackShmReadWritePtr - Init =
not done for -1, skipping unlock</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: =
no-common-ligatures;">JackShmReadWritePtr::~JackShmReadWritePtr - Init =
not done for -1, skipping unlock</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Cannot connect to =
server socket err =3D No such file or directory</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Cannot connect to =
server request channel</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">jack server is not running or cannot be =
started</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">JackShmReadWritePtr::~JackShmReadWritePtr - Init =
not done for -1, skipping unlock</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: =
no-common-ligatures;">JackShmReadWritePtr::~JackShmReadWritePtr - Init =
not done for -1, skipping unlock</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">ALSA lib =
pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">ALSA lib =
pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">ALSA lib =
pulse.c:243:(pulse_connect) PulseAudio: Unable to connect: Connection =
refused</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; =
min-height: 13px;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;"></span><br class=3D""></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">ALSA lib =
pulse.c:243:(pulse_connect) PulseAudio: Unable to connect: Connection =
refused</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; =
min-height: 13px;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;"></span><br class=3D""></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">ALSA lib =
pcm_a52.c:823:(_snd_pcm_a52_open) a52 is only for =
playback</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">ALSA =
lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for =
card</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">ALSA =
lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for =
card</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">Cannot =
connect to server socket err =3D No such file or =
directory</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Cannot connect to server request =
channel</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">jack =
server is not running or cannot be started</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: =
no-common-ligatures;">JackShmReadWritePtr::~JackShmReadWritePtr - Init =
not done for -1, skipping unlock</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: =
no-common-ligatures;">JackShmReadWritePtr::~JackShmReadWritePtr - Init =
not done for -1, skipping unlock</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:55 hotspot kernel: [252736.084118] uvcvideo: Trying format =
0x47504a4d (MJPG): 640x480.</span></div><div class=3D"" style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:55 hotspot kernel: =
[252736.084120] uvcvideo: Using default frame interval 8326.3 us (120.1 =
fps).</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:55 hotspot kernel: =
[252736.140969] uvcvideo: Trying format 0x47504a4d (MJPG): =
640x480.</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:55 hotspot kernel: =
[252736.140971] uvcvideo: Using default frame interval 8326.3 us (120.1 =
fps).</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:55 hotspot kernel: =
[252736.199682] uvcvideo: uvc_v4l2_mmap</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:55 hotspot kernel: [252736.199713] uvcvideo: =
uvc_v4l2_mmap</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:55 hotspot kernel: =
[252736.199737] uvcvideo: uvc_v4l2_mmap</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:55 hotspot kernel: [252736.199761] uvcvideo: =
uvc_v4l2_mmap</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:55 hotspot kernel: =
[252736.199808] uvcvideo: Setting frame interval to 1/25 =
(400000).</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">libGL error: No matching fbConfigs or visuals =
found</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">libGL =
error: failed to load driver: swrast</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">X Error of failed =
request:&nbsp; BadValue (integer parameter out of range for =
operation)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; Major opcode of failed request:&nbsp; 149 =
(GLX)</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
Minor opcode of failed request:&nbsp; 3 =
(X_GLXCreateContext)</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">&nbsp; Value in failed request:&nbsp; =
0x0</span></div><div class=3D"" style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo;"><span =
class=3D"" style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; =
Serial number of failed request:&nbsp; 94</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp; Current =
serial number in output stream:&nbsp; 95</span></div><div class=3D"" =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:57 hotspot kernel: [252737.861637] uvcvideo: =
uvc_v4l2_release</span></div><div class=3D"" style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo;"><span class=3D"" style=3D"font-variant-ligatures: =
no-common-ligatures;">Oct&nbsp; 7 10:02:59 hotspot kernel: =
[252739.865312] uvcvideo: Suspending interface 1</span></div><div =
class=3D"" style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo;"><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;">Oct&nbsp; 7 =
10:02:59 hotspot kernel: [252739.865316] uvcvideo: Suspending interface =
0</span></div></div><div class=3D""><span class=3D"" =
style=3D"font-variant-ligatures: no-common-ligatures;"><br =
class=3D""></span></div><div class=3D""><br class=3D""></div><div =
class=3D"">Can anybody help me or at least list that camera as non =
supported?</div><div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D"">Thanks for your =
work!</div></body></html>=

--Apple-Mail=_2A3120E5-47F1-462F-B5B3-3CBE077957F3--


--===============6566277610168211265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6566277610168211265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6566277610168211265==--

