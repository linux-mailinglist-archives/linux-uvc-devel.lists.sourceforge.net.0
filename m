Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F1AE3B8A
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 24 Oct 2019 21:02:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iNiMt-0004Ct-BG; Thu, 24 Oct 2019 19:01:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jnpitt@uw.edu>) id 1iNiMs-0004Cm-2J
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 19:01:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ekJeMEYfLK1WmQXs58Acgvf6LabgLag2yUKR6Q+9sYw=; b=LQ4bQbmDfjQQgvCu3agf1eZamo
 cXZFedVvjzWTGLLgdxtegyNYa8CLT2Vxk8+hq8H1H2VGppw09VIbdzHr8Cadb2MCOzIKC0CO1kzbU
 0737YxThhUKvesZauif5ujr7faCBlzEpiYaAHrrJBblzzcRtRxp/IuqoNaEHq9cNEqlQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ekJeMEYfLK1WmQXs58Acgvf6LabgLag2yUKR6Q+9sYw=; b=jD8FKtJSFJqKqlOWlvHYxw6/YN
 LV8R8OOnEf78/1AZxV2uVK6sgSrLnrJbRXoS1Xd+JrVwifrEFr9/eER3H/CfsBWYoSrJo3umxTKQ7
 BdmcNk93DBODYLUfmXG7kuILW0m3ql/q5I+CaPQTe9t1sV+cqDnycoSkZRwftYwNExzI=;
Received: from mxout21.s.uw.edu ([140.142.32.139])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNiMq-0029it-5h
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 19:01:53 +0000
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com
 [209.85.222.71])
 by mxout21.s.uw.edu (8.14.4+UW14.03/8.14.4+UW16.03) with ESMTP id
 x9OIlPsd015145
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-uvc-devel@lists.sourceforge.net>; Thu, 24 Oct 2019 11:47:25 -0700
Received: by mail-ua1-f71.google.com with SMTP id a32so1675552uad.22
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 24 Oct 2019 11:47:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ekJeMEYfLK1WmQXs58Acgvf6LabgLag2yUKR6Q+9sYw=;
 b=omqqblcuCQgXTBTQC9jQie4CHUyaCkz+BiryPrXlmBt0NKadMooQ9jBsSkWvR+/6qa
 XHbDxZxBzGr4bVeOV4QqO9ykeVWYJMdazAiohuFwzVtdsoyNF5rwy3fajxAbJEwaxtSK
 GToQwJE+z56iyvEAKARPSfviD1vAZQtRCBaXp129QkKdBJ0BnFZU5pmXqmkYRQ9IdZyj
 BCVZMs9jUTONA7jb2jRzdNgcCVvjRE1hMYg/5ahsv0bm9PSiDi/LLasb2rE2ojU0QRHN
 M4nvxM5GytQsfJC/SHjSeK98yByGy1gqXuXhNw6PpqTuxRwm9bR0XC8H2srdaX8QfZi0
 6ifw==
X-Gm-Message-State: APjAAAWtVmCXLwEu6qUg156iEwzmkx2r4/cf22Ye4o1groocLkMXb8oC
 SKviOKWfjF3ynsMLUJ2CH+tWB8oNdMTdYxbowkIMMj+aoUaTfhIZePyLGzQRpseEgm3Viqgvpug
 VBX4BJ6o4wB8kRWG4EbJb/k/azlNOUHUY5g4gOr/MMy9NzUcc01ZJpjb3XiYWmn6Q+S1k/aLacu
 Mywg==
X-Received: by 2002:a1f:5644:: with SMTP id k65mr9808099vkb.58.1571942844284; 
 Thu, 24 Oct 2019 11:47:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7X77kQgYu/OAG0YZe453kvPdfgUxCfjIs9v7I65MrSIIuTy53mj7m2jga3TTVHxotALeftvwMNJwM1MmeBCE=
