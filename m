Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F0C19AD9A
	for <lists+linux-uvc-devel@lfdr.de>; Wed,  1 Apr 2020 16:17:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jJeAr-00013B-Qh; Wed, 01 Apr 2020 14:16:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bdebreil@teaser.fr>) id 1jJeAq-00012r-N8
 for linux-uvc-devel@lists.sourceforge.net; Wed, 01 Apr 2020 14:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0lUVq3vfio9R89QSNoSm/pTOyNFSwj1HKawSlHvYHs0=; b=h6AVGuLcwycP6XDZw242K1MvUH
 OrFycAw0sH73Cr1e0qyfRUse1zn+ClUcsg2ozdmKI+VeXp6vdeBNukX4yh9HYMwHFyQbDFkuDavrW
 eglDpcpO0foZqmGqApfSwSIE1U2SL2wKFvG+7OaqebQfxgzqs96us53urX2SqyLPyLEo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0lUVq3vfio9R89QSNoSm/pTOyNFSwj1HKawSlHvYHs0=; b=b
 g3uus2ncOwjErS20g6FpnNLmaksTUsqnKKqcWJ21cf+qCs8li+z3bPVQLXNofOwfNLy9w24awC3VW
 OTJCDGOca98wQC1cV4AHH0leY0qHIzaiwpyQOQw9xL0nAPapQDpeHWYHQo9TCxISWUHwvUog0VxeS
 Yoah94MeAC44UBqQ=;
Received: from relay-1.mailobj.net ([213.182.54.6])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jJeAn-000S99-O8
 for linux-uvc-devel@lists.sourceforge.net; Wed, 01 Apr 2020 14:16:56 +0000
Received: from v-2c.localdomain (unknown [192.168.90.162])
 by relay-1.mailobj.net (Postfix) with SMTP id A27C516C7
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed,  1 Apr 2020 16:03:01 +0200 (CEST)
Received: by mail-2.net-c.com [213.182.54.29] with ESMTP
 Wed,  1 Apr 2020 16:03:01 +0200 (CEST)
X-EA-Auth: 67+FYlR6ZkQnIjjVgnunwBbdnvcSvu7fsAFmV3hgtFRMyN3teix5sk3Gd2BDPabIrRN+0dgbfJngdig8gqI3k4BFgpA9eU6f3C7cxr22daU=
To: linux-uvc-devel@lists.sourceforge.net
From: Bernard <bdebreil@teaser.fr>
Message-ID: <75e13d07-5d73-db03-74af-6a12e122576a@teaser.fr>
Date: Wed, 1 Apr 2020 16:03:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [213.182.54.6 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jJeAn-000S99-O8
Subject: [linux-uvc-devel] Logitech C910 webcam on Debian Stretch
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

Hi to Everyone,
my webcam doesn't operate properly on this Debian Stretch system. Using 
vlc or cheese, it is reckognised only after 10-20 sec, and, half the 
times it crashes with kernel dump. When it does operate, the mikes are 
not operating ; recording a video session using 'vlc', works but no 
sound is recorded.
Thanks in advance for any hint.



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
