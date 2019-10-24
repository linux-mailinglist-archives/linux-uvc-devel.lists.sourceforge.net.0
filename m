Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3373AE3BEE
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 24 Oct 2019 21:16:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iNial-0004WZ-GK; Thu, 24 Oct 2019 19:16:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jnpitt@uw.edu>) id 1iNiak-0004WG-0w
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 19:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NLIiGn8n9b0FQBLbJdU+gfsTqKP6b2+Yk6Owtdo5KXk=; b=L2zG4go7+f3r6r6YD3Th/8/RL1
 J/KsgV2zXRkaRoIx0LRwr3ok5+0AMQwFz/6YONENljaZTWwWGoSZg+ddoKuCWrP9xef/RuyTAEx+v
 eOs2Glx1QoIRjt5oLrMjaO1nRweiSNXqBT9D365go2t+iPBWCyOyljsAljREin1Ha00I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NLIiGn8n9b0FQBLbJdU+gfsTqKP6b2+Yk6Owtdo5KXk=; b=D3GOu47sf1AtcA35FC/BhySXFj
 zGNoBuUgnNUtLrRf4jVZV+hdOzy5psAbLfj1yuYhMAG9UKyyoiWkWVPsfm/hXZMi4/PZQIlNOl4X1
 E5Gr6Y0DUhCyAqsDKFT2fJggCjcDYTF6YS2trcZJjUCAU9bA0mreOslA9Sj9RQMXc0t4=;
Received: from mxout26.s.uw.edu ([140.142.234.176])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNiah-002DaA-J8
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 19:16:13 +0000
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70])
 by mxout26.s.uw.edu (8.14.4+UW14.03/8.14.4+UW16.03) with ESMTP id
 x9OJG0iC001638
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-uvc-devel@lists.sourceforge.net>; Thu, 24 Oct 2019 12:16:00 -0700
Received: by mail-ua1-f70.google.com with SMTP id y4so3385127uaa.17
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 24 Oct 2019 12:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NLIiGn8n9b0FQBLbJdU+gfsTqKP6b2+Yk6Owtdo5KXk=;
 b=PRH8xaUA1kjdTXKGwl2v3XIo1ZNbHfq7rYp5e+AZDNVoAq9W1zkLvRLdpdHEdvmg+G
 EGsQZgeLlTogdhmMjXn7ir0uNd8YcVGbBShIlSZKXYXNf7QOJ5BB97a0EGCQQ2bZh2tL
 MUsHhMatXalytSAq75nFohr+/n3hCkjpV8cdAwfMYlf20+N4Qt0IjApqNujQje/8XfOL
 VlHi0I0wE2AL2a052lDQZKi8vLjHqIxoAQoErGs9PK9dRgld/SzpLfeT4xqeyEpL0b7s
 DOqPr9uipWtC9HD+5n5k80Jb2ifPtuSzoYzw9QAonsL6sAx7sldqCphvtuZVWRgFAHz+
 xoDQ==
X-Gm-Message-State: APjAAAVOqpl/S/1/r2wHV6so+79Ml4guhgpKMbSZ/RQ4WcuVhNLNtPyp
 IXCUncbP6BxzvoftiU6NKu/UsHf3sj6klygs1e2ZB4cbxIr1R/k5xmx17i0UbVXKVOl7cYVvW9n
 RozYQMBSbQoc8IKYbsHy093e4zEs6joe4buZTTHtCJSqms5/vyplkSePjPtKyWa91i2onxDlq4e
 Fvog==
X-Received: by 2002:a05:6102:196:: with SMTP id
 r22mr1944974vsq.80.1571944559383; 
 Thu, 24 Oct 2019 12:15:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjZ8vsFcEfqa5c1svjj9hPp1wAvX7W1cKMbC/nLNzEzhqDwomTWEZgEtsOT0Ac468DHhbRSqAg5ni1yUWggYY=
X-Received: by 2002:a05:6102:196:: with SMTP id
 r22mr1944939vsq.80.1571944558841; 
 Thu, 24 Oct 2019 12:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANcfARO_GNfogsYwKtFv86AT9J8BH79FDhsrswbPNDqtWUW7tg@mail.gmail.com>
 <CAJoDaPbfp=Qz0nnj=sO5i49OJjCUuJrz+iAPOWjtAPPbyHkmLA@mail.gmail.com>
 <CANcfARPXJa6J=-o2P2JpWs=fhPerxomd8_f0nbHJ4CG4-1XV0A@mail.gmail.com>
 <CAJoDaPYA7SE-zikeMAQe5JtTvOaL20EzmNzWnn0k72v7uw23zw@mail.gmail.com>
