Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D312931C42C
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 16 Feb 2021 00:01:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1lBmr6-0007r2-IG; Mon, 15 Feb 2021 23:00:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.gordon.summers@gmail.com>) id 1lBmr5-0007qv-If
 for linux-uvc-devel@lists.sourceforge.net; Mon, 15 Feb 2021 23:00:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MFJuiyuUJ4aa2gwn3hVZ/1Vw0Emt8eLP/0XbcDAWeRk=; b=Lyod2EMVzwejkC3JoUul3vE8HX
 NyKrcMqAkWdm8+6jyBxkZpKAYGtaN1iZ0YLBV1DeezbShM2XeEXA93rmbEyIOF3wvyyv9/JoSn5AS
 6j3j4+rBHzQZsD6UxaUNBdLrjtgEFyxm3tA9W2vi+UKMkXyVRDsSgM6zm/B1Aq32g+cA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MFJuiyuUJ4aa2gwn3hVZ/1Vw0Emt8eLP/0XbcDAWeRk=; b=e
 VXQeT7VcRhOOJMRMdcB7GjAIBq3pfCGyikE9hKTevqmweE8sfIx2bzqaUwgBEvLLGpl9KvQBol/ZI
 Y4L+zz1uYPq3b27I5P5hZiZ4y5j4EenMIjUL+eJi5giC2zQhI64idWU08Hp/+mc7Ju82K7tn8av4f
 C02UBqoFBk1PESko=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lBmqm-00085p-Bl
 for linux-uvc-devel@lists.sourceforge.net; Mon, 15 Feb 2021 23:00:34 +0000
Received: by mail-lj1-f182.google.com with SMTP id e17so9727844ljl.8
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 15 Feb 2021 15:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=MFJuiyuUJ4aa2gwn3hVZ/1Vw0Emt8eLP/0XbcDAWeRk=;
 b=M5iX4T10JXi36aEbGdiwIPzpRRpoa65CbIqTELi50Z2/Eknbz74amQTZy1NF4rWkpZ
 Qrvouubx7114S2vcBm4k6VtRXLFaCObtVo0BpgXLon0xXLsqnWIPYAiQV1lDitTo6yWi
 gujnpSiCZ51UR1hqVMjQCBC7h2SAoUnhX0fg4x56yET8R+eVm3CaIrrTbFtxnTmYr49n
 uaKQQmr1cNsQi+v9TLnRum3ftc1YAZBVZnh9YoNi7MtJggOzlMQg98DQpD7hQ2FTNA5e
 gd8vS20Fov8U6RCQmCUMKUdZ5JRdfgRFbQGwQigPSVSDwGy3UUdQKP2taVSKP71q4g1T
 lxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=MFJuiyuUJ4aa2gwn3hVZ/1Vw0Emt8eLP/0XbcDAWeRk=;
 b=BDG3TLkWzppuV0fSQ/m7zgzf82jkSGINEWWKLcAuj6YO3rzrDBP3rGUMt6V/AQorH2
 h3Jd6khG3D59R3A5mNS1UFTwkB+2EhL0ix3D5gsKGJwrXrSdD5ZFdo9hRg3V5phurAts
 Lhd6yUXvjdH5HRLd/JdTGyI+Rr6rJG0a/s5A7bYXkdEjl6I5DKSMRFJb/maDjrZBkLKB
 diR9hdq3r8cfk0QH+ovuJ/Bgo3tsR7cfDLGpqSrRTwZJqf0Rv+Nq+C+i8R8ClfexyRFz
 0KbMOyHq1nC0QOnjl0M7D6vq17gW8XmDyLL8Ewe+/NMBu0FvaE4ld2IRgE+jeXB66w57
 l5eQ==
X-Gm-Message-State: AOAM532iQxEZgqrXuY/sJXGT1R3gfpzqVLmwb16HfCl1XhyAOx2F8C8I
 o0pKrrWE6GDfFYNm+pivLTMCLlVBX7sZqBgiJHh1W5uaqm1+4g==
