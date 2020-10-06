Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D20285084
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  6 Oct 2020 19:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YeG5xslQVJSiMrS7j8wETCQbcXp1khViOJ3QSbqJkY4=; b=ZxC5P8i5Gvxk5fk0HtPbWt0tgK
	eFRx0OXlAI66QfcfvxvIPvZunTbw9KKY6LXHpOPMNKBpWHshLqm1pcvNgyVdLpfhuu87aUnGCH9Wo
	pnKGOWepiqCJNZf+lPhm5uAxYmbx6rLXBbo5foUbMffU6mbTz+TmR/sFFjLbF5VHxRpo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kPqWn-0007rb-Qs; Tue, 06 Oct 2020 17:13:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <r3pek@r3pek.org>) id 1kPqWm-0007rU-Gj
 for linux-uvc-devel@lists.sourceforge.net; Tue, 06 Oct 2020 17:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sW7JyloToDDgEkLINkrII5wlwnOlUHcLsdhOwLs1oG0=; b=Kf3E1RgwhAtF66jUpu5wGF2Q/+
 vcFYUEq7dIASJ+6cWJ9B88STPk0yYg9DENYUqxxYLhY9mzCQiA1UFz1cPb3276vH8S33PFJXQstXi
 LDq9CrWNde5xLRg/L2jbGt5R00f9uk5dEM/D0kXlBzP1p7qBBKCVvWZKc/pMWiZvVfcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sW7JyloToDDgEkLINkrII5wlwnOlUHcLsdhOwLs1oG0=; b=i
 R9yVx/0wg0MFfA4gnAudn6iyJp7Qpb9gDRwmyAkZe9aqaOKPPHt5gNi0xh6hO8j8zvdYeCr21oz6k
 JmHPWIk1W4CItmRmW6Y25ZCtl2TzweCh8yH6JDn8auwYzhnlUe03sYFPOwvleT/S0fP+0718kYEK9
 dMwqOgQvF+IanmQg=;
Received: from mail.r3pek.org ([138.201.244.101])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kPqWg-0051Ht-Ow
 for linux-uvc-devel@lists.sourceforge.net; Tue, 06 Oct 2020 17:13:28 +0000
Received: (Haraka outbound); Tue, 06 Oct 2020 17:56:36 +0100
Authentication-Results: mail.r3pek.org; iprev=pass; auth=pass (plain);
 spf=fail smtp.mailfrom=r3pek.org
Received-SPF: Fail (mail.r3pek.org: domain of r3pek.org does not designate
 178.166.49.12 as permitted sender) receiver=mail.r3pek.org; identity=mailfrom;
 client-ip=178.166.49.12 helo=trinity.r3pek.org;
 envelope-from=<r3pek@r3pek.org>
Received-SPF: None (mail.r3pek.org: domain of trinity.r3pek.org does not
 designate 178.166.49.12 as permitted sender) receiver=mail.r3pek.org;
 identity=helo; client-ip=178.166.49.12 helo=trinity.r3pek.org;
 envelope-from=<r3pek@r3pek.org>
X-Haraka-FCrDNS: 12.49.166.178.rev.vodafone.pt
Received: from trinity.r3pek.org (12.49.166.178.rev.vodafone.pt
 [178.166.49.12]) by mail.r3pek.org (Haraka/2.8.24) with ESMTPSA id
 740ABDC7-513C-4956-818D-987CDC1D908D.1
 envelope-from <r3pek@r3pek.org> (authenticated bits=0)
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 verify=FAIL);
 Tue, 06 Oct 2020 17:56:36 +0100
