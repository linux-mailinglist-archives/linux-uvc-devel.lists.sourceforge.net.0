Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6A441FF4D
	for <lists+linux-uvc-devel@lfdr.de>; Sun,  3 Oct 2021 04:56:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mWrfF-0002Fl-AQ; Sun, 03 Oct 2021 02:55:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <logans@cottsay.net>) id 1mWrfE-0002Fe-D0
 for linux-uvc-devel@lists.sourceforge.net; Sun, 03 Oct 2021 02:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=It6jebDl3nuns7IOICpyjNP6KBken6kJglWUNWJd05c=; b=dqDFMygODnypnxpN5lVg0Y8L4N
 oE06kksVZUHyjKUcvt14r9UeKrUOY+A95yw2PBGrZC4vHkjcN5XgEDuqaezffDYIsb7aQp1bbRNRQ
 7Nmtr/GetQCxM5VE35UDHuONusFy16Qu6sTxUdloaX69oq/Sv0x7CxmGhTU+RGikKBLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=It6jebDl3nuns7IOICpyjNP6KBken6kJglWUNWJd05c=; b=E
 O9Gw+zWItwNGZnzrhiU+B1laFnMo+7kXkGsNp4KiQtX/fUank1LlPdSGUUO0xyL5Z6GEAgPJOcvZw
 +kLPMusFd05vvhJNJZFioZsyvhGRb5KER0MI2VInpzWn8LGWu301duqUR6UmtZjnOWJlcrYF1btux
 a4a1oPhamQPtu9Z0=;
Received: from azure2.cottsay.net ([104.41.151.152])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mWrfD-001KYL-ME
 for linux-uvc-devel@lists.sourceforge.net; Sun, 03 Oct 2021 02:55:44 +0000
Received: from cottsay-server.delphi.cottsay.net (unknown [24.19.54.182])
 by azure2.cottsay.net (Postfix) with ESMTPS id EE04A19F62A
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun,  3 Oct 2021 02:36:54 +0000 (UTC)
Received: from cottsay-lenovo.delphi.cottsay.net
 (cottsay-lenovo.delphi.cottsay.net [172.16.8.31])
 by cottsay-server.delphi.cottsay.net (Postfix) with ESMTPSA id ED2B53C0436;
 Sat,  2 Oct 2021 19:36:53 -0700 (PDT)
From: Scott K Logan <logans@cottsay.net>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-uvc-devel@lists.sourceforge.net (subscribers-only),
 linux-media@vger.kernel.org
Date: Sat,  2 Oct 2021 19:35:53 -0700
Message-Id: <20211003023554.885815-1-logans@cottsay.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Ever since I started using them,
 I've noticed that the absolute
 exposure control for the LifeCam webcam hasn't functioned properly. After
 some poking around, I managed to charactarize the behavior. To [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [104.41.151.152 listed in list.dnswl.org]
X-Headers-End: 1mWrfD-001KYL-ME
Subject: [linux-uvc-devel] [PATCH 0/1] media: uvcvideo: Add quirk for
 exponential exposure
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
Cc: Scott K Logan <logans@cottsay.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Ever since I started using them, I've noticed that the absolute exposure
control for the LifeCam webcam hasn't functioned properly. After some
poking around, I managed to charactarize the behavior. To summarize,
only values which follow an exponential pattern appear to result in the
intended change to the webcam's image.

Ideally this quirky behavior could be handled with an extension unit,
but I'm not sure this behavior can be implemented there. I tested this
patch with the two LifeCam webcams I have on hand.

Scott K Logan (1):
  media: uvcvideo: Add quirk for exponential exposure

 drivers/media/usb/uvc/uvc_ctrl.c   | 41 ++++++++++++++++++++++++++++++
 drivers/media/usb/uvc/uvc_driver.c | 18 +++++++++++++
 drivers/media/usb/uvc/uvcvideo.h   |  1 +
 3 files changed, 60 insertions(+)

-- 
2.31.1



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
