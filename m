Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A9724579C
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 16 Aug 2020 14:36:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1k7Hti-0001kb-EW; Sun, 16 Aug 2020 12:36:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1k7Htg-0001kB-Nt
 for linux-uvc-devel@lists.sourceforge.net; Sun, 16 Aug 2020 12:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OvVuuzwSsIU6mfm9zYLZFmGbaPjZEP3aqt4eTB3bmAg=; b=emc+CavOK8onsFYsV1Unv5eB7q
 ptv5OxZ4s6AuZKjZ5bGj0vhhEIhqhr43Tg7ny0IXoLp53yiYdCka1tgWTlvVn5nXmKLE1BF9THxgx
 TfDs7tfCLJUhcrVRXwSCco/bgn5B182+sLpexJVKIGLZoQff6nbFO5x6zBYEIEgpojXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OvVuuzwSsIU6mfm9zYLZFmGbaPjZEP3aqt4eTB3bmAg=; b=H5mzPirYT1CjLhteLOXemU0zBC
 aokIcv0Oj+21DPvq8cqe0DHwBjsMJrtR0aeb9zg9ozURKgMf4ggpbsb/bHn2I2cYXI3ODa5JnI9il
 ZSuqBNyT3a/X7Pg0UG7Ptc0ziJ0QTyjTBjtu371+BfcAgSZw5kvCtIqYp+nYHfW4aRek=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k7Htb-009CFM-Mk
 for linux-uvc-devel@lists.sourceforge.net; Sun, 16 Aug 2020 12:36:24 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7A3A229F;
 Sun, 16 Aug 2020 14:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1597580311;
 bh=MuES0GAg6jVJbbv5zM7qHHkXA4xwbq1xmfJHtpWTwNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bc4OsO7vUokbXdzoXVowO5aoYamxc7UUCNFadNJvbCLblPTnM5DJmVN1+mE/vOxjG
 574M89+f9m0HQ6xmy6PLkpF9q3fscH3232gJ+o7sL5gD4XypZ1mrzl+Wg2Q8J9+sV+
 J7efesawnxyoJ9osUSjfWERjoLspkH5XUejiamdo=
Date: Sun, 16 Aug 2020 15:18:16 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20200816121816.GC32174@pendragon.ideasonboard.com>
References: <b0a7247c-bed3-934b-2c73-7f4b0adb5e75@roeck-us.net>
 <20200815020739.GB52242@rowland.harvard.edu>
 <20200816003315.GA13826@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200816003315.GA13826@roeck-us.net>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7Htb-009CFM-Mk
Subject: Re: [linux-uvc-devel] Protecting uvcvideo againt USB device
 disconnect [Was: Re: Protecting usb_set_interface() against device removal]
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
Cc: linux-uvc-devel@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Sakari Ailus <sakari.ailus@iki.fi>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi Guenter,

CC'ing Hans Verkuil and Sakari Ailus for the discussion about handling
file operations and disconnect in V4L2.

