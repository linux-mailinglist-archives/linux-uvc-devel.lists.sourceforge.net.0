Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B221947024
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 15 Jun 2019 15:17:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hc8YW-0003UQ-Jq; Sat, 15 Jun 2019 13:17:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <avinash.gonsalves@gmail.com>) id 1hc8YV-0003UJ-NV
 for linux-uvc-devel@lists.sourceforge.net; Sat, 15 Jun 2019 13:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GWINae9ozZxWWjz/UPjdgeNLXYXPfOGEExQF2u38GII=; b=SM5S009q+O3/s75VanqbVEedUV
 /XzFYdYTG6FPQq1B73avvzVRWcoK+wiijqG9m4Wyh9bUgMJOMFmA08TeOkGXxAHJQzAyzu8h8Di4T
 wM0M2gRK1Ob5/Nz2JYAF+Pb9LmH2bGljmNytCb+TueAJr64AzKUtifB/6HsWHXmuYj4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GWINae9ozZxWWjz/UPjdgeNLXYXPfOGEExQF2u38GII=; b=P
 EfOeY8eYake2dzToVRH3uW4zKfw7UInCj6eQyC0QlIQtrZe6zJOUzqsociKqw3KNqoJdKTMtb2Vl1
 64JQsQOhCaWt1xv6nogZDBADgpQyyPZ2F4TGgVWjgPAibAKNnm86MskGjB+NtXHe1zOPm1xD+hl+J
 m+OsTcOS688OQZMM=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hc8YR-009BMJ-W4
 for linux-uvc-devel@lists.sourceforge.net; Sat, 15 Jun 2019 13:17:15 +0000
Received: by mail-ot1-f51.google.com with SMTP id n5so5278094otk.1
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat, 15 Jun 2019 06:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GWINae9ozZxWWjz/UPjdgeNLXYXPfOGEExQF2u38GII=;
 b=Tce0QBjPMjs2eMwmJuMsimiBlZQMw1Yz1dcEF+RVMjGxNqGp8V725WWTiYUi0CIx0t
 K2S1+Q6kslQ55pWVvU5VbwQDPJeKpnsOOcgQ9IavQ+uoXzkGX95iB+iohf0CqXRNgaNW
 vFTzB3aee9kIrF1ASs36gjIUeUFtCc27K4Nk1kdcjoiygUPgTFD6xf1dBf7BXckuFkMo
 LwmzGNSQe0B6tGd4Lh6xSXteZaUxG/nzEcgqav+S1B+dMcCy6ovH7Gr17EjO6fEivJOX
 JzmBxFR53J8ueqJYiSdMxx0odvcC6IFcUbMh2K1uMSP1tzZiTYYGoxodhD0hcb1Q8aiE
 Pgmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GWINae9ozZxWWjz/UPjdgeNLXYXPfOGEExQF2u38GII=;
 b=DSrBthZ+R7FLaTl4PXaVFhXFuZjjgveBPKOTspGeMDo4LRH3Yckshl37tI8T6eIQCZ
 x9Ek2KmV6Oz5zTwphEpyk0lFDxGNeSCBOiYYemZnzpCFHCdZfvVDvd0kDsVmzbWXQZr4
 ouPChyHjujSWu+lEBRj0LsRxYtpLyEeEehzAYMoT7+quw/jsEVQEdy7bm9vY1ph0U81Z
 yGBH9l9gdI8PYJ9Dy/Q2IGkMR4y0hcIytZ16hFbvGGIijO34RpRTu+lgxAg4wKCrT5kN
 7jbLKR1t01U3Leo48O68cmzhBYazskqAfIWNWGlns/BvDQeTTV7uPDsh+PFSaA4+AZu4
 VlEw==
X-Gm-Message-State: APjAAAXNaDNsv0Exy6EmI09lZDevsyPknl+Xu5xYZlrd3WP/PD0FYwPL
 MyeJLrxMeodyxGZ2sgWSTsO57PH6+gTkr6u4ZjD2xWvchWk=
