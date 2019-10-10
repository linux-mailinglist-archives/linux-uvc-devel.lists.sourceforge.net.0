Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F35BFD222A
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 10 Oct 2019 09:55:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iITHk-0005B7-RO; Thu, 10 Oct 2019 07:54:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <saranya.gopal@intel.com>) id 1iITHj-0005Av-Pg
 for linux-uvc-devel@lists.sourceforge.net; Thu, 10 Oct 2019 07:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oYz3rBtETeut9bZYwywMiSstFVHx3T2CmPfMznr32oc=; b=XEw+PZYjVVPpnYPD6zGHSnqEEt
 4CXbawDsPQo/ot9MYFlEo4LyBzB/2zKXYwCscg6XDt0jZJpLqWgmmI4IkW69q4UcQhgbh1IlDPXLw
 VlJXed4DkBD+LiszGEOMf2TrWd+e1fJHOHQ7kcFFndqZMc8iSPhCG7k4UrrnS/yyHjtM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oYz3rBtETeut9bZYwywMiSstFVHx3T2CmPfMznr32oc=; b=Q
 /TZXEc1FG1wus953AQDhaXe2LYOwA2rEbYjSd1SR8rRzjJMHPji7/Tj3w69em0n+4lkNkcA7LFZ4X
 FPeoAlYyTKNyXLVYsVkqgBkgQIhVeTPTMiYCdGBB5xspep7pBrjk1vir6ale6VJsCH3wX9u+iKGvq
 +HRGHKx4u2ZXRETE=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iITHh-00CTmK-W8
 for linux-uvc-devel@lists.sourceforge.net; Thu, 10 Oct 2019 07:54:55 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 00:54:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,279,1566889200"; d="scan'208";a="198265603"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga006.jf.intel.com with ESMTP; 10 Oct 2019 00:54:48 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 00:54:47 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 00:54:47 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.248]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.192]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 13:24:43 +0530
From: "Gopal, Saranya" <saranya.gopal@intel.com>
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Thread-Topic: UVC gadget application with real camera
Thread-Index: AdV/Oxed5kmsAH5ATi23gfUDOPYBoA==
Date: Thu, 10 Oct 2019 07:54:42 +0000
Message-ID: <C672AA6DAAC36042A98BAD0B0B25BDA94CCF2722@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjRkNDM3NmUtOGM0Mi00ZDRhLTg5MTQtZmZmMTE4YzFhOGVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiK2RIdlI4bFwvXC80cGpHRU52bzRSaGsxY2tsSktEY1M5VE50b2pOeU5aeTFqQ1dZZ0hmR3N2dXpyWmhoazY1WDdYIn0=
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: stackoverflow.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iITHh-00CTmK-W8
Subject: [linux-uvc-devel] UVC gadget application with real camera
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi all,

Has anyone tried UVC gadget application to stream from USB camera in the device to host?
I am using this version of UVC gadget app: https://github.com/wlhe/uvc-gadget 
I am facing issues with that.
I am able to stream dummy video in both YUYV and MJPG formats.
But, when I try to stream from a real USB camera (Logitech C922), it did not work.
I got 'select timeout' error.
I am using f_uvc gadget with configfs setup to support 360p @ 10 fps which the USB camera also supports.
If I directly plug in USB camera to host, it works. So, there is no problem with the camera.
I tried setting streaming_maxpacket to 256 (as per suggestion from here: https://stackoverflow.com/questions/54318862/flickering-and-failing-video-streaming-with-uvc-gadget-and-g-webcam ) .
It still did not work.
I used to get "dwc3 ran out of requests" error. So, I have set streaming_maxinterval as 4.
Any pointers to get this working?

Thanks,
Saranya





_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
