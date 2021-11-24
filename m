Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FAC45CE54
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 24 Nov 2021 21:45:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mpz8D-0004jX-6O; Wed, 24 Nov 2021 20:44:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <logans@cottsay.net>) id 1mpz8B-0004jR-9u
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Nov 2021 20:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OpuhZ2huGbX4Q3+rhVkUpfI5UQyQg1olGqYUUvZMK78=; b=LbEnp9SXuE17ViE59z4KSbOaZ0
 fEeeSXCKjEvlyiCJJvGoQeMK+sFreV+vPQUZpNiDKZAYILiqMHCULG0S/3HX8ovhZQxPl0q+Oek2q
 pdxE9y+Ena+HgPROC9M9dpCsYml0o8T9pVA6hNRXKia24plstHVLnGuOLLLrfp+T0RiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OpuhZ2huGbX4Q3+rhVkUpfI5UQyQg1olGqYUUvZMK78=; b=fs5sMWB7uSZpx2uP2W8987p/8h
 4vL6tCeR0BoDfGowMJRXxt9Gme8qdTyBwN0w3LcDFInqoS9RcXmgoOTJMlf0T5z2Dq9OaFPK12TOe
 jxLyCaoBoMUFSBcLe5T8IwTlrhL0ZXZNLJzoj47kEsWxv9qrmz1+ZU+MT2kwv3HdufYQ=;
Received: from azure2.cottsay.net ([104.41.151.152])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mpz8B-007whv-EU
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Nov 2021 20:44:40 +0000
Received: from cottsay-server.delphi.cottsay.net (unknown [24.19.54.182])
 by azure2.cottsay.net (Postfix) with ESMTPS id 8B21A1A06F8
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 24 Nov 2021 20:44:30 +0000 (UTC)
Received: from cottsay-lenovo.delphi.cottsay.net
 (cottsay-lenovo.delphi.cottsay.net [172.16.8.31])
 by cottsay-server.delphi.cottsay.net (Postfix) with ESMTPSA id 028F81E014D;
 Wed, 24 Nov 2021 12:44:28 -0800 (PST)