X-Google-Smtp-Source: APXvYqzBqvmeFE5jnZXniYGtGXB+Z8rXyFkkdfChMFFwDAEdJ85UoXTKUguRNcP/I3RsnEgjRtYhYfMtxUnExP6MZmA=
X-Received: by 2002:a9d:3d76:: with SMTP id a109mr3715195otc.212.1560604625739; 
 Sat, 15 Jun 2019 06:17:05 -0700 (PDT)
MIME-Version: 1.0
From: Avinash Gonsalves <avinash.gonsalves@gmail.com>
Date: Sat, 15 Jun 2019 18:46:55 +0530
Message-ID: <CAKregOe1mGJBjzeYL=KYKhXEF5N9GvqSD=6k6CULoZ_uWAi+bw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: xilinx.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (avinash.gonsalves[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.51 listed in list.dnswl.org]
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
X-Headers-End: 1hc8YR-009BMJ-W4
Subject: [linux-uvc-devel] How to configure an android device as a UVC
 Camera?
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
Content-Type: multipart/mixed; boundary="===============1185129195854803678=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============1185129195854803678==
Content-Type: multipart/alternative; boundary="0000000000005a22ec058b5c947c"

--0000000000005a22ec058b5c947c
Content-Type: text/plain; charset="UTF-8"

Looking for some help here on how to configure an android device as a UVC
webcam (on Windows Host). Similar to the post here:

https://forums.xilinx.com/t5/Embedded-Processor-System-Design/ZC702-as-UVC-Device-USB-Webcam/m-p/572017#M23722

The Linux Kernel version is 4.9 and I tried the following changes:


















*diff --git a/rootdir/init.usb.configfs.rc
b/rootdir/init.usb.configfs.rcindex 72f31edd8..84a8f90d0 100644---
a/rootdir/init.usb.configfs.rc+++ b/rootdir/init.usb.configfs.rc@@ -218,3
+232,48 @@ on property:sys.usb.ffs.ready=1 &&
property:sys.usb.config=rndis,adb && property     symlink
/config/usb_gadget/g1/functions/ffs.adb
/config/usb_gadget/g1/configs/b.1/f2     write /config/usb_gadget/g1/UDC
${sys.usb.controller}     setprop sys.usb.state ${sys.usb.config}++on
property:sys.usb.config=uvc && property:sys.usb.configfs=1+    write
/config/usb_gadget/g1/configs/b.1/strings/0x409/configuration "uvc"+    rm
/config/usb_gadget/g1/configs/b.1/f1+    rm
/config/usb_gadget/g1/configs/b.1/f2+    rm
/config/usb_gadget/g1/configs/b.1/f3+    rm
/config/usb_gadget/g1/configs/b.1/f4+    rm
/config/usb_gadget/g1/configs/b.1/f5+    symlink
/config/usb_gadget/g1/functions/uvc.0
/config/usb_gadget/g1/configs/b.1/f1+    write /config/usb_gadget/g1/UDC
${sys.usb.controller}*


On shell
> setprop sys.usb.config uvc

This does not enumerate the USB - UVC descriptors. So i made the following
change:
diff









*--git a/drivers/usb/gadget/function/f_uvc.c
b/drivers/usb/gadget/function/f_uvc.cindex fbc942d7a484..eeb3496d62f6
100644--- a/drivers/usb/gadget/function/f_uvc.c+++
b/drivers/usb/gadget/function/f_uvc.c@@ -739,6 +742,9 @@
uvc_function_bind(struct usb_configuration *c, struct usb_function
*f)                goto error;        } +
uvc_function_setup_continue(uvc);+       uvc_function_connect(uvc);
return 0;*

The driver now enumerates but is not recognised by windows, I have probably
missed a setup step (uvc_function_setup?) for correct enumeration. Here's
the output of the enumeration on windows application USB-View:












*Device Descriptor:bcdUSB:             0x0210bDeviceClass:
0x00bDeviceSubClass:      0x00bDeviceProtocol:
0x00bMaxPacketSize0:      0x40 (64)idVendor:           0x05C6 (Qualcomm,
Inc)idProduct:          0x901DbcdDevice:
0x0409iManufacturer:        0x01iProduct:
0x02iSerialNumber:        0x03bNumConfigurations:   0x01*




