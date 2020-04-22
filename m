Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 473811B4F06
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 22 Apr 2020 23:21:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jRMoG-0006oN-VK; Wed, 22 Apr 2020 21:21:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pedro.lino@mailbox.org>) id 1jRMoF-0006oD-0h
 for linux-uvc-devel@lists.sourceforge.net; Wed, 22 Apr 2020 21:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IOwz3XiPP48Hp31EQqh/Zwi+DaRVUckxV9aQl4RH6vs=; b=guuGMnQNGNqG2y3n2OJoDqFxKF
 YZic9s4zeU2J03Nt1gJsmc0DLfkHUsAsC7s/qQhSlKMuncQYEZK5sPLuqRbc05S2R4QbZanvk+ZBm
 ifqcYx5q8DhZFVQMcvrWIeMezuD/bjGltjktqZVxHWHiZL2vBBkNKMj+axPyKzC8Mzag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Message-ID:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IOwz3XiPP48Hp31EQqh/Zwi+DaRVUckxV9aQl4RH6vs=; b=F
 NFSVPnGt1lC+TUwfaf/c9iLRzf49N7C8tCVWZtRzwxKf0ujhtMW1pnrtCZ0bmhItrRlgkGWlTogVa
 7JJcz8JThHjNTpmpD5UYLo3N+yLbmB6PwXErLh/UICenuc9Iq0WTk2/pllC52YrjoUfkHglAkFL1Q
 p8ARBA0ShI9EfzqY=;
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jRMoC-006uMO-6u
 for linux-uvc-devel@lists.sourceforge.net; Wed, 22 Apr 2020 21:21:30 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 496tf25YjKzQlK8
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 22 Apr 2020 23:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-transfer-encoding:content-type:content-type:mime-version
 :subject:subject:message-id:reply-to:from:from:date:date
 :received; s=mail20150812; t=1587590471; bh=IOwz3XiPP48Hp31EQqh/
 Zwi+DaRVUckxV9aQl4RH6vs=; b=JhUtuNSDfTqJ7AUhUS+5g6Q1MAlpi3vXsukZ
 fZd+SBhFV6VGKaJfo+3y2/MRz/a4VDRn/vAJyGWLuRHE7Wuwkox987qOFi/qSn0V
 sAnxRlr8NNT9fm1xd/luo0MMGybyH9+STYTJpQUk3ZXmyntVYX/xh5OzuM3qjWBQ
 M/co3ezTWawt2UOvBVN8g+3KsJ26yay7hhaZNutrbvvLtsVR9WtW1bApdyadOP3c
 ks42kNPlZt3Il8JJtOAAIxXqB7HwUDUg1gU1rfcG3ZHuVP+AdmpmdYMisiBHTTvk
 W8inUc4veuDQoJRxv/oLDewpleri9fCTuITHXqh+rz+cfQ0cCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; 
 t=1587590472; h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type: content-transfer-encoding:content-transfer-encoding;
 bh=IOwz3XiPP48Hp31EQqh/Zwi+DaRVUckxV9aQl4RH6vs=;
 b=C8tMVXmCwFa8zuTjsnwVJAYp/3AnZJ2MJaDDbj+WDziTlevMf6MSKwBhWN4zu/G0fqdiEw
 IPkSkjrwOkCFt5FBRM09L6gPuqavjKVOf1D0qOVytwol8tBDSIiSKz9jfL5jXtU91MBRid
 1sya2I+Ke09fy4yNivCgP2oAgXKYAPikvb57nLAjsXuPC5imefU8MLCmBmH+ihUHvRP1MT
 TFBN5+RnT5SxAU0sUhOrDNAJY0LbQXu37hIyr+0fjQRDcGzzmOqtWqjcRzl2+2khHxG1PZ
 xsyrTAFNg2XStLC+50/YFxBM5UUpTmrCKb/dUjfW2peoQM5wejYzBb0K5wHfig==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030) with ESMTP id YrdAAYtpqXsm
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 22 Apr 2020 23:21:11 +0200 (CEST)
Date: Wed, 22 Apr 2020 22:21:11 +0100 (WEST)
From: Pedro Lino <pedro.lino@mailbox.org>
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Message-ID: <935389281.123440.1587590471590@office.mailbox.org>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Rspamd-Queue-Id: BC0831772
X-Rspamd-Score: -4.67 / 15.00 / 15.00
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jRMoC-006uMO-6u
Subject: [linux-uvc-devel] Logitech webcam works but is not listed
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
Reply-To: Pedro Lino <pedro.lino@mailbox.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

My old (from 2001) Logitech QuickCam Communicate STX V-UBK45 runs correctly on Ubuntu 18.04.4 x64

This is just a heads up to include

Bus 001 Device 003: ID 046d:08d7 Logitech, Inc. QuickCam Communicate STX

on the list of UVC Supported Devices.

There is only a small quirk: it is not detected by Cheese (although it works with Jitsi running on Firefox 75.0 x64)

If you need any logs let me know.

Thank you for your effort to make Linux a fantastic OS!

Kind regards,
Pedro Lino


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
