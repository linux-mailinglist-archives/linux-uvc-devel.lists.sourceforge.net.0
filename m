Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7B9267BE2
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 12 Sep 2020 21:21:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kHB5O-0001eH-68; Sat, 12 Sep 2020 19:21:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregoire@gentil.com>) id 1kHB5M-0001e3-QQ
 for linux-uvc-devel@lists.sourceforge.net; Sat, 12 Sep 2020 19:21:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:To:From:References:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6ZyAmDr23PBrtjIYKvP5KnmZe4pHpTvo/8Nr+u/8yb4=; b=abGAbCkGBEAibeAAoAQtY3TxEC
 btzjDDXu5lEXJO7LRWyVi09QWPi04Jdt4d/ptcYob6JD79+npuu3XpQ/Q3mAm2MGmx/ecH465la1o
 FfIUsg8L55VpePMZmM8rs05Iw0VFY+VCn8AHwHm5sacDLGROZPhUo348WqXc7IFostXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:To:From:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6ZyAmDr23PBrtjIYKvP5KnmZe4pHpTvo/8Nr+u/8yb4=; b=mzNhJ/FBaz1McRAoeHktmhonma
 07SSIBWm5IQ9EKyeKLLwD8hS4VFy1PSAtksF1A9+ZoI3nwxC7Oq6l0VFdoq5Zgf6jhut5KHRnzitO
 GC5oqS60S0oPAlmi3zn9l64+rDrNQKF94O2dp2z+jKUF35/aauRv0eZtg3ZUd84jM8ag=;
