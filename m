Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BE91D4687
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 15 May 2020 08:58:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jZUIR-0000Uh-5n; Fri, 15 May 2020 06:58:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xavier.bestel@free.fr>) id 1jZUIQ-0000Ua-JA
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 06:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8oauzJwQScx0nGIgRFI4MCq+2NV2J64FnXbDvUrdyEU=; b=QC2sLZD27AVLxmH6TSZhztnrbQ
 kQjmR5ivYgnwnYTgQuqeSdPm09MSVLA7G3hm7gT3990EqTCdPBWEJz3/RvuVnwCUrp9AnpDmtCmKv
 OXvMGDBC8A9ctSDpAx2kr6s/Epdz7AX9Ezdo1a8F8IZwnsgO2CCQ2CaxCSTSo8K8xrMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8oauzJwQScx0nGIgRFI4MCq+2NV2J64FnXbDvUrdyEU=; b=fHl9CNCCD0wjCkUQ7YSG8wG88l
 aiO60FGm/QuncJhVo3wxA4GR5ccdO7rIUpy/8el+j4UoabVa+MO0n24CrW7WI4XjE/mbif/h/j8ME
 wLZt3o1IONhEGayc0Q+Gc9aFUamqP4etIMAH9VLTP9Ao/Q48twCUewU1Sn0Db8T6m+jU=;
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZUIM-008FPr-FS
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 06:58:14 +0000
Received: from awak.mobi (unknown [78.207.29.31])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 3A25E5FFE1;
 Fri, 15 May 2020 08:57:57 +0200 (CEST)
Received: from xav13.bestouff.prv (xav13.bestouff.prv [10.2.228.109])
 by awak.mobi (Postfix) with ESMTPSA id 1037D3604AD;
 Fri, 15 May 2020 08:57:57 +0200 (CEST)
Message-ID: <4314d37868ba58b64c0aedca7ceb61e2f7dd5526.camel@free.fr>
From: Xavier Bestel <xavier.bestel@free.fr>
To: Paul Fertser <fercerpav@gmail.com>
Date: Fri, 15 May 2020 08:57:56 +0200
In-Reply-To: <20200514164038.GZ16976@home.paul.comp>
References: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
 <20200514164038.GZ16976@home.paul.comp>
User-Agent: Evolution 3.36.2-1 
MIME-Version: 1.0
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.27.42.5 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xavier.bestel[at]free.fr)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZUIM-008FPr-FS
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

SGksCgpMZSBqZXVkaSAxNCBtYWkgMjAyMCDDoCAxOTo0MCArMDMwMCwgUGF1bCBGZXJ0c2VyIGEg
w6ljcml0IDoKPiBPbiBUaHUsIE1heSAxNCwgMjAyMCBhdCAwNjowMToxN1BNICswMjAwLCBYYXZp
ZXIgQmVzdGVsIHdyb3RlOgo+ID4gYnV0IHdoZW4gSSB0cnkgdG8gb3BlbiBpdCB3aXRoICJjaGVl
c2UiICh0aGUgR05PTUUgd2ViY2FtIGFwcCkgaXQncyBub3QKPiA+IHNlbGVjdGFibGUsIGFuZCBJ
IHNlZSB0aGVzZSBlcnJvcnM6Cj4gCj4gUHJvYmFibHkgY2hlZXNlIGlzIFVWQy1vbmx5PyBUcnkg
Im1wbGF5ZXIgdHY6Ly8iIGluc3RlYWQgb3IgYW55IG90aGVyCj4gdjRsMiBhcHBsaWNhdGlvbi4K
Ckp1c3QgdHJpZWQgd2l0aCAiUXQgVjRMMiBUZXN0IEJlbmNoIiwgYWxpYXMgInF2NGwyIiBhbmQg
bXkgd2ViY2FtIGNhbid0CmJlIGZvdW5kLiBCdXQgaXRzIGF1ZGlvIGRldmljZSBpcyB0aGVyZS4K
CglYYXYKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtdXZjLWRldmVsIG1haWxpbmcgbGlzdApMaW51eC11dmMtZGV2ZWxAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xp
bnV4LXV2Yy1kZXZlbAo=
