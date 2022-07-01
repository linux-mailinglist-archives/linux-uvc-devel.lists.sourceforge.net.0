Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D8C562AD6
	for <lists+linux-uvc-devel@lfdr.de>; Fri,  1 Jul 2022 07:23:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1o797B-0005E6-QI; Fri, 01 Jul 2022 05:22:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregoire@gentil.com>) id 1o797A-0005Dz-Pa
 for linux-uvc-devel@lists.sourceforge.net; Fri, 01 Jul 2022 05:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bCY1FzukCwvSqmbGRkezGZW0pXoksYu+bor9//x4pVM=; b=AwhOa/n+b1OezMNM7gb8zu8sZm
 fRF9yjibZLuX1aygpCm/COMPmwYrprY13g+ynEWpTvdOiCjXY15KgqBoSlduPM0xXtWmpRPikF1sD
 t5/MGFEKqK4nSZjC+Wl5SfA0u0FIcCkmKWN8Zc4z2Vf364R/kFqAl/SxD1NM/hwUD5EM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bCY1FzukCwvSqmbGRkezGZW0pXoksYu+bor9//x4pVM=; b=gCl95kS3Xv3/s/XgN+fBi1NFLZ
 T0lNEKRI/SEJS7e94r+svIr+E/T0HTuqtfu/7sfcSVaCkcISXw4cfUgk8LKjFCaGpQuGXbuzU788L
 zhkvQzVzLJhYP3uzOlL0ohIPj7Wy+2EgIYbzmELKY98d7X0NOc5NhAAGwrPPG51k1Mio=;
Received: from server139-18.web-hosting.com ([104.219.248.83])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o7976-0003LK-Ry
 for linux-uvc-devel@lists.sourceforge.net; Fri, 01 Jul 2022 05:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gentil.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:To
 :From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bCY1FzukCwvSqmbGRkezGZW0pXoksYu+bor9//x4pVM=; b=Dp+7R5KCJ3zdIpDR3HHoi40GFR
 S3tAn2l0ImVcPMVwDr0QUpDZHE0eJckQrMGmZXOOZ25r1g+YN0UWi69OQwIw0xWmO3Dm4g/J1kbY4
 HL4HkNEToYSJ8oJXNL2iXjNjQC8pn7vGxQMAhQTZ6RzLH2PSfPJpvEW1CLzJKj4m4n1VQjqpXjdc8
 vkAsBd8RdSkKwP9y/H2PkeQ6cxCIKQx8RCrJHzf27FQTLbYWrq7dY7k4zPf5mM4xtGySZxIDtImaI
 uYOg2PoGlF+9XeSloy9WLgnNN+6SwfDoO7+mQIILJNY/oK0sxNfTOwSbLk/uAA5eR6eqQsStpsM1N
 keigKCOA==;
Received: from c-67-180-11-187.hsd1.ca.comcast.net ([67.180.11.187]:58558
 helo=[192.168.10.21])
 by server139.web-hosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <gregoire@gentil.com>) id 1o796o-005QhQ-Ak
 for linux-uvc-devel@lists.sourceforge.net;
 Fri, 01 Jul 2022 01:22:31 -0400
Message-ID: <e13bb103-4b0f-1a6b-20bd-6f8447d07508@gentil.com>
Date: Thu, 30 Jun 2022 22:22:25 -0700
MIME-Version: 1.0
Content-Language: en-US
From: Gregoire Gentil <gregoire@gentil.com>
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
References: <998466ecd0e445d6a2ccc564be53fe06@ruv-bkk.de>
 <e7e92986-33dc-40df-7631-66f86b93ce59@gentil.com>
Organization: Gregoire Gentil
In-Reply-To: <e7e92986-33dc-40df-7631-66f86b93ce59@gentil.com>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server139.web-hosting.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - gentil.com
X-Get-Message-Sender-Via: server139.web-hosting.com: authenticated_id:
 gregoire@gentil.com
X-Authenticated-Sender: server139.web-hosting.com: gregoire@gentil.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/27/22 17:31, Gregoire Gentil wrote: > Hello, > > I have
 UVC gadget over configfs working well alone. I have also acm + > mtp working
 at the same time. But uvc doesn't work in a uvc + acm > config [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gentil.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o7976-0003LK-Ry
Subject: Re: [linux-uvc-devel] configfs: uvc and other gadget at the same
 time
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

