Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE5247B4A6
	for <lists+linux-uvc-devel@lfdr.de>; Mon, 20 Dec 2021 22:04:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mzPoy-0001x0-8p; Mon, 20 Dec 2021 21:03:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <damiano.albani@gmail.com>) id 1mzPow-0001ws-Tn
 for linux-uvc-devel@lists.sourceforge.net; Mon, 20 Dec 2021 21:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oA7Obut6yoYR+epGVeFmfW4PpHi4Ex2rp8C+1FQmHmY=; b=SEtcZi9ja8xKcwV19/9DSUyUSy
 kjrCD6sY39Tik/ZrzcLHK87C8M3VSxuxYGFrbd4U/eknmjdk/s4+ast0O4xDpWyfyHDjlPjOzsJef
 KG7G4bTsYZ/g/zR6wXy0SaZZ3YVY9EbGAggaEK9TML0LBVfBTk6us3qE995BKKKLAXgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oA7Obut6yoYR+epGVeFmfW4PpHi4Ex2rp8C+1FQmHmY=; b=Q
 c/DCn2PcbbvujCSXqcFdhJFQ9bBu2uZ9N+d+5Bael1GMPdHIHkHv28neMb5yOzNrJrbaYTTVZ+0sF
 nDItTt01VqhwIvekW4nwd5j5R0f5qGKOqj44QF7Mn5X7sOF98yTtzur4TpGrliRMnORbu/lTAvYXw
 7+zgCSfHopDuRvk8=;
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mzPox-0003Ke-8r
 for linux-uvc-devel@lists.sourceforge.net; Mon, 20 Dec 2021 21:03:47 +0000
Received: by mail-lj1-f175.google.com with SMTP id i63so17987040lji.3
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 20 Dec 2021 13:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=oA7Obut6yoYR+epGVeFmfW4PpHi4Ex2rp8C+1FQmHmY=;
 b=hDuIjaJM9j7tV4IfiX2PpcnCEH9HfOsZQSej6MNfoTmqFxqBWleTTG28GTm3xlLQsF
 I70sGeHVc3xBQLbstn2c8cDpS7X4ZvlyCSe4qTivB9bqRg591J7mcHPJ8rTw0vtSNSFp
 tf18G3Ud4OQwM/Qr1lJSmGB4n3RQELp7fDOYIxWy6m/ODVvs1+vLpZRxFz+Rk7QKhKYL
 lP4I2LFqHtQ6lK7kohIBC9JZzBOAmHT84upnQqt0LTnr1eNIpbgNpsfcN7lTx8M7wPV7
 MfBE4ZITQ+p9sMgQarzDytEpOeVoOf+k1moy+0MJaEib3OkFIalzOmS4kphExFydzBmf
 aa7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=oA7Obut6yoYR+epGVeFmfW4PpHi4Ex2rp8C+1FQmHmY=;
 b=azivTUJAMC64FRxo6llwGDXpTtqufPvP1ewNo7E7N+3ukGF1EaD05t4D2vnDQxDc1U
 /UM1/6Ezd6kKmVnWfYAASQnhTFqFJaKFwW8IZWbL3JWy8a0AhciWqyqlJSgWuUrMTKqP
 asmcJCT7HD4+qXT5o0OvC+7F+ShEbgCpVPqi/AYqwKcDXhK0SrhUhy5TyjWQDSZJm8Ld
 kw395DmiJgnZNw8H6/I1tDTh3o3PMqEwxTV5ojoljByvC/8KCdXblen35/2GqG3CnTRO
 beED343o2OUwX2GxKdFUbMDx3SggeTC4j/ntiqWAHOJ7ATNrKlKhx5YZMjqm4ksARn8N
 7GEg==
X-Gm-Message-State: AOAM533Za0mafivZGWrJQCTVJLrF63w1ZWzSnYSw77asqSPOUOrLQGfr
 NYOtSVP3yHsU5Yk7hTKmO7SiiwuWiSvsx0B61VxJaXY8Uag=
