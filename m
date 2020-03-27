Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64803196040
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 27 Mar 2020 22:12:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jHwGv-00044q-Ov; Fri, 27 Mar 2020 21:12:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnaud@sphaero.org>) id 1jHwGu-00044S-IK
 for linux-uvc-devel@lists.sourceforge.net; Fri, 27 Mar 2020 21:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ck2eCbosb1aiB2vzk6pmCKgNA5Sz7iP5jqbfWS8Y3BE=; b=KsmI2X8nxInlDjkKLqMQssVFSv
 qYc/10YXJzXhb2ppee6v171BkbqU57Zig57UAK8kwj0jfCD0oq+F96wRhBOfwLKrScGSYqd4ZQQMV
 OMPJ6XzJPz5MxsimtmZv0Tf+F+80shROn7l/a+NCPI06gCNmRAMhFZyhxUaKkJN6W/xs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ck2eCbosb1aiB2vzk6pmCKgNA5Sz7iP5jqbfWS8Y3BE=; b=C
 I/ESRF41X3wTwq3zfimcWhm9od+Z3XMNCLCThCt2fVNKZQvvcuN/Rv6gvp3hHu6JjuyYM+9U9/TyR
 4LemfAznQ8AJz0rB29k2V67m0XgqbTX57jtNq4oWwk95skfaFf0F5WejhqHbk6rwSozAuolJtaYw1
 bMF0JynwBpmsg7Zs=;
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jHwGo-003Mj2-Sd
 for linux-uvc-devel@lists.sourceforge.net; Fri, 27 Mar 2020 21:12:07 +0000
Received: from aloy.sphaero.org ([IPv6:2001:984:3b1f:0:a06e:76ff:fe2e:d0f4])
 by smtp-cloud8.xs4all.net with ESMTP
 id Hw0Gjxu5TBr2bHw0IjSpZ7; Fri, 27 Mar 2020 21:54:58 +0100
Received: from [192.168.18.104] (unknown [192.168.18.254])
 by aloy.sphaero.org (Postfix) with ESMTPSA id D9CDF8600AD
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 27 Mar 2020 20:54:56 +0000 (UTC)
To: linux-uvc-devel@lists.sourceforge.net
From: Arnaud Loonstra <arnaud@sphaero.org>
Message-ID: <3b558a44-7e34-335e-0db9-8fde14c00729@sphaero.org>
Date: Fri, 27 Mar 2020 21:54:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-CMAE-Envelope: MS4wfC5IvN8qvhGsqgEcry6oPok5cfNW10wxDqHSuFbX0hAKlLhkH2S3Jh9Jd3UZyK3nDAxT+wIO/MVUZKYpG4aFvkfEvrIogoIlvrNufEGm48mnzzz1w32O
 wNBM+N4qKhmH0vAT8hXZVjtZFccgTm8EJtCUZnUvwWixc5blrfaxwb6AQ2zAqwA3txWnlX9a5Sr8L3gBVK0nTvhSNNoCJRwfOlF0ofXaEO4rsTVBl8JK+19j
 VodQs6CYCWAWr82m5/BiJg==
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.21 listed in wl.mailspike.net]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jHwGo-003Mj2-Sd
Subject: [linux-uvc-devel] Chicony 04f2:b35a webcam found but not working
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

I'm not sure how to proceed so bare with me.

A internal camera on a BTO notebook isn't working (anymore?)

Bus 003 Device 005: ID 04f2:b35a Chicony Electronics Co., Ltd Chicony 
USB 2.0 Camera

The Bus ID is not listed on the uvcvideo page

I've tested this on a Ubunutu 16.04 and 20.04 (current daily) OS.

$ sudo lsusb -d 04f2:b35a -v | grep "14 Video"
       bFunctionClass         14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video
can't get debug descriptor: Resource temporarily unavailable
       bInterfaceClass        14 Video
       bInterfaceClass        14 Video

Kernel report:

[ 1657.799893] usb 3-8: USB disconnect, device number 3
[ 1666.303308] usb 3-8: new high-speed USB device number 5 using xhci_hcd
[ 1666.403593] usb 3-8: New USB device found, idVendor=04f2, 
idProduct=b35a, bcdDevice=91.62
[ 1666.403599] usb 3-8: New USB device strings: Mfr=1, Product=2, 
SerialNumber=0
[ 1666.403603] usb 3-8: Product: Chicony USB 2.0 Camera
[ 1666.403606] usb 3-8: Manufacturer: Chicony Electronics Co.,Ltd
[ 1666.408966] uvcvideo: Found UVC 1.00 device Chicony USB 2.0 Camera 
(04f2:b35a)
[ 1666.438181] uvcvideo 3-8:1.0: Entity type for entity Processing 2 was 
not initialized!
[ 1666.438188] uvcvideo 3-8:1.0: Entity type for entity Extension 6 was 
not initialized!
[ 1666.438191] uvcvideo 3-8:1.0: Entity type for entity Camera 1 was not 
initialized!
[ 1666.438397] input: Chicony USB 2.0 Camera: Chicony as 
/devices/pci0000:00/0000:00:14.0/usb3/3-8/3-8:1.0/input/input23