*ConnectionStatus: DeviceConnectedCurrent Config Value: 0x00Device Bus
Speed:     HighDevice Address:       0x09Open Pipes:              0*






*Configuration Descriptor:wTotalLength:       0x01CCbNumInterfaces:
0x02bConfigurationValue:  0x01iConfiguration:
0x04bmAttributes:         0x80 (Bus Powered )MaxPower:             0xFA
(500 Ma)*



*Unknown Descriptor:bDescriptorType:      0x0BbLength:              0x0808
0B 00 02 0E 03 00 05 *







*Interface Descriptor:bInterfaceNumber:     0x00bAlternateSetting:
0x00bNumEndpoints:        0x01bInterfaceClass:
0x0EbInterfaceSubClass:   0x01bInterfaceProtocol:
0x01iInterface:           0x05*



*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x0D0D
24 01 50 01 35 00 00 6C DC 02 01 01 *




*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x1212
24 02 01 01 02 00 00 00 00 00 00 00 00 03 02 00 00 *



*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x0D0D
24 05 02 01 00 40 03 40 10 01 00 00 *



*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x0909
24 03 03 01 01 00 02 00 *




*Endpoint Descriptor:bEndpointAddress:     0x81  INTransfer Type:
InterruptwMaxPacketSize:     0x0010 (16)bInterval:            0x08*



*Unknown Descriptor:bDescriptorType:      0x25bLength:              0x0505
25 03 10 00 *







*Interface Descriptor:bInterfaceNumber:     0x01bAlternateSetting:
0x00bNumEndpoints:        0x00bInterfaceClass:
0x0EbInterfaceSubClass:   0x02bInterfaceProtocol:
0x00iInterface:           0x06*



*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x1010
24 01 03 58 01 82 00 03 00 00 00 01 00 04 00 *




*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x1B1B
24 04 01 02 59 55 59 32 00 00 10 00 80 00 00 AA 00 38 9B 71 10 01 00 00 00
00 *





*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x2626
24 05 01 00 80 02 68 01 00 40 19 01 00 C0 4B 03 00 08 07 00 2A 2C 0A 00 03
2A 2C 0A 00 40 42 0F 00 40 4B 4C 00 *




*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x1E1E
24 05 02 00 D0 02 68 01 00 00 C2 01 00 00 C2 01 00 20 1C 00 40 4B 4C 00 01
40 4B 4C 00 *



*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x0B0B
24 06 02 02 00 01 00 00 00 00 *





*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x2626
24 07 01 00 80 02 68 01 00 40 19 01 00 C0 4B 03 00 08 07 00 2A 2C 0A 00 03
2A 2C 0A 00 40 42 0F 00 40 4B 4C 00 *




*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x1E1E
24 07 02 00 D0 02 68 01 00 00 C2 01 00 00 C2 01 00 20 1C 00 40 4B 4C 00 01
40 4B 4C 00 *






*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x3434
24 13 03 02 01 04 00 76 00 00 3F CC 03 00 00 00 00 00 00 CC 03 00 00 00 00
00 00 CC 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 *





*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x3030
24 14 01 C0 03 C0 03 01 00 01 00 00 64 28 00 00 03 00 07 00 47 00 04 00 00
00 00 00 00 00 00 00 C2 01 00 E1 F5 05 63 17 05 00 01 63 17 05 00 *





*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x3030
24 14 02 80 07 C0 03 01 00 01 00 00 64 33 00 00 03 00 07 00 47 00 04 00 00
00 00 00 00 00 00 00 C2 01 00 E1 F5 05 63 17 05 00 01 63 17 05 00 *



*Unknown Descriptor:bDescriptorType:      0x24bLength:              0x0606
24 0D 01 01 04 *







