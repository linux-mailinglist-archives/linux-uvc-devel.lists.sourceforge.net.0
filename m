Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B55A1C4364
	for <lists+linux-uvc-devel@lfdr.de>; Mon,  4 May 2020 19:56:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jVfJu-00055N-5v; Mon, 04 May 2020 17:55:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sekistner@gmail.com>) id 1jVfJs-000551-0y
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 17:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 Reply-To:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oSFrSG7pjf7sLlGnameknvzLGRb5EuB20nJvMxFGBvE=; b=ZVZ6oGbRJ8PCBjYiarX+Qjku0o
 yT7tIK1puBgN0mnDthz857bfTChS6zSvlNgURuDQb/GuXMcExhrFLj77I1nkPqQqF0sjWFqUllTz9
 Ms6F9cgZtIchbqF9O76WPzOoPKwU0zWBPTj2VPjxS2z31I15oHW3T8qIO+envHEkNfks=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:Reply-To:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oSFrSG7pjf7sLlGnameknvzLGRb5EuB20nJvMxFGBvE=; b=L
 YFK8cKcdr1ou8mwktmWMShUHSfh9+8RRbYGpNJ/hlnFPeiJsrm2ApMsOPLoZYQOSrjVL9T4WztIQr
 dftQS59fWyDaygNXQcJPDtYxCVCb5IYx/vzmUroUHSdISMTbSxkWs2ok3z6qEzYEftN2Gq2Wn+3v9
 46XwbwDAvWNxQaGc=;
