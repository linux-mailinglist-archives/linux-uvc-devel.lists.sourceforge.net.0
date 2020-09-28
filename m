Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D447B27ACAA
	for <lists+linux-uvc-devel@lfdr.de>; Mon, 28 Sep 2020 13:23:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kMrFm-00034D-K6; Mon, 28 Sep 2020 11:23:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kevin@kevinlocke.name>) id 1kMrFj-00032X-Rf
 for linux-uvc-devel@lists.sourceforge.net; Mon, 28 Sep 2020 11:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BtsqaDsSEsI5pc0eRs2ohli8YoriSqVz8o+yOUlXghI=; b=IyhCVQEOAgPqIPYXNqf5WCgUl1
 EioahCFbh55k6sVS/Xy388vxI2O7Bv+jUH/XJDfd9BuDdfs/8QZqL6PBAaCWCxdtIP3L5iupWmhHj
 20EL8kiWBZTfTkZ4lJqPHxvNondN6eWsDvqvDkdb5OR8vWDbH1vgU+XfXxL3eSHLWOk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BtsqaDsSEsI5pc0eRs2ohli8YoriSqVz8o+yOUlXghI=; b=dak+1f6w4Sm9bOha+RTDYgzo3a
 NuhMtcKXGOnMBrUa1Wg6nkwxS+92uPlUfttv4Pt8cKsYjOQLn7Bw1nVQrrV6koY4+fvd26RxyrxYu
 JPuTTTLgPjsoz9bo8MqDxjeMSqKfeh6uh/pvUliGtSlPb8TDdB1PyA0QYsRYG2iRp0+I=;
Received: from vulcan.kevinlocke.name ([107.191.43.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kMrFd-00BRTL-G7
 for linux-uvc-devel@lists.sourceforge.net; Mon, 28 Sep 2020 11:23:31 +0000
Received: from kevinlocke.name
 (2600-6c67-5080-46fc-73ec-7df6-9aef-2135.res6.spectrum.com
 [IPv6:2600:6c67:5080:46fc:73ec:7df6:9aef:2135])
 (Authenticated sender: kevin@kevinlocke.name)
 by vulcan.kevinlocke.name (Postfix) with ESMTPSA id EB47A1C9BF18;
 Mon, 28 Sep 2020 11:23:04 +0000 (UTC)
Received: by kevinlocke.name (Postfix, from userid 1000)
 id 453951300707; Mon, 28 Sep 2020 05:23:03 -0600 (MDT)
Date: Mon, 28 Sep 2020 05:23:03 -0600
From: Kevin Locke <kevin@kevinlocke.name>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Message-ID: <20200928112303.GA131173@kevinlocke.name>
References: <20200920170625.GA4840@kevinlocke.name>
 <7983646c-c907-b59a-16c1-5260d98a1a78@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7983646c-c907-b59a-16c1-5260d98a1a78@ideasonboard.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kMrFd-00BRTL-G7
Subject: Re: [linux-uvc-devel] 04f2:b2db is supported,
 with non-functional second video device
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
Cc: linux-uvc-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

On Mon, 2020-09-28 at 11:41 +0100, Kieran Bingham wrote:
> On 20/09/2020 18:06, Kevin Locke wrote:
>> I don't understand the purpose of the second device (if any).  With
>> tracing enabled, there are references to "entity 1" and "entity 2" in
>> the kernel log.  Perhaps this is expected behavior?  If not, I would be
>> happy to help debug further.
> 
> The second video node is for extracting metadata from the frames.
> It is not expected to deliver video frames with a video capture application.
> 
> v4l-info should probably be updated to express that better, but I don't
> know who maintains that tool

Ah, that explains it.  Thanks Kieran!

Best,
Kevin


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