*Interface Descriptor:bInterfaceNumber:     0x01bAlternateSetting:
0x01bNumEndpoints:        0x01bInterfaceClass:
0x0EbInterfaceSubClass:   0x02bInterfaceProtocol:
0x00iInterface:           0x06*




*Endpoint Descriptor:bEndpointAddress:     0x82  INTransfer Type:
IsochronouswMaxPacketSize:     0x1400 (5120)bInterval:            0x01*

--0000000000005a22ec058b5c947c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"text-align:left;color:rgb(3=
4,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-fam=
ily:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-var=
iant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-spa=
ce:normal" dir=3D"ltr">Looking for some help here on how to configure an an=
droid device as a UVC webcam (on Windows Host). Similar to the post here:<b=
r><br><a style=3D"color:rgb(17,85,204)" href=3D"https://forums.xilinx.com/t=
5/Embedded-Processor-System-Design/ZC702-as-UVC-Device-USB-Webcam/m-p/57201=
7#M23722" target=3D"_blank">https://forums.xilinx.com/t5/Embedded-Processor=
-System-Design/ZC702-as-UVC-Device-USB-Webcam/m-p/572017#M23722<br><br></a>=
The Linux Kernel version is 4.9 and I tried the following changes:<br><br><=
font size=3D"1"><i>diff --git a/rootdir/init.usb.configfs.rc b/rootdir/init=
.usb.configfs.rc<br>index 72f31edd8..84a8f90d0 100644<br>--- a/rootdir/init=
.usb.configfs.rc<br>+++ b/rootdir/init.usb.configfs.rc<br>@@ -218,3 +232,48=
 @@ on property:sys.usb.ffs.ready=3D1 &amp;&amp; property:sys.usb.config=3D=
rndis,adb &amp;&amp; property<br>=C2=A0=C2=A0=C2=A0=C2=A0 symlink /config/u=
sb_gadget/g1/functions/ffs.adb /config/usb_gadget/g1/configs/b.1/f2<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 write /config/usb_gadget/g1/UDC ${sys.usb.controller}=
<br>=C2=A0=C2=A0=C2=A0=C2=A0 setprop sys.usb.state ${sys.usb.config}<br>+<b=
r>+on property:sys.usb.config=3Duvc &amp;&amp; property:sys.usb.configfs=3D=
1<br>+=C2=A0=C2=A0=C2=A0 write /config/usb_gadget/g1/configs/b.1/strings/0x=
409/configuration &quot;uvc&quot;<br>+=C2=A0=C2=A0=C2=A0 rm /config/usb_gad=
get/g1/configs/b.1/f1<br>+=C2=A0=C2=A0=C2=A0 rm /config/usb_gadget/g1/confi=
gs/b.1/f2<br>+=C2=A0=C2=A0=C2=A0 rm /config/usb_gadget/g1/configs/b.1/f3<br=
>+=C2=A0=C2=A0=C2=A0 rm /config/usb_gadget/g1/configs/b.1/f4<br>+=C2=A0=C2=
=A0=C2=A0 rm /config/usb_gadget/g1/configs/b.1/f5<br>+=C2=A0=C2=A0=C2=A0 sy=
mlink /config/usb_gadget/g1/functions/uvc.0 /config/usb_gadget/g1/configs/b=
.1/f1<br>+=C2=A0=C2=A0=C2=A0 write /config/usb_gadget/g1/UDC ${sys.usb.cont=
roller}</i><br></font><br></div><div style=3D"text-align:left;color:rgb(34,=
34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-famil=
y:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-varia=
nt:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space=
:normal" dir=3D"ltr"><font size=3D"1"></font><br></div><div style=3D"text-a=
lign:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-sp=
acing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-=
style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-=
spacing:0px;white-space:normal">On shell</div><div style=3D"text-align:left=
;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:nor=
mal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:nor=
mal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0=
px;white-space:normal">&gt; setprop sys.usb.config uvc</div><div style=3D"t=
ext-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;lett=
er-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;=
font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;=
word-spacing:0px;white-space:normal"><br></div><div style=3D"text-align:lef=
t;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:no=
rmal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:no=
rmal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:=
0px;white-space:normal">This does not enumerate the USB - UVC descriptors. =
So i made the following change:<br><font size=3D"1">diff <i>--git a/drivers=
/usb/gadget/function/f_uvc.c b/drivers/usb/gadget/function/f_uvc.c<br>index=
 fbc942d7a484..eeb3496d62f6 100644<br>--- a/drivers/usb/gadget/function/f_u=