X-Google-Smtp-Source: ABdhPJywGKg8lL8H8Ak0cT044NZSgqpR2ZV2x54IGbcU/YsBKCpgu/3qBhfNqIB3sV/P5bZV+n+U7PpWABqWB3JiyyQ=
X-Received: by 2002:a05:651c:112:: with SMTP id
 a18mr10712566ljb.465.1613430009426; 
 Mon, 15 Feb 2021 15:00:09 -0800 (PST)
MIME-Version: 1.0
From: Andy Summers <andy.gordon.summers@gmail.com>
Date: Mon, 15 Feb 2021 22:59:58 +0000
Message-ID: <CAEKL6M-2gXjQGvW+XEjY0i-KWA18GxKKnpsVd9NbYcn6Q05kGw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.gordon.summers[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.182 listed in list.dnswl.org]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBmqm-00085p-Bl
Subject: [linux-uvc-devel] Ekacom webcam needs quirks
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
Content-Type: multipart/mixed; boundary="===============5833347966356926030=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============5833347966356926030==
Content-Type: multipart/alternative; boundary="00000000000094f6cc05bb67f291"

--00000000000094f6cc05bb67f291
Content-Type: text/plain; charset="UTF-8"

An EKACOM A521 webcam wasn't recognised by Linux Mint 19.3 Tricia.

By Googling I ran the following:
echo 'options uvcvideo quirks=0x100' | sudo tee -a
/etc/modprobe.d/uvcvideo.conf
sudo rmmod uvcvideo
sudo modprobe uvcvideo

It then worked.

Apparently I need to report required quirks to this mailing list, so that's
what I'm doing. Output of dmesg is:

[ 1018.291418] usbcore: registered new interface driver uvcvideo
[ 1018.291420] USB Video Class driver (1.1.1)
[ 1098.854565] [UFW BLOCK] IN=enp5s0 OUT=
MAC=80:ee:73:9c:ca:24:a4:77:33:a7:06:c8:08:00 SRC=192.168.0.102
DST=192.168.0.126 LEN=546 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
SPT=57391 DPT=37756 LEN=526
[ 1099.878737] [UFW BLOCK] IN=enp5s0 OUT=
MAC=80:ee:73:9c:ca:24:a4:77:33:a7:06:c8:08:00 SRC=192.168.0.102
DST=192.168.0.126 LEN=546 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
SPT=38308 DPT=37756 LEN=526
[ 1100.908749] [UFW BLOCK] IN=enp5s0 OUT=
MAC=80:ee:73:9c:ca:24:a4:77:33:a7:06:c8:08:00 SRC=192.168.0.102
DST=192.168.0.126 LEN=546 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
SPT=35820 DPT=37756 LEN=526
[ 1101.826463] [UFW BLOCK] IN=enp5s0 OUT=
MAC=80:ee:73:9c:ca:24:a4:77:33:a7:06:c8:08:00 SRC=192.168.0.102
DST=192.168.0.126 LEN=546 TOS=0x00 PREC=0x00 TTL=64 ID=0 DF PROTO=UDP
SPT=56317 DPT=37756 LEN=526
[ 1161.103003] usb 3-2.2: new high-speed USB device number 7 using xhci_hcd
[ 1161.322863] usb 3-2.2: New USB device found, idVendor=1bcf,
idProduct=2283, bcdDevice= 9.04
[ 1161.322867] usb 3-2.2: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[ 1161.322869] usb 3-2.2: Product: Full HD webcam
[ 1161.322870] usb 3-2.2: Manufacturer: SHENZHEN AONI ELECTRONIC CO., LTD
[ 1161.322872] usb 3-2.2: SerialNumber: 20200904001
[ 1161.374180] uvcvideo: Found UVC 1.00 device Full HD webcam (1bcf:2283)
[ 1161.374182] uvcvideo: Forcing device quirks to 0x100 by module parameter
for testing purpose.
[ 1161.374183] uvcvideo: Please report required quirks to the
linux-uvc-devel mailing list.
[ 1161.442538] input: Full HD webcam: Full HD webcam as
/devices/pci0000:00/0000:00:1c.2/0000:04:00.0/usb3/3-2/3-2.2/3-2.2:1.0/input/input15
[ 1161.577366] [UFW BLOCK] IN=enp5s0 OUT=
MAC=80:ee:73:9c:ca:24:30:cd:a7:be:a3:26:08:00 SRC=192.168.0.200
DST=192.168.0.126 LEN=75 TOS=0x00 PREC=0x00 TTL=64 ID=1874 PROTO=UDP
SPT=161 DPT=22161 LEN=55
[ 1161.653891] usb 3-2.2: 3:1: cannot get freq at ep 0x86
[ 1161.740121] usb 3-2.2: 3:2: cannot get freq at ep 0x86
[ 1161.743059] [UFW BLOCK] IN=enp5s0 OUT=
MAC=80:ee:73:9c:ca:24:30:cd:a7:be:a3:26:08:00 SRC=192.168.0.200
DST=192.168.0.126 LEN=75 TOS=0x00 PREC=0x00 TTL=64 ID=2267 PROTO=UDP
SPT=161 DPT=22161 LEN=55
[ 1161.826576] usb 3-2.2: 3:3: cannot get freq at ep 0x86
[ 1161.909300] [UFW BLOCK] IN=enp5s0 OUT=
MAC=80:ee:73:9c:ca:24:30:cd:a7:be:a3:26:08:00 SRC=192.168.0.200
DST=192.168.0.126 LEN=75 TOS=0x00 PREC=0x00 TTL=64 ID=3186 PROTO=UDP
SPT=161 DPT=22161 LEN=55
[ 1161.977746] usb 3-2.2: Warning! Unlikely big volume range (=4096),
cval->res is probably wrong.
[ 1161.977750] usb 3-2.2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1161.978147] usbcore: registered new interface driver snd-usb-audio

