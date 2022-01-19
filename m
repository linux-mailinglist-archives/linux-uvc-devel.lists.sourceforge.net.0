Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD453493842
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 19 Jan 2022 11:20:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nA841-0005nw-8q; Wed, 19 Jan 2022 10:19:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <felix.schwarz@oss.schwarz.eu>) id 1nA83x-0005nq-Ld
 for linux-uvc-devel@lists.sourceforge.net; Wed, 19 Jan 2022 10:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0EWjrHyMk+52KQqQ+9RwJEdRqu+SRtZP9ySAhOZn5c8=; b=VRmfsnc8ZXJ5aKD417Jz3lMLDo
 4gg9vW6xqEPwR/pzpMJWdjankVQBfTnd6ltt+igxtWhnlMeuB1VI1m4y+KvgcuRIAFjH1HROmZ1k5
 262ZQ7uWI6B4sfB1Jb56cFi0KrCLvXPAtI1oEbox0dPrCQczSYxt+93rwAD/sMmCIqoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0EWjrHyMk+52KQqQ+9RwJEdRqu+SRtZP9ySAhOZn5c8=; b=b3Ai/gAUwbgyi9zXqeoywSE/MB
 QhPnt0l5WbKq/Q43W3+3jwtQNNq2zYO0anGOfI3JHlosgSnod4NbffYfCXsc/ivKzcL8ttVWfFJCn
 Hqb/72Z6rZ1LVE6vfGY1uK++Iw1DRkJFyljfpD3YXjZ5R28f61uC+I2OGEgpPRwc+ebM=;
Received: from mail.schwarz.eu ([78.47.220.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nA83u-003P0K-W7
 for linux-uvc-devel@lists.sourceforge.net; Wed, 19 Jan 2022 10:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oss.schwarz.eu; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0EWjrHyMk+52KQqQ+9RwJEdRqu+SRtZP9ySAhOZn5c8=; b=gtfYV9Wj7A3yycx5ecAinP7cAS
 +r6aXHdmYviZCdIAPzMBCXn4NfW30vNracqQanW6aAjm0NkxhlZAJWXfty05W751uaWVRen7FGJbG
 Ooh1B3TGAzLmWgZb/4IUPmn4mvG/uvCQn6MLtzXhrE7uQ0YJRlXoIXbrv+dd4mUg4idzouxXQBRXT
 cg8EcAQQHQDka4itQ2Jy5y2C5vSGBhhU9DlJeNQDPIwQXl/q0bAuX/RmBqSFuzGNyOFYj6vgBcnuI
 6K8NwxuIsNMfaUoYiPybdV/VhGFYGgY+PqmO7nYl0aKoljzK9jxgJRegse0+6EYOWwKlC6htu6HwJ
 uURhZdTQ==;
Message-ID: <07a3094b-98c9-787e-c15d-89ad3fef55dd@oss.schwarz.eu>
Date: Wed, 19 Jan 2022 11:19:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
From: Felix Schwarz <felix.schwarz@oss.schwarz.eu>
To: linux-uvc-devel@lists.sourceforge.net
References: <c0f59240-e1f5-83e9-d423-ae9b2e6b6fef@oss.schwarz.eu>
In-Reply-To: <c0f59240-e1f5-83e9-d423-ae9b2e6b6fef@oss.schwarz.eu>
X-Received: by mail.schwarz.eu with esmtpsa
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 (envelope-from <felix.schwarz@oss.schwarz.eu>)
 id 1nA83j-0000cp-CY; Wed, 19 Jan 2022 11:19:19 +0100
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: In the mean time I noticed that "UVC" stands for "USB Video
 Class" so this driver does not have anything to do with audio. The right
 place is likely alsa and the kernel code in usb/sound which also co [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
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
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nA83u-003P0K-W7
Subject: Re: [linux-uvc-devel] quirk necessary for Creative Live! Cam Chat
 HD VF0790 ?
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


In the mean time I noticed that "UVC" stands for "USB Video Class" so this 
driver does not have anything to do with audio. The right place is likely alsa 
and the kernel code in usb/sound which also contains a similar quirk for an 
earlier version of my webcam.
Felix



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
