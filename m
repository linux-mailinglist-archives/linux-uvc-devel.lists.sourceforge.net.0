Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 827D4482CB7
	for <lists+linux-uvc-devel@lfdr.de>; Sun,  2 Jan 2022 21:39:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1n47dS-0000TT-JL; Sun, 02 Jan 2022 20:39:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <felix.schwarz@oss.schwarz.eu>) id 1n47dR-0000TJ-KG
 for linux-uvc-devel@lists.sourceforge.net; Sun, 02 Jan 2022 20:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q2AgS0qLbOkkrmROY61BuHjnmJGIW+NpZlOrL634pbM=; b=MMVC27PP20nQTPXv5zwhzLaAx8
 JjWo53oKKjBHPoA0PX8BSPuyOJtX8RTdCLuRo95z/OlfpLny7foTk1qsod8LMSnjqmlVQDkpqvCxy
 Dws7ldbMb+yzdrHSMr/jD/gx1GW+WljS8Zkabs4bIrPkv5YNefPlDfoniDcusJADBcys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:To:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q2AgS0qLbOkkrmROY61BuHjnmJGIW+NpZlOrL634pbM=; b=n
 V/kRqjJngrvxUNsbzatgqBPOJr9xpGtbd4yac6PfQDNuBwp7fwMBi6MbrqTrvJ/q+HsxSuDWIDdZu
 AKVTaXaw/2ltuouWw0Nxz4/1iLuwaxoJLzlUkFRZUi5HjtweldbGu41jlkmbwz9ODX7pGc9Xh4a6W
 PjinZIZtnNsUIpyY=;
Received: from mail.schwarz.eu ([78.47.220.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n47dJ-0006ar-5g
 for linux-uvc-devel@lists.sourceforge.net; Sun, 02 Jan 2022 20:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oss.schwarz.eu; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From:
 To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q2AgS0qLbOkkrmROY61BuHjnmJGIW+NpZlOrL634pbM=; b=Oqc670MMTPBd+GPBugbe/ZgUA8
 6F+2R5LAOMpkjltMqM+Jc5g+3qTYyj4iIEZ8q6FJg2FQnbqk5wwoUDyrmSwSjTrbEFxS6Jl2v7qnJ
 teKlFU/S2B4DBcSIBpeOAfiyfpocgnDAJnfReiCo44OkeAzOEP8slDLNrNRreJFEdWKfW1BRDzT+y
 L6zx0kk1et7P6IW1dpcbaByZxtmfyiuLHoNDYKRF1j/0sGp3w4MLNS/OBeIEUfG0P5DMW2EPKLp1y
 6Q44wjQ0rBhr3JtVQCNRjPcqfncBnMWbFYWX/we8N8eO+6py6kI1PYY9InhE87in+OALpTvC6XMvv
 UfnkmHdw==;
Message-ID: <c0f59240-e1f5-83e9-d423-ae9b2e6b6fef@oss.schwarz.eu>
Date: Sun, 2 Jan 2022 20:32:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
To: linux-uvc-devel@lists.sourceforge.net
Content-Language: en-US
From: Felix Schwarz <felix.schwarz@oss.schwarz.eu>
X-Received: by mail.schwarz.eu with esmtpsa
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 (envelope-from <felix.schwarz@oss.schwarz.eu>)
 id 1n46ab-0004JY-PR; Sun, 02 Jan 2022 21:39:04 +0100
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 I have a Creative Live! Cam Chat HD VF0790 (USB id 041e:4097).
 This webcam used to work fine with Linux but for some weeks the microphone
 does not record the sound correctly (right now I'm using kerne [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [78.47.220.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 PLING_QUERY            Subject has exclamation mark and question mark
X-Headers-End: 1n47dJ-0006ar-5g
Subject: [linux-uvc-devel] quirk necessary for Creative Live! Cam Chat HD
 VF0790 ?
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

Hi,

I have a Creative Live! Cam Chat HD VF0790 (USB id 041e:4097). This webcam used 
to work fine with Linux but for some weeks the microphone does not record the 
sound correctly (right now I'm using kernel 5.15.12). [1]

As far as I know the uvc driver is handling this device in Linux. Is that 
correct? If not do you know which driver is the handling the device?

One interesting thing is that Windows 10 has the exact same issue as Linux. For 
Windows the fix is to change the mic settings from

2 channel, 24 bit, 48000 Hz (Studio Quality)
->
2 channel, 16 bit, 48000 Hz (DVD Quality)

I guess the problem is that the device advertises wrong capabilities so both 
Linux+Windows use the wrong bit rate. Based on other drivers I guess the best 
solution is to add some kind of quirk for this specific device so only 16 bit 
are advertised.

I did not find the USB ID in the Linux source code so I guess the kernel is 
using a generic driver based on the USB profile but I noticed uvc_driver.c 
contains some quirks already.


Thank you for reading until here:

1. Is this the right mailing list for my question?
2. Am I right that this device is handled by uvc?
3. Is there an easy way to restrict Linux to use only 16 bits?

Felix

[1] I'm not sure why it does not work anymore but it might be connected with my 
upgrade from F34 -> F35 (pulseaudio -> pipewire?).


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