Thanks,
Andy.

--00000000000094f6cc05bb67f291
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">An EKACOM=C2=A0A521 webcam wasn&#39;t recognised by Linux =
Mint 19.3 Tricia.<div><br></div><div>By Googling I ran the following:</div>=
<div>echo &#39;options uvcvideo quirks=3D0x100&#39; | sudo tee -a /etc/modp=
robe.d/uvcvideo.conf<br></div><div>sudo rmmod uvcvideo<br></div><div>sudo m=
odprobe uvcvideo<br></div><div><br></div><div>It then worked.</div><div><br=
></div><div>Apparently I need to report required quirks to this mailing lis=
t, so that&#39;s what I&#39;m doing. Output of dmesg is:</div><div><br></di=
v><div>[ 1018.291418] usbcore: registered new interface driver uvcvideo<br>=
[ 1018.291420] USB Video Class driver (1.1.1)<br>[ 1098.854565] [UFW BLOCK]=
 IN=3Denp5s0 OUT=3D MAC=3D80:ee:73:9c:ca:24:a4:77:33:a7:06:c8:08:00 SRC=3D1=
92.168.0.102 DST=3D192.168.0.126 LEN=3D546 TOS=3D0x00 PREC=3D0x00 TTL=3D64 =
ID=3D0 DF PROTO=3DUDP SPT=3D57391 DPT=3D37756 LEN=3D526 <br>[ 1099.878737] =
[UFW BLOCK] IN=3Denp5s0 OUT=3D MAC=3D80:ee:73:9c:ca:24:a4:77:33:a7:06:c8:08=
:00 SRC=3D192.168.0.102 DST=3D192.168.0.126 LEN=3D546 TOS=3D0x00 PREC=3D0x0=
0 TTL=3D64 ID=3D0 DF PROTO=3DUDP SPT=3D38308 DPT=3D37756 LEN=3D526 <br>[ 11=
00.908749] [UFW BLOCK] IN=3Denp5s0 OUT=3D MAC=3D80:ee:73:9c:ca:24:a4:77:33:=
a7:06:c8:08:00 SRC=3D192.168.0.102 DST=3D192.168.0.126 LEN=3D546 TOS=3D0x00=
 PREC=3D0x00 TTL=3D64 ID=3D0 DF PROTO=3DUDP SPT=3D35820 DPT=3D37756 LEN=3D5=