vc.c<br>+++ b/drivers/usb/gadget/function/f_uvc.c<br>@@ -739,6 +742,9 @@ uv=
c_function_bind(struct usb_configuration *c, struct usb_function *f)<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 goto error;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br=
>=C2=A0<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uvc_function_setup_continu=
e(uvc);<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uvc_function_connect(uvc);=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;</i><br></font><br>=
The driver now enumerates but is not recognised by windows, I have probably=
 missed a setup step (uvc_function_setup?) for correct enumeration. Here&#3=
9;s the output of the enumeration on windows application USB-View:<br><i><f=
ont size=3D"1">Device Descriptor:<br>bcdUSB:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0210<br>bDeviceClass:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x00<br>bDeviceSubClass:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 0x00<br>bDeviceProtocol:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0x00<br>bMaxPacketSize0:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x40 (64)<br>idV=
endor:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x05C6 (=
Qualcomm, Inc)<br>idProduct:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x901D<br>bcdDevice:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x0409<br>iManufacturer:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0x01<br>iProduct:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 0x02<br>iSerialNumber:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x03<br>bNumConfigurations:=C2=A0=C2=A0 0x01</font></i></div><div=
 style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-inde=
nt:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-si=
ze:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decor=
ation:none;word-spacing:0px;white-space:normal"><i><font size=3D"1">Connect=
ionStatus: DeviceConnected<br>Current Config Value: 0x00<br>Device Bus Spee=
d:=C2=A0=C2=A0=C2=A0=C2=A0 High<br>Device Address:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0x09<br>Open Pipes:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0</font></i></div><div style=3D"text-a=
lign:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-sp=
acing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-=
style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-=
spacing:0px;white-space:normal"><i><font size=3D"1">Configuration Descripto=
r:<br>wTotalLength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x01CC<br>bNumInter=
faces:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x02<br>bConfigurationValue:=C2=
=A0 0x01<br>iConfiguration:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x04<br>bmA=
ttributes:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x80 (Bus Powere=
d )<br>MaxPower:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 0xFA (500 Ma)</font></i></div><div style=3D"text-align:left=
;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:nor=
mal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:nor=
mal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0=
px;white-space:normal"><i><font size=3D"1">Unknown Descriptor:<br>bDescript=
orType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0B<br>bLength:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x08<br>08 0B 00 =
02 0E 03 00 05 </font></i></div><div style=3D"text-align:left;color:rgb(34,=
34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font-famil=
y:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-varia=
nt:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space=
:normal"><i><font size=3D"1">Interface Descriptor:<br>bInterfaceNumber:=C2=
=A0=C2=A0=C2=A0=C2=A0 0x00<br>bAlternateSetting:=C2=A0=C2=A0=C2=A0 0x00<br>=
bNumEndpoints:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x01<br>bInterface=
Class:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0E<br>bInterfaceSubClass:=C2=A0=C2=
=A0 0x01<br>bInterfaceProtocol:=C2=A0=C2=A0 0x01<br>iInterface:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x05</font></i></div><div =
style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-inden=
t:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-siz=
e:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decora=
tion:none;word-spacing:0px;white-space:normal"><i><font size=3D"1">Unknown =
Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLeng=
th:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0x0D<br>0D 24 01 50 01 35 00 00 6C DC 02 01 01 </font></i></div><div=
 style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-inde=
nt:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-si=
ze:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decor=
ation:none;word-spacing:0px;white-space:normal"><i><font size=3D"1">Unknown=
 Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLen=
gth:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x12<br>12 24 02 01 01 02 00 00 00 00 00 00 00 00 03 02 <br>00 00=
 </font></i></div><div style=3D"text-align:left;color:rgb(34,34,34);text-tr=
