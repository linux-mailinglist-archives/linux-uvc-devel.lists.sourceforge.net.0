Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A0F1C482D
	for <lists+linux-uvc-devel@lfdr.de>; Mon,  4 May 2020 22:26:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jVher-0000QH-MM; Mon, 04 May 2020 20:25:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cbullow@gmail.com>) id 1jVheq-0000Q6-Ih
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 20:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:CC:To:Date:From:Subject:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xfSA2UejZSBbfOceYN0cl/ZNHOGMCkFl9G/A76hmIlE=; b=nAjLnwuNoBDBtcyq0//JeNd3xE
 Z4fVovZ7WuN02d/QlJ0RhjdsDWB/bJFdMul4XSo8fjZ1Y88nX9aTTNhJQvY7UmPBdU52AMU3J1Uha
 lzvj6EF2LgRXTsbrDSC/Pkv6+GhnNaL1FP5AlomjxXoR9JdFtyJ5PwM5KrrfmPNB8RTk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:CC:To:Date:From:Subject:Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xfSA2UejZSBbfOceYN0cl/ZNHOGMCkFl9G/A76hmIlE=; b=f1/zNAAMg76/T8AP6gy/R+fOpR
 aID3cPncAvifRBjlKKPLKsr8zLWkgTxJKOhYUV5GWpFb1a43JM1h40VI5NHx/F61bBCqii78CM8tj
 rDq+LOTwGDBbcRQpEBrAVj6em4kFD2q52DNdT1cXFy7rUrUyEuFdgboOFQrRXcs3I7FY=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVheo-007Q5h-J4
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 20:25:44 +0000
Received: by mail-pf1-f171.google.com with SMTP id z1so6160782pfn.3
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 04 May 2020 13:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=in-reply-to:references:thread-topic:user-agent:mime-version
 :content-transfer-encoding:subject:from:date:to:cc:message-id;
 bh=xfSA2UejZSBbfOceYN0cl/ZNHOGMCkFl9G/A76hmIlE=;
 b=FrthgNdEVf3f/ELkYimUB63Ukrv+4srW+CGcA8Ry+iuQEOXar0hY2h8fSAVXXxsj7i
 qkW8KgcOsdqBWIe+4igD067U/uttlNq5z3V0/v9R3bHydojlf0ThbOpQl9JT6B0jJmez
 0DzC0xVZWiwzXAl7iz+Y9DwwbD+TsCamwwFlZ4QcK3HMako3LCYKcFHb7PaG4zXy1a8d
 bVq8trqwDCWYjtHYBVAjqH05q+Kk50dV40eUrLfV5XSYnLjj47RxM5mfMBJU/KvQi9Nh
 3/AF3cvxVTr1uqGv8mcD0w8n9XngZEqxLjj0+5Q5QYgdFi9eQgOXUNeZq4oL0UzsK2YS
 JnmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:in-reply-to:references:thread-topic:user-agent
 :mime-version:content-transfer-encoding:subject:from:date:to:cc
 :message-id;
 bh=xfSA2UejZSBbfOceYN0cl/ZNHOGMCkFl9G/A76hmIlE=;
 b=FnHgZES8MomHWkji21WPGqTJ3bQ2BhdLlUAgaGgGht2wyv2YELaU/0NhArNroT+CN5
 rygNNP3NBIeQY6xsfYPlro2uZCY62G2XF1qm2ibxcwQbMb4oiyQLVQxLDPOMD/m/0DGy
 r1VS75hIyz0UfvcxldBx2ohZGcMBYCOXBFGKXhSpUR5HINMfFJ6UfnnXw90HbBTNavHC
 Ejy0+R3DfWPW1OJysZrItxhJ75mcu9Qk6ZDDbwpGNPWTbPGDYBEdzHgvvUTYFDCVy8qC
 loCJYUQQgHRUs0otspeYD0y2rJfqyCsvK20q7ZrO1JgctEUjOEsQiUOwhdO1WdEa1/k/
 PrBg==
