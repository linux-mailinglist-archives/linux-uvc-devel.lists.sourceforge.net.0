Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EA755BCF4
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 28 Jun 2022 03:26:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1o5zzX-0006a5-67; Tue, 28 Jun 2022 01:26:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregoire@gentil.com>) id 1o5zz8-0006Zf-Ub
 for linux-uvc-devel@lists.sourceforge.net; Tue, 28 Jun 2022 01:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2BIBj5gWJb1saoUjAmhLYd8Aar5xsHPEb3PuDnxIiJk=; b=mEedNhyPgFntJLCxpSBh7/kgZK
 CqBVjeTo9MFhbpel8m1vX03gxFJRA9Kkvg3XAWLFTEHfrTOt3fmdpAJzhVRGaMXGoj17pHyICV/nx
 HyBGtyl+lIJCeFGExb3fuRl/C2JpDKiR774j+GHNo99ZICcYxrYvKY6RgNa2K965EMH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2BIBj5gWJb1saoUjAmhLYd8Aar5xsHPEb3PuDnxIiJk=; b=AIguJJvDS8YDPq+6LwTJ6Ad/pF
 aJ6MZemLpgCfYdeH6oN2BXqj4BY9NkpAWLVnxV7Km85fXp2FvQG9iRZfjIBjDNtgL50mgX+U7nXqE
 8xfFAin6YoQeBrFxDL1vmAVmIt2H1hTzsnr6UAjQCcd5PITFhaD3LK7syKVCMeQ/aVLM=;
Received: from server139-18.web-hosting.com ([104.219.248.83])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o5zyy-0003Aj-Kd
 for linux-uvc-devel@lists.sourceforge.net; Tue, 28 Jun 2022 01:25:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gentil.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2BIBj5gWJb1saoUjAmhLYd8Aar5xsHPEb3PuDnxIiJk=; b=NtRIiV+5eXIibyFQsjzotO9+fC
 ethZND7eS6U7su05v5vBG/cSmqYbF2F+GWvi4uRPj+Sr9s0XZS+5uiNGEW2i8r1DkIwJ4BBTD4XLY
 jIMZwG58QqSITgb5f3i/Hjk/s24Ec0tWnpGblECvcElxAr9rWcyl4/TpDs2t9A8HHo7Hl++ctYIRQ
 HEIX0R2O7shdkSXjDq/49kVnOSzMqx9lxyel2B+/G3hW+2xtN2xZgFhimFsqmTu4WcuuPDnwap0Qi
 VO78oTJZceXBcN5UBPk0Yur9ICYwNhbNqDkwuRUQk0aMFAwTU5gIGJFsthLhQ75DQ7eqSVoM91t0U
 bPx3ObYA==;
Received: from c-67-180-11-187.hsd1.ca.comcast.net ([67.180.11.187]:47664
 helo=[192.168.10.21])
 by server139.web-hosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <gregoire@gentil.com>) id 1o5z8I-002ZdD-R9
 for linux-uvc-devel@lists.sourceforge.net;
 Mon, 27 Jun 2022 20:31:15 -0400
