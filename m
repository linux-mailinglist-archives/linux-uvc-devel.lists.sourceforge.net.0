Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BD61B1A49
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 21 Apr 2020 01:49:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jQgAI-000568-UB; Mon, 20 Apr 2020 23:49:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <7heo@mail.com>) id 1jQgAH-00055z-9S
 for linux-uvc-devel@lists.sourceforge.net; Mon, 20 Apr 2020 23:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Content-Transfer-Encoding:Content-Type:
 MIME-Version:To:From:Subject:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MiPEkV+bpCymmv9Z4+tjGQffGRUgzQcPgOPjUcYUfVE=; b=SDygUiOEu+pNsI1g3CYiNICSSi
 Al8T0RC802t8GCNc6lj1HmkFoUKwLTVlSuzp4UqQPgM6ANcw1cq2Z0j8dAh1g+o+0ADw5H6DOtCtK
 DXAL/9rU5Bg9BSlR0aqskju1QXBwAyq1ZR/vbL/jIuVmUIyqfc97x/pytcZd7S20QaSI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:To:From:
 Subject:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MiPEkV+bpCymmv9Z4+tjGQffGRUgzQcPgOPjUcYUfVE=; b=m
 vZPPW041u81SV0DhIQvZICmYf6hv5QVbVR4+CnufDLByE2R2axEXD8oP3FHbIeasQY+EEr20zM4kG
 tSg7A3G/5X/MQs32hgipsygM1CllBmQRd+e9j6VziOHjHnGkFbnX7EleRM11cTXiEUjfYspGCSObp
 2N8FgG565wZLCgck=;
Received: from mout.gmx.com ([74.208.4.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jQgA9-004sLe-6D
 for linux-uvc-devel@lists.sourceforge.net; Mon, 20 Apr 2020 23:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1587426551;
 bh=MiPEkV+bpCymmv9Z4+tjGQffGRUgzQcPgOPjUcYUfVE=;
 h=X-UI-Sender-Class:Date:Subject:From:To;
 b=gFT94pOWNeRo0sqGRPiH1OioPTHH23+fpSXoIbGBe8UHD7gJ2s0domGol1OCx3FBf
 83OnIE4/VK2NR5cMOt0X/hrFjc613rvz14Bbvk8ONRVim2PsHVU9EgVYxNkRrS9N08
 /5T6poHdP2inGPM744jifHX54+2aHu0387dVVYK8=
X-UI-Sender-Class: 214d933f-fd2f-45c7-a636-f5d79ae31a79
Received: from [192.168.1.146] ([84.164.242.78]) by mail.gmx.com (mrgmxus004
 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MWTs4-1jjxHw36Us-00Xe1c for
 <linux-uvc-devel@lists.sourceforge.net>; Tue, 21 Apr 2020 01:49:11 +0200
Date: Tue, 21 Apr 2020 01:49:07 +0200
From: 7heo <7heo@mail.com>
To: linux-uvc-devel@lists.sourceforge.net
MIME-Version: 1.0
Message-ID: <0MRnB9-1jpCDm1OGn-00Sx3f@mail.gmx.com>
X-Provags-ID: V03:K1:6AQjIH6/b+62u9A4Mh0ktY6GsyBPtni6MObYK4VXVIJsohz7027
 tovnJnX2i6i1OrBHl6ajug4+gfdfFojiW0V0b9qWxNTP0zXFxwTkI8F6lmbwykC/4jHkSQf
 hgzGJIz7hYjWJ09UYSUOKq+/xr+oxIpiaW3aEIxGNGH+mwh7QhmMetRpbkCtzbFcjOBlFAu
 AFKQOjGlOsTk215YU8FuA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8dHI/yAWpI8=:3XEIqE18O0DrD46MG3PVIu
 G4al12xhqXhPe9ZTCAC7STSh7YMcbCvgEf+/3ReqG6eYHBgy8EB9TqGNQUYXAbz3ChCCs8Y//
 HqZUDWnnz1W3WzsBKzu1Lp6ARF6HFUooFynvfSzFJrgkAdk5ycEDF59s3M+WncWK1mCXFEPnl
 AsW2KV6TrMBg5HJrOG5Wymd2yL62aWdLWvc+V3NAxLTeEz8+fxjigM3cGRx8LSrxwJle6b+d0
 /m5Ss3m4mHTPIZAiZrxTjyL7fGBnos9B0pTuh/vyOU+YaGtHJaByOheyBMe2xSEGv+WpwqbY+
 i7BA9EqumNHB+4WGWFY6pH1bQKvsATyWieLIvvZuHDyxBZ7LqA40u27aM8rOUhpF+eGk2J1ZD
 I74Q9np9rt2sTSoWgdSX2Xqr66+exVoEOHadgf/lJwnBA9mLEvG7OPRpsEhGEqhWoWHlHEi9D
 Y6geHu0qY1gYfsOCgA5x7/iy0XyKzip5WgjzLQnEhZLSMXqPpqiGhQzAhbuIwBgB/CwicHIpZ
 a1Vz8WSKlQvIIQD1GrmikCB49C+rrEijUNZQ1BBYmSiLgscy+vGnD45+Y4OULqWnzNgmrl9gL
 NXXFeOczWVPQfYYJVDMRzC8Uh/lp5Hwhy8SB2OSVNuMZZxX/rpk/m6KqBSt0qEzYtC5eXKWfP
 lWmVdUvWK9m+AAp0fqvwoRq9KgO0uEllbNZlvoFyhyYJzN2lfi1ouG0Dln7B0xPS1rT6saqLJ
 4b3Ap2jLwxHaRndfLdvnQxtacrQTAJNzItdK0h5C6BGXSmN2/EAVq3iQChuZ2M4rxTvmqBmi/
 3TcyrO4Mg0GGqvDLDQqZ/U0hV1+FBEZ9G0VCa1z4yw4SXiyy+/0FS6S9+WRaZ0oG9brFCv0gU
 pFurEq4t1SYdifmL89QQ0MSdS1iyka6Pmnq/KePLxf2hUxafI69R7A7mHC11HGFUeB8Pygbuh
 2bUEseY0kDUCiy81BDxKVTlAH6i/urd3ofcq8O325PBmkjsZL03oIo5xTjvgeafAVIBqoUTBZ
 a3y6/6A8aBWMTRG9ayx+QMmxDdTaioB+tI/zPFLBAKnTZKu0y0ukPZbzRauaHt5zLFGAaUKK/
 R8/sNlJsfeor5HLdTE7yZ9eKp6Wm2fAFJfBZrJyTs5nMVgO8aJfrdgNKkQpvrGMOga+VbfRZL
 yaRn6q4wF5H+wQmLzJvev5lMnKhILioG+jRyOZCzX7D1D9SHQS/9r/LjQFn3XoayqYw7uDXRk
 TLT9ODmbumXEcZgLF
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
X-Headers-End: 1jQgA9-004sLe-6D
Subject: [linux-uvc-devel] Alcor Micro Webcam 058f:a014 doesn't work
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

Much in the same way as Dominik Notz from the mail "Alcor Micro Webcam 058f:3821 doesn't work", I am trying to get an image out of the webcam of an old laptop, and while the webcam LED turns green, the webcam itself seems inoperant (black video feed in cheese, green video feed in mplayer tv://).

I think the webcam is simply not supported by the UVC driver or that it has quirks; but I am writing here in case someone has hints, suggestions, and yo document the case.

Cheers,
Theo
_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
