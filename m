Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 945534D75D8
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 13 Mar 2022 15:26:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nTPAm-0000cl-9W; Sun, 13 Mar 2022 14:26:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1nTPAk-0000cW-NB
 for linux-uvc-devel@lists.sourceforge.net; Sun, 13 Mar 2022 14:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oU8N4IAeNqb1scsO433syRF8xOHay2G7R3ifaRyZK5U=; b=D7kTJOFJ1BLP9zxD4oKu0E5eSZ
 NISk0RUMqAS0GMDop13jIswhMEZlAB/ZjHok8gb7/EnzikcSz1fV4CLMGhKKKHvkRE4CxDX5+UoZb
 PV9zwzCxida4niPjKxCSZMDZMVs3k7wk4MxciBVAiYEP+4t0xhlJdYURoVv1q008beiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oU8N4IAeNqb1scsO433syRF8xOHay2G7R3ifaRyZK5U=; b=U03nTaIA7MeFzoUuAG3Fvc844j
 qnsKvHyTkmPw9+heQ1UFHXY41dj6YweBwmorioJ/Hte4pBZKDV1Gl1TWD/XaDIIhTv6dNKwEyjHpn
 q1/R1GeJgOrUj1mBfSV8qaMwchMODT7TTe0/BB6Uh11bAfe+yd4hn219ozdmYE4KOBFo=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nTPAe-0004k7-7i
 for linux-uvc-devel@lists.sourceforge.net; Sun, 13 Mar 2022 14:26:13 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4DF2C475;
 Sun, 13 Mar 2022 15:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647181552;
 bh=+R31GasfFNJAvD+168Wfu9KCxUt7oNMiXPUAQ5qTUCs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WQFVMPw8Z0kHghFhPjQi4iGGP0Z/JhlDlzdE7Xw05g0Pl19fb5Zhwq3rfV0JaWe6f
 L9hFk8OBhNubi+iig69qXIidMRBYCi5gh/1m77Ae6uLcU05X4//k6dessh2RV+7hlY
 YnWFHa7h479/XV8uXERiFZB4R/CimgGBQbo5k0x8=
Date: Sun, 13 Mar 2022 16:25:35 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Message-ID: <Yi3+33EysD/JqCdr@pendragon.ideasonboard.com>
References: <20220312203323.626657-1-j.neuschaefer@gmx.net>
 <Yi0F6mUm7iCRGvCt@pendragon.ideasonboard.com>
 <Yi0IH48oA8ztvX8K@latitude>
 <164716363247.3407360.2736836911812651199@Monstersaurus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <164716363247.3407360.2736836911812651199@Monstersaurus>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Mar 13, 2022 at 09:27:12AM +0000, Kieran Bingham wrote:
    > Quoting Jonathan Neuschäfer (2022-03-12 20:52:47) > > On Sat, Mar 12,
   2022 at 10:43:22PM +0200, Laurent Pinchart wrote: > > > Hi Jona [...] 
 
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
X-Headers-End: 1nTPAe-0004k7-7i
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
 Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

