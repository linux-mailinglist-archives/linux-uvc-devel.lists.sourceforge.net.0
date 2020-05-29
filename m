Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7AB1E7106
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 29 May 2020 02:01:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jeSSl-00054V-42; Fri, 29 May 2020 00:01:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <barsnick@gmx.net>) id 1jeSSj-00054I-SP
 for linux-uvc-devel@lists.sourceforge.net; Fri, 29 May 2020 00:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YIbrV/0IjpSS0awIXeamQZizCwDelEj758x1U3AqqTA=; b=cG/47l7+kYDbWFgpTl70fawNA1
 Fg8moNlzfP+ssdXQ0qsjHmnfGiyiodXRtM6N/C6e+7VWe9WC/0WEpo1qNA7w6gbW+mx3xhAhKf59h
 odgOhXQzSFJZdowJDMlmgLtyh5LwGAFXQrQv4+up+FsRTm5HQ3cQXMSi3HTlAXFOXIR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YIbrV/0IjpSS0awIXeamQZizCwDelEj758x1U3AqqTA=; b=hOD76TqTVXj39mHkVZvyGrboNS
 QBw4elT9TsaBeDpY4piHj2p9F1ElEHUl+XcedX9j5/cLpTLJ7ndd8jh4xcoe7mhPoSGxAiuti9Hky
 XbW7j4QQHafNsYyF9IACFZu61aMwP3w3kiOvBWIs9r068ndIKtKR2FBs2rGoDiECpfd0=;