In-Reply-To: <CAJoDaPYA7SE-zikeMAQe5JtTvOaL20EzmNzWnn0k72v7uw23zw@mail.gmail.com>
From: Jason Pitt <jnpitt@uw.edu>
Date: Thu, 24 Oct 2019 12:15:22 -0700
Message-ID: <CANcfARNoUe=EGUgYdqMXxfuFL-tDPsBSaCTRiFcgL_c6E=hO-g@mail.gmail.com>
To: Dmitry Mikushin <dmitry@kernelgen.org>
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409,
 Antispam-Data: 2019.10.24.191217, AntiVirus-Engine: 5.65.0,
 AntiVirus-Data: 2019.9.11.5650001
X-PMX-Server: mxout26.s.uw.edu
X-Sophos-SenderHistory: ip=209.85.222.70, fs=2452796, da=48394431, mc=17440,
 sc=4, hc=17436, sp=0, fso=38100826, re=5, sd=0, hd=30
X-Uwash-Spam: Gauge=IIIIIIII, Probability=8%, Report=
 BODYTEXTH_SIZE_10000_LESS 0, BODYTEXTH_SIZE_3000_MORE 0, BODY_SIZE_10000_PLUS 0,
 DATE_TZ_NA 0, DQ_S_H 0, FROM_EDU_TLD 0, HREF_LABEL_TEXT_ONLY 0,
 HTML_BAD_EXTRAS 0, IN_REP_TO 0, KNOWN_MTA_TFX 0, LEGITIMATE_SIGNS 0,
 MSG_THREAD 0, REFERENCES 0, SPF_PASS 0, SXL_IP_TFX_WM 0, URI_WITH_PATH_ONLY 0,
 WEBMAIL_SOURCE 0, __ANY_URI 0, __BODY_TEXT_X4 0, __BOUNCE_CHALLENGE_SUBJ 0,
 __BOUNCE_NDR_SUBJ_EXEMPT 0, __COURIER_PHRASE 0, __CP_MEDIA_BODY 0,
 __CP_URI_IN_BODY 0, __CT 0, __CTYPE_HAS_BOUNDARY 0, __CTYPE_MULTIPART 0,
 __CTYPE_MULTIPART_ALT 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0,
 __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0,
 __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_SC_1_P 0, __FORWARDED_MSG 0,
 __FUR_RDNS_GMAIL 0, __HAS_CC_HDR 0, __HAS_FROM 0, __HAS_HTML 0, __HAS_MSGID 0,
 __HAS_REFERENCES 0, __HELO_GMAIL 0, __HEX28_LC_BOUNDARY 0, __HIGHBITS 0, 
 __HREF_LABEL_TEXT 0, __HREF_LABEL_URI 0, __HTML_AHREF_TAG 0, __HTML_BAD_END 0,
 __HTML_BAD_START 0, __HTML_TAG_DIV 0, __HTTPS_URI 0, __IN_REP_TO 0,
 __MIME_HTML 0, __MIME_TEXT_H 0, __MIME_TEXT_H1 0, __MIME_TEXT_H2 0,
 __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_TEXT_P2 0, __MIME_VERSION 0,
 __MSGID_DOMAIN_NOT_IN_HDRS 0, __MULTIPLE_URI_HTML 0, __MULTIPLE_URI_TEXT 0,
 __PHISH_SPEAR_SUBJ_ALERT 0, __RDNS_WEBMAIL 0, __REFERENCES 0, __SANE_MSGID 0,
 __SUBJ_ALPHA_END 0, __SUBJ_ALPHA_NEGATE 0, __SUBJ_REPLY 0, __TO_MALFORMED_2 0,
 __TO_NAME 0, __TO_NAME_DIFF_FROM_ACC 0, __TO_REAL_NAMES 0, __URI_IN_BODY 0,
 __URI_NOT_IMG 0, __URI_NO_WWW 0, __URI_NS , __URI_WITH_PATH 0,
 __X_GOOGLE_DKIM_SIGNATURE 0, __YOUTUBE_RCVD 0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: kernelgen.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1iNiah-002DaA-J8
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
Content-Type: multipart/mixed; boundary="===============1542883035640916605=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============1542883035640916605==
Content-Type: multipart/alternative; boundary="000000000000095da30595acdd0b"

--000000000000095da30595acdd0b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Lovely, thanks!  Is there an easy way to get OpenCV or an application to
detect the select-timeout error specifically, other than just detecting
that the frames weren't acquired?

-J

