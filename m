Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 840B124E7C
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 21 May 2019 14:01:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hT3SW-0000P8-BU; Tue, 21 May 2019 12:01:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bwakkie@gmail.com>) id 1hT3SU-0000Or-Pa
 for linux-uvc-devel@lists.sourceforge.net; Tue, 21 May 2019 12:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rEB/JvJdE/I0E0RgfnWfwewAnukjhwCVy6RnLbODto4=; b=hGrKsQPVAJvr8BnscjZ3pRgUEz
 rLjxuDAGzlqEs6ujzDNKSFSRUwBJl1P2M++UOoo6jOTkEyYzl1tEp8aHp6qpwe1yjMbhqE0E1cSAu
 sxiHbtxbs4bmyIAYqx+Nt0B1n5h7yDcKs991OTK8hWSt+iEAwQiiNTbvcRatxDeHRCTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rEB/JvJdE/I0E0RgfnWfwewAnukjhwCVy6RnLbODto4=; b=Y
 hGqyStDt4pdRrJOiVd0m7BbloSVBpHmUMddoII86UHT/RiSTq+UunMhG9dQDOE44HpjnrH2WGPNWM
 29AtSO9jQO9T5CWRDBpAhQzCA6itTSVVHCesysNSV1mhcJAzDm8w2E9jALHR7EcpeOaBYkruINH97
 MXyXyc+0zGqfS/e8=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hT3ST-00EKfR-4z
 for linux-uvc-devel@lists.sourceforge.net; Tue, 21 May 2019 12:01:30 +0000
Received: by mail-ot1-f45.google.com with SMTP id i8so16019449oth.10
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 21 May 2019 05:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rEB/JvJdE/I0E0RgfnWfwewAnukjhwCVy6RnLbODto4=;
 b=tyeWBMD3HDPmWj2ixKtxURu5mwywdJk8j7GkG6CRESO20dYYIEXYS1Zh+PQ02waTsD
 brUfCNpKDG/egPq24lA+eBUiItNif3a7fNQ222KiI6B/v8LZvkN22d2cZKCj+N99B4xM
 gXM6PpY7ezrlONiuXvB3leDBn0CDlZLQZvAh2x5XFGADZzZJQJd9FmSCqW89koVabamK
 S8YVgbWgNMiTw9RUjTAbQfk0XUVrPIXT/FwTVW22+SngMa7UZ9k3I2oR82nVqnhbXSmP
 /sUjOMYJsfuTixWxbrtOAMbOZe0lbgaVLf5mzc1Yjql5oTMJaexmklemypGNXR764oyj
 zG2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rEB/JvJdE/I0E0RgfnWfwewAnukjhwCVy6RnLbODto4=;
 b=rH0hv+ma1ziSQBt9s40LucFlyo1e0zvfJlH8oRq7Glvf7BeMivY4QqgaqILku5K7Lz
 N2H7UUQHtf1kv5ZwbGfy61/ZqcX6iG2CA+umLbV9OtSY2I4yDFPt3yG2yR30V4XoLGri
 27oTTovzybX789l7Nb/GUGVrWFpvXSRm3KC0io6Hacb9wyXvvFzsnV7tZasptsxkxjWz
 cl+pisLypH2r6I3wvODPeqBaTbmBzoPl2OEJYIKaXsvgf6v0iQs7LKJHMbO23NO1qIRj
 u1EFq3CdfZa12AA4HGOovsPjFVMaH59zGZ5T0gy2vXH+kjf9OCGHwzWbKwZK7UQfTV9a
 Zqug==
X-Gm-Message-State: APjAAAVYHXX89cI6owErCZ0vEuSIHINB81AKZcKc5XDBMBUDrWpVuZWf
 Qmg99onwkhf6UFZvEAtmyxAjiH12mYUaUNtht1M2k5C1
X-Google-Smtp-Source: APXvYqzAl8O7N85oeX36FTU+m9uDsylq/7Dx9UtGLQ77Xe+uOpSs4y4BWQl+QXFUA8Rr9XP3DonI+sXQeCCXJNhadRU=
X-Received: by 2002:a05:6830:1218:: with SMTP id
 r24mr242164otp.278.1558440082135; 
 Tue, 21 May 2019 05:01:22 -0700 (PDT)
MIME-Version: 1.0
From: bw <bwakkie@gmail.com>
Date: Tue, 21 May 2019 14:01:11 +0200
Message-ID: <CAKqYf_JCpPdUHg6wx9gy0w4TbewpX1JY-GJDefjKbbPTK3hmFQ@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bresser.de]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bwakkie[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.45 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hT3ST-00EKfR-4z
Subject: [linux-uvc-devel] BRESSER MikrOkular Full HD eyepiece camera
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
Content-Type: multipart/mixed; boundary="===============6664805342407579736=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============6664805342407579736==
Content-Type: multipart/alternative; boundary="0000000000007fdcbc0589649b48"

--0000000000007fdcbc0589649b48
Content-Type: text/plain; charset="UTF-8"

Hello,

I have the following device:
https://www.bresser.de/en/Astronomy/BRESSER-MikrOkular-Full-HD-eyepiece-camera.html

lsusb gives: 053a:9230 PrehKeyTec GmbH

It did work a while ago, then stopped working for a while after and only
after adding "options usbcore use_both_schemes=y" to
/etc/modprobe.d/options I can use it again.

My problem is the resolution has always been low: I can only choose 640x480
while the MikroOkular should be able to use 1920x1080.

How can I fix this?

Attached a specs file.

kind regards,
Bastiaan

--0000000000007fdcbc0589649b48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I have the following device:<br><a href=3D"h=
ttps://www.bresser.de/en/Astronomy/BRESSER-MikrOkular-Full-HD-eyepiece-came=
ra.html">https://www.bresser.de/en/Astronomy/BRESSER-MikrOkular-Full-HD-eye=
piece-camera.html</a><br><br>lsusb gives: 053a:9230 PrehKeyTec GmbH<br><br>=
It did work a while ago, then stopped working for a while after and only af=
ter adding &quot;options usbcore use_both_schemes=3Dy&quot; to=C2=A0 /etc/m=
odprobe.d/options I can use it again.<br><br>My problem is the resolution h=
as always been low: I can only choose 640x480 while the MikroOkular should =
be able to use 1920x1080.<br><br>How can I fix this?<br><br>Attached a spec=
s file.<br><br>kind regards,<br>Bastiaan</div>

--0000000000007fdcbc0589649b48--


--===============6664805342407579736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6664805342407579736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6664805342407579736==--