X-Received: by 2002:a1f:5644:: with SMTP id k65mr9808070vkb.58.1571942843737; 
 Thu, 24 Oct 2019 11:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <CANcfARO_GNfogsYwKtFv86AT9J8BH79FDhsrswbPNDqtWUW7tg@mail.gmail.com>
 <CAJoDaPbfp=Qz0nnj=sO5i49OJjCUuJrz+iAPOWjtAPPbyHkmLA@mail.gmail.com>
In-Reply-To: <CAJoDaPbfp=Qz0nnj=sO5i49OJjCUuJrz+iAPOWjtAPPbyHkmLA@mail.gmail.com>
From: Jason Pitt <jnpitt@uw.edu>
Date: Thu, 24 Oct 2019 11:46:47 -0700
Message-ID: <CANcfARPXJa6J=-o2P2JpWs=fhPerxomd8_f0nbHJ4CG4-1XV0A@mail.gmail.com>
To: Dmitry Mikushin <dmitry@kernelgen.org>
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409,
 Antispam-Data: 2019.10.24.183917, AntiVirus-Engine: 5.68.0,
 AntiVirus-Data: 2019.10.24.5680002
X-PMX-Server: mxout21.s.uw.edu
X-Sophos-SenderHistory: ip=209.85.222.71, fs=119482, da=48392716, mc=982, sc=0,
 hc=982, sp=0, fso=38099929, re=5, sd=0, hd=30
X-Uwash-Spam: Gauge=IIIIIIII, Probability=8%, Report=
 BODYTEXTH_SIZE_10000_LESS 0, BODYTEXTH_SIZE_3000_MORE 0,
 BODYTEXTP_SIZE_3000_LESS 0, DATE_TZ_NA 0, DQ_S_H 0, FROM_EDU_TLD 0,
 HREF_LABEL_TEXT_ONLY 0, HTML_BAD_EXTRAS 0, IN_REP_TO 0, KNOWN_MTA_TFX 0,
 LEGITIMATE_SIGNS 0, MSG_THREAD 0, REFERENCES 0, SINGLE_URI_IN_BODY 0,
 SPF_PASS 0, SXL_IP_TFX_WM 0, URI_WITH_PATH_ONLY 0, WEBMAIL_SOURCE 0,
 __ANY_URI 0, __BODY_TEXT_X4 0, __BOUNCE_CHALLENGE_SUBJ 0,
 __BOUNCE_NDR_SUBJ_EXEMPT 0, __COURIER_PHRASE 0, __CP_MEDIA_BODY 0,
 __CP_URI_IN_BODY 0, __CT 0, __CTYPE_HAS_BOUNDARY 0, __CTYPE_MULTIPART 0,
 __CTYPE_MULTIPART_ALT 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0,
 __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0,
 __DQ_S_IP_MC_5_P 0, __FORWARDED_MSG 0, __FUR_RDNS_GMAIL 0, __HAS_CC_HDR 0,
 __HAS_FROM 0, __HAS_HTML 0, __HAS_MSGID 0, __HAS_REFERENCES 0, __HELO_GMAIL 0,
 __HEX28_LC_BOUNDARY 0, __HIGHBITS 0, 
 __HREF_LABEL_TEXT 0, __HREF_LABEL_URI 0, __HTML_AHREF_TAG 0, __HTML_BAD_END 0,
 __HTML_BAD_START 0, __HTML_TAG_DIV 0, __HTTPS_URI 0, __IN_REP_TO 0,
 __MIME_HTML 0, __MIME_TEXT_H 0, __MIME_TEXT_H1 0, __MIME_TEXT_H2 0,
 __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_TEXT_P2 0, __MIME_VERSION 0,
 __MSGID_DOMAIN_NOT_IN_HDRS 0, __MULTIPLE_URI_TEXT 0,
 __PHISH_SPEAR_SUBJ_ALERT 0, __RDNS_WEBMAIL 0, __REFERENCES 0, __SANE_MSGID 0,
 __SINGLE_URI_MPART_BOTH 0, __SUBJ_ALPHA_END 0, __SUBJ_ALPHA_NEGATE 0,
 __SUBJ_REPLY 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NAME_DIFF_FROM_ACC 0,
 __TO_REAL_NAMES 0, __URI_IN_BODY 0, __URI_NOT_IMG 0, __URI_NO_WWW 0, __URI_NS ,
 __URI_WITH_PATH 0, __X_GOOGLE_DKIM_SIGNATURE 0, __YOUTUBE_RCVD 0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: uw.edu]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1iNiMq-0029it-5h
