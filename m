Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF78249B95
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 19 Aug 2020 13:19:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1k8M7Q-00045D-EJ; Wed, 19 Aug 2020 11:19:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1k8M7O-000454-Ma
 for linux-uvc-devel@lists.sourceforge.net; Wed, 19 Aug 2020 11:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mg7H/LbWEohuhKjN9KM3/zGroYxL5/2fdjaepRvWm3o=; b=dZCcxuPph37PvdY2Rl7FjUXeFS
 1/Xd7+PsSIoFdsOdVV/9JspbFyTsgqt3miZH8HKhRQBPo7Ey4AEX0HRa8RDlThSF7kgFvHSx7bilF
 fiO9IcflUw52hXeF2BfPw1/tDMli61vfLL8Zi2VViUoS95t1F8zjhuOj8qQUbqr+UkPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mg7H/LbWEohuhKjN9KM3/zGroYxL5/2fdjaepRvWm3o=; b=NA6Q66lh6k6WQowxv4nh2ToQou
 Gg0gms8bhWpOHpYunMZV8Y1GJD9KFkYjM+cPqsikf6Bg0D9mwPRQsxCzc0MU1V7/TEhtjJVBDPg8o
 ba/5gQRaC5qwQyE3PapyImsFI/tXCi3vPLWi6Cw/rdgqm8hEnPYTl4JJlNWMhSMAD788=;
Received: from [213.167.242.64] (helo=perceval.ideasonboard.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8M7H-00CKEz-R2
 for linux-uvc-devel@lists.sourceforge.net; Wed, 19 Aug 2020 11:18:58 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4DCF729E;
 Wed, 19 Aug 2020 13:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1597835909;
 bh=hkatmFK6TNssdvpmOliWG7jZiujJcNsDQMNskvTNaIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oLvZ3x6JmMMbx32UI5Q8OOfU9bXJpjs25SOmU5rBooKAexL+p8YMqIGEjYHBhOfod
 d8BGQ1JhAMhptSVcHuM91DnN0TznuB8iUm2O7oODwxhlbhYJC/g4nBkooVjP1EQ0zi
 YYSEmhEPgPOwydkw40gJML7uZOE80AtAxmqkU1Xg=
Date: Wed, 19 Aug 2020 14:18:11 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <20200819111811.GA6049@pendragon.ideasonboard.com>
References: <b0a7247c-bed3-934b-2c73-7f4b0adb5e75@roeck-us.net>
 <20200815020739.GB52242@rowland.harvard.edu>
 <20200816003315.GA13826@roeck-us.net>
 <20200816121816.GC32174@pendragon.ideasonboard.com>
 <9bb20ed7-b156-f6c2-4d25-6acac1a0021b@roeck-us.net>
 <20200816235155.GA7729@pendragon.ideasonboard.com>
 <0684b71c-8ac5-8962-cbd5-c0bcaa8b6881@xs4all.nl>
 <20200819013002.GL2360@pendragon.ideasonboard.com>
 <96cc3d39-ff23-8def-e199-9c4cb22cc02f@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96cc3d39-ff23-8def-e199-9c4cb22cc02f@xs4all.nl>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: xs4all.nl]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8M7H-00CKEz-R2
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
 Alan Stern <stern@rowland.harvard.edu>, Sakari Ailus <sakari.ailus@iki.fi>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi Hans,

