Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF61544DDD7
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 11 Nov 2021 23:23:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mlITc-0003MG-UC; Thu, 11 Nov 2021 22:23:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ostroffjh@aya.yale.edu>) id 1mlITa-0003MA-Ti
 for linux-uvc-devel@lists.sourceforge.net; Thu, 11 Nov 2021 22:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-Id:
 In-Reply-To:References:MIME-Version:To:Subject:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4IOxnbrgCHOAH2KWD9SKDMxsNnDXBpCba4V3BEc6jlg=; b=aIdGakvU7Gic8EHTVOWTjTJiiP
 MXz17P9baNbjnDH59HEF1158d9b8QQq40x9R7JuLn9XUuCSx9XGUc85uJKW8waFxi+DRNhYswo/fn
 1CadHLAGakIVaw9Qq5ewkAJ8BF3Ah2nNgY9IZ2lD+xAQavwCBf5u9MZrLngq80UQP4vk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-Id:In-Reply-To:References:
 MIME-Version:To:Subject:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4IOxnbrgCHOAH2KWD9SKDMxsNnDXBpCba4V3BEc6jlg=; b=NtLDsDFPbJL5IcUDP9sEfb5wa/
 HYshQ3ggx/Kt0LTYl0q+3wE8OP2JkpL9pPPbRiK3kfeN2dfZwluOqommx8sm1+GZXzTLIMv6jUhWd
 IsUZZ3OdbQ619vZdeLMdeKQ5+2g/nx1wCS/Jl8rX1LJ8oFXdmYKQBL4RPEf9LPQFXrNM=;
