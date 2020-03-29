Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACEF196F0A
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 29 Mar 2020 19:53:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jIc6z-0003xG-CD; Sun, 29 Mar 2020 17:52:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alessandro.govi@gmail.com>) id 1jIc6x-0003x1-UW
 for linux-uvc-devel@lists.sourceforge.net; Sun, 29 Mar 2020 17:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yufzp+XSMbH+W/EylP+GgzC1hAQoRRKRZiN+JmxN7sU=; b=HcOQ90Wn7ZNAXAAxUfU7u3tHST
 CapNrG2O8jcMTiS93G0ew56fvRzI8+h7odIWPA+ZdNEAmUciYUT6B4JtyXYJnsZa2pKePNsXHpVSl
 d4wL4HOn0QUohQSLHTzeQCKnQXNXHFxSRaSy40O5xFs9nyd1p28j4qEq+RZ4GsypIugs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Yufzp+XSMbH+W/EylP+GgzC1hAQoRRKRZiN+JmxN7sU=; b=K
 6As3J2zw79oLubkHwuXu52xhY44pSXE6hKkfp2Rr8Lmg0S+YN4u9Z1eEYHSdMgd7WgKaZkTp5stiO
 1iHsB3Es4q8bGDC0L1heUENJleUiS1IMllJI0HwThnSIMWwDcUQ1fF+xcMDF5KcCFuKVmuDb48wGJ
 tIB92v0dRNmcEgUo=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jIc6v-00ELwv-Uz
 for linux-uvc-devel@lists.sourceforge.net; Sun, 29 Mar 2020 17:52:39 +0000
Received: by mail-ot1-f43.google.com with SMTP id a49so15512501otc.11
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun, 29 Mar 2020 10:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Yufzp+XSMbH+W/EylP+GgzC1hAQoRRKRZiN+JmxN7sU=;
 b=ph7H/yD7CYzKPPZiGfjpEM3KooGNuGChcSB6HAAOM/aLqUG7X0DfStUMgNA54ebfr+
 GXiHlwqpOR3IEJw4XKjOOm2c4RpRSkrYVp9TY5b7WL4PvnyI/KtDTDXhcseKiD7zPl1R
 Ix9g7oj4iQ4Sb53eqUGwcOshRDStaq6mGiUQGkVKK13itrY95trRslNYnbuEqaZe+JXX
 XbMfselrZ6i1MFbt8ujcccFw6/+3E0YtonxH9NDrCw/cCNK4AXO8xLhG28R2fx6YKHeW
 8PUnKWC7scSNrWpGz+GHVf7Y/YuPLkbNLwh7UKEcOoOC3PXqSztRprJeHnzr018eDR/F
 sy7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Yufzp+XSMbH+W/EylP+GgzC1hAQoRRKRZiN+JmxN7sU=;
 b=EGlp50ovno7wJiLs2xD0wZ+ErzRxN3ZFLGnjvUVTSFL0pf8tmN6WWsjERmIjMY6S4C
 f/wXqX3FTABTqOrWRvsBfaDcpuvWpe88txvL8Cuq3f9+rrCF8Pl1oze3MR1VdPYZcc1W
 LanZIwtblypcp9BWfLbCqg8kP8kFilZgyGqMXURTLE+XB6094uLBzrxxqv0zzSY3RN0E
 3xdmNe9qtB1iRmFOFvE/bMJ28Lh1npgAK5og06cnbYcvj0i+vIbkxqMkX9/ww2GGuayO
 jZU+y8tAKndUpzt/yGtifpoLwLCskH4mIHh+GRHk/+yz8g1nVxupkBi6WJ41P9VzHodE
 D18w==
X-Gm-Message-State: ANhLgQ0YDSsCuWA6OI+AYeYI/oixaHp5Qi9KptWTVvKFcnoWGdaMKXMN
 01TW4g+6oBo0cKDxak5ZHAADAkEqiUWYeaEX0e/MYB9Z
X-Google-Smtp-Source: ADFU+vthVp09epRqBoPQAgNDKq/1MmxNHiqINOn0+W95ZY9XFr7Max4i6IJwCxXPDirn1EaMv2YKOx2N3JEI2w6X6qc=
X-Received: by 2002:a9d:f05:: with SMTP id 5mr6264905ott.263.1585504351812;
 Sun, 29 Mar 2020 10:52:31 -0700 (PDT)
