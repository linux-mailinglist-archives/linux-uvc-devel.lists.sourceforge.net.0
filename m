Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E426228888
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 21 Jul 2020 20:49:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jxxJn-0004sH-8e; Tue, 21 Jul 2020 18:48:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davea42@linuxmail.org>) id 1jxxJl-0004s5-9k
 for linux-uvc-devel@lists.sourceforge.net; Tue, 21 Jul 2020 18:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AqG+DUUsJEPaN2E+sZ0Y1tUhyGPX3LhzEuRFo4g8wh8=; b=RnYP6jeblKnHp1TzczOGjtEtm6
 2rwtQg1jkBglFVi43lAxacZ7Am6Ksr3I51V0kkYWNUDyJhoojNcGjmuIyeLoxzx+i+xr2LVUEM2vd
 ehNQSbhBb9OwEQzXHr2k3uPfzwwgHYyxIMO/xdy8st4IcCx2Aa3tOLTTREzg0nV44q5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AqG+DUUsJEPaN2E+sZ0Y1tUhyGPX3LhzEuRFo4g8wh8=; b=U
 WQYPCPfyOFdWfolDu6DhbCw5sUAW35C1URAPiTlqv2FC84kWkHWk7wr/MKiR+3mCLGfZRdzgx/n7I
 Z+y/BkmYbMcbOhn2OOJfwaYq+vlgAoOI3f/H1bl0UMHt1Q+UkMlqDr+Lgf7HeQDuHKmHx1Bkm7Oxq
 sfeT8xgmpD4Lgb7I=;
Received: from mout.gmx.com ([74.208.4.200])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxxJj-00CSfO-Fi
 for linux-uvc-devel@lists.sourceforge.net; Tue, 21 Jul 2020 18:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1595357309;
 bh=AqG+DUUsJEPaN2E+sZ0Y1tUhyGPX3LhzEuRFo4g8wh8=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=VYo9xCCYSumFcTdrAegMIokL+AZ2WRO3SRbfKTfu3u0ow1fQc9mH1Ym57w2vjEINt
 OKvrzhejHXyR0G1Q6y6CELge1TYzKdOjRULQcKQEYQNJpWQoBD1TajPCUpPV2/XCvL
 FWInrzmMhN6BIOyIAE9tGK5ZXKGp9jGrozf2bEqA=
