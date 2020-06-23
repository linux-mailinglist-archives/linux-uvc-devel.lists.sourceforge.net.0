Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A68206880
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 24 Jun 2020 01:35:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jnsRh-0002fH-QT; Tue, 23 Jun 2020 23:35:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sur3@gmx.de>) id 1jnsRf-0002f9-FJ
 for linux-uvc-devel@lists.sourceforge.net; Tue, 23 Jun 2020 23:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yZ0Q02Wio9sQXs/89K3rGr2S0eh59XzTZQICXe2B0jo=; b=YCGR6KJv/7Za2FKnrrtUltvZ2n
 7T6uhGf2QmaQ6FWGRqcs/6PEkvwLVTX3yz/mthSzigayY7uRXTyzai56dnNuEXdn0P5XzwNYRPf+4
 cEiDTei/7V20QOdhQrEcksbG/TloLNN3kx6TxIIeplDnh069hULrrERetyTxeUYaOdjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yZ0Q02Wio9sQXs/89K3rGr2S0eh59XzTZQICXe2B0jo=; b=OLQb0J1zo87pNfl2E8pluo/CwS
 LAJNKfs1vAkZ/f/dRblP+JdyV+pywlQWYBzNuI+2+QCcrl4WvVTyIV6QygOVwSyDPE5wO55rYM9jA
 usWhfMAXGP0frr3XfCyq6ilolGn2/sQUSZFa0Lmno1TgP7d+4uxd3VWSVUjsJTakUbTI=;
