Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A841B1A57
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 21 Apr 2020 01:56:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jQgGZ-0004qe-EE; Mon, 20 Apr 2020 23:55:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <7heo@mail.com>) id 1jQgGY-0004qO-2s
 for linux-uvc-devel@lists.sourceforge.net; Mon, 20 Apr 2020 23:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Transfer-Encoding:Content-Type:
 MIME-Version:To:From:Subject:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3XHUu2+/EGoJ4UumCf45GTVMNcj8ZAcRdK7/JRE9xeQ=; b=KfxSqb7vdibqj59hCW1Hyaxuqy
 bPQPKCFVx2yCj3kgDQ5ekwATOujEEGNyOWZ+5Q93GSjrXIwP9OHsT+/uDgRTfbmrskx6yDv3j/ynI
 2fHeYq6t3b6qEKydxuqV3U1rXafhwf2G0IYrVOnw6qejAwn48wFPB/6XRLhUAgr5cnfw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:To:From:
 Subject:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3XHUu2+/EGoJ4UumCf45GTVMNcj8ZAcRdK7/JRE9xeQ=; b=g
 FbY9QrF/hKnaO8GXfwXwZyxcOJ+5lrsxBuAh5dRu7JzSLW9Hn3PfVs8AXcQI0vlTM1vZETgn0ps+v
 sPkFiB1nWkyAULRkVIw843YOQBBhRMdz+oq8x9G59hkP9522L8uxZoySSrhhY+mJK4TG7F+ghoX55
 HxsmX5LSy77PZMvQ=;
Received: from mout.gmx.com ([74.208.4.200])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jQgGR-008XH5-Ju
 for linux-uvc-devel@lists.sourceforge.net; Mon, 20 Apr 2020 23:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1587426941;
 bh=3XHUu2+/EGoJ4UumCf45GTVMNcj8ZAcRdK7/JRE9xeQ=;
 h=X-UI-Sender-Class:Date:Subject:From:To;
 b=WwcMmkBCukpNftur5Sm2muOf2Dan/oWMVACyxI1qCcuF/5AE7t2NE70l9zrgcD4BX
 fE1cQrNwSLyPnXK1FbfboEsi/B4rDKU0RIVKSrJX8EMY8lmLh5q7P5iYooso8LHuQ0
 bEzrzlRY/v52OalFEolXdcu5RHwP9TGb31J/hL+M=
X-UI-Sender-Class: 214d933f-fd2f-45c7-a636-f5d79ae31a79
Received: from [192.168.1.146] ([84.164.242.78]) by mail.gmx.com (mrgmxus004
 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MKH2G-1jP1ZL1CzO-001gj7 for
 <linux-uvc-devel@lists.sourceforge.net>; Tue, 21 Apr 2020 01:55:41 +0200
Date: Tue, 21 Apr 2020 01:55:37 +0200
From: 7heo <7heo@mail.com>
To: linux-uvc-devel@lists.sourceforge.net
MIME-Version: 1.0
Message-ID: <0MLe57-1jQP9C3hxb-000rNY@mail.gmx.com>
X-Provags-ID: V03:K1:f80jYSK/LAzhoqyEvWvAx1KMX0cKbOOHqiowjLFg+S55ZCLEzLc
 Biue7g698HwpAeZQX9TFvbMwZgblJpfvh7CQOpqolzIYVDvibb1xu3aLfd2oXd+Mbo82P+a
 AvzV8IK50j9IRS7X8fHIBls9J95yGsBr6PoluHl/N+TjSry3HQLvMTiqScvud3sT6uWwCRS
 jZWlq/ysFFZBYwUJ8UyMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:J2n6UMIdiNc=:/NbeCxpieSepT5CxJqwg7f
 KV/GpLCDCPDJXHIUHkTfekWvsFVVIuQxWGwZDBHVud9mpno8PBrybrIHFvsP6BhHZLvVxT0wx
 Oo5d4fNa50tlYeuoQW9MuT7DreEHPVc4xKWIhs4jKtcjbuLPikUQiXvL9+1ym3GZdB9MBm01+
 OAdAqsKhLNAvx82z1ql3TPs+ISokosPFuhrvrA65nOdIs31TeBss5vIpEBi8vzlF02z4/D7ax
 La4sBitRlLzyhB4NRt7Uc5eeo3MGYm960hiHh5ILHqkw9i8Z+NGUEQ/Lr3VEbfMJTSZ8qsv6A
 gB1IdxyU4ZYRuz2T+H6ZCuK5vhqPW8f+3bVXsylsOR0fR8sYc6SMh9dFG9PxgOtZ2hKYlBdRQ
 W4a/CW0GHfXW5VVi+z5cz8XxYzHE9U30Whn23JCbSOsu1bewWc/iVwPPs34c7/XY3YgwbZMgB
 QPdY2aax7uMQZWybOvvFRKXLgnF9/O24NqCbxtGS5wmKNk0z9mmGlMu4u9+OxEC6QHCMj+iuF
 yFImeKkg0H9KJtRAXUtqjuYClPeyqxEnh2XZhbfxj9w5Bun7507tx1nJKSiQoutmmRflxPo/u
 Ax/hspS9iKVSEzBKqnoLR/nfdS9MHU9DM5SGIXYfAZkltnsdrqufU7y5RRPIcCLj4suf92ZSF
 WrehZismCepdAi3ursy146JUpQLbr88HUPn2t2rMVcj7Qpfqh1xfPHSSQFV3b/Nwlxst8BSMP
 QUEpVbB0ozcmjNOeonee6EklRI5LdN6QAT2+a+uWi2h8BkVeDsQwk87yAPVYAI7jG/KYEBdLM
 TL1BGiuGQ4P2lPsqZRyD7AmgR99C+VbHyp2N8cE4b+VqIePSg9fdlt6nuL4142MTBC+q3MTLU
 dWzL1qrqbeskGnJR50cv/W4EMGfwI79fKu2VtC8X4QWFJ2b7TaE0pk9klr48c3vHk2/yuqGnL
 5qp/RiTyJ+d0oFpJFB/C8u5iL2q93hbJ3Zn3JSWcrBfvg5YKd69GJsJgTxwHM7a8w1szaSQvq
 G+wF2M9zf3MNrmvufXGGEiErzzHXXmYG/hulrRrVFtQFixrCnsTonkFqYoeKG85GQgoLV0HxG
 DGOOHRVK6zeuJacGQl2z4FXEyF3ppJYrjSg3DA/w63tiLfG34xcj0s4iWk0RxsI6LCx3W9nh0
 u4og4qNNlm9n/d7x76kTSsthu359hz+5LFEQGLsL8fT/0oVwL389hYcaPF7yMsB27WltTDeWD
 ZT8zlSXZTDQAE0Kjr
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (7heo[at]mail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jQgGR-008XH5-Ju
Subject: [linux-uvc-devel] Undocumented Device ID entries
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

Hello,

I am aware of two webcams that are missing from the list at http://www.ideasonboard.org/uvc/#devices : the Alcor Micro 058f:3821 and the Alcor Micro 058f:a014.

The former can be found in the acer 5750G, and the latter can be found in the Asus k series (k54e, k54f, k73sm, etc).

As far as I know, both devices are bot supported by UVC right out of the box. It is currently unknown to me if either device would work with additional configuration.

Cheers,
Theo.
_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