26 <br>[ 1101.826463] [UFW BLOCK] IN=3Denp5s0 OUT=3D MAC=3D80:ee:73:9c:ca:2=
4:a4:77:33:a7:06:c8:08:00 SRC=3D192.168.0.102 DST=3D192.168.0.126 LEN=3D546=
 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D0 DF PROTO=3DUDP SPT=3D56317 DPT=3D37=
756 LEN=3D526 <br>[ 1161.103003] usb 3-2.2: new high-speed USB device numbe=
r 7 using xhci_hcd<br>[ 1161.322863] usb 3-2.2: New USB device found, idVen=
dor=3D1bcf, idProduct=3D2283, bcdDevice=3D 9.04<br>[ 1161.322867] usb 3-2.2=
: New USB device strings: Mfr=3D1, Product=3D2, SerialNumber=3D3<br>[ 1161.=
322869] usb 3-2.2: Product: Full HD webcam<br>[ 1161.322870] usb 3-2.2: Man=
ufacturer: SHENZHEN AONI ELECTRONIC CO., LTD<br>[ 1161.322872] usb 3-2.2: S=
erialNumber: 20200904001<br>[ 1161.374180] uvcvideo: Found UVC 1.00 device =
Full HD webcam (1bcf:2283)<br>[ 1161.374182] uvcvideo: Forcing device quirk=
s to 0x100 by module parameter for testing purpose.<br>[ 1161.374183] uvcvi=
deo: Please report required quirks to the linux-uvc-devel mailing list.<br>=
[ 1161.442538] input: Full HD webcam: Full HD webcam as /devices/pci0000:00=
/0000:00:1c.2/0000:04:00.0/usb3/3-2/3-2.2/3-2.2:1.0/input/input15<br>[ 1161=
.577366] [UFW BLOCK] IN=3Denp5s0 OUT=3D MAC=3D80:ee:73:9c:ca:24:30:cd:a7:be=
:a3:26:08:00 SRC=3D192.168.0.200 DST=3D192.168.0.126 LEN=3D75 TOS=3D0x00 PR=
EC=3D0x00 TTL=3D64 ID=3D1874 PROTO=3DUDP SPT=3D161 DPT=3D22161 LEN=3D55 <br=
>[ 1161.653891] usb 3-2.2: 3:1: cannot get freq at ep 0x86<br>[ 1161.740121=
] usb 3-2.2: 3:2: cannot get freq at ep 0x86<br>[ 1161.743059] [UFW BLOCK] =
IN=3Denp5s0 OUT=3D MAC=3D80:ee:73:9c:ca:24:30:cd:a7:be:a3:26:08:00 SRC=3D19=
2.168.0.200 DST=3D192.168.0.126 LEN=3D75 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=
=3D2267 PROTO=3DUDP SPT=3D161 DPT=3D22161 LEN=3D55 <br>[ 1161.826576] usb 3=
-2.2: 3:3: cannot get freq at ep 0x86<br>[ 1161.909300] [UFW BLOCK] IN=3Den=
p5s0 OUT=3D MAC=3D80:ee:73:9c:ca:24:30:cd:a7:be:a3:26:08:00 SRC=3D192.168.0=
.200 DST=3D192.168.0.126 LEN=3D75 TOS=3D0x00 PREC=3D0x00 TTL=3D64 ID=3D3186=
 PROTO=3DUDP SPT=3D161 DPT=3D22161 LEN=3D55 <br>[ 1161.977746] usb 3-2.2: W=
arning! Unlikely big volume range (=3D4096), cval-&gt;res is probably wrong=
.<br>[ 1161.977750] usb 3-2.2: [7] FU [Mic Capture Volume] ch =3D 1, val =
=3D 0/4096/1<br>[ 1161.978147] usbcore: registered new interface driver snd=
-usb-audio<br></div><div><br></div><div>Thanks,</div><div>Andy.</div></div>

--00000000000094f6cc05bb67f291--


--===============5833347966356926030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5833347966356926030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============5833347966356926030==--