X-Google-Smtp-Source: ABdhPJw3xoPGoTgVN6gEuqiDdJGTQy1NtOA8qi1eSSJTLWo8EwxrBPLxGdo5DqtG/3Pu5lrF65T0Z9VxHUIXehWbDrk=
X-Received: by 2002:a2e:720b:: with SMTP id n11mr16285047ljc.351.1640034219650; 
 Mon, 20 Dec 2021 13:03:39 -0800 (PST)
MIME-Version: 1.0
From: Damiano Albani <damiano.albani@gmail.com>
Date: Mon, 20 Dec 2021 22:03:13 +0100
Message-ID: <CAKys953Tx1g8W=uzE_j+DkjMx4AKF+bo1r+rdKJCKjVA8tVO4A@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I've been the owner of a Logitech C930e for many years
 now, and it does work well on Linux in terms of "basic" webcam functionality.
 But I've always found it a bit of a shame that I can't use the feat [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [damiano.albani[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.175 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mzPox-0003Ke-8r
Subject: [linux-uvc-devel] Logitech C930e UVC 1.5 / H264 webcam
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
Content-Type: multipart/mixed; boundary="===============3675433292757416724=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============3675433292757416724==
Content-Type: multipart/alternative; boundary="00000000000014f3e905d39a3970"

--00000000000014f3e905d39a3970
Content-Type: text/plain; charset="UTF-8"

Hello,

I've been the owner of a Logitech C930e for many years now, and it does
work well on Linux in terms of "basic" webcam functionality.
But I've always found it a bit of a shame that I can't use the features I
originally bought it for: namely UVC 1.5 and H264. And not mentioning SVC
either...
To be honest, this particular model is a tricky one as far as I can see.
This is for example what *lsusb* reports out the box:

> Bus 002 Device 011: ID 046d:0843 Logitech, Inc. Webcam C930e
> Device Descriptor:
>   bLength                18
>   bDescriptorType         1
>   bcdUSB               2.00
>   bDeviceClass          239 Miscellaneous Device
>   bDeviceSubClass         2
>   bDeviceProtocol         1 Interface Association
>   bMaxPacketSize0        64
>   idVendor           0x046d Logitech, Inc.
>   idProduct          0x0843 Webcam C930e
>   bcdDevice            0.13
>   iManufacturer           0
>   iProduct                2
>   iSerial                 1
>   *bNumConfigurations      1*
>   Configuration Descriptor:
>     ...

Actually, that's not quite true: this webcam supports 2 configurations!
That's what I found when I sniffed USB traffic on a Windows 10 machine.
The first configuration mentions UVC 1.0 and uncompressed / MJPEG streams.
But the second configuration reveals the "treasure": UVC 1.5 and
uncompressed / MJPEG / H264 streams.
I couldn't find an official way to override bNumConfigurations in the Linux
USB stack, so I hacked the *usb_get_configuration()* function in
*drivers/usb/core/config.c* to falsely report 2 configurations. (Any other
suggestions on how to properly implement that?)
Quite ugly but it did the job: *lsusb* revealed the second descriptor.

For the technical details, see the difference between:

   - Descriptor 0 on Linux
      - https://gist.github.com/dalbani/7266379ed93b7b693bb8dd899d18e92b
   - Descriptor 1 on Windows 10
      - https://gist.github.com/dalbani/05432f7ce20b41f2c68ee07ff5f1c7ee

Now the question is: where to go from there?
The Linux UVC driver doesn't seem to pickup the second descriptor. Probably
because probing stops when the first UVC descriptor is found?
The logs mention that it is detected as a "UVC 1.00 device" in any case.
Let's say we could make the UVC driver use the second descriptor, what
functionalities would still be missing to be able to use H264/SVC streams?
Thanks for your help!

Regards,

-- 
Damiano Albani

--00000000000014f3e905d39a3970
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;ve been the owner of a Log=
itech C930e for many years now, and it does work well on Linux in terms of =
&quot;basic&quot; webcam functionality.</div><div>But I&#39;ve always found=
 it a bit of a shame that I can&#39;t use the features I originally bought =
it=C2=A0for: namely UVC 1.5 and H264. And not mentioning SVC either...</div=
><div>To be honest, this particular=C2=A0model is a tricky one as far as I=
=C2=A0can see.</div><div>This is for example what <i>lsusb</i> reports out =
the box:</div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><font =
face=3D"monospace">Bus 002 Device 011: ID 046d:0843 Logitech, Inc. Webcam C=
930e<br></font><font face=3D"monospace">Device Descriptor:<br></font><font =
face=3D"monospace">=C2=A0 bLength =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A018<br></font><font face=3D"monospace">=C2=A0 bDescriptorType =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 1<br></font><font face=3D"monospace">=C2=A0 bcd=
USB =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.00<br></font><font f=
ace=3D"monospace">=C2=A0 bDeviceClass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0239=
 Miscellaneous Device<br></font><font face=3D"monospace">=C2=A0 bDeviceSubC=
lass =C2=A0 =C2=A0 =C2=A0 =C2=A0 2<br> </font><font face=3D"monospace">=C2=
=A0 bDeviceProtocol =C2=A0 =C2=A0 =C2=A0 =C2=A0 1 Interface Association<br>=
</font><font face=3D"monospace">=C2=A0 bMaxPacketSize0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A064<br></font><font face=3D"monospace">=C2=A0 idVendor =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 0x046d Logitech, Inc.<br></font><font face=3D"monospac=
e">=C2=A0 idProduct =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0843 Webcam C930e<b=
r></font><font face=3D"monospace">=C2=A0 bcdDevice =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00.13<br></font><font face=3D"monospace">=C2=A0 iManufactur=
er =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br> </font><font face=3D"monospace"=
>=C2=A0 iProduct =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02<b=
r> </font><font face=3D"monospace">=C2=A0 iSerial =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1<br> </font><font face=3D"monospace">=C2=
=A0 <b>bNumConfigurations =C2=A0 =C2=A0 =C2=A01</b><br></font><font face=3D=
"monospace">=C2=A0 Configuration Descriptor:<br></font><font face=3D"monosp=
ace">=C2=A0 =C2=A0 ...</font></blockquote><div>Actually, that&#39;s not qui=
te true: this webcam supports 2 configurations!</div><div>That&#39;s what I=
 found when I sniffed USB traffic on a Windows 10 machine.</div><div>The fi=
rst configuration mentions UVC 1.0 and uncompressed / MJPEG streams.</div><=
div>But the second configuration reveals the &quot;treasure&quot;: UVC 1.5 =
and uncompressed / MJPEG / H264 streams.</div><div>I couldn&#39;t find an o=
fficial way to override bNumConfigurations in the Linux USB stack, so I hac=
ked the <i>usb_get_configuration()</i> function in <i>drivers/usb/core/conf=
ig.c</i> to falsely report 2 configurations. (Any other suggestions on how =
to properly implement that?)</div><div>Quite ugly but it did the job: <i>ls=
usb</i> revealed the second descriptor.</div><div><br></div><div>For the te=
chnical details, see the difference between:</div><div><ul><li>Descriptor 0=
 on Linux</li><ul><li><a href=3D"https://gist.github.com/dalbani/7266379ed9=
3b7b693bb8dd899d18e92b">https://gist.github.com/dalbani/7266379ed93b7b693bb=
8dd899d18e92b</a></li></ul><li>Descriptor 1 on Windows 10</li><ul><li><a hr=
ef=3D"https://gist.github.com/dalbani/05432f7ce20b41f2c68ee07ff5f1c7ee">htt=
ps://gist.github.com/dalbani/05432f7ce20b41f2c68ee07ff5f1c7ee</a><br></li><=
/ul></ul></div><div>Now the question is: where to go from there?</div><div>=
The Linux UVC driver doesn&#39;t seem to pickup the second descriptor. Prob=
ably because probing stops when the first UVC descriptor is found?</div><di=
v>The logs mention that it is detected as=C2=A0a &quot;UVC 1.00 device&quot=
; in any case.</div><div>Let&#39;s say we could make the UVC driver use the=
 second descriptor, what functionalities would still be missing to be able =
to use H264/SVC streams?</div><div>Thanks for your help!</div><div><br></di=
v><div>Regards,</div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature">Damiano Albani</div></div></d=
iv>

--00000000000014f3e905d39a3970--


--===============3675433292757416724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3675433292757416724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============3675433292757416724==--

