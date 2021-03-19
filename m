Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA50B341B8A
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 19 Mar 2021 12:32:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tGI8y0C/u/3/k66oBbXUCgUnGXtnFzxT+r4dx9LXEKU=; b=ZtIw4Oq1Dg0w6UaT3EMSRBeyCr
	i3MyB+DyCkyQ1tomUJc3LRBmP3VbArVScQzRHl2fQlkRef+hHAYgYBDtYNdfIgTuf7OwQB3vp+mjQ
	xXjYXvLHFLGAPSzg6KzhuNGxqlwE79PxBA2fdWHbSdrbnMtMbFE3HPCIEBqGTyiqRMh0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1lNDLo-0000AF-PX; Fri, 19 Mar 2021 11:31:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jkinross@codezilch.com>) id 1lNDLn-00009w-Ck
 for linux-uvc-devel@lists.sourceforge.net; Fri, 19 Mar 2021 11:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zSnWp5kYZ1IEVjqvGHSUh3o+LSEoiMh+SEzr5/KyeI4=; b=bVhp4vjzs6nGWt3jO/5hLt61NS
 +3f5Pg+trO9KfHG47WHaph1hsBzlWuj+VEDrZnjb5JZ6KDCQmBaIg+gltcQSWwZ6sL2z4EeH/Ay9M
 Agn8nvtIsMVVb13++7gL1prEfKHpNPfQlYGQUGcuDp7+AEn/4/4SDbHX/JcqTXBKLqY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zSnWp5kYZ1IEVjqvGHSUh3o+LSEoiMh+SEzr5/KyeI4=; b=e
 b51D9Ze8O2VEHBiHX0XKT785kkiKLAHE93t2BS3TlfRXB28FTx8obdBwVSPsr3f0weh1HhgFrWsgv
 dayyJtpEJb1mEeYI2I4WAd+5Mqh4BpmT6ZeawfghzPOfTQ+wGbohPeq+XKq9T9194fv/ZIX24dJbY
 ome3NM+IhuTPFgxQ=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lNDLa-0000wZ-4C
 for linux-uvc-devel@lists.sourceforge.net; Fri, 19 Mar 2021 11:31:29 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 22FDB5C0094
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 19 Mar 2021 07:14:15 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 07:14:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codezilch.com;
 h=to:from:subject:message-id:date:mime-version:content-type
 :content-transfer-encoding; s=fm2; bh=zSnWp5kYZ1IEVjqvGHSUh3o+LS
 EoiMh+SEzr5/KyeI4=; b=lEow3rUawOkuYMxEQDtqVfBduw0gBS8VBENlZkFDhs
 JT8UIn+sWJjtEhPaBj05r5ZLxU0kMl2NPIh4+4QMC6xLOwj5NevpZaUDjUEs6lB6
 pk1Prype1AVJRnPvPRHtxnNQo4e70Mh/NbOyBPGgOY55YfxR+8hKw7TIhdFfSBD5
 yMHGAPdvNrvcNta7PmieS70aKCACt61pPGBExGu13cquGVNev9IFaUL05C3AZki/
 3lvvapQtzYx9KSnql4yxSSUvmPXhqvSOt0/E+G8OjoZFL60L9jOj/0PvwnIg3M5K
 Iy+FNjFEkRLmIuKEcnnIhbtiUz0My310n0MFNEo1JQCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zSnWp5
 kYZ1IEVjqvGHSUh3o+LSEoiMh+SEzr5/KyeI4=; b=BZcNzQ/nPfqRfzrJWXPnyH
 6syEtoDPae6zjAau2sZEPklPQ+9ejl+qpnX2t+t2oYmnb+MbKeOJ4ZAeQUeBxsDh
 FfjljhpNKYISn/iUkK+6A4ojU6mUQF+s8RaoAUImdsai4MvKrhURH1FQxFWkl5yu
 4XZ2ZQcWmHRZcasecbnvDz2wNCG2aH3sBrf0/Lp2Qv3PBvBNwwEcytXt8pUiKfSg
 J6Kz6hgp87uAQm467F2RJQ70VCDXBO/4E52OwPZOihdsyUnbmHwkFAcQk7+MnGoH
 b4XvBFdT+cmSRmt4jUAVkPhn71nz5Ccr6TMJvQLq0N17dM2LAiwUEh64gM+nqIuw
 ==