ansform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvet=
ica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;font=
-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><i><f=
ont size=3D"1">Unknown Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0D<br>0D 24 05 02 01 00 40 03 40 10 01 00 =
00 </font></i></div><div style=3D"text-align:left;color:rgb(34,34,34);text-=
transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helv=
etica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;fo=
nt-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><i>=
<font size=3D"1">Unknown Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x09<br>09 24 03 03 01 01 00 02 00 </font=
></i></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform=
:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,san=
s-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight=
:400;text-decoration:none;word-spacing:0px;white-space:normal"><i><font siz=
e=3D"1">Endpoint Descriptor:<br>bEndpointAddress:=C2=A0=C2=A0=C2=A0=C2=A0 0=
x81=C2=A0 IN<br>Transfer Type:=C2=A0=C2=A0 Interrupt<br>wMaxPacketSize:=C2=
=A0=C2=A0=C2=A0=C2=A0 0x0010 (16)<br>bInterval:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x08</font></i></div><div style=3D"=
text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;let=
ter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px=
;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none=
;word-spacing:0px;white-space:normal"><i><font size=3D"1">Unknown Descripto=
r:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x25<br>bLength:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x=
05<br>05 25 03 10 00 </font></i></div><div style=3D"text-align:left;color:r=
gb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;font=
-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font=
-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white=
-space:normal"><i><font size=3D"1">Interface Descriptor:<br>bInterfaceNumbe=
r:=C2=A0=C2=A0=C2=A0=C2=A0 0x01<br>bAlternateSetting:=C2=A0=C2=A0=C2=A0 0x0=
0<br>bNumEndpoints:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x00<br>bInte=
rfaceClass:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0E<br>bInterfaceSubClass:=C2=A0=
=C2=A0 0x02<br>bInterfaceProtocol:=C2=A0=C2=A0 0x00<br>iInterface:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x06</font></i></div><d=
iv style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-in=
dent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-=
size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-dec=
oration:none;word-spacing:0px;white-space:normal"><i><font size=3D"1">Unkno=
wn Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bL=
ength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0x10<br>10 24 01 03 58 01 82 00 03 00 00 00 01 00 04 00 </font></=
i></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:no=
ne;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-s=
erif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:40=
0;text-decoration:none;word-spacing:0px;white-space:normal"><i><font size=
=3D"1">Unknown Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0x1B<br>1B 24 04 01 02 59 55 59 32 00 00 10 00 80 =
00 00 <br>AA 00 38 9B 71 10 01 00 00 00 00 </font></i></div><div style=3D"t=
ext-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;lett=
er-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;=
font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;=
word-spacing:0px;white-space:normal"><i><font size=3D"1">Unknown Descriptor=
:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x=
26<br>26 24 05 01 00 80 02 68 01 00 40 19 01 00 C0 4B <br>03 00 08 07 00 2A=
 2C 0A 00 03 2A 2C 0A 00 40 42 <br>0F 00 40 4B 4C 00 </font></i></div><div =
style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-inden=
t:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-siz=
e:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-decora=
tion:none;word-spacing:0px;white-space:normal"><i><font size=3D"1">Unknown =
Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLeng=
th:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0x1E<br>1E 24 05 02 00 D0 02 68 01 00 00 C2 01 00 00 C2 <br>01 00 20=
 1C 00 40 4B 4C 00 01 40 4B 4C 00 </font></i></div><div style=3D"text-align=
:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacin=
g:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-styl=
e:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spac=
ing:0px;white-space:normal"><i><font size=3D"1">Unknown Descriptor:<br>bDes=
criptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0B<br>0B =
24 06 02 02 00 01 00 00 00 00 </font></i></div><div style=3D"text-align:lef=
t;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:no=
rmal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:no=
rmal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:=
0px;white-space:normal"><i><font size=3D"1">Unknown Descriptor:<br>bDescrip=
torType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x26<br>26 24 =
07 01 00 80 02 68 01 00 40 19 01 00 C0 4B <br>03 00 08 07 00 2A 2C 0A 00 03=
 2A 2C 0A 00 40 42 <br>0F 00 40 4B 4C 00 </font></i></div><div style=3D"tex=
