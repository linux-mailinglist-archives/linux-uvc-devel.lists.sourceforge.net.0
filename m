Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 278791583E
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  7 May 2019 05:52:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hNr9U-0005Ly-Um; Tue, 07 May 2019 03:52:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <horribleapps@gmail.com>) id 1hNr9T-0005Lm-Us
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 May 2019 03:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XvYgl8bJxysyIZ/2wcr1Gdr/CdHTTMZlI6IrYAu7i0Y=; b=mb9zXNwsbR7TyZBCcXn+XCkF4R
 uw/tIHyTBbl30MGVESRqMqdfvbJroJr0RAEiETosskccKgD6uon4XkLjAGcmdr/gLA3yv/A1T96O3
 cmyc0kGHTWch2msmm776JZxp6Dw96tkDgjyfAz4dp1O/01kfie1F8hvbkUvfigSHqQW4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XvYgl8bJxysyIZ/2wcr1Gdr/CdHTTMZlI6IrYAu7i0Y=; b=T
 Dt1S4jvsi9ymRQkBuSjCMcJXEZDEw2NGvCSkMDm92h3nltLhbO1qgjGo7rZH/m85mPWwt1JC4F+lX
 +8pUtvZKHHT2ZP9SS69f9qZ4508MQbGTYLNSO/5DYjH1kyErQDFPTdgNP+P0HtwkU1p++rXXiteUz
 +G33CW9lEqHnyMH0=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hNr9S-008QCb-MK
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 May 2019 03:52:23 +0000
Received: by mail-pl1-f178.google.com with SMTP id g9so28077plm.6
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 06 May 2019 20:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=XvYgl8bJxysyIZ/2wcr1Gdr/CdHTTMZlI6IrYAu7i0Y=;
 b=CSiFxYOYZC/rfmm5wNAveg9NPNLre7yGVNK2IY1NBdjse1X77wQa/IiJo8xnlTz2y3
 RUWH+jqViwnrQtcs4aLyYi9bZZojdwhGGSg5RRtIERGRYY1K9oJQY98wnW1lwis1djZs
 7X1lCowDlzbjVa3gSsDkV7z/+gqEOwAxxr/tJ3JKnUdgHcZJx1tUp+tLyzBGw9VNsIiG
 ZkQd+ZABCHouKwp4dU0zAVW6PskdiGk/G/vhDHsRwCN1Y13BVOCenCDYdagfhzPLv/DD
 Iq1Z7sl3JA5/J9fbh/f2jd8DMbkaAflOcr9irW5A2BxDGu/axSeUspcNbSrfsqfHJlAy
 rggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=XvYgl8bJxysyIZ/2wcr1Gdr/CdHTTMZlI6IrYAu7i0Y=;
 b=UHJgHS7keAjhRs+WBAw8hSkeVmthuOq7FOmbIddYa3s5bW+v/XvtHhrp4lBj3PtVy7
 mV21SclgCWaJCRdEiV/KFL0w/0eyxMmz26U2vUBBPDYMHWoYrxLTZ63xiMwseT5P33XP
 1dgtUTzpBewJvjOS/Yz5F9vLa4NWWp3ojzal+PqMmWU/pvmc2gsyYzURU7pIPYJ52zVU
 e3r6U2LrC9Os+OllyudVIxhHhoxHIvC6lbeb3r8Tb8PwplhPBiWqgITLI7zLhPzwEnpF
 kViVsALaa1j3Bz22h5qpMMIPzo9evadV7z7zb2172ien8W7xk8Mz3xavygzB1fl0V2Db
 SZkg==
X-Gm-Message-State: APjAAAVHZAzn501Oh1NxS2ThVS0moAv67hYJXdpDfmVDUGPWN7QTrGGy
 aXHHnBbkqAKSA0G2it6YegPyLYFa
X-Google-Smtp-Source: APXvYqyUSxMOexYZu4+CX1EJaDN4pk2SQ1D5V1pqPWsPqfFRVWW14si9CRl4sAkgVf5wvUzDDwk5sQ==
X-Received: by 2002:a17:902:2808:: with SMTP id
 e8mr37968082plb.317.1557201136831; 
 Mon, 06 May 2019 20:52:16 -0700 (PDT)
Received: from horribleapps-HP-Slim-Desktop-290-p0xxx
 (2600-6c4e-0a80-0a65-f4e3-99f5-42df-cb8c.dhcp6.chtrptr.net.
 [2600:6c4e:a80:a65:f4e3:99f5:42df:cb8c])
 by smtp.gmail.com with ESMTPSA id i17sm5135467pfo.103.2019.05.06.20.52.15
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 20:52:16 -0700 (PDT)
Date: Mon, 6 May 2019 20:52:14 -0700
From: Your Name <horribleapps@gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <20190507035214.GA12586@horribleapps-HP-Slim-Desktop-290-p0xxx>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (horribleapps[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.178 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hNr9S-008QCb-MK
Subject: [linux-uvc-devel] 2 jpeg_decode functions in jpeg_decoder.c
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

Hello,

I was wondering why in jpeg_decoder.c of guvcview(v2.0.6) there are 2
functions called jpeg_decoder? 

Do the 2 functions serve 2 different purposes?

Thanks



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
