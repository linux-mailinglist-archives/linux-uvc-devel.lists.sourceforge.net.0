Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 380034D699C
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 11 Mar 2022 21:42:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nSm5X-0007aR-C5; Fri, 11 Mar 2022 20:42:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mgr@pengutronix.de>) id 1nSm5V-0007aL-5a
 for linux-uvc-devel@lists.sourceforge.net; Fri, 11 Mar 2022 20:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:List-ID:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Cc:To:From:Date:Resent-To:
 Resent-Message-ID:Resent-Date:Resent-From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Sender:
 Resent-Cc:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=VRgQG8Kl1Uu5BjeB4d+9ZIhonEPvyJbz+BSqT3fP004=; b=Hr0D1TdwM3xu
 1dFJbePsfZHbfTSyeW331VrAV55VSRRmS1SZwqn7Feqgae4LsDIfrpYRFnB1RCIprbpj2+MdmUz7S
 1UiOv6Th5riKvG9Se21XKpDtBQUYtYEIVITp+OOTKwrz5OeIL8Rufd+SV0W19a8aZBNtq4ZvOVWjv
 k5rCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:List-ID:In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Cc:To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:
 Resent-From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Sender:Resent-Cc:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VRgQG8Kl1Uu5BjeB4d+9ZIhonEPvyJbz+BSqT3fP004=; b=VXgg7pw174RYJuZvW/qqzvtah/
 5EO5o6MitpwcncYYt/fJBO2c4WKlmSSPZmBb5/D1m6/pP8Tth+9dZdkaMJv1ykL3njnot86QcNO4w
 twn3Dl6lYmW1iHySznJjNVXe7i/lvySyteeFkDUYzqdn9VWzHkvW/H+Ge99Rw5H3id58=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSm5S-0000ex-Ip
 for linux-uvc-devel@lists.sourceforge.net; Fri, 11 Mar 2022 20:42:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1nSm5L-0008AM-K0
 for linux-uvc-devel@lists.sourceforge.net; Fri, 11 Mar 2022 21:42:03 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1nSm5L-00033f-9K
 for linux-uvc-devel@lists.sourceforge.net; Fri, 11 Mar 2022 21:42:03 +0100
Resent-From: Michael Grzeschik <mgr@pengutronix.de>
Resent-Date: Fri, 11 Mar 2022 21:42:03 +0100
Resent-Message-ID: <20220311204203.GF23776@pengutronix.de>
Resent-To: linux-uvc-devel@lists.sourceforge.net
Received: from out1.vger.email ([2620:137:e000::1:20])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <linux-media-owner@vger.kernel.org>)
 id 1nSlpD-0006Gw-38; Fri, 11 Mar 2022 21:25:24 +0100
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
 id S1351236AbiCKUZu (ORCPT <rfc822;mci@pengutronix.de> + 7 others);
 Fri, 11 Mar 2022 15:25:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37930 "EHLO
 lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
 with ESMTP id S1347773AbiCKUZt (ORCPT
 <rfc822;linux-media@vger.kernel.org>);
 Fri, 11 Mar 2022 15:25:49 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5CA461A32
 for <linux-media@vger.kernel.org>; Fri, 11 Mar 2022 12:24:45 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1nSloK-00067h-1C; Fri, 11 Mar 2022 21:24:28 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1nSloI-0002Od-92; Fri, 11 Mar 2022 21:24:26 +0100
Date: Fri, 11 Mar 2022 21:24:26 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20220311202426.GE23776@pengutronix.de>
References: <20200917022547.198090-1-linux@roeck-us.net>
MIME-Version: 1.0
In-Reply-To: <20200917022547.198090-1-linux@roeck-us.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 21:23:51 up 91 days,  5:09, 69 users,  load average: 0.20, 0.23, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-PTX-Original-Recipient: linux-media@vger.kernel.org
Precedence: bulk
X-Mailing-List: linux-media@vger.kernel.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=4.0 tests=AWL,BAYES_00,
 HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
 SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
 autolearn=ham autolearn_force=no version=3.4.2