MIME-Version: 1.0
From: Alessandro Govi <alessandro.govi@gmail.com>
Date: Sun, 29 Mar 2020 19:52:20 +0200
Message-ID: <CADPtnGMY9YCifVQMQcCHbzOh7ksKkAaBv50MHVgj5p82Kh7TqQ@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alessandro.govi[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jIc6v-00ELwv-Uz
Subject: [linux-uvc-devel] integrated camera into netbook Asus F200M
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
Content-Type: multipart/mixed; boundary="===============8345595721298105619=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============8345595721298105619==
Content-Type: multipart/alternative; boundary="000000000000ae005905a201ffe2"

--000000000000ae005905a201ffe2
Content-Type: text/plain; charset="UTF-8"

Dear group,
I wanted to report the lack of my webcam into the list.
Maybe can you make anything about it?

I use Ubuntu 18.04 and in the past it worked. Now it recognizes the
hardware but doesn't initialize it. The result is always a black screen,
even trying with different programs.

I read around that it could be a kernel problem.
Maybe could you suggest me a working kernel?
I already tried different ones but with no luck.

Following here I paste the partial output of some commands in order to
identify the hardware and the problem.

Thanks in advance for a reply.

Alessandro
from Italy

*****************************


from lsusb:

Bus 001 Device 003: ID 0bda:5603 Realtek Semiconductor Corp.



from uname:

5.5.10-050510-generic




from hwinfo:

34: USB 00.0: 0000 Unclassified device
  [Created at usb.122]
  Unique ID: 2UT6.bseVf4eKJ39
  Parent ID: k4bc.2DFUsyrieMD
  SysFS ID: /devices/pci0000:00/0000:00:14.0/usb1/1-3/1-3:1.0
  SysFS BusID: 1-3:1.0
  Hardware Class: unknown
  Model: "Realtek USB2.0 HD UVC WebCam"
  Hotplug: USB
  Vendor: usb 0x0bda "Realtek Semiconductor Corp."
  Device: usb 0x5603 "USB2.0 HD UVC WebCam"
  Revision: "5.30"
  Serial ID: "0x0001"
  Driver: "uvcvideo"
  Driver Modules: "uvcvideo"
  Device File: /dev/input/event11
  Device Files: /dev/input/event11,
/dev/input/by-id/usb-Generic_USB2.0_HD_UVC_WebCam_0x0001-event-if00,
/dev/input/by-path/pci-0000:00:14.0-usb-0:3:1.0-event
  Device Number: char 13:75
  Speed: 480 Mbps
  Module Alias: "usb:v0BDAp5603d0530dcEFdsc02dp01ic0Eisc01ip00in00"
  Driver Info #0:
    Driver Status: uvcvideo is active
    Driver Activation Cmd: "modprobe uvcvideo"
  Config Status: cfg=new, avail=yes, need=no, active=unknown
  Attached to: #35 (Hub)



from dsmesg:

[    2.623113] usb 1-3: New USB device found, idVendor=0bda,
idProduct=5603, bcdDevice= 5.30
[   23.969806] videodev: Linux video capture interface: v2.00
[   24.387250] uvcvideo: Found UVC 1.00 device USB2.0 HD UVC WebCam
(0bda:5603)
[   24.426610] uvcvideo 1-3:1.0: Entity type for entity Extension 4 was not
initialized!
[   24.426616] uvcvideo 1-3:1.0: Entity type for entity Processing 2 was
not initialized!
[   24.426619] uvcvideo 1-3:1.0: Entity type for entity Camera 1 was not
initialized!
[   24.428130] usbcore: registered new interface driver uvcvideo

--000000000000ae005905a201ffe2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Dear group,</div><div>I wanted to re=
port the lack of my webcam into the list.</div><div>Maybe can you make anyt=
hing about it?</div><div><br></div><div>I use Ubuntu 18.04 and in the past =
it worked. Now it recognizes the hardware but doesn&#39;t initialize it. Th=
e result is always a black screen, even trying with different programs.</di=
v><div><br></div><div>I read around that it could be a kernel problem.</div=
><div>Maybe could you suggest me a working kernel?</div><div>I already trie=
d different ones but with no luck.</div><div><br></div><div>Following here =
I paste the partial output of some commands in order to identify the hardwa=
re and the problem.</div><div><br></div><div>Thanks in advance for a reply.=
</div><div><br></div><div>Alessandro</div><div>from Italy</div><div><br></d=
iv><div>*****************************</div><div><br></div><br><div>from lsu=
sb:</div><div><br></div><div>Bus 001 Device 003: ID 0bda:5603 Realtek Semic=
onductor Corp.=C2=A0<br></div><div><br></div><div><br></div><div><br></div>=
<div>from uname:</div><div><br></div><div>5.5.10-050510-generic<br></div><d=
iv><br></div><div><br></div><div><br></div><div><br></div><div>from hwinfo:=
</div><div><br></div><div>34: USB 00.0: 0000 Unclassified device<br>=C2=A0 =
[Created at usb.122]<br>=C2=A0 Unique ID: 2UT6.bseVf4eKJ39<br>=C2=A0 Parent=
 ID: k4bc.2DFUsyrieMD<br>=C2=A0 SysFS ID: /devices/pci0000:00/0000:00:14.0/=
usb1/1-3/1-3:1.0<br>=C2=A0 SysFS BusID: 1-3:1.0<br>=C2=A0 Hardware Class: u=
nknown<br>=C2=A0 Model: &quot;Realtek USB2.0 HD UVC WebCam&quot;<br>=C2=A0 =
Hotplug: USB<br>=C2=A0 Vendor: usb 0x0bda &quot;Realtek Semiconductor Corp.=
&quot;<br>=C2=A0 Device: usb 0x5603 &quot;USB2.0 HD UVC WebCam&quot;<br>=C2=
=A0 Revision: &quot;5.30&quot;<br>=C2=A0 Serial ID: &quot;0x0001&quot;<br>=
=C2=A0 Driver: &quot;uvcvideo&quot;<br>=C2=A0 Driver Modules: &quot;uvcvide=
o&quot;<br>=C2=A0 Device File: /dev/input/event11<br>=C2=A0 Device Files: /=
dev/input/event11, /dev/input/by-id/usb-Generic_USB2.0_HD_UVC_WebCam_0x0001=
-event-if00, /dev/input/by-path/pci-0000:00:14.0-usb-0:3:1.0-event<br>=C2=
=A0 Device Number: char 13:75<br>=C2=A0 Speed: 480 Mbps<br>=C2=A0 Module Al=
ias: &quot;usb:v0BDAp5603d0530dcEFdsc02dp01ic0Eisc01ip00in00&quot;<br>=C2=
=A0 Driver Info #0:<br>=C2=A0 =C2=A0 Driver Status: uvcvideo is active<br>=
=C2=A0 =C2=A0 Driver Activation Cmd: &quot;modprobe uvcvideo&quot;<br>=C2=
=A0 Config Status: cfg=3Dnew, avail=3Dyes, need=3Dno, active=3Dunknown<br>=
=C2=A0 Attached to: #35 (Hub)<br></div><div><br></div><div><br></div><div><=
br></div><div>from dsmesg:</div><div><br></div><div>[ =C2=A0 =C2=A02.623113=
] usb 1-3: New USB device found, idVendor=3D0bda, idProduct=3D5603, bcdDevi=
ce=3D 5.30</div><div>[ =C2=A0 23.969806] videodev: Linux video capture inte=
rface: v2.00<br>[ =C2=A0 24.387250] uvcvideo: Found UVC 1.00 device USB2.0 =
HD UVC WebCam (0bda:5603)<br></div><div>[ =C2=A0 24.426610] uvcvideo 1-3:1.=
0: Entity type for entity Extension 4 was not initialized!<br>[ =C2=A0 24.4=
26616] uvcvideo 1-3:1.0: Entity type for entity Processing 2 was not initia=
lized!<br>[ =C2=A0 24.426619] uvcvideo 1-3:1.0: Entity type for entity Came=
ra 1 was not initialized!<br>[ =C2=A0 24.428130] usbcore: registered new in=
terface driver uvcvideo<div class=3D"gmail-yj6qo"></div><div class=3D"gmail=
-adL"><br></div></div><div class=3D"gmail-adL"><br></div></div></div>

--000000000000ae005905a201ffe2--


--===============8345595721298105619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8345595721298105619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============8345595721298105619==--