t-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter=
-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;fo=
nt-style:normal;font-variant:normal;font-weight:400;text-decoration:none;wo=
rd-spacing:0px;white-space:normal"><i><font size=3D"1">Unknown Descriptor:<=
br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1E<=
br>1E 24 07 02 00 D0 02 68 01 00 00 C2 01 00 00 C2 <br>01 00 20 1C 00 40 4B=
 4C 00 01 40 4B 4C 00 </font></i></div><div style=3D"text-align:left;color:=
rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:normal;fon=
t-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;fon=
t-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;whit=
e-space:normal"><i><font size=3D"1">Unknown Descriptor:<br>bDescriptorType:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x34<br>34 24 13 03 02 =
01 04 00 76 00 00 3F CC 03 00 00 <br>00 00 00 00 CC 03 00 00 00 00 00 00 CC=
 03 00 00 <br>00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 <br>00 00 00 =
00 </font></i></div><div style=3D"text-align:left;color:rgb(34,34,34);text-=
transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helv=
etica,sans-serif;font-size:13.33px;font-style:normal;font-variant:normal;fo=
nt-weight:400;text-decoration:none;word-spacing:0px;white-space:normal"><i>=
<font size=3D"1">Unknown Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x30<br>30 24 14 01 C0 03 C0 03 01 00 01 =
00 00 64 28 00 <br>00 03 00 07 00 47 00 04 00 00 00 00 00 00 00 00 <br>00 C=
2 01 00 E1 F5 05 63 17 05 00 01 63 17 05 00 </font></i></div><div style=3D"=
text-align:left;color:rgb(34,34,34);text-transform:none;text-indent:0px;let=
ter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px=
;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none=
;word-spacing:0px;white-space:normal"><i><font size=3D"1">Unknown Descripto=
r:<br>bDescriptorType:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x=
30<br>30 24 14 02 80 07 C0 03 01 00 01 00 00 64 33 00 <br>00 03 00 07 00 47=
 00 04 00 00 00 00 00 00 00 00 <br>00 C2 01 00 E1 F5 05 63 17 05 00 01 63 1=
7 05 00 </font></i></div><div style=3D"text-align:left;color:rgb(34,34,34);=
text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Arial=
,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-variant:norm=
al;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal=
"><i><font size=3D"1">Unknown Descriptor:<br>bDescriptorType:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 0x24<br>bLength:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x06<br>06 24 0D 01 01 04 </font></=
i></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:no=
ne;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-s=
erif;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:40=
0;text-decoration:none;word-spacing:0px;white-space:normal"><i><font size=
=3D"1">Interface Descriptor:<br>bInterfaceNumber:=C2=A0=C2=A0=C2=A0=C2=A0 0=
x01<br>bAlternateSetting:=C2=A0=C2=A0=C2=A0 0x01<br>bNumEndpoints:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x01<br>bInterfaceClass:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 0x0E<br>bInterfaceSubClass:=C2=A0=C2=A0 0x02<br>bInterfaceP=
rotocol:=C2=A0=C2=A0 0x00<br>iInterface:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x06</font></i></div><div style=3D"text-align:l=
eft;color:rgb(34,34,34);text-transform:none;text-indent:0px;letter-spacing:=
normal;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:=
normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacin=
g:0px;white-space:normal"><i><font size=3D"1">Endpoint Descriptor:<br>bEndp=
ointAddress:=C2=A0=C2=A0=C2=A0=C2=A0 0x82=C2=A0 IN<br>Transfer Type: Isochr=
onous<br>wMaxPacketSize:=C2=A0=C2=A0=C2=A0=C2=A0 0x1400 (5120)<br>bInterval=
:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x01</f=
ont></i></div></div></div>

--0000000000005a22ec058b5c947c--


--===============1185129195854803678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1185129195854803678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============1185129195854803678==--