On Sat, Aug 15, 2020 at 05:33:15PM -0700, Guenter Roeck wrote:
> + linux-uvc-devel@lists.sourceforge.net
> + linux-media@vger.kernel.org
> + laurent.pinchart@ideasonboard.com
> 
> and changed subject
> 
> On Fri, Aug 14, 2020 at 10:07:39PM -0400, Alan Stern wrote:
> > On Fri, Aug 14, 2020 at 04:07:03PM -0700, Guenter Roeck wrote:
> > > Hi all,
> > > 
> > > over time, there have been a number of reports of crashes in usb_ifnum_to_if(),
> > > called from usb_hcd_alloc_bandwidth, which is in turn called from usb_set_interface().
> > > Examples are [1] [2] [3]. A typical backtrace is:
> > > 
> > > <3>[ 3489.445468] intel_sst_acpi 808622A8:00: sst: Busy wait failed, cant send this msg
> > > <6>[ 3490.507273] usb 1-4: USB disconnect, device number 3
> > > <1>[ 3490.516670] BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
> > > <6>[ 3490.516680] PGD 0 P4D 0
> > > <4>[ 3490.516687] Oops: 0000 [#1] PREEMPT SMP PTI
> > > <4>[ 3490.516693] CPU: 0 PID: 5633 Comm: V4L2CaptureThre Not tainted 4.19.113-08536-g5d29ca36db06 #1
> > > <4>[ 3490.516696] Hardware name: GOOGLE Edgar, BIOS Google_Edgar.7287.167.156 03/25/2019
> > > <4>[ 3490.516706] RIP: 0010:usb_ifnum_to_if+0x29/0x40
> > > <4>[ 3490.516710] Code: ee 0f 1f 44 00 00 55 48 89 e5 48 8b 8f f8 03 00 00 48 85 c9 74 27 44 0f b6 41 04 4d 85 c0 74 1d 31 ff 48 8b 84 f9 98 00 00 00 <48> 8b 10 0f b6 52 02 39 f2 74 0a 48 ff c7 4c 39 c7 72 e5 31 c0 5d
> > > <4>[ 3490.516714] RSP: 0018:ffffa46f42a47a80 EFLAGS: 00010246
> > > <4>[ 3490.516718] RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff904a396c9000
> > > <4>[ 3490.516721] RDX: ffff904a39641320 RSI: 0000000000000001 RDI: 0000000000000000
> > > <4>[ 3490.516724] RBP: ffffa46f42a47a80 R08: 0000000000000002 R09: 0000000000000000
> > > <4>[ 3490.516727] R10: 0000000000009975 R11: 0000000000000009 R12: 0000000000000000
> > > <4>[ 3490.516731] R13: ffff904a396b3800 R14: ffff904a39e88000 R15: 0000000000000000
> > > <4>[ 3490.516735] FS: 00007f396448e700(0000) GS:ffff904a3ba00000(0000) knlGS:0000000000000000
> > > <4>[ 3490.516738] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > <4>[ 3490.516742] CR2: 0000000000000000 CR3: 000000016cb46000 CR4: 00000000001006f0
> > > <4>[ 3490.516745] Call Trace:
> > > <4>[ 3490.516756] usb_hcd_alloc_bandwidth+0x1ee/0x30f
> > > <4>[ 3490.516762] usb_set_interface+0x1a3/0x2b7
> > > <4>[ 3490.516773] uvc_video_start_transfer+0x29b/0x4b8 [uvcvideo]
> > > <4>[ 3490.516781] uvc_video_start_streaming+0x91/0xdd [uvcvideo]
> > > <4>[ 3490.516787] uvc_start_streaming+0x28/0x5d [uvcvideo]
> > > <4>[ 3490.516795] vb2_start_streaming+0x61/0x143 [videobuf2_common]
> > > <4>[ 3490.516801] vb2_core_streamon+0xf7/0x10f [videobuf2_common]
> > > <4>[ 3490.516807] uvc_queue_streamon+0x2e/0x41 [uvcvideo]
> > > <4>[ 3490.516814] uvc_ioctl_streamon+0x42/0x5c [uvcvideo]
> > > <4>[ 3490.516820] __video_do_ioctl+0x33d/0x42a
> > > <4>[ 3490.516826] video_usercopy+0x34e/0x5ff
> > > <4>[ 3490.516831] ? video_ioctl2+0x16/0x16
> > > <4>[ 3490.516837] v4l2_ioctl+0x46/0x53
> > > <4>[ 3490.516843] do_vfs_ioctl+0x50a/0x76f
> > > <4>[ 3490.516848] ksys_ioctl+0x58/0x83
> > > <4>[ 3490.516853] __x64_sys_ioctl+0x1a/0x1e
> > > <4>[ 3490.516858] do_syscall_64+0x54/0xde
> > > 
> > > I have been able to reproduce the problem on a Chromebook by strategically placing
> > > msleep() calls into usb_set_interface() and usb_disable_device(). Ultimately, the
> > > problem boils down to lack of protection against device removal in usb_set_interface()
> > > [and/or possibly other callers of usb_ifnum_to_if()].
> > > 
> > > Sequence of events is roughly as follows:
> > > 
> > > - usb_set_interface() is called and proceeds to some point, possibly to
> > >   mutex_lock(hcd->bandwidth_mutex);
> > > - Device removal event is detected, and usb_disable_device() is called
> > 
> > At this point all interface drivers get unbound (their disconnect 
> > routines are called).
> > 
> > > - usb_disable_device() starts removing actconfig data. It has removed
> > >   and cleared dev->actconfig->interface[i], but not dev->actconfig
> > > - usb_set_interface() calls usb_hcd_alloc_bandwidth(), which calls
> > >   usb_ifnum_to_if()
> > > - In usb_ifnum_to_if(), dev->actconfig is not NULL, but
> > >   dev->actconfig->interface[i] is NULL
> > > - crash
> > > 
> > > Question is what we can do about this. Checking if dev->state != USB_STATE_NOTATTACHED
> > > in usb_ifnum_to_if() might be a possible approach, but strictly speaking it would
> > > still be racy since there is still no lock against device removal. I have not tried
> > > calling usb_lock_device() in usb_set_interface() - would that possibly be an option ?
> > 
> > As far as I know, protecting against these races is the responsibility 
> > of the USB interface drivers.  They must make sure that their disconnect 
> > routines block until all outstanding calls to usb_set_interface return 
> > (in fact, until all outstanding device accesses have finished).
> > 
> > For instance, in the log extract you showed, it's obvious that the 
> > uvc_start_streaming routine was running after the disconnect routine had 
> > returned, which looks like a bug in itself: Once the disconnect routine 
> > returns, the driver is not supposed to try to access the device at all 
> > because some other driver may now be bound to it.
> > 
> > We can't just call usb_lock_device from within usb_set_interface, 
> > because usb_set_interface is often called with that lock already held.
> > 
> I had a closer look into the uvcvideo driver and compared it to other usb
> drivers, including drivers in drivers/media/usb/ which connect to the video
> subsystem.
> 
> The usbvideo driver lacks protection against calls to uvc_disconnect() while

Are you confusing usbvideo and uvcvideo ? Both exist, and uvcvideo would
have been called usbvideo if the former hadn't already been in use.

> calls into file operations are ongoing. This is pretty widespread, and not
> even limited to file operations (for example, there is a worker which is only
> canceled in uvc_delete, not in ucv_disconnect). The existing protection only
> ensures that no file operations are started after the call to ucv_disconnect,
> but that is insufficient.
> 
> Other drivers do have that protection and make sure that no usb operations
> can happen after the disconnect call.
> 
> The only remedy I can see is to rework the usbvideo driver and add the
> necessary protections. At first glance, it looks like this may be a
> substantial amount of work. I'd sign up for that, but before I start,
> I would like to get input from the usbvideo community. Is such an effort
> already going on ? If yes, how can I help ? If not, is the problem
> understood and accepted ? Are there any ideas on how to solve it ?

This is something that has been discussed before, and needs to be solved
in the V4L2 framework itself, not in individual drivers. Not only would
this avoid rolling out the same code manually everywhere (in different
incorrect ways, as races are difficult to solve and implementations are
more often wrong than right), but it will also avoid similar issues for
non-USB devices.

It shouldn't take more than two flags (to track user-space operations in
progress and disconnection), a spinlock and a wait queue entry. I'm not
sure if someone has already given it a try, and don't recall why this
hasn't been done yet, as it should be fairly straightforward.

On the UVC side, the work queue probably has to be flushed in
uvc_disconnect(). I'd keep the destroy call in uvc_delete() though.
Please make sure to look for potential race conditions between the URB
completion handler and the .disconnect() handler (they shouldn't be any,
but I haven't checked lately myself).

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
