Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE0D1A4F53
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 11 Apr 2020 12:21:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jNDGE-0006Lp-44; Sat, 11 Apr 2020 10:21:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alessandro.govi@gmail.com>) id 1jNDGD-0006LX-6D
 for linux-uvc-devel@lists.sourceforge.net; Sat, 11 Apr 2020 10:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FBBsd8//9okJVNvU5z3RYDr5JelnyxmrIyKLzT19i7A=; b=N1wYaL4tkJVjWKf1R3l367WLND
 F+hnPCRFmkmVvuw/MXVFi5eWyjFjULVYwrI7s7+sBD0XffdDPc+8tTkXOuAgGNY90TfyW6CQjPZAu
 46zGNL8NVqvKhpNX1IIYBsNEnBLKYF2uNdLwDinfEQohnL4diFSTLRdElIfOI4tZAA0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FBBsd8//9okJVNvU5z3RYDr5JelnyxmrIyKLzT19i7A=; b=RXEUKbLbCxrCUkerMUJfm/c7lo
 Ows29zxAocWEfdbWw3RdIRXOQ0M+zIHQ2vy0SSfIjG2mctqPzxLsaCCHr9I+wAwiVQjOyH1FwcZn5
 20HM03h0+3Y7J0bvGQtj8OgDRqS9QKxcRI5YrbRVHcFxYnQvmcIrIJUS1e53J1WBlJYQ=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jNDGB-00BRbC-09
 for linux-uvc-devel@lists.sourceforge.net; Sat, 11 Apr 2020 10:21:13 +0000
Received: by mail-ot1-f46.google.com with SMTP id j20so3462055otl.9
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat, 11 Apr 2020 03:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FBBsd8//9okJVNvU5z3RYDr5JelnyxmrIyKLzT19i7A=;
 b=NOMk+dofWt7hBuq0sJurJqgzH+NEvcwEQjh+TQM2caVoO8ysiQv18kMcDwz4THktaH
 dGRLacS77rsEq87I0hPLj6nEacAV6MNR9utfhJttM95v+8zyOBKn6ih5dET29/Z6Rpso
 XCgdeo98tjlDV85q2BaXsAxJKEyNnV8OpT+O4mDeRVM3b/5kQ34T8ODOcMluDJbNqfW2
 UlB0cBZkjepdRcXglsJ45IsqA7/nP7xIIEu9GAadPBieGll/AxTkr5idvAfuhbzKv6qH
 yyxwQ+5882ONRjereTGkvwbGsTCtgCVMpMF5FbR9meAqT+Y2JNryhlg+CWPh9Bwywv9+
 jEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FBBsd8//9okJVNvU5z3RYDr5JelnyxmrIyKLzT19i7A=;
 b=XTYlwu6RzSXeP0BNp6770hUiy+NsKKGQdKfmXwEiLJrMIKQEGSsrCTCyX7Qdhi1mPh
 j4Ldih4GJ8oeZqMqhkW/7txLqmo6aJbALH5UlXInNw/+HrJRwBI/M1ky9Eypp7zVbjdR
 MbmPgCSm+hh3ahJaw31pSAR/TOiVqnw5VmWQjxW8yJpBdeDT3QZMIMcp89i80SwX7MnJ
 DJ32YcQ95P/2aGRRtd7gL5hxbJU52Nn3b+6nRGkpj/B5pPqQki8pRaxpAWlFAzr0Etyq
 g3FNYChjylWCmppM6/BCFuFmFUkD3C65GWzkcaRs6wMyyz5krnNRuY1TS3lsSttqd//u
 mD6A==
X-Gm-Message-State: AGi0PuYVsur1JiAknCStzlE3GjAkqAjXOaKAOybcDcDHWOcvrPs/AMDw
 9JUw18camaO8olAmXxxa0H/WTa3dZT5oFF9JTz0=
X-Google-Smtp-Source: APiQypIr4gh31Ux6dMUJK34OGbtbwtSjxJZkhPgkOJtC8KsUKNAR3GAd3e5uEUCf1ltmcxAnklWxkJCQ40hNm+4w++4=
X-Received: by 2002:a9d:6950:: with SMTP id p16mr7149134oto.199.1586600465213; 
 Sat, 11 Apr 2020 03:21:05 -0700 (PDT)
