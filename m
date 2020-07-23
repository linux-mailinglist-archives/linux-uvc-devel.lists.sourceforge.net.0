Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AA122A6E8
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 23 Jul 2020 07:31:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jyTpI-0006G3-Cr; Thu, 23 Jul 2020 05:31:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fercerpav@gmail.com>) id 1jyTpH-0006Fv-5I
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 Jul 2020 05:31:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gwkmdFIwlQmUjY+SdWz1/ShtE1lSic8/582tM269Wes=; b=m3epmEWGkjo1sRTGlHCVrjA57y
 WKaQ8AXiQvNGKDHVoBEpZ3GnytwSl1lM2biTXqveF9yvHX74TlA0+BCNdnXEamOkCgYR0UwEZKcyP
 8tmdpsQCT2wiH0862W1dOQAx3BeEOZB/aU8P2CP5klkU6Mwhyr6zez1kl4mAsGfYu43s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gwkmdFIwlQmUjY+SdWz1/ShtE1lSic8/582tM269Wes=; b=NZXTFD+jjMVikJZIdi2wadoDwU
 I8fHUm1HRDwCa5irFTsIM3dd6QmkxiOs8CXdbEhdWCdDeetY6drI+xGfINPq1vymbP9w4HEu9nHZV
 DTqBkU9pdYHOWtJQgDpnmy+ZwYbmJ44t/kwzX73Rkg9l6tkxPgaEx2avTNqhnsALpbqU=;
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jyTpE-005qso-S5
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 Jul 2020 05:31:27 +0000
Received: by mail-lj1-f193.google.com with SMTP id b25so4998975ljp.6
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 22 Jul 2020 22:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gwkmdFIwlQmUjY+SdWz1/ShtE1lSic8/582tM269Wes=;
 b=tHAbEian1OzhuR94DEvh9bRNYpHA/e/7l4dHoU4ucR9NDfSV8+mZOl0zVFnBg6oO6d
 Hg85vTctzFfJ9n0iMSBaTZI8/eOWti9HllqSwuECAAx3+ShnDocn6We+IdrZ/+YfdwcB
 1kMy4VrdAHdaxLQIt5B8ke/lGah5t/6NPzsk/c0oCtYNIKZzmcbQnQL3ZzduGAa5qvnl
 2nmg7NnkzGne3dh6/AeqEspDqkQNezFtiGP2Q1RLN7XgwWT2xbKZHtc/smr04PfB/aWA
 HEGeLpi/Rskbm7TMri0zgaFfzT128Tcj4+PxJwF3ZJuOF3RuV3dXJFlJioiYU+5dAI++
 wvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gwkmdFIwlQmUjY+SdWz1/ShtE1lSic8/582tM269Wes=;
 b=eLPUjjm4KBXBy6dG/OMOB4X0km7aY3sj6OSpFliLzM7i+g9dhCy+9kxem/eKEcOeb8
 5Y9z2EINjOnoyvZX+KFtmad8N5zsnUkWJ8b4WkMrcQgomoG6PUpy549V6LG/F3V6z3qj
 Bus5R7MH+jk0riFaRXirpwuLFEIhDf+ffXFdkTljXFppUfOby2O24BsavHpHd5eOEW5k
 +1Svj0VZO26nQZoVZMuVehzuFQnCDqFtPXS71Kw6zpwtwa7vHyxyA4Htw3bAs7mOsJoG
 dmXiDHdNEYzXFQRwZWlQ1Kf1B0NWYfGFadHgj0NhKlcjuA8b7MbLJXwdhmhzyu70f5Hj
 /KtQ==
X-Gm-Message-State: AOAM5334FBk/xRU7nQLLGO77ipPdryUBOAFagkdITGpbHbNQH6GFlkPA
 vrc5Ul9KuxW/duc8lJSOwZq/EyC7
X-Google-Smtp-Source: ABdhPJzFo30AsCMohveLnQooiYukivf0lvflfEhfn2BFY/vITpGqooPV6wtDJKNfPvNAwBe5oh6N9w==
X-Received: by 2002:a2e:b53c:: with SMTP id z28mr1102768ljm.439.1595482278228; 
 Wed, 22 Jul 2020 22:31:18 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id y24sm1797739ljy.91.2020.07.22.22.31.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 22:31:17 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 06N5VDwk026775; Thu, 23 Jul 2020 08:31:15 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 06N5VDIg026774;
 Thu, 23 Jul 2020 08:31:13 +0300
Date: Thu, 23 Jul 2020 08:31:13 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Mike Diehl <mdiehl@diehlnet.com>
Message-ID: <20200723053113.GC2662@home.paul.comp>
References: <1667926.DbOj4Bmujc@hydra>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1667926.DbOj4Bmujc@hydra>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in the
 Spamhaus DBL blocklist [URIs: paste.ee]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fercerpav[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.193 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jyTpE-005qso-S5
Subject: Re: [linux-uvc-devel] Sound problem with new web cam
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Jul 22, 2020 at 07:05:53PM -0400, Mike Diehl wrote:
> And here is what I get from lsusb pd:
> 
> https://paste.ee/p/9Lcol

So it's a composite device that includes a sound card. Is
snd-usb-audio module getting loaded? Have you checked "arecord -L"
output?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
