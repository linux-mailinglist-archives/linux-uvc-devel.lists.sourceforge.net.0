Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F28204F0D
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 23 Jun 2020 12:30:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jngCB-0007pc-19; Tue, 23 Jun 2020 10:30:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <saranya.gopal@intel.com>) id 1jngC9-0007pV-CO
 for linux-uvc-devel@lists.sourceforge.net; Tue, 23 Jun 2020 10:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/TUuHW7KP45B6oIL73a8a2QYVanZD/Rs+7zwHh89vmU=; b=RKi/TX/z1/DxCO/LvX5LGjK2Op
 BS5fUIHaQxaI9hie7e449hUccdH3iM4/V7wCOwOivqP4Ui5STEQrepF5L+wfGNH3PdwRnM/0TVLGu
 D3cCdSKi9WV4iF2OX36TzxdwneYN2ZQdxLQ3YY0gbjthRezf1cZMkJTQJPnsDAcmkWaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/TUuHW7KP45B6oIL73a8a2QYVanZD/Rs+7zwHh89vmU=; b=KsF+Q7qXxLnWJ/YMiS6y8oZ8pH
 pZbO+vC97riQNZCCtMoOuJ3hQ7eNKlpdNLxcIHUwLzOrxAKsNT1laa/iAlao6WmPyppkma3H2hefq
 korEl0e1FshC4vPkUMMZRW45EGbU0kjup6UTNXXt0fe636uszMOLaGcPldhQySh6YE9U=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jngC6-00FsQg-Kx
 for linux-uvc-devel@lists.sourceforge.net; Tue, 23 Jun 2020 10:30:25 +0000
IronPort-SDR: tLBihhRO9DRzvBoPGuMgQORlcXKPVHPAqro4LwCzPWM6LqiW8XSd1JJKlm8g/UMYKqcqusiWVl
 c46irLXg2zLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="144018689"
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="144018689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 03:30:16 -0700
IronPort-SDR: DFfVonY7TeRlCkIH+nqr+qnSjkulfohPLPgCwmzOKoN9OjQA7LxBjXkEXXDSDpq8gttmgLufQW
 JSNkTTsqa1iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="293157493"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga002.jf.intel.com with ESMTP; 23 Jun 2020 03:30:16 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 03:30:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 23 Jun 2020 03:30:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G1MJZpKzy7HUBcwm4P4hWN1VaSYrlxoN3OkYsMThrhpEbqqkSFkMWjpZSB1/bEQ4XFy7APwFpDfN31sCFVUs0BgZUzKJmqZmbQFIw1Yvc0HieyY0Y+7FByHtsUy1dgp2mu4+CmSPXL1ysm1bdPoQx4LBE/eVj1hBGDKPWKfWEDwKGRr0b78urlfsq8hc1ZC/SqOnNis3WILJqyOXtYh1r/m4l4+EmcEyWHSWu7v156ldrJ7tG1BuuDovnf8c4oHO8nEcpzblhv9cmLke7rqezZD1b2K27hX4T8cwk77jzTQT1tmq6GMSgZtmNKzGG8yMmnQBmdaKEa0EUfielXImFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/TUuHW7KP45B6oIL73a8a2QYVanZD/Rs+7zwHh89vmU=;
 b=F8oYM0OlGv+lUwllT7bC94KEGaEi8fJmLndPLHNyZ7ki2BH+m20NS0CdkXZILLauY1TSVr9MZAYQ7AHLLUrRnHPS1Wwae2x5jMslPjIJHSMH7BTX2eS+J31q4LRH0SRRDt+wWY0kcS7GbHBgQllITQmX/a/qHYBeUjRK6Mn65rqb3Yp/C4idccGipmPIjvuuV67qRSEkaiVnShkVadvimMsGP1pRMEH5cjLWHGISMcf73GwUI0vI8hGb43L54O1norQrV6j5blDL/Si880Aq4zsQExD6pkwjgh7CR0RQDto5MW5Ez7aof4C+/8DOw+vbqu7U8Id+g0kr1AKageNrAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/TUuHW7KP45B6oIL73a8a2QYVanZD/Rs+7zwHh89vmU=;
 b=KLXIw3DLWMHrdt8Uni/RImA9w1EBJ0Z9fg1A/ZjhaKgda/VXcf+7Z4ol5aWIQpf9bX2JN+le891aWJtCvpv1LL4N1X5OmJtng5Wss4Eu4v/a/iu2Ciu1Gd9eu9P05vz8p40GP8CNMQCTZVUg8MobHhTem4BdR5BH42d/iSNp2Pw=
