Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8314F4D70EB
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 12 Mar 2022 21:44:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nT8ak-000100-JT; Sat, 12 Mar 2022 20:43:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1nT8ai-0000zr-9N
 for linux-uvc-devel@lists.sourceforge.net; Sat, 12 Mar 2022 20:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9xeTiuyejRwYEpj8OiAibms2es3JEUXYvWQ7v45pCHY=; b=HHBaQxiOMDQ2itZoUJsjmGQiQH
 Gyio+04gHVhaRH+VsJjfWg+/Ge13LUDweKZeQXqObkWtuq1DzEkQXZV5c7WvN8I67huu5C8n6T3BO
 7y8arNTg09xdqUgCiVK2Ocg9zTL+QbMUIXb1e4KC1FerkylwImnJu+gFrByih7wBQsYw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9xeTiuyejRwYEpj8OiAibms2es3JEUXYvWQ7v45pCHY=; b=e7/0LgS3M4ptMFMggctDtJdR6I
 dcCI5tmSkPZZLj/lqawpNPXx6uCWACsPWEKDamEhSKVOaBg95cGLI1SRzy2IJy64LHM5t7YjfPMeE
 zLpoKTr873w3FoF527fddJcr9LwRVpGp20+6HSC6vJ52yXlqPB8y2rAaG+gZ/5VfCsq8=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nT8ac-0001fk-2e
 for linux-uvc-devel@lists.sourceforge.net; Sat, 12 Mar 2022 20:43:54 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D924A8C4;
 Sat, 12 Mar 2022 21:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647117819;
 bh=ZeEH/itQEzkuzgNJu5BxrRT3n9gQmJU57PR5oFX6p8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VHvUE9q5bHcZFWT6aj0KRl3j4WM7nSI2b+A3nDiy1SWDbDF1y/K7V3XYi5vSfNZaO
 qNsLF8rZKqIbyvRCnpVuoi5SI6P++UBpAgO+mT037IcuKc0xBXlq64hOdIY5R+Hr1g
 i3QINgGKA3/8WvtHOwMIsex/TCzwakAMiuNom4kU=
Date: Sat, 12 Mar 2022 22:43:22 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Message-ID: <Yi0F6mUm7iCRGvCt@pendragon.ideasonboard.com>
References: <20220312203323.626657-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220312203323.626657-1-j.neuschaefer@gmx.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Jonathan, Thank you for the patch. On Sat, Mar 12, 2022
    at 09:33:22PM +0100, Jonathan Neuschäfer wrote: > The mailing list address
    for UVC development has changed a while ago, > but it was only updated in
    MAINTAINERS, not in the docum [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nT8ac-0001fk-2e
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-uvc-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

SGkgSm9uYXRoYW4sCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk9uIFNhdCwgTWFyIDEyLCAy
MDIyIGF0IDA5OjMzOjIyUE0gKzAxMDAsIEpvbmF0aGFuIE5ldXNjaMOkZmVyIHdyb3RlOgo+IFRo
ZSBtYWlsaW5nIGxpc3QgYWRkcmVzcyBmb3IgVVZDIGRldmVsb3BtZW50IGhhcyBjaGFuZ2VkIGEg
d2hpbGUgYWdvLAo+IGJ1dCBpdCB3YXMgb25seSB1cGRhdGVkIGluIE1BSU5UQUlORVJTLCBub3Qg
aW4gdGhlIGRvY3VtZW50YXRpb24uCj4gVXBkYXRlIGl0IHRoZXJlLCB0b28uCgpUaGFua3MgZm9y
IGJyaW5naW5nIHRoaXMgdG8gbXkgYXR0ZW50aW9uLCBJIGRpZG4ndCBrbm93IHdlIHdlcmUgc3Rp
bGwKcmVmZXJlbmNpbmcgdGhhdCBvbGQgbGlzdC4KCkhvdyBhYm91dCBtb3ZpbmcgdG8gdGhlIGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZyBtYWlsaW5nIGxpc3QgaW5zdGVhZAo/IEkgZG9uJ3Qg
c2VlIG1hbnkgcmVhc29ucyB0byB0cmVhdCB0aGlzIGRyaXZlciB3aXRoIGEgc3BlY2lhbCBtYWls
aW5nCmxpc3QgYW55bW9yZS4KCj4gRml4ZXM6IDYxNmJkNGUyNTczY2IgKCJbbWVkaWFdIE1BSU5U
QUlORVJTOiBVcGRhdGUgVVZDIGRyaXZlcidzIG1haWxpbmcgbGlzdCBhZGRyZXNzIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBKb25hdGhhbiBOZXVzY2jDpGZlciA8ai5uZXVzY2hhZWZlckBnbXgubmV0Pgo+
IC0tLQo+IAo+IFRoZSBNTCBpcyBtYXJrZWQgInN1YnNjcmliZXJzLW9ubHkiIGluIE1BSU5UQUlO
RVJTLiBQZXJoYXBzIGl0IHdvdWxkCj4gYmUgdXNlZnVsIHRvIGJyaW5nIHRoYXQgdXAgaW4gdGhl
IGRvY3MgdG9vLgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJp
dmVycy91dmN2aWRlby5yc3QgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy91dmN2aWRlby5yc3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy91dmN2aWRlby5yc3QKPiBpbmRleCBlNWZkOGZhZDMzM2M5Li5k
Y2Y5OTJmODVkNDcxIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9t
ZWRpYS9kcml2ZXJzL3V2Y3ZpZGVvLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNl
LWFwaS9tZWRpYS9kcml2ZXJzL3V2Y3ZpZGVvLnJzdAo+IEBAIC03LDcgKzcsNyBAQCBUaGlzIGZp
bGUgZG9jdW1lbnRzIHNvbWUgZHJpdmVyLXNwZWNpZmljIGFzcGVjdHMgb2YgdGhlIFVWQyBkcml2
ZXIsIHN1Y2ggYXMKPiAgZHJpdmVyLXNwZWNpZmljIGlvY3RscyBhbmQgaW1wbGVtZW50YXRpb24g
bm90ZXMuCj4gCj4gIFF1ZXN0aW9ucyBhbmQgcmVtYXJrcyBjYW4gYmUgc2VudCB0byB0aGUgTGlu
dXggVVZDIGRldmVsb3BtZW50IG1haWxpbmcgbGlzdCBhdAo+IC1saW51eC11dmMtZGV2ZWxAbGlz
dHMuYmVybGlvcy5kZS4KPiArbGludXgtdXZjLWRldmVsQGxpc3RzLnNvdXJjZWZvcmNlLm5ldC4K
PiAKPiAKPiAgRXh0ZW5zaW9uIFVuaXQgKFhVKSBzdXBwb3J0CgotLSAKUmVnYXJkcywKCkxhdXJl
bnQgUGluY2hhcnQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vbGludXgtdXZjLWRldmVsCg==
