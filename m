Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E263C22A2D1
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 23 Jul 2020 01:06:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jyNol-00084P-Ju; Wed, 22 Jul 2020 23:06:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mdiehlenator@gmail.com>) id 1jyNoP-00082n-Qv
 for linux-uvc-devel@lists.sourceforge.net; Wed, 22 Jul 2020 23:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:Reply-To:To:From:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uYKvxUC4247X0qZASbPIbFCpg2ucH98ES6n+ZFDS4oc=; b=iGpNbKh5KW8804my3nbbA45Y0Q
 HL6HtWQ+TE56+MbwEJmdTMgvZnbv8CEZEOn0egGuClga/2Ok6Xr6mgj4cZr9Vq9wu1oefe+CwhjfW
 mz+gtoBYnkIyiaI+Oo8D8UnhqpOEGTnBboJ2vVGjOJ8CegN9txaoRzw2MhdKYCYt1pAU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Reply-To:To:From:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uYKvxUC4247X0qZASbPIbFCpg2ucH98ES6n+ZFDS4oc=; b=g
 8UZ/v/MS3h95dUDqKZ74uJo98uw2z11tMRaxPHUtKLcJwvu/CFQ7eHg5KTCB1k3wTQsJGewvJr60U
 Q+ksRpvDjrHOY2EQDFECWy8TeOiPZffyrS9/xItymT4SICTWJxoy51qjh8BvXYOoKCbZ7ehkFcC1S
 qtHo/fvIl76SvqGo=;
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jyNoO-00E9cK-G2
 for linux-uvc-devel@lists.sourceforge.net; Wed, 22 Jul 2020 23:06:09 +0000
Received: by mail-qt1-f194.google.com with SMTP id w9so3144721qts.6
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 22 Jul 2020 16:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:reply-to:subject:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=uYKvxUC4247X0qZASbPIbFCpg2ucH98ES6n+ZFDS4oc=;
 b=URpYnCK94EngFxbADCKzlMSK0azCKyMJgTj0h64BXuUI+CmN1Ecky9l/F77R/gr85Q
 uLs5iseVlDdEpA+llLA79ymQilUS5irNKTAI0TrFwBOYrdqEmWWv57Jr0DRwgoczn8h/
 aoyMlGRVisDFdU77Us7ZV0bSgNjRKRNxezEynpVQ4RxaYuqn40Ej+3/8oIapIvg1Ok4G
 BFoJ3eZQ+/IsgHnAfl8d0BcA/HuAdBoLIhLb9mVnO44McsfgQ77f8ph47miv1f4IulKP
 uQB9WqbXlvXzEasr1npfn1iowGA+/C4z8u3OP1Kkn73viSZuWym402iXy9q1qUPtAcyR
 Q74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:reply-to:subject:date:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=uYKvxUC4247X0qZASbPIbFCpg2ucH98ES6n+ZFDS4oc=;
 b=AMHy2i2p4b27Jy5KZJeXtYAU2DvJWP3AEHG6aUMrljiFffsNOOXqDUI3PVZF5fl/Ep
 h0RICdCSXyXdJsIU8fe0XVyn15TP94C76HoI+LupesymzcQCqmxtus6khIqrBEiH5fs4
 ioCy4FcPYyfzyzNgylYP6kni/tPjbbwE0TG7sVRzJ0EiKonzzrdaXESJlRgR02HEQC0D
 Xi+oc3/ZKcOTTn3UtN30Xod+TdUvO4I4UOAcRFrNyCGcmRft/GryvRz0GiIczvqb3l/h
 0AUkgsDoo6YphByNzZw3y8cFd4YCR1OHS9dsbKafBFx/HeA25prB5tpVJepd/hbl3CcW
 opvg==
X-Gm-Message-State: AOAM531A+S7znZ5RiMsZvp1ENqSRYlcXFNhpiCRmet8I/pvlz6LPJZqy
 Lx2wy/SvkoZRLLe9TUJwOvNfU5Ej
X-Google-Smtp-Source: ABdhPJxk++gEwrsrw2WFSfJgzfC2aRIDldSa4QHiOY9NBhGAmifHRbeTY3u7Fa0uDVHPXdxacNt6ow==
X-Received: by 2002:ac8:4b4f:: with SMTP id e15mr1723133qts.305.1595459155285; 
 Wed, 22 Jul 2020 16:05:55 -0700 (PDT)
Received: from hydra.localnet
 (2606-a000-ee8d-ec00-fabc-12ff-fe72-f5b2.inf6.spectrum.com.
 [2606:a000:ee8d:ec00:fabc:12ff:fe72:f5b2])
 by smtp.googlemail.com with ESMTPSA id a203sm1082251qkg.30.2020.07.22.16.05.54
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Wed, 22 Jul 2020 16:05:54 -0700 (PDT)
From: Mike Diehl <mdiehlenator@gmail.com>
X-Google-Original-From: Mike Diehl <mdiehl@diehlnet.com>
To: linux-uvc-devel@lists.sourceforge.net
Date: Wed, 22 Jul 2020 19:05:53 -0400
Message-ID: <1667926.DbOj4Bmujc@hydra>
User-Agent: KMail/4.13.3 (Linux/4.2.0-27-generic; KDE/4.13.3; i686; ; )
MIME-Version: 1.0
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in the
 Spamhaus DBL blocklist [URIs: paste.ee]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paste.ee]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mdiehlenator[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jyNoO-00E9cK-G2
Subject: [linux-uvc-devel] Sound problem with new web cam
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
Reply-To: Mike Diehl <mdiehl@diehlnet.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi all,

So I bought a new web cam on Amazon that claimed that it had Linux support.  
When I plugged it in, it produced very nice graphics.  However, it didn't 
produce any (clear?) sound.

It did produce sound under Windoze.

I've tried different machines and have made all of the adjustments I could find 
under the sound manager in KDE and alsa.

Here is a copy/paste of the kernel messages when I plug it in:

https://paste.ee/p/rQByM

And here is what I get from lsusb pd:

https://paste.ee/p/9Lcol


This device doesn't seem to be listed in the Supported Devices list, but it 
clearly supports UVC and sound..  At the very least, an entry should be added 
for this device.


Any ideas on how to make it work properly?


-- 
Mike Diehl





_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