$ sudo uvcdynctrl -l
Listing available devices:
   video0   Chicony USB 2.0 Camera: Chicony
     Media controller device: /dev/media0
     Entity 1: Chicony USB 2.0 Camera: Chicony. Type: 65537, Revision: 
0, Flags: 1, Group-id: 0, Pads: 1, Links: 0
       Device node
       Entity: 1, Pad 0, Flags: 1
   video1   Chicony USB 2.0 Camera: Chicony
     Media controller device /dev/media1 doesn't exist
ERROR: Unable to list device entities: Invalid device or device cannot 
be opened. (Code: 5)

Running guvcview:
GUVCVIEW: version 2.0.6
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
ALSA lib pcm_dsnoop.c:641:(snd_pcm_dsnoop_open) unable to open slave
ALSA lib pcm_dmix.c:1089:(snd_pcm_dmix_open) unable to open slave
ALSA lib pcm.c:2642:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.rear
ALSA lib pcm.c:2642:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.center_lfe
ALSA lib pcm.c:2642:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.side
Cannot connect to server socket err = No such file or directory
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, 
skipping unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, 
skipping unlock
Cannot connect to server socket err = No such file or directory
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, 
skipping unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, 
skipping unlock
ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
ALSA lib pulse.c:242:(pulse_connect) PulseAudio: Unable to connect: 
Connection refused

ALSA lib pulse.c:242:(pulse_connect) PulseAudio: Unable to connect: 
Connection refused

ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type 
for card
ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type 
for card
ALSA lib pcm_dsnoop.c:641:(snd_pcm_dsnoop_open) unable to open slave
ALSA lib pcm_dmix.c:1089:(snd_pcm_dmix_open) unable to open slave
ALSA lib pcm_dmix.c:1089:(snd_pcm_dmix_open) unable to open slave
Cannot connect to server socket err = No such file or directory
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, 
skipping unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, 
skipping unlock
V4L2_CORE: Could not grab image (select timeout): No such file or directory
V4L2_CORE: Could not grab image (select timeout): No such file or directory
^CGUVCVIEW Caught signal 2
V4L2_CORE: Could not grab image (select timeout): No such file or directory


kernel uvcvideo traces:
[ 5491.078923] uvcvideo: uvc_v4l2_open
[ 5491.193998] uvcvideo: Resuming interface 0
[ 5491.194001] uvcvideo: Resuming interface 1
[ 5491.194671] uvcvideo: uvc_v4l2_release
[ 5491.195856] uvcvideo: uvc_v4l2_open
[ 5491.233116] uvcvideo: Trying format 0x47504a4d (MJPG): 640x480.
[ 5491.233118] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[ 5491.238874] uvcvideo: Trying format 0x47504a4d (MJPG): 640x480.
[ 5491.238876] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[ 5491.245579] uvcvideo: uvc_v4l2_mmap
[ 5491.245612] uvcvideo: uvc_v4l2_mmap
[ 5491.245639] uvcvideo: uvc_v4l2_mmap
[ 5491.245667] uvcvideo: uvc_v4l2_mmap
[ 5491.245709] uvcvideo: Setting frame interval to 1/25 (400000).
[ 5491.420832] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 5491.420834] uvcvideo: Selecting alternate setting 1 (3072 B/frame 
bandwidth).
[ 5491.421640] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 5491.421697] uvcvideo: uvc_v4l2_poll
[ 5492.422760] uvcvideo: uvc_v4l2_poll
[ 5492.423706] uvcvideo: Setting frame interval to 1/30 (333333).
[ 5492.428972] uvcvideo: uvc_v4l2_mmap
[ 5492.429024] uvcvideo: uvc_v4l2_mmap
[ 5492.429062] uvcvideo: uvc_v4l2_mmap
[ 5492.429094] uvcvideo: uvc_v4l2_mmap
[ 5492.429917] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 5492.429921] uvcvideo: Selecting alternate setting 1 (3072 B/frame 
bandwidth).
[ 5492.431115] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 5492.431168] uvcvideo: uvc_v4l2_poll
[ 5493.432252] uvcvideo: uvc_v4l2_poll
[ 5493.432320] uvcvideo: uvc_v4l2_poll
[ 5494.433406] uvcvideo: uvc_v4l2_poll
[ 5494.433467] uvcvideo: uvc_v4l2_poll
[ 5495.434563] uvcvideo: uvc_v4l2_poll
[ 5495.445815] uvcvideo: uvc_v4l2_release
[ 5497.821841] uvcvideo: Suspending interface 1
[ 5497.821844] uvcvideo: Suspending interface 0


Any pointers in what to do to get this fixed?

Rg,

Arnaud Loonstra


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
