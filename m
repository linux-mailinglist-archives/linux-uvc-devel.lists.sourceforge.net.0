Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F36591BBA21
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 28 Apr 2020 11:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:
	Message-ID:Date:In-Reply-To:References:MIME-Version:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ASc8tWTcVH+vlj5Xa/Mw/AvF/iD5y7pmq/hjxbVIAzg=; b=CVxXD3ctmdQ3IIY84g6bmmtNY
	9mpQV4p/ldfXTGiHHnDMSeKEsAv964JUjKiXMPGZFaTSkShod3UPiC6fuCm83qIDb1teipeV1mSuU
	dRkblwm5dtxijVaClEYl0CjXxq/YFY33ddt+ThZwdcm59k66Y+e6wV+rjrNnu6D6LYdx8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jTMmR-0006kK-J6; Tue, 28 Apr 2020 09:43:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <danieltmbecker@googlemail.com>) id 1jTMmP-0006kC-Cy
 for linux-uvc-devel@lists.sourceforge.net; Tue, 28 Apr 2020 09:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x+WJ2lEoTyhr0vJ2ll3eYqN33ZvfTBY7ehCLyGYwl24=; b=k41ipCfHWfPockO2Lvw+5Od+P
 KhBI/9kNZr1kgPvDhwCMPviNswOenKKA1/8fajeb/+hXrysmUSSYgpoO6j7CJVEdwJWeXZ5cmmQBz
 Hs+TpntcOO5CNqYPHHjKMwYJmT0sQyTh+R52sjcCVkm0DFbK+gLJEUNd0WgI3TAsGesZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x+WJ2lEoTyhr0vJ2ll3eYqN33ZvfTBY7ehCLyGYwl24=; b=U5yzQUYFCi2DuRDmU9ewmfwQPZ
 e5QcYmH39Iefng5TLaatiMxkeUR9FCdHKUsZSICYOfCXSRKmuzYf8ReEDKjZCdTJAoEH8nYIxjw4p
 AUJYtMm5S/ALpgSik4BJIvvwsshTuUNfQ4p8WxHMkWFPHgo/dmiBsQAM4J422aBsOwoc=;