On Wed, Aug 19, 2020 at 09:27:05AM +0200, Hans Verkuil wrote:
> On 19/08/2020 03:30, Laurent Pinchart wrote:
> > On Mon, Aug 17, 2020 at 01:00:49PM +0200, Hans Verkuil wrote:
> >> On 17/08/2020 01:51, Laurent Pinchart wrote:
> >>> On Sun, Aug 16, 2020 at 08:54:18AM -0700, Guenter Roeck wrote:
> >>>> On 8/16/20 5:18 AM, Laurent Pinchart wrote:
> >>>>> CC'ing Hans Verkuil and Sakari Ailus for the discussion about handling
> >>>>> file operations and disconnect in V4L2.
> >>>>>
> >>>>> On Sat, Aug 15, 2020 at 05:33:15PM -0700, Guenter Roeck wrote:
> >>>>>> + linux-uvc-devel@lists.sourceforge.net
> >>>>>> + linux-media@vger.kernel.org
> >>>>>> + laurent.pinchart@ideasonboard.com
> >>>>>>
> >>>>>> and changed subject
> >>>>>>
> >>>>>> On Fri, Aug 14, 2020 at 10:07:39PM -0400, Alan Stern wrote:
> >>>>>>> On Fri, Aug 14, 2020 at 04:07:03PM -0700, Guenter Roeck wrote:
> >>>>>>>> Hi all,
> >>>>>>>>
> >>>>>>>> over time, there have been a number of reports of crashes in usb_ifnum_to_if(),
> >>>>>>>> called from usb_hcd_alloc_bandwidth, which is in turn called from usb_set_interface().
> >>>>>>>> Examples are [1] [2] [3]. A typical backtrace is:
> >>>>>>>>
> >>>>>>>> <3>[ 3489.445468] intel_sst_acpi 808622A8:00: sst: Busy wait failed, cant send this msg
> >>>>>>>> <6>[ 3490.507273] usb 1-4: USB disconnect, device number 3
> >>>>>>>> <1>[ 3490.516670] BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
> >>>>>>>> <6>[ 3490.516680] PGD 0 P4D 0
> >>>>>>>> <4>[ 3490.516687] Oops: 0000 [#1] PREEMPT SMP PTI
> >>>>>>>> <4>[ 3490.516693] CPU: 0 PID: 5633 Comm: V4L2CaptureThre Not tainted 4.19.113-08536-g5d29ca36db06 #1
> >>>>>>>> <4>[ 3490.516696] Hardware name: GOOGLE Edgar, BIOS Google_Edgar.7287.167.156 03/25/2019
> >>>>>>>> <4>[ 3490.516706] RIP: 0010:usb_ifnum_to_if+0x29/0x40
> >>>>>>>> <4>[ 3490.516710] Code: ee 0f 1f 44 00 00 55 48 89 e5 48 8b 8f f8 03 00 00 48 85 c9 74 27 44 0f b6 41 04 4d 85 c0 74 1d 31 ff 48 8b 84 f9 98 00 00 00 <48> 8b 10 0f b6 52 02 39 f2 74 0a 48 ff c7 4c 39 c7 72 e5 31 c0 5d
> >>>>>>>> <4>[ 3490.516714] RSP: 0018:ffffa46f42a47a80 EFLAGS: 00010246
> >>>>>>>> <4>[ 3490.516718] RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff904a396c9000
> >>>>>>>> <4>[ 3490.516721] RDX: ffff904a39641320 RSI: 0000000000000001 RDI: 0000000000000000
> >>>>>>>> <4>[ 3490.516724] RBP: ffffa46f42a47a80 R08: 0000000000000002 R09: 0000000000000000
> >>>>>>>> <4>[ 3490.516727] R10: 0000000000009975 R11: 0000000000000009 R12: 0000000000000000
> >>>>>>>> <4>[ 3490.516731] R13: ffff904a396b3800 R14: ffff904a39e88000 R15: 0000000000000000
> >>>>>>>> <4>[ 3490.516735] FS: 00007f396448e700(0000) GS:ffff904a3ba00000(0000) knlGS:0000000000000000
> >>>>>>>> <4>[ 3490.516738] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> >>>>>>>> <4>[ 3490.516742] CR2: 0000000000000000 CR3: 000000016cb46000 CR4: 00000000001006f0
> >>>>>>>> <4>[ 3490.516745] Call Trace:
> >>>>>>>> <4>[ 3490.516756] usb_hcd_alloc_bandwidth+0x1ee/0x30f
> >>>>>>>> <4>[ 3490.516762] usb_set_interface+0x1a3/0x2b7
> >>>>>>>> <4>[ 3490.516773] uvc_video_start_transfer+0x29b/0x4b8 [uvcvideo]
> >>>>>>>> <4>[ 3490.516781] uvc_video_start_streaming+0x91/0xdd [uvcvideo]
> >>>>>>>> <4>[ 3490.516787] uvc_start_streaming+0x28/0x5d [uvcvideo]
> >>>>>>>> <4>[ 3490.516795] vb2_start_streaming+0x61/0x143 [videobuf2_common]
> >>>>>>>> <4>[ 3490.516801] vb2_core_streamon+0xf7/0x10f [videobuf2_common]
> >>>>>>>> <4>[ 3490.516807] uvc_queue_streamon+0x2e/0x41 [uvcvideo]
> >>>>>>>> <4>[ 3490.516814] uvc_ioctl_streamon+0x42/0x5c [uvcvideo]
> >>>>>>>> <4>[ 3490.516820] __video_do_ioctl+0x33d/0x42a
> >>>>>>>> <4>[ 3490.516826] video_usercopy+0x34e/0x5ff
> >>>>>>>> <4>[ 3490.516831] ? video_ioctl2+0x16/0x16
> >>>>>>>> <4>[ 3490.516837] v4l2_ioctl+0x46/0x53
> >>>>>>>> <4>[ 3490.516843] do_vfs_ioctl+0x50a/0x76f
> >>>>>>>> <4>[ 3490.516848] ksys_ioctl+0x58/0x83
> >>>>>>>> <4>[ 3490.516853] __x64_sys_ioctl+0x1a/0x1e
> >>>>>>>> <4>[ 3490.516858] do_syscall_64+0x54/0xde
> >>>>>>>>
> >>>>>>>> I have been able to reproduce the problem on a Chromebook by strategically placing
> >>>>>>>> msleep() calls into usb_set_interface() and usb_disable_device(). Ultimately, the
> >>>>>>>> problem boils down to lack of protection against device removal in usb_set_interface()
> >>>>>>>> [and/or possibly other callers of usb_ifnum_to_if()].
> >>>>>>>>
> >>>>>>>> Sequence of events is roughly as follows:
> >>>>>>>>
> >>>>>>>> - usb_set_interface() is called and proceeds to some point, possibly to
> >>>>>>>>   mutex_lock(hcd->bandwidth_mutex);
> >>>>>>>> - Device removal event is detected, and usb_disable_device() is called
> >>>>>>>
> >>>>>>> At this point all interface drivers get unbound (their disconnect 
> >>>>>>> routines are called).
> >>>>>>>
> >>>>>>>> - usb_disable_device() starts removing actconfig data. It has removed
> >>>>>>>>   and cleared dev->actconfig->interface[i], but not dev->actconfig
> >>>>>>>> - usb_set_interface() calls usb_hcd_alloc_bandwidth(), which calls
> >>>>>>>>   usb_ifnum_to_if()
> >>>>>>>> - In usb_ifnum_to_if(), dev->actconfig is not NULL, but
> >>>>>>>>   dev->actconfig->interface[i] is NULL
> >>>>>>>> - crash
> >>>>>>>>
> >>>>>>>> Question is what we can do about this. Checking if dev->state != USB_STATE_NOTATTACHED
> >>>>>>>> in usb_ifnum_to_if() might be a possible approach, but strictly speaking it would
> >>>>>>>> still be racy since there is still no lock against device removal. I have not tried
> >>>>>>>> calling usb_lock_device() in usb_set_interface() - would that possibly be an option ?
> >>>>>>>
> >>>>>>> As far as I know, protecting against these races is the responsibility 
> >>>>>>> of the USB interface drivers.  They must make sure that their disconnect 
> >>>>>>> routines block until all outstanding calls to usb_set_interface return 
> >>>>>>> (in fact, until all outstanding device accesses have finished).
> >>>>>>>
> >>>>>>> For instance, in the log extract you showed, it's obvious that the 
> >>>>>>> uvc_start_streaming routine was running after the disconnect routine had 
> >>>>>>> returned, which looks like a bug in itself: Once the disconnect routine 
> >>>>>>> returns, the driver is not supposed to try to access the device at all 
> >>>>>>> because some other driver may now be bound to it.
> >>>>>>>
> >>>>>>> We can't just call usb_lock_device from within usb_set_interface, 
> >>>>>>> because usb_set_interface is often called with that lock already held.
> >>>>>>>
> >>>>>> I had a closer look into the uvcvideo driver and compared it to other usb
> >>>>>> drivers, including drivers in drivers/media/usb/ which connect to the video
> >>>>>> subsystem.
> >>>>>>
> >>>>>> The usbvideo driver lacks protection against calls to uvc_disconnect() while
> >>>>>
> >>>>> Are you confusing usbvideo and uvcvideo ? Both exist, and uvcvideo would
> >>>>> have been called usbvideo if the former hadn't already been in use.
> >>>>
> >>>> Yes, sorry :-(. I am not sure how s/uvc/usb/ happened.
> >>>
> >>> No worries.
> >>>
> >>>>>> calls into file operations are ongoing. This is pretty widespread, and not
> >>>>>> even limited to file operations (for example, there is a worker which is only
> >>>>>> canceled in uvc_delete, not in ucv_disconnect). The existing protection only
> >>>>>> ensures that no file operations are started after the call to ucv_disconnect,
> >>>>>> but that is insufficient.
> >>>>>>
> >>>>>> Other drivers do have that protection and make sure that no usb operations
> >>>>>> can happen after the disconnect call.
> >>>>>>
> >>>>>> The only remedy I can see is to rework the usbvideo driver and add the
> >>>>>> necessary protections. At first glance, it looks like this may be a
> >>>>>> substantial amount of work. I'd sign up for that, but before I start,
> >>>>>> I would like to get input from the usbvideo community. Is such an effort
> >>>>>> already going on ? If yes, how can I help ? If not, is the problem
> >>>>>> understood and accepted ? Are there any ideas on how to solve it ?
> >>>>>
> >>>>> This is something that has been discussed before, and needs to be solved
> >>>>> in the V4L2 framework itself, not in individual drivers. Not only would
> >>>>> this avoid rolling out the same code manually everywhere (in different
> >>>>> incorrect ways, as races are difficult to solve and implementations are
> >>>>> more often wrong than right), but it will also avoid similar issues for
> >>>>> non-USB devices.
> >>>>
> >>>> You mean code that ensures that no user-space v4l2 operation is in progress
> >>>> after video_device_unregister / v4l2_device_unregister return ? I agree,
> >>>> that would simplify the necessary changes on the uvc side.
> >>>
> >>> I was thinking about adding a new function to be called from the
> >>> disconnect handler to implement the wait on end of userspace access, but
> >>> video_device_unregister() seems an even better idea.
> >>> v4l2_device_unregister() is probably not very useful as v4l2_device
> >>> isn't exposed to userspace, only video_device is (and v4l2_subdev and
> >>> media_device, but that's a different story, although probably still an
> >>> issue for the latter in the UVC driver).
> >>
> >> Actually, all that is needed is to take the ioctl serialization lock in the disconnect
> >> function.
> > 
> > It's not just ioctls though, the other file operations also need to be
> > handled (read, write, mmap).
> 
> Correct. And AFAIK all vb2-based drivers do take that serialization lock in
> the file ops.
> 
> >> See last paragraph in 1.4.1 here:
> >>
> >> https://hverkuil.home.xs4all.nl/spec/driver-api/v4l2-dev.html
> >>
> >> Since uvc uses its own lock, you need to take that one.
> > 
> > Drivers that use their own lock do so to avoid serializing all ioctls.
> 
> Let's agree to disagree :-)
> 
> In my experience it is just too hard to keep track of locking and with
> very little advantages. You are the only developer that I know of that
> insists on doing your own locking. Luckily you are very good at your
> job, but everyone else uses the v4l2/vb2 core locking.
> 
> > This means that different ioctls may be covered by different locks
> > (possibly with part of some ioctls running without locking). I don't
> > think we can just dismiss the issue saying those drivers need to
> > implement the disconnection manually. It would be much better to
> > integrate handling of userspace access with video_device_unregister()
> > like proposed above, as that will work for all drivers in a transparent
> > way. It would also be fairly simple to implement in the V4L2 core.
> 
> I'm not really sure what you want. Should video_unregister_device()
> take the core lock (i.e. vdev->lock)?

struct video_device {
	...
	wait_queue_head_t uapi_wait;
	bool uapi_call_in_progress;
	bool unregister_in_progress;
	...
};

static inline int video_device_uapi_call_enter(struct video_device *vdev)
{
	int ret = 0;

	spin_lock(&vdev->uapi_wait.lock);
	if (likely(!vdev->unregister_in_progress)) {
		vdev->uapi_call_in_progress = true;
	} else {
		ret = -ENOTCONN;
	}
	spin_unlock(&vdev->uapi_wait.lock);

	return ret;
}

static inline void video_device_uapi_call_exit(struct video_device *vdev)
{
	spin_lock(&vdev->uapi_wait.lock);
	vdev->uapi_call_in_progress = false;
	wake_up_locked(&vdev->uapi_wait);
	spin_unlock(&vdev->uapi_wait.lock);
}

void video_unregister_device(struct video_device *vdev)
{
	...


	...
}

 void video_unregister_device(struct video_device *vdev)
 {
 	/* Check if vdev was ever registered at all */
 	if (!vdev || !video_is_registered(vdev))
 		return;
 
+	spin_lock(&vdev->uapi_wait.lock);
+	vdev->unregister_in_progress = true;
+	if (vdev->uapi_call_in_progress)
+		wait_event_interruptible_locked(vdev->uapi_wait,
+						!vdev->uapi_call_in_progress);
+	spin_unlock(&vdev->uapi_wait.lock);
+
 	mutex_lock(&videodev_lock);
 	/* This must be in a critical section to prevent a race with v4l2_open.
 	 * Once this bit has been cleared video_get may never be called again.
 	 */
 	clear_bit(V4L2_FL_REGISTERED, &vdev->flags);
 	mutex_unlock(&videodev_lock);
 	device_unregister(&vdev->dev);
 }

 static long v4l2_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
 	struct video_device *vdev = video_devdata(filp);
-	int ret = -ENODEV;
+	int ret;
 
+	ret = video_device_uapi_call_enter(vdev);
+	if (ret)
+		return ret;
+
 	if (vdev->fops->unlocked_ioctl) {
 		if (video_is_registered(vdev))
 			ret = vdev->fops->unlocked_ioctl(filp, cmd, arg);
+		else
+			ret = -ENODEV;
 	} else
 		ret = -ENOTTY;
 
+	video_device_uapi_call_exit(vdev);
+
 	return ret;
 }