X-ME-Sender: <xms:hodUYO_WeLtirNwvHIu8sVQ_TAiN79aru-8T5XPYKg0M53bmFYWGOQ>
 <xme:hodUYOtZ2BGqpchGpljmEY8XNpk4S2HUtuxcIK6gFxmktilXoHxfJACO9qhxaBGrH
 IMB_UH8b2FyXtT0OQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefkedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefvhffukffffgggtgfgsehtjeertd
 dtfeejnecuhfhrohhmpeflvghffhhrvgihucfmihhnrhhoshhsuceojhhkihhnrhhoshhs
 segtohguvgiiihhltghhrdgtohhmqeenucggtffrrghtthgvrhhnpeelvdekjeetleffff
 dvteevveeukeeihfegffdvfedugfeuffffieevkeevvdeitdenucfkphepgeejrdegledr
 hedvrdduuddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepjhhkihhnrhhoshhssegtohguvgiiihhltghhrdgtohhm
X-ME-Proxy: <xmx:hodUYEDD6596NvkU9a_2Vk9zK-r5vN2joyvsdILbUKurXkzuzOfx1Q>
 <xmx:hodUYGcOsayQogrD-7TW6p1nTlGyeDJd2QGnzVXc4J8FCtsSJDmbZA>
 <xmx:hodUYDNwi29PnP9sq8VYk2a7fD8Ry4FfApsc-v3ysgiqG5pwPVTvWQ>
 <xmx:h4dUYJaQ7UVTzNerwBn-9Mg1R03efcdvEkqA0n2bzY05sIblDUza2Q>
Received: from [192.168.1.10] (047-049-052-110.biz.spectrum.com [47.49.52.110])
 by mail.messagingengine.com (Postfix) with ESMTPA id 90365108005C
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 19 Mar 2021 07:14:14 -0400 (EDT)
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <9973e14d-9b83-0d20-f69f-349b487e9f2e@codezilch.com>
Date: Fri, 19 Mar 2021 06:14:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lNDLa-0000wZ-4C
Subject: [linux-uvc-devel] j5 JVCU100 web cam quirks
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
From: Jeffrey Kinross via Linux-uvc-devel
 <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Jeffrey Kinross <jkinross@codezilch.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

I recently bought a j5 JVCU100 web cam and had to apply a quirk of 
0x0104 to get it to work.

Below is the output.

Thanks,
Jeff


Mar 19 06:01:00 jupiter kernel: usb 1-9.4.4.4: USB disconnect, device 
number 19
Mar 19 06:01:01 jupiter kernel: usbcore: deregistering interface driver 
uvcvideo
Mar 19 06:01:09 jupiter kernel: usbcore: registered new interface driver 
uvcvideo
Mar 19 06:01:09 jupiter kernel: USB Video Class driver (1.1.1)
Mar 19 06:01:28 jupiter kernel: usb 1-9.4.4.4: new high-speed USB device 
number 20 using xhci_hcd
Mar 19 06:01:28 jupiter kernel: usb 1-9.4.4.4: New USB device found, 
idVendor=0711, idProduct=3108, bcdDevice= 0.10
Mar 19 06:01:28 jupiter kernel: usb 1-9.4.4.4: New USB device strings: 
Mfr=1, Product=2, SerialNumber=3
Mar 19 06:01:28 jupiter kernel: usb 1-9.4.4.4: Product: j5 WebCam JVCU100
Mar 19 06:01:28 jupiter kernel: usb 1-9.4.4.4: Manufacturer: HD 2MP WEBCAM
Mar 19 06:01:28 jupiter kernel: usb 1-9.4.4.4: SerialNumber: 
V20201016003RSJXF23
Mar 19 06:01:28 jupiter kernel: uvcvideo: Found UVC 1.00 device j5 
WebCam JVCU100 (0711:3108)
Mar 19 06:01:28 jupiter kernel: uvcvideo: Forcing device quirks to 0x104 
by module parameter for testing purpose.
Mar 19 06:01:28 jupiter kernel: uvcvideo: Please report required quirks 
to the linux-uvc-devel mailing list.
Mar 19 06:01:28 jupiter kernel: input: j5 WebCam JVCU100: j5 WebCam JV 
as 
/devices/pci0000:00/0000:00:14.0/usb1/1-9/1-9.4/1-9.4.4/1-9.4.4.4/1-9.4.4.4:1.0/input/input28




_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