Received: from mout.gmx.net ([212.227.17.21])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jeSSh-0024Jv-NA
 for linux-uvc-devel@lists.sourceforge.net; Fri, 29 May 2020 00:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1590710469;
 bh=YIbrV/0IjpSS0awIXeamQZizCwDelEj758x1U3AqqTA=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=lkyZYcPahv04lhcwhuuf/fP5gjv4lDaQs5jYpvHr8g3iyFHza9Iv//HPjTn1mmK3E
 f/7JLpgpHUvXVOdK9A3sUhIjXfOTK2OyN71KLS0CQ0SpOyncQXag29zlN1alr45y5a
 ITYZutM1DvMn5Hdsav5T5B/0qgs5nnn/AqbjA/Mc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from sunshine.barsnick.net ([89.182.225.158]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MJmKX-1jPH5h3pdZ-00K50x; Fri, 29 May 2020 02:01:09 +0200
Date: Fri, 29 May 2020 02:01:05 +0200
From: Moritz Barsnick <barsnick@gmx.net>
To: Linux UVC development list <linux-uvc-devel@lists.sourceforge.net>
Message-ID: <20200529000105.GA15716@sunshine.barsnick.net>
References: <CAOxHhkFL7ciShKTg4sE_qH2BNvc0wWZnHYr-GxoOtKFxPu8wDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOxHhkFL7ciShKTg4sE_qH2BNvc0wWZnHYr-GxoOtKFxPu8wDw@mail.gmail.com>
X-Provags-ID: V03:K1:Vidn4i3ctzJv4CHcr5gKu74dYWTH18LJIf7Sat8wpDtf1RIhtTr
 4nxhR9eE5+/vJCt6Lod+yKXsuRj64C5mbYxkpdyAJvdB3M8i762eNYqR4IeXFuUzSNnQuBI
 0bRFpqQIG8P2R40vFhdsURgIAlGZemeT5IUd55kx6y5v+bAROw4HXn1IIDT7i5zllGyY64s
 WP0qiYEN3yfWxb6rp6b2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H0iSzNzbQ+Q=:7BGVa5uTzOfBsB8uBqpbgB
 n2bzgRM0S5ZwgB7q+mxqkkzCsD4iiqLE5KzyrBQ37vJOB6nt9oaGNJxtxsv7c1+dEv5r4+eDZ
 qbgxZqq1oEGV2Ifa5YcL1l3kFE7jbI44wnhNOKWVZrDF9XB2Vkufg86q8ezu0MCJKZ9MHziuB
 f+vRxr21hs0Prv3BLouSe9JxJ1s9yy6Zw2zmPTRbJdhH8m/nSGNu55rGbrvFMc6NX83l8A2R9
 EANt0Rlu8Q9w2PoOn15DEizmfYHbbX2/a0+dDR6Kd+seAsObZSTaADtWSH0j6Nkuf58jJuGhT
 pvEumxJjO8oZzm7ULjfodt0Y/EJ25lW0tcPuhM5S0MubJJE7tkmWANEEkWDo3Rx6R2jx1mO69
 Vp5SB7O+rUzj7XtQTO/xVUK7rj65QYlYp3TgOptVjNa+NQFP/5KYdlUpfJrJZC9TLUbclh+hc
 pSjXuqKew69hLw0RSf+TYLH67P83Q4pdHY/lIYRBLTTOAb72TYcJBEz9Lusny7nEtqqIX0lLw
 mJZ0CJiPQdDUfEBr1xat/klhb6k5oBQxl4R2KkCtOO1wyLLc4uQTw5jrNprqlOzu/7/5diEE3
 lBUezvu87kAA6n951gi3W8lbb3TPd5THU7YTknBlDJYfOCaxoCkKnJuUQTkWAEoZ3OTrIz7SE
 oAKq9DI/5rVCyaSWKptXSmLMJ+hTnL9tDJCBvC5sckYbayj4SSCVJKR373MZuYMjcHL4WgDtX
 11bbr5E2jbsPm8XH3R9+DKQqlrnkxavQh7T/GgIlbUJQx9jQ9g/hg4sb0igMinUeARkGqRydr
 wBm1Ff1A87HDI2DdvnKDoRphrUZ3jhBkBO6m6QX8Nkw0nFXMgbDW7RT8EtUy6y7FiJtMfUG7c
 11g2ujt7g9tzqrkl78INkermMxnZkNEzCfMfULMADBqa1Rd/SkieLn9XDs4js9lI7stJPM9Hl
 Jv9ZK1O0P6XuaJFZUiFQuyB7d5VL9yMrqwvp0oguK2ogx+RygDRkTpvXlOckclxwaw0OmiziS
 AlvMPxwA1kcqSWla/40LCRATGAAYy2b0czZ6Cnagl6ab4+B1vlu2u78+E8bqGz5w9UOakq+h0
 LPMmKgRG4wDdqn5a2d6jM+aHySD6k2ZrBlIL3WkSkf98g/9QSEGEUTNYm/Cx+E+KNrvLce6nD
 oeLSf8tRw3644UmJjp0onQBe5zevY062xQ4zlVtMTpYqfyGCbuUbL90AiB1LSQZLIfStqsyvy
 xbdNpLaTCEL6GNnmk
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (barsnick[at]gmx.net)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jeSSh-0024Jv-NA
Subject: Re: [linux-uvc-devel] Creative Labs camera shows up in dmesg with
 wrong vendorID
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi Lasse,

On Thu, May 28, 2020 at 19:09:59 +0200, Lasse Heemann wrote:
> Hi!
>
> I have a "Creative Live! Cam Socialize" (not HD) webcam that announces it=
self
> in dmesg as follows:
> Found UVC 1.00 device Vimicro USB 2.0 PC Camera (Venus) (0ac8:3420)
>
> The website http://www.ideasonboard.org/uvc/#footnote-16 says creative la=
bs
> cameras are supported by uvc. I thought it might be possible to simply ch=
ange
> the driver to treat the camera the same way it treats other creative labs
> cameras. However I cannot find vendor ID 041e in uvc_driver.c.=A0
>
> What am I missing here, shouldn't uvc_driver.c contain all VID's that are
> compatible?

Firstly: You failed to describe what your issue is. Does the camera not
work?

If a UVC device is implemented properly, it can work out of the box,
regardless of whether the ID is known or not.

As the comment in uvc_driver.c points out, device that *don't* properl
announce themselves as UVC are listed there.

Secondly: Your exact ID is listed under the supported devices, even if
not as a Creative device. Perhaps Creative relabels Vivimicro's devices
for this sake. It should, according to the ID, work.

Thirdly, some behavior can be tweaked by quirks. I don't know, though,
whether one device can be forced to be handled exactly like another.

Regards,
Moritz


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