Received: from DM6PR11MB4612.namprd11.prod.outlook.com (2603:10b6:5:2a8::19)
 by DM6PR11MB3594.namprd11.prod.outlook.com (2603:10b6:5:13b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.24; Tue, 23 Jun
 2020 10:30:15 +0000
Received: from DM6PR11MB4612.namprd11.prod.outlook.com
 ([fe80::5807:3d86:bddf:f06a]) by DM6PR11MB4612.namprd11.prod.outlook.com
 ([fe80::5807:3d86:bddf:f06a%6]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 10:30:15 +0000
From: "Gopal, Saranya" <saranya.gopal@intel.com>
To: "sur3@gmx.de" <sur3@gmx.de>, "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Thread-Topic: [linux-uvc-devel] usb quirks for 05e3:0515
Thread-Index: AQHWSOWm3IUcw/pVmUyBE4dQpn1UqKjmABwQ
Date: Tue, 23 Jun 2020 10:30:14 +0000
Message-ID: <DM6PR11MB4612887FFD069C2B1E3F14FEE3940@DM6PR11MB4612.namprd11.prod.outlook.com>
References: <5d87a3ee-12b8-5fe8-289a-b7c6acde7059@gmx.de>
In-Reply-To: <5d87a3ee-12b8-5fe8-289a-b7c6acde7059@gmx.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmx.de; dkim=none (message not signed)
 header.d=none;gmx.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.79.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b29334a5-86c3-44be-6e94-08d817606aec
x-ms-traffictypediagnostic: DM6PR11MB3594:
x-microsoft-antispam-prvs: <DM6PR11MB3594DE9DD30D2EA54057AD7CE3940@DM6PR11MB3594.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rxkTCl5PiUf0DvIPpKmURwEJuCYwFG3o7Ge+aB9LMmXcmEQ+c8GkYqOETPW3lHZBc+j7fu75+6zCSrBaG9TWKtget3ZOXvcUxRWiuuqvvuIchwkgs7ycHn9FZjo2ecIGqwGYq7ITPTAv2R/zeJ8FdVFGsI16guniUpdki07n7mieIvRl+kT924Hq7hhamiJx7bo5XxQt31xm3BFBdwVwLou7HKWXadskZhQotrYGdyRa9v4IxzmrDO5dxPLJGR/UlOxAIG44q3Vpohc+ZETAf3L2aVWF86dqAcFGMJpNop35NPAGGcEGeX0BfapQ2a84jWIjO+ki2MBiDVVaw4MGx7+e1n3R4vTiah3MjuwwcJbD8+gdyzdotbFkPUoRX6LIV8QACebKW3qdZmhlAQrpsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4612.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(396003)(136003)(39860400002)(71200400001)(55016002)(8936002)(33656002)(110136005)(26005)(9686003)(2906002)(83380400001)(186003)(86362001)(8676002)(478600001)(52536014)(5660300002)(7696005)(316002)(966005)(66476007)(66446008)(66556008)(64756008)(6506007)(76116006)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: qTIKRCfUBuCfCyL6Jd4cpzHkHzw9pKt0dFJe3Iy1f/aC+lgW4dwx5PyIge86vM9AsI6RrvFgtbTQeYRheXU6NCIAkGEb9TmqINGcOircaCqfsvx3+QtCazB7q6ssn3By+HlSYv3Wcq+tlX0lNoelTggBMtKwJ+bxoSlIdA4FW5ElTaggA9XZgiKZgzAgbf5I9DvYjOrNA0ir0+KasawF2SH7qmhlxIHNRhujJtJx2ZrSb24ztlYA2TuwLx98KuoBpiNisBeOE/xD4xyLrpLL0cyAO1EV1IlxF1mU/nPSQBXherVyBVZtL+TuATuAvwm1FQ0jfJYXKnSGKNUd5a8/WI5PMFsg33IBhpvPeGsvkJK3sARa2rEWh61w5a9SyeakO92PBiY5uBh6M1QsfToIGAj/nScQAO12QOwlgqNZP1vjYStknKDKX4SOF26ObQ4i5zwcOeb5DFZg9kkOpkRUJIpmRTLU0WqYzt17CAOZU3g=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b29334a5-86c3-44be-6e94-08d817606aec
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 10:30:15.0237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: we9QcC5isi/+4xo9bdZLNgNAu2ptbZMoLnXBIoxRsfVU+pBJt8t4e/alYGwRTdYAdACJtev7kxKEUcmyrgqj+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3594
X-OriginatorOrg: intel.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jngC6-00FsQg-Kx
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



> Hi I have the device 05e3:0515 which needs usbquirks=0x100.
> 
Just for clarification, the module parameter is quirks and not usbquirks.
Did you do something like 'modprobe  uvcvideo quirks=0x100'?

Thanks,
Saranya
> But even after using this quirks I get the following error messages in
> dmesg:
> [ 7524.053017] uvcvideo: Failed to query (GET_INFO) UVC control 4 on
> unit 1: -32 (exp. 1).
> [ 7524.181141] input: USB2.0 Digital Camera: USB2.0 D as
> /devices/pci0000:00/0000:00:01.3/0000:03:00.0/usb1/1-14/1-
> 14:1.0/input/input101
> [ 7524.500066] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit
> 1: -32 (exp. 4).
> 
> Are there additional quirks for those errors?
> Also the device seems to disconnect itself sometimes:
> [ 7750.836910] usb 1-14: USB disconnect, device number 99
> [ 7753.968606] usb 1-14: new high-speed USB device number 100 using
> xhci_hcd
> 
> 
> lsusb -v:
> 
> Bus 001 Device 096: ID 05e3:0515 Genesys Logic, Inc.
> Device Descriptor:
>   bLength                18
>   bDescriptorType         1
>   bcdUSB               2.00
>   bDeviceClass          239 Miscellaneous Device
>   bDeviceSubClass         2
>   bDeviceProtocol         1 Interface Association
>   bMaxPacketSize0        64
>   idVendor           0x05e3 Genesys Logic, Inc.
>   idProduct          0x0515
>   bcdDevice            6.16
>   iManufacturer           0
>   iProduct                1 USB2.0 Digital Camera
>   iSerial                 1 USB2.0 Digital Camera
>   bNumConfigurations      1
>   Configuration Descriptor:
>     bLength                 9
>     bDescriptorType         2
>     wTotalLength       0x01a9
>     bNumInterfaces          2
>     bConfigurationValue     1
>     iConfiguration          0
>     bmAttributes         0x80
>       (Bus Powered)
>     MaxPower              200mA
>     Interface Association:
>       bLength                 8
>       bDescriptorType        11
>       bFirstInterface         0
>       bInterfaceCount         2
>       bFunctionClass         14 Video
>       bFunctionSubClass       3 Video Interface Collection
>       bFunctionProtocol       0
>       iFunction               1 USB2.0 Digital Camera
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        0
>       bAlternateSetting       0
>       bNumEndpoints           1
>       bInterfaceClass        14 Video
>       bInterfaceSubClass      1 Video Control
>       bInterfaceProtocol      0
>       iInterface              1 USB2.0 Digital Camera
>       VideoControl Interface Descriptor:
>         bLength                13
>         bDescriptorType        36
>         bDescriptorSubtype      1 (HEADER)
>         bcdUVC               1.00
>         wTotalLength       0x0069
>         dwClockFrequency       60.000000MHz
>         bInCollection           1
>         baInterfaceNr( 0)       1
>       VideoControl Interface Descriptor:
>         bLength                 9
>         bDescriptorType        36
>         bDescriptorSubtype      3 (OUTPUT_TERMINAL)
>         bTerminalID             4
>         wTerminalType      0x0101 USB Streaming
>         bAssocTerminal          0
>         bSourceID               2
>         iTerminal               0
>       VideoControl Interface Descriptor:
>         bLength                27
>         bDescriptorType        36
>         bDescriptorSubtype      6 (EXTENSION_UNIT)
>         bUnitID                 2
>         guidExtensionCode         {5e5d360b-e45f-4581-9b0b-374669ba05d4}
>         bNumControl            16
>         bNrPins                 1
>         baSourceID( 0)          5
>         bControlSize            2
>         bmControls( 0)       0xff
>         bmControls( 1)       0x00
>         iExtension              0
>       VideoControl Interface Descriptor:
>         bLength                27
>         bDescriptorType        36
>         bDescriptorSubtype      6 (EXTENSION_UNIT)
>         bUnitID                 5
>         guidExtensionCode         {ecdadf03-8fe3-4d27-893b-a18d25aeee09}
>         bNumControl            16
>         bNrPins                 1
>         baSourceID( 0)          3
>         bControlSize            2
>         bmControls( 0)       0xff
>         bmControls( 1)       0x03
>         iExtension              0
>       VideoControl Interface Descriptor:
>         bLength                18
>         bDescriptorType        36
>         bDescriptorSubtype      2 (INPUT_TERMINAL)
>         bTerminalID             1
>         wTerminalType      0x0201 Camera Sensor
>         bAssocTerminal          0
>         iTerminal               0
>         wObjectiveFocalLengthMin      0
>         wObjectiveFocalLengthMax      0
>         wOcularFocalLength            0
>         bControlSize                  3
>         bmControls           0x00000008
>           Exposure Time (Absolute)
>       VideoControl Interface Descriptor:
>         bLength                11
>         bDescriptorType        36
>         bDescriptorSubtype      5 (PROCESSING_UNIT)
>       Warning: Descriptor too short
>         bUnitID                 3
>         bSourceID               1
>         wMaxMultiplier          0
>         bControlSize            2
>         bmControls     0x0000177f
>           Brightness
>           Contrast
>           Hue
>           Saturation
>           Sharpness
>           Gamma
>           White Balance Temperature
>           Backlight Compensation
>           Gain
>           Power Line Frequency
>           White Balance Temperature, Auto
>         iProcessing             0
>         bmVideoStandards     0x00
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x83  EP 3 IN
>         bmAttributes            3
>           Transfer Type            Interrupt
>           Synch Type               None
>           Usage Type               Data
>         wMaxPacketSize     0x0017  1x 23 bytes
>         bInterval               6
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        1
>       bAlternateSetting       0
>       bNumEndpoints           0
>       bInterfaceClass        14 Video
>       bInterfaceSubClass      2 Video Streaming
>       bInterfaceProtocol      0
>       iInterface              0
>       VideoStreaming Interface Descriptor:
>         bLength                            14
>         bDescriptorType                    36
>         bDescriptorSubtype                  1 (INPUT_HEADER)
>         bNumFormats                         1
>         wTotalLength                   0x0101
>         bEndPointAddress                  129
>         bmInfo                              0
>         bTerminalLink                       4
>         bStillCaptureMethod                 2
>         bTriggerSupport                     1
>         bTriggerUsage                       1
>         bControlSize                        1
>         bmaControls( 0)                     0
>       VideoStreaming Interface Descriptor:
>         bLength                            27
>         bDescriptorType                    36
>         bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
>         bFormatIndex                        1
>         bNumFrameDescriptors                6
>         guidFormat
> {32595559-0000-0010-8000-00aa00389b71}
>         bBitsPerPixel                      16
>         bDefaultFrameIndex                  1
>         bAspectRatioX                       0
>         bAspectRatioY                       0
>         bmInterlaceFlags                 0x00
>           Interlaced stream or variable: No
>           Fields per frame: 2 fields
>           Field 1 first: No
>           Field pattern: Field 1 only
>         bCopyProtect                        0
>       VideoStreaming Interface Descriptor:
>         bLength                            30
>         bDescriptorType                    36
>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>         bFrameIndex                         1
>         bmCapabilities                   0x00
>           Still image unsupported
>         wWidth                            640
>         wHeight                           480
>         dwMinBitRate                 15360000
>         dwMaxBitRate                 15360000
>         dwMaxVideoFrameBufferSize      614400
>         dwDefaultFrameInterval         400000
>         bFrameIntervalType                  1
>         dwFrameInterval( 0)            400000
>       VideoStreaming Interface Descriptor:
>         bLength                            30
>         bDescriptorType                    36
>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>         bFrameIndex                         2
>         bmCapabilities                   0x00
>           Still image unsupported
>         wWidth                            160
>         wHeight                           120
>         dwMinBitRate                   960000
>         dwMaxBitRate                   960000
>         dwMaxVideoFrameBufferSize       38400
>         dwDefaultFrameInterval         400000
>         bFrameIntervalType                  1
>         dwFrameInterval( 0)            400000
>       VideoStreaming Interface Descriptor:
>         bLength                            30
>         bDescriptorType                    36
>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>         bFrameIndex                         3
>         bmCapabilities                   0x00
>           Still image unsupported
>         wWidth                            176
>         wHeight                           144
>         dwMinBitRate                  1267200
>         dwMaxBitRate                  1267200
>         dwMaxVideoFrameBufferSize       50688
>         dwDefaultFrameInterval         400000
>         bFrameIntervalType                  1
>         dwFrameInterval( 0)            400000
>       VideoStreaming Interface Descriptor:
>         bLength                            30
>         bDescriptorType                    36
>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>         bFrameIndex                         4
>         bmCapabilities                   0x00
>           Still image unsupported
>         wWidth                            320
>         wHeight                           240
>         dwMinBitRate                  3840000
>         dwMaxBitRate                  3840000
>         dwMaxVideoFrameBufferSize      153600
>         dwDefaultFrameInterval         400000
>         bFrameIntervalType                  1
>         dwFrameInterval( 0)            400000
>       VideoStreaming Interface Descriptor:
>         bLength                            30
>         bDescriptorType                    36
>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>         bFrameIndex                         5
>         bmCapabilities                   0x00
>           Still image unsupported
>         wWidth                            352
>         wHeight                           288
>         dwMinBitRate                  5068800
>         dwMaxBitRate                  5068800
>         dwMaxVideoFrameBufferSize      202752
>         dwDefaultFrameInterval         400000
>         bFrameIntervalType                  1
>         dwFrameInterval( 0)            400000
>       VideoStreaming Interface Descriptor:
>         bLength                            30
>         bDescriptorType                    36
>         bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
>         bFrameIndex                         6
>         bmCapabilities                   0x00
>           Still image unsupported
>         wWidth                            640
>         wHeight                           480
>         dwMinBitRate                 15360000
>         dwMaxBitRate                 15360000
>         dwMaxVideoFrameBufferSize      614400
>         dwDefaultFrameInterval         400000
>         bFrameIntervalType                  1
>         dwFrameInterval( 0)            400000
>       VideoStreaming Interface Descriptor:
>         bLength                            30
>         bDescriptorType                    36
>         bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)
>         bEndpointAddress                    0
>         bNumImageSizePatterns               6
>         wWidth( 0)                        640
>         wHeight( 0)                       480
>         wWidth( 1)                        160
>         wHeight( 1)                       120
>         wWidth( 2)                        176
>         wHeight( 2)                       144
>         wWidth( 3)                        320
>         wHeight( 3)                       240
>         wWidth( 4)                        352
>         wHeight( 4)                       288
>         wWidth( 5)                        640
>         wHeight( 5)                       480
>         bNumCompressionPatterns             0
>       VideoStreaming Interface Descriptor:
>         bLength                             6
>         bDescriptorType                    36
>         bDescriptorSubtype                 13 (COLORFORMAT)
>         bColorPrimaries                     1 (BT.709,sRGB)
>         bTransferCharacteristics            1 (BT.709)
>         bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
>     Interface Descriptor:
>       bLength                 9
>       bDescriptorType         4
>       bInterfaceNumber        1
>       bAlternateSetting       1
>       bNumEndpoints           1
>       bInterfaceClass        14 Video
>       bInterfaceSubClass      2 Video Streaming
>       bInterfaceProtocol      0
>       iInterface              0
>       Endpoint Descriptor:
>         bLength                 7
>         bDescriptorType         5
>         bEndpointAddress     0x81  EP 1 IN
>         bmAttributes            5
>           Transfer Type            Isochronous
>           Synch Type               Asynchronous
>           Usage Type               Data
>         wMaxPacketSize     0x1400  3x 1024 bytes
>         bInterval               1
> Device Qualifier (for other device speed):
>   bLength                10
>   bDescriptorType         6
>   bcdUSB               2.00
>   bDeviceClass          239 Miscellaneous Device
>   bDeviceSubClass         2
>   bDeviceProtocol         1 Interface Association
>   bMaxPacketSize0        64
>   bNumConfigurations      1
> can't get debug descriptor: Resource temporarily unavailable
> Device Status:     0x0000
>   (Bus Powered)
> 
> 
> _______________________________________________
> Linux-uvc-devel mailing list
> Linux-uvc-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
