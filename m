Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D80A372FB1
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  4 May 2021 20:25:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1ldzjc-00014m-1c; Tue, 04 May 2021 18:25:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <logans@cottsay.net>) id 1ldzjb-00014O-47
 for linux-uvc-devel@lists.sourceforge.net; Tue, 04 May 2021 18:25:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AtXTdQIX9bb2MPF5jFfIMHdT6GnaipBdwCjyMzuRoMw=; b=aAwe8QynYvZqG4ukw/JPGe69YV
 uUqWx/mvjp5m75eardWNdPlkyw9flwTf1gpjuBZiCLgLGCIiQ7amL3bIBUQI1crABTtyjelp6eu5j
 x2G2PrODdP9HnU/p8NU5slAvLz+M46w+lnL8YY0+917WpRQpyRQYDc3HCyeSYwWbUC8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AtXTdQIX9bb2MPF5jFfIMHdT6GnaipBdwCjyMzuRoMw=; b=F
 RHxOPZvw7yDWEdvvxptUVn8jll+fxPDc97FnHGXF9zdp36UlM88+9QziryHQX9wc1Mh1dgXoHc3Ad
 Zej0w6Cnv8KbdVTDdk3XVhburABfiDfaImMc5ni4cdz5V7Xr9eZA4MrSUdZiX0bsPrwPNQG6nyuFX
 D2XRmp6gVmamt5kQ=;
Received: from azure2.cottsay.net ([104.41.151.152])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1ldzjS-00EaZz-TE
 for linux-uvc-devel@lists.sourceforge.net; Tue, 04 May 2021 18:25:28 +0000
Received: from cottsay-server.delphi.cottsay.net (unknown [24.19.54.182])
 by azure2.cottsay.net (Postfix) with ESMTPS id 2F90619F524
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue,  4 May 2021 18:08:34 +0000 (UTC)
Received: from cottsay-lenovo.delphi.cottsay.net (unknown [172.16.8.31])
 by cottsay-server.delphi.cottsay.net (Postfix) with ESMTPSA id 634613C007F
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue,  4 May 2021 11:08:33 -0700 (PDT)
Message-ID: <1b124e46eb7524f26bec11e6d3545fda61143802.camel@cottsay.net>
From: Scott K Logan <logans@cottsay.net>
To: linux-uvc-devel@lists.sourceforge.net
Date: Tue, 04 May 2021 11:08:32 -0700
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ldzjS-00EaZz-TE
Subject: [linux-uvc-devel] [PATCH 0/1] Microsoft LifeCam Exposure Behavior
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

RXZlciBzaW5jZSBJIHN0YXJ0ZWQgdXNpbmcgdGhlbSwgSSd2ZSBub3RpY2VkIHRoYXQgdGhlIGFi
c29sdXRlCmV4cG9zdXJlCmNvbnRyb2wgZm9yIHRoZSBMaWZlQ2FtIHdlYmNhbSBoYXNuJ3QgZnVu
Y3Rpb25lZCBwcm9wZXJseS4gQWZ0ZXIgc29tZQpwb2tpbmcgYXJvdW5kLCBJIG1hbmFnZWQgdG8g
Y2hhcmFjdGFyaXplIHRoZSBiZWhhdmlvci4gVG8gc3VtbWFyaXplLApvbmx5IHZhbHVlcyB3aGlj
aCBmb2xsb3cgYW4gZXhwb25lbnRpYWwgcGF0dGVybiBhcHBlYXIgdG8gcmVzdWx0IGluIHRoZQpp
bnRlbmRlZCBjaGFuZ2UgdG8gdGhlIHdlYmNhbSdzIGltYWdlLgoKSWRlYWxseSB0aGlzIHF1aXJr
eSBiZWhhdmlvciBjb3VsZCBiZSBoYW5kbGVkIHdpdGggYW4gZXh0ZW5zaW9uIHVuaXQsCmJ1dCBJ
J20gbm90IHN1cmUgdGhpcyBiZWhhdmlvciBjYW4gYmUgaW1wbGVtZW50ZWQgdGhlcmUuIEknbSBo
b3BpbmcKdGhhdApzb21lb25lIGNhbiBwb2ludCBtZSB0byBhIGJldHRlciBwbGFjZSB0byBpbXBs
ZW1lbnQgdGhpcyBxdWlyaywgYnV0CmJhcnJpbmcgdGhhdCwgSSdtIHNlbmRpbmcgYSBwYXRjaCB3
aGljaCByZXNvbHZlZCB0aGUgaXNzdWUgZm9yIG1lLiBJCm9ubHkgaGF2ZSB0d28gTGlmZUNhbSB3
ZWJjYW1zIHRvIHRlc3Qgd2l0aCwgc28gdGhvc2UgYXJlIHRoZSBvbmx5IHR3byBJCmVuYWJsZWQg
dGhlIHF1aXJrIGZvci4KCkxvb2tpbmcgZm9yd2FyZCB0byBmZWVkYmFjayBvbiBob3cgYmVzdCB0
byBzb2x2ZSB0aGlzIGlzc3VlLgoKU2NvdHQgSyBMb2dhbiAoMSk6CsKgIG1lZGlhOiB1dmN2aWRl
bzogQWRkIHF1aXJrIGZvciBleHBvbmVudGlhbCBleHBvc3VyZQoKwqBkcml2ZXJzL21lZGlhL3Vz
Yi91dmMvdXZjX2N0cmwuY8KgwqAgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
wqBkcml2ZXJzL21lZGlhL3VzYi91dmMvdXZjX2RyaXZlci5jIHwgMTggKysrKysrKysrKysrKwrC
oGRyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmN2aWRlby5owqDCoCB8wqAgMSArCsKgMyBmaWxlcyBj
aGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXV2Yy1kZXZlbCBtYWlsaW5nIGxpc3QKTGludXgtdXZj
LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9saW51eC11dmMtZGV2ZWwK
