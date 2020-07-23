Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FCC22B169
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 23 Jul 2020 16:32:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jycGp-0001Oo-BX; Thu, 23 Jul 2020 14:32:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fercerpav@gmail.com>) id 1jycGo-0001OZ-Ad
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 Jul 2020 14:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=92rAY/ecuzjYB5wCIi4sMdMfcffLT/ByOaLq0r2Xxgc=; b=mb4M+AJhw/RQsppKfVkkdEm3tY
 sbjwDxCdYn8cZXPkBDjH032DY140/X4DDp8vqhYF8DEGky1+SkbxkqpEiieM32CfsoLVmaa4AHvD1
 SMunFeyRxrwiCqeE4FfR1/OwGupmkiHzFR+L/0AbEinyRznp04DTbi21I3qyKIIMbq1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=92rAY/ecuzjYB5wCIi4sMdMfcffLT/ByOaLq0r2Xxgc=; b=YdhRtRchnyShm6UX9H1uAeuOuu
 Fiu8HoU2qeZ2MQKa5zjZr3YX+Nv+/qLkc0Qr9GMGBla2lvprxNga6Ij/gAEkC+jVcYgs8nH/KroP1
 7l3Tnw9lPgg7CLkaPZkzWNsdp3NGCj8vu1fkY9VZ6RqodX60g+Veb57N9wQEEFJfp7cU=;
Received: from mail-lj1-f181.google.com ([209.85.208.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jycGm-006MBa-Vp
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 Jul 2020 14:32:26 +0000
Received: by mail-lj1-f181.google.com with SMTP id e8so6605015ljb.0
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 23 Jul 2020 07:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=92rAY/ecuzjYB5wCIi4sMdMfcffLT/ByOaLq0r2Xxgc=;
 b=PaykT5tlFQoAv29c2QK+dk/AIzqgDASGkDEFn/UeBCLs+y/uOacMiI6dH2Cl8Miwqh
 h7TFdnQnmT/xB98YbdTXd/gZghougpp9Z82EAQhI9JptozbUPCgD4dmZtVIUpkzEHE9/
 uthP3mswA/+rBf6cIV5/7xMjKjNpdHk+iKxflPMfzbVpMhcCx5OzJB6M1yPgmMeAy+0B
 SRgXBmjqRXvNbbznWUwhVIlhCGtr6LP0wZMANtH0oJOBDWl5+4x0RUHa/ofSpak944k0
 c74yNf/tDF6f8NYbDmor0pAlybIjc3Xirut4fhsenJ7pGAdldyrsFXpALE+IQbTao+rx
 ZSvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=92rAY/ecuzjYB5wCIi4sMdMfcffLT/ByOaLq0r2Xxgc=;
 b=SP0cC/0YE94n0B6fcPaTrHTZffLL33PvoK9FMm9OfuEoAJ0AuhJzv19VitU9zi84U6
 m9qo3k+add74QwGJ5UVqqr6xGIpf2Ln5j4mQRFZncCjLNjNB7b96cs3aDi9ENAD25NXv
 wlVverCDgYUWjgwxXh6plCVbMe7O/Sg7kZKth1YAQNRysEeqwBpZ+BwB78uG9h5knQwX
 jCFDZFqASJP6Y+VbpLhgFF4d/zPUFqZnrohytx6hWgHLGeRyPnxyQzA4IMxMVucnn3XL
 S+DL6K/gPsrH3xPMo/wW91sES+jTvUgypTAbBBg87iJ9dHpr6FPlbrqsv/0iXCheTXEW
 ucag==
X-Gm-Message-State: AOAM532SIqnU+Ifcv2pajoknYblLdvFOJ4u97gJLX/FzN1NWwHsYRQAG
 dbyf8koYw+k2QEx8u0rzOOA=
X-Google-Smtp-Source: ABdhPJy7wjc8EKtyH2EA2Metb9tekIc5mAoFG3PkUaONSK91f9TMdUS863LUvAUSt8lzYlyg1YlAkg==
X-Received: by 2002:a2e:9785:: with SMTP id y5mr2277290lji.383.1595514731294; 
 Thu, 23 Jul 2020 07:32:11 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id m4sm2900973ljo.70.2020.07.23.07.32.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 07:32:10 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 06NEW6tr032101; Thu, 23 Jul 2020 17:32:08 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 06NEW6qY032100;
 Thu, 23 Jul 2020 17:32:06 +0300
Date: Thu, 23 Jul 2020 17:32:06 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Mike Diehl <mdiehlenator@gmail.com>
Message-ID: <20200723143206.GD2662@home.paul.comp>
References: <1667926.DbOj4Bmujc@hydra> <20200723053113.GC2662@home.paul.comp>
 <2122821.6gpB7x7iuG@mikeworkstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2122821.6gpB7x7iuG@mikeworkstation>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.181 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jycGm-006MBa-Vp
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

On Thu, Jul 23, 2020 at 09:55:08AM -0400, Mike Diehl wrote:
> mdiehl@mikedesktop:~$ arecord -L
...
> hw:CARD=3DCamera,DEV=3D0
> =A0=A0=A0UVC Camera, USB Audio
> =A0=A0=A0Direct hardware device without any conversions
> plughw:CARD=3DCamera,DEV=3D0
> =A0=A0=A0UVC Camera, USB Audio
> =A0=A0=A0Hardware device with all software conversions
> usbstream:CARD=3DCamera
> =A0=A0=A0UVC Camera
> =A0=A0=A0USB Stream Output

So looks like it should just work, right? You should be able to tweak
recording levels with "alsamixer" (press F6 if wrong card is selected)
and you can try using something "arecord -Dhw:CARD=3DCamera test.wav" to
see if it works.

I guess it's now fairly obvious that this question is not related to
UVC but I'm ready to continue in private (or on IRC).

HTH
-- =

Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
