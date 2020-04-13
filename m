Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4872C1A6C64
	for <lists+linux-uvc-devel@lfdr.de>; Mon, 13 Apr 2020 21:20:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jO4c8-0004rg-UX; Mon, 13 Apr 2020 19:19:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maximumsomething@gmail.com>) id 1jO4c7-0004rR-SX
 for linux-uvc-devel@lists.sourceforge.net; Mon, 13 Apr 2020 19:19:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:To:Cc:In-Reply-To:Date:Subject:
 Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c2jxtTRKvnl5AyEFhf5kdDL1LbsmPVFlnfadqdqRKww=; b=fHUDNbukSorpxjEi3YO7Zi6J9
 eNkjo7tCoxBsyp1JHkQZEsmwEbNGlMceOcIPe2o2EoihsJTJn5s8Hi7nM5Ez9ca/FV2CYZ1zrLKKA
 YVKX6xprN9dXTctzRziG43GCuyBx51Uk8/Aar9b+NoAyRbqNnxizzZtL9++P3FsT4rwXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Content-Type:
 Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c2jxtTRKvnl5AyEFhf5kdDL1LbsmPVFlnfadqdqRKww=; b=eexspe9jnwx7hBPyIRumjK8O/U
 vMJcA1yDPxz5tu6/kxWbkoPBphkXPnOcJvwYahJ+ii2xatP65HptDO839m1kwyzpeSF26xqzcaRlj
 tbYo1+PBjat+nGnSMQcP59VmVvbbYEDd5Huq8SBolBWZYWxAYH6xJeJNKeSSBk8eOSko=;
Received: from mail-qv1-f54.google.com ([209.85.219.54])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jO4c4-00Drto-87
 for linux-uvc-devel@lists.sourceforge.net; Mon, 13 Apr 2020 19:19:23 +0000
Received: by mail-qv1-f54.google.com with SMTP id k9so4964614qvw.7
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 13 Apr 2020 12:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=c2jxtTRKvnl5AyEFhf5kdDL1LbsmPVFlnfadqdqRKww=;
 b=ArBwmwH7KM/bPhmYD//rEuI3Rfgzet4F2JgMWJuetIjID8/KdPouiDF4xkfSsU8VOp
 2Hnv1s0EKWj2H6DSdF3AHVAhcvW62r+Uq7KVE7UWVvpNQZ/G0mCrFYoG30BaEQnY6B1Y
 agNA+XhBXl3IYXlYFgBR4MLiCNd4OrSd5DudiG2FdB3WNITYc3VY1LaSEn72rqYsXuRI
 R9qzZgbQF44dQ+bQ+NyupR3R+SZdhvExSxvqsjABNykYHF0ZlLqI4/46FsdMgFuttPrW
 33cR0ERE3ETrZ1sF+LEc+D3VhXp0gIxu2XP2NLnlrIqNVAty5FJvOyIAZJsp+OLcGSNj
 oUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=c2jxtTRKvnl5AyEFhf5kdDL1LbsmPVFlnfadqdqRKww=;
 b=KJojRcNebtl3ro8stQ/SPZ9U9WTmSmH/W8l0yRQmojp6xStWQ3QTxVA0RCwfUQ4Nq1
 4l8sQenPiI8glqc+mU++PZa3buhefA580tj96mDbDtpMwi5t2n4Q0edFmKKWsLHUznRF
 UmAj7EDw3xnJd84ShPu23Gscf0liqf4T/3TCdNo0m3UoD0HHFQaq/GVBvS54WmunD1Js
 HsoEvPNuVFsNZHubOO7o/j/c9xrelsy8Iq4sziLTpLu2B+1gEIgRNfAtWdH/0gc7g/kZ
 ZooJ4yBDykU8wpSAFHmrFLc7KutdBn8YFiF2iPqWvP6221uXXLhHeabP/RnVYMAjCeBz
 UGiA==
X-Gm-Message-State: AGi0PubzIr6uaFZ7N1Rwt+HiBncr1300Rf1yR70GgSU7KJ/WaPMVhYHz
 SPJFDku7Ns1yGZUZYgZyqTL8YIvOkyw=
X-Google-Smtp-Source: APiQypIumXtrd8VRwg+4nhWMph7BHRQNMx2t0LoQxuH7yDVlE/hhpoRlIwskY2Y031eFaXCoHil8lw==
X-Received: by 2002:ad4:55b2:: with SMTP id f18mr2574409qvx.249.1586805554001; 
 Mon, 13 Apr 2020 12:19:14 -0700 (PDT)
Received: from [192.168.0.101] (c-68-40-60-113.hsd1.mi.comcast.net.
 [68.40.60.113])
 by smtp.gmail.com with ESMTPSA id k184sm5942017qke.94.2020.04.13.12.19.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 12:19:13 -0700 (PDT)
From: Max Mueggler <maximumsomething@gmail.com>
Message-Id: <25297DA0-4256-40E2-BAFA-A845BFE69018@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Mon, 13 Apr 2020 15:19:11 -0400
In-Reply-To: <CAB+sNwMXK_bKfU+L9fygh8GX-LDBHgKxkorYq-oDtUy-BYRnpA@mail.gmail.com>
To: Stepan Davidovic <stepan@davidovic.cz>
References: <CAB+sNwMpa+U-b01hbMEzuw9fopfLzYx3J=W5KvGcUW_-2Rq8yA@mail.gmail.com>
 <C160C980-1C9E-4205-A190-8577660EEF52@gmail.com>
 <CAB+sNwMXK_bKfU+L9fygh8GX-LDBHgKxkorYq-oDtUy-BYRnpA@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maximumsomething[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.54 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jO4c4-00Drto-87
Subject: Re: [linux-uvc-devel] Logitech C525 Webcam (046d:0826) seemingly
 crashlooping
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
Content-Type: multipart/mixed; boundary="===============7882356431437076347=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net


--===============7882356431437076347==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2F6ED96C-FCBA-45FB-BC67-5A7F91362C0D"


--Apple-Mail=_2F6ED96C-FCBA-45FB-BC67-5A7F91362C0D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

How does the camera work in a different application, such as Cheese? If =
it=E2=80=99s OK, it might be possible to work around the problem by =
using ffmpeg to read the video from the camera and send it to Google =
Meet via v4l2loopback. I could give you more detailed instructions on =
that if you want.

- Max

> On Apr 12, 2020, at 11:23 PM, Stepan Davidovic <stepan@davidovic.cz> =
wrote:
>=20
> It appears (from running rpi-eeprom-update) that the firmware is =
0137ad. I will explore beta versions of the firmware though, maybe =
there's something interesting in the changelog. Thanks for the tip!
>=20
> On Sun, Apr 12, 2020 at 7:26 PM Max Mueggler =
<maximumsomething@gmail.com <mailto:maximumsomething@gmail.com>> wrote:
> A firmware update in early 2020 fixed some USB issues with the =
Raspberry Pi 4. Try running "sudo vl805" and make sure the version it =
prints is at least 0137ad. For more information, see =
https://www.raspberrypi.org/forums/viewtopic.php?f=3D29&t=3D260879 =
<https://www.raspberrypi.org/forums/viewtopic.php?f=3D29&t=3D260879>.
>=20
> - Max
>=20
> PS. I=E2=80=99ve had more obscure issues with USB on the RPi 4 and I =
suspect that update didn=E2=80=99t fully fix the problem, but I=E2=80=99ve=
 had no issues with a single camera.
>=20
> > On Apr 12, 2020, at 1:35 PM, Stepan Davidovic <stepan@davidovic.cz =
<mailto:stepan@davidovic.cz>> wrote:
> >=20
> > Hi,
> >=20
> > I've got a Logitech C525 Webcam, attached to Raspberry Pi 4. =
Unfortunately, when I attempt to use it for video conferencing, it =
appears to crash loop.
> >=20
> > Reproduction and observation:
> > * My application is Chromium + Google Meet. The default settings =
appear to be asking for 360p resolution, not 720p.
> > * In the screen before you join a meeting, the camera appears to be =
crashloop: it renders a handful of frames, freezes for a while, and then =
renders a few again.
> > * After joining the meeting, the camera simply freezes the frame for =
seemingly forever.
> > * There is an orange light at the front of the camera, and it keeps =
turning off and on again at ~3 second intervals, also making me suspect =
a camera reset of sorts.
> > * Notably, my USB keyboard / mouse also largely (but not completely) =
freezes during this, making me suspect the camera is only a proximate =
trigger of something bad in the USB subsystem itself.
> >=20
> > I'm attaching dmesg.log and lsusb.log as per instructions from =
http://www.ideasonboard.org/uvc/faq/ =
<http://www.ideasonboard.org/uvc/faq/> -- I am including both Logitech =
devices that I get from plugging in the webcam, not just the 046d:0826.
> >=20
> > Things I've tried so far:
> > - Use a powered USB 3.0 hub and plug the camera into that instead of =
the RPi4, assuming insufficient power supplied by RPi4 directly. No =
observed change between plugging into powered hub and RPi4.
> > - Try both the USB2.0 and USB3.0 ports on the Raspberry Pi 4. No =
observed change.
> > - Flip between 360p and 720p in the Google Meet webapp settings. No =
observed change.
> > - I've tried to look for new firmware (I've had this camera for ~3 =
years), but I haven't found any obvious firmware download.
> > - Connect a HDMI-to-USB3.0 capture device (1bcf:2c99) to the =
Raspberry Pi 4, instead of the webcam, and stream that as-if camera =
through Google Meet. This worked pretty well, even under load of =
connecting Chromecast to the HDMI capture device and streaming YouTube =
videos from there to Google Meet.
> >=20
> > If there is more data I can provide, or ways to mitigate I can try, =
I'm very happy to do it.
> >=20
> > Thanks in advance for any clues,
> >  - Stepan
> >=20
> > PS: Possibly related thread for a different Logitech camera, but =
same Raspberry Pi: =
https://www.raspberrypi.org/forums/viewtopic.php?f=3D91&t=3D267946 =
<https://www.raspberrypi.org/forums/viewtopic.php?f=3D91&t=3D267946>
> > =
<dmesg.log><lsusb.log>_______________________________________________
> > Linux-uvc-devel mailing list
> > Linux-uvc-devel@lists.sourceforge.net =
<mailto:Linux-uvc-devel@lists.sourceforge.net>
> > https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel =
<https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel>
>=20


--Apple-Mail=_2F6ED96C-FCBA-45FB-BC67-5A7F91362C0D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">How =
does the camera work in a different application, such as Cheese? If =
it=E2=80=99s OK, it might be possible to work around the problem by =
using ffmpeg to read the video from the camera and send it to Google =
Meet via v4l2loopback. I could give you more detailed instructions on =
that if you want.<div class=3D""><br class=3D""></div><div class=3D"">- =
Max</div><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 12, 2020, at 11:23 PM, Stepan Davidovic &lt;<a =
href=3D"mailto:stepan@davidovic.cz" class=3D"">stepan@davidovic.cz</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D"">It appears (from running rpi-eeprom-update) that =
the&nbsp;firmware is 0137ad. I will explore beta versions of the =
firmware though, maybe there's something interesting in the changelog. =
Thanks for the tip!</div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 12, 2020 at 7:26 PM Max =
Mueggler &lt;<a href=3D"mailto:maximumsomething@gmail.com" =
class=3D"">maximumsomething@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">A =
firmware update in early 2020 fixed some USB issues with the Raspberry =
Pi 4. Try running "sudo vl805" and make sure the version it prints is at =
least 0137ad. For more information, see <a =
href=3D"https://www.raspberrypi.org/forums/viewtopic.php?f=3D29&amp;t=3D26=
0879" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://www.raspberrypi.org/forums/viewtopic.php?f=3D29&amp;t=3D=
260879</a>.<br class=3D"">
<br class=3D"">
- Max<br class=3D"">
<br class=3D"">
PS. I=E2=80=99ve had more obscure issues with USB on the RPi 4 and I =
suspect that update didn=E2=80=99t fully fix the problem, but I=E2=80=99ve=
 had no issues with a single camera.<br class=3D"">