T24gU3VuLCBNYXIgMTMsIDIwMjIgYXQgMDk6Mjc6MTJBTSArMDAwMCwgS2llcmFuIEJpbmdoYW0g
d3JvdGU6Cj4gUXVvdGluZyBKb25hdGhhbiBOZXVzY2jDpGZlciAoMjAyMi0wMy0xMiAyMDo1Mjo0
NykKPiA+IE9uIFNhdCwgTWFyIDEyLCAyMDIyIGF0IDEwOjQzOjIyUE0gKzAyMDAsIExhdXJlbnQg
UGluY2hhcnQgd3JvdGU6Cj4gPiA+IEhpIEpvbmF0aGFuLAo+ID4gPiAKPiA+ID4gVGhhbmsgeW91
IGZvciB0aGUgcGF0Y2guCj4gPiA+IAo+ID4gPiBPbiBTYXQsIE1hciAxMiwgMjAyMiBhdCAwOToz
MzoyMlBNICswMTAwLCBKb25hdGhhbiBOZXVzY2jDpGZlciB3cm90ZToKPiA+ID4gPiBUaGUgbWFp
bGluZyBsaXN0IGFkZHJlc3MgZm9yIFVWQyBkZXZlbG9wbWVudCBoYXMgY2hhbmdlZCBhIHdoaWxl
IGFnbywKPiA+ID4gPiBidXQgaXQgd2FzIG9ubHkgdXBkYXRlZCBpbiBNQUlOVEFJTkVSUywgbm90
IGluIHRoZSBkb2N1bWVudGF0aW9uLgo+ID4gPiA+IFVwZGF0ZSBpdCB0aGVyZSwgdG9vLgo+ID4g
PiAKPiA+ID4gVGhhbmtzIGZvciBicmluZ2luZyB0aGlzIHRvIG15IGF0dGVudGlvbiwgSSBkaWRu
J3Qga25vdyB3ZSB3ZXJlIHN0aWxsCj4gPiA+IHJlZmVyZW5jaW5nIHRoYXQgb2xkIGxpc3QuCj4g
PiA+IAo+ID4gPiBIb3cgYWJvdXQgbW92aW5nIHRvIHRoZSBsaW51eC1tZWRpYUB2Z2VyLmtlcm5l
bC5vcmcgbWFpbGluZyBsaXN0IGluc3RlYWQKPiA+ID4gPyBJIGRvbid0IHNlZSBtYW55IHJlYXNv
bnMgdG8gdHJlYXQgdGhpcyBkcml2ZXIgd2l0aCBhIHNwZWNpYWwgbWFpbGluZwo+ID4gPiBsaXN0
IGFueW1vcmUuCj4gPiAKPiA+IEZpbmUgYnkgbWUsIGJ1dCBJJ2xsIHdhaXQgZm9yIHRoZSBvcGlu
aW9uIG9mIG90aGVycyB3aG8gbW9yZSByZWd1bGFybHkKPiA+IGNvbnRyaWJ1dGUgdG8gdGhlIG1l
ZGlhIHN1YnN5c3RlbS4KPiAKPiBCZWluZyBzdWJzY3JpYmVkIHRvIHRoZSBsaW51eC11dmMtZGV2
ZWwgbGlzdCwgYW5kIHNlZWluZyB0aGF0IGl0J3MgYQo+IGJsYWNrIGhvbGUgd2hlcmUgcGVvcGxl
IHBvc3QsIGFuZCB1bmZvcnR1bmF0ZWx5IGdldCB2ZXJ5IGxpdHRsZSB0byBubwo+IHJlc3BvbnNl
IEkgY2VydGFpbmx5IGNvbmN1ciB0aGF0IGl0IG5lZWRzIHRvIGJlIGNoYW5nZWQuCj4gCj4gSSBk
b24ndCB0aGluayB3ZSBjYW4gZ3VhcmFudGVlIGEgYmV0dGVyIHJlc3BvbnNlIHdpdGggbGludXgt
bWVkaWEsIGJ1dAo+IGF0IGxlYXN0IGl0J3MgdGhlIHJpZ2h0IHBsYWNlLCB3aGVyZSB0aGUgZHJp
dmVyIGlzIGFjdHVhbGx5IG1haW50YWluZWQuCj4gCj4gU28gSSBhbHNvIGJlbGlldmUgaXQgc2hv
dWxkIGJlIG1vdmVkIHRvIGxpbnV4LW1lZGlhLgoKSm9uYXRoYW4sIHdvdWxkIHlvdSBzZW5kIGEg
djIgdGhhdCByZWZlcmVuY2VzIHRoZQpsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcgbGlzdCA/
CgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0Ckxp
bnV4LXV2Yy1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtdXZjLWRldmVsCg==
