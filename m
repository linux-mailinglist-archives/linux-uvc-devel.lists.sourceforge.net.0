Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D491D35CA
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 14 May 2020 18:01:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jZGIh-0008Mk-U2; Thu, 14 May 2020 16:01:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xavier.bestel@free.fr>) id 1jZGIh-0008Mb-1T
 for linux-uvc-devel@lists.sourceforge.net; Thu, 14 May 2020 16:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oJ+3Q8v6NhqVtKsJusqZHBzC402azZT94uU0MEFRzsM=; b=JD2+1k2Hzye8jMVIbzjrmcKi7L
 oYm9H18cSvjJRGv7gDMl146UUJM/wQvHuR+yGy3YvV+rB3VoOR/iIqXVl4Mulln56U2ifMMP5n0kz
 W7dxfZidja0iLXQcf7mHqvEncy1mmN1rfMNYTMQiENEsxkgbfYBQXEVeEhIjV/X2WsNI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oJ+3Q8v6NhqVtKsJusqZHBzC402azZT94uU0MEFRzsM=; b=Y
 6Z9+64k/BnBnl0pZQXjsXr2ZF6zMZb8QFCm6mJzYtGK8BJlHhABE4sNUnx3URMu7ffzzMdA02l++s
 an5JqPctPcM6EaTQKaNqoPMKQdFCTs0d2pqTvhj6OQCSnzVU3ARYMpP7iGvrJerWA0yza/gLpqXnX
 43pvayaSo7RMDfMA=;
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZGId-0076E6-BS
 for linux-uvc-devel@lists.sourceforge.net; Thu, 14 May 2020 16:01:34 +0000
Received: from awak.mobi (unknown [78.207.29.31])
 by smtp5-g21.free.fr (Postfix) with ESMTP id E83325FFD6
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 14 May 2020 18:01:17 +0200 (CEST)
Received: from xav13.bestouff.prv (xav13.bestouff.prv [10.2.228.109])
 by awak.mobi (Postfix) with ESMTPSA id AE82F3600DF
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 14 May 2020 18:01:17 +0200 (CEST)
Message-ID: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
From: Xavier Bestel <xavier.bestel@free.fr>
To: linux-uvc-devel@lists.sourceforge.net
Date: Thu, 14 May 2020 18:01:17 +0200
User-Agent: Evolution 3.36.2-1 
MIME-Version: 1.0
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xavier.bestel[at]free.fr)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.27.42.5 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 SPOOFED_FREEMAIL       No description available.
X-Headers-End: 1jZGId-0076E6-BS
Subject: [linux-uvc-devel] gspca_z3cxx: Failed to query (GET_CUR) UVC
 control 11 on unit 2
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

Hi,

I have a webcam identified by:
Bus 001 Device 005: ID 046d:0825 Logitech, Inc. Webcam C270

My kernel (Debian sid 5.6.0-1-amd64) loads the gspca_zc3xx driver:

[jeu. mai 14 01:46:40 2020] usb 5-3.3: new full-speed USB device number 13 using xhci_hcd
[jeu. mai 14 01:46:40 2020] usb 5-3.3: New USB device found, idVendor=046d, idProduct=08d7, bcdDevice= 1.00
[jeu. mai 14 01:46:40 2020] usb 5-3.3: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[jeu. mai 14 01:46:40 2020] gspca_main: gspca_zc3xx-2.14.0 probing 046d:08d7
[jeu. mai 14 01:46:41 2020] input: gspca_zc3xx as /devices/pci0000:00/0000:00:1c.0/0000:01:00.0/0000:02:01.0/0000:04:00.0/0000:05:01.0/0000:07:00.0/usb5/5-3/5-3.3/input/input52

but when I try to open it with "cheese" (the GNOME webcam app) it's not
selectable, and I see these errors:

[jeu. mai 14 01:46:51 2020] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: -110 (exp. 1).
[jeu. mai 14 01:46:51 2020] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: -32 (exp. 1).

Does anyone know what goes wrong, and what can I do to help/debug ?

Cheers,

	Xav



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
