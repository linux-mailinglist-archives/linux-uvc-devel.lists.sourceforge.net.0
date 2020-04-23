Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E151B553E
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 23 Apr 2020 09:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:
	Message-ID:Date:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fTM1wZu4Nbtc2EXNh+hMWTxj2ToBjUrrh2HlpwUq9LQ=; b=Ncnev3T7q8MmbhVIMoaZPyib4X
	MYCe8iQe1wHjTpHlrurzVYF9acOj4vjcXBC7Odt4DH3scRnwAMKMpPGsU1Ru2Lfwe3B4V4J3Sg9lk
	quxP5GHc5WZYbCmWo7yqLGAuSpgOCuNqPbENlcworFKpJyonVqIqzdRu7s4fbujwDLuU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jRW4C-0007Nn-6i; Thu, 23 Apr 2020 07:14:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <danieltmbecker@googlemail.com>) id 1jRW4A-0007Nf-GT
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 Apr 2020 07:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tq+kAVywwx8245SvNd0DTiQ6ZgukQEwiuOEDcU7UQDM=; b=HJR+D6kxDkLLP65/0JX57Z/WD2
 HPvNKBAPtbxf89u2cHCT4wozNbFhW1UkFhVoKkfxAel9AdSiYWlrTlIMgQkRNFjt3OFcX3tF8JfF5
 IuhqM13eMe1wSzqn5KyYV5Uf7efg5y/gA/jJ04VDUokAIxkYLghv2Um0+kYNuK6ODY6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Tq+kAVywwx8245SvNd0DTiQ6ZgukQEwiuOEDcU7UQDM=; b=N
 c+N7ccoOZsm9AOSRSbwbfP2uxNqKf7e+n094LrNq8uicx0r43ZL6Ezp6/Hy10HVCt89JZqrXV99w7
 MZCxW/0PH2yhdWbpB70qcDrG5gSgaV6fvFkfYkm2FnUagExXsH+XVM7tla16P245N1I4eKgjkQeTs
 92g0isNBkqwxl3iQ=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jRW48-00AyiK-1m
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 Apr 2020 07:14:34 +0000
Received: by mail-ed1-f53.google.com with SMTP id t12so3569443edw.3
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 23 Apr 2020 00:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Tq+kAVywwx8245SvNd0DTiQ6ZgukQEwiuOEDcU7UQDM=;
 b=EKRBYlcF3eMcnjiDIogjabZ3RrhUumDAqssF/3cGvQaIylY6/IWN/LLzaOLIHblkTd
 4Ar+jKobFLKo1cpXb+txX/CLYux5c10uM1ui9UU2aXSvGonF+z2biLTzG7RNZMuxe8eF
 pxl8NPj9IGxcMVeMbDc7J/OJVXsocgzG0oYpAu+JzyttlGYvFLck3MI9wEK3uquslLhR
 K1c/zrnK23qAZwyFx65K9XieogphfdZ7x3+xalu3z7TCyxkbH69Tm0oAiSTQsdr5GMSR
 XzF9LXTzuVeqfFecjL2iwEmsv+x5d59hNzNcTQ22KQfaaUFN5z0/BaLtFGav10uJqRVN
 bHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Tq+kAVywwx8245SvNd0DTiQ6ZgukQEwiuOEDcU7UQDM=;
 b=pZ+0i37oyFMT/GgVTbnCES1ZPV39ZXXaRpC/y/BfjEoFmH7qmpqStYS52YamodbUl3
 W2t+XlMfvtdfEjAnK0A1jB0j+e0KwNRge9daOws5pX9Cc/JNR93+eBLPOqAvc3NuT7tE
 0ywujcvw/5Yh06F0hgQ8Xa5E6QAF9rJfEbjg/2m/+D8NvSNtfG5za9h1ujrPjPEba4Ok
 dF5s6LAi73b/SA1huWycLJeJrodghKv7y+KqFm8x0rGj8GNh8E7aPpgJKY8BNnR5RAwr
 NlchbgJntVe/vb0NdpM+jyicMzk3BmpUhjWfDhCwJrBcM3NhlJxmVdfm2k/4H0rHgJKu
 ofyQ==
X-Gm-Message-State: AGi0PuZL9EUVrnem/kY0weosu7W3sMrgUDnPiiwwoXZX81uWN5i4pXW7
 tWkB1qzzq1PztRonx7sRUwexXXtufjarMzHqIUK6s0H5Tmg=
X-Google-Smtp-Source: APiQypLJsHort2rCE7C+BuMkqEagtIYoLkWtQwdw0cuMsSB4c5MBHMVzTl0yGYSMYCiSaXNnV1Weq/4HKiUNmB/Hn/0=
X-Received: by 2002:a50:c112:: with SMTP id l18mr1696909edf.37.1587626065119; 
 Thu, 23 Apr 2020 00:14:25 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 23 Apr 2020 09:14:14 +0200
Message-ID: <CAMQppX2XFFK4pp0nhhun8_=BYqq-GQf2FpvVfMKRtxM32SdHAQ@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (danieltmbecker[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jRW48-00AyiK-1m
Subject: [linux-uvc-devel] Zoom Q-Devices
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
From: Daniel Becker via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Daniel Becker <danieltmbecker@googlemail.com>
Content-Type: multipart/mixed; boundary="===============2923459426937922415=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============2923459426937922415==
Content-Type: multipart/alternative; boundary="000000000000a5ce4405a3efff8b"

--000000000000a5ce4405a3efff8b
Content-Type: text/plain; charset="UTF-8"

Hello developers!

I got a Zoom Q2n camera. This camera is quite good for session recordings
and other music related stuff. When I connect it to my computer it is
recognized but I get that typical "entitiy 1" message in dmesg. Anyone able
to get it working? I think there are many users waiting to be able to use
it. Maybe the manufacturer Zoom would even be thankful and/or useful.

Thanks from Germany
Daniel

--000000000000a5ce4405a3efff8b
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div dir="ltr"><div>Hello developers!</div><div><br></div><div>I got a 
Zoom Q2n camera. This camera is quite good for session recordings and 
other music related stuff. When I connect it to my computer it is 
recognized but I get that typical &quot;entitiy 1&quot; message in dmesg. Anyone 
able to get it working? I think there are many users waiting to be able 
to use it. Maybe the manufacturer Zoom would even be thankful and/or 
useful.</div><div><br></div><div>Thanks from Germany</div><div>Daniel<div class="gmail-adL"><br><br></div></div></div></div>

--000000000000a5ce4405a3efff8b--


--===============2923459426937922415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2923459426937922415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============2923459426937922415==--

