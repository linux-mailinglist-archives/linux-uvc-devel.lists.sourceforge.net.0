Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB5C777EB
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 27 Jul 2019 11:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:Date:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WjPxcPIfYeDTn2o8VuRaS89/zfde+cwpYJRMuKGrG8s=; b=eNl1dkU8e+1OW9unTfgunIrF98
	39t6hAYJK1fFldHtEYqtFo1ih5bogs4uDSYFXDyPH8Gu/txvup/OvaSrGBU2/+uiKPr9Yt6/BhB7B
	by9w7K5gYTGu87f9nTl3J0dO7FAoD5EGdne/HtRUX20HefxsZcOT1THi1ftEMe1m2pAM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hrJ6y-0006fu-JF; Sat, 27 Jul 2019 09:35:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <felix@kngnt.org>) id 1hrJ6x-0006fm-1X
 for linux-uvc-devel@lists.sourceforge.net; Sat, 27 Jul 2019 09:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H1j1C1yMFyxuGF+hTJPSfDslv4MR0y5pQeJfh7uiVX8=; b=ld0kE68v3OTRihnIlAXyVB7Lx
 +/MxSgNkYk8/q/AGoCdEtyW+bU8jiUQMQGa6AYdzDvSkOfak3SmUAvIs0se2DJB5YfCn7636RMQdn
 dS556fOFeElXp4IuV3tnutfi6Dqqc3dpi6kxNYcuKnsRX8Gxf+FZLo02ksQhiatWxkIIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Subject:To:From:Date:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H1j1C1yMFyxuGF+hTJPSfDslv4MR0y5pQeJfh7uiVX8=; b=b
 K6M5msFmAKOp2IRGpYBn2/qcz6sZcAarHEOQ9OWDi4Gi3CSdzYsIWO+OtschMQorRMKS48GM/ae5Z
 eoJjJonW9Dm0fWlXEsjhgNLQ+azTldcfTSme/xfjSWUFcXPYvM4zTBtDdD0Zhn4I0b7oRbdaXCCEc
 QcaVb1tsxuuoRqeM=;
Received: from smtpq3.tb.mail.iss.as9143.net ([212.54.42.166])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hrJ6u-006ScK-A6
 for linux-uvc-devel@lists.sourceforge.net; Sat, 27 Jul 2019 09:35:30 +0000
Received: from [212.54.42.137] (helo=smtp6.tb.mail.iss.as9143.net)
 by smtpq3.tb.mail.iss.as9143.net with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.90_1)
 (envelope-from <felix@kngnt.org>) id 1hrIpv-0004Tg-NT
 for linux-uvc-devel@lists.sourceforge.net; Sat, 27 Jul 2019 11:17:55 +0200
Received: from 94-209-183-118.cable.dynamic.v4.ziggo.nl ([94.209.183.118]
 helo=mail.kngnt.org) by smtp6.tb.mail.iss.as9143.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.90_1)
 (envelope-from <felix@kngnt.org>) id 1hrIpv-00009W-JT
 for linux-uvc-devel@lists.sourceforge.net; Sat, 27 Jul 2019 11:17:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kngnt.org; s=mail;
 t=1564219075;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=H1j1C1yMFyxuGF+hTJPSfDslv4MR0y5pQeJfh7uiVX8=;
 b=NfCgb1ZOOqJHK1vuzrQiVn9uaq3NqMvoLX0kUHVkDF48eqdfL4xN2Z8oqG0QQED0RtiUrS
 x7voeODM/ZCXS5PeyDuCcOx1gIhtxf0iJ6VGCj2L+iOkPjxnG8F38jNRvkVkB9t9j4QrYr
 1bKYthJzPdZgiqZKypsDwe7+pUVKfYU=
MIME-Version: 1.0
Date: Sat, 27 Jul 2019 11:17:55 +0200
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <04e8ce9dfc330e1f3152fae01ecfd4fa@kngnt.org>
X-Sender: felix@kngnt.org
X-SourceIP: 94.209.183.118
X-Authenticated-Sender: f.rubiodalmau@ziggo.nl (via SMTP)
X-Ziggo-spambar: /
X-Ziggo-spamscore: 0.0
X-Ziggo-spamreport: CMAE Analysis: v=2.3 cv=bK9o382Z c=1 sm=1 tr=0
 a=KDOoBKh8T/kja8HrlTi2+A==:17 a=9+rZDBEiDlHhcck0kWbJtElFXBc=:19
 a=kj9zAlcOel0A:10 a=0o9FgrsRnhwA:10 a=3RLjEyHY_oBm2vqG3EAA:9
 a=CjuIK1q_8ugA:10
X-Ziggo-Spam-Status: No
X-Spam-Status: No
X-Spam-Flag: No
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
X-Headers-End: 1hrJ6u-006ScK-A6
Subject: [linux-uvc-devel] advice required: uvcvideo in raspberry pi reports
 "no space left on device"
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
From: Felix Rubio via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Felix Rubio <felix@kngnt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi all,

     I am trying to get clarity on some behavior I am observing on a 
Raspberry Pi 3B+. If this is not the place where to send it, please let 
me know. The current situation is:

         a) shall I connect 2 USB cameras (from the same manufacturer, 
Microdia, device ID: 0c45:6340), as soon as I setup the streaming (using 
V4L2 API) I get the error "no space left on device". After a search on 
the internet this might be due to a lack of bandwidth on the USB bus, 
but measurement (on point c) ) show I should be on the safe side.

         b) shall I connect two different cameras (one from the previous 
ones and a Logitech 046d:082d)) the program works (but after some time, 
ranging from half to 6 hours), I will get a timeout on a "select" call 
(the simplified call of pselect).

         c) In the case with two different cameras, I am getting the 
following readings using usbtop, which I find weird considering I am 
setting the cameras with the same resolution, the same format, etc:
                                            To device       From device
             Device ID 4 :                 122.37 kb/s     1014.75 kb/s
             Device ID 5 :                 124.03 kb/s     124.03 kb/s

             Bus 001 Device 004: ID 0c45:6340 Microdia Camera
             Bus 001 Device 005: ID 046d:082d Logitech, Inc. HD Pro 
Webcam C920

As I have a Raspberry Pi 3B+, the usb controller should be able to 
effectively handle up to (USB 2.0) 43 MBps, so I am really far from the 
limit (~200 kBps tops).

     Does anybody have a hint on how can I start debugging this issue, to 
determine if it is a hardware USB issue, or an issue with the uvcvideo 
driver?

     Thank you,
     Felix



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
