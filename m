Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A08B31E9
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 15 Sep 2019 22:03:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1i9akG-00076u-Ff; Sun, 15 Sep 2019 20:03:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <barsnick@gmx.net>) id 1i9ak8-00076b-TU
 for linux-uvc-devel@lists.sourceforge.net; Sun, 15 Sep 2019 20:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S+3MF+ihq67H8RLtCsMpfigQdy5HuAVjOxohT+1b+BE=; b=eeFbGDppOJqlrd2g3nCnCGT+cI
 80RAdEsgd4N2oXmVsqgsHdYTOeG0ZkRp/AVIAOV4adEWop3bLQyatQ4slCOGJGeXahba6TknBFVQb
 BD8QcnC2/qHqcKT5EUlQC3EDkTOPJltP8DfRSqZMrl4tHdVsZIzvZj6zvzIp0ge3ufpo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S+3MF+ihq67H8RLtCsMpfigQdy5HuAVjOxohT+1b+BE=; b=crbwsv6tZuRmReQPkqQuN9fKZm
 s5LHK1HGTxj123UO2YNG3viTwmJ+dM/R2u0VJ2v1ucjUVAEjwYXQohpN1uOE1nRErqZ5XPy4UoRKw
 WxaBczsaemrKxn/ZLE+GtcKaVJwzTxWGZ5GDfpHLnx9nBLyb+zr1FefJMQOp2XeIwreI=;
Received: from mout.gmx.net ([212.227.17.20])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i9ak5-006q1O-8L
 for linux-uvc-devel@lists.sourceforge.net; Sun, 15 Sep 2019 20:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1568577802;
 bh=S+3MF+ihq67H8RLtCsMpfigQdy5HuAVjOxohT+1b+BE=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=hm4aBMNb3h+nCWJ1yu7X5AAqX5yRnpJ5nxcNBhrvEbkBOAktQWcPB6ehBtsVAF3Qp
 Q1km9oSBPccun04mVz41cvpM6sTR5rsOwXc+/VlgDJKVc24z/NCxWWysZHTnux/xmA
 41cQWfzEQvk++3WIoUMs0ycnhJnvd98BxjEB25UM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from sunshine.barsnick.net ([89.182.225.119]) by mail.gmx.com
 (mrgmx102 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LswqM-1iFbLE1IVe-012WVH; Sun, 15 Sep 2019 22:03:22 +0200
Date: Sun, 15 Sep 2019 22:03:19 +0200
From: Moritz Barsnick <barsnick@gmx.net>
To: Linux UVC development list <linux-uvc-devel@lists.sourceforge.net>
Message-ID: <20190915200319.GA25833@sunshine.barsnick.net>
References: <C672AA6DAAC36042A98BAD0B0B25BDA94CCEAF7D@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C672AA6DAAC36042A98BAD0B0B25BDA94CCEAF7D@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Provags-ID: V03:K1:UsqKoRrFdb+wZvI4r5UjqbErO4CE+YzHif6iY/ZCCOYI/eJydHZ
 1DV+BDTVfEJbpDKfFlsoGUuejgYyp/AAl3vLNwkzJY1bvoBn0NMEkW6hQhqIPe8mKOpap9S
 x18V6YRD1Y0iCMkthNvFLSDosLteOrl+3UmBgtOFms8qx1qgi11k+vD7RJwhN7eYQ8OHNVw
 WrE5w4utW+7wsK2bYllbA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1E3R7iZbe0E=:c7UX97rTVLk3tg0oM587Zw
 nrX4XuEZmThgsTI9hP6LWmxf1PbFQ0CWRTNgEwA6Lwi3vl0cYp4srHaJj5jvIVuN0NHy2Keke
 yz4UAkKXdqWSUGMf8Afsn2wQpG/mfxlHJFwFV9OdDQAqj8lRcWvQb3ZE9QYvzBQmVdngd7/yW
 3owaOmQBMVgdRW9/U1XOFiCKm5ExQECEAaF6b1EJOlVwPooZekOIEiueykJpxGC5BQF2e4T7u
 JJtOSXLj/bLmYgpDrUz2WL2hmMtCwmwj8affPOxdctO/JyMltIM44Z0+24NvObQp1y9bQukna
 eTq5hhRLWH0K0Y1/oDeMkUstui0+LmL1qzs9PY2niiLT/n+QZZ/9p9IpOJHoM8FG71S1Kw3I9
 hdq/qiX4qyp39dj0SrUn8IPxwnUxDIG8CAKHExna4bId+/ETl6vZSA50/pQVL/D9ZXStYIucy
 5zvdNtT2NFykVyFcYMo2epu9fIVuL99+K0Rkb9tlrrm036s/ME/+8tFPEhjYhmJRXwMWHj5jK
 R45uTCs1rjqWhBVXURAMYPPRksOQgaIH3oZ5CswybYltzhnn2WQMiNzyM7JCLsvEF4qOdICbU
 kjdL/l4EPi/AVPAsyCBJG4zxHcd4n8/tpD2reECmycvq+S/m7z6gDVfoRnKVd04/MB2hUPo0p
 QvpKF+9smYL34mB+KroQcOUzR2mZ+e0fqaKMFdfjpH/dBexpLYs0bWnl9OjlqBV7yIDk5CkUT
 Rg3KAde7Twjb8LMtPRYNOsvCuzxyw9LFDnqccxPoFkyJ9HGZPXKB4RkFQ8y8HiM+YixECfpDR
 /QRJOYq9glJq3sHEvkVD+8NYHI8fzadTeZa6u6mwwV457I4Ph4jc9hmbJOIqp7vOoGOWTPFRF
 RjqvdNf+n9w6lxMkyWGOGhXvt/McXPGlXZgh2Tk6/uK/8/md2QqJPZKQbtmdSdJVbCVTq7YMy
 b3ms7HLTL4NNm/8vV3jH77LrSOAH9RaY7DY2IMZaUAriDAOxoTi0wpxZpg6v3OZmeKKMBSQfu
 /jy4pKnIcdKV7dfiHnRJ/3kkZN3h59CYdymfQTWYwqx1XXDDj8BLwgYunYVvohDPp5s/EG3ec
 Pv5ufGZAPTx3rl3gbifMF9oJagF9Mk7WB+8b1NY0Nibo1Ep1iXKAb1MWpNPRlDu9BQl6g45IC
 WcETzxwdxcjZOucSS5pVRCSGNK/HC1yVFm0lxU8UV5Nype9f0srnyyc3a4JgvqZMYVkVM60eo
 jSFCUZmv+/v8WD5hZCXBXhE2RziBPwtbYWekYcrb/EHpQdeRJCJjHvTOubNY=
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (barsnick[at]gmx.net)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i9ak5-006q1O-8L
Subject: Re: [linux-uvc-devel] Cloning UV gadget testing application
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

Hi,

On Sun, Sep 15, 2019 at 17:27:25 +0000, Gopal, Saranya wrote:
> I am trying to clone the UVC gadget testing application code from here:
> http://git.ideasonboard.org/uvc-gadget.git
>
> But, I get this error:
> fatal: repository 'http://git.ideasonboard.org/uvc-gadget.git/' not found
>
> I tried git clone http://git.ideasonboard.org/git/uvc-gadget.git too. I get the same error.
> Has anyone been able to successfully clone this repo? Or does anyone have a fork of this latest repo from where I can clone?

Apparently, the HTTP interface is down. The other URI works for me:

git clone git://git.ideasonboard.org/uvc-gadget.git

(As listed on the *web* page http://git.ideasonboard.org/uvc-gadget.git)

Cheers,
Moritz


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