<br class=3D"">
&gt; On Apr 12, 2020, at 1:35 PM, Stepan Davidovic &lt;<a =
href=3D"mailto:stepan@davidovic.cz" target=3D"_blank" =
class=3D"">stepan@davidovic.cz</a>&gt; wrote:<br class=3D"">
&gt; <br class=3D"">
&gt; Hi,<br class=3D"">
&gt; <br class=3D"">
&gt; I've got a Logitech C525 Webcam, attached to Raspberry Pi 4. =
Unfortunately, when I attempt to use it for video conferencing, it =
appears to crash loop.<br class=3D"">
&gt; <br class=3D"">
&gt; Reproduction and observation:<br class=3D"">
&gt; * My application is Chromium + Google Meet. The default settings =
appear to be asking for 360p resolution, not 720p.<br class=3D"">
&gt; * In the screen before you join a meeting, the camera appears to be =
crashloop: it renders a handful of frames, freezes for a while, and then =
renders a few again.<br class=3D"">
&gt; * After joining the meeting, the camera simply freezes the frame =
for seemingly forever.<br class=3D"">
&gt; * There is an orange light at the front of the camera, and it keeps =
turning off and on again at ~3 second intervals, also making me suspect =
a camera reset of sorts.<br class=3D"">
&gt; * Notably, my USB keyboard / mouse also largely (but not =
completely) freezes during this, making me suspect the camera is only a =
proximate trigger of something bad in the USB subsystem itself.<br =
class=3D"">
&gt; <br class=3D"">
&gt; I'm attaching dmesg.log and lsusb.log as per instructions from <a =
href=3D"http://www.ideasonboard.org/uvc/faq/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">http://www.ideasonboard.org/uvc/faq/</a> -- =
I am including both Logitech devices that I get from plugging in the =
webcam, not just the 046d:0826.<br class=3D"">
&gt; <br class=3D"">
&gt; Things I've tried so far:<br class=3D"">
&gt; - Use a powered USB 3.0 hub and plug the camera into that instead =
of the RPi4, assuming insufficient power supplied by RPi4 directly. No =
observed change between plugging into powered hub and RPi4.<br class=3D"">=

&gt; - Try both the USB2.0 and USB3.0 ports on the Raspberry Pi 4. No =
observed change.<br class=3D"">
&gt; - Flip between 360p and 720p in the Google Meet webapp settings. No =
observed change.<br class=3D"">
&gt; - I've tried to look for new firmware (I've had this camera for ~3 =
years), but I haven't found any obvious firmware download.<br class=3D"">
&gt; - Connect a HDMI-to-USB3.0 capture device (1bcf:2c99) to the =
Raspberry Pi 4, instead of the webcam, and stream that as-if camera =
through Google Meet. This worked pretty well, even under load of =
connecting Chromecast to the HDMI capture device and streaming YouTube =
videos from there to Google Meet.<br class=3D"">
&gt; <br class=3D"">
&gt; If there is more data I can provide, or ways to mitigate I can try, =
I'm very happy to do it.<br class=3D"">
&gt; <br class=3D"">
&gt; Thanks in advance for any clues,<br class=3D"">
&gt;&nbsp; - Stepan<br class=3D"">
&gt; <br class=3D"">
&gt; PS: Possibly related thread for a different Logitech camera, but =
same Raspberry Pi: <a =
href=3D"https://www.raspberrypi.org/forums/viewtopic.php?f=3D91&amp;t=3D26=
7946" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://www.raspberrypi.org/forums/viewtopic.php?f=3D91&amp;t=3D=
267946</a><br class=3D"">
&gt; =
&lt;dmesg.log&gt;&lt;lsusb.log&gt;________________________________________=
_______<br class=3D"">
&gt; Linux-uvc-devel mailing list<br class=3D"">
&gt; <a href=3D"mailto:Linux-uvc-devel@lists.sourceforge.net" =
target=3D"_blank" class=3D"">Linux-uvc-devel@lists.sourceforge.net</a><br =
class=3D"">
&gt; <a =
href=3D"https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel</a=
><br class=3D"">
<br class=3D"">
</blockquote></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_2F6ED96C-FCBA-45FB-BC67-5A7F91362C0D--


--===============7882356431437076347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7882356431437076347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============7882356431437076347==--