Subject: Re: [linux-uvc-devel] select-timeout errors OpenCV
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
Content-Type: multipart/mixed; boundary="===============5600623205725437629=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============5600623205725437629==
Content-Type: multipart/alternative; boundary="000000000000cf04d70595ac761e"

--000000000000cf04d70595ac761e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is there a way to do a reset in software?  I guess I could wire the USB
through a relay and trip it occasionally, but that seems a rather inelegant
solution.

What would the issue be with the cabling? The camera is on a gantry robot
and an ~3-4 meter USB cable in a drag chain.  Does this error mean packets
are getting lost/garbled?  What does this error actually represent?

-J

On Thu, Oct 24, 2019 at 11:27 AM Dmitry Mikushin <dmitry@kernelgen.org>
wrote:

> To my experience, many cameras run into select error sooner or later. Her=
e
> we must elaborate that by "camera" we really mean "camera sensor +
> postprocessing chip". This postprocessing chip comes in a single package
> within the webcam. A small PCB has its own circuits (transceiver, FPGA, U=
SB
> interface, etc.) and firmware, which is often unavailable for user
> inspection. Select error likely means that the chip/firmware has failed,
> and the webcam is put into unresponsive state. Several possible workaroun=
ds:
>
> 1) Reset the camera periodically
> 2) Ensure the USB cable is good, not affected by strong electromagnetic
> noise or intensive physical movement
> 3) Do not use USB cameras with separate postprocessing chip - instead, us=
e
> MIPI/CSI2 cameras such as in cell phones, write your own
> postprocessing software and be fully responsible for its failures (see e.=
g.
> camera/driver for Raspberry Pi).
>
> Kind regards,
> - Dmitry Mikushin.
>
>
> =D1=87=D1=82, 24 =D0=BE=D0=BA=D1=82. 2019 =D0=B3. =D0=B2 20:11, Jason Pit=
t <jnpitt@uw.edu>:
>
>> Hi-
>>
>> I'm having issues with a webcam throwing select-timeout errors after
>> several days of image acquisition.
>>
>> dmesg yields: [251952.411582] uvcvideo: Non-zero status (-71) in video
>> completion handler.
>>
>> over and over and over
>>
>> Would appreciate any help in getting this camera working more stably as
>> it's on a robotic system that needs to run for months at a time.
>>
>> thanks
>> -J
>>
>>
>> --
>> /*
>> Jason Pitt PhD                                   206.616.1193
>> Kaeberlein Lab                                   jnpitt@uw.edu
>> University of Washington
>> Department of Pathology
>> Health Sciences Building                    Box 357470
>> 1989 NE Pacific Street
>> Seattle, WA 98195
>> */
>> _______________________________________________
>> Linux-uvc-devel mailing list
>> Linux-uvc-devel@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
>>
>

--=20
/*
Jason Pitt PhD                                   206.616.1193
Kaeberlein Lab                                   jnpitt@uw.edu
University of Washington
Department of Pathology
Health Sciences Building                    Box 357470
1989 NE Pacific Street
Seattle, WA 98195
*/

