Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EA1445190
	for <lists+linux-uvc-devel@lfdr.de>; Thu,  4 Nov 2021 11:25:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1miZvj-0001q8-Lw; Thu, 04 Nov 2021 10:25:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <paul@teulu.org>) id 1miZvh-0001nP-P7
 for linux-uvc-devel@lists.sourceforge.net; Thu, 04 Nov 2021 10:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ij55tFshDz264oPS3yq+eqfiuLdkokYO/WQPh57rcmc=; b=GViKp3CByobWd0BzevhaX1fY9s
 BbFepJZYv3GwbmGbw6WMyw+dhc3z/fbDb+mKlKSRRH5X0OfsMviQKqiMoJY7PuWOuJy/euXUO5LH8
 2qsO+tJIBHoaqcoeeVh2fEzfs/1OrwlIR8rjl8xMh2xC5lo5ZMk5MuP0J1+sBc/Q+cr4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ij55tFshDz264oPS3yq+eqfiuLdkokYO/WQPh57rcmc=; b=WaT8Ndv4ohhkEr+W7avp0ytT3/
 NN1Ni1ppmygUksxhFQoMoo+NVrK9M23MWHoHXsVBhd1roU2ZBVFPN6xwwhq8e9Bt9LBKDJxz/DKfL
 qtIaiaG+oh+M4TllAnGRwjTik0U8cuGDLYmMNFBB0s5g2/p/znO//+35XZplmJgKLy5c=;
Received: from bee.birch.relay.mailchannels.net ([23.83.209.14])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miZvf-001HSv-Io
 for linux-uvc-devel@lists.sourceforge.net; Thu, 04 Nov 2021 10:25:08 +0000
