Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31050227DFD
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 21 Jul 2020 13:03:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jxq2o-0006Qr-I3; Tue, 21 Jul 2020 11:02:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matteo.cabas@gmail.com>) id 1jxq2n-0006Qg-S5
 for linux-uvc-devel@lists.sourceforge.net; Tue, 21 Jul 2020 11:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y8uZjrGhsR9OYxJGIfpQ56gqMzVcgZNSsIQVtbkOtiM=; b=dc7aPsNygIP+P58xFnRxkIpGi1
 vF1UK3kBYjxswnrgLhzuB6fNbNPTnHuWBn87B3iNRr9uEEQj7kAD4HbYN6LZsNAm/ZeqCk+7HSKLW
 HK72qOhslkwbhbLKcehvsoB3wLbdAoUT8WqcfhCtS32zbtoAcBNjSPwL+rvGwwnZ0YXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y8uZjrGhsR9OYxJGIfpQ56gqMzVcgZNSsIQVtbkOtiM=; b=Q
 PHWWfrssdF7cNlPcelRAx/kKw9aoiIYzGL30S7eQlFgHSUDVSGWgXvHlpc+gPt0Z+I5gQZ9WRJXVx
 X/IOGXYULcis6biWU069zKIZxRjMbgxQ7+ktJPOutsF03fI+Et66bzeAskkpWlIK6k8vnyzgorxal
 m1Z+f+Hpys4tm7mo=;
Received: from mail-il1-f178.google.com ([209.85.166.178])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxq2j-00Eyvm-Re
 for linux-uvc-devel@lists.sourceforge.net; Tue, 21 Jul 2020 11:02:45 +0000
Received: by mail-il1-f178.google.com with SMTP id i18so16019390ilk.10
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 21 Jul 2020 04:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Y8uZjrGhsR9OYxJGIfpQ56gqMzVcgZNSsIQVtbkOtiM=;
 b=UJ6joAjRvL4F+3O8fhdDogDduYqWcmRKxwu/oCggGhR0obskZL0Zn9FR3YvD1fiaf0
 qtcJSp7zyO0/0rs7zdSSvUzsCxyqxlTS5Z3NEEomHYs2FRGcdAkO6Bn+K3dXk+QOtu6F
 58QzaFyJZqovghnHBIuqcYRQyfxXhKB9FFutzbXqO6PupbsVRfsNGJevtHPyNpqV3tcl
 DfJ/bRrge1YrlIMhXWXSIy6QEL49tGGyAwdjV3kY5/0Sd6FpgoQuT2PmrjAp/qm52yIV
 1K6+ztU3uprldLwiE2PkbHXrqtfMQLe2zMaWyC8a6sJifj8QfTS9V+2kBAW4aMTxEoWk
 5zEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Y8uZjrGhsR9OYxJGIfpQ56gqMzVcgZNSsIQVtbkOtiM=;
 b=IHhvLHIVRClmwTlArzrRMWA1gjlQTofqDSicdNLehoZy+qlOMwqGW8+ZyADXSnlJwJ
 MoPma/aw8qz4WqrE0DhCqA/gJYnP0qwBnln7STkBQWLoJKuYZJZ5F6KTc+APLyPPODf8
 /uQDgVZsh4TZQAmwSlg1de93ATc0OXfyFiTulFaLPuu/4WI6+Vj45X+r0aAYfZOQFYYr
 v+P9zyv97c+7XeihEcqS+mt/6p+B67mJK2DLaoLj1KPFdAfxEionjUZjklL0l9ZxgK5y
 XQ7oIOVIZQ32KSx2EqUVauGinrYPoso3bwP1uqxGU6gq0UpwPWH+dUjoKcn5wGdpPQ6t
 TwgA==
X-Gm-Message-State: AOAM530pi6z9q6gBV473SwrR6DGfHiffgZ8OfDm4A6EN5OGpx3M9zpyy
 zyc4OBjKOOYA5+yXhuVPl1aRBV0ceSHCNpDW9hBJL1Qo
X-Google-Smtp-Source: ABdhPJyNXhdtqacEfbFWICFp90QaQC8ZRKxiudPpQM8Ce1lMp0UG76r9COYtECAa8h2cNzCRt+zf4M7TXh6KuscDa1E=
X-Received: by 2002:a92:bd0f:: with SMTP id c15mr26531750ile.95.1595329355898; 
 Tue, 21 Jul 2020 04:02:35 -0700 (PDT)
MIME-Version: 1.0
From: Matteo Cabas <matteo.cabas@gmail.com>
Date: Tue, 21 Jul 2020 13:02:24 +0200
Message-ID: <CADy17cQ0w2iXbhM7MghOkts1+y3FH3qWiOEEd5zV+kZ7+eD+JQ@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (matteo.cabas[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.178 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jxq2j-00Eyvm-Re
Subject: [linux-uvc-devel] Wimius 4k Q1 Camera
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
Content-Type: multipart/mixed; boundary="===============1767865888422510960=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============1767865888422510960==
Content-Type: multipart/alternative; boundary="0000000000008ee47505aaf18fbb"

--0000000000008ee47505aaf18fbb
Content-Type: text/plain; charset="UTF-8"

Hi there,

I was trying to connect my Action Cam (Wimius 4k Q1) to various Linux
distros (mainly Ubuntu and Raspbian) yet it seems the camera / produced is
not yet supported (based on this list http://www.ideasonboard.org/uvc/)

I've already tried a couple of thing but no luck.
The infos I've gathered until now are:

When connected and running "*lsusb*" I get

*Bus 001 Device 011: ID 1f3a:1002 Onda (unverified)*

And running *lsusb -d 1f3a:1002 -v | grep "14 Video"*

Does not report anything (if this is helpful in any way).

I'm available to provide any info you may need in order to support it!

Thanks!

--0000000000008ee47505aaf18fbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>I was trying to connect my Ac=
tion Cam (Wimius 4k Q1) to various Linux distros (mainly Ubuntu and Raspbia=
n) yet it seems the camera / produced is not yet supported (based on this l=
ist=C2=A0<a href=3D"http://www.ideasonboard.org/uvc/">http://www.ideasonboa=
rd.org/uvc/</a>)</div><div><br></div><div>I&#39;ve already tried a couple o=
f thing but no luck.</div><div>The infos I&#39;ve gathered until now are:</=
div><div><br></div><div>When connected and running &quot;<i>lsusb</i>&quot;=
 I get</div><div><br></div><div><i>Bus 001 Device 011: ID 1f3a:1002 Onda (u=
nverified)</i><br></div><div><br></div><div>And running <i>lsusb -d 1f3a:10=
02 -v | grep &quot;14 Video&quot;</i></div><div><br></div><div>Does not rep=
ort anything (if this is helpful=C2=A0in any way).</div><div><br></div><div=
>I&#39;m available to provide any info you may need in order to support it!=
</div><div><br></div><div>Thanks!</div></div>

--0000000000008ee47505aaf18fbb--


--===============1767865888422510960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1767865888422510960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============1767865888422510960==--