--000000000000cf04d70595ac761e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is there a way to do a reset in software?=C2=A0 I gue=
ss I could wire the USB through a relay and trip it occasionally, but that =
seems a rather inelegant solution.</div><div><br></div><div>What would the =
issue be with the cabling? The camera is on a gantry robot and an ~3-4 mete=
r USB cable in a drag chain.=C2=A0 Does this error mean packets are getting=
 lost/garbled?=C2=A0 What does this error actually represent?<br></div><div=
><br></div><div>-J<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2019 at 11:27 AM Dmitry Mikus=
hin &lt;<a href=3D"mailto:dmitry@kernelgen.org">dmitry@kernelgen.org</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">To my experience, many cameras run into select error sooner or la=
ter. Here we must elaborate that by &quot;camera&quot; we really mean &quot=
;camera sensor + postprocessing=C2=A0chip&quot;. This postprocessing chip c=
omes in a single package within the webcam. A small PCB has its own circuit=
s (transceiver, FPGA, USB interface, etc.) and firmware, which is often una=
vailable for user inspection. Select error likely means that the chip/firmw=
are has failed, and the webcam is put into unresponsive state. Several poss=
ible=C2=A0workarounds:<div><br></div><div>1) Reset the camera periodically<=
/div><div>2) Ensure the USB cable is good, not affected by strong electroma=
gnetic noise or intensive physical movement</div><div>3) Do not use USB cam=
eras with separate postprocessing=C2=A0chip - instead, use MIPI/CSI2 camera=
s such as in cell phones, write your own postprocessing=C2=A0software and b=
e fully responsible for its failures (see e.g. camera/driver for Raspberry =
Pi).</div><div><br></div><div>Kind regards,</div><div>- Dmitry Mikushin.</d=
iv><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">=D1=87=D1=82, 24 =D0=BE=D0=BA=D1=82. 2019 =D0=B3. =D0=B2 =
20:11, Jason Pitt &lt;<a href=3D"mailto:jnpitt@uw.edu" target=3D"_blank">jn=
pitt@uw.edu</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi-</div><div><br></div><div>I&=
#39;m having issues with a webcam throwing select-timeout errors after seve=
ral days of image acquisition.</div><div><br></div><div>dmesg yields: [2519=
52.411582] uvcvideo: Non-zero status (-71) in video completion handler.</di=
v><div><br></div><div>over and over and over</div><div><br></div><div>Would=
 appreciate any help in getting this camera working more stably as it&#39;s=
 on a robotic system that needs to run for months at a time.<br></div><div>=
<br></div><div>thanks<br></div><div>-J<br></div><div><br></div><div><br>-- =
<br><div dir=3D"ltr"><div dir=3D"ltr">/*<br>Jason Pitt PhD =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 206.616.1193<br>Kaeberlein Lab =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span><span><a href=3D"mailto:jnpitt@uw.=
edu" target=3D"_blank">jnpitt@uw.edu</a></span></span><br>University of Was=
hington<br>Department of Pathology<br>Health Sciences Building=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Box 357470<br>1989 NE Pacific Street<br>Seattle=
, WA 98195<br>*/</div></div></div></div></div>
_______________________________________________<br>
Linux-uvc-devel mailing list<br>
<a href=3D"mailto:Linux-uvc-devel@lists.sourceforge.net" target=3D"_blank">=
Linux-uvc-devel@lists.sourceforge.net</a><br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel" re=
l=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/list=
info/linux-uvc-devel</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">/*<br>Jason Pitt PhD =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 206.616.1193<br>Kaeberlein Lab =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span><span><a href=3D"mailto:jnpitt@uw.edu" ta=
rget=3D"_blank">jnpitt@uw.edu</a></span></span><br>University of Washington=
<br>Department of Pathology<br>Health Sciences Building=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Box 357470<br>1989 NE Pacific Street<br>Seattle, WA 9=
8195<br>*/</div></div>

--000000000000cf04d70595ac761e--


--===============5600623205725437629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5600623205725437629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============5600623205725437629==--

