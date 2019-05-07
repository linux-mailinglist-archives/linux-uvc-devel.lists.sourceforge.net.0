Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F57C15F98
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  7 May 2019 10:42:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hNvg7-0001g8-NV; Tue, 07 May 2019 08:42:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <barsnick@gmx.net>) id 1hNvg2-0001fs-0P
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 May 2019 08:42:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g5yFKqAMB/urNKeae1L6lRjaSm0jjctLL4v1fbcRa4s=; b=ZUPJtxPc746taK5buJTgiUzWlY
 cuDwfnVSCUNm9Ug89xWFVX4EJDFz6UmleBtZ9neGAdu4hETEJLApbunkoxNj0DfCHFBmb7+ld1lVQ
 mWrPMBqYlIWemKgAsZuUXd1fWwH/SVZY9Xrfc8nyeKSDWK+CnsMPJVQ2d7VaHPwgKHs0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g5yFKqAMB/urNKeae1L6lRjaSm0jjctLL4v1fbcRa4s=; b=agoE1n8z01Bp2don3UaiOe+pYV
 35w8NiPmC8BAxGjjcVpqPoSPOgaO/5p8YhlXJDNKMLynRq1GupObPsbk7GF3AZuHNVG2fu7U/vy7n
 Fa19CV7X9mASIOzuLol+jgkqGoov60m9Drbp/00kOIQAh/DwX9k5a87+SwQNX1bajlD4=;
Received: from mout.gmx.net ([212.227.15.19])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hNvfx-0088bQ-Kh
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 May 2019 08:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1557218527;
 bh=yvZDHbk9EeNYcShI4czs7dpZaJvVayPcIytK5PprsE4=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=FNw5aLcHFGKa7wwAgZWJSCYsm2d7VUc+RozcbJVsU1OuSdc1Bc7VJG5TjqwwvDIXM
 0xdI4uLt+zpj62KToovj9dm/ThuVqLT1mqH0POLc3ZcFV3YnzOHN+ginOgAg+BX2xT
 uATU9irTsPelga5s8M1/ryVflfshMxscwvAy2duo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from sunshine.barsnick.net ([89.182.225.107]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0Llm9w-1goruA3HcW-00ZPS7; Tue, 07 May 2019 10:42:06 +0200
Date: Tue, 7 May 2019 10:42:06 +0200
From: Moritz Barsnick <barsnick@gmx.net>
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <20190507084206.GC29401@sunshine.barsnick.net>
References: <20190507035214.GA12586@horribleapps-HP-Slim-Desktop-290-p0xxx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507035214.GA12586@horribleapps-HP-Slim-Desktop-290-p0xxx>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Provags-ID: V03:K1:M25OtFGR0PDrdWxsRfNM/gM9+nakM7j37I3Ef7Yst0Rr5P3zwxr
 Jdwp9u5fUT3xgcQjH5uGrh5M5C4yOO0lNSoF8slAEjFo4gXcQkpod59AZ35PWePdlJsHAnm
 GL711XZan+892XYNBB+lvvHjDfuIHio9Ef70PpKvAmp6TZCu4xYEDPo8kSmJBm9lYCqE9gx
 9K82ziu5VBRwPKjISyCyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I22W5zlNeRE=:fYhjagfIPBk0bOxhXuPjaI
 o3l4bbgw+n0qq/9PRC2xl2teJtLLpOxTKHgjJNM/j2SKgr8NchzUlx7S+BNar0veUNvNvQ1O8
 0jKWkxYaz47RMF+Z+6qC5feHWMpL06fK3k9yAvTAy8ggHMIl7JFNU/OVd5r93xfcGj43fHAWV
 MwkciQY84LkR1OgB8BXuNAIfho4TH+UuYvRkZmFKmbH8wN1BA7BsZnUBJee84+Kr2DoNYxtvs
 rSH+hWFwFN+oDVTMlIeC/QPubXuSnxY1Jsl8NJeS5adS13o9Bd/uotWTW45bNSaXD3qLw756q
 cm6lkH7CGBjpeWEZNwH+OLrm/ps0wfwiJK4/mgmySLjanyKCHwywmkSghvAtBI5kaijIpKNd0
 o2/J1CLgo4Lf0M/XmBZ458hWJB+VbqHHVWGFwNIYiX8S8fCCCKWIVDFQg5tolq4yTvFYrZyCc
 rKU89E0QMzhhoPD02Gg2PGhac8xsIWEV6u4+czTLTK7Al5jrqGipG5fi0wBBDRHUw5ozWgOS5
 q8pU2KiyYbT7K/I83fN4PY5wOyJDkIKtlVspN4fIsNd50C6N6bemjLXVsRIAAysFOUbJTpgUX
 5uWSfVIerS95Cw/zZvk1HpMTe/+S5xR4eki0xuEzUEBh0dVbDJHm02QZT9S/pjel2IiQs2xt+
 D8CLJ0eXJZoulGNwceiB4aTs0kKPJlf3Kl1jI6oBUHeS8clCohVCIok+oL7e4QsoGtg7pIb2B
 oGDL9dMpTiztwjTyNoCfwd07umRiluBZsahfzdf0sf7qiNjAz/7AV6rsNes8AYlKv5PLPkC0S
 gnLsdL+c7faqBGDdrGRDgC6ryqsKl7jYzKdsDVWKQ+Hr1QVupdTW6rwplwV+0IzrhNpQ8HIWk
 TjxNBS6Ow7FUBf56qNdSsvCaPTju4JQTxm2izHvx+svoC+IEVt+NJE7r6J04Xz
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (barsnick[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hNvfx-0088bQ-Kh
Subject: Re: [linux-uvc-devel] 2 jpeg_decode functions in jpeg_decoder.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

On Mon, May 06, 2019 at 20:52:14 -0700, Your Name wrote:

(Is that really your name?)

> I was wondering why in jpeg_decoder.c of guvcview(v2.0.6) there are 2
> functions called jpeg_decoder?
>
> Do the 2 functions serve 2 different purposes?

They are two different implementations, depending on whether libavcodec
is used or not.

The first one is under
#if MJPG_BUILTIN //use internal jpeg decoder
the second one in the block
#else  //use libavcodec to decode mjpeg data

Cheers,
Moritz


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