Received: from server139-1.web-hosting.com ([104.219.248.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHB5H-006cXh-V8
 for linux-uvc-devel@lists.sourceforge.net; Sat, 12 Sep 2020 19:21:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gentil.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:To:From:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6ZyAmDr23PBrtjIYKvP5KnmZe4pHpTvo/8Nr+u/8yb4=; b=qxLQz0+fT8Nr0eJpzyVPZkj1I2
 uV9eDqrrCbJhZQTMObWkFwrZ5kf8Gk8hk2dn9/OOnFJ22yLfCquRNlJu08VOgzL07Cxg+h/c/e+dj
 ZWhgSKtEt0jbtvsup2bGxt7hRg3ESsQx1hu354ADAfJRM3FS0EzOG38Rw6qpdojrfmALj595S2T/1
 1N3p7aRlFm0AQJITmT7a18ayJaTn50k5rT+vDMu4itS8nJAdtLhEDVStczmfm4YbkRFeZmBx3urxY
 1X+y56oj9nk2DXeCGXOF5y7ucO0bAALTFlaFl3HPwkMUH/7N6u/QqAU1gCXGhS/MLtcn03bGL6uyr
 hm/3Ynew==;
Received: from [98.207.153.78] (port=37488 helo=[192.168.10.20])
 by server139.web-hosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <gregoire@gentil.com>) id 1kHAR6-003CM2-QN
 for linux-uvc-devel@lists.sourceforge.net; Sat, 12 Sep 2020 14:39:49 -0400
References: <35383df2-0ab3-e437-993d-0243bc663994@gentil.com>
From: Gregoire Gentil <gregoire@gentil.com>
Organization: Gregoire Gentil
To: linux-uvc-devel@lists.sourceforge.net
X-Forwarded-Message-Id: <35383df2-0ab3-e437-993d-0243bc663994@gentil.com>
Message-ID: <7399d283-0876-df32-b86c-e46f5776a56d@gentil.com>
Date: Sat, 12 Sep 2020 11:39:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <35383df2-0ab3-e437-993d-0243bc663994@gentil.com>
Content-Language: en-US
X-OutGoing-Spam-Status: No, score=-0.2
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
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: stackoverflow.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kHB5H-006cXh-V8
Subject: [linux-uvc-devel] Dino-lite microscope camera LED
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

SGVsbG8sCgpJIGhhdmUgYSBhIERpbm8gbGl0ZSBtaWNyb3Njb3BlIGNhbWVyYSAoQU0zMTEzVCku
IEknbSB0cnlpbmcgdG8gdHVybiBvbiAKdGhlIExFRCBvbiBteSBMaW51eCBQQyBydW5uaW5nIGtl
cm5lbCA1LjQuMC00Ny4KCk9uIGEgc2lkZSBub3RlLCB0aGVyZSBpcyBhIGJ1dHRvbiBvbiB0aGF0
IGNhbWVyYSwgd2h5IHRoZSBmLi4uIHRoZSAKY3JlYXRvcnMgYXJlbid0IHVzaW5nIGEgcHJlc3Mg
b24gdGhhdCBidXR0b24gdG8gdHVybiBvbi9vZmYgdGhlIGxlZD8gClNlcmlvdXNseT8hPwoKQW55
d2F5LCBJIGhhdmUgcmVhZCB0aGlzIDIwMTcgdGhyZWFkOiAKaHR0cHM6Ly9zb3VyY2Vmb3JnZS5u
ZXQvcC9saW51eC11dmMvbWFpbG1hbi9tZXNzYWdlLzM1OTE5OTcxLwoKSSBoYXZlIHRyaWVkIHRv
IHdyaXRlIGEgYyBhcHBsaWNhdGlvbiB0byBhdm9pZCBhbnkga2VybmVsIGhhY2tpbmcgYXMgCmV4
cGxhaW5lZCBoZXJlOiAKaHR0cHM6Ly9zdGFja292ZXJmbG93LmNvbS9xdWVzdGlvbnMvNjM4NDE0
MzEvbGlidXNiLWVycm9yLXdoZW4tZG9pbmctbGlidXNiLWNvbnRyb2wtdHJhbnNmZXIKCkFueSBj
b21tZW50IG9uIHRoYXQgcXVlc3Rpb24gd291bGQgYmUgdXNlZnVsLgoKVGhlbiwgSSBoYXZlIHN0
YXJ0ZWQgdG8gaGFjayB0aGUgdXZjIGRyaXZlciB3aXRoIHRoZSBwYXRjaCBsaXN0ZWQgb24gdGhl
IApvcmlnaW5hbCB0aHJlYWQuCgpFdmVuIGFmdGVyIHBhdGNoaW5nLCBJIHN0aWxsIGdldDoKCnJv
b3RAeW9nYTp+IyB1dmNkeW5jdHJsIC1TIDQ6MyA4MDAxZjEKQXNzdW1pbmcgaGV4IHZhbHVlIChi
YXNlIDE2KQpxdWVyeSBjb250cm9sIHNpemUgb2YgOiAzCnF1ZXJ5IGNvbnRyb2wgZmxhZ3Mgb2Y6
IDB4MwpxdWVyeSBtaW5pbXVtIHZhbHVlIG9mOiAoTEUpMHgwMDAwMDAgIChCRSkweDAwMDAwMApx
dWVyeSBtYXhpbXVtIHZhbHVlIG9mOiAoTEUpMHhmZmZmZmYgIChCRSkweGZmZmZmZgpxdWVyeSBk
ZWZhdWx0IHZhbHVlIG9mOiAoTEUpMHgwMDAwMDAgIChCRSkweDAwMDAwMApxdWVyeSBzdGVwIHNp
emUgb2YgICAgOiAoTEUpMHgwMTAwMDAgIChCRSkweDAwMDAwMQpFUlJPUjogVW5hYmxlIHRvIHNl
dCB0aGUgY29udHJvbCB2YWx1ZTogQSBWaWRlbzRMaW51eDIgQVBJIGNhbGwgcmV0dXJuZWQgCmFu
IHVuZXhwZWN0ZWQgZXJyb3IgMzIuIChDb2RlOiAxMikKCnJvb3RAeW9nYTp+IyBkbWVzZyAtYwpb
IDU0NDcuODUyNTI3XSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIHV2
Y3ZpZGVvClsgNTQ0Ny44NTI1MjhdIFVTQiBWaWRlbyBDbGFzcyBkcml2ZXIgKDEuMS4xKQpbIDU0
NTUuMDk2MjU3XSBGaXhpbmcgVVNCIGExNjg6MDcxMCA0LzMgR0VUX0xFTjogMTEgLT4gMwpbIDU0
NTUuMDk4NDkyXSBGaXhpbmcgVVNCIGExNjg6MDcxMCA0LzMgR0VUX0xFTjogMTEgLT4gMwpbIDU0
NTUuMTA0MTMzXSB1dmN2aWRlbzogRmFpbGVkIHRvIHF1ZXJ5IChTRVRfQ1VSKSBVVkMgY29udHJv
bCAzIG9uIHVuaXQgCjQ6IC0zMiAoZXhwLiAzKS4KClRoZSB1dmMga2VybmVsIGNvZGUgaGFzIGV2
b2x2ZWQgYSBsaXR0bGUgYml0IHNpbmNlIHRoZSAyMDE3IHRocmVhZC4gTXkgCmtlcm5lbCBjb2Rl
IGxvb2tzIGxpa2UgdGhpczoKCgoKc3RhdGljIHZvaWQgdXZjX2ZpeHVwX3F1ZXJ5X2N0cmxfbGVu
KGNvbnN0IHN0cnVjdCB1dmNfZGV2aWNlICpkZXYsIF9fdTggCnVuaXQsCiAgICAgICAgX191OCBj
cywgdm9pZCAqZGF0YSkKewogICAgICAgIHN0cnVjdCB1dmNfY3RybF9maXh1cCB7CiAgICAgICAg
ICAgICAgICBzdHJ1Y3QgdXNiX2RldmljZV9pZCBpZDsKICAgICAgICAgICAgICAgIHU4IHVuaXQ7
CiAgICAgICAgICAgICAgICB1OCBzZWxlY3RvcjsKICAgICAgICAgICAgICAgIHUxNiBsZW47CiAg
ICAgICAgfTsKCiAgICAgICAgc3RhdGljIGNvbnN0IHN0cnVjdCB1dmNfY3RybF9maXh1cCBmaXh1
cHNbXSA9IHsKICAgICAgICAgICAgICAgICB7IHsgVVNCX0RFVklDRSgweGExNjgsIDB4MDcxMCkg
fSwgNCwgMywgMyB9LC8vSXMgdGhpcyA0IAozIDM/Pz8/Pz8KICAgICAgICB9OwoKICAgICAgICB1
bnNpZ25lZCBpbnQgaTsKCiAgICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoZml4dXBz
KTsgKytpKSB7CiAgICAgICAgICAgICAgICBpZiAoIXVzYl9tYXRjaF9vbmVfaWQoZGV2LT5pbnRm
LCAmZml4dXBzW2ldLmlkKSkKICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7CgoJCS8v
L0xldCdzIGZvcmNlIHRoZSBoYWNraW5nID8/Pz8/Pz8/PwogICAgICAgICAgICAgICAgIC8vaWYg
KCEoZml4dXBzW2ldLnVuaXQgPT0gdW5pdCAmJiBmaXh1cHNbaV0uc2VsZWN0b3IgPT0gCmNzKSkK
ICAgICAgICAgICAgICAgICAgICAgICAgLy9jb250aW51ZTsKCiAgICAgICAgICAgICAgICBwcmlu
dGsoCiAgICAgICAgICAgICAgICAgICAgICAgICAgIkZpeGluZyBVU0IgJTA0eDolMDR4ICV1LyV1
IEdFVF9MRU46ICV1IC0+ICV1IiwKICAgICAgICAgICAgICAgICAgICAgICAgICBmaXh1cHNbaV0u
aWQuaWRWZW5kb3IsIGZpeHVwc1tpXS5pZC5pZFByb2R1Y3QsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgdW5pdCwgY3MsCiAgICAgICAgICAgICAgICAgICAgICAgICAgbGUxNl90b19jcHVwKChf
X2xlMTYgKilkYXRhKSwgZml4dXBzW2ldLmxlbik7CiAgICAgICAgICAgICAgICAqKChfX2xlMTYg
KilkYXRhKSA9IGNwdV90b19sZTE2KGZpeHVwc1tpXS5sZW4pOwogICAgICAgICAgICAgICAgYnJl
YWs7CiAgICAgICAgfQp9CgoKCmludCB1dmNfcXVlcnlfY3RybChzdHJ1Y3QgdXZjX2RldmljZSAq
ZGV2LCB1OCBxdWVyeSwgdTggdW5pdCwKCQkJdTggaW50Zm51bSwgdTggY3MsIHZvaWQgKmRhdGEs
IHUxNiBzaXplKQp7CglpbnQgcmV0OwoJdTggZXJyb3I7Cgl1OCB0bXA7CgoKCXJldCA9IF9fdXZj
X3F1ZXJ5X2N0cmwoZGV2LCBxdWVyeSwgdW5pdCwgaW50Zm51bSwgY3MsIGRhdGEsIHNpemUsCgkJ
CQlVVkNfQ1RSTF9DT05UUk9MX1RJTUVPVVQpOwoKCWlmIChxdWVyeSA9PSBVVkNfR0VUX0xFTiAm
JiBzaXplID09IDIpIHsKCQl1dmNfZml4dXBfcXVlcnlfY3RybF9sZW4oZGV2LCB1bml0LCBjcywg
ZGF0YSk7CgkJcmV0dXJuIDA7Ly9TaG91bGQgSSBmb3JjZSByZXR1cm5pbmcgc3VjZXNzPz8/Pz8K
fQoKCWlmIChsaWtlbHkocmV0ID09IHNpemUpKQoJCXJldHVybiAwOwoKCXV2Y19wcmludGsoS0VS
Tl9FUlIsCgkJICAgIkZhaWxlZCB0byBxdWVyeSAoJXMpIFVWQyBjb250cm9sICV1IG9uIHVuaXQg
JXU6ICVkIChleHAuICV1KS5cbiIsCgkJICAgdXZjX3F1ZXJ5X25hbWUocXVlcnkpLCBjcywgdW5p
dCwgcmV0LCBzaXplKTsKCgpDYW4gYW55b25lIHByb3ZpZGUgc29tZSBoZWxwIG9yIGRpcmVjdGlv
biB0byBtYWtlIHRoaXMgd29yaz8gTWFueSB0aGFua3MgCmluIGFkdmFuY2UsCgpHcsOpZ29pcmUK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC11
dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtdXZj
LWRldmVsCg==