X-PTX-Original-Recipient: mgr@pengutronix.de
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Ping! This series seems to be hanging around. It would be
 nice to get these patches upstream,
 as they help my uvc-gadget workflow. Without
 them it is likely that in the development cases my gadget won't sta [...]
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-Headers-End: 1nSm5S-0000ex-Ip
Subject: Re: [linux-uvc-devel] [PATCH RESEND v3 0/5] media: uvcvideo: Fix
 race conditions
X-BeenThere: linux-uvc-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
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
Content-Type: multipart/mixed; boundary="===============4323508093412331279=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net
Sender: "Linux-uvc-devel" <linux-uvc-devel-bounces@lists.sourceforge.net>


--===============4323508093412331279==
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tMbDGjvJuJijemkf"
Content-Disposition: inline


--tMbDGjvJuJijemkf
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Ping!

This series seems to be hanging around. It would be nice to get these
patches upstream, as they help my uvc-gadget workflow. Without them it
is likely that in the development cases my gadget won't start and then
leave the whole xhci controller broken.

@Laurent, what do you think?

Regards,
Michael


On Wed, Sep 16, 2020 at 07:25:42PM -0700, Guenter Roeck wrote:
>Something seems to have gone wrong with v3 of this patch series.
>I am sure I sent it out, but I don't find it anywhere.
>Resending. Sorry for any duplicates.
>
>The uvcvideo code has no lock protection against USB disconnects
>while video operations are ongoing. This has resulted in random
>error reports, typically pointing to a crash in usb_ifnum_to_if(),
>called from usb_hcd_alloc_bandwidth(). A typical traceback is as
>follows.
>
>usb 1-4: USB disconnect, device number 3
>BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
>PGD 0 P4D 0
>Oops: 0000 [#1] PREEMPT SMP PTI
>CPU: 0 PID: 5633 Comm: V4L2CaptureThre Not tainted 4.19.113-08536-g5d29ca3=
6db06 #1
>Hardware name: GOOGLE Edgar, BIOS Google_Edgar.7287.167.156 03/25/2019
>RIP: 0010:usb_ifnum_to_if+0x29/0x40
>Code: <...>
>RSP: 0018:ffffa46f42a47a80 EFLAGS: 00010246
>RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff904a396c9000
>RDX: ffff904a39641320 RSI: 0000000000000001 RDI: 0000000000000000
>RBP: ffffa46f42a47a80 R08: 0000000000000002 R09: 0000000000000000
>R10: 0000000000009975 R11: 0000000000000009 R12: 0000000000000000
>R13: ffff904a396b3800 R14: ffff904a39e88000 R15: 0000000000000000
>FS: 00007f396448e700(0000) GS:ffff904a3ba00000(0000) knlGS:0000000000000000
>CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>CR2: 0000000000000000 CR3: 000000016cb46000 CR4: 00000000001006f0
>Call Trace:
> usb_hcd_alloc_bandwidth+0x1ee/0x30f
> usb_set_interface+0x1a3/0x2b7
> uvc_video_start_transfer+0x29b/0x4b8 [uvcvideo]
> uvc_video_start_streaming+0x91/0xdd [uvcvideo]
> uvc_start_streaming+0x28/0x5d [uvcvideo]
> vb2_start_streaming+0x61/0x143 [videobuf2_common]
> vb2_core_streamon+0xf7/0x10f [videobuf2_common]
> uvc_queue_streamon+0x2e/0x41 [uvcvideo]
> uvc_ioctl_streamon+0x42/0x5c [uvcvideo]
> __video_do_ioctl+0x33d/0x42a
> video_usercopy+0x34e/0x5ff
> ? video_ioctl2+0x16/0x16
> v4l2_ioctl+0x46/0x53
> do_vfs_ioctl+0x50a/0x76f
> ksys_ioctl+0x58/0x83
> __x64_sys_ioctl+0x1a/0x1e
> do_syscall_64+0x54/0xde
>
>While there are not many references to this problem on mailing lists, it is
>reported on a regular basis on various Chromebooks (roughly 300 reports
>per month). The problem is relatively easy to reproduce by adding msleep()
>calls into the code.
>
>I tried to reproduce the problem with non-uvcvideo webcams, but was
>unsuccessful. I was unable to get Philips (pwc) webcams to work. gspca
>based webcams don't experience the problem, or at least I was unable to
>reproduce it (The gspa driver does not trigger sending USB messages in the
>open function, and otherwise uses the locking mechanism provided by the
>v4l2/vb2 core).
>
>I don't presume to claim that I found every issue, but this patch series
>should fix at least the major problems.
>
>The patch series was tested exensively on a Chromebook running chromeos-4.=
19
>and on a Linux system running a v5.8.y based kernel.
>
>v3:
>- In patch 5/5, add missing calls to usb_autopm_put_interface() and kfree()
>  to failure code path
>
>v2:
>- Added details about problem frequency and testing with non-uvc webcams
>  to summary
>- In patch 4/5, return EPOLLERR instead of -ENODEV on poll errors
>- Fix description in patch 5/5
>
>----------------------------------------------------------------
>Guenter Roeck (5):
>      media: uvcvideo: Cancel async worker earlier
>      media: uvcvideo: Lock video streams and queues while unregistering
>      media: uvcvideo: Release stream queue when unregistering video device
>      media: uvcvideo: Protect uvc queue file operations against disconnect
>      media: uvcvideo: Abort uvc_v4l2_open if video device is unregistered
>
> drivers/media/usb/uvc/uvc_ctrl.c   | 11 ++++++----
> drivers/media/usb/uvc/uvc_driver.c | 12 ++++++++++
> drivers/media/usb/uvc/uvc_queue.c  | 32 +++++++++++++++++++++++++--
> drivers/media/usb/uvc/uvc_v4l2.c   | 45 +++++++++++++++++++++++++++++++++=
+++--
> drivers/media/usb/uvc/uvcvideo.h   |  1 +
> 5 files changed, 93 insertions(+), 8 deletions(-)

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--tMbDGjvJuJijemkf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmIrr/cACgkQC+njFXoe
LGRA4g/+KvQi5uOxFenYGbM0J+jQavy4mhKYu8IFNgaYCI8WqT5DLfOBJD0f9Eci
9LmulNmiXU3jrlOonei+CPflTdFnk3IozSrPuy1wJzHek+DGPtA00ml0jKqgbFTl
BD1MJev6ollmCro9Jn/KnF49VruG6mmA8E8sr/VzbSUtoVyC0ZEJbUm1NFOcjHEO
Up3H5pnFJQBrNMcZb9FnvrOi6xMeN2R6fhhFilVwL+xqEuv3vXL28/3IAZ9yNDhG
qo84FNA1EL69WOkwdgSrXAPCEKucDMCD00DTGEZXr57xJ2uXnxuSFq5917umoL1p
M2FOqiHGNskfyWnHemBtGi4qehaslcjim9Jxw/zecuOISvbntayJptvh4rY5634Q
55xns3AokadO8ftkAgvsGmR3qLucDdBtCqKSPR9J35iNMYrY6WUg6IAcKmKI6bQT
F+466+7A/nY7CqNhafFNd9CpcKYUaDH398sVCzINtKoJjALLwHXJ+wnFDbIK086A
zzMzBsOgKitiJHZz8hnUt3EgOj4ZQ3RIonfzAJCZvznmkWzaRWUtLLf8yd0Y89mB
47xct01SNZBFKPQrsuk9WCvJHX50aLpcfkWSgS0hrjI7DsmRweemAuYYpEZzeHwu
4SHjsXe9dN+X1k0W9K3rYIGhwAz7X7qoTetITsiTvpEqGFn2RSc=
=Tavr
-----END PGP SIGNATURE-----

--tMbDGjvJuJijemkf--


--===============4323508093412331279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4323508093412331279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============4323508093412331279==--