Received: from mout.gmx.net ([212.227.17.22])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jnsRa-00Fryi-AO
 for linux-uvc-devel@lists.sourceforge.net; Tue, 23 Jun 2020 23:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1592955291;
 bh=B3WAJiBIuePAiOoBbkEViIjtpNget7rpGM9Y99huJbM=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=Ymvqc3pgQU/2ZP6bXn02adwWOdHphlyMrUeklCK2xSzSL49dfQ/E4g4ILgyzp08bz
 xBO7xCWE75NngvNhXXhIL7m7IkOdPkCofYhRm+CEiggEDxph0tPM9KKN8WTRt9UvGd
 1nJqkqSiCR+E8IJETVVR1LsIkVk6AwJfda1BCAm8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.33] ([95.222.28.115]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MulmF-1iwjmq2hH9-00rsP3; Wed, 24
 Jun 2020 01:34:51 +0200
To: "Gopal, Saranya" <saranya.gopal@intel.com>,
 "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
References: <5d87a3ee-12b8-5fe8-289a-b7c6acde7059@gmx.de>
 <DM6PR11MB4612887FFD069C2B1E3F14FEE3940@DM6PR11MB4612.namprd11.prod.outlook.com>
From: sur3@gmx.de
Message-ID: <69cc9d26-2909-74f4-f7fe-20bcd0f5cfe3@gmx.de>
Date: Wed, 24 Jun 2020 01:34:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB4612887FFD069C2B1E3F14FEE3940@DM6PR11MB4612.namprd11.prod.outlook.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:I+D20YcajXAkgP6AeCT7kFnbJBQK+XVSvsnVsitlE9c+14sX2Eb
 NvdnyJshnv5+fIq0H/mqunJYC8OkSt+o8ce8iqDz56f0AfOwgB0C/6cco/nH/6EG377sqxB
 eOp6kyJDpca2mhu+SJVo0IV1+KAX/ZPqwOV+fmAj3CeyFla32bHYpc0FTrUmx7tEHXG3+2R
 yeXUyiDpIT6xFViRt+w6Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v3GufVlrMS8=:rhkPkgVW1pQyT7rzuU3hdl
 /5j34FikLfGXNBHYzCNBOzjXO7OF1wkI7QkkVyMjG/ATkcp5NxYG393oFNXOjUmilIyQC1cQi
 h56QQFAjLmuwD6sojv1jygRExNBWyoE5kQWZS5g30ag6E2K77t/E363aBp1t03kqV+uf6N+wH
 a2M1tGzpJnm3UooxtBRhGrhhbnePn+6Ug87YV81Z44QWpyo3lCJ9JzJEBcM7VEDssUl69hr1a
 IhSSDb+2RCB7WRECmOx8tZb0KCOQ6CDjIYvsX5T0KEtG6CJTnOyAOzCiMzN5bqrPKBJSi2FCx
 zVghsnv/5qfUcue0zCS5cj5wE30dkYorYcRk3nobS234BC2kLJ4Qu00CmPawTlQyVFRdMdx1j
 5VOBzd4pjnqWInuVxDasdWEvnhQPX/Pk3G1IY2f92T/+CcUCVHNQeXJfm64xqOA9Rm+q/Z9Y1
 +ixnZyEKPG2l1NoAS4mr+YZp/T3VTkUHJsNuf4SuWPWCplfS9qEjwJTf0HcC6PTHUhi8DF3hc
 gio7+30vOTi1XCav+zxIaSEYnjWTyonE3yf8HCq5MsdyZufPhm/h1mk4x88cdQkwJU5vxWmgF
 XuYV5v5IpRo2gJt0AKWnXoVsjfH7PSzxR0qrAUw6PMld0gTTQmIbJMmTrJHk032Dz5t4iFC7b
 p9fLQWjOjJTr2VVCDxAZCtn1yGf1WIA3AMx5dCVkFU4YP7x6kCGeHZae28NdlE3pElhdqlkRO
 zIqQmOMKD4WXWEdG68OSrY8Vfp4RfKOyloXhrx1CcJnPBKG5Qi5+aBibKi7paezjAnGXayEgd
 fBXbbJwLqhfIeXs6NlH/YQDVio/k4N/Lk5RAxH5mgFV9kJbtNdgmFM999MMxTGT9o3f+GUcCy
 ixPiSlYkcRMeg2CEiyKvPZ2EOq47KCQiax5EwpnsrcGjJ7447WoS+ECnrjawAFhtCfYwQy/9T
 5vNU6TcApG6M8GygjVV/7MikVrB6H/QS6os1je0aQ4wwTeQmIVc9QN0tb8yQSoZaW+vrD9IhR
 sI6tSN4uDUO5PFaFr9Zoac85SxbCHul4kwWJ41AmdTX71Zlva+BiWy1HyGvLguMSe/7TM5m5i
 68ZkumLdmrmRrfH5BYDhcYORB5sYpVvMRKqzLtl29M/3YDjjkGzKc8rALNG79riPoarqxksPr
 1hjZrZpe6HyOG0Fra8OtDS9cBmGQq+RI4Ftsu0wm34ysssvI78Ak1IVsd+3DwMngNBDfI=
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
X-Headers-End: 1jnsRa-00Fryi-AO
Subject: Re: [linux-uvc-devel] usb quirks for 05e3:0515
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

Hi.

On 23.06.20 12:30, Gopal, Saranya wrote:
>
>
>> Hi I have the device 05e3:0515 which needs usbquirks=0x100.
>>
> Just for clarification, the module parameter is quirks and not usbquirks.

ups sorry was just a typo in the email. ^^"

> Did you do something like 'modprobe  uvcvideo quirks=0x100'?

Yes that's what I did.

>
> Thanks,
> Saranya
>> But even after using this quirks I get the following error messages in
>> dmesg:
>> [ 7524.053017] uvcvideo: Failed to query (GET_INFO) UVC control 4 on
>> unit 1: -32 (exp. 1).
>> [ 7524.181141] input: USB2.0 Digital Camera: USB2.0 D as
>> /devices/pci0000:00/0000:00:01.3/0000:03:00.0/usb1/1-14/1-
>> 14:1.0/input/input101
>> [ 7524.500066] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit
>> 1: -32 (exp. 4).
>>
>> Are there additional quirks for those errors?
>> Also the device seems to disconnect itself sometimes:
>> [ 7750.836910] usb 1-14: USB disconnect, device number 99
>> [ 7753.968606] usb 1-14: new high-speed USB device number 100 using
>> xhci_hcd
>>
>>
>> lsusb -v:
>>
>> Bus 001 Device 096: ID 05e3:0515 Genesys Logic, Inc.
>> Device Descriptor:
>>   bLength                18
>>   bDescriptorType         1
>>   bcdUSB               2.00
>>   bDeviceClass          239 Miscellaneous Device
>>   bDeviceSubClass         2
>>   bDeviceProtocol         1 Interface Association
>>   bMaxPacketSize0        64
>>   idVendor           0x05e3 Genesys Logic, Inc.
>>   idProduct          0x0515
>>   bcdDevice            6.16
>>   iManufacturer           0
>>   iProduct                1 USB2.0 Digital Camera
>>   iSerial                 1 USB2.0 Digital Camera
>>   bNumConfigurations      1
>>   Configuration Descriptor:
>>     bLength                 9
>>     bDescriptorType         2
>>     wTotalLength       0x01a9
>>     bNumInterfaces          2
>>     bConfigurationValue     1
>>     iConfiguration          0
>>     bmAttributes         0x80
>>       (Bus Powered)
>>     MaxPower              200mA
>>     Interface Association:
>>       bLength                 8
>>       bDescriptorType        11
>>       bFirstInterface         0
>>       bInterfaceCount         2
>>       bFunctionClass         14 Video
>>       bFunctionSubClass       3 Video Interface Collection
>>       bFunctionProtocol       0
>>       iFunction               1 USB2.0 Digital Camera
>>     Interface Descriptor:
>>       bLength                 9
>>       bDescriptorType         4
>>       bInterfaceNumber        0
>>       bAlternateSetting       0
>>       bNumEndpoints           1
>>       bInterfaceClass        14 Video
>>       bInterfaceSubClass      1 Video Control
>>       bInterfaceProtocol      0
>>       iInterface              1 USB2.0 Digital Camera
>>       VideoControl Interface Descriptor:
>>         bLength                13
>>         bDescriptorType        36
>>         bDescriptorSubtype      1 (HEADER)
>>         bcdUVC               1.00
>>         wTotalLength       0x0069
>>         dwClockFrequency       60.000000MHz
>>         bInCollection           1
>>         baInterfaceNr( 0)       1
>>       VideoControl Interface Descriptor:
>>         bLength                 9
>>         bDescriptorType        36
>>         bDescriptorSubtype      3 (OUTPUT_TERMINAL)
>>         bTerminalID             4
>>         wTerminalType      0x0101 USB Streaming
>>         bAssocTerminal          0
>>         bSourceID               2
>>         iTerminal               0
>>       VideoControl Interface Descriptor:
>>         bLength                27
>>         bDescriptorType        36
>>         bDescriptorSubtype      6 (EXTENSION_UNIT)
>>         bUnitID                 2
>>         guidExtensionCode         {5e5d360b-e45f-4581-9b0b-374669ba05d4}
>>         bNumControl            16
>>         bNrPins                 1
>>         baSourceID( 0)          5
>>         bControlSize            2
>>         bmControls( 0)       0xff
>>         bmControls( 1)       0x00
>>         iExtension              0
>>       VideoControl Interface Descriptor:
>>         bLength                27
>>         bDescriptorType        36
>>         bDescriptorSubtype      6 (EXTENSION_UNIT)
>>         bUnitID                 5
>>         guidExtensionCode         {ecdadf03-8fe3-4d27-893b-a18d25aeee09}
>>         bNumControl            16
>>         bNrPins                 1
>>         baSourceID( 0)          3
>>         bControlSize            2
>>         bmControls( 0)       0xff
>>         bmControls( 1)       0x03
>>         iExtension              0
>>       VideoControl Interface Descriptor:
>>         bLength                18
>>         bDescriptorType        36
>>         bDescriptorSubtype      2 (INPUT_TERMINAL)
>>         bTerminalID             1
>>         wTerminalType      0x0201 Camera Sensor
>>         bAssocTerminal          0
>>         iTerminal               0
>>         wObjectiveFocalLengthMin      0
>>         wObjectiveFocalLengthMax      0
>>         wOcularFocalLength            0
>>         bControlSize                  3
>>         bmControls           0x00000008
>>           Exposure Time (Absolute)
>>       VideoControl Interface Descriptor:
>>         bLength                11
>>         bDescriptorType        36
>>         bDescriptorSubtype      5 (PROCESSING_UNIT)
>>       Warning: Descriptor too short
>>         bUnitID                 3
>>         bSourceID               1
>>         wMaxMultiplier          0
>>         bControlSize            2
>>         bmControls     0x0000177f
>>           Brightness
>>           Contrast
>>           Hue
>>           Saturation
>>           Sharpness
>>           Gamma
>>           White Balance Temperature
>>           Backlight Compensation
>>           Gain
>>           Power Line Frequency
>>           White Balance Temperature, Auto
>>         iProcessing             0
>>         bmVideoStandards     0x00
>>       Endpoint Descriptor:
>>         bLength                 7
>>         bDescriptorType         5
>>         bEndpointAddress     0x83  EP 3 IN
>>         bmAttributes            3
>>           Transfer Type            Interrupt
>>           Synch Type               None
>>           Usage Type               Data
>>         wMaxPacketSize     0x0017  1x 23 bytes
>>         bInterval               6
>>     Interface Descriptor:
>>       bLength                 9
>>       bDescriptorType         4
>>       bInterfaceNumber        1
>>       bAlternateSetting       0
>>       bNumEndpoints           0
>>       bInterfaceClass        14 Video
>>       bInterfaceSubClass      2 Video Streaming
>>       bInterfaceProtocol      0
>>       iInterface              0
>>       VideoStreaming Interface Descriptor:
>>         bLength                            14
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  1 (INPUT_HEADER)
>>         bNumFormats                         1
>>         wTotalLength                   0x0101
>>         bEndPointAddress                  129
>>         bmInfo                              0
>>         bTerminalLink                       4
>>         bStillCaptureMethod                 2
>>         bTriggerSupport                     1
>>         bTriggerUsage                       1
>>         bControlSize                        1
>>         bmaControls( 0)                     0
>>       VideoStreaming Interface Descriptor:
>>         bLength                            27
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
>>         bFormatIndex                        1
>>         bNumFrameDescriptors                6
>>         guidFormat
>> {32595559-0000-0010-8000-00aa00389b71}
>>         bBitsPerPixel                      16
>>         bDefaultFrameIndex                  1
>>         bAspectRatioX                       0
>>         bAspectRatioY                       0
>>         bmInterlaceFlags                 0x00
>>           Interlaced stream or variable: No
>>           Fields per frame: 2 fields
>>           Field 1 first: No
>>           Field pattern: Field 1 only
>>         bCopyProtect                        0
>>       VideoStreaming Interface Descriptor:
>>         bLength                            30
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>>         bFrameIndex                         1
>>         bmCapabilities                   0x00
>>           Still image unsupported
>>         wWidth                            640
>>         wHeight                           480
>>         dwMinBitRate                 15360000
>>         dwMaxBitRate                 15360000
>>         dwMaxVideoFrameBufferSize      614400
>>         dwDefaultFrameInterval         400000
>>         bFrameIntervalType                  1
>>         dwFrameInterval( 0)            400000
>>       VideoStreaming Interface Descriptor:
>>         bLength                            30
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>>         bFrameIndex                         2
>>         bmCapabilities                   0x00
>>           Still image unsupported
>>         wWidth                            160
>>         wHeight                           120
>>         dwMinBitRate                   960000
>>         dwMaxBitRate                   960000
>>         dwMaxVideoFrameBufferSize       38400
>>         dwDefaultFrameInterval         400000
>>         bFrameIntervalType                  1
>>         dwFrameInterval( 0)            400000
>>       VideoStreaming Interface Descriptor:
>>         bLength                            30
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>>         bFrameIndex                         3
>>         bmCapabilities                   0x00
>>           Still image unsupported
>>         wWidth                            176
>>         wHeight                           144
>>         dwMinBitRate                  1267200
>>         dwMaxBitRate                  1267200
>>         dwMaxVideoFrameBufferSize       50688
>>         dwDefaultFrameInterval         400000
>>         bFrameIntervalType                  1
>>         dwFrameInterval( 0)            400000
>>       VideoStreaming Interface Descriptor:
>>         bLength                            30
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>>         bFrameIndex                         4
>>         bmCapabilities                   0x00
>>           Still image unsupported
>>         wWidth                            320
>>         wHeight                           240
>>         dwMinBitRate                  3840000
>>         dwMaxBitRate                  3840000
>>         dwMaxVideoFrameBufferSize      153600
>>         dwDefaultFrameInterval         400000
>>         bFrameIntervalType                  1
>>         dwFrameInterval( 0)            400000
>>       VideoStreaming Interface Descriptor:
>>         bLength                            30
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>>         bFrameIndex                         5
>>         bmCapabilities                   0x00
>>           Still image unsupported
>>         wWidth                            352
>>         wHeight                           288
>>         dwMinBitRate                  5068800
>>         dwMaxBitRate                  5068800
>>         dwMaxVideoFrameBufferSize      202752
>>         dwDefaultFrameInterval         400000
>>         bFrameIntervalType                  1
>>         dwFrameInterval( 0)            400000
>>       VideoStreaming Interface Descriptor:
>>         bLength                            30
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>>         bFrameIndex                         6
>>         bmCapabilities                   0x00
>>           Still image unsupported
>>         wWidth                            640
>>         wHeight                           480
>>         dwMinBitRate                 15360000
>>         dwMaxBitRate                 15360000
>>         dwMaxVideoFrameBufferSize      614400
>>         dwDefaultFrameInterval         400000
>>         bFrameIntervalType                  1
>>         dwFrameInterval( 0)            400000
>>       VideoStreaming Interface Descriptor:
>>         bLength                            30
>>         bDescriptorType                    36
>>         bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)
>>         bEndpointAddress                    0
>>         bNumImageSizePatterns               6
>>         wWidth( 0)                        640
>>         wHeight( 0)                       480
>>         wWidth( 1)                        160
>>         wHeight( 1)                       120
>>         wWidth( 2)                        176
>>         wHeight( 2)                       144
>>         wWidth( 3)                        320
>>         wHeight( 3)                       240
>>         wWidth( 4)                        352
>>         wHeight( 4)                       288
>>         wWidth( 5)                        640
>>         wHeight( 5)                       480
>>         bNumCompressionPatterns             0
>>       VideoStreaming Interface Descriptor:
>>         bLength                             6
>>         bDescriptorType                    36
>>         bDescriptorSubtype                 13 (COLORFORMAT)
>>         bColorPrimaries                     1 (BT.709,sRGB)
>>         bTransferCharacteristics            1 (BT.709)
>>         bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
>>     Interface Descriptor:
>>       bLength                 9
>>       bDescriptorType         4
>>       bInterfaceNumber        1
>>       bAlternateSetting       1
>>       bNumEndpoints           1
>>       bInterfaceClass        14 Video
>>       bInterfaceSubClass      2 Video Streaming
>>       bInterfaceProtocol      0
>>       iInterface              0
>>       Endpoint Descriptor:
>>         bLength                 7
>>         bDescriptorType         5
>>         bEndpointAddress     0x81  EP 1 IN
>>         bmAttributes            5
>>           Transfer Type            Isochronous
>>           Synch Type               Asynchronous
>>           Usage Type               Data
>>         wMaxPacketSize     0x1400  3x 1024 bytes
>>         bInterval               1
>> Device Qualifier (for other device speed):
>>   bLength                10
>>   bDescriptorType         6
>>   bcdUSB               2.00
>>   bDeviceClass          239 Miscellaneous Device
>>   bDeviceSubClass         2
>>   bDeviceProtocol         1 Interface Association
>>   bMaxPacketSize0        64
>>   bNumConfigurations      1
>> can't get debug descriptor: Resource temporarily unavailable
>> Device Status:     0x0000
>>   (Bus Powered)
>>
>>
>> _______________________________________________
>> Linux-uvc-devel mailing list
>> Linux-uvc-devel@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