Message-ID: <3a6eed86d895867356dd72889985ec63870d0ece.camel@r3pek.org>
To: linux-uvc-devel@lists.sourceforge.net
Date: Tue, 06 Oct 2020 17:56:28 +0100
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
X-p0f-Result: os="Linux 2.2.x-3.x" link_type="DSL" distance=12 total_conn=1
X-Haraka-ASN: 12353 178.166.0.0/17
DKIM-Signature: v=1; a=rsa-sha256;
 bh=1yeaDmWSLBcstEpu+Db9bBTvwQJdGyQSal120MDQH70=; c=relaxed/simple; d=r3pek.org;
 h=from:subject:to:message-id:date; s=dkim;
 b=TcoMEOvogsrHqcb7kakchN4MvPHVQ67X593Vi+WQLUXhOkTxcWUxVXq/kY8Z1DEUv3F9PWoEgzEvW/9ZFQE7CpTRmRlnt0qeGu10vp63im+W9Ysh3t/tcAFbs6bftVOd666/MqeAIHoP9UDC9xzwP6EZt9yw/QHKi/6UXmdBtLE=
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kPqWg-0051Ht-Ow
Subject: [linux-uvc-devel] Warning while plugging in a "Generalplus
 Technology Inc. 808 Camera"
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
From: Carlos Mogas da Silva via Linux-uvc-devel
 <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Carlos Mogas da Silva <r3pek@r3pek.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi list.

I recently acquired the mentioned camera (lsusb output. usb id is 1b3f:2002) to retire my old
Logitech QuickCam, and while it does work fine, it prints a stack trace whenever I attach the camera
to the computer. I'm currently running an updated Fedora 32.
I'm gonna leave the trace bellow but if this isn't the right place to report the problem, just point
me in the right direction.

Thanks in advance.
Carlos Mogas da Silva