Received: from mail-vk1-f196.google.com ([209.85.221.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVfJq-007EP9-Ij
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 17:55:55 +0000
Received: by mail-vk1-f196.google.com with SMTP id b14so4852343vkk.10
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 04 May 2020 10:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=oSFrSG7pjf7sLlGnameknvzLGRb5EuB20nJvMxFGBvE=;
 b=GPLXAJKL7rIwlOhVqtJ4hKSYz11Cw4j17pBFr35+n0b6+wrSUW52r32EEwTcTJl7QT
 rHwB3wU823Pj+jmubZHfTKl22RD/a/YjdBv0GOzdiTy5p9FxpkS+Ccmy+L+GMtfqpYHk
 4UP2b4ZhiWP6wlzn4F0hKXjkc5Kdv3kjmfYydCQj2n0b3JkmDSxqC6miSliWoFap4vQB
 TDJBEGNNtosP73WmSFu80NYzjX+Fe2blD4ppMnTPSANCBiVHhQAg46pPV/2XGGw8Flbn
 Y99mBt+K6gBhtVggNAwVFR6nqLAtcKMbJxbODs7qK8DgIFKtRVoQ4NXJ4jmC9SZmTfy0
 4orw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=oSFrSG7pjf7sLlGnameknvzLGRb5EuB20nJvMxFGBvE=;
 b=OJ1zem7shG0g9MRrg1cWRlY5FxBIo6oD9CLN6wCUJoJLMZtxpk1eRFPWI5VZnUq9oV
 f3QLODf+DpXBqiCRgeGymvLH21HyE7PoZ76a7RwX5JtGamwZ6cZT1i9x0Eti6fo1ISRB
 OOWma8M00bdnRAmyxI7AIHHzkhQHZ5LUIk1+vbzuNICX+i2F5FTzg2nrRweX/lT0SwwB
 eBej8jUiwGss824+UHGi0HNrluUUCMQPjGCfUVsWbVUMDk6Q3Ikvmz28Gw1MiC2XLMq0
 uPmB3jcCuJEboNRIDzyLk2cr93v63VioiGF8Fr6fOrMha7BxtV9G9HDiJBOGfCO5oAGc
 fXYA==
X-Gm-Message-State: AGi0PuZiGyXsAwTS1P3eBvN9OCGKM7GzU9LDQsnsqg5jEQ4Esir2rdkK
 ZFG15Zs4Vjv0woT0tQyYcauG1e34TI/QpjOwdSRFVIxR8I4=
X-Google-Smtp-Source: APiQypLvpiWkcM5sZhcySDTIu7LNDGUjgzm7KlYi/jRMbL6lX8PVOHpbBVferk3IAGSUPwbpQw0FWbwAgYRRLLl5eIg=
X-Received: by 2002:a67:b905:: with SMTP id q5mr174621vsn.203.1588613225909;
 Mon, 04 May 2020 10:27:05 -0700 (PDT)
MIME-Version: 1.0
From: Severin Kistner <sekistner@gmail.com>
Date: Mon, 4 May 2020 19:26:55 +0200
Message-ID: <CANh1nAZu4gtKc3KuFb8Oikvx2AnAB2HMWUGHiG+5tSn_OSX_UA@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (sekistner[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVfJq-007EP9-Ij
Subject: [linux-uvc-devel] Support for Logitech StreamCam
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
Reply-To: sekistner@gmail.com
Content-Type: multipart/mixed; boundary="===============8234472330186296473=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============8234472330186296473==
Content-Type: multipart/alternative; boundary="00000000000004135605a4d5d7cf"

--00000000000004135605a4d5d7cf
Content-Type: text/plain; charset="UTF-8"

Hello uvc developers,

I hope I am doing this right.
Because of the pandemic, this was the only decent device I got.
I even got a USB type C PCI device for it.

I am not sure that the USB device could be a factor too, with bandwidth

the lshw for it

       description: USB controller
                      product: ASM2142 USB 3.1 Host Controller
                      vendor: ASMedia Technology Inc.
                      physical id: 0
                      bus info: pci@0000:05:00.0
                      version: 00
                      width: 64 bits
                      clock: 33MHz
                      capabilities: msi msix pm pciexpress xhci bus_master
cap_list
                      configuration: driver=xhci_hcd latency=0
                      resources: irq:25 memory:f7500000-f7507fff
                    *-usbhost:0
                         product: xHCI Host Controller
                         vendor: Linux 5.4.0-28-generic xhci-hcd
                         physical id: 0
                         bus info: usb@3
                         logical name: usb3
                         version: 5.04
                         capabilities: usb-2.00
                         configuration: driver=hub slots=2 speed=480Mbit/s
                    *-usbhost:1
                         product: xHCI Host Controller
                         vendor: Linux 5.4.0-28-generic xhci-hcd
                         physical id: 1
                         bus info: usb@4
                         logical name: usb4
                         version: 5.04
                         capabilities: usb-3.10
                         configuration: driver=hub slots=2 speed=10000Mbit/s

It basically works for a few minutes and then it crashes:

lsusb:

046d:0893 Logitech, Inc. Logitech StreamCam

lshw:

 description: Video
                            product: Logitech StreamCam
                            vendor: Logitech, Inc.
                            physical id: 2
                            bus info: usb@4:2
                            version: 3.17
                            serial: A870AA05
                            capabilities: usb-3.20
                            configuration: driver=usbhid maxpower=896mA
speed=5000Mbit/s

it works for a few seconds then crashes:

dmseg:

[    2.745831] uvcvideo: Found UVC 1.00 device Logitech StreamCam
(046d:0893)
[    2.762190] uvcvideo 4-2:1.0: Entity type for entity Processing 3 was
not initialized!
[    2.762192] uvcvideo 4-2:1.0: Entity type for entity Extension 14 was
not initialized!
[    2.762193] uvcvideo 4-2:1.0: Entity type for entity Extension 6 was not
initialized!
[    2.762194] uvcvideo 4-2:1.0: Entity type for entity Extension 8 was not
initialized!
[    2.762195] uvcvideo 4-2:1.0: Entity type for entity Extension 9 was not
initialized!
[    2.762196] uvcvideo 4-2:1.0: Entity type for entity Extension 10 was
not initialized!
[    2.762196] uvcvideo 4-2:1.0: Entity type for entity Extension 11 was
not initialized!
[    2.762197] uvcvideo 4-2:1.0: Entity type for entity Camera 1 was not
initialized!
[    2.762303] usbcore: registered new interface driver uvcvideo
[  445.629384] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit
3: -110 (exp. 1).
[  446.145539] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit
3: -110 (exp. 1).
[  446.653403] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit
3: -110 (exp. 1).
[  447.165406] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit
3: -110 (exp. 1).
[  447.677412] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit
3: -110 (exp. 1).
[  448.189409] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit
3: -110 (exp. 1).
[  453.309443] uvcvideo: Failed to set UVC probe control : -110 (exp. 26).

I would really like to use this device, if I can help in any way let me
know.

Cheers Severin

--00000000000004135605a4d5d7cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hello uvc developers,</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif">I hope I am =
doing this right.</div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif">Because of the pandemic, this was the only decent=
 device I got.<br>I even got a USB type C PCI device for it.<br><br>I am no=
t sure that the USB device could be a factor too, with bandwidth<br><br>the=
 lshw for it</div><div class=3D"gmail_default" style=3D"font-family:arial,h=
elvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:arial,helvetica,sans-serif">=C2=A0 =C2=A0 =C2=A0 =C2=A0description: U=
SB controller<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 product: ASM2142 USB 3.1 Host Controller<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vendor: =
ASMedia Technology Inc.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 physical id: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bus info: pci@0000:05:00.0=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 version: 00<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 width: 64 bits<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clock: 33MHz<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 capabilitie=
s: msi msix pm pciexpress xhci bus_master cap_list<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 configuration: driv=
er=3Dxhci_hcd latency=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 resources: irq:25 memory:f7500000-f7507fff<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *-=
usbhost:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0product: xHCI Host Controller<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0vendor: Linux 5.4.0-28-generic xhci-hcd<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0physical id: =
0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bus info: usb@3<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logical name: usb3<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0version: 5.04<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0capabilities: usb-2.00<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0configuration: driver=3Dhub slots=3D2 speed=3D480Mbit/s<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *-us=
bhost:1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0product: xHCI Host Controller<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0vendor: Linux 5.4.0-28-generic xhci-hcd<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0physical id: =
1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0bus info: usb@4<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logical name: usb4<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0version: 5.04<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0capabilities: usb-3.10<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0configuration: driver=3Dhub slots=3D2 speed=3D10000Mbit/s<=
br><br>It basically works for a few minutes and then it crashes:</div><div =
class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><b=
r></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif">lsusb:=C2=A0</div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif"><br>046d:0893 Logitech, Inc. Logitech Strea=
mCam<br></div><div class=3D"gmail_default" style=3D"font-family:arial,helve=
tica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:arial,helvetica,sans-serif">lshw:</div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">=C2=A0description:=
 Video<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 product: Logitech StreamCam<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 vendor: Logitech, Inc.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 physical=
 id: 2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bus info: usb@4:2<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 version: 3.17<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 serial: A870AA05<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 capabilities: usb-3.20<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 configur=
ation: driver=3Dusbhid maxpower=3D896mA speed=3D5000Mbit/s<br><br>it works =
for a few seconds then crashes:<br><br>dmseg:<br><br>[ =C2=A0 =C2=A02.74583=
1] uvcvideo: Found UVC 1.00 device Logitech StreamCam (046d:0893)<br>[ =C2=
=A0 =C2=A02.762190] uvcvideo 4-2:1.0: Entity type for entity Processing 3 w=
as not initialized!<br>[ =C2=A0 =C2=A02.762192] uvcvideo 4-2:1.0: Entity ty=
pe for entity Extension 14 was not initialized!<br>[ =C2=A0 =C2=A02.762193]=
 uvcvideo 4-2:1.0: Entity type for entity Extension 6 was not initialized!<=
br>[ =C2=A0 =C2=A02.762194] uvcvideo 4-2:1.0: Entity type for entity Extens=
ion 8 was not initialized!<br>[ =C2=A0 =C2=A02.762195] uvcvideo 4-2:1.0: En=
tity type for entity Extension 9 was not initialized!<br>[ =C2=A0 =C2=A02.7=
62196] uvcvideo 4-2:1.0: Entity type for entity Extension 10 was not initia=
lized!<br>[ =C2=A0 =C2=A02.762196] uvcvideo 4-2:1.0: Entity type for entity=
 Extension 11 was not initialized!<br>[ =C2=A0 =C2=A02.762197] uvcvideo 4-2=
:1.0: Entity type for entity Camera 1 was not initialized!<br>[ =C2=A0 =C2=
=A02.762303] usbcore: registered new interface driver uvcvideo<br>[ =C2=A04=
45.629384] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit 3: -1=
10 (exp. 1).<br>[ =C2=A0446.145539] uvcvideo: Failed to query (SET_CUR) UVC=
 control 11 on unit 3: -110 (exp. 1).<br>[ =C2=A0446.653403] uvcvideo: Fail=
ed to query (SET_CUR) UVC control 11 on unit 3: -110 (exp. 1).<br>[ =C2=A04=
47.165406] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit 3: -1=
10 (exp. 1).<br>[ =C2=A0447.677412] uvcvideo: Failed to query (SET_CUR) UVC=
 control 11 on unit 3: -110 (exp. 1).<br>[ =C2=A0448.189409] uvcvideo: Fail=
ed to query (SET_CUR) UVC control 11 on unit 3: -110 (exp. 1).<br>[ =C2=A04=
53.309443] uvcvideo: Failed to set UVC probe control : -110 (exp. 26).<br><=
br>I would really like to use this device, if I can help in any way let me =
know.<br><br>Cheers Severin</div><div dir=3D"ltr" data-smartmail=3D"gmail_s=
ignature"></div></div>

--00000000000004135605a4d5d7cf--


--===============8234472330186296473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8234472330186296473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============8234472330186296473==--

