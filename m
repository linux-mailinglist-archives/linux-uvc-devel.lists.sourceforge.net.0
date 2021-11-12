Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D99F644E568
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 12 Nov 2021 12:11:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mlUS2-0008UT-Hy; Fri, 12 Nov 2021 11:10:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <michal2992@gmail.com>) id 1mlUS1-0008UL-TJ
 for linux-uvc-devel@lists.sourceforge.net; Fri, 12 Nov 2021 11:10:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HX4X3ww65nX9KK7mco0xjvDdGQf0FIc5mWgjzL+4q5Y=; b=JJ5+1V3SnzQOUMzkcwEnhuamSx
 xkH11BJS8euWB4b4eM9+x/0GEz4+8Sy8uesHSovEpRKhyVQFsqHa1gTwotBzkCxWKa2xi6pLcYp0A
 R0Y9qL/OnT6HIajvAdSIjqcFMs+T2sL4HEjIf6MGIZFzS+n3XNREtFel0NNwQhuxK6gg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HX4X3ww65nX9KK7mco0xjvDdGQf0FIc5mWgjzL+4q5Y=; b=mvRP0I/0lgxmWmhXQfLWbj6HNr
 0kzY0by9TN7pjSPVA2szq4mIAKUnPEb+fdexF630N/GBxHX3Nlrcp+E2RZ+ej1jghW+BaFK23VoYc
 KI3bBp1oxjvlv3eQSIM/ppynkx/6ND/6GqxhYmzH/wSxzsPvs/MlH6aS0RxSCT0cGf30=;
