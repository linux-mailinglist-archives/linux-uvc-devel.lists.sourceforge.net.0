Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B031D470C
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 15 May 2020 09:27:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jZUkM-0001tN-K8; Fri, 15 May 2020 07:27:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xavier.bestel@free.fr>) id 1jZUkJ-0001sr-0A
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 07:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lOdgiNO3IuS32YTQdYh7tJITr/huFWGV+XiQyYrAfEA=; b=UGORpSEpVxIfWOhDldy7I+H84w
 jCqcv9uCy+bQo27QqQk2dyF6M4+WuCvNTpVHzYOgL0h3Sw+MUuNwqgtrgk3otxRhMC0WW2dNX/Qci
 wVJEqRiFuZj07C+vYlJWiXm84x+KhLwHwQJLhZtQr+O4u5Ixq3ZjE7KTTqMX4Wb4daxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lOdgiNO3IuS32YTQdYh7tJITr/huFWGV+XiQyYrAfEA=; b=GcIpBau25waeMz70VWpXEUWLV0
 8evRIDyzNCWHcXCUUg8TsD2gFO6zUrMnFvWxuutDT9TdFv8UbI1jh4UiR5q6L784BXrmiDT4t2KYi
 kWau4GxUSG1PWCGkLde3+IDV/8T0Q1YWfdTJ6ZPJ6hpFF7XByYuqJoprF5YkZb4DpbMo=;
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZUkH-00BJ3r-Rm
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 07:27:02 +0000
Received: from awak.mobi (unknown [78.207.29.31])
 by smtp5-g21.free.fr (Postfix) with ESMTP id B070E5FF9E;
 Fri, 15 May 2020 09:26:55 +0200 (CEST)
Received: from xav13.bestouff.prv (xav13.bestouff.prv [10.2.228.109])
 by awak.mobi (Postfix) with ESMTPSA id 8EF683603C5;
 Fri, 15 May 2020 09:26:55 +0200 (CEST)
Message-ID: <f7c5e83d9fe0aa6a9fc1cd0fd51b76537f49b8b1.camel@free.fr>
From: Xavier Bestel <xavier.bestel@free.fr>
To: Paul Fertser <fercerpav@gmail.com>
Date: Fri, 15 May 2020 09:26:55 +0200
In-Reply-To: <20200515070855.GG16976@home.paul.comp>
References: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
 <20200514164038.GZ16976@home.paul.comp>
 <4314d37868ba58b64c0aedca7ceb61e2f7dd5526.camel@free.fr>
 <52a07a7f36b9b4c0092c75f89acf7f10a62b59a3.camel@free.fr>
 <20200515070855.GG16976@home.paul.comp>
User-Agent: Evolution 3.36.2-1 
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xavier.bestel[at]free.fr)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.27.42.5 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZUkH-00BJ3r-Rm
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

TGUgdmVuZHJlZGkgMTUgbWFpIDIwMjAgw6AgMTA6MDggKzAzMDAsIFBhdWwgRmVydHNlciBhIMOp
Y3JpdCA6Cj4gU28gaWYgeW91IGdldCB2aWRlbyBzdHJlYW0gZnJvbSB5b3VyIGNhbWVyYSBpdCBt
ZWFucyBpdCB3b3JrcywgYW5kIGl0Cj4gaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBVVkMgKGFzIGl0
IGRvZXNuJ3Qgc3VwcG9ydCB0aGUgVVZDIHN0YW5kYXJkIGFuZAo+IHNvIGhhbmRsZWQgYnkgdGhl
IGdzcGNhIGRyaXZlciBpbnN0ZWFkKSwgcmlnaHQ/IElzIHlvdXIgcXVlc3Rpb24gbm93Cj4gcXY0
bDItc3BlY2lmaWM/CgpXZWxsLCBJIGNhbid0ICJzZWUiIHRoZSB3ZWJjYW0gaW4gY2hlZXNlIG9y
IHF2NGwyLCBpbiBjaGVlc2UgSSBjYW4ndApldmVuIHNlbGVjdCBpdCBtYW51YWxseSwgYW5kIGlu
IE1pY3Jvc29mdCBUZWFtcyBJIGNhbiBzZWxlY3QgaXQgYnV0IGl0CnNheXMgdGhhdCB2aWRlbyBk
b2Vzbid0IHdvcmsuIE5vdCBhIGZ1bGwgc3VjY2VzcyBpZiB5b3UgYXNrIG1lLgoKCVhhdgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC11dmMt
ZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtdXZjLWRl
dmVsCg==