and similarly for the other fops. A bit more work is needed to merge
unregister_in_progress with the V4L2_FL_REGISTERED bit.

> >>> We also have a v4l2_device_disconnect() function which is supposed to
> >>> handle hot-pluggable device disconnection, but it's fairly useless (I'd
> >>> even say harmful as it gives the illusion that hotplugging is correctly
> >>> handled, while in reality the media subsystem is plagged by hot-unplug
> >>> issues :-S).
> >>
> >> The v4l2_device_disconnect() is there to remove a v4l2_dev reference to
> >> the device that is about to be removed when the disconnect() exists.
> >> Otherwise v4l2_dev->dev would point to a missing device.
> >>
> >> However, I wonder if it is still needed: commit 236c5441d703 from 2011 added
> >> code to take a reference to v4l2_dev->dev in v4l2_device_register(). This
> >> should prevent the device from disappearing until v4l2_device_unregister() is
> >> called. I suspect that v4l2_device_disconnect() can be removed completely, and
> >> instead v4l2_device_unregister() just calls put_device(v4l2_dev->dev).
> >>
> >> I don't like v4l2_device_disconnect() either, so if this works, then that would
> >> be a nice simplification.
> >>
> >>>> I actually came from the other side - I assumed that there is a reason
> >>>> that is not already the case, and that the problem therefore has to be
> >>>> resolved on the driver side.
> >>>>
> >>>> So I guess the next question is: Is this already being addressed on the
> >>>> v4l2 side ?
> >>>
> >>> I'm not aware of anyone working on this.
> >>>
> >>>>> It shouldn't take more than two flags (to track user-space operations in
> >>>>> progress and disconnection), a spinlock and a wait queue entry. I'm not
> >>>>> sure if someone has already given it a try, and don't recall why this
> >>>>> hasn't been done yet, as it should be fairly straightforward.
> >>>>>
> >>>>> On the UVC side, the work queue probably has to be flushed in
> >>>>> uvc_disconnect(). I'd keep the destroy call in uvc_delete() though.
> >>>>> Please make sure to look for potential race conditions between the URB
> >>>>> completion handler and the .disconnect() handler (they shouldn't be any,
> >>>>> but I haven't checked lately myself).
> >>>>
> >>>> My current solution for this problem is to call uvc_ctrl_cleanup_device()
> >>>> from uvc_disconnect(), after uvc_unregister_video().
> >>>
> >>> I'd rather avoid that, as the cleanup functions in the UVC driver are
> >>> generally meant to free memory when the last user disappears. While no
> >>> new userspace operation will be started after disconnection once the
> >>> above fix will be in place, there's one operation we can't avoid: the
> >>> file release. This will access some of the memory allocated by the
> >>> driver, and while the current implementation probably doesn't access in
> >>> .release() any memory freed by uvc_ctrl_cleanup_device(), I think it's a
> >>> good practice to only shut down the userspace API in .disconnect(), and
> >>> free memory when the last reference is released.
> >>>
> >>>> An alternative might
> >>>> be to add a uvc_ctrl_stop_device() function which would just cancel the
> >>>> worker.
> >>>
> >>> I think that would be best. Should stream->async_wq (in uvc_video.c) be
> >>> similarly flushed ? The driver does so in stream->async_wq(), called
> >>> from uvc_video_stop_transfer(), itself called from
> >>> uvc_video_stop_streaming() (among other places, that are either error
> >>> paths or system suspend handling). The call stack goes to
> >>> uvc_stop_streaming(), and, through the videobuf2 helpers, to
> >>> vb2_queue_release() called by uvc_queue_release() itself called by
> >>> uvc_v4l2_release() (in the non-disconnect case,
> >>> uvc_video_stop_streaming() will be called through videobuf2 by
> >>> uvc_queue_streamoff(), in response to a VIDIOC_STREAMOFF ioctl). We thus
> >>> flush the workqueue too late, and also access the device in
> >>> uvc_video_stop_streaming() long after .disconnect() returns.
> >>>
> >>> I think uvc_video_stop_streaming() could be called in uvc_disconnect()
> >>> after uvc_unregister_video().

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