Received: from mail-ej1-f49.google.com ([209.85.218.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jTMmN-001Mfr-8o
 for linux-uvc-devel@lists.sourceforge.net; Tue, 28 Apr 2020 09:43:53 +0000
Received: by mail-ej1-f49.google.com with SMTP id s9so16753514eju.1
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 28 Apr 2020 02:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=x+WJ2lEoTyhr0vJ2ll3eYqN33ZvfTBY7ehCLyGYwl24=;
 b=eZaag50PyEryKOnG3FN4DxqQUnSAZENduuKGNU3ZMQALFr6gI+hXJWpTFVLTkpn06i
 RM2Zvic/MYru2Wu6+/tvvFh0dXJqfKOWnbmTwHRbtTXg+C1S1s7htnIcs+l02Q26q40g
 LnfIksxuDG760CNhKiykhs6HSS5Hr2a/byv4rtCpvuyRkqkWBEZmHTaoPvwtoRxC1jjq
 mbVvgJ++5W0JnT1+nz2PFNZXlvIfznUa7xDI4CEqdOQsOMiYoXWLZYfqkfQjt+YUw/gX
 DSYJsrVmhrDj1t12V5BKH8TLpS6nnXUeziOS8eLtQEBhE6iHz0k6NM3HwrKpJlJE29e4
 duvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=x+WJ2lEoTyhr0vJ2ll3eYqN33ZvfTBY7ehCLyGYwl24=;
 b=ftOu1HsLu6e/QCywtykyuY8xoqYvQ4yiCRcbT1exMLxdcmjupp7NUTMeW+D/lVexIk
 zDlycdRW2leWm+gbRuXTYbK0mGGHAwOTInQTBL0GgtbeDrZS01xVbX4YTi0kTX+PVxGa
 MqTZhVRrVE/h/zTUHITPrrkR/AFXr76+8lzkNS2NMr+teF/X5UlZFTHIn42fWgR97gUq
 icEsaYeCc75tuXjD4g4yBnDUJs94tYM36eC/Q0uuc8U+jIDqqKQcSVt43Sk5eq/EZunj
 stt6+6KnYFQkGRQOC+oIGjnqJvn+sbaU8fyrVScc6yhu/vvuPyVXgI+/D91GomWwuYsu
 M13Q==
X-Gm-Message-State: AGi0PubPcjmMwucQGI6HJY681o7DqucDY6ZpLGBn/ofSqZBZQdyQD7uH
 q9vN4Ktjul9adDmN7W0yBK/RYfn+OpZcKIamEycykjjF
X-Google-Smtp-Source: APiQypJVViGE/xDJ6W33Ta+yD7h6f1/ncPxp+8YoYX+k94KNXo00EGfHBpkpC+vUeGz+y1v5gj9X04xtw5tcJfOCczM=
X-Received: by 2002:a17:906:eb90:: with SMTP id
 mh16mr24083404ejb.201.1588067024286; 
 Tue, 28 Apr 2020 02:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAMQppX258Gpuv6q8TRsUgSgOA+cgGtPQRuGekwtXKnqf76GrOA@mail.gmail.com>
In-Reply-To: <CAMQppX258Gpuv6q8TRsUgSgOA+cgGtPQRuGekwtXKnqf76GrOA@mail.gmail.com>
Date: Tue, 28 Apr 2020 11:43:32 +0200
Message-ID: <CAMQppX2EVfYFntsQHSa_FQLbC6n9oo6Lmw7LaXnWn2KO7K6h6Q@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (danieltmbecker[at]googlemail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlemail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jTMmN-001Mfr-8o
Subject: Re: [linux-uvc-devel] Zoom Q-Devices
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
From: Daniel Becker via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Daniel Becker <danieltmbecker@googlemail.com>
Content-Type: multipart/mixed; boundary="===============2314794029461015654=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============2314794029461015654==
Content-Type: multipart/alternative; boundary="000000000000dcb7de05a456aa3b"

--000000000000dcb7de05a456aa3b
Content-Type: text/plain; charset="UTF-8"

Addition to the previous email:

dmesg
[174209.898685] usb 3-1: new high-speed USB device number 33 using xhci_hcd
[174209.924609] usb 3-1: New USB device found, idVendor=1686,
idProduct=036c, bcdDevice= 2.00
[174209.924612] usb 3-1: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[174209.924614] usb 3-1: Product: Q2n Web Cam
[174209.924616] usb 3-1: Manufacturer: ZOOM
[174209.924617] usb 3-1: SerialNumber: 0
[174209.926731] uvcvideo: Found UVC 1.00 device Q2n Web Cam (1686:036c)
[174209.928798] uvcvideo 3-1:1.0: Entity type for entity Camera 1 was not
initialized!
[174212.474564] usb 3-1: USB disconnect, device number 33

lsusb
Bus 003 Device 035: ID 1686:036c ZOOM Corporation Q2n Web Cam

lsusb -vv
Bus 003 Device 037: ID 1686:036c ZOOM Corporation Q2n Web Cam
Couldn't open device, some information will be missing
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x1686 ZOOM Corporation
  idProduct          0x036c
  bcdDevice            2.00
  iManufacturer           1
  iProduct                2
  iSerial                 3
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x0139
    bNumInterfaces          3
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
      iFunction               2
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0
      iInterface              2
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.00
        wTotalLength       0x0028
        dwClockFrequency       48.000000MHz
        bInCollection           1
        baInterfaceNr( 0)       1
      VideoControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             3
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               1
        iTerminal               0
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0
      iInterface              0
      VideoStreaming Interface Descriptor:
        bLength                            14
        bDescriptorType                    36
        bDescriptorSubtype                  1 (INPUT_HEADER)
        bNumFormats                         1
        wTotalLength                   0x0083
        bEndPointAddress                  129
        bmInfo                              0
        bTerminalLink                       3
        bStillCaptureMethod                 0
        bTriggerSupport                     0
        bTriggerUsage                       0
        bControlSize                        1
        bmaControls( 0)                     0
      VideoStreaming Interface Descriptor:
        bLength                            11
        bDescriptorType                    36
        bDescriptorSubtype                  6 (FORMAT_MJPEG)
        bFormatIndex                        1
        bNumFrameDescriptors                2
        bFlags                              1
          Fixed-size samples: Yes
        bDefaultFrameIndex                  2
        bAspectRatioX                       0
        bAspectRatioY                       0
        bmInterlaceFlags                 0x00
          Interlaced stream or variable: No
          Fields per frame: 1 fields
          Field 1 first: No
          Field pattern: Field 1 only
        bCopyProtect                        0
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         1
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            864
        wHeight                           480
        dwMinBitRate                 41353216
        dwMaxBitRate                281673728
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                 41353216
        dwMaxBitRate                281673728
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                             6
        bDescriptorType                    36
        bDescriptorSubtype                 13 (COLORFORMAT)
        bColorPrimaries                     1 (BT.709,sRGB)
        bTransferCharacteristics            1 (BT.709)
        bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
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
    Interface Association:
      bLength                 8
      bDescriptorType        11
      bFirstInterface         2
      bInterfaceCount         1
      bFunctionClass        255 Vendor Specific Class
      bFunctionSubClass       0
      bFunctionProtocol       0
      iFunction               0
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        2
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass    255 Vendor Specific Subclass
      bInterfaceProtocol      0
      iInterface              0
      ** UNRECOGNIZED:  09 24 01 00 01 28 00 01 02
      ** UNRECOGNIZED:  0c 24 02 01 01 02 00 02 03 00 00 00
      ** UNRECOGNIZED:  0a 24 06 09 01 01 00 02 02 00
      ** UNRECOGNIZED:  09 24 03 03 01 01 01 09 00
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        2
      bAlternateSetting       1
      bNumEndpoints           1
      bInterfaceClass       255 Vendor Specific Class
      bInterfaceSubClass    255 Vendor Specific Subclass
      bInterfaceProtocol      0
      iInterface              0
      ** UNRECOGNIZED:  07 24 01 03 01 01 00
      ** UNRECOGNIZED:  0b 24 02 01 02 02 10 01 80 bb 00
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x82  EP 2 IN
        bmAttributes            2
          Transfer Type            Bulk
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               0
        bRefresh                0
        bSynchAddress           0


Am Do., 23. Apr. 2020 um 09:09 Uhr schrieb Daniel Becker <
danieltmbecker@googlemail.com>:

> Hello developers!
>
> I got a Zoom Q2n camera. This camera is quite good for session recordings
> and other music related stuff. When I connect it to my computer it is
> recognized but I get that typical "entitiy 1" message in dmesg. Anyone able
> to get it working? I think there are many users waiting to be able to use
> it. Maybe the manufacturer Zoom would even be thankful and/or useful.
>
> Thanks from Germany
> Daniel
>

--000000000000dcb7de05a456aa3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5BZGRpdGlvbiB0byB0aGUgcHJldmlvdXMgZW1haWw6PC9kaXY+
PGRpdj48YnI+PC9kaXY+PGRpdj5kbWVzZzxicj5bMTc0MjA5Ljg5ODY4NV0gdXNiIDMtMTogbmV3
IGhpZ2gtc3BlZWQgVVNCIGRldmljZSBudW1iZXIgMzMgdXNpbmcgeGhjaV9oY2Q8YnI+WzE3NDIw
OS45MjQ2MDldIHVzYiAzLTE6IE5ldyBVU0IgZGV2aWNlIGZvdW5kLCBpZFZlbmRvcj0xNjg2LCBp
ZFByb2R1Y3Q9MDM2YywgYmNkRGV2aWNlPSAyLjAwPGJyPlsxNzQyMDkuOTI0NjEyXSB1c2IgMy0x
OiBOZXcgVVNCIGRldmljZSBzdHJpbmdzOiBNZnI9MSwgUHJvZHVjdD0yLCBTZXJpYWxOdW1iZXI9
Mzxicj5bMTc0MjA5LjkyNDYxNF0gdXNiIDMtMTogUHJvZHVjdDogUTJuIFdlYiBDYW08YnI+WzE3
NDIwOS45MjQ2MTZdIHVzYiAzLTE6IE1hbnVmYWN0dXJlcjogWk9PTTxicj5bMTc0MjA5LjkyNDYx
N10gdXNiIDMtMTogU2VyaWFsTnVtYmVyOiAwPGJyPlsxNzQyMDkuOTI2NzMxXSB1dmN2aWRlbzog
Rm91bmQgVVZDIDEuMDAgZGV2aWNlIFEybiBXZWIgQ2FtICgxNjg2OjAzNmMpPGJyPlsxNzQyMDku
OTI4Nzk4XSB1dmN2aWRlbyAzLTE6MS4wOiBFbnRpdHkgdHlwZSBmb3IgZW50aXR5IENhbWVyYSAx
IHdhcyBub3QgaW5pdGlhbGl6ZWQhPGJyPlsxNzQyMTIuNDc0NTY0XSB1c2IgMy0xOiBVU0IgZGlz
Y29ubmVjdCwgZGV2aWNlIG51bWJlciAzMzxicj48YnI+bHN1c2I8YnI+QnVzIDAwMyBEZXZpY2Ug
MDM1OiBJRCAxNjg2OjAzNmMgWk9PTSBDb3Jwb3JhdGlvbiBRMm4gV2ViIENhbTxicj48YnI+bHN1
c2IgLXZ2PGJyPkJ1cyAwMDMgRGV2aWNlIDAzNzogSUQgMTY4NjowMzZjIFpPT00gQ29ycG9yYXRp
b24gUTJuIFdlYiBDYW08YnI+Q291bGRuJiMzOTt0IG9wZW4gZGV2aWNlLCBzb21lIGluZm9ybWF0
aW9uIHdpbGwgYmUgbWlzc2luZzxicj5EZXZpY2UgRGVzY3JpcHRvcjo8YnI+wqAgYkxlbmd0aCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoDE4PGJyPsKgIGJEZXNjcmlwdG9yVHlwZSDCoCDCoCDCoCDC
oCAxPGJyPsKgIGJjZFVTQiDCoCDCoCDCoCDCoCDCoCDCoCDCoCAyLjAwPGJyPsKgIGJEZXZpY2VD
bGFzcyDCoCDCoCDCoCDCoCDCoDIzOSBNaXNjZWxsYW5lb3VzIERldmljZTxicj7CoCBiRGV2aWNl
U3ViQ2xhc3MgwqAgwqAgwqAgwqAgMiA8YnI+wqAgYkRldmljZVByb3RvY29sIMKgIMKgIMKgIMKg
IDEgSW50ZXJmYWNlIEFzc29jaWF0aW9uPGJyPsKgIGJNYXhQYWNrZXRTaXplMCDCoCDCoCDCoCDC
oDY0PGJyPsKgIGlkVmVuZG9yIMKgIMKgIMKgIMKgIMKgIDB4MTY4NiBaT09NIENvcnBvcmF0aW9u
PGJyPsKgIGlkUHJvZHVjdCDCoCDCoCDCoCDCoCDCoDB4MDM2YyA8YnI+wqAgYmNkRGV2aWNlIMKg
IMKgIMKgIMKgIMKgIMKgMi4wMDxicj7CoCBpTWFudWZhY3R1cmVyIMKgIMKgIMKgIMKgIMKgIDEg
PGJyPsKgIGlQcm9kdWN0IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMiA8YnI+wqAgaVNlcmlhbCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAzIDxicj7CoCBiTnVtQ29uZmlndXJhdGlvbnMgwqAgwqAg
wqAxPGJyPsKgIENvbmZpZ3VyYXRpb24gRGVzY3JpcHRvcjo8YnI+wqAgwqAgYkxlbmd0aCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCA5PGJyPsKgIMKgIGJEZXNjcmlwdG9yVHlwZSDCoCDCoCDCoCDC
oCAyPGJyPsKgIMKgIHdUb3RhbExlbmd0aCDCoCDCoCDCoCAweDAxMzk8YnI+wqAgwqAgYk51bUlu
dGVyZmFjZXMgwqAgwqAgwqAgwqAgwqAzPGJyPsKgIMKgIGJDb25maWd1cmF0aW9uVmFsdWUgwqAg
wqAgMTxicj7CoCDCoCBpQ29uZmlndXJhdGlvbiDCoCDCoCDCoCDCoCDCoDAgPGJyPsKgIMKgIGJt
QXR0cmlidXRlcyDCoCDCoCDCoCDCoCAweDgwPGJyPsKgIMKgIMKgIChCdXMgUG93ZXJlZCk8YnI+
wqAgwqAgTWF4UG93ZXIgwqAgwqAgwqAgwqAgwqAgwqAgwqA1MDBtQTxicj7CoCDCoCBJbnRlcmZh
Y2UgQXNzb2NpYXRpb246PGJyPsKgIMKgIMKgIGJMZW5ndGggwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgODxicj7CoCDCoCDCoCBiRGVzY3JpcHRvclR5cGUgwqAgwqAgwqAgwqAxMTxicj7CoCDCoCDC
oCBiRmlyc3RJbnRlcmZhY2UgwqAgwqAgwqAgwqAgMDxicj7CoCDCoCDCoCBiSW50ZXJmYWNlQ291
bnQgwqAgwqAgwqAgwqAgMjxicj7CoCDCoCDCoCBiRnVuY3Rpb25DbGFzcyDCoCDCoCDCoCDCoCAx
NCBWaWRlbzxicj7CoCDCoCDCoCBiRnVuY3Rpb25TdWJDbGFzcyDCoCDCoCDCoCAzIFZpZGVvIElu
dGVyZmFjZSBDb2xsZWN0aW9uPGJyPsKgIMKgIMKgIGJGdW5jdGlvblByb3RvY29sIMKgIMKgIMKg
IDAgPGJyPsKgIMKgIMKgIGlGdW5jdGlvbiDCoCDCoCDCoCDCoCDCoCDCoCDCoCAyIDxicj7CoCDC
oCBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8YnI+wqAgwqAgwqAgYkxlbmd0aCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCA5PGJyPsKgIMKgIMKgIGJEZXNjcmlwdG9yVHlwZSDCoCDCoCDCoCDCoCA0PGJy
PsKgIMKgIMKgIGJJbnRlcmZhY2VOdW1iZXIgwqAgwqAgwqAgwqAwPGJyPsKgIMKgIMKgIGJBbHRl
cm5hdGVTZXR0aW5nIMKgIMKgIMKgIDA8YnI+wqAgwqAgwqAgYk51bUVuZHBvaW50cyDCoCDCoCDC
oCDCoCDCoCAwPGJyPsKgIMKgIMKgIGJJbnRlcmZhY2VDbGFzcyDCoCDCoCDCoCDCoDE0IFZpZGVv
PGJyPsKgIMKgIMKgIGJJbnRlcmZhY2VTdWJDbGFzcyDCoCDCoCDCoDEgVmlkZW8gQ29udHJvbDxi
cj7CoCDCoCDCoCBiSW50ZXJmYWNlUHJvdG9jb2wgwqAgwqAgwqAwIDxicj7CoCDCoCDCoCBpSW50
ZXJmYWNlIMKgIMKgIMKgIMKgIMKgIMKgIMKgMiA8YnI+wqAgwqAgwqAgVmlkZW9Db250cm9sIElu
dGVyZmFjZSBEZXNjcmlwdG9yOjxicj7CoCDCoCDCoCDCoCBiTGVuZ3RoIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgMTM8YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JUeXBlIMKgIMKgIMKgIMKgMzY8
YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JTdWJ0eXBlIMKgIMKgIMKgMSAoSEVBREVSKTxicj7C
oCDCoCDCoCDCoCBiY2RVVkMgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMS4wMDxicj7CoCDCoCDCoCDC
oCB3VG90YWxMZW5ndGggwqAgwqAgwqAgMHgwMDI4PGJyPsKgIMKgIMKgIMKgIGR3Q2xvY2tGcmVx
dWVuY3kgwqAgwqAgwqAgNDguMDAwMDAwTUh6PGJyPsKgIMKgIMKgIMKgIGJJbkNvbGxlY3Rpb24g
wqAgwqAgwqAgwqAgwqAgMTxicj7CoCDCoCDCoCDCoCBiYUludGVyZmFjZU5yKCAwKSDCoCDCoCDC
oCAxPGJyPsKgIMKgIMKgIFZpZGVvQ29udHJvbCBJbnRlcmZhY2UgRGVzY3JpcHRvcjo8YnI+wqAg
wqAgwqAgwqAgYkxlbmd0aCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA5PGJyPsKgIMKgIMKgIMKg
IGJEZXNjcmlwdG9yVHlwZSDCoCDCoCDCoCDCoDM2PGJyPsKgIMKgIMKgIMKgIGJEZXNjcmlwdG9y
U3VidHlwZSDCoCDCoCDCoDMgKE9VVFBVVF9URVJNSU5BTCk8YnI+wqAgwqAgwqAgwqAgYlRlcm1p
bmFsSUQgwqAgwqAgwqAgwqAgwqAgwqAgMzxicj7CoCDCoCDCoCDCoCB3VGVybWluYWxUeXBlIMKg
IMKgIMKgMHgwMTAxIFVTQiBTdHJlYW1pbmc8YnI+wqAgwqAgwqAgwqAgYkFzc29jVGVybWluYWwg
wqAgwqAgwqAgwqAgwqAwPGJyPsKgIMKgIMKgIMKgIGJTb3VyY2VJRCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCAxPGJyPsKgIMKgIMKgIMKgIGlUZXJtaW5hbCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwIDxi
cj7CoCDCoCDCoCBWaWRlb0NvbnRyb2wgSW50ZXJmYWNlIERlc2NyaXB0b3I6PGJyPsKgIMKgIMKg
IMKgIGJMZW5ndGggwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAxODxicj7CoCDCoCDCoCDCoCBiRGVz
Y3JpcHRvclR5cGUgwqAgwqAgwqAgwqAzNjxicj7CoCDCoCDCoCDCoCBiRGVzY3JpcHRvclN1YnR5
cGUgwqAgwqAgwqAyIChJTlBVVF9URVJNSU5BTCk8YnI+wqAgwqAgwqAgwqAgYlRlcm1pbmFsSUQg
wqAgwqAgwqAgwqAgwqAgwqAgMTxicj7CoCDCoCDCoCDCoCB3VGVybWluYWxUeXBlIMKgIMKgIMKg
MHgwMjAxIENhbWVyYSBTZW5zb3I8YnI+wqAgwqAgwqAgwqAgYkFzc29jVGVybWluYWwgwqAgwqAg
wqAgwqAgwqAwPGJyPsKgIMKgIMKgIMKgIGlUZXJtaW5hbCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAw
IDxicj7CoCDCoCDCoCDCoCB3T2JqZWN0aXZlRm9jYWxMZW5ndGhNaW4gwqAgwqAgwqAwPGJyPsKg
IMKgIMKgIMKgIHdPYmplY3RpdmVGb2NhbExlbmd0aE1heCDCoCDCoCDCoDA8YnI+wqAgwqAgwqAg
wqAgd09jdWxhckZvY2FsTGVuZ3RoIMKgIMKgIMKgIMKgIMKgIMKgMDxicj7CoCDCoCDCoCDCoCBi
Q29udHJvbFNpemUgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAzPGJyPsKgIMKgIMKgIMKgIGJt
Q29udHJvbHMgwqAgwqAgwqAgwqAgwqAgMHgwMDAwMDAwMDxicj7CoCDCoCBJbnRlcmZhY2UgRGVz
Y3JpcHRvcjo8YnI+wqAgwqAgwqAgYkxlbmd0aCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA5PGJy
PsKgIMKgIMKgIGJEZXNjcmlwdG9yVHlwZSDCoCDCoCDCoCDCoCA0PGJyPsKgIMKgIMKgIGJJbnRl
cmZhY2VOdW1iZXIgwqAgwqAgwqAgwqAxPGJyPsKgIMKgIMKgIGJBbHRlcm5hdGVTZXR0aW5nIMKg
IMKgIMKgIDA8YnI+wqAgwqAgwqAgYk51bUVuZHBvaW50cyDCoCDCoCDCoCDCoCDCoCAxPGJyPsKg
IMKgIMKgIGJJbnRlcmZhY2VDbGFzcyDCoCDCoCDCoCDCoDE0IFZpZGVvPGJyPsKgIMKgIMKgIGJJ
bnRlcmZhY2VTdWJDbGFzcyDCoCDCoCDCoDIgVmlkZW8gU3RyZWFtaW5nPGJyPsKgIMKgIMKgIGJJ
bnRlcmZhY2VQcm90b2NvbCDCoCDCoCDCoDAgPGJyPsKgIMKgIMKgIGlJbnRlcmZhY2UgwqAgwqAg
wqAgwqAgwqAgwqAgwqAwIDxicj7CoCDCoCDCoCBWaWRlb1N0cmVhbWluZyBJbnRlcmZhY2UgRGVz
Y3JpcHRvcjo8YnI+wqAgwqAgwqAgwqAgYkxlbmd0aCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoDE0PGJyPsKgIMKgIMKgIMKgIGJEZXNjcmlwdG9yVHlwZSDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoDM2PGJyPsKgIMKgIMKgIMKgIGJEZXNjcmlwdG9yU3VidHlw
ZSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDEgKElOUFVUX0hFQURFUik8YnI+wqAgwqAgwqAg
wqAgYk51bUZvcm1hdHMgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMTxicj7C
oCDCoCDCoCDCoCB3VG90YWxMZW5ndGggwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMHgwMDgz
PGJyPsKgIMKgIMKgIMKgIGJFbmRQb2ludEFkZHJlc3MgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAxMjk8YnI+wqAgwqAgwqAgwqAgYm1JbmZvIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgMDxicj7CoCDCoCDCoCDCoCBiVGVybWluYWxMaW5rIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIDM8YnI+wqAgwqAgwqAgwqAgYlN0aWxsQ2FwdHVyZU1ldGhv
ZCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwPGJyPsKgIMKgIMKgIMKgIGJUcmlnZ2VyU3VwcG9y
dCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwPGJyPsKgIMKgIMKgIMKgIGJUcmlnZ2Vy
VXNhZ2UgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMDxicj7CoCDCoCDCoCDCoCBi
Q29udHJvbFNpemUgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAxPGJyPsKgIMKg
IMKgIMKgIGJtYUNvbnRyb2xzKCAwKSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwPGJy
PsKgIMKgIMKgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNjcmlwdG9yOjxicj7CoCDCoCDC
oCDCoCBiTGVuZ3RoIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMTE8
YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JUeXBlIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgMzY8YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JTdWJ0eXBlIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgNiAoRk9STUFUX01KUEVHKTxicj7CoCDCoCDCoCDCoCBiRm9ybWF0SW5kZXggwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAxPGJyPsKgIMKgIMKgIMKgIGJOdW1GcmFt
ZURlc2NyaXB0b3JzIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMjxicj7CoCDCoCDCoCDCoCBiRmxh
Z3MgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAxPGJyPsKgIMKg
IMKgIMKgIMKgIEZpeGVkLXNpemUgc2FtcGxlczogWWVzPGJyPsKgIMKgIMKgIMKgIGJEZWZhdWx0
RnJhbWVJbmRleCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDI8YnI+wqAgwqAgwqAgwqAgYkFz
cGVjdFJhdGlvWCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwPGJyPsKgIMKgIMKg
IMKgIGJBc3BlY3RSYXRpb1kgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMDxicj7C
oCDCoCDCoCDCoCBibUludGVybGFjZUZsYWdzIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDB4MDA8
YnI+wqAgwqAgwqAgwqAgwqAgSW50ZXJsYWNlZCBzdHJlYW0gb3IgdmFyaWFibGU6IE5vPGJyPsKg
IMKgIMKgIMKgIMKgIEZpZWxkcyBwZXIgZnJhbWU6IDEgZmllbGRzPGJyPsKgIMKgIMKgIMKgIMKg
IEZpZWxkIDEgZmlyc3Q6IE5vPGJyPsKgIMKgIMKgIMKgIMKgIEZpZWxkIHBhdHRlcm46IEZpZWxk
IDEgb25seTxicj7CoCDCoCDCoCDCoCBiQ29weVByb3RlY3QgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAwPGJyPsKgIMKgIMKgIFZpZGVvU3RyZWFtaW5nIEludGVyZmFjZSBEZXNj
cmlwdG9yOjxicj7CoCDCoCDCoCDCoCBiTGVuZ3RoIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgNTA8YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JUeXBlIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgMzY8YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JTdWJ0eXBl
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgNyAoRlJBTUVfTUpQRUcpPGJyPsKgIMKgIMKgIMKg
IGJGcmFtZUluZGV4IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDE8YnI+wqAg
wqAgwqAgwqAgYm1DYXBhYmlsaXRpZXMgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMHgwMDxi
cj7CoCDCoCDCoCDCoCDCoCBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZDxicj7CoCDCoCDCoCDCoCB3
V2lkdGggwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA4NjQ8YnI+wqAg
wqAgwqAgwqAgd0hlaWdodCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA0
ODA8YnI+wqAgwqAgwqAgwqAgZHdNaW5CaXRSYXRlIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDQx
MzUzMjE2PGJyPsKgIMKgIMKgIMKgIGR3TWF4Qml0UmF0ZSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oDI4MTY3MzcyODxicj7CoCDCoCDCoCDCoCBkd01heFZpZGVvRnJhbWVCdWZmZXJTaXplIMKgIMKg
IMKgNjE0NDAwPGJyPsKgIMKgIMKgIMKgIGR3RGVmYXVsdEZyYW1lSW50ZXJ2YWwgwqAgwqAgwqAg
wqAgMzMzMzMzPGJyPsKgIMKgIMKgIMKgIGJGcmFtZUludGVydmFsVHlwZSDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoDY8YnI+wqAgwqAgwqAgwqAgZHdGcmFtZUludGVydmFsKCAwKSDCoCDCoCDC
oCDCoCDCoCDCoDMzMzMzMzxicj7CoCDCoCDCoCDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDEpIMKgIMKg
IMKgIMKgIMKgIMKgNDAwMDAwPGJyPsKgIMKgIMKgIMKgIGR3RnJhbWVJbnRlcnZhbCggMikgwqAg
wqAgwqAgwqAgwqAgwqA1MDAwMDA8YnI+wqAgwqAgwqAgwqAgZHdGcmFtZUludGVydmFsKCAzKSDC
oCDCoCDCoCDCoCDCoCDCoDY2NjY2Njxicj7CoCDCoCDCoCDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDQp
IMKgIMKgIMKgIMKgIMKgIDEwMDAwMDA8YnI+wqAgwqAgwqAgwqAgZHdGcmFtZUludGVydmFsKCA1
KSDCoCDCoCDCoCDCoCDCoCAyMDAwMDAwPGJyPsKgIMKgIMKgIFZpZGVvU3RyZWFtaW5nIEludGVy
ZmFjZSBEZXNjcmlwdG9yOjxicj7CoCDCoCDCoCDCoCBiTGVuZ3RoIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgNTA8YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JUeXBl
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMzY8YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0
b3JTdWJ0eXBlIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgNyAoRlJBTUVfTUpQRUcpPGJyPsKg
IMKgIMKgIMKgIGJGcmFtZUluZGV4IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IDI8YnI+wqAgwqAgwqAgwqAgYm1DYXBhYmlsaXRpZXMgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgMHgwMDxicj7CoCDCoCDCoCDCoCDCoCBTdGlsbCBpbWFnZSB1bnN1cHBvcnRlZDxicj7CoCDC
oCDCoCDCoCB3V2lkdGggwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMTI4
MDxicj7CoCDCoCDCoCDCoCB3SGVpZ2h0IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIDcyMDxicj7CoCDCoCDCoCDCoCBkd01pbkJpdFJhdGUgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgNDEzNTMyMTY8YnI+wqAgwqAgwqAgwqAgZHdNYXhCaXRSYXRlIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgMjgxNjczNzI4PGJyPsKgIMKgIMKgIMKgIGR3TWF4VmlkZW9GcmFtZUJ1ZmZlclNp
emUgwqAgwqAgwqA2MTQ0MDA8YnI+wqAgwqAgwqAgwqAgZHdEZWZhdWx0RnJhbWVJbnRlcnZhbCDC
oCDCoCDCoCDCoCAzMzMzMzM8YnI+wqAgwqAgwqAgwqAgYkZyYW1lSW50ZXJ2YWxUeXBlIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgNjxicj7CoCDCoCDCoCDCoCBkd0ZyYW1lSW50ZXJ2YWwoIDAp
IMKgIMKgIMKgIMKgIMKgIMKgMzMzMzMzPGJyPsKgIMKgIMKgIMKgIGR3RnJhbWVJbnRlcnZhbCgg
MSkgwqAgwqAgwqAgwqAgwqAgwqA0MDAwMDA8YnI+wqAgwqAgwqAgwqAgZHdGcmFtZUludGVydmFs
KCAyKSDCoCDCoCDCoCDCoCDCoCDCoDUwMDAwMDxicj7CoCDCoCDCoCDCoCBkd0ZyYW1lSW50ZXJ2
YWwoIDMpIMKgIMKgIMKgIMKgIMKgIMKgNjY2NjY2PGJyPsKgIMKgIMKgIMKgIGR3RnJhbWVJbnRl
cnZhbCggNCkgwqAgwqAgwqAgwqAgwqAgMTAwMDAwMDxicj7CoCDCoCDCoCDCoCBkd0ZyYW1lSW50
ZXJ2YWwoIDUpIMKgIMKgIMKgIMKgIMKgIDIwMDAwMDA8YnI+wqAgwqAgwqAgVmlkZW9TdHJlYW1p
bmcgSW50ZXJmYWNlIERlc2NyaXB0b3I6PGJyPsKgIMKgIMKgIMKgIGJMZW5ndGggwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgNjxicj7CoCDCoCDCoCDCoCBiRGVzY3Jp
cHRvclR5cGUgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAzNjxicj7CoCDCoCDCoCDCoCBi
RGVzY3JpcHRvclN1YnR5cGUgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgMTMgKENPTE9SRk9STUFU
KTxicj7CoCDCoCDCoCDCoCBiQ29sb3JQcmltYXJpZXMgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgMSAoQlQuNzA5LHNSR0IpPGJyPsKgIMKgIMKgIMKgIGJUcmFuc2ZlckNoYXJhY3Rlcmlz
dGljcyDCoCDCoCDCoCDCoCDCoCDCoDEgKEJULjcwOSk8YnI+wqAgwqAgwqAgwqAgYk1hdHJpeENv
ZWZmaWNpZW50cyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA0IChTTVBURSAxNzBNIChCVC42MDEp
KTxicj7CoCDCoCDCoCBFbmRwb2ludCBEZXNjcmlwdG9yOjxicj7CoCDCoCDCoCDCoCBiTGVuZ3Ro
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDc8YnI+wqAgwqAgwqAgwqAgYkRlc2NyaXB0b3JUeXBl
IMKgIMKgIMKgIMKgIDU8YnI+wqAgwqAgwqAgwqAgYkVuZHBvaW50QWRkcmVzcyDCoCDCoCAweDgx
IMKgRVAgMSBJTjxicj7CoCDCoCDCoCDCoCBibUF0dHJpYnV0ZXMgwqAgwqAgwqAgwqAgwqAgwqAy
PGJyPsKgIMKgIMKgIMKgIMKgIFRyYW5zZmVyIFR5cGUgwqAgwqAgwqAgwqAgwqAgwqBCdWxrPGJy
PsKgIMKgIMKgIMKgIMKgIFN5bmNoIFR5cGUgwqAgwqAgwqAgwqAgwqAgwqAgwqAgTm9uZTxicj7C
oCDCoCDCoCDCoCDCoCBVc2FnZSBUeXBlIMKgIMKgIMKgIMKgIMKgIMKgIMKgIERhdGE8YnI+wqAg
wqAgwqAgwqAgd01heFBhY2tldFNpemUgwqAgwqAgMHgwMjAwIMKgMXggNTEyIGJ5dGVzPGJyPsKg
IMKgIMKgIMKgIGJJbnRlcnZhbCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAwPGJyPsKgIMKgIEludGVy
ZmFjZSBBc3NvY2lhdGlvbjo8YnI+wqAgwqAgwqAgYkxlbmd0aCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCA4PGJyPsKgIMKgIMKgIGJEZXNjcmlwdG9yVHlwZSDCoCDCoCDCoCDCoDExPGJyPsKgIMKg
IMKgIGJGaXJzdEludGVyZmFjZSDCoCDCoCDCoCDCoCAyPGJyPsKgIMKgIMKgIGJJbnRlcmZhY2VD
b3VudCDCoCDCoCDCoCDCoCAxPGJyPsKgIMKgIMKgIGJGdW5jdGlvbkNsYXNzIMKgIMKgIMKgIMKg
MjU1IFZlbmRvciBTcGVjaWZpYyBDbGFzczxicj7CoCDCoCDCoCBiRnVuY3Rpb25TdWJDbGFzcyDC
oCDCoCDCoCAwIDxicj7CoCDCoCDCoCBiRnVuY3Rpb25Qcm90b2NvbCDCoCDCoCDCoCAwIDxicj7C
oCDCoCDCoCBpRnVuY3Rpb24gwqAgwqAgwqAgwqAgwqAgwqAgwqAgMCA8YnI+wqAgwqAgSW50ZXJm
YWNlIERlc2NyaXB0b3I6PGJyPsKgIMKgIMKgIGJMZW5ndGggwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgOTxicj7CoCDCoCDCoCBiRGVzY3JpcHRvclR5cGUgwqAgwqAgwqAgwqAgNDxicj7CoCDCoCDC
oCBiSW50ZXJmYWNlTnVtYmVyIMKgIMKgIMKgIMKgMjxicj7CoCDCoCDCoCBiQWx0ZXJuYXRlU2V0
dGluZyDCoCDCoCDCoCAwPGJyPsKgIMKgIMKgIGJOdW1FbmRwb2ludHMgwqAgwqAgwqAgwqAgwqAg
MDxicj7CoCDCoCDCoCBiSW50ZXJmYWNlQ2xhc3MgwqAgwqAgwqAgMjU1IFZlbmRvciBTcGVjaWZp
YyBDbGFzczxicj7CoCDCoCDCoCBiSW50ZXJmYWNlU3ViQ2xhc3MgwqAgwqAyNTUgVmVuZG9yIFNw
ZWNpZmljIFN1YmNsYXNzPGJyPsKgIMKgIMKgIGJJbnRlcmZhY2VQcm90b2NvbCDCoCDCoCDCoDAg
PGJyPsKgIMKgIMKgIGlJbnRlcmZhY2UgwqAgwqAgwqAgwqAgwqAgwqAgwqAwIDxicj7CoCDCoCDC
oCAqKiBVTlJFQ09HTklaRUQ6IMKgMDkgMjQgMDEgMDAgMDEgMjggMDAgMDEgMDI8YnI+wqAgwqAg
wqAgKiogVU5SRUNPR05JWkVEOiDCoDBjIDI0IDAyIDAxIDAxIDAyIDAwIDAyIDAzIDAwIDAwIDAw
PGJyPsKgIMKgIMKgICoqIFVOUkVDT0dOSVpFRDogwqAwYSAyNCAwNiAwOSAwMSAwMSAwMCAwMiAw
MiAwMDxicj7CoCDCoCDCoCAqKiBVTlJFQ09HTklaRUQ6IMKgMDkgMjQgMDMgMDMgMDEgMDEgMDEg
MDkgMDA8YnI+wqAgwqAgSW50ZXJmYWNlIERlc2NyaXB0b3I6PGJyPsKgIMKgIMKgIGJMZW5ndGgg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgOTxicj7CoCDCoCDCoCBiRGVzY3JpcHRvclR5cGUgwqAg
wqAgwqAgwqAgNDxicj7CoCDCoCDCoCBiSW50ZXJmYWNlTnVtYmVyIMKgIMKgIMKgIMKgMjxicj7C
oCDCoCDCoCBiQWx0ZXJuYXRlU2V0dGluZyDCoCDCoCDCoCAxPGJyPsKgIMKgIMKgIGJOdW1FbmRw
b2ludHMgwqAgwqAgwqAgwqAgwqAgMTxicj7CoCDCoCDCoCBiSW50ZXJmYWNlQ2xhc3MgwqAgwqAg
wqAgMjU1IFZlbmRvciBTcGVjaWZpYyBDbGFzczxicj7CoCDCoCDCoCBiSW50ZXJmYWNlU3ViQ2xh
c3MgwqAgwqAyNTUgVmVuZG9yIFNwZWNpZmljIFN1YmNsYXNzPGJyPsKgIMKgIMKgIGJJbnRlcmZh
Y2VQcm90b2NvbCDCoCDCoCDCoDAgPGJyPsKgIMKgIMKgIGlJbnRlcmZhY2UgwqAgwqAgwqAgwqAg
wqAgwqAgwqAwIDxicj7CoCDCoCDCoCAqKiBVTlJFQ09HTklaRUQ6IMKgMDcgMjQgMDEgMDMgMDEg
MDEgMDA8YnI+wqAgwqAgwqAgKiogVU5SRUNPR05JWkVEOiDCoDBiIDI0IDAyIDAxIDAyIDAyIDEw
IDAxIDgwIGJiIDAwPGJyPsKgIMKgIMKgIEVuZHBvaW50IERlc2NyaXB0b3I6PGJyPsKgIMKgIMKg
IMKgIGJMZW5ndGggwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgOTxicj7CoCDCoCDCoCDCoCBiRGVz
Y3JpcHRvclR5cGUgwqAgwqAgwqAgwqAgNTxicj7CoCDCoCDCoCDCoCBiRW5kcG9pbnRBZGRyZXNz
IMKgIMKgIDB4ODIgwqBFUCAyIElOPGJyPsKgIMKgIMKgIMKgIGJtQXR0cmlidXRlcyDCoCDCoCDC
oCDCoCDCoCDCoDI8YnI+wqAgwqAgwqAgwqAgwqAgVHJhbnNmZXIgVHlwZSDCoCDCoCDCoCDCoCDC
oCDCoEJ1bGs8YnI+wqAgwqAgwqAgwqAgwqAgU3luY2ggVHlwZSDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBOb25lPGJyPsKgIMKgIMKgIMKgIMKgIFVzYWdlIFR5cGUgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
RGF0YTxicj7CoCDCoCDCoCDCoCB3TWF4UGFja2V0U2l6ZSDCoCDCoCAweDAyMDAgwqAxeCA1MTIg
Ynl0ZXM8YnI+wqAgwqAgwqAgwqAgYkludGVydmFsIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDA8YnI+
wqAgwqAgwqAgwqAgYlJlZnJlc2ggwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAwPGJyPsKgIMKgIMKg
IMKgIGJTeW5jaEFkZHJlc3MgwqAgwqAgwqAgwqAgwqAgMDxicj48YnI+PC9kaXY+PC9kaXY+PGJy
PjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0
ciI+QW0gRG8uLCAyMy4gQXByLiAyMDIwIHVtIDA5OjA5wqBVaHIgc2NocmllYiBEYW5pZWwgQmVj
a2VyICZsdDs8YSBocmVmPSJtYWlsdG86ZGFuaWVsdG1iZWNrZXJAZ29vZ2xlbWFpbC5jb20iPmRh
bmllbHRtYmVja2VyQGdvb2dsZW1haWwuY29tPC9hPiZndDs6PGJyPjwvZGl2PjxibG9ja3F1b3Rl
IGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3Jk
ZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij48ZGl2
IGRpcj0ibHRyIj48ZGl2PkhlbGxvIGRldmVsb3BlcnMhPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5JIGdvdCBhIFpvb20gUTJuIGNhbWVyYS4gVGhpcyBjYW1lcmEgaXMgcXVpdGUgZ29vZCBmb3Ig
c2Vzc2lvbiByZWNvcmRpbmdzIGFuZCBvdGhlciBtdXNpYyByZWxhdGVkIHN0dWZmLiBXaGVuIEkg
Y29ubmVjdCBpdCB0byBteSBjb21wdXRlciBpdCBpcyByZWNvZ25pemVkIGJ1dCBJIGdldCB0aGF0
IHR5cGljYWwgJnF1b3Q7ZW50aXRpeSAxJnF1b3Q7IG1lc3NhZ2UgaW4gZG1lc2cuIEFueW9uZSBh
YmxlIHRvIGdldCBpdCB3b3JraW5nPyBJIHRoaW5rIHRoZXJlIGFyZSBtYW55IHVzZXJzIHdhaXRp
bmcgdG8gYmUgYWJsZSB0byB1c2UgaXQuIE1heWJlIHRoZSBtYW51ZmFjdHVyZXIgWm9vbSB3b3Vs
ZCBldmVuIGJlIHRoYW5rZnVsIGFuZC9vciB1c2VmdWwuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5UaGFua3MgZnJvbSBHZXJtYW55PC9kaXY+PGRpdj5EYW5pZWw8YnI+PC9kaXY+PC9kaXY+DQo8
L2Jsb2NrcXVvdGU+PC9kaXY+DQo=
--000000000000dcb7de05a456aa3b--


--===============2314794029461015654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2314794029461015654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============2314794029461015654==--

