Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8B63386FF
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 12 Mar 2021 09:01:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1lKcjJ-00084R-Rx; Fri, 12 Mar 2021 08:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dominique.martinet@atmark-techno.com>)
 id 1lKcj6-00082X-7O
 for linux-uvc-devel@lists.sourceforge.net; Fri, 12 Mar 2021 08:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:
 Resent-From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Sender:Resent-Cc:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ni/mHNWDgJgCkV2Qov8K8m4Vof33qd0Q1DF+vfmUdJw=; b=WWXPzsdQX9JYHxZTjeNj0S/B2S
 cYKN7v3QUXuQRnuqh+QFZc2S2ttaYXMsp9l0zujgtrFkho8bcJB0BEAfYMh8UvRM6GoM09bBF/2a7
 9ImalIHwr1vRCI6IQGRauqJpt+RgFhtLjTGjlovR9kj3olgOwmhN67CfoyQZUGULWUPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Resent-To:Resent-Message-ID:Resent-Date:Resent-From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Sender:Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ni/mHNWDgJgCkV2Qov8K8m4Vof33qd0Q1DF+vfmUdJw=; b=MwM8qpz9mpyvgu7mTFz5Uxl9xL
 B2B9ZvXdrFYbzaEQcO5Uv7x+iRExckjYRXGvgO/mc5DC5Lo3IdWmXgiydJhqhaD0d/u9RjeWr58zU
 13DVQpw6kRyUwwnuaTheA5LHg80/DZE0RgPSqcyqFF1sLjcUGKVTGnvignFDBGvMIJeQ=;
Received: from gw.atmark-techno.com ([13.115.124.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1lKciY-004YIz-8U
 for linux-uvc-devel@lists.sourceforge.net; Fri, 12 Mar 2021 08:00:25 +0000
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70])
 by gw.atmark-techno.com (Postfix) with ESMTPS id 997C080211
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 12 Mar 2021 17:00:12 +0900 (JST)
Received: by mail-pj1-f70.google.com with SMTP id o16so696084pjy.9
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 12 Mar 2021 00:00:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:resent-from:resent-date:resent-message-id
 :resent-to:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ni/mHNWDgJgCkV2Qov8K8m4Vof33qd0Q1DF+vfmUdJw=;
 b=CZ7K8C9vCiiJu3q2ScKTyFEXcfw5OLs+6iVol2DOhCsIPCz/7yPohs7S1M0xy16nZg
 TTPFycoaTKYQNiE0yJEanl/LBWLTLwBvo1+CmZlIDiocIkR0C3sddeg4ZLu5Vh0FMA1F
 liIh8pDp6uQfwVpEuu7euctl2lWsP97QUV6QiS/fSKjis45mgLNuQ1mbnDjKuduHyh7C
 18rRMneRX+mxU27jzHhleKZ5OxSQ0bdPKInvVTDeTFBVvt0DSyN0/XedIKc3n+8AHNsP
 dRzFJSiO+EKH9pYlFrFBYDtt4e+BLR3UoVZKKmttGhXrscnTFw4BM23CaRXWjb45gKpn
 005A==
X-Gm-Message-State: AOAM531UBdeQ+U9qMlww3R7Du5PHKei9iDnKc5LXymaWaQ9AsKJoODUs
 cDnnHnKWOh6+5n5sI+7se7IwtMFfEKBS3AuGgok6fa3BpjU0T9bMji9QxpyBhmRFqTidJA55fdZ
 F/igeUHdqvjTP5EM25SDmblfu0Ij+QyKjcTK8mO78
X-Received: by 2002:a17:90b:46d0:: with SMTP id
 jx16mr13123118pjb.3.1615536011323; 
 Fri, 12 Mar 2021 00:00:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwyIR43tENCzJntrUgPg3v0c+CJBlNjNENG4gTN2BnFuHISdlD/cGBWa0N5Pq8cXU1J+Qk47g==
X-Received: by 2002:a17:90b:46d0:: with SMTP id
 jx16mr13123099pjb.3.1615536011127; 
 Fri, 12 Mar 2021 00:00:11 -0800 (PST)
Received: from pc-0115 (35.112.198.104.bc.googleusercontent.com.
 [104.198.112.35])
 by smtp.gmail.com with ESMTPSA id 2sm4470431pfi.116.2021.03.12.00.00.10
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Mar 2021 00:00:10 -0800 (PST)
Received: from martinet by pc-0115 with local (Exim 4.94)
 (envelope-from <martinet@pc-0115>) id 1lKciP-0014GW-AK
 for linux-uvc-devel@lists.sourceforge.net; Fri, 12 Mar 2021 17:00:09 +0900
Resent-From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
Resent-Date: Fri, 12 Mar 2021 16:59:59 +0900
Resent-Message-ID: <YEsff+Thk+1+CthB@atmark-techno.com>
Resent-To: linux-uvc-devel@lists.sourceforge.net
Date: Fri, 12 Mar 2021 16:36:14 +0900
From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <YEsZ7qnSRv0EkJGG@atmark-techno.com>
References: <20200917022547.198090-1-linux@roeck-us.net>
 <20200917124714.GD3969@pendragon.ideasonboard.com>
 <990652f1-b6e4-211c-7a96-8c3fc3ea6efd@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <990652f1-b6e4-211c-7a96-8c3fc3ea6efd@roeck-us.net>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1lKciY-004YIz-8U
Subject: Re: [linux-uvc-devel] [PATCH RESEND v3 0/5] media: uvcvideo: Fix
 race conditions
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
Cc: linux-uvc-devel@lists.sourceforge.net, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@iki.fi>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net
Sender: "Linux-uvc-devel" <linux-uvc-devel-bounces@lists.sourceforge.net>

Hi,

Guenter Roeck wrote on Thu, Sep 17, 2020 at 07:16:17PM -0700:
> On 9/17/20 5:47 AM, Laurent Pinchart wrote:
> > On Wed, Sep 16, 2020 at 07:25:42PM -0700, Guenter Roeck wrote:
> >> Something seems to have gone wrong with v3 of this patch series.
> >> I am sure I sent it out, but I don't find it anywhere.
> >> Resending. Sorry for any duplicates.
> > 
> > I haven't checked the mailing list, but I've found it in my inbox :-)
> > I'm not forgetting about you, just been fairly busy recently. I still
> > plan to try and provide an alternative implementation in the V4L2 core
> > (in a form that I think should even be moved to the cdev core) that
> > would fix this for all drivers.
> > 
> Thanks for letting me know. As it turns out, this problem is responsible
> for about 2% of all Chromebook crashes, so I'll probably not wait for
> the series to be accepted upstream but apply it as-is to the various
> ChromeOS kernel branches.

We have a customer who reported the same issue recently, has there been
any development?

I don't see anything in either uvc nor v4l2 that would address the race
since this mail half a year ago (well, I could have missed it ;))


If nothing happened I'll probably backport this series as well, at which
point it might make more sense to take it in until a better fix gets
here then revert it...


Thanks!
-- 
Dominique


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