X-Sender-Id: instrampxe0y3a|x-authuser|paul@teulu.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 4BFB38C0929
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu,  4 Nov 2021 10:16:09 +0000 (UTC)
Received: from cpanel-008-lon.hostingww.com (unknown [127.0.0.6])
 (Authenticated sender: instrampxe0y3a)
 by relay.mailchannels.net (Postfix) with ESMTPA id 25D328C0574
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu,  4 Nov 2021 10:16:07 +0000 (UTC)
X-Sender-Id: instrampxe0y3a|x-authuser|paul@teulu.org
Received: from cpanel-008-lon.hostingww.com (cpanel-008-lon.hostingww.com
 [35.177.91.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
 by 100.114.196.210 (trex/6.4.3); Thu, 04 Nov 2021 10:16:09 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: instrampxe0y3a|x-authuser|paul@teulu.org
X-MailChannels-Auth-Id: instrampxe0y3a
X-Illegal-Shelf: 63b712d27368a056_1636020969139_2655145684
X-MC-Loop-Signature: 1636020969139:2573911069
X-MC-Ingress-Time: 1636020969139
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=teulu.org; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ij55tFshDz264oPS3yq+eqfiuLdkokYO/WQPh57rcmc=; b=khZdKK2ahYHMGvNtdmshGHZmxJ
 aDo3gnFJ3z77YX2iKBeB75fYeVDdnlNlLpOfCsRwXPKS2LkWexFmtciTZaTczFgtmuDevA6XfWHJ3
 4q3rS6rcTqcExsaPRJ0yijVr1ne8drIQjUM1L2UpsthF1+MSbAQzCA2QUzs40wryQYum5WLVP/a7O
 qMV4bzz/nGoFUmx+9ohXfU1zE/AXN/MHogTG+y/0aU4RcJEDifzb+Bh9KafdHWcgfusc5VlbPCEaP
 PDFLVKKDGYK5CHpiNijSPmf2J8CsNGkH1tpJEQpvfz86myYDOo4mjT/uLWVL5j3MuGVgpGl3CMjqu
 7sti45Pw==;
Received: from 67.26.169.217.in-addr.arpa ([217.169.26.67]:33882
 helo=[192.168.1.161])
 by cpanel-008-lon.hostingww.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <paul@teulu.org>) id 1miZmu-0007iX-BQ
 for linux-uvc-devel@lists.sourceforge.net; Thu, 04 Nov 2021 21:16:06 +1100
References: <5686edef-5f8d-d01c-5057-86c6f071becf@teulu.org>
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
From: Paul Jewell <paul@teulu.org>
X-Forwarded-Message-Id: <5686edef-5f8d-d01c-5057-86c6f071becf@teulu.org>
Message-ID: <f247b2a1-3ce5-c04a-37ca-14f007af5688@teulu.org>
Date: Thu, 4 Nov 2021 10:16:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <5686edef-5f8d-d01c-5057-86c6f071becf@teulu.org>
Content-Language: en-GB
X-OutGoing-Spam-Status: No, score=-0.2
X-AuthUser: paul@teulu.org
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Further to my last message: I have a gentoo based laptop
 which
 is running 5.13.8 still. When I plug the camera into it, I get the same error
 message about "Failed to query...", but there is a picture [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: teulu.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.209.14 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [23.83.209.14 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1miZvf-001HSv-Io
Subject: [linux-uvc-devel] Fwd: Larmtek camera issue
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

Further to my last message: I have a gentoo based laptop which is 
running 5.13.8 still. When I plug the camera into it, I get the same 
error message about "Failed to query...", but there is a picture in the 
zoom client from the camera. This suggests the issue is related to 
something else other than the uvccamera code, and the error message is 
not an indication of this problem. I would still welcome any suggestions 
you may have!

Thanks,
Paul

-------- Forwarded Message --------
Subject: Larmtek camera issue
Date: Thu, 4 Nov 2021 10:02:43 +0000
From: Paul Jewell <paul@teulu.org>
To: linux-uvc-devel@lists.sourceforge.net

Good morning!

First of all, I should point out that I have searched across the 
internet for others with this issue, but to no avail.

I have a LarmTek camera USB Webcam 1080P - this is the link: 
www.amazon.co.uk/gp/product/B07VTPQ9NQ

It worked under both Linux and Windows 10 (dual-booted - I need the 
latter for work from home) from the time I bought it until recently. It 
is permanently plugged into my desktop computer.

I started the zoom client yesterday, and was greeted by a blank screen. 
The camera active light comes on, but no picture is available in the client.

If I reboot the computer, then plug the camera in I get the following:

---------------------8<--------------------------

Nov  4 09:42:38 tristan kernel: usb 1-1: new high-speed USB device 
number 5 using xhci_hcd
Nov  4 09:42:38 tristan kernel: usb 1-1: New USB device found, 
idVendor=0525, idProduct=a4a2, bcdDevice=30.00
Nov  4 09:42:38 tristan kernel: usb 1-1: New USB device strings: Mfr=1, 
Product=2, SerialNumber=3
Nov  4 09:42:38 tristan kernel: usb 1-1: Product: HiEthernet
Nov  4 09:42:38 tristan kernel: usb 1-1: Manufacturer: Huawei
Nov  4 09:42:38 tristan kernel: usb 1-1: SerialNumber: 1234567891
Nov  4 09:42:42 tristan kernel: usb 1-1: USB disconnect, device number 5
Nov  4 09:42:43 tristan kernel: usb 1-1: new high-speed USB device 
number 6 using xhci_hcd
Nov  4 09:42:44 tristan kernel: usb 1-1: New USB device found, 
idVendor=12d1, idProduct=4321, bcdDevice= 4.09
Nov  4 09:42:44 tristan kernel: usb 1-1: New USB device strings: Mfr=1, 
Product=2, SerialNumber=3
Nov  4 09:42:44 tristan kernel: usb 1-1: Product: UVC Camera
Nov  4 09:42:44 tristan kernel: usb 1-1: Manufacturer: Ruision
Nov  4 09:42:44 tristan kernel: usb 1-1: SerialNumber: 20200416
Nov  4 09:42:44 tristan kernel: usb 1-1: Found UVC 1.10 device UVC 
Camera (12d1:4321)
Nov  4 09:42:44 tristan kernel: usb 1-1: Failed to query (GET_INFO) UVC 
control 12 on unit 2: -32 (exp. 1).
Nov  4 09:42:44 tristan kernel: input: UVC Camera: UVC Camera as 
/devices/pci0000:00/0000:00:01.2/0000:02:00.0/0000:03:08.0/0000:06:00.1/usb1/1-1/1-1:1.0/input/input23

---------------------8<--------------------------

uname -a gives:

Linux tristan 5.14.15-gentoo #2 SMP Thu Nov 4 09:38:46 GMT 2021 x86_64 
AMD Ryzen 9 3950X 16-Core Processor AuthenticAMD GNU/Linux

- The system runs gentoo, and is up to date.
- I am using OpenRC, not systemd, and for sound I am using pulseaudio 
(in case that is relevant).
- I still have kernel images in my boot directory for 5.13.8, 5.14.6 and 
5.14.9. All of these kernels have the same result.
- I don't see any other error messages in my logs
- The camera continues to work under Windows 10, so I don't believe it 
is a hardware issue.

Please can you advise me how I can debug this issue? Unfortunately I am 
not a heavy user of the camera, so I can't pinpoint exactly when the 
problem started.

Many thanks for your continued development of the code to manage these 
devices, and for supporting me with this issue.

-- 
Paul


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