Received: from mail-qk1-f172.google.com ([209.85.222.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mlITb-000623-Fy
 for linux-uvc-devel@lists.sourceforge.net; Thu, 11 Nov 2021 22:23:23 +0000
Received: by mail-qk1-f172.google.com with SMTP id bk22so7295493qkb.6
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 11 Nov 2021 14:23:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:subject:to:mime-version:references
 :in-reply-to:message-id:content-disposition
 :content-transfer-encoding;
 bh=4IOxnbrgCHOAH2KWD9SKDMxsNnDXBpCba4V3BEc6jlg=;
 b=xgqChI6TmkL7Bbr0xAhch90KHEJrzKrsMz45OY5JwaNBAl1emS1uYEIQMIpSGHYRVN
 4IAL1AW+KogzwLuhbqhKG32p+e0+QMN0zOsZZOPvXwEwr3DDInFlymLCFfSuTgxfPR9b
 E9m7jF+3xFArbUVU7WMb5P/nibKxnbLbGBKyg2dPhsMNGN0wwm0THNfyqCopyMona8KZ
 VsBCXvTH8SiZCp8rytUiKIh6pRjgkaTl5yPShVjOAghf3RbwOBB+ubdkqXsUEWYJrx4f
 ekLzCjf1ad2fAmT7Hb0gbQddtWEMM2HmO4ey09tL4ks1+qnsTFAr6LbrtEt8fU2lDm2H
 Pv6g==
X-Gm-Message-State: AOAM530tG8msMern/IsQb9GWe5DBlcALEysAnfkN3mjYdIZhVMxKDI6K
 6PUkIjMzoKF28BGm38hMKBRj/ub7nx2/nmg4
X-Google-Smtp-Source: ABdhPJxwlTW6e1NYEAQ6DsmV9av4UXwzNyJL9wij5UorzcvlZlS/7XTj5+bGvGvP+mjgjfW+8TL6GA==
X-Received: by 2002:a05:622a:1449:: with SMTP id
 v9mr11146189qtx.122.1636667534984; 
 Thu, 11 Nov 2021 13:52:14 -0800 (PST)
Received: from ffortso9 (c-76-23-130-96.hsd1.ct.comcast.net. [76.23.130.96])
 by smtp.gmail.com with ESMTPSA id v4sm1949364qkp.118.2021.11.11.13.52.13
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Nov 2021 13:52:14 -0800 (PST)
Date: Thu, 11 Nov 2021 16:52:12 -0500
To: linux-uvc-devel@lists.sourceforge.net
MIME-Version: 1.0
References: <CAByPayF_GasCtQapLOMQrwsNwtYiW5TgB1JBy+CPhLrggVANiA@mail.gmail.com>
In-Reply-To: <CAByPayF_GasCtQapLOMQrwsNwtYiW5TgB1JBy+CPhLrggVANiA@mail.gmail.com>
X-Mailer: Balsa 2.6.3-real-16-g1a34f0517
Message-Id: <3JESBC32.LEBKYPQ7.DAFBDPVE@NTDBKNLL.KNYE6GDF.MN2H7JJD>
Content-Disposition: inline
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2021.11.11 16:40, Michał Bojanowski wrote: > Hi! > > I
    have a HP ProBook 6450b laptop running xubuntu 20.04.3 LTS and > cannot >
    get the built-in camera (0bda:5801) to work. When I run `cheese` or [...]
    
 
 Content analysis details:   (-1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.172 listed in list.dnswl.org]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mlITb-000623-Fy
Subject: Re: [linux-uvc-devel] Trouble with 0bda:5801 - blank screen
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
From: Jack via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Jack <ostroffjh@users.sourceforge.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="Flowed"; DelSp="Yes"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

T24gMjAyMS4xMS4xMSAxNjo0MCwgTWljaGHFgiBCb2phbm93c2tpIHdyb3RlOgo+IEhpIQo+IAo+
IEkgaGF2ZSBhIEhQIFByb0Jvb2sgNjQ1MGIgbGFwdG9wIHJ1bm5pbmcgeHVidW50dSAyMC4wNC4z
IExUUyBhbmQgIAo+IGNhbm5vdAo+IGdldCB0aGUgYnVpbHQtaW4gY2FtZXJhICgwYmRhOjU4MDEp
IHRvIHdvcmsuIFdoZW4gSSBydW4gYGNoZWVzZWAgb3IKPiBgZ3V2Y3ZpZXdgIHRoZSBMRUQgb3Zl
ciB0aGUgc2NyZWVuIGxpZ2h0cy11cCBidXQgYm90aCBwcm9ncmFtcyBzaG93IGEKPiBibGFuayBz
Y3JlZW4uCj4gCj4gSSBoYXZlIHN1cmZlZCB0aGUgaW50ZXJuZXQgbG9va2luZyBmb3Igc29sdXRp
b24gYW5kIHRyaWVkIGZldyB0aGluZ3MKPiB3aXRob3V0IHN1Y2Nlc3MuCj4gCj4gSSdtIHdyaXRp
bmcgeW91IHRvIHJ1bGUtb3V0IHRoYXQgdGhlIGRyaXZlciBpcyB0aGUgcHJvYmxlbSBhbmQgcGVy
aGFwcwo+IGFsc28gdG8gZ2V0IHNvbWUgaGVscCBob3cgdG8gZnVydGhlciBkZWJ1ZyB0aGlzIHBy
b2JsZW0uIFBsZWFzZSBzZWUKPiBiZWxvdyBmb3IgdmFyaW91cyBkaWFnbm9zdGljIG91dHB1dC4g
QW55IGhlbHAgd2lsbCBiZSBncmVhdGx5Cj4gYXBwcmVjaWF0ZWQhIFRoYW5rIHlvdSBpbiBhZHZh
bmNlLgoKSW4gZ3V2Y3ZpZXcsIG9uIHRoZSAiVmlkZW8gQ29udHJvbHMiIHRhYiwgaGF2ZSB5b3Ug
dHJpZWQgYWxsIHRoZSAgCm9wdGlvbnMgZm9yIENhbWVyYSBPdXRwdXQ/ICBJIGhhdmVuJ3QgaGFk
IGEgY29tcGxldGVseSBibGFjayBvdXRwdXQsICAKYnV0IEkgaGF2ZSBmb3VuZCB0aGF0IHNldHRp
bmcgY2FuIG1ha2UgYSBodWdlIGRpZmZlcmVuY2UuCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtdXZjLWRldmVsIG1haWxpbmcgbGlzdApMaW51
eC11dmMtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LXV2Yy1kZXZlbAo=
