Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA724D707C
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 12 Mar 2022 20:00:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nT6q0-0007Iq-HR; Sat, 12 Mar 2022 18:59:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1nT6py-0007Ik-Dv
 for linux-uvc-devel@lists.sourceforge.net; Sat, 12 Mar 2022 18:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YVQEDklVluFffF7UnbFYwXbhmCPc2pw+50RewZYrIZY=; b=M8v3X6NGfwEwaMBlE/eYsUt+Zc
 kpaAvFLnltXqFNBcQiqgutFGpgNs4gQ6OBPW0y3tU3t8svd7AHPtCFcotCGXaN3Cbk0Qtd5pQHet9
 GHD3SO9/tNvUkVp1pSX6yjhaORhyp8Fw2TFB6o4O7HrKuNnE+LTL7oQkl6zTIVEhDxDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YVQEDklVluFffF7UnbFYwXbhmCPc2pw+50RewZYrIZY=; b=DaHNQTazH0aieoph6Ijwg2Lr7u
 48AfJZ7n0WV50OIcXZpkVJcNTQre3RvDNnDFCQJUDDg1lgjwBc7fjN89p5pRwKs/+DLEIiLl9Hi3B
 LPUVMs6NLuhiud6FLvKWGoU1J35x426AMHOpAi4fCygaLwUXB7hc+x5xOEyEWYq/OdUY=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nT6xq-0005PV-R2
 for linux-uvc-devel@lists.sourceforge.net; Sat, 12 Mar 2022 18:59:45 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7AD3A8C4;
 Sat, 12 Mar 2022 19:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647110615;
 bh=C8/4uNqE9SOK8e3iKf9Yp+FDIyoC3+n8dlsKXnWNR7k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KBaxek1GWMxa3WFPIj/VTxbAFToVKcnICSsq495bmSe5gBllVgnqe/EvM/UiYPr9J
 JAkfWfJIdPqfiFLTy/kU32FfEX4F77swV78JvGmgVfixLvp9sITEd/LfuvfzGdZxia
 VAQVqX9s0zmK0nuZrjuo38zfSeScftEkfUkKQ3no=
Date: Sat, 12 Mar 2022 20:43:18 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <YizpxhxPBxJ0EHQR@pendragon.ideasonboard.com>
References: <20200917022547.198090-1-linux@roeck-us.net>
 <20220311202426.GE23776@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311202426.GE23776@pengutronix.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Michael, On Fri, Mar 11, 2022 at 09:24:26PM +0100, Michael
 Grzeschik wrote: > Ping! > > This series seems to be hanging around. It would
 be nice to get these > patches upstream, as they help my uvc-gadget work
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nT6xq-0005PV-R2
Subject: Re: [linux-uvc-devel] [PATCH RESEND v3 0/5] media: uvcvideo: Fix
 race conditions
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
Cc: linux-uvc-devel@lists.sourceforge.net, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@iki.fi>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi Michael,

On Fri, Mar 11, 2022 at 09:24:26PM +0100, Michael Grzeschik wrote:
> Ping!
> 
> This series seems to be hanging around. It would be nice to get these
> patches upstream, as they help my uvc-gadget workflow. Without them it
> is likely that in the development cases my gadget won't start and then
> leave the whole xhci controller broken.
> 
> @Laurent, what do you think?

I think I've explained before how this should be fixed at the V4L2
level. The problem actually affects character devices globally, and Greg
KH said he would have a go at fixing it there, but I don't think much
happened. Starting with a V4L2-level fix is fine with me.

There are a few patches in the series that are specific to uvcvideo,
I'll have another look and merge those.