Message-ID: <e7e92986-33dc-40df-7631-66f86b93ce59@gentil.com>
Date: Mon, 27 Jun 2022 17:31:08 -0700
MIME-Version: 1.0
Content-Language: en-US
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
References: <998466ecd0e445d6a2ccc564be53fe06@ruv-bkk.de>
From: Gregoire Gentil <gregoire@gentil.com>
Organization: Gregoire Gentil
In-Reply-To: <998466ecd0e445d6a2ccc564be53fe06@ruv-bkk.de>
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
 Content preview:  Hello, I have UVC gadget over configfs working well alone.
 I have also acm + mtp working at the same time. But uvc doesn't work in a
 uvc + acm configfs configuration (while acm works in that same configurati
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o5zyy-0003Aj-Kd
Subject: [linux-uvc-devel] configfs: uvc and other gadget at the same time
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

SGVsbG8sCgpJIGhhdmUgVVZDIGdhZGdldCBvdmVyIGNvbmZpZ2ZzIHdvcmtpbmcgd2VsbCBhbG9u
ZS4gSSBoYXZlIGFsc28gYWNtICsgCm10cCB3b3JraW5nIGF0IHRoZSBzYW1lIHRpbWUuIEJ1dCB1
dmMgZG9lc24ndCB3b3JrIGluIGEgdXZjICsgYWNtIApjb25maWdmcyBjb25maWd1cmF0aW9uICh3
aGlsZSBhY20gd29ya3MgaW4gdGhhdCBzYW1lIGNvbmZpZ3VyYXRpb24pLgoKdXZjIGFsb25lIGdp
dmVzOgoKWyAgIDEzLjU0NDAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBuZXcgZGV2aWNlIGlz
IGhpZ2gtc3BlZWQKWyAgIDEzLjYyNDAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBuZXcgZGV2
aWNlIGlzIGhpZ2gtc3BlZWQKWyAgIDEzLjY5NjAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBu
ZXcgYWRkcmVzcyA1MwpbICAgMTMuNzIwMDAwXSBjb25maWdmcy1nYWRnZXQgZ2FkZ2V0OiBoaWdo
LXNwZWVkIGNvbmZpZyAjMTogYwpbICAgMTMuNzIwMDAwXSBjb25maWdmcy1nYWRnZXQgZ2FkZ2V0
OiB1dmNfZnVuY3Rpb25fc2V0X2FsdCgwLCAwKQpbICAgMTMuNzIwMDAwXSBjb25maWdmcy1nYWRn
ZXQgZ2FkZ2V0OiByZXNldCBVVkMgQ29udHJvbApbICAgMTMuNzIwMDAwXSBjb25maWdmcy1nYWRn
ZXQgZ2FkZ2V0OiB1dmNfZnVuY3Rpb25fc2V0X2FsdCgxLCAwKQpbICAgMTMuNzIwMDAwXSBjb25m
aWdmcy1nYWRnZXQgZ2FkZ2V0OiB1dmNfZnVuY3Rpb25fc2V0X2FsdCgxLCAwKQoKCndoaWxlIHV2
YyArIGFjbSBnaXZlczoKWyAgIDEzLjc4NDAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBuZXcg
ZGV2aWNlIGlzIGhpZ2gtc3BlZWQKWyAgIDEzLjg2NDAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3Rn
OiBuZXcgZGV2aWNlIGlzIGhpZ2gtc3BlZWQKWyAgIDEzLjkzMjAwMF0gZHdjMiBjMDA0MDAwMC5k
d2Myb3RnOiBuZXcgYWRkcmVzcyA1NQpbICAgMTMuOTU2MDAwXSBjb25maWdmcy1nYWRnZXQgZ2Fk
Z2V0OiBoaWdoLXNwZWVkIGNvbmZpZyAjMTogYwpbICAgMTMuOTU2MDAwXSBjb25maWdmcy1nYWRn
ZXQgZ2FkZ2V0OiB1dmNfZnVuY3Rpb25fc2V0X2FsdCgyLCAwKQpbICAgMTMuOTU2MDAwXSBjb25m
aWdmcy1nYWRnZXQgZ2FkZ2V0OiByZXNldCBVVkMgQ29udHJvbApbICAgMTMuOTU2MDAwXSBjb25m
aWdmcy1nYWRnZXQgZ2FkZ2V0OiB1dmNfZnVuY3Rpb25fc2V0X2FsdCgzLCAwKQpbICAgMTMuOTU2
MDAwXSBkd2MyIGMwMDQwMDAwLmR3YzJvdGc6IGR3YzJfaHNvdGdfZXBfc2V0aGFsdChlcCAKZmZm
ZmZmYzAxZTFmZTMxOCBlcDAsIDEpClsgICAxMy45NTYwMDBdIGR3YzIgYzAwNDAwMDAuZHdjMm90
ZzogZHdjMl9oc290Z19lcF9zZXRoYWx0KGVwIApmZmZmZmZjMDFlMWZlMzE4IGVwMCwgMSkKWyAg
IDEzLjk1NjAwMF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBkd2MyX2hzb3RnX2VwX3NldGhhbHQo
ZXAgCmZmZmZmZmMwMWUxZmUzMTggZXAwLCAxKQpbICAgMTMuOTU2MDAwXSBkd2MyIGMwMDQwMDAw
LmR3YzJvdGc6IGR3YzJfaHNvdGdfZXBfc2V0aGFsdChlcCAKZmZmZmZmYzAxZTFmZTMxOCBlcDAs
IDEpClsgICAxMy45NTYwMDBdIGNvbmZpZ2ZzLWdhZGdldCBnYWRnZXQ6IHV2Y19mdW5jdGlvbl9z
ZXRfYWx0KDMsIDApClsgICAxMy45NjAwMDBdIGR3YzIgYzAwNDAwMDAuZHdjMm90ZzogZHdjMl9o
c290Z19lcF9zZXRoYWx0KGVwIApmZmZmZmZjMDFlMWZlMzE4IGVwMCwgMSkKWyAgIDEzLjk2MDAw
MF0gZHdjMiBjMDA0MDAwMC5kd2Myb3RnOiBkd2MyX2hzb3RnX2VwX3NldGhhbHQoZXAgCmZmZmZm
ZmMwMWUxZmUzMTggZXAwLCAxKQoKCkFuZCB0aGUgaG9zdCBQQyBrZXJuZWwgZ2l2ZXMgYW4gZXJy
b3Igd2hlbiBpbmZvIGlzIHJldHJpZXZlZCBmcm9tIHRoZSAKT1RHIGRldmljZS4KCkJlY2F1c2Ug
b2YgYSBsb3Qgb3RoZXIgKG11Y2ggbW9yZSBjb21wbGljYXRlZCkgY29uc3RyYWludHMsIEknbSBv
biBhbiAKb2xkIDQuNCBrZXJuZWwgZmFyIGF3YXkgZnJvbSB0aGUgbGF0ZXN0LgoKSXMgdGhpcyBh
IGtub3duIGJ1Zz8gQ291bGQgaXQgYmUgYSBoYXJkd2FyZSBsaW1pdGF0aW9uIG9mIG15IE9URyB3
aGljaCAKaGFzIDEgY29udHJvbCBlbmRwb2ludCBhbmQgMTYgZGV2aWNlIG1vZGUgZW5kcG9pbnRz
PyBJdCBzZWVtcyB0aGF0IGFjbSAKaXMgaGFuZGxlZCBiZWZvcmUgdXZjLCB3b3VsZCBpdCBtYWtl
IHNlbnNlIHRvIHBhdGNoIHRvIHN3YXAgaG93IHRob3NlIAp0d28gYXJlIGhhbmRsZWQgaW5pdGlh
bGx5PyBXaGVyZSBzaG91bGQgSSBsb29rIGludG8gaW4gbXkga2VybmVsIHRvIApmaWd1cmUgb3V0
IG15IGlzc3VlPwoKQW55IHBvaW50ZXIgb3IgaWRlYSB3b3VsZCBiZSBhcHByZWNpYXRlZCEgVGhh
bmtzLAoKR3LDqWdvaXJlCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vbGludXgtdXZjLWRldmVsCg==
