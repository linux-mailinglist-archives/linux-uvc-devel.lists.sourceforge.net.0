Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E663A0B4D
	for <lists+linux-uvc-devel@lfdr.de>; Wed,  9 Jun 2021 06:30:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1lqpqW-0007PB-7X; Wed, 09 Jun 2021 04:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dominique.martinet@atmark-techno.com>)
 id 1lqpqU-0007Ov-En
 for linux-uvc-devel@lists.sourceforge.net; Wed, 09 Jun 2021 04:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9QfyL1AUne5+PBkZwxn6iFg7I6n6SWl6hKQ4WQ41Sdw=; b=ME2IZIYCh6gIVlgVhG++T2mUsu
 2EMpnqH8oUE+um0tPuMuRHPecN9DawrS0wz4Ld0gn8Xc4miPWqWkNzkDO9M6oG7NXzS59r+zADo5B
 Qba7Vog/a16dil5Ig539qSsRq9OmH/Pq7VL852FNkhNqzYPDCga34quH4ozsBUCs7v4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9QfyL1AUne5+PBkZwxn6iFg7I6n6SWl6hKQ4WQ41Sdw=; b=Ew7ZtfLzwPDA7MiVtewBVU6fbL
 YSNAgengmaVTs43kf2D9M8ZvHLc5h8DD5AzIW1SJ7P/3e7LQyNGzhwZdvIjvRfnsfhMRFY7W/1Glq
 SfNwkGrE6kH27bj3P5BADKVNnc57kJn7YaXIsFko+A9veHXpu2UIlP6dbSjlT9xKty8c=;
Received: from gw.atmark-techno.com ([13.115.124.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lqpqP-0008TY-EP
 for linux-uvc-devel@lists.sourceforge.net; Wed, 09 Jun 2021 04:29:38 +0000
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199])
 by gw.atmark-techno.com (Postfix) with ESMTPS id B2B6480260
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed,  9 Jun 2021 13:13:12 +0900 (JST)
Received: by mail-pl1-f199.google.com with SMTP id
 a6-20020a1709027d86b02901019f88b046so10813793plm.21
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 08 Jun 2021 21:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9QfyL1AUne5+PBkZwxn6iFg7I6n6SWl6hKQ4WQ41Sdw=;
 b=gm7+dUof6Y52e+Q2CelwkZvzSX/jhpo642p25wPIShfAklggXS6oTY1dnOd+s7mPf0
 ILVfnFJZS05e9w4F5xr/wXvtIy/SyIJ1dZrxzgMcSbI27QJWVT1Ii4zj1yNwjWCUDUc6
 SmV1PE9HCRGVWM3GcARGWxG7OWASloVvLuzIHcY8HLGt/ra/CpCi8furzv9WPyOoAbtb
 bTAXyjFWO4/bCW/3Fgna1eFflLNLosunrzAAyojoz45lSYOj2e08fH/TPYrKbPmkd0JT
 FjTFp6MGRq+VrUUyUmS8cJsa6MQFMdfDSmVRKqtx2ibB+7UCJuvJUPDPtb9l+yy1G+8Y
 JDZA==
X-Gm-Message-State: AOAM531hvDUIZdSX1xEHj00Hs9rhEFELzMKSIxMqWl2GFh4wBGs6YcjF
 vcMHZHshk869irq75LoW2mAeIKW/s8HxdjAoCZq7rqc/sq7G7BzAqoXeAlDiah9WFQvwtensVr2
 KLNYXjlLrXXkuNokb/MH/KrgpOLBTX/qnbr2CyJSV
X-Received: by 2002:a63:e453:: with SMTP id i19mr1792188pgk.134.1623211991860; 
 Tue, 08 Jun 2021 21:13:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9HC5Bv6qB3T/yEtdheshM0zEACgeTRb+kFv+9S95dtq6BS65/TpUlvArfNquzDDeJmTnupQ==
X-Received: by 2002:a63:e453:: with SMTP id i19mr1792172pgk.134.1623211991610; 
 Tue, 08 Jun 2021 21:13:11 -0700 (PDT)
Received: from pc-0115 (178.101.200.35.bc.googleusercontent.com.
 [35.200.101.178])
 by smtp.gmail.com with ESMTPSA id nn6sm15509433pjb.57.2021.06.08.21.13.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Jun 2021 21:13:11 -0700 (PDT)
Received: from martinet by pc-0115 with local (Exim 4.94.2)
 (envelope-from <martinet@pc-0115>)
 id 1lqpaX-009K8i-MQ; Wed, 09 Jun 2021 13:13:09 +0900
Date: Wed, 9 Jun 2021 13:12:59 +0900
From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <YMA/y9RZZmumuXVd@atmark-techno.com>
References: <20200917022547.198090-1-linux@roeck-us.net>
 <20200917124714.GD3969@pendragon.ideasonboard.com>
 <990652f1-b6e4-211c-7a96-8c3fc3ea6efd@roeck-us.net>
 <YEsZ7qnSRv0EkJGG@atmark-techno.com>
 <74c0c32a-ebb5-34e0-d3a2-6b417ce328a1@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74c0c32a-ebb5-34e0-d3a2-6b417ce328a1@roeck-us.net>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1lqpqP-0008TY-EP
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

Guenter Roeck wrote on Fri, Mar 12, 2021 at 06:54:52AM -0800:
> On 3/11/21 11:36 PM, Dominique MARTINET wrote:
> > Guenter Roeck wrote on Thu, Sep 17, 2020 at 07:16:17PM -0700:
> >> On 9/17/20 5:47 AM, Laurent Pinchart wrote:
> >>> I haven't checked the mailing list, but I've found it in my inbox :-)
> >>> I'm not forgetting about you, just been fairly busy recently. I still
> >>> plan to try and provide an alternative implementation in the V4L2 core
> >>> (in a form that I think should even be moved to the cdev core) that
> >>> would fix this for all drivers.
> >>>
> >> Thanks for letting me know. As it turns out, this problem is responsible
> >> for about 2% of all Chromebook crashes, so I'll probably not wait for
> >> the series to be accepted upstream but apply it as-is to the various
> >> ChromeOS kernel branches.
> > 
> > We have a customer who reported the same issue recently, has there been
> > any development?
> > 
> 
> Not that I know of. We applied the series to all Chrome OS kernel branches,
> and it reliably fixes the problem for us. We'd like to have the problem
> fixed upstream; until that happens we'll have to carry the series forward.

Thanks for confirming.
Laurent, would it make sense to take the patches as they are until a
better fix is ready?

-- 
Dominique


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