X-Gm-Message-State: AGi0PuZVCMwFz35Pe1UxJGg1NHJ/uoYQS8K6OshJiJRZCYMqsUo3w8rV
 Fk0dAuI/TgX5jlnlm1DQ4ys=
X-Google-Smtp-Source: APiQypKyOfXk38HXeEmtiEl1ysWfWncDg64Y0muRigmxldFYwIvctQEbUpPB+EdhM3rGjw/V31/elA==
X-Received: by 2002:a62:7cca:: with SMTP id x193mr18816633pfc.96.1588623929523; 
 Mon, 04 May 2020 13:25:29 -0700 (PDT)
Received: from [192.168.50.233] ([101.164.33.150])
 by smtp.gmail.com with ESMTPSA id j186sm9648515pfb.220.2020.05.04.13.25.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 13:25:28 -0700 (PDT)
In-Reply-To: <CANh1nAZu4gtKc3KuFb8Oikvx2AnAB2HMWUGHiG+5tSn_OSX_UA@mail.gmail.com>
References: <CANh1nAZu4gtKc3KuFb8Oikvx2AnAB2HMWUGHiG+5tSn_OSX_UA@mail.gmail.com>
X-Referenced-Uid: 21957
Thread-Topic: [linux-uvc-devel] Support for Logitech StreamCam
X-Blue-Identity: !l=386&o=342&fo=8610&pl=307&po=0&qs=PREFIX&f=HTML&n=Christian%20Bullow&e=cbullow%40gmail.com&m=!%3AOTFjZjU4MGEtZGNmOS00MTkxLTkzZTItMTliNzZlMjUxNmYz%3ASU5CT1g%3D%3AMjE5NTc%3D%3AANSWERED&p=293&q=SHOW
X-Is-Generated-Message-Id: true
User-Agent: Android
MIME-Version: 1.0
X-Local-Message-Id: <25719deb-5b67-4d3f-a4b4-9bdc3e6d7516@gmail.com>
From: Christian Bullow <cbullow@gmail.com>
Date: Tue, 05 May 2020 06:25:26 +1000
To: sekistner@gmail.com
Message-ID: <25719deb-5b67-4d3f-a4b4-9bdc3e6d7516@gmail.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (cbullow[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVheo-007Q5h-J4
Subject: Re: [linux-uvc-devel] Support for Logitech StreamCam
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
Cc: linux-uvc-devel@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============3604593367799337423=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============3604593367799337423==
Content-Type: multipart/alternative; boundary="----QI1B8IURPYT1MM27M6EMVRUOGKD9IH"
Content-Transfer-Encoding: 7bit

------QI1B8IURPYT1MM27M6EMVRUOGKD9IH
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=UTF-8

Hi Severin

I'm in the same boat and got the streamcam due to covid19=2E I =
also had trouble getting it recognised and working=2E I tried the usb c por=
t on my motherboard and had a similar issue (asrock x470 taichi)=2E Not tha=
t this is a potential solution for you, but I'm a gamer and have a Nvidia 2=
080 and discovered it has a usb c port for VR devices=2E I've put the webca=
m into that and it's been working=2E

=E2=81=A3Regards

C=E2=80=8B

On 5 Ma=
y 2020, 03:56, at 03:56, Severin Kistner <sekistner@gmail=2Ecom> wrote:
>He=
llo uvc developers,
>
>I hope I am doing this right=2E
>Because of the pand=
emic, this was the only decent device I got=2E
>I even got a USB type C PCI=
 device for it=2E
>
>I am not sure that the USB device could be a factor to=
o, with bandwidth
>
>the lshw for it
>
>       description: USB controller
=
>                      product: ASM2142 USB 3=2E1 Host Controller
>        =
              vendor: ASMedia Technology Inc=2E
>                      phys=
ical id: 0
>                      bus info: pci@0000:05:00=2E0
>           =
           version: 00
>                      width: 64 bits
>             =
         clock: 33MHz
>                   capabilities: msi msix pm pciexpr=
ess xhci bus_master
>cap_list
>                      configuration: driver=
=3Dxhci_hcd latency=3D0
>                      resources: irq:25 memory:f75=
00000-f7507fff
>                    *-usbhost:0
>                         p=
roduct: xHCI Host Controller
>                         vendor: Linux 5=2E4=
=2E0-28-generic xhci-hcd
>                         physical id: 0
>        =
                 bus info: usb@3
>                         logical name: us=
b3
>                         version: 5=2E04
>                         capa=
bilities: usb-2=2E00
>                      configuration: driver=3Dhub slo=
ts=3D2 speed=3D480Mbit/s
>                    *-usbhost:1
>                =
         product: xHCI Host Controller
>                         vendor: Li=
nux 5=2E4=2E0-28-generic xhci-hcd
>                         physical id: 1
=
>                         bus info: usb@4
>                         logical=
 name: usb4
>                         version: 5=2E04
>                    =
     capabilities: usb-3=2E10
>                    configuration: driver=3D=
hub slots=3D2 speed=3D10000Mbit/s
>
>It basically works for a few minutes a=
nd then it crashes:
>
>lsusb:
>
>046d:0893 Logitech, Inc=2E Logitech Stream=
Cam
>
>lshw:
>
> description: Video
>                            product: L=
ogitech StreamCam
>                            vendor: Logitech, Inc=2E
>  =
                          physical id: 2
>                            bus i=
nfo: usb@4:2
>                            version: 3=2E17
>                =
            serial: A870AA05
>                            capabilities: usb=
-3=2E20
>                            configuration: driver=3Dusbhid maxpowe=
r=3D896mA
>speed=3D5000Mbit/s
>
>it works for a few seconds then crashes:
>=

>dmseg:
>
>[    2=2E745831] uvcvideo: Found UVC 1=2E00 device Logitech Str=
eamCam
>(046d:0893)
>[    2=2E762190] uvcvideo 4-2:1=2E0: Entity type for e=
ntity Processing 3
>was
>not initialized!
>[    2=2E762192] uvcvideo 4-2:1=
=2E0: Entity type for entity Extension 14
>was
>not initialized!
>[    2=2E=
762193] uvcvideo 4-2:1=2E0: Entity type for entity Extension 6 was
>not
>in=
itialized!
>[    2=2E762194] uvcvideo 4-2:1=2E0: Entity type for entity Ext=
ension 8 was
>not
>initialized!
>[    2=2E762195] uvcvideo 4-2:1=2E0: Entit=
y type for entity Extension 9 was
>not
>initialized!
>[    2=2E762196] uvcv=
ideo 4-2:1=2E0: Entity type for entity Extension 10
>was
>not initialized!
=
>[    2=2E762196] uvcvideo 4-2:1=2E0: Entity type for entity Extension 11
>=
was
>not initialized!
>[    2=2E762197] uvcvideo 4-2:1=2E0: Entity type for=
 entity Camera 1 was
>not
>initialized!
>[    2=2E762303] usbcore: register=
ed new interface driver uvcvideo
>[  445=2E629384] uvcvideo: Failed to quer=
y (SET_CUR) UVC control 11 on
>unit
>3: -110 (exp=2E 1)=2E
>[  446=2E145539=
] uvcvideo: Failed to query (SET_CUR) UVC control 11 on
>unit
>3: -110 (exp=
=2E 1)=2E
>[  446=2E653403] uvcvideo: Failed to query (SET_CUR) UVC control=
 11 on
>unit
>3: -110 (exp=2E 1)=2E
>[  447=2E165406] uvcvideo: Failed to q=
uery (SET_CUR) UVC control 11 on
>unit
>3: -110 (exp=2E 1)=2E
>[  447=2E677=
412] uvcvideo: Failed to query (SET_CUR) UVC control 11 on
>unit
>3: -110 (=
exp=2E 1)=2E
>[  448=2E189409] uvcvideo: Failed to query (SET_CUR) UVC cont=
rol 11 on
>unit
>3: -110 (exp=2E 1)=2E
>[  453=2E309443] uvcvideo: Failed t=
o set UVC probe control : -110 (exp=2E
>26)=2E
>
>I would really like to us=
e this device, if I can help in any way let me
>know=2E
>
>Cheers Severin
>=

>
>-----------------------------------------------------------------------=
-
>
>
>
>------------------------------------------------------------------=
------
>
>_______________________________________________
>Linux-uvc-devel =
mailing list
>Linux-uvc-devel@lists=2Esourceforge=2Enet
>https://lists=2Eso=
urceforge=2Enet/lists/listinfo/linux-uvc-devel

------QI1B8IURPYT1MM27M6EMVRUOGKD9IH
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body style=3D"zoom: 0%;"><div dir=3D"auto">Hi Severin<b=
r><br></div>
<div dir=3D"auto">I'm in the same boat and got the streamcam d=
ue to covid19=2E I also had trouble getting it recognised and working=2E I =
tried the usb c port on my motherboard and had a similar issue (asrock x470=
 taichi)=2E Not that this is a potential solution for you, but I'm a gamer =
and have a Nvidia 2080 and discovered it has a usb c port for VR devices=2E=
 I've put the webcam into that and it's been working=2E<br><br></div>
<div =
dir=3D"auto"><!-- tmjah_g_1299s -->Regards<!-- tmjah_g_1299e --><br><br></d=
iv>
<div dir=3D"auto"><!-- tmjah_g_1299s -->C<!-- tmjah_g_1299e --></div>
<=
div class=3D"gmail_quote" >On 5 May 2020, at 03:56, Severin Kistner &lt;<a =
href=3D"mailto:sekistner@gmail=2Ecom" target=3D"_blank">sekistner@gmail=2Ec=
om</a>&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt=
 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;=
">
<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif">Hello uvc developers,</div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">I hope =
I am doing this right=2E</div><div class=3D"gmail_default" style=3D"font-fa=
mily:arial,helvetica,sans-serif">Because of the pandemic, this was the only=
 decent device I got=2E<br>I even got a USB type C PCI device for it=2E<br>=
<br>I am not sure that the USB device could be a factor too, with bandwidth=
<br><br>the lshw for it</div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:arial,helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp;des=
cription: USB controller<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; product: ASM2142 USB 3=2E1 Host Controller<br=
>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; vendor: ASMedia Technology Inc=2E<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; physical id: 0<br>&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; bus info: pci=
@0000:05:00=2E0<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; version: 00<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; width: 64 bits<br>&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; clock: 33MHz<br>&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 capabilities: msi msix pm pciexpress xhci bus_master cap_list<br>&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; configu=
ration: driver=3Dxhci_hcd latency=3D0<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; resources: irq:25 memory:f750000=
0-f7507fff<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; *-usbhost:0<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;product: xHCI Host Controller<br>&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;vendor: Linux 5=2E4=2E0-28-generic xhci-hcd<br>&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;p=
hysical id: 0<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;bus info: usb@3<br>&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;logical n=
ame: usb3<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;version: 5=2E04<br>&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;capabilities:=
 usb-2=2E00<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;configuration: driver=3Dhub slots=3D2 speed=
=3D480Mbit/s<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; *-usbhost:1<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;product: xHCI Host Controller<br>&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;vendor: Linux 5=2E4=2E0-28-generic xhci-hcd<br>&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;physical id: 1<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;bus info: usb@4<br>&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;logical=
 name: usb4<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;version: 5=2E04<br>&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;capabilitie=
s: usb-3=2E10<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;configuration: driver=3Dhub slots=3D2 speed=
=3D10000Mbit/s<br><br>It basically works for a few minutes and then it cras=
hes:</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif">lsusb:&nbsp;</div><div class=3D"gmail_default" st=
yle=3D"font-family:arial,helvetica,sans-serif"><br>046d:0893 Logitech, Inc=
=2E Logitech StreamCam<br></div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif">lshw:</div><div class=3D"gm=
ail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><di=
v class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">=
&nbsp;description: Video<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; product: Logitech Stream=
Cam<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; vendor: Logitech, Inc=2E<br>&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; physical id: 2<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; bus info: usb@4:2<br>&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; version: 3=2E17<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; serial: A870AA05<=
br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; capabilities: usb-3=2E20<br>&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; configuration: driver=3Dusbhid maxpower=3D896mA speed=3D5000Mbit/s<br><br=
>it works for a few seconds then crashes:<br><br>dmseg:<br><br>[ &nbsp; &nb=
sp;2=2E745831] uvcvideo: Found UVC 1=2E00 device Logitech StreamCam (046d:0=
893)<br>[ &nbsp; &nbsp;2=2E762190] uvcvideo 4-2:1=2E0: Entity type for enti=
ty Processing 3 was not initialized!<br>[ &nbsp; &nbsp;2=2E762192] uvcvideo=
 4-2:1=2E0: Entity type for entity Extension 14 was not initialized!<br>[ &=
nbsp; &nbsp;2=2E762193] uvcvideo 4-2:1=2E0: Entity type for entity Extensio=
n 6 was not initialized!<br>[ &nbsp; &nbsp;2=2E762194] uvcvideo 4-2:1=2E0: =
Entity type for entity Extension 8 was not initialized!<br>[ &nbsp; &nbsp;2=
=2E762195] uvcvideo 4-2:1=2E0: Entity type for entity Extension 9 was not i=
nitialized!<br>[ &nbsp; &nbsp;2=2E762196] uvcvideo 4-2:1=2E0: Entity type f=
or entity Extension 10 was not initialized!<br>[ &nbsp; &nbsp;2=2E762196] u=
vcvideo 4-2:1=2E0: Entity type for entity Extension 11 was not initialized!=
<br>[ &nbsp; &nbsp;2=2E762197] uvcvideo 4-2:1=2E0: Entity type for entity C=
amera 1 was not initialized!<br>[ &nbsp; &nbsp;2=2E762303] usbcore: registe=
red new interface driver uvcvideo<br>[ &nbsp;445=2E629384] uvcvideo: Failed=
 to query (SET_CUR) UVC control 11 on unit 3: -110 (exp=2E 1)=2E<br>[ &nbsp=
;446=2E145539] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit 3=
: -110 (exp=2E 1)=2E<br>[ &nbsp;446=2E653403] uvcvideo: Failed to query (SE=
T_CUR) UVC control 11 on unit 3: -110 (exp=2E 1)=2E<br>[ &nbsp;447=2E165406=
] uvcvideo: Failed to query (SET_CUR) UVC control 11 on unit 3: -110 (exp=
=2E 1)=2E<br>[ &nbsp;447=2E677412] uvcvideo: Failed to query (SET_CUR) UVC =
control 11 on unit 3: -110 (exp=2E 1)=2E<br>[ &nbsp;448=2E189409] uvcvideo:=
 Failed to query (SET_CUR) UVC control 11 on unit 3: -110 (exp=2E 1)=2E<br>=
[ &nbsp;453=2E309443] uvcvideo: Failed to set UVC probe control : -110 (exp=
=2E 26)=2E<br><br>I would really like to use this device, if I can help in =
any way let me know=2E<br><br>Cheers Severin</div><div dir=3D"ltr" data-sma=
rtmail=3D"gmail_signature"></div></div>
<pre class=3D"blue"></pre><pre clas=
s=3D"blue"><hr><br>Linux-uvc-devel mailing list<br>Linux-uvc-devel@lists=2E=
sourceforge=2Enet<br><a href=3D"https://lists=2Esourceforge=2Enet/lists/lis=
tinfo/linux-uvc-devel">https://lists=2Esourceforge=2Enet/lists/listinfo/lin=
ux-uvc-devel</a><br></pre></blockquote></div></body></html>
------QI1B8IURPYT1MM27M6EMVRUOGKD9IH--



--===============3604593367799337423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3604593367799337423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============3604593367799337423==--


