Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A81FE21F883
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 14 Jul 2020 19:49:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jvP3X-0006MC-VA; Tue, 14 Jul 2020 17:49:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maurice194@gmail.com>) id 1jvP3T-0006Lp-Hg
 for linux-uvc-devel@lists.sourceforge.net; Tue, 14 Jul 2020 17:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wxlqFVKldBq+HHyMzRaPmkdfvKFi+VPVE4fSmXPw5VQ=; b=OVwrejr6OaVrp/ZX9Rap+/LkBW
 cVmtBPWYb1i0PNWd4gtlKvePD36fzRKvaMQ18BrLmlAhnVaX+nidPkIl3EW6BV6B/+zwkdAWbdZ/o
 gj9QVD0tXDz0r1NPFGf+yqSL5pFONMtykjtbjL3K9n+BtXLF++qiQsCyXyRlHGf1t7EA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wxlqFVKldBq+HHyMzRaPmkdfvKFi+VPVE4fSmXPw5VQ=; b=I
 PaQkdRqMNIT7/+JfSgXUcSAber2+e8HYGLamP5edGrq6NNWqoJ7kRk1Us9Fo7n2F1WU8fzyhrFw6Q
 ZqsqEpi5F1CmeNU6BVwHKUzji4YIUVgAhTWBytGLlWi0/7GxRH3WGrTc7YpktRbTdcToltNgm5RIH
 4JHRit/C2OBiA1CQ=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jvP3N-007Fkw-QT
 for linux-uvc-devel@lists.sourceforge.net; Tue, 14 Jul 2020 17:49:22 +0000
Received: by mail-ot1-f52.google.com with SMTP id 18so13655345otv.6
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 14 Jul 2020 10:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=wxlqFVKldBq+HHyMzRaPmkdfvKFi+VPVE4fSmXPw5VQ=;
 b=nqJwdjv0yszHf5DOdrxbs7sPFHbScoOQ4AG46r44dBQGakIJN1IOBH8iGIlVRS5hWz
 ZCgGhlskEXvhtIkD4oNfwOQzpbNypZdj61Hm9J/vi0uW7OtEXbmu2f7X7yN1rIuYjcoi
 JnBbjX3RiW4W0sdFEIwLkklImhn3htdmCepM6vu+DDEcQHuyHQWgXcn2A/55YWWxWZKG
 YAkmRfHJcmh3oD6T4q/educgRGI4X55pSJZD1TCaBwd7ggBjGvtc8RCID8nhXkP0sRU9
 S6tFiJoaPfKWbtII2oVI+Xd+pgYZt5Y47nMFTzsw9fSHyGw7vDG6W0g4BHRF5CFevLru
 jhbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=wxlqFVKldBq+HHyMzRaPmkdfvKFi+VPVE4fSmXPw5VQ=;
 b=sNoxm8M6yu6BybpoxCXWFNsMHEIkoIsqVzfRvTUTzsWCws4B1vdXTF8CGjQx+Rl3mu
 skZKSsJrwDppVesgbnh//7DVrrU47VgLasV1rooeVu9Skirbww0Um0FWMCQcbl9J/48L
 q0h/E0FIVgKVTxrfBnBkt2Cu9CA1sPu/rrUN0AyTK/naXCcvovzI5iYC6Bd1jO/RUpsp
 Y1askUTW3TXTmOhhQseYAA2yDe1aguJdfQb0TEmP8ah4AqARS/zC6fv6fpk49woPMGC8
 xntDpNVeXwvNuZoldiHqBXoCCSIKzCBU8mqFIS9mrblXrXSLBRb0p+Xp436Yr4vrFqMA
 802w==
X-Gm-Message-State: AOAM532L9viJUJR0zImN1cPXjDQG8XsYTFEVELcSP4n6C11AjHTo1lGW
 nZcJKS+L0ChAwaByOT6k1GLlXtX68Z3iWm5l496FPfn3bBw=
X-Google-Smtp-Source: ABdhPJwaV1sR0gGLzae6+79emS9XbGCIHTjD0Wc1dlAFOKdQts+PZA9DBv38dC7TkHHCV0E5SjvcckhAErW2LjHsDyU=
X-Received: by 2002:a05:6830:60a:: with SMTP id
 w10mr5108560oti.241.1594748944732; 
 Tue, 14 Jul 2020 10:49:04 -0700 (PDT)
