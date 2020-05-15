Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1161D46B6
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 15 May 2020 09:09:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jZUT2-0005fL-UW; Fri, 15 May 2020 07:09:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fercerpav@gmail.com>) id 1jZUT1-0005f9-TD
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 07:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r5xD3FFCvFXFN2MEpzv65Ns77Hzd9ZQVkXbzthcuYkc=; b=VBOqwQXCmcnnbkzLCk8RZWeWID
 kkQX5uPug8IRfqmk5qXyGrIiRjR1YeuiLY/P4rs/EVUMarqImW3/3bce/fd8Z0HyIzkPpbAkti+Wc
 YF0WEgeUKZacXd47CYlveXqPHGszCHdGhZZcF2sBgY8bkE2LjfBdSk/Za4tdMWxJqpLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r5xD3FFCvFXFN2MEpzv65Ns77Hzd9ZQVkXbzthcuYkc=; b=GR3X/hzpTckm3YLwc+oCFx8OrA
 NY3yktNF4Ny3VNjPFx4CNq/mreY9v/yMOT2JbQE5/Stu5Q/4OI+l5HBzBQX0Io6mrHN7nT73iBh9u
 CS8pWNZf1P4JJ/Y82EqN4w7FVMKVjCGjO3zrm3l7bu7ZDR+OlXL1er5CswzsjX5bc64k=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jZUSy-00BI8s-9O
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 07:09:11 +0000
Received: by mail-lj1-f182.google.com with SMTP id a21so1051228ljj.11
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 15 May 2020 00:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r5xD3FFCvFXFN2MEpzv65Ns77Hzd9ZQVkXbzthcuYkc=;
 b=vgiylink8d6fIDlE6m+p1aPG3qv2IvMrfceRInO1ZiB0ggoPfIg3WR6Jwlomxn0b4Z
 qTHrKP7tIqBWBLfwH3wPM20uWmsM7FUZUxyhmD7m+2w1IGDVEyZmGaInoPRpUywiJWFK
 4FQ/bnTdKfYKxHLaWjAKlLqyXKM8uWx/XRivPeKsR6H1zDLVGi/sgoyO0gMQg6R5tgel
 +1weeWVf4rhCNS5SDa4zCtO4gyB8G70q6xcnS6fUlcR+CKXr/3i2vmg+RKZbYIa3d4YT
 CnNKwLC2tgYP2pU7fUDu+9ThRvRJVQupm4b8yv8drroOyCIclybiRzpO1NJL7/KuNbmU
 iYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r5xD3FFCvFXFN2MEpzv65Ns77Hzd9ZQVkXbzthcuYkc=;
 b=K69T66t1q1dXB8V/H30Mrxh/DeXd0xBd0w1u4XmDtRKwpd9osZtG/uZGZz/aEkbkLR
 Vt0t8ElczXA0BJ7z6S6mtBVOMd59mBwUfrGJuf69xznpafsdO9uY07K9s6VQmlkTdqzh
 Gg6isXwDkmrpZUU9ebPVdU6cKdkU1lAmMPOG2ZdAAKnd3IQQpbC+XOxI1eGcQGC/7PlP
 lTXdGQAxq+4cUoOlv/vKHQ65MqJ+XZN+N4NIunETdp5CZIih/UzhvLoToXX0PasrIiPg
 TtgAoeesinXcpJvrOu+wjRY5q8KJlziZGFQppi9v8btfiHMuPkG5BrSv+T6HTCPUxcWr
 Vvxg==
X-Gm-Message-State: AOAM530JNQuuwWxSN78QkPphZgozTlms1KjK55Fc+WhXJbf6jdXaspU+
 NIeXN6hfeinWjzfaLRgCaVg=
X-Google-Smtp-Source: ABdhPJzWsxquQv2OA/QV0l0SNkDTyt+g7lPqUurVMK1LFvFOFjAb9Lo4P/fjC6P8bka4UrRoGv0l+Q==
X-Received: by 2002:a2e:8645:: with SMTP id i5mr1261748ljj.56.1589526541023;
 Fri, 15 May 2020 00:09:01 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id y19sm772191lfg.25.2020.05.15.00.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 00:08:59 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 04F78usw005211; Fri, 15 May 2020 10:08:57 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 04F78uDV005210;
 Fri, 15 May 2020 10:08:56 +0300
Date: Fri, 15 May 2020 10:08:55 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Xavier Bestel <xavier.bestel@free.fr>
Message-ID: <20200515070855.GG16976@home.paul.comp>
References: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
 <20200514164038.GZ16976@home.paul.comp>
 <4314d37868ba58b64c0aedca7ceb61e2f7dd5526.camel@free.fr>
 <52a07a7f36b9b4c0092c75f89acf7f10a62b59a3.camel@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52a07a7f36b9b4c0092c75f89acf7f10a62b59a3.camel@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fercerpav[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZUSy-00BI8s-9O
Subject: Re: [linux-uvc-devel] gspca_z3cxx: Failed to query (GET_CUR) UVC
 control 11 on unit 2
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

Hey Xavier,

On Fri, May 15, 2020 at 09:05:27AM +0200, Xavier Bestel wrote:
> > Just tried with "Qt V4L2 Test Bench", alias "qv4l2" and my webcam can't
> > be found. But its audio device is there.
> 
> Ok my bad, if I select it specifically from the commandline it works
> well. So the bug seems to be that the camera isn't correctly enumerated
> somehow. Does anyone know how enumeration works ?

So if you get video stream from your camera it means it works, and it
has nothing to do with UVC (as it doesn't support the UVC standard and
so handled by the gspca driver instead), right? Is your question now
qv4l2-specific?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
