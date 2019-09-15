Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1753DB3124
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 15 Sep 2019 19:27:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1i9YJK-0005Ly-4Z; Sun, 15 Sep 2019 17:27:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <saranya.gopal@intel.com>) id 1i9YJI-0005Ll-Tu
 for linux-uvc-devel@lists.sourceforge.net; Sun, 15 Sep 2019 17:27:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MB640YLRuAd8n9DbvbaYJ8li6GuCai08FXRgKFj2Mq8=; b=ahXztYvRe5VKuYc1eV5pXqad9e
 ZgDKX1b4MAPt1K6r2Xt0m/G8buRSE6NdNur7X7SCbfRYfNMLNYBtgUU2vec4uIfQ4055kg4HMUx8L
 Rss0aII7ZFYPamivHjYU1i4z43sSy4vccCBb8LtdrNQsbGWpxFrCDlBJn/Frhu6Ep3Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MB640YLRuAd8n9DbvbaYJ8li6GuCai08FXRgKFj2Mq8=; b=e
 oJPZMfLKDkDSqtil/6QgvHR3lTvOnKp1256lqCDFUaDvAminBLpWzrH9nAzSJw624aJj9auTuqMdd
 NveNmUYnjFYIQuiK9ndovF4ayjZHPxkUj6P7XJvD2xUwm6oJvuerCwM7T/JuY76buljl8a0fiW4/T
 Fg6JHA95n8t8ajvQ=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i9YJE-006GQB-RN
 for linux-uvc-devel@lists.sourceforge.net; Sun, 15 Sep 2019 17:27:40 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Sep 2019 10:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,509,1559545200"; d="scan'208";a="186958263"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 15 Sep 2019 10:27:30 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 15 Sep 2019 10:27:30 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 fmsmsx116.amr.corp.intel.com (10.18.116.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 15 Sep 2019 10:27:30 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.248]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.136]) with mapi id 14.03.0439.000;
 Sun, 15 Sep 2019 22:57:26 +0530
From: "Gopal, Saranya" <saranya.gopal@intel.com>
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Thread-Topic: Cloning UV gadget testing application
Thread-Index: AdVr6tamEiRDgtouRZSerOs5Dmb0/A==
Date: Sun, 15 Sep 2019 17:27:25 +0000
Message-ID: <C672AA6DAAC36042A98BAD0B0B25BDA94CCEAF7D@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTY4NzQ3MjktYTYwZi00MjQxLTk0MzUtNTU4N2RkYmFhYjE3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicnBxZDNwWGJVXC96Mk95M05jajZ0dDdIbGM0RkQzcEJsTEtIdFJtRmI3bTRrY0JpY3htZzhQVHRzTHJhekFMVCsifQ==
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i9YJE-006GQB-RN
Subject: [linux-uvc-devel] Cloning UV gadget testing application
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
Cc: "Balaji, M" <m.balaji@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi all,

I am trying to clone the UVC gadget testing application code from here:
http://git.ideasonboard.org/uvc-gadget.git

But, I get this error:
fatal: repository 'http://git.ideasonboard.org/uvc-gadget.git/' not found

I tried git clone http://git.ideasonboard.org/git/uvc-gadget.git too. I get the same error.
Has anyone been able to successfully clone this repo? Or does anyone have a fork of this latest repo from where I can clone?

Thanks,
Saranya



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
