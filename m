Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 380D44D73F7
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 13 Mar 2022 10:28:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nTKNl-0001fp-Bj; Sun, 13 Mar 2022 09:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kieran.bingham@ideasonboard.com>) id 1nTKNj-0001fi-JI
 for linux-uvc-devel@lists.sourceforge.net; Sun, 13 Mar 2022 09:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:To:Cc:From:Subject:References:
 In-Reply-To:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5fzYKPeKVvCjG/8w4Q5PwtknY0GBcf3hhFb+xSV4Duo=; b=f+cvgwXOY7QWl1ZTIBy8eB10kx
 bLiWUxkoLZEje+EbZLbdGpGAXIgdkXaSM7akyLVFg+7iMUy9dHZ8LC4Hmhfj6EDxCuWdM4oZY08Bd
 7V5FKGXRaPRiK1U/bE4UYpl4NaAG4E7HO6S+dR8lpnEvcge1qEt4ogQUJQHMkKn1tdEs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Message-ID:Date:To:Cc:From:Subject:References:In-Reply-To:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5fzYKPeKVvCjG/8w4Q5PwtknY0GBcf3hhFb+xSV4Duo=; b=f5yow/YnZwMuUy6r7LoPGJOg+K
 6qhvqJhE5OesGRqfbZ8XkPzX72eJ9Sh7rPGFc9+Ao0z5BeBoj2YJa8lSvBgXbpcaV5F+Im3YtIfej
 ARn8i7+tzowpcJX35BS9JEjM0TkdBOomxLc7tWK1PQmY06Sqz1lFWIABZbUD+Jbm7Yao=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nTKVc-0001kq-VJ
 for linux-uvc-devel@lists.sourceforge.net; Sun, 13 Mar 2022 09:27:31 +0000
Received: from pendragon.ideasonboard.com
 (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6DA62492;
 Sun, 13 Mar 2022 10:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647163634;
 bh=5fzYKPeKVvCjG/8w4Q5PwtknY0GBcf3hhFb+xSV4Duo=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=pqxofatWVI8GVPkQ0HFaYe4BvJ0C/aENfgfajKDN1vDh3Yo92r/8D6W8OeduuRIrv
 gDc99C1vX1orqCtnI1z44XT5J7QQVe9A1aBCF61RdvV5R0qUg99F0WetZU2frbp9Br
 4+MLCsPgv7AMnDfXoF/7uADBpvkx3Gfa7sCmkxDA=
MIME-Version: 1.0
In-Reply-To: <Yi0IH48oA8ztvX8K@latitude>
References: <20220312203323.626657-1-j.neuschaefer@gmx.net>
 <Yi0F6mUm7iCRGvCt@pendragon.ideasonboard.com> <Yi0IH48oA8ztvX8K@latitude>
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: Jonathan =?utf-8?q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Sun, 13 Mar 2022 09:27:12 +0000
Message-ID: <164716363247.3407360.2736836911812651199@Monstersaurus>
User-Agent: alot/0.10
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Quoting Jonathan Neuschäfer (2022-03-12 20:52:47) > On Sat,
    Mar 12, 2022 at 10:43:22PM +0200, Laurent Pinchart wrote: > > Hi Jonathan,
    > > > > Thank you for the patch. > > > > On Sat, Mar 12, 2022 at [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1nTKVc-0001kq-VJ
Subject: Re: [linux-uvc-devel] [PATCH] docs: media: uvcvideo: Update mailing
 list address
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
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-uvc-devel@lists.sourceforge.net,
 Jonathan =?utf-8?q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

UXVvdGluZyBKb25hdGhhbiBOZXVzY2jDpGZlciAoMjAyMi0wMy0xMiAyMDo1Mjo0NykKPiBPbiBT
YXQsIE1hciAxMiwgMjAyMiBhdCAxMDo0MzoyMlBNICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0IHdy
b3RlOgo+ID4gSGkgSm9uYXRoYW4sCj4gPiAKPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+
ID4gCj4gPiBPbiBTYXQsIE1hciAxMiwgMjAyMiBhdCAwOTozMzoyMlBNICswMTAwLCBKb25hdGhh
biBOZXVzY2jDpGZlciB3cm90ZToKPiA+ID4gVGhlIG1haWxpbmcgbGlzdCBhZGRyZXNzIGZvciBV
VkMgZGV2ZWxvcG1lbnQgaGFzIGNoYW5nZWQgYSB3aGlsZSBhZ28sCj4gPiA+IGJ1dCBpdCB3YXMg
b25seSB1cGRhdGVkIGluIE1BSU5UQUlORVJTLCBub3QgaW4gdGhlIGRvY3VtZW50YXRpb24uCj4g
PiA+IFVwZGF0ZSBpdCB0aGVyZSwgdG9vLgo+ID4gCj4gPiBUaGFua3MgZm9yIGJyaW5naW5nIHRo
aXMgdG8gbXkgYXR0ZW50aW9uLCBJIGRpZG4ndCBrbm93IHdlIHdlcmUgc3RpbGwKPiA+IHJlZmVy
ZW5jaW5nIHRoYXQgb2xkIGxpc3QuCj4gPiAKPiA+IEhvdyBhYm91dCBtb3ZpbmcgdG8gdGhlIGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZyBtYWlsaW5nIGxpc3QgaW5zdGVhZAo+ID4gPyBJIGRv
bid0IHNlZSBtYW55IHJlYXNvbnMgdG8gdHJlYXQgdGhpcyBkcml2ZXIgd2l0aCBhIHNwZWNpYWwg
bWFpbGluZwo+ID4gbGlzdCBhbnltb3JlLgo+IAo+IEZpbmUgYnkgbWUsIGJ1dCBJJ2xsIHdhaXQg
Zm9yIHRoZSBvcGluaW9uIG9mIG90aGVycyB3aG8gbW9yZSByZWd1bGFybHkKPiBjb250cmlidXRl
IHRvIHRoZSBtZWRpYSBzdWJzeXN0ZW0uCgpCZWluZyBzdWJzY3JpYmVkIHRvIHRoZSBsaW51eC11
dmMtZGV2ZWwgbGlzdCwgYW5kIHNlZWluZyB0aGF0IGl0J3MgYQpibGFjayBob2xlIHdoZXJlIHBl
b3BsZSBwb3N0LCBhbmQgdW5mb3J0dW5hdGVseSBnZXQgdmVyeSBsaXR0bGUgdG8gbm8KcmVzcG9u
c2UgSSBjZXJ0YWlubHkgY29uY3VyIHRoYXQgaXQgbmVlZHMgdG8gYmUgY2hhbmdlZC4KCkkgZG9u
J3QgdGhpbmsgd2UgY2FuIGd1YXJhbnRlZSBhIGJldHRlciByZXNwb25zZSB3aXRoIGxpbnV4LW1l
ZGlhLCBidXQKYXQgbGVhc3QgaXQncyB0aGUgcmlnaHQgcGxhY2UsIHdoZXJlIHRoZSBkcml2ZXIg
aXMgYWN0dWFsbHkgbWFpbnRhaW5lZC4KClNvIEkgYWxzbyBiZWxpZXZlIGl0IHNob3VsZCBiZSBt
b3ZlZCB0byBsaW51eC1tZWRpYS4KCi0tCktpZXJhbgoKCj4gCj4gCj4gSm9uYXRoYW4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC11dmMtZGV2
ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtdXZjLWRldmVs
Cg==
