Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD9A1C4925
	for <lists+linux-uvc-devel@lfdr.de>; Mon,  4 May 2020 23:37:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jVim9-0003tQ-N9; Mon, 04 May 2020 21:37:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrea0spam@gmail.com>) id 1jVim8-0003tF-L2
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 21:37:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6aNq4c9y77rKidLT04mWKhW2dKTuA/0Y82VPmZJ1vA8=; b=Gh/Cw6QuWui9imXzNQMsSWI8Mz
 BB7/m4pcxWvqL2hnTi9esmifzjwkFuI6jSxzHJ7rnpEhi90iA7mfHzAYd5yEsp1u9QEoN0OLwvwsa
 UU3dkbpoUzKy74Cu9Beo0U2zRE+/gYtbkHWEaLUd+UQ76Vf3VWedbtP8OkeF4EloDfOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6aNq4c9y77rKidLT04mWKhW2dKTuA/0Y82VPmZJ1vA8=; b=kYdF93Cqw4AD4vaax9Ay3NLNjD
 QWOR/AXqnuOZ9NdkhVMBHR1bnIC/0bq0FvqdAKOgYN+UNe8lVUeM6J/RZxH161NUhNn/G1KX0vhgp
 S2crZ2O5+0ypuFpjJ88kaq/egpJk6V6x/KnIrFh/qWzgFB3PQYjEzShGyVpA7sQCMKzs=;
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVim4-007UG9-PX
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 21:37:20 +0000
Received: by mail-wr1-f50.google.com with SMTP id e16so254125wra.7
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 04 May 2020 14:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=6aNq4c9y77rKidLT04mWKhW2dKTuA/0Y82VPmZJ1vA8=;
 b=OlhQvauf7R6AWNYWKxVLmPoxiHgtI1DcrlChC3roG0lzqg3UGYU5g41aUFXgOv22qC
 IbMPcvwhhB8tQuOXYeRG5EYE58w4AiE0/y437bdfQPD/ib5+ttM5afhySzeDsQcrLbBv
 DZ/Z/4F4nslh5r+sek0Ql5BX1WRTOrNT1tE9QLJ/8nuFc+/wrptsCtArAbCenmrH0wEf
 HeZv7G/m2iJL8diDtNogmrUPUQHIFwMuO1iaPb9EOsSUviJbXLUqa21/CS0VEEyTX1GD
 XojPJ4sVlBOQ7oe1FTSpjO3/d8ohtqx8Huvd84AcX7PTo84EFRZAE3s6KVBFsEztgLoL
 hcyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6aNq4c9y77rKidLT04mWKhW2dKTuA/0Y82VPmZJ1vA8=;
 b=udxcqBDO7xlcH24WXlqE6yHh8opZJ+BQAxTZa1mztE7qU8MIyzPe7EWf0rY18xO73Y
 RN74KXKjI8oG/AcPxR18acFS0X1R5507k65RqQVjDExN2/A58dL2h4lInGaKndh7pzd6
 2bYe/WfbqJ7uMTxgTjSohGYOG/qqW0DFWadBeTMFgmXIgeAcu8NxNDK3VERH8jmeXWt2
 4ssJYxIPzym+euHx99Y/SzBv6bYdhJhYNBt2cYzURgZPgJvvx4yqHqhEqKp745+eFP+w
 Nt0pt/60uQaUk9mhlYaZTM5l9ih5M/opKI1eTJnJX5s89qg1U35qIWZukK5sYZkXGoJb
 tUXg==
X-Gm-Message-State: AGi0Puawaeq8n2bPoQRSh3zvYh6//d6cVwgfh32ajISKZHi9zLkrzorj
 AvivSSyenXShUrg1zealzR7nOB2MAq4=
X-Google-Smtp-Source: APiQypKmkt4XYyUfniMnH1f0yc51CfHa9gkVR65uJpWz4eNdeko31DC5ZeCG13U8cA3w2tSLpslF2A==
X-Received: by 2002:a5d:42c8:: with SMTP id t8mr1418396wrr.70.1588628230115;
 Mon, 04 May 2020 14:37:10 -0700 (PDT)
Received: from [192.168.1.248]
 (host45-181-dynamic.5-87-r.retail.telecomitalia.it. [87.5.181.45])
 by smtp.gmail.com with ESMTPSA id n25sm419489wmk.9.2020.05.04.14.37.09
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 14:37:09 -0700 (PDT)
From: Andrea Santa Pazienza <andrea0spam@gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
References: <63c3f962-6ca9-7841-5f7c-214f2c89f82c@gmail.com>
Message-ID: <2465191c-e01e-9969-3e11-962d3d91a0ca@gmail.com>
Date: Mon, 4 May 2020 23:37:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <63c3f962-6ca9-7841-5f7c-214f2c89f82c@gmail.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andrea0spam[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVim4-007UG9-PX
Subject: Re: [linux-uvc-devel] Chicony webcam 042f:b483 on Asus F200M
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

aSdtIHNvcnJ5CnRoZSBwcm9ibGVtcyBhcmU6CnNvbWV0aW1lcyB0aGUgd2ViY2FtIGlzIG5vdCBp
ZGVudGlmaWVkCnNvbWV0aW1lcyB0aGUgd2ViY2FtIGlzIGlkZW50aWZpZWQgYnV0IGkgc2VlIG9u
bHkgYmxhY2sKCk9uIDA0LzA1LzIwIDIzOjMzLCBBbmRyZWEgU2FudGEgUGF6aWVuemEgd3JvdGU6
Cj4gSGkgYWxsLAo+IEknbSB0cnlpbmcgdG8gbWFrZSB0aGlzIHdlYmNhbSB3b3JrIG9uIERlYmlh
biAxMC4zOgo+IENoaWNvbnkgMDRmMjpiNDgzLgo+Cj4gQWNjb3JkaW5nIHRvIGh0dHBzOi8vd3d3
LmlkZWFzb25ib2FyZC5vcmcvdXZjL2ZhcS8gSSBjaGVja2VkIGl0IGlzIGEgCj4gVVZDIHdlYmNh
bQo+Cj4geHh4eHh4QHh4eHh4eDp+JCBsc3VzYiAtZCAwNGYyOmI0ODMgLXYgfCBncmVwICIxNCBW
aWRlbyIKPiBDb3VsZG4ndCBvcGVuIGRldmljZSwgc29tZSBpbmZvcm1hdGlvbiB3aWxsIGJlIG1p
c3NpbmcKPiDCoMKgwqDCoMKgIGJGdW5jdGlvbkNsYXNzwqDCoMKgwqDCoMKgwqDCoCAxNCBWaWRl
bwo+IMKgwqDCoMKgwqAgYkludGVyZmFjZUNsYXNzwqDCoMKgwqDCoMKgwqAgMTQgVmlkZW8KPiDC
oMKgwqDCoMKgIGJJbnRlcmZhY2VDbGFzc8KgwqDCoMKgwqDCoMKgIDE0IFZpZGVvCj4gwqDCoMKg
wqDCoCBiSW50ZXJmYWNlQ2xhc3PCoMKgwqDCoMKgwqDCoCAxNCBWaWRlbwo+IMKgwqDCoMKgwqAg
YkludGVyZmFjZUNsYXNzwqDCoMKgwqDCoMKgwqAgMTQgVmlkZW8KPiDCoMKgwqDCoMKgIGJJbnRl
cmZhY2VDbGFzc8KgwqDCoMKgwqDCoMKgIDE0IFZpZGVvCj4gwqDCoMKgwqDCoCBiSW50ZXJmYWNl
Q2xhc3PCoMKgwqDCoMKgwqDCoCAxNCBWaWRlbwo+Cj4gSSBoYXZlIGFsc28gbWFueSBwcm9ibGVt
cwo+Cj4gc3VkbyBlY2hvIDB4ZmZmZiA+IC9zeXMvbW9kdWxlL3V2Y3ZpZGVvL3BhcmFtZXRlcnMv
dHJhY2Ugbm8gcmVwbHkgYXQgYWxsCj4KPiBzdWRvIGVjaG8gMCA+IC9zeXMvbW9kdWxlL3V2Y3Zp
ZGVvL3BhcmFtZXRlcnMvdHJhY2Ugbm8gcmVwbHkgYXQgYWxsCj4KPiBsc21vZCBzb21ldGltZXMg
c2hvd3MgbWUgdGhlIGRldmljZSBhbmQgc29tZXRpbWVzIG5vdC4KPgo+IEkgaG9wZSBzb21lb25l
IGNhbiBoZWxwLgo+Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vbGludXgtdXZjLWRldmVsCg==