MIME-Version: 1.0
From: Maurice Haeseleer <maurice194@gmail.com>
Date: Tue, 14 Jul 2020 19:49:37 +0200
Message-ID: <CANseDokdGPZYGVn7M3Ux-APoBCsvfY1Ou5vki=mwe+wc9FjShw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maurice194[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.52 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (maurice194[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jvP3N-007Fkw-QT
Subject: [linux-uvc-devel] Cant't change exposure_absolute
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
Content-Type: multipart/mixed; boundary="===============5410703074511314514=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============5410703074511314514==
Content-Type: multipart/alternative; boundary="0000000000005b552d05aa6a6c05"

--0000000000005b552d05aa6a6c05
Content-Type: text/plain; charset="UTF-8"

Hello,

I try to get fluid (let's say > 10fps) with SQ11 (cheap chinese webcam) on
a Raspberry Pi 4 running on Raspbian. The cool thing is that the uvc driver
works fine and I can recompile it from sources (e.g to solve this problem;
if needed).

The other cool thing is that I get fluid display with Logitech C920 cam
with Python + Opencv, or qv4l2 or ffmpeg, whatever (30fps) using the uvc
driver too.

The bad thing is that with the SQ11 I only get 2-3 fps when the cam move
rapidly, but I get high fps (10fps) when the cam is steady (no joke !)

I can reproduce this slow FPS on the C920 with setting exposure_absolute to
extra high value (e.g > 2000), so my idea was to set exposure_absolute=300
for the SQ11 but this parameter seems to be locked or not accessible (see
below).

So is there any possibility to make the picture fluid ?
Btw, the thing comes from the driver or Rpi, not the cam, because I can
get fluid image on Windows7.

Thanks in advance,

Maurice, BELGIUM

v4l2-ctl --list-ctrls
                     brightness 0x00980900 (int)    : min=0 max=255 step=1
default=128 value=128
                       contrast 0x00980901 (int)    : min=0 max=255 step=1
default=128 value=128
                     saturation 0x00980902 (int)    : min=0 max=255 step=1
default=128 value=128
                            hue 0x00980903 (int)    : min=-256 max=-32513
step=1 default=-32640 value=128
 white_balance_temperature_auto 0x0098090c (bool)   : default=0 value=0
    white_balance_red_component 0x0098090e (int)    : min=0 max=255 step=0
default=128 value=128
   white_balance_blue_component 0x0098090f (int)    : min=0 max=255 step=1
default=128 value=128
                          gamma 0x00980910 (int)    : min=0 max=255 step=10
default=128 value=128
                           gain 0x00980913 (int)    : min=0 max=255 step=1
default=128 value=128
           power_line_frequency 0x00980918 (menu)   : min=0 max=2 default=0
value=0
                       hue_auto 0x00980919 (bool)   : default=0 value=0
      white_balance_temperature 0x0098091a (int)    : min=0 max=255 step=1
default=128 value=128
                      sharpness 0x0098091b (int)    : min=0 max=255 step=1
default=128 value=128
         backlight_compensation 0x0098091c (int)    : min=0 max=255 step=1
default=128 value=128
                  exposure_auto 0x009a0901 (menu)   : min=0 max=3 default=0
value=0
              exposure_absolute 0x009a0902 (int)    : min=0 max=0 step=0
default=0 value=0 flags=inactive
         exposure_auto_priority 0x009a0903 (bool)   : default=0 value=0
                   pan_absolute 0x009a0908 (int)    : min=0 max=0 step=0
default=0 value=0
                  tilt_absolute 0x009a0909 (int)    : min=0 max=0 step=0
default=0 value=0
                 focus_absolute 0x009a090a (int)    : min=0 max=0 step=0
default=0 value=0
                     focus_auto 0x009a090c (bool)   : default=0 value=0
                  zoom_absolute 0x009a090d (int)    : min=0 max=0 step=0
default=0 value=0
                zoom_continuous 0x009a090f (int)    : min=0 max=0 step=0
default=0 value=0 flags=write-only
                        privacy 0x009a0910 (bool)   : default=0 value=0
                  iris_absolute 0x009a0911 (int)    : min=0 max=0 step=0
default=0 value=0
                  iris_relative 0x009a0912 (int)    : min=0 max=0 step=0
default=0 value=0 flags=write-only
                      pan_speed 0x009a0920 (int)    : min=0 max=0 step=0
default=0 value=0
                     tilt_speed 0x009a0921 (int)    : min=0 max=0 step=0
default=0 value=0

--0000000000005b552d05aa6a6c05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I try to get fluid (let&#39;s sa=
y &gt; 10fps) with SQ11 (cheap chinese webcam) on a Raspberry Pi 4 running=
=C2=A0on Raspbian. The cool thing is that the uvc driver works fine and I c=
an recompile it from sources (e.g to solve this problem; if needed).</div><=
div><br></div><div>The other cool thing is that I get fluid display with Lo=
gitech C920 cam with Python=C2=A0+ Opencv, or qv4l2 or ffmpeg, whatever (30=
fps) using the uvc driver too.</div><div><br></div><div>The bad thing is th=
at with the SQ11 I only get 2-3 fps when the cam move rapidly, but I get hi=
gh fps (10fps) when the cam is steady=C2=A0(no joke !)</div><div><br></div>=
<div>I can reproduce this slow FPS=20

 on the C920

with setting exposure_absolute to extra high value (e.g &gt; 2000), so my i=
dea was to set exposure_absolute=3D300 for the SQ11 but this parameter seem=
s to be locked or not accessible (see below).</div><div><br></div><div>So i=
s there any possibility=C2=A0to make the picture fluid ?</div><div>Btw, the=
 thing comes from the driver or Rpi, not the cam, because I can get=C2=A0fl=
uid image on Windows7.</div><div><br></div><div>Thanks=C2=A0in advance,</di=
v><div><br></div><div>Maurice, BELGIUM</div><div><br></div><div>v4l2-ctl --=
list-ctrls<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0brightness 0x00980900 (int) =C2=A0 =C2=A0: min=3D0 max=3D2=
55 step=3D1 default=3D128 value=3D128<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0contrast 0x00980901 (int) =
=C2=A0 =C2=A0: min=3D0 max=3D255 step=3D1 default=3D128 value=3D128<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sa=
turation 0x00980902 (int) =C2=A0 =C2=A0: min=3D0 max=3D255 step=3D1 default=
=3D128 value=3D128<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hue 0x00980903 (int) =C2=A0 =
=C2=A0: min=3D-256 max=3D-32513 step=3D1 default=3D-32640 value=3D128<br>=
=C2=A0white_balance_temperature_auto 0x0098090c (bool) =C2=A0 : default=3D0=
 value=3D0<br>=C2=A0 =C2=A0 white_balance_red_component 0x0098090e (int) =
=C2=A0 =C2=A0: min=3D0 max=3D255 step=3D0 default=3D128 value=3D128<br>=C2=
=A0 =C2=A0white_balance_blue_component 0x0098090f (int) =C2=A0 =C2=A0: min=
=3D0 max=3D255 step=3D1 default=3D128 value=3D128<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gamma=
 0x00980910 (int) =C2=A0 =C2=A0: min=3D0 max=3D255 step=3D10 default=3D128 =
value=3D128<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gain 0x00980913 (int) =C2=A0 =C2=A0: =
min=3D0 max=3D255 step=3D1 default=3D128 value=3D128<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0power_line_frequency 0x00980918 (menu) =C2=A0 : min=
=3D0 max=3D2 default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hue_auto 0x00980919 (bool) =
=C2=A0 : default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0 white_balance_temper=
ature 0x0098091a (int) =C2=A0 =C2=A0: min=3D0 max=3D255 step=3D1 default=3D=
128 value=3D128<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 sharpness 0x0098091b (int) =C2=A0 =C2=A0: min=3D0 max=
=3D255 step=3D1 default=3D128 value=3D128<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0backlight_compensation 0x0098091c (int) =C2=A0 =C2=A0: min=3D0 max=3D=
255 step=3D1 default=3D128 value=3D128<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exposure_auto 0x009a0901 (menu) =C2=A0 : mi=
n=3D0 max=3D3 default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 exposure_absolute 0x009a0902 (int) =C2=A0 =C2=A0: min=3D0 max=
=3D0 step=3D0 default=3D0 value=3D0 flags=3Dinactive<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0exposure_auto_priority 0x009a0903 (bool) =C2=A0 : default=
=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pan_absolute 0x009a0908 (int) =C2=A0 =C2=A0: min=3D0 max=3D0 s=
tep=3D0 default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 tilt_absolute 0x009a0909 (int) =C2=A0 =C2=A0: min=3D0 =
max=3D0 step=3D0 default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0focus_absolute 0x009a090a (int) =C2=A0 =C2=
=A0: min=3D0 max=3D0 step=3D0 default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0focus_auto 0x009a09=
0c (bool) =C2=A0 : default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 zoom_absolute 0x009a090d (int) =C2=A0 =C2=
=A0: min=3D0 max=3D0 step=3D0 default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 zoom_continuous 0x009a090f (int) =C2=A0=
 =C2=A0: min=3D0 max=3D0 step=3D0 default=3D0 value=3D0 flags=3Dwrite-only<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 privacy 0x009a0910 (bool) =C2=A0 : default=3D0 value=3D0<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iris_absolut=
e 0x009a0911 (int) =C2=A0 =C2=A0: min=3D0 max=3D0 step=3D0 default=3D0 valu=
e=3D0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iri=
s_relative 0x009a0912 (int) =C2=A0 =C2=A0: min=3D0 max=3D0 step=3D0 default=
=3D0 value=3D0 flags=3Dwrite-only<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pan_speed 0x009a0920 (int) =C2=A0 =
=C2=A0: min=3D0 max=3D0 step=3D0 default=3D0 value=3D0<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tilt_speed 0x009=
a0921 (int) =C2=A0 =C2=A0: min=3D0 max=3D0 step=3D0 default=3D0 value=3D0<b=
r></div></div>

--0000000000005b552d05aa6a6c05--


--===============5410703074511314514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5410703074511314514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============5410703074511314514==--

