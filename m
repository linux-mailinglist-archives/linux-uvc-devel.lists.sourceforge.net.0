Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDFF1E6864
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 28 May 2020 19:10:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jeM2t-0001s7-FS; Thu, 28 May 2020 17:10:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lasshee@gmail.com>) id 1jeM2r-0001rn-G7
 for linux-uvc-devel@lists.sourceforge.net; Thu, 28 May 2020 17:10:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8nnaj4bTLhd8wiCQ7E/PZWj1KoL9qQ2i3djJXG0IVeg=; b=TJ9aMOqoJab0SUknK/eLRK3VZa
 7Ovu1j5do1sjpoZ+LEjKwwBpXMJYcKzuClusY0G7BBqoy0KAku3yMqdDEsPB7d6waA+UVMOomfI7M
 WGueyvsjTafRINlcP/UY7TVROvTPL/2VqqXzhDrJgbLL5hDPSJwCyei5jAZFvbEifkFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8nnaj4bTLhd8wiCQ7E/PZWj1KoL9qQ2i3djJXG0IVeg=; b=R
 Cxw9VyeUyQU3UE45NanR7Qi2+v1ofq3uwrDO0seijofSHXV6ax9jjsRcWdLdLXGsY3w9vSBMaddW7
 vmX/2ey5vTsGXjoWpqxWcvKXvHzm6Z3q6wp8W37gd7ENfZldqmVYQRiy8pvKBRvKBDfwQ5srB1ylJ
 uTqgZaQeU9jPSn4k=;
Received: from mail-il1-f177.google.com ([209.85.166.177])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jeM2q-001k9T-3k
 for linux-uvc-devel@lists.sourceforge.net; Thu, 28 May 2020 17:10:17 +0000
Received: by mail-il1-f177.google.com with SMTP id l20so898564ilj.10
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 28 May 2020 10:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8nnaj4bTLhd8wiCQ7E/PZWj1KoL9qQ2i3djJXG0IVeg=;
 b=O7OuvgZV96wuwCzJduMZLxHLpQ9RyOzOArpXzuJY86oiil9xFIlvfK9VtvP8nmtgbS
 SS5n2XHxAmpsoo1PrQXt6vsEMZBniykfHn26Iqtkiwpu97M6Ha8o4oot6JwaOwpwa8HL
 xHpHQxTBk2wGIFGhATNBMxOKq3hziAaPLTVSU0F8b7mD/44cL+kA2+gUf4xbplBpDyHg
 o85MG6E2zMr8+4gbC+buiLTaQQ8gHTlrt8ji+Ow2FAeNiGVX+zgYmSPcylx4EUcOYRrA
 GH0WLucQ2HUSPR3J9yl5p4DapERV7GxURiuSliq8jZLKqZ4bz4QZkd4bH6AD5vu++irB
 BDwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8nnaj4bTLhd8wiCQ7E/PZWj1KoL9qQ2i3djJXG0IVeg=;
 b=kO2Cn7NzWzCTkrMg4mi+fzbN6qTk/7gRMCBT1OborCIdDo6M8RoDD+P2sF+rlw4CAW
 YVw28HWUbeG0Xfn+tEE06hnO58b0GUw0FpiPBf7CGyBby891MwSXRXj7b7WlzGPUJSLN
 ZriLhQMVDnDIPON29jeKJOiCGkLCD+/gGMXQtQ1pikDblp9Q/6hbToR0dc01VJZpP2pL
 t9lQ2WaiJW23nTf3rotCkXlfUNYPxtkXdKM1CZBMSHd6cJxpLBfGpEJ44yU3kTz1GDYJ
 W3TOL8A4d9Wwvu+fSYkjEYF3jsv/LgYBwiOMxEN6Kamng+JVkoW5pQTOdP5Y9qZYJgSR
 jR1g==
X-Gm-Message-State: AOAM5329E494eMsGHUSQF76lSUyjbB7ZFe+fCS0U4If9WD1vDQkblgY0
 QE4ErDM+ydlMam/40Es1yZa6zwF4zAW0umBrxyU6kZi57PE=
X-Google-Smtp-Source: ABdhPJzHr0WNtD84gPFmeSoJkdx40wh6zn4QHQ2MmpEiExqRYgi3yALEikkx0FHpI1Jo8cNpszrioub3qhbXWobHOYw=
X-Received: by 2002:a05:6e02:1287:: with SMTP id
 y7mr3400977ilq.63.1590685810208; 
 Thu, 28 May 2020 10:10:10 -0700 (PDT)
MIME-Version: 1.0
From: Lasse Heemann <lasshee@gmail.com>
Date: Thu, 28 May 2020 19:09:59 +0200
Message-ID: <CAOxHhkFL7ciShKTg4sE_qH2BNvc0wWZnHYr-GxoOtKFxPu8wDw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.177 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lasshee[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.177 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jeM2q-001k9T-3k
Subject: [linux-uvc-devel] Creative Labs camera shows up in dmesg with wrong
 vendorID
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
Content-Type: multipart/mixed; boundary="===============6980141658979895578=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============6980141658979895578==
Content-Type: multipart/alternative; boundary="000000000000aab5c205a6b86677"

--000000000000aab5c205a6b86677
Content-Type: text/plain; charset="UTF-8"

Hi!

I have a "Creative Live! Cam Socialize" (not HD) webcam that announces
itself in dmesg as follows:
Found UVC 1.00 device Vimicro USB 2.0 PC Camera (Venus) (0ac8:3420)

The website http://www.ideasonboard.org/uvc/#footnote-16 says creative labs
cameras are supported by uvc. I thought it might be possible to simply
change the driver to treat the camera the same way it treats other creative
labs cameras. However I cannot find vendor ID 041e in uvc_driver.c.

What am I missing here, shouldn't uvc_driver.c contain all VID's that are
compatible?

Thanks for any help
Lasse

--000000000000aab5c205a6b86677
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!<br><br></div>I have a &quot;Creative Live! Cam So=
cialize&quot; (not HD) webcam that announces itself in dmesg as follows:<br=
><div>Found UVC 1.00 device Vimicro USB 2.0 PC Camera (Venus) (0ac8:3420)</=
div><div><br></div><div>The website <a href=3D"http://www.ideasonboard.org/=
uvc/#footnote-16">http://www.ideasonboard.org/uvc/#footnote-16</a> says cre=
ative labs cameras are supported by uvc. I thought it might be possible to =
simply change the driver to treat the camera the same way it treats other c=
reative labs cameras. However I cannot find vendor ID 041e in uvc_driver.c.=
=C2=A0</div><div><br></div><div>What am I missing here, shouldn&#39;t uvc_d=
river.c contain all VID&#39;s that are compatible?</div><div><br></div><div=
>Thanks for any help<br></div><div>Lasse<br></div></div>

--000000000000aab5c205a6b86677--


--===============6980141658979895578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6980141658979895578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6980141658979895578==--

