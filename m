Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9011544518C
	for <lists+linux-uvc-devel@lfdr.de>; Thu,  4 Nov 2021 11:20:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1miZr0-0003DK-1H; Thu, 04 Nov 2021 10:20:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <paul@teulu.org>) id 1miZqz-0003DE-51
 for linux-uvc-devel@lists.sourceforge.net; Thu, 04 Nov 2021 10:20:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GUrDWJyaCiiX3IzjTN2UQqK45P0Sx9O7QJ2Iequs5aE=; b=kM9QSKrckwfDqUfG0w8w6kXiKH
 gWoIozFXgyMSJHDoWW3klWu3NK7gFTW1CVCef3rhI87+UwlPECnSnNW7x7p3xdSHHJd/UUjfsnFDd
 RMWNfxTXdjWQ2abTfrscaNLIZ1KWsuc3ogrjjJwW+N2Qj/IglU4RDdV+kt1RyachaDhw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GUrDWJyaCiiX3IzjTN2UQqK45P0Sx9O7QJ2Iequs5aE=; b=S
 /fD31gJkBrSigbIvGJnAijTatJQpMGCx1pCfoOSTgv0GC0RHFA09/17PUS3Ho0Gm4XWKbFtLOAsEN
 kVLu6uBJT6pGPkh46Z4TmSZJbrNxERc2aK1jJ4JCqEpjUNfEVLuGpR3IuBUNHgppLZEjYtGVbkCJ3
 NjMEVjpZ4inRTBTU=;
Received: from hamster.birch.relay.mailchannels.net ([23.83.209.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miZqw-0004qb-NF
 for linux-uvc-devel@lists.sourceforge.net; Thu, 04 Nov 2021 10:20:17 +0000
X-Sender-Id: instrampxe0y3a|x-authuser|paul@teulu.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 266578209FF
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu,  4 Nov 2021 10:02:51 +0000 (UTC)
Received: from cpanel-008-lon.hostingww.com (unknown [127.0.0.6])
 (Authenticated sender: instrampxe0y3a)
 by relay.mailchannels.net (Postfix) with ESMTPA id 52F538212D5
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu,  4 Nov 2021 10:02:50 +0000 (UTC)
X-Sender-Id: instrampxe0y3a|x-authuser|paul@teulu.org
Received: from cpanel-008-lon.hostingww.com (cpanel-008-lon.hostingww.com
 [35.177.91.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
 by 100.97.65.133 (trex/6.4.3); Thu, 04 Nov 2021 10:02:51 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: instrampxe0y3a|x-authuser|paul@teulu.org
X-MailChannels-Auth-Id: instrampxe0y3a
X-Trade-Average: 5d57b9542e1a4e1d_1636020170903_2943787374
X-MC-Loop-Signature: 1636020170903:2211953676
X-MC-Ingress-Time: 1636020170902
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=teulu.org; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GUrDWJyaCiiX3IzjTN2UQqK45P0Sx9O7QJ2Iequs5aE=; b=gMSRw+v9xbWwq04ACvtE4U2D1K
 Q3drFqjG0GsMNlbR3ui0BEYtvNCXvHzedQkPy6LeMS9IhZNwFFAhtxwLR6ioBYDN+4uUA6J895zac
 XsgQ3PFwkfnzaFHBAUCoMTIpHjwWxWF6pvM10gruH0vLqOFqoQxyXaczo5SHnAhXcY8TrJ/CXeLWo
 FpqfOE8B03FFWlawL167KYXJNF+3TtQXZ7b7390g0/5ds+C+KSJYb6GPyH6IbZaRx7yifA8L0ItGk
 wrSmTp5Rp+T7hhzYAy18jeHqvpmh/pBHvMt3Hlq9n1xjLLGNd0nDouvSg78hCFVX6fuwDryquzdcL
 fLN061Jg==;
Received: from 67.26.169.217.in-addr.arpa ([217.169.26.67]:33878
 helo=[192.168.1.161])
 by cpanel-008-lon.hostingww.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <paul@teulu.org>) id 1miZa2-0004iy-KS
 for linux-uvc-devel@lists.sourceforge.net; Thu, 04 Nov 2021 21:02:48 +1100
To: linux-uvc-devel@lists.sourceforge.net
From: Paul Jewell <paul@teulu.org>
Message-ID: <5686edef-5f8d-d01c-5057-86c6f071becf@teulu.org>
Date: Thu, 4 Nov 2021 10:02:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Language: en-GB
X-OutGoing-Spam-Status: No, score=-0.2
X-AuthUser: paul@teulu.org
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good morning! First of all, I should point out that I have
 searched across the internet for others with this issue, but to no avail.
 I have a LarmTek camera USB Webcam 1080P - this is the link:
 www.amazon.co.uk/gp/product/B07VTPQ9NQ
 Content analysis details:   (2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: teulu.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [23.83.209.80 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.0 HAS_X_OUTGOING_SPAM_STAT Has header claiming outbound spam scan
 - why trust the results?
X-Headers-End: 1miZqw-0004qb-NF
Subject: [linux-uvc-devel] Larmtek camera issue
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
