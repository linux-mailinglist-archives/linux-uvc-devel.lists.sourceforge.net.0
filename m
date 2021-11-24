Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCA945B476
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 24 Nov 2021 07:46:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mpm30-0004CC-Ee; Wed, 24 Nov 2021 06:46:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <laurent.pinchart@ideasonboard.com>)
 id 1mpm2x-0004C5-U6
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Nov 2021 06:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9L4wCLMVe30LbT1y6sO+8uunH8RSnNPPTEYgrErXDbo=; b=UTLjOJdtGqpy0iYrLeVTQqKLfC
 6qkzJWwqj0wyebOqMABJJ/u7mzw+AeAUqP1beMTN/rH0oTVArKdAn8umoCjbGLcBOKOAyG6jn5Urp
 SiTSkEoTKFQZQerCfgAoof5iFVIZuEjkjXBHb0C/jkuM1ec2fr4/GcsK6nFJgZYdd4UQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9L4wCLMVe30LbT1y6sO+8uunH8RSnNPPTEYgrErXDbo=; b=A2RtZ5kg7o4WuBDhTLUnrqUKKQ
 rQP37uVanfIJR7zYF8cgrA+1YBJPcHteYt3P+u6X/DyQANAeEJ1HjOjd0InfAncpZrSNnIAUtMHjX
 ds4uyV/VlsWl6kJNY8tCHuNO7DkrBHnkSUzPHTqJP43jWXZBbVMyT2kW8fX6pO2hllD0=;
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpm2v-0072g0-0Z
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Nov 2021 06:46:23 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 042C7D78;
 Wed, 24 Nov 2021 07:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1637735423;
 bh=oLd/p6dnZcznalXXe2bYzvgmoujMsT8+XQYircdZ648=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yi9ld04IgcOoUC/xnaSLdfFAr5+MlkTiI6IU0CD5IxlhBi0blec6hcxP4SBF/YWqX
 P9LZuYyN6JWV/aorQNlZRqTJcmLumgncCepaVLDgbwOnziwwNRQzJ+94eNaMzaCd82
 lKPu3SHbopaZVGEJjRregf//BoyCNIldPyDx+ZUA=
Date: Wed, 24 Nov 2021 08:30:00 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Scott K Logan <logans@cottsay.net>
Message-ID: <YZ3b6ObAhJnz9OSF@pendragon.ideasonboard.com>
References: <20211003023554.885815-2-logans@cottsay.net>
 <20211124005834.556428-1-logans@cottsay.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211124005834.556428-1-logans@cottsay.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Scott, Thank you for the patch. On Wed, Nov 24, 2021 at
 12:59:05AM +0000, Scott K Logan wrote: > At least some of the Microsoft LifeCam
 series of webcams exhibit a > behavior which requires a 'quirk' to be handled
 properly. When > c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mpm2v-0072g0-0Z
Subject: Re: [linux-uvc-devel] [PATCH v2 1/1] media: uvcvideo: Add quirk for
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
Cc: linux-uvc-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