[    3.989726] uvcvideo: Found UVC 1.00 device GENERAL WEBCAM (1b3f:2002)
[    3.990434] uvcvideo: Failed to query (GET_INFO) UVC control 2 on unit 1: -32 (exp. 1).
[    3.997137] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[    4.001545] uvcvideo 2-1.5.2:1.0: Entity type for entity Processing 5 was not initialized!
[    4.001547] uvcvideo 2-1.5.2:1.0: Entity type for entity Camera 1 was not initialized!
[    4.001572] ------------[ cut here ]------------
[    4.001579] WARNING: CPU: 4 PID: 572 at drivers/media/mc/mc-entity.c:669
media_create_pad_link+0x172/0x1a0 [mc]
[    4.001580] Modules linked in: x86_pkg_temp_thermal intel_powerclamp coretemp iTCO_wdt kvm_intel
intel_pmc_bxt iTCO_vendor_support uvcvideo(+) videobuf2_vmalloc kvm snd_usb_audio(+)
videobuf2_memops videobuf2_v4l2 videobuf2_common snd_hda_codec_realtek videodev snd_usbmidi_lib
snd_hda_codec_generic ledtrig_audio snd_hda_codec_hdmi irqbypass raid456 rapl joydev snd_rawmidi
snd_hda_intel async_raid6_recov snd_intel_dspcfg async_memcpy async_pq snd_hda_codec eeepc_wmi
async_xor async_tx asus_wmi intel_cstate nvidia(POE+) sparse_keymap mc snd_hda_core rfkill
intel_uncore snd_hwdep snd_seq video snd_seq_device wmi_bmof pcspkr snd_pcm i2c_i801 i2c_smbus
snd_timer drm_kms_helper snd lpc_ich cec soundcore mei_me mei auth_rpcgss binfmt_misc drm sunrpc
ip_tables crct10dif_pclmul crc32_pclmul crc32c_intel mxm_wmi ghash_clmulni_intel e1000e
firewire_ohci firewire_core crc_itu_t wmi uas usb_storage fuse razermouse(OE) razerkbd(OE)
[    4.001605] CPU: 4 PID: 572 Comm: systemd-udevd Tainted: P           OE     5.8.12-
200.fc32.x86_64 #1
[    4.001606] Hardware name: System manufacturer System Product Name/P9X79, BIOS 4701 05/06/2014
[    4.001609] RIP: 0010:media_create_pad_link+0x172/0x1a0 [mc]
[    4.001611] Code: 5f c3 0f 0b 48 83 c4 08 b8 ea ff ff ff 5b 5d 41 5c 41 5d 41 5e 41 5f c3 0f 0b
b8 ea ff ff ff eb d2 0f 0b b8 ea ff ff ff eb c9 <0f> 0b b8 ea ff ff ff eb c0 0f 0b b8 ea ff ff ff eb
b7 b8 f4 ff ff
[    4.001611] RSP: 0000:ffff9df300a23ae8 EFLAGS: 00010246
[    4.001612] RAX: 0000000000000000 RBX: ffff8c08969fc018 RCX: 0000000000000000
[    4.001613] RDX: ffff8c08ab775e08 RSI: 0000000000000000 RDI: ffff8c08969fc018
[    4.001614] RBP: ffff8c08969fc018 R08: 0000000000000003 R09: ffff8c08a853fb18
[    4.001614] R10: 0000000000000000 R11: 0000000000000001 R12: ffff8c08a7438e18
[    4.001615] R13: 0000000000000000 R14: ffff8c08ab775c00 R15: 0000000000000000
[    4.001616] FS:  00007eff803ddb80(0000) GS:ffff8c08afd00000(0000) knlGS:0000000000000000
[    4.001617] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    4.001618] CR2: 0000559e157ff7b8 CR3: 0000000429edc006 CR4: 00000000000606e0
[    4.001619] Call Trace:
[    4.001628]  uvc_mc_register_entities+0x163/0x1f1 [uvcvideo]
[    4.001632]  uvc_probe.cold+0x730/0xbce [uvcvideo]
[    4.001637]  ? usb_probe_interface+0xe2/0x2a0
[    4.001638]  usb_probe_interface+0xe2/0x2a0
[    4.001641]  really_probe+0x2cd/0x400
[    4.001643]  driver_probe_device+0xe1/0x150
[    4.001645]  device_driver_attach+0xa1/0xb0
[    4.001646]  __driver_attach+0x8a/0x150
[    4.001648]  ? device_driver_attach+0xb0/0xb0
[    4.001649]  ? device_driver_attach+0xb0/0xb0
[    4.001650]  bus_for_each_dev+0x64/0x90
[    4.001652]  bus_add_driver+0x12b/0x1e0
[    4.001653]  driver_register+0x8b/0xe0
[    4.001656]  usb_register_driver+0x84/0x120
[    4.001658]  ? 0xffffffffc1a52000
[    4.001661]  uvc_init+0x26/0x1000 [uvcvideo]
[    4.001664]  do_one_initcall+0x46/0x200
[    4.001667]  ? _cond_resched+0x16/0x40
[    4.001669]  ? kmem_cache_alloc_trace+0x167/0x220
[    4.001672]  ? do_init_module+0x23/0x250
[    4.001673]  do_init_module+0x5c/0x250
[    4.001675]  __do_sys_init_module+0x121/0x150
[    4.001678]  do_syscall_64+0x4d/0x90
[    4.001680]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[    4.001681] RIP: 0033:0x7eff8150745e
[    4.001683] Code: 48 8b 0d 3d 0a 0c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00
00 90 f3 0f 1e fa 49 89 ca b8 af 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 0a 0a 0c 00 f7
d8 64 89 01 48
[    4.001684] RSP: 002b:00007fffb3dbaaa8 EFLAGS: 00000246 ORIG_RAX: 00000000000000af
[    4.001685] RAX: ffffffffffffffda RBX: 0000559e15bc75b0 RCX: 00007eff8150745e
[    4.001686] RDX: 00007eff8115e95d RSI: 0000000000033e3e RDI: 0000559e164ae430
[    4.001686] RBP: 0000559e164ae430 R08: 0000000000000000 R09: 00007fffb3dba78e
[    4.001687] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000000
[    4.001687] R13: 00007eff8115e95d R14: 0000559e157fc4f0 R15: 0000559e157fa950
[    4.001689] ---[ end trace 663360dc7affe058 ]---
[    4.001689] uvcvideo: Failed to create links for entity 5
[    4.001690] uvcvideo: Failed to register entities (-22).



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
