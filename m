Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ECB2530D2
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 26 Aug 2020 16:04:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kAw2L-0007zr-0e; Wed, 26 Aug 2020 14:04:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <miawfld@gmail.com>) id 1kAw2J-0007zg-BI
 for linux-uvc-devel@lists.sourceforge.net; Wed, 26 Aug 2020 14:04:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Mime-Version:To:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:Content-Type:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BNpZ07yi50Ya/oq4mMnyGCOihZyRjb6e/gxYplLeaVg=; b=OIdArUkISvvHF1h62v9RauVr4N
 g11VAq3OCnKknvsuwI3se+8Adce+dMWpGJ3GgZJUfoYLth29NSyZTTwdmnXqyoVcckKXpCT/sc8Eo
 DfasJNSV9WLsZ0HR/jMkJ2MwZU+57J0Pp3sh/4ROXzx2L3g0yccsLIKmiEWIDkuRB/74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Mime-Version:To:Date:Message-Id:From:Subject:Content-Transfer-Encoding:
 Content-Type:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BNpZ07yi50Ya/oq4mMnyGCOihZyRjb6e/gxYplLeaVg=; b=N
 b5d6ANAPnV6rLt+pJ3/fzewU2T9Vb/nuxTG1FJPf34CgOIIYgXbT0mxFfYi+yx5W51Ux6qzJT09ZE
 iJPnl1Z5w1jZVGApFOaPvQfrhX0nVdj50CotOxYlb+JZbjQnJHZiXQTSqTiWC6eItkgC8h9c9Idem
 QxM7JehzOXKJAFC4=;
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kAw2I-001LLu-5G
 for linux-uvc-devel@lists.sourceforge.net; Wed, 26 Aug 2020 14:04:23 +0000
Received: by mail-wm1-f42.google.com with SMTP id b79so1303578wmb.4
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 26 Aug 2020 07:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:subject:from:message-id:date:to
 :mime-version; bh=BNpZ07yi50Ya/oq4mMnyGCOihZyRjb6e/gxYplLeaVg=;
 b=f2/VdYwKojQCMf4AajbD3tgLEp74RKv6GLEn9W7zVeZkficILMSE1D7IYR3VDBNGzh
 6dMeNBFH+Gslt443I6oH70qL6i/964smUCeR5F9suCl778o60dFkeclTblUSkDB+DPQN
 45e7n6UiINJot9tYeZOpOOXlAQHBVSzlQ7zizCESXC/siNVKWsaTazgn3tUxSJusHF+D
 Szy8V9I8IGPufjq1xb8D9nsAWpVDXj6fguZe/WnixsntO1KumWNCx0/hU9jH+ZQkc62I
 xSiuLR4tOGKkLgMBoqxejd1pur6lC0zv+QBRrZxkBVClrLUvy3TNkGByNzX4KgFufyoD
 hE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:subject:from
 :message-id:date:to:mime-version;
 bh=BNpZ07yi50Ya/oq4mMnyGCOihZyRjb6e/gxYplLeaVg=;
 b=l45gzCMIRhIhmYvIEszV2Gu2OQuw8bNiXZD0h2iBWkGzFE/l1Ges6FLr1YEXUHJ44c
 vAizpIG88De/efPqmhDxtKl+Keb18geJufYX6viOxsZCPlOdHHc0cu9G09b7IsPm3J4C
 lJrdzYKpzFo4eZ1hUAC+vRM5qUPXdUzoEZ6Ce0nu6FxKn4Yb6apD0n9eWmBq4E47hjT6
 ga7rChQgLgy3Uf716PkWQ4bedSKISCuA9GDIJEHEs8UVwyDgcj1CycHd6ATn8vEp05NY
 6XAgGFD67+T5fEOUgWJQUyFeLswIaZDI3PYyg14Sa9Ms6HSr3OkMK513l1H3TW72us/1
 D3oQ==
X-Gm-Message-State: AOAM531syQjRWSy2nK1ddFSZHxVKwJ9bGtqwlsn+xFLmvtOBJZtLtb0x
 ynX2H7X7Ft4m6s7ZcbljRubbIkR0FJw=
X-Google-Smtp-Source: ABdhPJyIL41CWIvhtybnPFXWbbe6eHhZ4+KeNUrRfqdLSV0/9AFtZMEKprB1RbH9SfaDJOfH5wwehw==
X-Received: by 2002:a1c:e18a:: with SMTP id y132mr7770078wmg.185.1598450655675; 
 Wed, 26 Aug 2020 07:04:15 -0700 (PDT)
Received: from [192.168.0.3] ([90.218.31.118])
 by smtp.gmail.com with ESMTPSA id g14sm5815380wmk.37.2020.08.26.07.04.14
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Aug 2020 07:04:15 -0700 (PDT)
From: Michael Issott <miawfld@gmail.com>
Message-Id: <CE678B96-4476-4B2B-87F9-6D3552688C43@gmail.com>
Date: Wed, 26 Aug 2020 15:03:41 +0100
To: linux-uvc-devel@lists.sourceforge.net
Mime-Version: 1.0 (1.0)
X-Mailer: iPad Mail (14G60)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (miawfld[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kAw2I-001LLu-5G
Subject: [linux-uvc-devel] Webcam on linux mint
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

I have a Microsoft LifeCam vx2000 webcam
I've just moved from windows vista (yes I know) to Linux mint 20
How can I get this webcam to work on the Linux system please
I know little about Linux as yet but am learning slowly , so please be gentle with me and don't talk above my head
I'm 73 but not quite a Luddite 
Thanks

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