On Thu, Oct 24, 2019 at 12:09 PM Dmitry Mikushin <dmitry@kernelgen.org>
wrote:

> Sure, I use this nice code: https://github.com/ralight/usb-reset
>
> The error means the camera chip is out of the game due to various reasons=
.
> It could be a bug in firmware, voltage deviation, on-chip logic failure,
> etc. Select is just a system call, which does resource polling. Resource
> has not delivered data in time, hence the timeout message. The host syste=
m
> cannot tell what exactly has happened - the resource just went offline,
> it's all it knows.
>
> Kind regards,
> - Dmitry.
>
>
> =D1=87=D1=82, 24 =D0=BE=D0=BA=D1=82. 2019 =D0=B3. =D0=B2 20:48, Jason Pit=
t <jnpitt@uw.edu>:
>
>> Is there a way to do a reset in software?  I guess I could wire the USB
>> through a relay and trip it occasionally, but that seems a rather ineleg=
ant
>> solution.
>>
>> What would the issue be with the cabling? The camera is on a gantry robo=
t
>> and an ~3-4 meter USB cable in a drag chain.  Does this error mean packe=
ts
>> are getting lost/garbled?  What does this error actually represent?
>>
>> -J
>>
>> On Thu, Oct 24, 2019 at 11:27 AM Dmitry Mikushin <dmitry@kernelgen.org>
>> wrote:
>>
>>> To my experience, many cameras run into select error sooner or later.
>>> Here we must elaborate that by "camera" we really mean "camera sensor +
>>> postprocessing chip". This postprocessing chip comes in a single packag=
e
>>> within the webcam. A small PCB has its own circuits (transceiver, FPGA,=
 USB
>>> interface, etc.) and firmware, which is often unavailable for user
>>> inspection. Select error likely means that the chip/firmware has failed=
,
>>> and the webcam is put into unresponsive state. Several possible workaro=
unds:
>>>
>>> 1) Reset the camera periodically
>>> 2) Ensure the USB cable is good, not affected by strong electromagnetic
>>> noise or intensive physical movement
>>> 3) Do not use USB cameras with separate postprocessing chip - instead,
>>> use MIPI/CSI2 cameras such as in cell phones, write your own
>>> postprocessing software and be fully responsible for its failures (see =
e.g.
>>> camera/driver for Raspberry Pi).
>>>
>>> Kind regards,
>>> - Dmitry Mikushin.
>>>
>>>
>>> =D1=87=D1=82, 24 =D0=BE=D0=BA=D1=82. 2019 =D0=B3. =D0=B2 20:11, Jason P=
itt <jnpitt@uw.edu>:
>>>
>>>> Hi-
>>>>
>>>> I'm having issues with a webcam throwing select-timeout errors after
>>>> several days of image acquisition.
>>>>
>>>> dmesg yields: [251952.411582] uvcvideo: Non-zero status (-71) in video
>>>> completion handler.
>>>>
>>>> over and over and over
>>>>
>>>> Would appreciate any help in getting this camera working more stably a=
s
>>>> it's on a robotic system that needs to run for months at a time.
>>>>
>>>> thanks
>>>> -J
>>>>
>>>>
>>>> --
>>>> /*
>>>> Jason Pitt PhD                                   206.616.1193
>>>> Kaeberlein Lab                                   jnpitt@uw.edu
>>>> University of Washington
>>>> Department of Pathology
>>>> Health Sciences Building                    Box 357470
>>>> 1989 NE Pacific Street
>>>> Seattle, WA 98195
>>>> */
>>>> _______________________________________________
>>>> Linux-uvc-devel mailing list
>>>> Linux-uvc-devel@lists.sourceforge.net
>>>> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
>>>>
>>>
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

--000000000000095da30595acdd0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Lovely, thanks!=C2=A0 Is there an easy way to get Ope=
nCV or an application to detect the select-timeout error specifically, othe=
r than just detecting that the frames weren&#39;t acquired?</div><div><br><=
/div><div>-J=C2=A0 </div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Oct 24, 2019 at 12:09 PM Dmitry Mikushin &=
lt;<a href=3D"mailto:dmitry@kernelgen.org">dmitry@kernelgen.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">Sure, I use this nice code:=C2=A0<a href=3D"https://github.com/ralight=
/usb-reset" target=3D"_blank">https://github.com/ralight/usb-reset</a><div>=
<br></div><div>The error means the camera chip is out of the game due to va=
rious reasons. It could be a bug in firmware, voltage deviation, on-chip lo=
gic failure, etc. Select is just a system call, which does resource=C2=A0po=
lling. Resource has not delivered data in time, hence the timeout message. =
The host system cannot tell what exactly has happened - the resource just w=
ent offline, it&#39;s all it knows.</div><div><br></div><div>Kind regards,<=
/div><div>- Dmitry.</div><div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">=D1=87=D1=82, 24 =D0=BE=D0=BA=D1=82=
. 2019 =D0=B3. =D0=B2 20:48, Jason Pitt &lt;<a href=3D"mailto:jnpitt@uw.edu=
" target=3D"_blank">jnpitt@uw.edu</a>&gt;:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>Is there a way to do a res=
et in software?=C2=A0 I guess I could wire the USB through a relay and trip=
 it occasionally, but that seems a rather inelegant solution.</div><div><br=
