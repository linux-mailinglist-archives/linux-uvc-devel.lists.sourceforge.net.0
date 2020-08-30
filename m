Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB16B256F3F
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 30 Aug 2020 17:59:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kCPjr-0003Gr-0a; Sun, 30 Aug 2020 15:59:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1kCPjp-0003Gj-Bh
 for linux-uvc-devel@lists.sourceforge.net; Sun, 30 Aug 2020 15:59:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sdh7tjEYocGGfjOf/bq/wlk+1AFZF5EYk6HEM0ZvtdY=; b=c7Aat8S7EdZF6nfboSm/+1rIIK
 NBYU7k0WfeMu51q1a0hqDqDlpoLc8lpGiN/6eaxKvj1HFmM9v+gjzAxGjvPTbeaz6TYBZb8sg5HoD
 sCekU4iD0YrDg6/eK+3YAD7Orqy5jUdcEsqbmwGgqiic2tlOjUooL23gCqhA2amAWxIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sdh7tjEYocGGfjOf/bq/wlk+1AFZF5EYk6HEM0ZvtdY=; b=QzYGIksb13TBao8zIr+ML4UMAd
 ih1hvNxVFez7rsSUn5oqkGTnNPsL+uOjzHGvro7wKqDoflkTNuetpa64HsolXB/O3IRWQ8wLm6bSf
 txxKlvf7bZ/tacSVycs2aHmYBdZSfNAooTLcUO7eEcEZvTe2aEP9eMT2oM+AcJUAXdvA=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kCPjk-007DSG-Od
 for linux-uvc-devel@lists.sourceforge.net; Sun, 30 Aug 2020 15:59:25 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 281F1258;
 Sun, 30 Aug 2020 17:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1598803138;
 bh=/V6uJ2UaJxcf2LrkofPkuHLaZ/DO+zHrenXjUGNL5KA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HX+GJFDw2KI8ilmLOZtUtL7br3BsmXtFHmxTilbjKorOD10U3skl+k9V+HLn8r3Af
 k0Lx8Yj0cbRKnz/TQJya/84h10aqYCyW6/fNq4/MGMObVzHopFPYqSpXBcKjqBmUGq
 CJJjyevVTDTK5+YPc1ADTcx22nkwlA/KrsHc6ZUc=
Date: Sun, 30 Aug 2020 18:58:33 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20200830155833.GA6043@pendragon.ideasonboard.com>
References: <20200830150443.167286-1-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200830150443.167286-1-linux@roeck-us.net>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kCPjk-007DSG-Od
Subject: Re: [linux-uvc-devel] [PATCH 0/5] media: uvcvideo: Fix race
 conditions
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi Guenter,

Thank you for the patches.

On Sun, Aug 30, 2020 at 08:04:38AM -0700, Guenter Roeck wrote:
> The uvcvideo code has no lock protection against USB disconnects
> while video operations are ongoing. This has resulted in random
> error reports, typically pointing to a crash in usb_ifnum_to_if(),
> called from usb_hcd_alloc_bandwidth(). A typical traceback is as
> follows.
> 
> usb 1-4: USB disconnect, device number 3
> BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
> PGD 0 P4D 0
> Oops: 0000 [#1] PREEMPT SMP PTI
> CPU: 0 PID: 5633 Comm: V4L2CaptureThre Not tainted 4.19.113-08536-g5d29ca36db06 #1
> Hardware name: GOOGLE Edgar, BIOS Google_Edgar.7287.167.156 03/25/2019
> RIP: 0010:usb_ifnum_to_if+0x29/0x40
> Code: <...>
> RSP: 0018:ffffa46f42a47a80 EFLAGS: 00010246
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff904a396c9000
> RDX: ffff904a39641320 RSI: 0000000000000001 RDI: 0000000000000000
> RBP: ffffa46f42a47a80 R08: 0000000000000002 R09: 0000000000000000
> R10: 0000000000009975 R11: 0000000000000009 R12: 0000000000000000
> R13: ffff904a396b3800 R14: ffff904a39e88000 R15: 0000000000000000
> FS: 00007f396448e700(0000) GS:ffff904a3ba00000(0000) knlGS:0000000000000000
> CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000000 CR3: 000000016cb46000 CR4: 00000000001006f0
> Call Trace:
>  usb_hcd_alloc_bandwidth+0x1ee/0x30f
>  usb_set_interface+0x1a3/0x2b7
>  uvc_video_start_transfer+0x29b/0x4b8 [uvcvideo]
>  uvc_video_start_streaming+0x91/0xdd [uvcvideo]
>  uvc_start_streaming+0x28/0x5d [uvcvideo]
>  vb2_start_streaming+0x61/0x143 [videobuf2_common]
>  vb2_core_streamon+0xf7/0x10f [videobuf2_common]
>  uvc_queue_streamon+0x2e/0x41 [uvcvideo]
>  uvc_ioctl_streamon+0x42/0x5c [uvcvideo]
>  __video_do_ioctl+0x33d/0x42a
>  video_usercopy+0x34e/0x5ff
>  ? video_ioctl2+0x16/0x16
>  v4l2_ioctl+0x46/0x53
>  do_vfs_ioctl+0x50a/0x76f
>  ksys_ioctl+0x58/0x83
>  __x64_sys_ioctl+0x1a/0x1e
>  do_syscall_64+0x54/0xde
> 
> While this is problem rarely observed in the field, it is relatively easy
> to reproduce by adding msleep() calls into the code.
> 
> I don't presume to claim that I found every issue, but this patch series
> should fix at least the major problems.
> 
> The patch series was tested exensively on a Chromebook running chromeos-4.19
> and on a Linux system running a v5.8.y based kernel.

I'll review each patch individually, but I think 2/5, 4/5 and 5/5 should
be handled in the V4L2 core, not the uvcvideo driver. Otherwise we would
have to replicate that logic in all drivers, while I think it can easily
be implemented in a generic fashion as previously discussed.

> ----------------------------------------------------------------
> Guenter Roeck (5):
>       media: uvcvideo: Cancel async worker earlier
>       media: uvcvideo: Lock video streams and queues while unregistering
>       media: uvcvideo: Release stream queue when unregistering video device
>       media: uvcvideo: Protect uvc queue file operations against disconnect
>       media: uvcvideo: In uvc_v4l2_open, check if video device is registered
> 
>  drivers/media/usb/uvc/uvc_ctrl.c   | 11 ++++++----
>  drivers/media/usb/uvc/uvc_driver.c | 12 ++++++++++
>  drivers/media/usb/uvc/uvc_queue.c  | 32 +++++++++++++++++++++++++--
>  drivers/media/usb/uvc/uvc_v4l2.c   | 45 ++++++++++++++++++++++++++++++++++++--
>  drivers/media/usb/uvc/uvcvideo.h   |  1 +
>  5 files changed, 93 insertions(+), 8 deletions(-)

-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