CgpPbiA2LzI3LzIyIDE3OjMxLCBHcmVnb2lyZSBHZW50aWwgd3JvdGU6Cj4gSGVsbG8sCj4gCj4g
SSBoYXZlIFVWQyBnYWRnZXQgb3ZlciBjb25maWdmcyB3b3JraW5nIHdlbGwgYWxvbmUuIEkgaGF2
ZSBhbHNvIGFjbSArIAo+IG10cCB3b3JraW5nIGF0IHRoZSBzYW1lIHRpbWUuIEJ1dCB1dmMgZG9l
c24ndCB3b3JrIGluIGEgdXZjICsgYWNtIAo+IGNvbmZpZ2ZzIGNvbmZpZ3VyYXRpb24gKHdoaWxl
IGFjbSB3b3JrcyBpbiB0aGF0IHNhbWUgY29uZmlndXJhdGlvbikuCj4gCj4gdXZjIGFsb25lIGdp
dmVzOgo+IAo+IFvCoMKgIDEzLjU0NDAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBuZXcgZGV2
aWNlIGlzIGhpZ2gtc3BlZWQKPiBbwqDCoCAxMy42MjQwMDBdIGR3YzIgYzAwNDAwMDAuZHdjMm90
ZzogbmV3IGRldmljZSBpcyBoaWdoLXNwZWVkCj4gW8KgwqAgMTMuNjk2MDAwXSBkd2MyIGMwMDQw
MDAwLmR3YzJvdGc6IG5ldyBhZGRyZXNzIDUzCj4gW8KgwqAgMTMuNzIwMDAwXSBjb25maWdmcy1n
YWRnZXQgZ2FkZ2V0OiBoaWdoLXNwZWVkIGNvbmZpZyAjMTogYwo+IFvCoMKgIDEzLjcyMDAwMF0g
Y29uZmlnZnMtZ2FkZ2V0IGdhZGdldDogdXZjX2Z1bmN0aW9uX3NldF9hbHQoMCwgMCkKPiBbwqDC
oCAxMy43MjAwMDBdIGNvbmZpZ2ZzLWdhZGdldCBnYWRnZXQ6IHJlc2V0IFVWQyBDb250cm9sCj4g
W8KgwqAgMTMuNzIwMDAwXSBjb25maWdmcy1nYWRnZXQgZ2FkZ2V0OiB1dmNfZnVuY3Rpb25fc2V0
X2FsdCgxLCAwKQo+IFvCoMKgIDEzLjcyMDAwMF0gY29uZmlnZnMtZ2FkZ2V0IGdhZGdldDogdXZj
X2Z1bmN0aW9uX3NldF9hbHQoMSwgMCkKPiAKPiAKPiB3aGlsZSB1dmMgKyBhY20gZ2l2ZXM6Cj4g
W8KgwqAgMTMuNzg0MDAwXSBkd2MyIGMwMDQwMDAwLmR3YzJvdGc6IG5ldyBkZXZpY2UgaXMgaGln
aC1zcGVlZAo+IFvCoMKgIDEzLjg2NDAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBuZXcgZGV2
aWNlIGlzIGhpZ2gtc3BlZWQKPiBbwqDCoCAxMy45MzIwMDBdIGR3YzIgYzAwNDAwMDAuZHdjMm90
ZzogbmV3IGFkZHJlc3MgNTUKPiBbwqDCoCAxMy45NTYwMDBdIGNvbmZpZ2ZzLWdhZGdldCBnYWRn
ZXQ6IGhpZ2gtc3BlZWQgY29uZmlnICMxOiBjCj4gW8KgwqAgMTMuOTU2MDAwXSBjb25maWdmcy1n
YWRnZXQgZ2FkZ2V0OiB1dmNfZnVuY3Rpb25fc2V0X2FsdCgyLCAwKQo+IFvCoMKgIDEzLjk1NjAw
MF0gY29uZmlnZnMtZ2FkZ2V0IGdhZGdldDogcmVzZXQgVVZDIENvbnRyb2wKPiBbwqDCoCAxMy45
NTYwMDBdIGNvbmZpZ2ZzLWdhZGdldCBnYWRnZXQ6IHV2Y19mdW5jdGlvbl9zZXRfYWx0KDMsIDAp
Cj4gW8KgwqAgMTMuOTU2MDAwXSBkd2MyIGMwMDQwMDAwLmR3YzJvdGc6IGR3YzJfaHNvdGdfZXBf
c2V0aGFsdChlcCAKPiBmZmZmZmZjMDFlMWZlMzE4IGVwMCwgMSkKPiBbwqDCoCAxMy45NTYwMDBd
IGR3YzIgYzAwNDAwMDAuZHdjMm90ZzogZHdjMl9oc290Z19lcF9zZXRoYWx0KGVwIAo+IGZmZmZm
ZmMwMWUxZmUzMTggZXAwLCAxKQo+IFvCoMKgIDEzLjk1NjAwMF0gZHdjMiBjMDA0MDAwMC5kd2My
b3RnOiBkd2MyX2hzb3RnX2VwX3NldGhhbHQoZXAgCj4gZmZmZmZmYzAxZTFmZTMxOCBlcDAsIDEp
Cj4gW8KgwqAgMTMuOTU2MDAwXSBkd2MyIGMwMDQwMDAwLmR3YzJvdGc6IGR3YzJfaHNvdGdfZXBf
c2V0aGFsdChlcCAKPiBmZmZmZmZjMDFlMWZlMzE4IGVwMCwgMSkKPiBbwqDCoCAxMy45NTYwMDBd
IGNvbmZpZ2ZzLWdhZGdldCBnYWRnZXQ6IHV2Y19mdW5jdGlvbl9zZXRfYWx0KDMsIDApCj4gW8Kg
wqAgMTMuOTYwMDAwXSBkd2MyIGMwMDQwMDAwLmR3YzJvdGc6IGR3YzJfaHNvdGdfZXBfc2V0aGFs
dChlcCAKPiBmZmZmZmZjMDFlMWZlMzE4IGVwMCwgMSkKPiBbwqDCoCAxMy45NjAwMDBdIGR3YzIg
YzAwNDAwMDAuZHdjMm90ZzogZHdjMl9oc290Z19lcF9zZXRoYWx0KGVwIAo+IGZmZmZmZmMwMWUx
ZmUzMTggZXAwLCAxKQo+IAo+IAo+IEFuZCB0aGUgaG9zdCBQQyBrZXJuZWwgZ2l2ZXMgYW4gZXJy
b3Igd2hlbiBpbmZvIGlzIHJldHJpZXZlZCBmcm9tIHRoZSAKPiBPVEcgZGV2aWNlLgo+IAo+IEJl
Y2F1c2Ugb2YgYSBsb3Qgb3RoZXIgKG11Y2ggbW9yZSBjb21wbGljYXRlZCkgY29uc3RyYWludHMs
IEknbSBvbiBhbiAKPiBvbGQgNC40IGtlcm5lbCBmYXIgYXdheSBmcm9tIHRoZSBsYXRlc3QuCj4g
Cj4gSXMgdGhpcyBhIGtub3duIGJ1Zz8gQ291bGQgaXQgYmUgYSBoYXJkd2FyZSBsaW1pdGF0aW9u
IG9mIG15IE9URyB3aGljaCAKPiBoYXMgMSBjb250cm9sIGVuZHBvaW50IGFuZCAxNiBkZXZpY2Ug
bW9kZSBlbmRwb2ludHM/IEl0IHNlZW1zIHRoYXQgYWNtIAo+IGlzIGhhbmRsZWQgYmVmb3JlIHV2
Yywgd291bGQgaXQgbWFrZSBzZW5zZSB0byBwYXRjaCB0byBzd2FwIGhvdyB0aG9zZSAKPiB0d28g
YXJlIGhhbmRsZWQgaW5pdGlhbGx5PyBXaGVyZSBzaG91bGQgSSBsb29rIGludG8gaW4gbXkga2Vy
bmVsIHRvIAo+IGZpZ3VyZSBvdXQgbXkgaXNzdWU/Cj4gCj4gQW55IHBvaW50ZXIgb3IgaWRlYSB3
b3VsZCBiZSBhcHByZWNpYXRlZCEgVGhhbmtzLAo+IAo+IEdyw6lnb2lyZQoKCkhlbGxvIGFnYWlu
LAoKSXQgdHVybnMgb3V0IHRoYXQgVklESU9DX0RRRVZFTlQgZ2l2ZXMgMHgwMTAyIGZvciAoKHN0
cnVjdCB1dmNfZXZlbnQgCiopJnY0bDJfZXZlbnQudS5kYXRhKS0+cmVxLndJbmRleCBpbnN0ZWFk
IG9mIDB4MDEwMCBpbiBhbiB1dmMgc3RhbmRhbG9uZSAKY2FzZS4gQWxsIHRoZSB1c2Vyc3BhY2Ug
Y29kZSBpcyB0aGVuIHNjcmV3ZWQgZnJvbSB0aGlzIGNoYW5nZS4KCkRvZXMgYW55b25lIGhhdmUg
YW55IGlkZWEgd2h5IERRRVZFTlQgZ2l2ZXMgYSBkaWZmZXJlbnQgd0luZGV4IHZhbHVlIAooKzIp
IGluIGNhc2UgYW5vdGhlciBnYWRnZXQgaGFzIGJlZW4gaGFuZGxlZCBiZWZvcmUgdXZjPwoKR3LD
qWdvaXJlCgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXV2Yy1kZXZlbCBtYWlsaW5nIGxpc3QKTGludXgtdXZjLWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9saW51eC11dmMtZGV2ZWwK
