Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 370C022C786
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 24 Jul 2020 16:12:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jyyQn-0000Su-KK; Fri, 24 Jul 2020 14:12:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aatreyamit@gmail.com>) id 1jyyQm-0000Sm-3B
 for linux-uvc-devel@lists.sourceforge.net; Fri, 24 Jul 2020 14:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9UH83Pg6fThtFq6H85n6aFzlvSTYPx3Z5rgR2PRLMMI=; b=GhZbvOkgYqFaA9GKLhNUmQyAK
 fpTGlp6W9F4VUaz6VbiemXJGg7Ut8KSk9s74h+YVSn3uWDrJ8pG3nFcMIw1Sw15b4/IdMJpJt4AIY
 sK+fLQOQAb6K8bOljsBw011P9mMZL6uiYZUF8kJXdYrzNp+4QNmg38KiFg3S4NrB2SZKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9UH83Pg6fThtFq6H85n6aFzlvSTYPx3Z5rgR2PRLMMI=; b=bsKx1LYcBdV/OdTdBpU6UHsnDM
 fzgG9pofxhrvDHympORPSFRf36NfHO/szExZecbnqULEdOV0OzlXxrYdagrG13RKQskjqfgiCg5nT
 h+yH5/TiOPWO5mP9DCALjC11nL1bW+fF6fRaXnjoj6y7NtmML/UMuu/qckN53MdyOdaQ=;
Received: from mail-vs1-f43.google.com ([209.85.217.43])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jyyQi-001Sgq-OK
 for linux-uvc-devel@lists.sourceforge.net; Fri, 24 Jul 2020 14:12:11 +0000
Received: by mail-vs1-f43.google.com with SMTP id 1so317234vsl.1
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 24 Jul 2020 07:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=9UH83Pg6fThtFq6H85n6aFzlvSTYPx3Z5rgR2PRLMMI=;
 b=pztDDzbgRKxu2KfgNCa8JKLti/5zf5TWqd+ouMmQoyaJ1AmpAmG+33w36Q/S3drRtG
 3BhsCIOhHhJBMopiyZkjKl1teRnSFABAj5M0ph0Gagd5to8Y2A4MwZbIjUnN9GLioPid
 VEYuaWV5p/zJ8xfbq4ObYYDRSH/DVSccO6ZTi3O0GnAwkgHVz4XMZRwwhy+BQ5ChNgpu
 hJyGeQJC5xJl38o9cwr3gis5EZFBZ+W+ZQpcR7CEOLxBXIC7lir8tZqEb8F/OGq+XJ9C
 R8Ib3J5juXePk0lWgkmPiJN84lA2pW4SIMWJgejDtARwPjix0qVC3vt4TkJxhdo+423l
 QdkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to;
 bh=9UH83Pg6fThtFq6H85n6aFzlvSTYPx3Z5rgR2PRLMMI=;
 b=pJrunJIQkGNqBTreo8KyJZ1knVLntE8WTI9XO9gTmnRBEBurnhLS9Ji8/PO/E3uJi/
 z08Rx9ou9Gtch9Pr9DORZMHnePxXWUBQjTuNRkDFKkp1y6lPU/GyT0Pm/bup8wpKAIBu
 tmfArlXN4IqWJyegvASISuWC4oeTS8ccF7UliHM9ayUJGtfeefroDE0Y7lMrkjQryDr0
 mPuuEPyXgZ8x+br+s/jA/ZCaX6r5VqFFCCEaeUVcCmg1choaB0+de460FDtDMM4cdFjP
 JHkjuKv05K1W1F6f1/MncCRQi0w/BZjUNsLaZLTegqOjHIY3y6sLG0q+kSo71LmzwKi7
 CtVg==
X-Gm-Message-State: AOAM530TFDZ2gKnTp76CODqPUwboNAI9mP+yIF6Us0em5ithA41LbSzv
 ask6ruRS6H2sJU+HmHGABsL/CSapH+MTHz5ZnNSa3wuy
X-Google-Smtp-Source: ABdhPJwtPDo0ipCNjIzEBNZzvkQgDFVDnlIElulP5m1XgFYCl+NwROn67gvQnfU38WUF+A0I+SS2/+ZBuIOqqO5UaDM=
X-Received: by 2002:a67:304e:: with SMTP id w75mr8253712vsw.192.1595599922571; 
 Fri, 24 Jul 2020 07:12:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:857:0:0:0:0:0 with HTTP;
 Fri, 24 Jul 2020 07:12:01 -0700 (PDT)
Received: by 2002:ab0:857:0:0:0:0:0 with HTTP;
 Fri, 24 Jul 2020 07:12:01 -0700 (PDT)
In-Reply-To: <CAEe7cvAh7a8_yrrWHQ2_5GUPCcfr2iWwR4oG686+u9yzQfAAtQ@mail.gmail.com>
References: <CAEe7cvAh7a8_yrrWHQ2_5GUPCcfr2iWwR4oG686+u9yzQfAAtQ@mail.gmail.com>
From: amit kumar <aatreyamit@gmail.com>
Date: Fri, 24 Jul 2020 19:42:01 +0530
Message-ID: <CAEe7cvD1vs=BX1oiuY-4Lu7wVESNQqBiM89gaNgW_yfBDerVAQ@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (aatreyamit[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jyyQi-001Sgq-OK
Subject: [linux-uvc-devel] Streaming h.264 video with ucv gadget application
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
Content-Type: multipart/mixed; boundary="===============4656492919301922730=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============4656492919301922730==
Content-Type: multipart/alternative; boundary="00000000000096ac8705ab308e42"

--00000000000096ac8705ab308e42
Content-Type: text/plain; charset="UTF-8"

Hi,
Is there any linux usb ucv gadget sample application to test h.264 video
stream with windows host?
Thanks,
Amit

--00000000000096ac8705ab308e42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi,</div><div dir=3D"auto">Is there any linux usb uc=
v gadget sample application to test h.264 video stream with windows host?</=
div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Amit<br><div class=3D"=
gmail_extra" dir=3D"auto"><br><div class=3D"gmail_quote"><br></div></div></=
div></div>

--00000000000096ac8705ab308e42--


--===============4656492919301922730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4656492919301922730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============4656492919301922730==--

