Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE1D271657
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 20 Sep 2020 19:31:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kK3BF-0005Z5-Dk; Sun, 20 Sep 2020 17:31:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kevin@kevinlocke.name>) id 1kK3BE-0005Yu-Ah
 for linux-uvc-devel@lists.sourceforge.net; Sun, 20 Sep 2020 17:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j3AMq3OIrttjt1RYiVuuJnDiG8dJh7YpXamhcAas+sQ=; b=Q9UnloBn4KrdFz+SG2yH7NtauB
 EW8zeU9srDs+i9eJTOUHiypM0msa/kclpq0VCzjY0W/dLSMA0o1OzO8wx2rCmRmf0PFolqE6zb5UE
 cUjeDIUmpl6YG6+yXAt7iqSb2Y6CmrZM8ThIM7qcZywVbZZ9MaNDrAUYi9l2cIYdcrnA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j3AMq3OIrttjt1RYiVuuJnDiG8dJh7YpXamhcAas+sQ=; b=b
 llDzud7zWfTCDSfyTEJ2UuRUDOi+Sx7+KJ9ohQY1FwjIRc2ye0Kqd9WMGBYTZKzFBm45J1km4JnKk
 IAPpDnRSeBeLtXvNFPz8v6PM/s9dM2Ho9MpFDS7g/OXZTEn1VGYqiM6Ze2wLDZ2yG6XoRVNe2iwJl
 nMy5KeU6OvGGYjA8=;
Received: from vulcan.kevinlocke.name ([107.191.43.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kK3B8-000jEt-Tp
 for linux-uvc-devel@lists.sourceforge.net; Sun, 20 Sep 2020 17:31:16 +0000
Received: from kevinlocke.name (host-69-145-60-23.bln-mt.client.bresnan.net
 [69.145.60.23]) (Authenticated sender: kevin@kevinlocke.name)
 by vulcan.kevinlocke.name (Postfix) with ESMTPSA id B9BA21C62DF4
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun, 20 Sep 2020 17:06:27 +0000 (UTC)
Received: by kevinlocke.name (Postfix, from userid 1000)
 id 8505B1300735; Sun, 20 Sep 2020 11:06:25 -0600 (MDT)
Date: Sun, 20 Sep 2020 11:06:25 -0600
From: Kevin Locke <kevin@kevinlocke.name>
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <20200920170625.GA4840@kevinlocke.name>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kK3B8-000jEt-Tp
Subject: [linux-uvc-devel] 04f2:b2db is supported,
 with non-functional second video device
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

Hi all,

The ThinkPad T430 includes a "Chicony Electronics Co., Ltd." "Integrated
Camera" (04f2:b2db).  The camera works well with uvcvideo, but does not
currently appear on the Supported Devices list.[1]  There are two,
possibly related, oddities worth mentioning:

First, there are a few warnings printed when uvcvideo is loaded:

uvcvideo: Found UVC 1.00 device Integrated Camera (04f2:b2db)
uvcvideo 3-1.6:1.0: Entity type for entity Extension 4 was not initialized!
uvcvideo 3-1.6:1.0: Entity type for entity Extension 3 was not initialized!
uvcvideo 3-1.6:1.0: Entity type for entity Processing 2 was not initialized!
uvcvideo 3-1.6:1.0: Entity type for entity Camera 1 was not initialized!

Second, uvcvideo creates two video devices (video0 and video1):

$ readlink /sys/class/video4linux/video*
../../devices/pci0000:00/0000:00:1a.0/usb3/3-1/3-1.6/3-1.6:1.0/video4linux/video0
../../devices/pci0000:00/0000:00:1a.0/usb3/3-1/3-1.6/3-1.6:1.0/video4linux/video1

`mpv /dev/video0` works well.  `mpv /dev/video1` fails with:

[ffmpeg/demuxer] video4linux2,v4l2: ioctl(VIDIOC_G_INPUT): Inappropriate ioctl for device

`v4l-info /dev/video1` shows:

### v4l2 device info [/dev/video1] ###
general info
    VIDIOC_QUERYCAP
	driver                  : "uvcvideo"
	card                    : "Integrated Camera: Integrated C"
	bus_info                : "usb-0000:00:1a.0-1.6"
	version                 : 5.8.7
	capabilities            : 0x84a00001 [VIDEO_CAPTURE,?,?,STREAMING,(null)]

standards

inputs

video capture
VIDIOC_G_FMT(VIDEO_CAPTURE): Invalid argument

controls

I don't understand the purpose of the second device (if any).  With
tracing enabled, there are references to "entity 1" and "entity 2" in
the kernel log.  Perhaps this is expected behavior?  If not, I would be
happy to help debug further.

Thanks for all of your efforts maintaining uvcvideo!

Best,
Kevin

[1]: https://www.ideasonboard.org/uvc/


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