X-UI-Sender-Class: 214d933f-fd2f-45c7-a636-f5d79ae31a79
Received: from [192.168.88.9] ([73.170.78.103]) by mail.gmx.com (mrgmxus004
 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MRW3y-1kQaq31DTs-00SeAV for
 <linux-uvc-devel@lists.sourceforge.net>; Tue, 21 Jul 2020 20:35:31 +0200
To: linux-uvc-devel@lists.sourceforge.net
From: David Anderson <davea42@linuxmail.org>
Message-ID: <15e92372-0b25-3110-c9ba-7ca504ca16b9@linuxmail.org>
Date: Tue, 21 Jul 2020 11:35:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:E0bgt399dWdnX4Tix4DXRz6uFNHx3irdbmJI+bMGozx0xkXt8Re
 6pcDnwceSVJP9VbDX49NQoJT+ozF7mMbUhlujQBa+Hrk8lDGwiWPOwq9w1LbFtjzrawxq6K
 fJ/TjKDcIThTeiBl73Mrssgb08mRrHTILFEdh3DpzgXTktgazJOqieFgkqIKD9vnAYHyfGb
 MnjvwmOe5c/96z4PwNKDA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:63KSIaeM8fA=:NkOzBQYqQdE0NK6h+Lhq+Z
 85sb/0j66tPw1v6puSySfpXNPU77tPC6ByDnTRFevUKbjEyHu24s2l+RpLzra/aBCxFkKlZsH
 h03bKncQcdBLE1Kpsa8nSzWh3tvOLMPOJHMp7bfjxYjqTP7F6qpExSu2NSymGJvluzq4Q1KIf
 AiJQOARksuRheRLOuMps6vny7gnb2xtTwFzqYoMPrP8FBE+jFQedPvrs/X8mUL+n66A4XK4ch
 KuUjoU5DVLiOJNz2PXWols5YVI7gySKwRu4GQsGldIDPguFq68ykpT6DSZLw1I4+yaDCMG8n5
 k+SNdSSypqc/Q5913QRu/GFzOVCmZBOeYWK8KHbB4ghl5glAWJVgvfkrZ8NTHfit6L7rWSMXJ
 BqL5MVt1KI/uXUkRl4L84s6E4L5ROBmK8IXtJaBjB0kTPZdoOmsT+dG0lIBswzbRiDO15D12T
 QmGVd7dxh5aakGuLHzbmOAqG6C3F5LC186qhJ2lbJ9S3xvrXl/0sCRyq7Drs3T9ggiCixpzwd
 /IPpAvyehGHEnQfyItfWxi9OzPTQtuFM1xqhbJzKBU8Otby9zVpNrZgWzzcUIJ41zvUq3jPx4
 8vsaydZaOlPBADVgFomNQNGjvfn/uC6LsX2Lc5+NW6sYYIMNqjChlrhNfwgiAJ8KAsvAuK6Dn
 EhBX+aU2LSsB+duwPa8tBHZxGe/zJDIlKAc4cVxwI8fJH7aIsYzldrIKQPGs+CdItZrmi3iGq
 csuRN/KrUR8KjD6AoA9CRc00P/SPFrb80gMpU0A3hUweyct1SfuCC0ggGzqBB7Zvu4c/4MY3w
 3988NH3hvXNpiLwRMujW+z3zU+T/6A+8RxjUhG5rgJNirsWPHqpNme8oekImWM47HyDPKJ11i
 S2mBaOihaTIZp/OBrHqEeC7ZgWMv7XdGPJDNI4y5QApeayIu/rTddlHV8mkbZM8IXIhq0+E/F
 4qmoyWQ7uWksIDUGG01dJtraiG7KYimH0TW9rl902ipIqkKGruRTfiTzCk0NHdqkjMSQBhc3/
 zLlO9UNyQQGD4H8km/VZAUyEwRJgMm98cxvu2+apUXaATPPOS3OSIQvxRZtIGGFwMhFg771uz
 NHjMRjs5VrD374qKppz8IIuksuXxRL+Pb9g50bVhlBHTQJPor6xBlwiuzYEQp+lgMl3VpQ6Xt
 Nb+iz8b546KOJYjLr0fRubgyhcGDGkTwwGhmTVGu4Tzhph+ZcdlvoV5LEKMK2resbSCK1lOdF
 1Suf1btbfpsEQETpViDlOhWNNggECTNoSLRoFpg==
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (davea42[at]linuxmail.org)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.208.4.200 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (davea42[at]linuxmail.org)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jxxJj-00CSfO-Fi
Subject: [linux-uvc-devel] Lihappe8 Webcam errors but works
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net


Lihappe8 Webcan L69SN 1080P
Sonix Technology Co
0c46:636b

Using
Ubuntu 18.04.4 LTS

In spite of the following errors, it seems to work.

[221040.883494] usb 3-6.2: new high-speed USB device number 7 using xhci_hcd
[221041.042148] usb 3-6.2: New USB device found, idVendor=0c46, idProduct=636b
[221041.042153] usb 3-6.2: New USB device strings: Mfr=2, Product=1, SerialNumber=3
[221041.042157] usb 3-6.2: Product: Lihappe8 Webcam L69SN 1080P
[221041.042160] usb 3-6.2: Manufacturer: Sonix Technology Co., Ltd.
[221041.042162] usb 3-6.2: SerialNumber: SN0001
[221041.068518] media: Linux media interface: v0.10
[221041.077848] usb 3-6.2: 3:1: cannot get freq at ep 0x84
[221041.081396] usbcore: registered new interface driver snd-usb-audio
[221041.085432] Linux video capture interface: v2.00
[221041.098748] uvcvideo: Found UVC 1.00 device Lihappe8 Webcam L69SN 1080P (0c46:636b)
[221041.109492] uvcvideo 3-6.2:1.0: Entity type for entity Extension 3 was not initialized!
[221041.109493] uvcvideo 3-6.2:1.0: Entity type for entity Processing 2 was not initialized!
[221041.109494] uvcvideo 3-6.2:1.0: Entity type for entity Camera 1 was not initialized!
[221041.109644] input: Lihappe8 Webcam L69SN 1080P: Li as /devices/pci0000:00/0000:00:14.0/usb3/3-6/3-6.2/3-6.2:1.0/input/input16
[221041.109751] usbcore: registered new interface driver uvcvideo
[221041.109752] USB Video Class driver (1.1.1)
[221041.131691] usb 3-6.2: 3:1: cannot get freq at ep 0x84
[221041.147718] usb 3-6.2: 3:1: cannot get freq at ep 0x84

Tried on Ubuntu 20.04 machine with different error text, but again it seemed to wor
in spite of the errors.



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