MIME-Version: 1.0
References: <1586556380.21178.7.camel@gmail.com>
In-Reply-To: <1586556380.21178.7.camel@gmail.com>
From: Alessandro Govi <alessandro.govi@gmail.com>
Date: Sat, 11 Apr 2020 12:20:53 +0200
Message-ID: <CADPtnGNuWOViR1F-PbYu0fMCqh0p8kXRJQ0L+_kJYB3Wrao=yA@mail.gmail.com>
To: maximilian.zraunig@gmail.com
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alessandro.govi[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jNDGB-00BRbC-09
Subject: Re: [linux-uvc-devel] Chicony Electronics Notebook Cam not supported
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
Cc: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="===============7237183897956730788=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============7237183897956730788==
Content-Type: multipart/alternative; boundary="000000000000212af805a3013586"

--000000000000212af805a3013586
Content-Type: text/plain; charset="UTF-8"

Hi Maximilian,
I had a similar problem to yours.
A netbook with internal webcam: it was recognized, also its "on" light was
on, but always black screen from every program with Ubuntu 18.04.
I also tried older kernels, different settings, etc. No way.
At the end I found that it was... a MECHANICAL problem! :-)
Basically I pushed a bit with my fingers at the left and right of the
webcam and the image suddenly came while the program was giving only black.
I pushed a little more and the image became perfect. For this reason I
don't think it was an electrical issue, but really a mechanical one; maybe
several open/close, open/close or some impacts made the webcam move a
little, but enough to give her bad focus and so on.
I'm curious, let me know if it was your case too.
A greeting from Italy.

Alessandro

Il giorno sab 11 apr 2020 alle ore 00:08 <maximilian.zraunig@gmail.com> ha
scritto:

> Hi,
>
> I have a few years old Lenovo Notebook with an internal Chicony
> Electronics webcam which seems to be a UVC Devide but it's not in the
> supported devices list:
>
>          linux-1r6q:/home/max # lsusb -d 04f2:b2b6 -v | grep "14 Video"
>          bFunctionClass         14 Video
>          bInterfaceClass        14 Video
>          bInterfaceClass        14 Video
>          bInterfaceClass        14 Video
>          bInterfaceClass        14 Video
>    can't get debug descriptor: Resource temporarily unavailable
>          bInterfaceClass        14 Video
>          bInterfaceClass        14 Video
>          bInterfaceClass        14 Video
>          bInterfaceClass        14 Video
>
> When starting guvcview the camera seems to be recognized - I can choose
> it as "Lenovo EasyCamera" in Video Controls.
> But I get only a black canvas from it - as well as within luvcview.
>
> Attached you can find my dmesg.log from trying to get a picture with
> luvcview as well as my webcam descriptors in lsusb.log.
>
> Any hints from anyone to get my cam running?
>
> Thanks & regards,
> Max_______________________________________________
> Linux-uvc-devel mailing list
> Linux-uvc-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
>

--000000000000212af805a3013586
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maximilian,<div>I had a similar problem to yours.</div>=
<div>A netbook with internal webcam: it was recognized, also its &quot;on&q=
uot; light was on, but always black screen from every program with Ubuntu 1=
8.04.</div><div>I also tried older kernels, different settings, etc. No way=
.</div><div>At the end I found that it was... a MECHANICAL problem! :-)</di=
v><div>Basically I pushed a bit with my fingers at the left and right of th=
e webcam and the image suddenly came while the program was giving only blac=
k.</div><div>I pushed a little more and the image became perfect. For this =
reason I don&#39;t think it was an electrical issue, but really a mechanica=
l one; maybe several open/close, open/close or some impacts made the webcam=
 move a little, but enough to give her bad focus and so on.</div><div>I&#39=
;m curious, let me know if it was your case too.</div><div>A greeting from =
Italy.</div><div><br></div><div>Alessandro</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno sab 11 apr 2020 a=
lle ore 00:08 &lt;<a href=3D"mailto:maximilian.zraunig@gmail.com">maximilia=
n.zraunig@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hi,<br>
<br>
I have a few years old Lenovo Notebook with an internal Chicony<br>
Electronics webcam which seems to be a UVC Devide but it&#39;s not in the<b=
r>
supported devices list:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0linux-1r6q:/home/max # lsusb -d 04f2:b2b6=
 -v | grep &quot;14 Video&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bFunctionClass=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A014 Video<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
=C2=A0 =C2=A0can&#39;t get debug descriptor: Resource temporarily unavailab=
le<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video<br>
<br>
When starting guvcview the camera seems to be recognized - I can choose<br>
it as &quot;Lenovo EasyCamera&quot; in Video Controls. <br>
But I get only a black canvas from it - as well as within luvcview.<br>
<br>
Attached you can find my dmesg.log from trying to get a picture with<br>
luvcview as well as my webcam descriptors in lsusb.log.<br>
<br>
Any hints from anyone to get my cam running?<br>
<br>
Thanks &amp; regards,<br>
Max_______________________________________________<br>
Linux-uvc-devel mailing list<br>
<a href=3D"mailto:Linux-uvc-devel@lists.sourceforge.net" target=3D"_blank">=
Linux-uvc-devel@lists.sourceforge.net</a><br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel" re=
l=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/list=
info/linux-uvc-devel</a><br>
</blockquote></div>

--000000000000212af805a3013586--


--===============7237183897956730788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7237183897956730788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============7237183897956730788==--