Received: from mail-yb1-f170.google.com ([209.85.219.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mlURy-00Ahh0-Ja
 for linux-uvc-devel@lists.sourceforge.net; Fri, 12 Nov 2021 11:10:33 +0000
Received: by mail-yb1-f170.google.com with SMTP id d10so22725273ybe.3
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 12 Nov 2021 03:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HX4X3ww65nX9KK7mco0xjvDdGQf0FIc5mWgjzL+4q5Y=;
 b=lHtUAB5OpXLG64L2kUPWjFyGZ7osap+OLkE4SrU2iZUrP1Ifk5ELZhJzBPRiniMvTe
 UNO2Qf6SlmIix2sySfD8pD7M/WuxXGjEB3K4c81J9uZ3hCGk6O9yURbFEEqVgEZu5F+d
 y6AjSSLrisz8dQR6sszx9qNRX1auM55X4QVeU4CJDA3qP0Zuo8CIIK7VHuWjQjZGg3+p
 OGMwnbvMmCtKyICIPVXWnbvQvG7fjN9XBZ9yYjDCYfeCU2oSg+BIYUmT1Mfp5c66ljau
 74iFP2HijaibVJulgbHcV2Tg9CIwqleAe2WPzl2fLhAWbnv1BK5G/nwDhz3jwE8Od0HP
 XhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HX4X3ww65nX9KK7mco0xjvDdGQf0FIc5mWgjzL+4q5Y=;
 b=4US+b5ERBCcFsLzjkeg3X2Drt4zyu6QP5MBmCzbCD8A/wUBM29l5Tn6uUDI2U5eCkH
 V86fJSaEWxfeWVeAK69UEh586/QDYFbjCEZhrJdsufosNZFtzBNuqqM78RWRyhF2VZtJ
 m/BvwHwqhT7zARhY4bM0GjdVA7/N/GL9SlZLkIY08l6qV1Q+Z+ezBXaNjcDUxkzk73U5
 f6KVTPxaFLtJbAibDiZOWZs2q4M9KU0y9LGiSMyckWtE88yU41Qvmxaa/Ljz3NlkDc/m
 s7B72wWLCiKxiNqZh/ivlaOXSKdUmIj4ZnX6Od7laW7j6XaO9BA8zW6RepqWvCSi3GbO
 d6ng==
X-Gm-Message-State: AOAM53379tmk9iTUTcpGYFf2bvtjynkFYEakxyXKpi6nJbkhI8A0qhzY
 h/ftyWODkK9UnaiOXjguIpnSIJC3XmYoDyRtkHc=
X-Google-Smtp-Source: ABdhPJzy18j1ogsY5qp/tFo/2XOnyXZUr9I1/KroFrhW4jZ82vCsqDGl0s7aHJ9qy+tw6fbH9wZHz3A152C8PEdv43Y=
X-Received: by 2002:a25:3b11:: with SMTP id i17mr15824034yba.259.1636715424846; 
 Fri, 12 Nov 2021 03:10:24 -0800 (PST)
MIME-Version: 1.0
References: <CAByPayF_GasCtQapLOMQrwsNwtYiW5TgB1JBy+CPhLrggVANiA@mail.gmail.com>
 <3JESBC32.LEBKYPQ7.DAFBDPVE@NTDBKNLL.KNYE6GDF.MN2H7JJD>
In-Reply-To: <3JESBC32.LEBKYPQ7.DAFBDPVE@NTDBKNLL.KNYE6GDF.MN2H7JJD>
From: =?UTF-8?Q?Micha=C5=82_Bojanowski?= <michal2992@gmail.com>
Date: Fri, 12 Nov 2021 12:10:12 +0100
Message-ID: <CAByPayG+M35mi8Y_hkY87Vh_a5TDua76o4=1knbkvTuOF7kwGA@mail.gmail.com>
To: Jack <ostroffjh@users.sourceforge.net>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  For me the guvcview output window shows nothing (essentially
    whatever was underneath it, the desktop or other window). Changing the option
    you mention doesn't do anything. Thanks. On Thu, Nov 11, 2021 at 11:24 PM
    Jack via Linux-uvc-devel wrote: > > On 2021.11.11 16:40, Michał Bojanowski
    wrote: > > Hi! > > > > I have a HP ProBook 6450b laptop running xubuntu 20.04.3
    LTS and > [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [michal2992[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.219.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.219.170 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [michal2992[at]gmail.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mlURy-00Ahh0-Ja
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
Cc: linux-uvc-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Rm9yIG1lIHRoZSBndXZjdmlldyBvdXRwdXQgd2luZG93IHNob3dzIG5vdGhpbmcgKGVzc2VudGlh
bGx5IHdoYXRldmVyCndhcyB1bmRlcm5lYXRoIGl0LCB0aGUgZGVza3RvcCBvciBvdGhlciB3aW5k
b3cpLiBDaGFuZ2luZyB0aGUgb3B0aW9uCnlvdSBtZW50aW9uIGRvZXNuJ3QgZG8gYW55dGhpbmcu
IFRoYW5rcy4KCk9uIFRodSwgTm92IDExLCAyMDIxIGF0IDExOjI0IFBNIEphY2sgdmlhIExpbnV4
LXV2Yy1kZXZlbAo8bGludXgtdXZjLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4gd3JvdGU6
Cj4KPiBPbiAyMDIxLjExLjExIDE2OjQwLCBNaWNoYcWCIEJvamFub3dza2kgd3JvdGU6Cj4gPiBI
aSEKPiA+Cj4gPiBJIGhhdmUgYSBIUCBQcm9Cb29rIDY0NTBiIGxhcHRvcCBydW5uaW5nIHh1YnVu
dHUgMjAuMDQuMyBMVFMgYW5kCj4gPiBjYW5ub3QKPiA+IGdldCB0aGUgYnVpbHQtaW4gY2FtZXJh
ICgwYmRhOjU4MDEpIHRvIHdvcmsuIFdoZW4gSSBydW4gYGNoZWVzZWAgb3IKPiA+IGBndXZjdmll
d2AgdGhlIExFRCBvdmVyIHRoZSBzY3JlZW4gbGlnaHRzLXVwIGJ1dCBib3RoIHByb2dyYW1zIHNo
b3cgYQo+ID4gYmxhbmsgc2NyZWVuLgo+ID4KPiA+IEkgaGF2ZSBzdXJmZWQgdGhlIGludGVybmV0
IGxvb2tpbmcgZm9yIHNvbHV0aW9uIGFuZCB0cmllZCBmZXcgdGhpbmdzCj4gPiB3aXRob3V0IHN1
Y2Nlc3MuCj4gPgo+ID4gSSdtIHdyaXRpbmcgeW91IHRvIHJ1bGUtb3V0IHRoYXQgdGhlIGRyaXZl
ciBpcyB0aGUgcHJvYmxlbSBhbmQgcGVyaGFwcwo+ID4gYWxzbyB0byBnZXQgc29tZSBoZWxwIGhv
dyB0byBmdXJ0aGVyIGRlYnVnIHRoaXMgcHJvYmxlbS4gUGxlYXNlIHNlZQo+ID4gYmVsb3cgZm9y
IHZhcmlvdXMgZGlhZ25vc3RpYyBvdXRwdXQuIEFueSBoZWxwIHdpbGwgYmUgZ3JlYXRseQo+ID4g
YXBwcmVjaWF0ZWQhIFRoYW5rIHlvdSBpbiBhZHZhbmNlLgo+Cj4gSW4gZ3V2Y3ZpZXcsIG9uIHRo
ZSAiVmlkZW8gQ29udHJvbHMiIHRhYiwgaGF2ZSB5b3UgdHJpZWQgYWxsIHRoZQo+IG9wdGlvbnMg
Zm9yIENhbWVyYSBPdXRwdXQ/ICBJIGhhdmVuJ3QgaGFkIGEgY29tcGxldGVseSBibGFjayBvdXRw
dXQsCj4gYnV0IEkgaGF2ZSBmb3VuZCB0aGF0IHNldHRpbmcgY2FuIG1ha2UgYSBodWdlIGRpZmZl
cmVuY2UuCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gTGludXgtdXZjLWRldmVsIG1haWxpbmcgbGlzdAo+IExpbnV4LXV2Yy1kZXZlbEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9saW51eC11dmMtZGV2ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1k
ZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vbGludXgtdXZjLWRldmVsCg==
