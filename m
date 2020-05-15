Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E78271D46A8
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 15 May 2020 09:05:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jZUPZ-0005DY-Hb; Fri, 15 May 2020 07:05:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xavier.bestel@free.fr>) id 1jZUPX-0005DF-Sr
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 07:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cZH6stb1IPhyHDG0QC4juKxoFfkIvRInd0jsRkdfHXY=; b=aLPX/Tjg3klIvrn5nijFzVMZn3
 KQd2Ega2mIeujV8quDr+dSVUSPd/KKf0Kkq60jOERyx17/0jchIpKiKE2FKwlLq6di4A6cccfi8jD
 8IGf1hwGaEMK/gCTNd4oDG73rNLwD25Rumg3CzWszrcPucHdpYFkO7a8Iit60Jsqu9cY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cZH6stb1IPhyHDG0QC4juKxoFfkIvRInd0jsRkdfHXY=; b=JBRgrarArYoOkuvBeEl95C2OHs
 igtrmP2lNW4Dz9ihRWn1P5dTqHWQ8iVF2y8yGtJ4Rq8nhGC9wxUdY6u73XaTq12atxXZTx5X7Sm/i
 nEvJ8uCsGzDOIjLy7AUsouaeETiv9G5OO6/Lpmf1+X8zI5Ga65elXE5OOmt4oTTriX3g=;
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZUPW-00H3K9-N3
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 07:05:35 +0000
Received: from awak.mobi (unknown [78.207.29.31])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 584CC5FFCF;
 Fri, 15 May 2020 09:05:28 +0200 (CEST)
Received: from xav13.bestouff.prv (xav13.bestouff.prv [10.2.228.109])
 by awak.mobi (Postfix) with ESMTPSA id 0F51F36010B;
 Fri, 15 May 2020 09:05:28 +0200 (CEST)
Message-ID: <52a07a7f36b9b4c0092c75f89acf7f10a62b59a3.camel@free.fr>
From: Xavier Bestel <xavier.bestel@free.fr>
To: Paul Fertser <fercerpav@gmail.com>
Date: Fri, 15 May 2020 09:05:27 +0200
In-Reply-To: <4314d37868ba58b64c0aedca7ceb61e2f7dd5526.camel@free.fr>
References: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
 <20200514164038.GZ16976@home.paul.comp>
 <4314d37868ba58b64c0aedca7ceb61e2f7dd5526.camel@free.fr>
User-Agent: Evolution 3.36.2-1 
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xavier.bestel[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.27.42.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZUPW-00H3K9-N3
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

TGUgdmVuZHJlZGkgMTUgbWFpIDIwMjAgw6AgMDg6NTcgKzAyMDAsIFhhdmllciBCZXN0ZWwgYSDD
qWNyaXQgOgo+IEhpLAo+IAo+IExlIGpldWRpIDE0IG1haSAyMDIwIMOgIDE5OjQwICswMzAwLCBQ
YXVsIEZlcnRzZXIgYSDDqWNyaXQgOgo+ID4gT24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMDY6MDE6
MTdQTSArMDIwMCwgWGF2aWVyIEJlc3RlbCB3cm90ZToKPiA+ID4gYnV0IHdoZW4gSSB0cnkgdG8g
b3BlbiBpdCB3aXRoICJjaGVlc2UiICh0aGUgR05PTUUgd2ViY2FtIGFwcCkgaXQncyBub3QKPiA+
ID4gc2VsZWN0YWJsZSwgYW5kIEkgc2VlIHRoZXNlIGVycm9yczoKPiA+IAo+ID4gUHJvYmFibHkg
Y2hlZXNlIGlzIFVWQy1vbmx5PyBUcnkgIm1wbGF5ZXIgdHY6Ly8iIGluc3RlYWQgb3IgYW55IG90
aGVyCj4gPiB2NGwyIGFwcGxpY2F0aW9uLgo+IAo+IEp1c3QgdHJpZWQgd2l0aCAiUXQgVjRMMiBU
ZXN0IEJlbmNoIiwgYWxpYXMgInF2NGwyIiBhbmQgbXkgd2ViY2FtIGNhbid0Cj4gYmUgZm91bmQu
IEJ1dCBpdHMgYXVkaW8gZGV2aWNlIGlzIHRoZXJlLgoKT2sgbXkgYmFkLCBpZiBJIHNlbGVjdCBp
dCBzcGVjaWZpY2FsbHkgZnJvbSB0aGUgY29tbWFuZGxpbmUgaXQgd29ya3MKd2VsbC4gU28gdGhl
IGJ1ZyBzZWVtcyB0byBiZSB0aGF0IHRoZSBjYW1lcmEgaXNuJ3QgY29ycmVjdGx5IGVudW1lcmF0
ZWQKc29tZWhvdy4gRG9lcyBhbnlvbmUga25vdyBob3cgZW51bWVyYXRpb24gd29ya3MgPwoKCVhh
dgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgt
dXZjLWRldmVsCg==