Message-ID: <0a050c12eb7cc62e3328aad139f447234e9d4b31.camel@cottsay.net>
From: Scott K Logan <logans@cottsay.net>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Wed, 24 Nov 2021 12:44:27 -0800
In-Reply-To: <YZ3b6ObAhJnz9OSF@pendragon.ideasonboard.com>
References: <20211003023554.885815-2-logans@cottsay.net>
 <20211124005834.556428-1-logans@cottsay.net>
 <YZ3b6ObAhJnz9OSF@pendragon.ideasonboard.com>
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks very much for taking a look, Laurent. On Wed,
 2021-11-24
 at 08:30 +0200, Laurent Pinchart wrote: > Hi Scott, > > Thank you for the
 patch. > > On Wed, Nov 24, 2021 at 12:59:05AM +0000, Scott K Logan wrote:
 > > At least some of the Microsof [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [104.41.151.152 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mpz8B-007whv-EU
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

VGhhbmtzIHZlcnkgbXVjaCBmb3IgdGFraW5nIGEgbG9vaywgTGF1cmVudC4KCgpPbiBXZWQsIDIw
MjEtMTEtMjQgYXQgMDg6MzAgKzAyMDAsIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gSGkgU2Nv
dHQsCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gCj4gT24gV2VkLCBOb3YgMjQsIDIw
MjEgYXQgMTI6NTk6MDVBTSArMDAwMCwgU2NvdHQgSyBMb2dhbiB3cm90ZToKPiA+IEF0IGxlYXN0
IHNvbWUgb2YgdGhlIE1pY3Jvc29mdCBMaWZlQ2FtIHNlcmllcyBvZiB3ZWJjYW1zIGV4aGliaXQg
YQo+ID4gYmVoYXZpb3Igd2hpY2ggcmVxdWlyZXMgYSAncXVpcmsnIHRvIGJlIGhhbmRsZWQgcHJv
cGVybHkuIFdoZW4KPiA+IGNvbmZpZ3VyaW5nIHRoZSBhYnNvbHV0ZSBleHBvc3VyZSB2YWx1ZSBv
ZiB0aGUgaW1hZ2UsIHRoZXJlIGFyZSBvbmx5IGEKPiA+IGhhbmRmdWwgb2YgdmFsdWVzIHdoaWNo
IHdpbGwgcmVzdWx0IGluIGEgY29uc2lzdGVudCBjaGFuZ2UgdG8gdGhlIGltYWdlCj4gPiBleHBv
c3VyZSwgd2hpbGUgYWxsIG90aGVyIHZhbHVlcyBhcHBlYXIgdG8gcmVzdWx0IGluIGEgbWF4aW11
bQo+ID4gZXhwb3N1cmUuCj4gPiBUaGUgdmFsaWQgdmFsdWVzIGFwcGVhciB0byBmb2xsb3cgYW4g
ZXhwb25lbnRpYWwgcGF0dGVybiBmcm9tIHRoZQo+ID4gbWF4aW11bSB2YWx1ZSAoMTAwMDApIGRv
d24gdG8gdGhlIG1pbmltdW0sIHlpZWxkaW5nIGxlc3MgdGhhbiAxNQo+ID4gcG9zc2libGUgdmFs
dWVzIGRlcGVuZGluZyBvbiB0aGUgZGV2aWNlJ3MgcmVwb3J0ZWQgbWluaW11bS4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogU2NvdHQgSyBMb2dhbiA8bG9nYW5zQGNvdHRzYXkubmV0Pgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y19jdHJsLmMgICB8IDQxICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmNfZHJpdmVy
LmMgfCAyNyArKysrKysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvbWVkaWEvdXNiL3V2Yy91
dmN2aWRlby5oICAgfCAgMSArCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA2OSBpbnNlcnRpb25zKCsp
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjX2N0cmwuYyBi
L2RyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmNfY3RybC5jCj4gPiBpbmRleCAzMGJmZTkwNjlhMWYu
LjJkZmM3MDU5Nzg1OCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmNf
Y3RybC5jCj4gPiArKysgYi9kcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjX2N0cmwuYwo+ID4gQEAg
LTIxNDIsNiArMjE0Miw0MCBAQCBpbnQgdXZjX2N0cmxfcmVzdG9yZV92YWx1ZXMoc3RydWN0IHV2
Y19kZXZpY2UgKmRldikKPiA+ICAJcmV0dXJuIDA7Cj4gPiAgfQo+ID4gIAo+ID4gKy8qIC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gPiArICogUXVpcmtzCj4gPiArICovCj4gPiArCj4gPiArc3RhdGljIHMz
MiB1dmNfY3RybF9nZXRfYWJzX2V4cG9zdXJlX2V4cG9uZW50aWFsKAo+ID4gKwlzdHJ1Y3QgdXZj
X2NvbnRyb2xfbWFwcGluZyAqbWFwcGluZywgdTggcXVlcnksIGNvbnN0IHU4ICpkYXRhKQo+ID4g
K3sKPiA+ICsJczMyIGk7Cj4gPiArCXMzMiB2YWx1ZSA9IHV2Y19nZXRfbGVfdmFsdWUobWFwcGlu
ZywgcXVlcnksIGRhdGEpOwo+ID4gKwo+ID4gKwlzd2l0Y2ggKHF1ZXJ5KSB7Cj4gPiArCWNhc2Ug
VVZDX0dFVF9DVVI6Cj4gPiArCWNhc2UgVVZDX0dFVF9NSU46Cj4gPiArCWNhc2UgVVZDX0dFVF9N
QVg6Cj4gPiArCWNhc2UgVVZDX0dFVF9ERUY6Cj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgMTQ7ICsr
aSkgewo+ID4gKwkJCWlmICgxMDAwMCA+PiBpIDw9IHZhbHVlKQo+ID4gKwkJCQlicmVhazsKPiA+
ICsJCX0KPiA+ICsJCXJldHVybiAxNCAtIGk7Cj4gPiArCWNhc2UgVVZDX0dFVF9SRVM6Cj4gPiAr
CQlyZXR1cm4gMTsKPiA+ICsJZGVmYXVsdDoKPiA+ICsJCXJldHVybiB2YWx1ZTsKPiA+ICsJfQo+
ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCB1dmNfY3RybF9zZXRfYWJzX2V4cG9zdXJlX2V4
cG9uZW50aWFsKAo+ID4gKwlzdHJ1Y3QgdXZjX2NvbnRyb2xfbWFwcGluZyAqbWFwcGluZywgczMy
IHZhbHVlLCB1OCAqZGF0YSkKPiA+ICt7Cj4gPiArCXZhbHVlID0gMTAwMDAgPj4gKDE0IC0gdmFs
dWUpOwo+IAo+IEluIGFkZGl0aW9uIHRvIHJlc3RyaWN0aW5nIHRoZSB2YWx1ZXMgdG8gdGhlIG9u
ZXMgY29ycmVjdGx5IHN1cHBvcnRlZCBieQo+IHRoZSBkZXZpY2UsIHRoaXMgbWFwcyBhIGxpbmVh
ciBzY2FsZSAoMSB0byAxMDAwMCkgdG8gYW4gZXhwb25lbnRpYWwKPiBzY2FsZSAoMSB0byAxNCku
IFRoZSBWNEwyIGNvbnRyb2wgVjRMMl9DSURfRVhQT1NVUkVfQUJTT0xVVEUgaXMgc3VwcG9zZWQK
PiB0byBiZSBsaW5lYXIsIGFuZCBkb2N1bWVudGVkIGFzIGV4cHJlc3NlZCBpbiAxMDAgwrVzIHVu
aXRzLgo+IAo+IFdvdWxkbid0IGl0IGJlIGJldHRlciB0byBrZWVwIHRoZSBvcmlnaW5hbCBzY2Fs
ZSAoMSB0byAxMDAwMCkgYW5kIHJvdW5kCj4gdGhlIHJlcXVlc3RlZCB2YWx1ZSB0byB0aGUgY2xv
c2VzdCBzdXBwb3J0ZWQgdmFsdWUgPwoKVGhpcyBpcyBhIHZlcnkgdmFsaWQgcG9pbnQuIEknbSBu
b3QgaW4gYSBwb3NpdGlvbiB0byBtZWFzdXJlIHRoZQpleHBvc3VyZSBhY2N1cmF0ZWx5LCBidXQg
dGhpcyBtb3JuaW5nIEkgdG9vayB0aGUgdGltZSB0byBwbG90IHRoZQphdmVyYWdlIHBpeGVsIGlu
dGVuc2l0eSBhY3Jvc3MgYSBzZXJpZXMgb2Ygc3RpbGxzIGF0IHZhcnlpbmcgZXhwb3N1cmUKc2V0
dGluZ3MuIFdoaWxlIHRoZSBkYXRhIGRpZG4ndCBsb29rIHF1aXRlIGFzIGxpbmVhciBhcyBteSBs
YXB0b3AncwpidWlsdC1pbiBjYW1lcmEsIGl0IHdhcyBzdWJzdGFudGlhbGx5IGNsb3NlciB0aGFu
IHRoZSBkYXRhIHdpdGhvdXQgdGhlCnNjYWxpbmcuIElmIHRoZSBzY2FsZSBpcyBzdXBwb3NlZCB0
byBiZSBsaW5lYXIsIHRoaXMgcGF0Y2ggd2lsbApjZXJ0YWlubHkgbWFrZSBpdCBtb3JlIHNvLgoK
QXMgYSBndXQgY2hlY2ssIEkndmUgYmVlbiBvcGVyYXRpbmcgbXkgTGlmZUNhbSBjYW1lcmEgaW4g
bWVldGluZ3MgYXQKdGhlIG1hbnVhbCBleHBvc3VyZSBsZXZlbCBvZiAxNTYgb3V0IG9mIDEwMDAw
LiBUaGUgZXhwb25lbnRpYWxseSBzY2FsZWQKdmFsdWUgd291bGQgYmUgOCwgd2hpY2ggaXMgcm91
Z2hseSBoYWxmIHdheSB0aHJvdWdoIHRoZSBhZHZlcnRpc2VkCnNjYWxlICgxLTE0KS4KCj4gQWRk
aXRpb25hbGx5LCBkbyB3ZSBoYXZlIGEgZ3VhcmFudGVlIHRoYXQgYWxsIHRoZSBkZXZpY2VzIHRo
YXQgbmVlZCB0aGlzCj4gcXVpcmsgd2lsbCBoYXZlIHRoZSBzYW1lIGV4cG9zdXJlIHJhbmdlICgx
IHRvIDEwMDAwKSwgb3IgY291bGQgdGhlCj4gbWF4aW11bSB2YWx1ZSBiZSBkaWZmZXJlbnQgPwoK
SSBhY3R1YWxseSBkaWRuJ3QgdGhpbmsgYWJvdXQgdGhhdC4gSXQgYXBwZWFycyB0byBiZSB0aGUg
Y2FzZSBmb3IgYm90aApvZiB0aGUgbW9kZWxzIEkgb3duIGFzIHdlbGwgYXMgdGhlIG9uZSBZdXJp
eSBoYXMgKGJ5IHRoZSB3YXksIHRoYW5rcwpmb3IgeW91ciByZXBseSEpLgoKSSBjb3VsZCBjaGFu
Z2UgdGhlIHBhdGNoIHRvIHF1ZXJ5IFVWQ19HRVRfTUFYIGZvciBlYWNoIGdldC9zZXQKb3BlcmF0
aW9uIGlmIHlvdSB0aGluayB0aGF0IG1pZ2h0IGJlIHdvcnRoIGl0LiBJdCB3b3VsZCBvYnZpb3Vz
bHkgYmUKYmV0dGVyIHRvIHN0YXNoIHRoZSB2YWx1ZSBmb3IgbGF0ZXIgdXNlLCBidXQgSSdtIG5v
dCBzdXJlIHRoZXJlJ3MgYQpjb252ZW5pZW50IHNwb3QuCgo+ID4gKwl1dmNfc2V0X2xlX3ZhbHVl
KG1hcHBpbmcsIHZhbHVlLCBkYXRhKTsKPiA+ICt9Cj4gPiArCj4gPiAgLyogLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiA+ICAgKiBDb250cm9sIGFuZCBtYXBwaW5nIGhhbmRsaW5nCj4gPiAgICovCj4gPiBA
QCAtMjIxMCw2ICsyMjQ0LDEzIEBAIHN0YXRpYyBpbnQgX191dmNfY3RybF9hZGRfbWFwcGluZyhz
dHJ1Y3QgdXZjX3ZpZGVvX2NoYWluICpjaGFpbiwKPiA+ICAJCX0KPiA+ICAJfQo+ID4gIAo+ID4g
KwlpZiAoKGNoYWluLT5kZXYtPnF1aXJrcyAmIFVWQ19RVUlSS19FWFBPTkVOVElBTF9FWFBPU1VS
RSkgJiYKPiA+ICsJICAgIGN0cmwtPmluZm8uc2VsZWN0b3IgPT0gVVZDX0NUX0VYUE9TVVJFX1RJ
TUVfQUJTT0xVVEVfQ09OVFJPTCkgewo+ID4gKwkJdXZjX2RiZyhjaGFpbi0+ZGV2LCBDT05UUk9M
LCAiQXBwbHlpbmcgZXhwb25lbnRpYWwgZXhwb3N1cmUgcXVpcmtcbiIpOwo+ID4gKwkJbWFwLT5n
ZXQgPSB1dmNfY3RybF9nZXRfYWJzX2V4cG9zdXJlX2V4cG9uZW50aWFsOwo+ID4gKwkJbWFwLT5z
ZXQgPSB1dmNfY3RybF9zZXRfYWJzX2V4cG9zdXJlX2V4cG9uZW50aWFsOwo+ID4gKwl9Cj4gPiAr
Cj4gPiAgCWxpc3RfYWRkX3RhaWwoJm1hcC0+bGlzdCwgJmN0cmwtPmluZm8ubWFwcGluZ3MpOwo+
ID4gIAl1dmNfZGJnKGNoYWluLT5kZXYsIENPTlRST0wsICJBZGRpbmcgbWFwcGluZyAnJXMnIHRv
IGNvbnRyb2wgJXBVbC8ldVxuIiwKPiA+ICAJCXV2Y19tYXBfZ2V0X25hbWUobWFwKSwgY3RybC0+
aW5mby5lbnRpdHksCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y19k
cml2ZXIuYyBiL2RyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmNfZHJpdmVyLmMKPiA+IGluZGV4IDdj
MDA3NDI2ZTA4Mi4uOWVkZjc3ZWUzMGU2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS91
c2IvdXZjL3V2Y19kcml2ZXIuYwo+ID4gKysrIGIvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y19k
cml2ZXIuYwo+ID4gQEAgLTI3MTgsNiArMjcxOCwzMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHVz
Yl9kZXZpY2VfaWQgdXZjX2lkc1tdID0gewo+ID4gIAkgIC5iSW50ZXJmYWNlU3ViQ2xhc3MJPSAx
LAo+ID4gIAkgIC5iSW50ZXJmYWNlUHJvdG9jb2wJPSAwLAo+ID4gIAkgIC5kcml2ZXJfaW5mbwkJ
PSAoa2VybmVsX3Vsb25nX3QpJnV2Y19xdWlya19wcm9iZV9taW5tYXggfSwKPiA+ICsJLyogTWlj
cm9zb2Z0IExpZmVjYW0gSEQtNTAwMCAqLwo+ID4gKwl7IC5tYXRjaF9mbGFncwkJPSBVU0JfREVW
SUNFX0lEX01BVENIX0RFVklDRQo+ID4gKwkJCQl8IFVTQl9ERVZJQ0VfSURfTUFUQ0hfSU5UX0lO
Rk8sCj4gPiArCSAgLmlkVmVuZG9yCQk9IDB4MDQ1ZSwKPiA+ICsJICAuaWRQcm9kdWN0CQk9IDB4
MDc2ZCwKPiA+ICsJICAuYkludGVyZmFjZUNsYXNzCT0gVVNCX0NMQVNTX1ZJREVPLAo+ID4gKwkg
IC5iSW50ZXJmYWNlU3ViQ2xhc3MJPSAxLAo+ID4gKwkgIC5iSW50ZXJmYWNlUHJvdG9jb2wJPSAw
LAo+ID4gKwkgIC5kcml2ZXJfaW5mbwkJPSBVVkNfSU5GT19RVUlSSyhVVkNfUVVJUktfRVhQT05F
TlRJQUxfRVhQT1NVUkUpIH0sCj4gPiArCS8qIE1pY3Jvc29mdCBMaWZlY2FtIFN0dWRpbyAqLwo+
ID4gKwl7IC5tYXRjaF9mbGFncwkJPSBVU0JfREVWSUNFX0lEX01BVENIX0RFVklDRQo+ID4gKwkJ
CQl8IFVTQl9ERVZJQ0VfSURfTUFUQ0hfSU5UX0lORk8sCj4gPiArCSAgLmlkVmVuZG9yCQk9IDB4
MDQ1ZSwKPiA+ICsJICAuaWRQcm9kdWN0CQk9IDB4MDc3MiwKPiA+ICsJICAuYkludGVyZmFjZUNs
YXNzCT0gVVNCX0NMQVNTX1ZJREVPLAo+ID4gKwkgIC5iSW50ZXJmYWNlU3ViQ2xhc3MJPSAxLAo+
ID4gKwkgIC5iSW50ZXJmYWNlUHJvdG9jb2wJPSAwLAo+ID4gKwkgIC5kcml2ZXJfaW5mbwkJPSBV
VkNfSU5GT19RVUlSSyhVVkNfUVVJUktfRVhQT05FTlRJQUxfRVhQT1NVUkUpIH0sCj4gPiArCS8q
IE1pY3Jvc29mdCBMaWZlY2FtIEhELTMwMDAgKi8KPiA+ICsJeyAubWF0Y2hfZmxhZ3MJCT0gVVNC
X0RFVklDRV9JRF9NQVRDSF9ERVZJQ0UKPiA+ICsJCQkJfCBVU0JfREVWSUNFX0lEX01BVENIX0lO
VF9JTkZPLAo+ID4gKwkgIC5pZFZlbmRvcgkJPSAweDA0NWUsCj4gPiArCSAgLmlkUHJvZHVjdAkJ
PSAweDA4MTAsCj4gPiArCSAgLmJJbnRlcmZhY2VDbGFzcwk9IFVTQl9DTEFTU19WSURFTywKPiA+
ICsJICAuYkludGVyZmFjZVN1YkNsYXNzCT0gMSwKPiA+ICsJICAuYkludGVyZmFjZVByb3RvY29s
CT0gMCwKPiA+ICsJICAuZHJpdmVyX2luZm8JCT0gVVZDX0lORk9fUVVJUksoVVZDX1FVSVJLX0VY
UE9ORU5USUFMX0VYUE9TVVJFKSB9LAo+ID4gIAkvKiBMb2dpdGVjaCBRdWlja2NhbSBGdXNpb24g
Ki8KPiA+ICAJeyAubWF0Y2hfZmxhZ3MJCT0gVVNCX0RFVklDRV9JRF9NQVRDSF9ERVZJQ0UKPiA+
ICAJCQkJfCBVU0JfREVWSUNFX0lEX01BVENIX0lOVF9JTkZPLAo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWVkaWEvdXNiL3V2Yy91dmN2aWRlby5oIGIvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2
Y3ZpZGVvLmgKPiA+IGluZGV4IDJlNTM2NjE0M2I4MS4uYjZkNWFlMGIxYzkwIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y3ZpZGVvLmgKPiA+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvdXNiL3V2Yy91dmN2aWRlby5oCj4gPiBAQCAtMjA5LDYgKzIwOSw3IEBACj4gPiAgI2Rl
ZmluZSBVVkNfUVVJUktfUkVTVE9SRV9DVFJMU19PTl9JTklUCTB4MDAwMDA0MDAKPiA+ICAjZGVm
aW5lIFVWQ19RVUlSS19GT1JDRV9ZOAkJMHgwMDAwMDgwMAo+ID4gICNkZWZpbmUgVVZDX1FVSVJL
X0ZPUkNFX0JQUAkJMHgwMDAwMTAwMAo+ID4gKyNkZWZpbmUgVVZDX1FVSVJLX0VYUE9ORU5USUFM
X0VYUE9TVVJFCTB4MDAwMDIwMDAKPiA+ICAKPiA+ICAvKiBGb3JtYXQgZmxhZ3MgKi8KPiA+ICAj
ZGVmaW5lIFVWQ19GTVRfRkxBR19DT01QUkVTU0VECQkweDAwMDAwMDAxCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtdXZjLWRldmVsIG1haWxp
bmcgbGlzdApMaW51eC11dmMtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LXV2Yy1kZXZlbAo=