SGkgU2NvdHQsCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk9uIFdlZCwgTm92IDI0LCAyMDIx
IGF0IDEyOjU5OjA1QU0gKzAwMDAsIFNjb3R0IEsgTG9nYW4gd3JvdGU6Cj4gQXQgbGVhc3Qgc29t
ZSBvZiB0aGUgTWljcm9zb2Z0IExpZmVDYW0gc2VyaWVzIG9mIHdlYmNhbXMgZXhoaWJpdCBhCj4g
YmVoYXZpb3Igd2hpY2ggcmVxdWlyZXMgYSAncXVpcmsnIHRvIGJlIGhhbmRsZWQgcHJvcGVybHku
IFdoZW4KPiBjb25maWd1cmluZyB0aGUgYWJzb2x1dGUgZXhwb3N1cmUgdmFsdWUgb2YgdGhlIGlt
YWdlLCB0aGVyZSBhcmUgb25seSBhCj4gaGFuZGZ1bCBvZiB2YWx1ZXMgd2hpY2ggd2lsbCByZXN1
bHQgaW4gYSBjb25zaXN0ZW50IGNoYW5nZSB0byB0aGUgaW1hZ2UKPiBleHBvc3VyZSwgd2hpbGUg
YWxsIG90aGVyIHZhbHVlcyBhcHBlYXIgdG8gcmVzdWx0IGluIGEgbWF4aW11bQo+IGV4cG9zdXJl
Lgo+IFRoZSB2YWxpZCB2YWx1ZXMgYXBwZWFyIHRvIGZvbGxvdyBhbiBleHBvbmVudGlhbCBwYXR0
ZXJuIGZyb20gdGhlCj4gbWF4aW11bSB2YWx1ZSAoMTAwMDApIGRvd24gdG8gdGhlIG1pbmltdW0s
IHlpZWxkaW5nIGxlc3MgdGhhbiAxNQo+IHBvc3NpYmxlIHZhbHVlcyBkZXBlbmRpbmcgb24gdGhl
IGRldmljZSdzIHJlcG9ydGVkIG1pbmltdW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogU2NvdHQgSyBM
b2dhbiA8bG9nYW5zQGNvdHRzYXkubmV0Pgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3VzYi91dmMv
dXZjX2N0cmwuYyAgIHwgNDEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZl
cnMvbWVkaWEvdXNiL3V2Yy91dmNfZHJpdmVyLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKwo+
ICBkcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjdmlkZW8uaCAgIHwgIDEgKwo+ICAzIGZpbGVzIGNo
YW5nZWQsIDY5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS91
c2IvdXZjL3V2Y19jdHJsLmMgYi9kcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjX2N0cmwuYwo+IGlu
ZGV4IDMwYmZlOTA2OWExZi4uMmRmYzcwNTk3ODU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVk
aWEvdXNiL3V2Yy91dmNfY3RybC5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y19j
dHJsLmMKPiBAQCAtMjE0Miw2ICsyMTQyLDQwIEBAIGludCB1dmNfY3RybF9yZXN0b3JlX3ZhbHVl
cyhzdHJ1Y3QgdXZjX2RldmljZSAqZGV2KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gKy8qIC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gKyAqIFF1aXJrcwo+ICsgKi8KPiArCj4gK3N0YXRpYyBzMzIgdXZj
X2N0cmxfZ2V0X2Fic19leHBvc3VyZV9leHBvbmVudGlhbCgKPiArCXN0cnVjdCB1dmNfY29udHJv
bF9tYXBwaW5nICptYXBwaW5nLCB1OCBxdWVyeSwgY29uc3QgdTggKmRhdGEpCj4gK3sKPiArCXMz
MiBpOwo+ICsJczMyIHZhbHVlID0gdXZjX2dldF9sZV92YWx1ZShtYXBwaW5nLCBxdWVyeSwgZGF0
YSk7Cj4gKwo+ICsJc3dpdGNoIChxdWVyeSkgewo+ICsJY2FzZSBVVkNfR0VUX0NVUjoKPiArCWNh
c2UgVVZDX0dFVF9NSU46Cj4gKwljYXNlIFVWQ19HRVRfTUFYOgo+ICsJY2FzZSBVVkNfR0VUX0RF
RjoKPiArCQlmb3IgKGkgPSAwOyBpIDwgMTQ7ICsraSkgewo+ICsJCQlpZiAoMTAwMDAgPj4gaSA8
PSB2YWx1ZSkKPiArCQkJCWJyZWFrOwo+ICsJCX0KPiArCQlyZXR1cm4gMTQgLSBpOwo+ICsJY2Fz
ZSBVVkNfR0VUX1JFUzoKPiArCQlyZXR1cm4gMTsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJuIHZh
bHVlOwo+ICsJfQo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCB1dmNfY3RybF9zZXRfYWJzX2V4cG9z
dXJlX2V4cG9uZW50aWFsKAo+ICsJc3RydWN0IHV2Y19jb250cm9sX21hcHBpbmcgKm1hcHBpbmcs
IHMzMiB2YWx1ZSwgdTggKmRhdGEpCj4gK3sKPiArCXZhbHVlID0gMTAwMDAgPj4gKDE0IC0gdmFs
dWUpOwoKSW4gYWRkaXRpb24gdG8gcmVzdHJpY3RpbmcgdGhlIHZhbHVlcyB0byB0aGUgb25lcyBj
b3JyZWN0bHkgc3VwcG9ydGVkIGJ5CnRoZSBkZXZpY2UsIHRoaXMgbWFwcyBhIGxpbmVhciBzY2Fs
ZSAoMSB0byAxMDAwMCkgdG8gYW4gZXhwb25lbnRpYWwKc2NhbGUgKDEgdG8gMTQpLiBUaGUgVjRM
MiBjb250cm9sIFY0TDJfQ0lEX0VYUE9TVVJFX0FCU09MVVRFIGlzIHN1cHBvc2VkCnRvIGJlIGxp
bmVhciwgYW5kIGRvY3VtZW50ZWQgYXMgZXhwcmVzc2VkIGluIDEwMCDCtXMgdW5pdHMuCgpXb3Vs
ZG4ndCBpdCBiZSBiZXR0ZXIgdG8ga2VlcCB0aGUgb3JpZ2luYWwgc2NhbGUgKDEgdG8gMTAwMDAp
IGFuZCByb3VuZAp0aGUgcmVxdWVzdGVkIHZhbHVlIHRvIHRoZSBjbG9zZXN0IHN1cHBvcnRlZCB2
YWx1ZSA/CgpBZGRpdGlvbmFsbHksIGRvIHdlIGhhdmUgYSBndWFyYW50ZWUgdGhhdCBhbGwgdGhl
IGRldmljZXMgdGhhdCBuZWVkIHRoaXMKcXVpcmsgd2lsbCBoYXZlIHRoZSBzYW1lIGV4cG9zdXJl
IHJhbmdlICgxIHRvIDEwMDAwKSwgb3IgY291bGQgdGhlCm1heGltdW0gdmFsdWUgYmUgZGlmZmVy
ZW50ID8KCj4gKwl1dmNfc2V0X2xlX3ZhbHVlKG1hcHBpbmcsIHZhbHVlLCBkYXRhKTsKPiArfQo+
ICsKPiAgLyogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgICogQ29udHJvbCBhbmQgbWFwcGluZyBoYW5k
bGluZwo+ICAgKi8KPiBAQCAtMjIxMCw2ICsyMjQ0LDEzIEBAIHN0YXRpYyBpbnQgX191dmNfY3Ry
bF9hZGRfbWFwcGluZyhzdHJ1Y3QgdXZjX3ZpZGVvX2NoYWluICpjaGFpbiwKPiAgCQl9Cj4gIAl9
Cj4gIAo+ICsJaWYgKChjaGFpbi0+ZGV2LT5xdWlya3MgJiBVVkNfUVVJUktfRVhQT05FTlRJQUxf
RVhQT1NVUkUpICYmCj4gKwkgICAgY3RybC0+aW5mby5zZWxlY3RvciA9PSBVVkNfQ1RfRVhQT1NV
UkVfVElNRV9BQlNPTFVURV9DT05UUk9MKSB7Cj4gKwkJdXZjX2RiZyhjaGFpbi0+ZGV2LCBDT05U
Uk9MLCAiQXBwbHlpbmcgZXhwb25lbnRpYWwgZXhwb3N1cmUgcXVpcmtcbiIpOwo+ICsJCW1hcC0+
Z2V0ID0gdXZjX2N0cmxfZ2V0X2Fic19leHBvc3VyZV9leHBvbmVudGlhbDsKPiArCQltYXAtPnNl
dCA9IHV2Y19jdHJsX3NldF9hYnNfZXhwb3N1cmVfZXhwb25lbnRpYWw7Cj4gKwl9Cj4gKwo+ICAJ
bGlzdF9hZGRfdGFpbCgmbWFwLT5saXN0LCAmY3RybC0+aW5mby5tYXBwaW5ncyk7Cj4gIAl1dmNf
ZGJnKGNoYWluLT5kZXYsIENPTlRST0wsICJBZGRpbmcgbWFwcGluZyAnJXMnIHRvIGNvbnRyb2wg
JXBVbC8ldVxuIiwKPiAgCQl1dmNfbWFwX2dldF9uYW1lKG1hcCksIGN0cmwtPmluZm8uZW50aXR5
LAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjX2RyaXZlci5jIGIvZHJp
dmVycy9tZWRpYS91c2IvdXZjL3V2Y19kcml2ZXIuYwo+IGluZGV4IDdjMDA3NDI2ZTA4Mi4uOWVk
Zjc3ZWUzMGU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmNfZHJpdmVy
LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjX2RyaXZlci5jCj4gQEAgLTI3MTgs
NiArMjcxOCwzMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHVzYl9kZXZpY2VfaWQgdXZjX2lkc1td
ID0gewo+ICAJICAuYkludGVyZmFjZVN1YkNsYXNzCT0gMSwKPiAgCSAgLmJJbnRlcmZhY2VQcm90
b2NvbAk9IDAsCj4gIAkgIC5kcml2ZXJfaW5mbwkJPSAoa2VybmVsX3Vsb25nX3QpJnV2Y19xdWly
a19wcm9iZV9taW5tYXggfSwKPiArCS8qIE1pY3Jvc29mdCBMaWZlY2FtIEhELTUwMDAgKi8KPiAr
CXsgLm1hdGNoX2ZsYWdzCQk9IFVTQl9ERVZJQ0VfSURfTUFUQ0hfREVWSUNFCj4gKwkJCQl8IFVT
Ql9ERVZJQ0VfSURfTUFUQ0hfSU5UX0lORk8sCj4gKwkgIC5pZFZlbmRvcgkJPSAweDA0NWUsCj4g
KwkgIC5pZFByb2R1Y3QJCT0gMHgwNzZkLAo+ICsJICAuYkludGVyZmFjZUNsYXNzCT0gVVNCX0NM
QVNTX1ZJREVPLAo+ICsJICAuYkludGVyZmFjZVN1YkNsYXNzCT0gMSwKPiArCSAgLmJJbnRlcmZh
Y2VQcm90b2NvbAk9IDAsCj4gKwkgIC5kcml2ZXJfaW5mbwkJPSBVVkNfSU5GT19RVUlSSyhVVkNf
UVVJUktfRVhQT05FTlRJQUxfRVhQT1NVUkUpIH0sCj4gKwkvKiBNaWNyb3NvZnQgTGlmZWNhbSBT
dHVkaW8gKi8KPiArCXsgLm1hdGNoX2ZsYWdzCQk9IFVTQl9ERVZJQ0VfSURfTUFUQ0hfREVWSUNF
Cj4gKwkJCQl8IFVTQl9ERVZJQ0VfSURfTUFUQ0hfSU5UX0lORk8sCj4gKwkgIC5pZFZlbmRvcgkJ
PSAweDA0NWUsCj4gKwkgIC5pZFByb2R1Y3QJCT0gMHgwNzcyLAo+ICsJICAuYkludGVyZmFjZUNs
YXNzCT0gVVNCX0NMQVNTX1ZJREVPLAo+ICsJICAuYkludGVyZmFjZVN1YkNsYXNzCT0gMSwKPiAr
CSAgLmJJbnRlcmZhY2VQcm90b2NvbAk9IDAsCj4gKwkgIC5kcml2ZXJfaW5mbwkJPSBVVkNfSU5G
T19RVUlSSyhVVkNfUVVJUktfRVhQT05FTlRJQUxfRVhQT1NVUkUpIH0sCj4gKwkvKiBNaWNyb3Nv
ZnQgTGlmZWNhbSBIRC0zMDAwICovCj4gKwl7IC5tYXRjaF9mbGFncwkJPSBVU0JfREVWSUNFX0lE
X01BVENIX0RFVklDRQo+ICsJCQkJfCBVU0JfREVWSUNFX0lEX01BVENIX0lOVF9JTkZPLAo+ICsJ
ICAuaWRWZW5kb3IJCT0gMHgwNDVlLAo+ICsJICAuaWRQcm9kdWN0CQk9IDB4MDgxMCwKPiArCSAg
LmJJbnRlcmZhY2VDbGFzcwk9IFVTQl9DTEFTU19WSURFTywKPiArCSAgLmJJbnRlcmZhY2VTdWJD
bGFzcwk9IDEsCj4gKwkgIC5iSW50ZXJmYWNlUHJvdG9jb2wJPSAwLAo+ICsJICAuZHJpdmVyX2lu
Zm8JCT0gVVZDX0lORk9fUVVJUksoVVZDX1FVSVJLX0VYUE9ORU5USUFMX0VYUE9TVVJFKSB9LAo+
ICAJLyogTG9naXRlY2ggUXVpY2tjYW0gRnVzaW9uICovCj4gIAl7IC5tYXRjaF9mbGFncwkJPSBV
U0JfREVWSUNFX0lEX01BVENIX0RFVklDRQo+ICAJCQkJfCBVU0JfREVWSUNFX0lEX01BVENIX0lO
VF9JTkZPLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjdmlkZW8uaCBi
L2RyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmN2aWRlby5oCj4gaW5kZXggMmU1MzY2MTQzYjgxLi5i
NmQ1YWUwYjFjOTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y3ZpZGVv
LmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjdmlkZW8uaAo+IEBAIC0yMDksNiAr
MjA5LDcgQEAKPiAgI2RlZmluZSBVVkNfUVVJUktfUkVTVE9SRV9DVFJMU19PTl9JTklUCTB4MDAw
MDA0MDAKPiAgI2RlZmluZSBVVkNfUVVJUktfRk9SQ0VfWTgJCTB4MDAwMDA4MDAKPiAgI2RlZmlu
ZSBVVkNfUVVJUktfRk9SQ0VfQlBQCQkweDAwMDAxMDAwCj4gKyNkZWZpbmUgVVZDX1FVSVJLX0VY
UE9ORU5USUFMX0VYUE9TVVJFCTB4MDAwMDIwMDAKPiAgCj4gIC8qIEZvcm1hdCBmbGFncyAqLwo+
ICAjZGVmaW5lIFVWQ19GTVRfRkxBR19DT01QUkVTU0VECQkweDAwMDAwMDAxCgotLSAKUmVnYXJk
cywKCkxhdXJlbnQgUGluY2hhcnQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZl
bEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vbGludXgtdXZjLWRldmVsCg==