></div><div>What would the issue be with the cabling? The camera is on a ga=
ntry robot and an ~3-4 meter USB cable in a drag chain.=C2=A0 Does this err=
or mean packets are getting lost/garbled?=C2=A0 What does this error actual=
ly represent?<br></div><div><br></div><div>-J<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2019=
 at 11:27 AM Dmitry Mikushin &lt;<a href=3D"mailto:dmitry@kernelgen.org" ta=
rget=3D"_blank">dmitry@kernelgen.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">To my experience, many=
 cameras run into select error sooner or later. Here we must elaborate that=
 by &quot;camera&quot; we really mean &quot;camera sensor + postprocessing=
=C2=A0chip&quot;. This postprocessing chip comes in a single package within=
 the webcam. A small PCB has its own circuits (transceiver, FPGA, USB inter=
face, etc.) and firmware, which is often unavailable for user inspection. S=
elect error likely means that the chip/firmware has failed, and the webcam =
is put into unresponsive state. Several possible=C2=A0workarounds:<div><br>=
</div><div>1) Reset the camera periodically</div><div>2) Ensure the USB cab=
le is good, not affected by strong electromagnetic noise or intensive physi=
cal movement</div><div>3) Do not use USB cameras with separate postprocessi=
ng=C2=A0chip - instead, use MIPI/CSI2 cameras such as in cell phones, write=
 your own postprocessing=C2=A0software and be fully responsible for its fai=
lures (see e.g. camera/driver for Raspberry Pi).</div><div><br></div><div>K=
ind regards,</div><div>- Dmitry Mikushin.</div><div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=87=D1=82,=
 24 =D0=BE=D0=BA=D1=82. 2019 =D0=B3. =D0=B2 20:11, Jason Pitt &lt;<a href=
=3D"mailto:jnpitt@uw.edu" target=3D"_blank">jnpitt@uw.edu</a>&gt;:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Hi-</div><div><br></div><div>I&#39;m having issues with a we=
bcam throwing select-timeout errors after several days of image acquisition=
.</div><div><br></div><div>dmesg yields: [251952.411582] uvcvideo: Non-zero=
 status (-71) in video completion handler.</div><div><br></div><div>over an=
d over and over</div><div><br></div><div>Would appreciate any help in getti=
ng this camera working more stably as it&#39;s on a robotic system that nee=
ds to run for months at a time.<br></div><div><br></div><div>thanks<br></di=
v><div>-J<br></div><div><br></div><div><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr">/*<br>Jason Pitt PhD =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=
06.616.1193<br>Kaeberlein Lab =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <=
span><span><a href=3D"mailto:jnpitt@uw.edu" target=3D"_blank">jnpitt@uw.edu=
</a></span></span><br>University of Washington<br>Department of Pathology<b=
r>Health Sciences Building=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Box 3574=
70<br>1989 NE Pacific Street<br>Seattle, WA 98195<br>*/</div></div></div></=
div></div>
_______________________________________________<br>
Linux-uvc-devel mailing list<br>
<a href=3D"mailto:Linux-uvc-devel@lists.sourceforge.net" target=3D"_blank">=
Linux-uvc-devel@lists.sourceforge.net</a><br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel" re=
l=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/list=
info/linux-uvc-devel</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr">/*<br>Jason Pitt PhD =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=
06.616.1193<br>Kaeberlein Lab =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <=
span><span><a href=3D"mailto:jnpitt@uw.edu" target=3D"_blank">jnpitt@uw.edu=
</a></span></span><br>University of Washington<br>Department of Pathology<b=
r>Health Sciences Building=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Box 3574=
70<br>1989 NE Pacific Street<br>Seattle, WA 98195<br>*/</div></div>
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

--000000000000095da30595acdd0b--


--===============1542883035640916605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1542883035640916605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============1542883035640916605==--

