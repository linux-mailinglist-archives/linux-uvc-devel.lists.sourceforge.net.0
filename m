Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 485C72DD88D
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 17 Dec 2020 19:42:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kpyDs-0007Kr-37; Thu, 17 Dec 2020 18:41:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <doerges@pre-sense.de>) id 1kpyDq-0007Kg-EA
 for linux-uvc-devel@lists.sourceforge.net; Thu, 17 Dec 2020 18:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DWjGCIidjOo471owCeQZQS/1W+sYCCCsL9Jk6P3QowA=; b=HyWUMllQc8Yzhpk4a8QXEB10LD
 cpqsJg1oxxoQzXiroaZHiB3DxgKnOIdFSk40/JT5yBYgE9HGgtAMySN1C9wjMtHeYvjusg761rPLf
 OAZauRIIjfLjyhl/BEarMRDJcvfnKv3GJmxbOwxUzhbBy7tZvz3ypKSC1LgjnoRJvxIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DWjGCIidjOo471owCeQZQS/1W+sYCCCsL9Jk6P3QowA=; b=k
 n4VhtnoZcZIUHrUi1Nq/+gEd/xuonEoW6G4PH1rxg53DnEz6zYUIw04ASp1UKciHjWK0RiCKF+hIb
 nybDozaqSH2VbfXktnvkjcvWFKFV3pBTuS//ooQWcpFBf08x5tHT1w2oFxdmIuTNBuBKkRabCMSFe
 55BAeVurROGuLr50=;
Received: from blockout.pre-sense.de ([213.238.39.74] helo=mail.pre-sense.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kpyDm-000ILV-O1
 for linux-uvc-devel@lists.sourceforge.net; Thu, 17 Dec 2020 18:41:54 +0000
Received: from smtp.pre-sense.de (tetris_b.pre-sense.de [10.9.0.76])
 by mail.pre-sense.de (Postfix) with ESMTP id 503545E2EC
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 17 Dec 2020 19:41:44 +0100 (CET)
Received: from atlan.none (dynamic-077-008-048-153.77.8.pool.telefonica.de
 [77.8.48.153]) by smtp.pre-sense.de (Postfix) with ESMTPS id 81B92D40
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 17 Dec 2020 19:41:27 +0100 (CET)
From: =?UTF-8?Q?Till_D=c3=b6rges?= <doerges@pre-sense.de>
To: linux-uvc-devel@lists.sourceforge.net
Organization: PRESENSE Technologies GmbH
Message-ID: <c77c13f5-a05e-6d69-c65b-58004dbd7712@pre-sense.de>
Date: Thu, 17 Dec 2020 19:41:43 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: de-DE
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pre-sense.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kpyDm-000ILV-O1
Subject: [linux-uvc-devel] Webcam mode only working with globally disabled
 USB autosuspend (1f3a:100e)
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

SGkgYWxsLAoKdGhlIGRldmljZSBpbiBxdWVzdGlvbiBpcwoKICAgUmVua2ZvcmNlIFJGIEFDNEsg
MzAwIEFjdGlvbiBDYW0gNEsKCmh0dHBzOi8vd3d3LmNvbnJhZC5kZS9kZS9wL2FjdGlvbi1jYW0t
cmVua2ZvcmNlLXJmLWFjLTRrLXdlYmNhbS00ay13bGFuLXdhc3NlcmZlc3Qtc3RhdWJnZXNjaHVl
dHp0LTE1NzcwNDMuaHRtbAoKCldoZW4gY29ubmVjdGVkIHZpYSBVU0IgdG8gYSBQQywgaXQgb2Zm
ZXJzIHR3byBtb2RlczoKICAtIG1hc3Mgc3RvcmFnZQogIC0gY2FtZXJhCgoKV2hlbiBzZXQgdG8g
d2ViY2FtIG1vZGUgaXQgaWRlbnRpZmllcyBhczoKICAgWzM0MzY3LjU0NTUxMF0gdXZjdmlkZW86
IEZvdW5kIFVWQyAxLjAwIGRldmljZSBBbmRyb2lkICgxZjNhOjEwMGUpCgoKQnV0IGluIG9yZGVy
IGZvciB0aGUgd2ViY2FtIHBhcnQgdG8gd29yayByZWxpYWJseSBJIGhhdmUgdG8gZGlzYWJsZSBV
U0IgYXV0b3N1c3BlbmQgCihhcyBzdWdnZXN0ZWQgdW5kZXIgaHR0cHM6Ly93d3cuaWRlYXNvbmJv
YXJkLm9yZy91dmMvZmFxLyk6CgotLS0gc25pcCAtLS0KZWNobyAtMSA+IC9zeXMvbW9kdWxlL3Vz
YmNvcmUvcGFyYW1ldGVycy9hdXRvc3VzcGVuZAotLS0gc25hcCAtLS0KCgpXaXRoIHRoZSBkZWZh
dWx0IHZhbHVlIGluIC9zeXMvbW9kdWxlL3VzYmNvcmUvcGFyYW1ldGVycy9hdXRvc3VzcGVuZCB0
aGUgZGV2aWNlIApsZWF2ZXMgd2ViY2FtIG1vZGUgYWZ0ZXIgYSBmZXcgc2Vjb25kcy4KCgpTbyBJ
IHdhcyB3b25kZXJpbmcgd2hldGhlciBvbmUgY2FuIGRlZmluZSBhdXRvc3VzcGVuZCBleGNlcHRp
b25zIGZvciBjZXJ0YWluIFVWQyBkZXZpY2VzLgoKTG9va2luZyB0aHJvdWdoIHRoZSBkcml2ZXIg
c291cmNlIEkgZGlkbid0IGRpc2NvdmVyIGFuIG9idmlvdXMgd2F5IHRvIGRvIHNvLgoKSXMgdGhp
cyBzb21ldGhpbmcgdGhlIFVWQyBkcml2ZXIgc3VwcG9ydHM/CgpPciBkb2VzIG9uZSBoYXZlIHRv
IGNvbmZpZ3VyZSB0aGlzIGUuZy4gdmlhIGEgdWRldiBydWxlIHdoZW4gdGhlIGRldmljZSBpcyBj
b25uZWN0ZWQ/CgoKQW55IGhpbnRzIGFyZSBhcHByZWNpYXRlZC4KCgpUaGFua3MgYW5kIHJlZ2Fy
ZHMgLS0gVGlsbAotLSAKRGlwbC4tSW5mb3JtLiBUaWxsIETDtnJnZXMgICAgICAgICAgICAgICAg
ICBkb2VyZ2VzQHByZS1zZW5zZS5kZQpQUkVTRU5TRSBUZWNobm9sb2dpZXMgR21iSCAgICAgICAg
ICAgICBOYWdlbHN3ZWcgNDEsIEQtMjAwOTcgSEgKR2VzY2jDpGZ0c2bDvGhyZXIvTWFuYWdpbmcg
RGlyZWN0b3JzICAgICAgIEFHIEhhbWJ1cmcsIEhSQiAxMDc4NDQKVGlsbCBEw7ZyZ2VzLCBKw7xy
Z2VuIFNhbmRlciAgICAgICAgICAgICAgIFVTdC1JZE5yLjogREUyNjM3NjUwMjQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC11dmMtZGV2ZWwg
bWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtdXZjLWRldmVsCg==
