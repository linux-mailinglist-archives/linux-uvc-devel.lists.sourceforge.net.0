Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 328FF18E250
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 21 Mar 2020 16:13:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jFfnf-0001Q9-69; Sat, 21 Mar 2020 15:12:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maximilian.zraunig@gmail.com>) id 1jFfnd-0001Pf-0W
 for linux-uvc-devel@lists.sourceforge.net; Sat, 21 Mar 2020 15:12:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=cx3JALGk9CDAinoF/w5ZG4IK8Z
 n9Hppo4rCWia0iqG5JOWPFX1gJ7oSBasyk9PXD+GEYV/AWaIa4SYbqxWgm+/tysvK8M8YqqJIzQup
 aHOfgkYgsZT/xQiLzf5yMVl0ASIJxGiEvChxeLH9SbFA66oY3E2gfc7DoyJrkPnXj/wk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=Q
 yKxgbnYNcTV+XY4zuhzJU2G3HvJE+w0S+n89Sn3EIM6iNcyrRSmktn1axZegOaPLCweQEO6zXF7+Y
 LmlkNcaYcDmFTrEEszwZFP5tmpuD+N8UQ1fNzxiTIqPGPeBGoq+p2ElOdCwLUQ5pX/74zHsKBe2Ub
 LGTqbbFbKR3Tttyc=;
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jFfnZ-00GPJ2-Lh
 for linux-uvc-devel@lists.sourceforge.net; Sat, 21 Mar 2020 15:12:32 +0000
Received: by mail-wr1-f48.google.com with SMTP id v11so11041730wrm.9
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat, 21 Mar 2020 08:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:date:mime-version
 :content-transfer-encoding;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=DNisW0FdCFIlCrx6K4gzuqCN0DkdwAAmqPfLvgflzgUbb7c8yCbuwC+QArXskMl91U
 0HQPyNZvPdtYTH11r+wy7ztkes/ARl3qhkVEW0bGA6ggbKz8yuR0RXvQuNO7s8T2AJbl
 WUP4r/fGJgC5e1yVd1sMUYPP1d8akxAT7NLIIW3U9EcqPoEDGe0Bt/USDHhiVMztOU7h
 sxhPmHMr2y1uTvoH33kkDJxjQ5W4mfNmg3BLzAWr2WIjD/zrxUatF3HRtVe8deUiwN5K
 5fov3e/G1Sxltl09PMxgbUyB4gf3jt2WVBGAb+93QuP0DCx42SFv+N0FBKhjvHn9JgfJ
 4iQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:mime-version
 :content-transfer-encoding;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=tM5HLBQlARHTyJTNKkxdW34jRKg7vvmn61MXZrd5GPMDrpOmRsHp1tGPv2ADzcj/12
 +9A5nSQhHja5oSS+adZ/1eZ4JNxGIG2VjDYHJnxSonCWYUwHGWT9ULJhvvDoWorj43ic
 fXSiNry28lAq9Kym3k0OQvfGDTCtX9quWTex7WAAFApCXH38KMXQW7QM1M+4eFWX1v9Z
 Klsy6D1MqrBsqNjsYbhgA7cbA5+ZaA8qsPYTohZHH1GeSx+wbUVbEA+f9XOS2ikp0Q18
 8jLWkXCuHbFjINileFskJt+vB5ZnqXGIre6Caj/ceMyyHoqyNv+5icf6bdVPjKCMYoy1
 PY7A==
X-Gm-Message-State: ANhLgQ2YXNxwdA8CZuXnjYATA1kPpyLQQRIkaP5Jbx+aXl8UYN3Pxqai
 YZFKielEqeNDu7Gvghrpk2w7daaH
X-Google-Smtp-Source: ADFU+vsjgfmKK3Sdrz4dOfLsH3NydOthtSEB74fenvBh9zRr8/MTKlK6AacAbMEni4YrIDxp9z2V8g==
X-Received: by 2002:a5d:510d:: with SMTP id s13mr7962868wrt.110.1584803541771; 
 Sat, 21 Mar 2020 08:12:21 -0700 (PDT)
Received: from linux-1r6q.lan ([178.114.56.101])
 by smtp.gmail.com with ESMTPSA id o9sm14199238wrw.20.2020.03.21.08.12.20
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 08:12:21 -0700 (PDT)
Message-ID: <1584803539.12406.2.camel@gmail.com>
From: maximilian.zraunig@gmail.com
To: linux-uvc-devel@lists.sourceforge.net
Date: Sat, 21 Mar 2020 16:12:19 +0100
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maximilian.zraunig[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jFfnZ-00GPJ2-Lh
Subject: [linux-uvc-devel] Lenovo U400 Notebook Camera not supported
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




_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