> On Wed, Sep 16, 2020 at 07:25:42PM -0700, Guenter Roeck wrote:
> > Something seems to have gone wrong with v3 of this patch series.
> > I am sure I sent it out, but I don't find it anywhere.
> > Resending. Sorry for any duplicates.
> > 
> > The uvcvideo code has no lock protection against USB disconnects
> > while video operations are ongoing. This has resulted in random
> > error reports, typically pointing to a crash in usb_ifnum_to_if(),
> > called from usb_hcd_alloc_bandwidth(). A typical traceback is as
> > follows.
> > 
> > usb 1-4: USB disconnect, device number 3
> > BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
> > PGD 0 P4D 0
> > Oops: 0000 [#1] PREEMPT SMP PTI
> > CPU: 0 PID: 5633 Comm: V4L2CaptureThre Not tainted 4.19.113-08536-g5d29ca36db06 #1
> > Hardware name: GOOGLE Edgar, BIOS Google_Edgar.7287.167.156 03/25/2019
> > RIP: 0010:usb_ifnum_to_if+0x29/0x40
> > Code: <...>
> > RSP: 0018:ffffa46f42a47a80 EFLAGS: 00010246
> > RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff904a396c9000
> > RDX: ffff904a39641320 RSI: 0000000000000001 RDI: 0000000000000000
> > RBP: ffffa46f42a47a80 R08: 0000000000000002 R09: 0000000000000000
> > R10: 0000000000009975 R11: 0000000000000009 R12: 0000000000000000
> > R13: ffff904a396b3800 R14: ffff904a39e88000 R15: 0000000000000000
> > FS: 00007f396448e700(0000) GS:ffff904a3ba00000(0000) knlGS:0000000000000000
> > CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 0000000000000000 CR3: 000000016cb46000 CR4: 00000000001006f0
> > Call Trace:
> >  usb_hcd_alloc_bandwidth+0x1ee/0x30f
> >  usb_set_interface+0x1a3/0x2b7
> >  uvc_video_start_transfer+0x29b/0x4b8 [uvcvideo]
> >  uvc_video_start_streaming+0x91/0xdd [uvcvideo]
> >  uvc_start_streaming+0x28/0x5d [uvcvideo]
> >  vb2_start_streaming+0x61/0x143 [videobuf2_common]
> >  vb2_core_streamon+0xf7/0x10f [videobuf2_common]
> >  uvc_queue_streamon+0x2e/0x41 [uvcvideo]
> >  uvc_ioctl_streamon+0x42/0x5c [uvcvideo]
> >  __video_do_ioctl+0x33d/0x42a
> >  video_usercopy+0x34e/0x5ff
> >  ? video_ioctl2+0x16/0x16
> >  v4l2_ioctl+0x46/0x53
> >  do_vfs_ioctl+0x50a/0x76f
> >  ksys_ioctl+0x58/0x83
> >  __x64_sys_ioctl+0x1a/0x1e
> >  do_syscall_64+0x54/0xde
> > 
> > While there are not many references to this problem on mailing lists, it is
> > reported on a regular basis on various Chromebooks (roughly 300 reports
> > per month). The problem is relatively easy to reproduce by adding msleep()
> > calls into the code.
> > 
> > I tried to reproduce the problem with non-uvcvideo webcams, but was
> > unsuccessful. I was unable to get Philips (pwc) webcams to work. gspca
> > based webcams don't experience the problem, or at least I was unable to
> > reproduce it (The gspa driver does not trigger sending USB messages in the
> > open function, and otherwise uses the locking mechanism provided by the
> > v4l2/vb2 core).
> > 
> > I don't presume to claim that I found every issue, but this patch series
> > should fix at least the major problems.
> > 
> > The patch series was tested exensively on a Chromebook running chromeos-4.19
> > and on a Linux system running a v5.8.y based kernel.
> > 
> > v3:
> > - In patch 5/5, add missing calls to usb_autopm_put_interface() and kfree()
> >   to failure code path
> > 
> > v2:
> > - Added details about problem frequency and testing with non-uvc webcams
> >   to summary
> > - In patch 4/5, return EPOLLERR instead of -ENODEV on poll errors
> > - Fix description in patch 5/5
> > 
> > ----------------------------------------------------------------
> > Guenter Roeck (5):
> >       media: uvcvideo: Cancel async worker earlier
> >       media: uvcvideo: Lock video streams and queues while unregistering
> >       media: uvcvideo: Release stream queue when unregistering video device
> >       media: uvcvideo: Protect uvc queue file operations against disconnect
> >       media: uvcvideo: Abort uvc_v4l2_open if video device is unregistered
> > 
> >  drivers/media/usb/uvc/uvc_ctrl.c   | 11 ++++++----
> >  drivers/media/usb/uvc/uvc_driver.c | 12 ++++++++++
> >  drivers/media/usb/uvc/uvc_queue.c  | 32 +++++++++++++++++++++++++--
> >  drivers/media/usb/uvc/uvc_v4l2.c   | 45 ++++++++++++++++++++++++++++++++++++--
> >  drivers/media/usb/uvc/uvcvideo.h   |  1 +
> >  5 files changed, 93 insertions(+), 8 deletions(-)

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
