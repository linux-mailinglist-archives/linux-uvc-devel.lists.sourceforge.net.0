Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 763DD214C4E
	for <lists+linux-uvc-devel@lfdr.de>; Sun,  5 Jul 2020 14:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:MIME-Version:Date:Message-ID:To:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=5EW9Frur0VJmOKxw+jLyV/SIgWKWbtDZuq4/12cDJow=; b=LlZlqXaPO1eBBMmhbwb+u9ITA
	Di2/c8stSorxkA2WUARc93mRzH54ukNP5lSkgY2qGKx9FPYcwZn9xC8iP7NRVCKLYBfZ2pgWe+Qzw
	5FF7axPnOsQIqQk63f33Km6AcRv7fv2iE8QS6qE7EUk6aFHCcPGr1u35lB5UUeHiE1sj8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1js3KQ-0006CK-35; Sun, 05 Jul 2020 12:01:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <iapellaniz@yahoo.es>) id 1js3KO-0006Bv-KB
 for linux-uvc-devel@lists.sourceforge.net; Sun, 05 Jul 2020 12:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1i7o2obbindc0VYrqMHzPrgNHkvXoeIouRheFnrFPes=; b=J9oJYoCXFJFLcsPrprA9tSCcvO
 Cjk/t8ftRK0bqpdaHbqiHQyx2u9GUvI7DRBdmbYuDjJwofx96O2uSQIhQR9RaCWlXFC3osdGC3lbm
 AIxCgwwWEdADl9PJI+483wD94ysrKjQTGmvxWuizanvFiPCAosXXs4QoFfXU6Cnd17ls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1i7o2obbindc0VYrqMHzPrgNHkvXoeIouRheFnrFPes=; b=T
 cyIUVmHBkSvQxMtNrLQxMaI1wT1Ja4RPSL72aHxXpPsurIVb4wJZwNK56NPuCxOaZToovxL6KQFoF
 0AMH+xxVy38gtwr09W3d1z3zHPpCQ6pzBoHZ8o1BnsnFN2AhIuijkhl5WLJje8n9cehz5AAJg0rWm
 FxbeVY5GXfJxL8xE=;
Received: from sonic307-53.consmr.mail.ir2.yahoo.com ([87.248.110.30])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1js3KL-00BGDu-3T
 for linux-uvc-devel@lists.sourceforge.net; Sun, 05 Jul 2020 12:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
 t=1593950449; bh=1i7o2obbindc0VYrqMHzPrgNHkvXoeIouRheFnrFPes=;
 h=To:From:Subject:Date:References:From:Subject;
 b=mnR6Br3xzY8gWlsfp8sTcSY3gdjhIj17cS5mn5pDU23rLpD2IwkXDsJ/j4/ouu+KADwvqWFe8lHljiE/jH4s8t9BVTMWdjsaqyB7xupL/LoHfxsrDZ8neN3qzQ8t8JqJoijJlBuIfPKqZeQ8woeFBuVDpy99Am4CtMKild6zrEMS262chXCKO6w6OeWej7kuHj0/YhVl8gsBDMKN835JOnYOhIgluafyMpQZ7z6kbdOprd+818Nie8VYbIXIBMjamy93zCtFPpY8Ehno/L0fzaHWrq488p6bZf4GPnWpF27Gi4djKXW7IIw2N/D0XaHqvbVR1aKsJ6B5u3PdHFgYgg==
X-YMail-OSG: 7q8rjHUVM1kvig8UdpAUONeDOvxaQKrrs_3FYZIM2Z80nb2x0dlyMvUTq7TQP..
 iw72447VJJsPllvvjAIV17YttcHFJty8ZiRggt7FKh657KXOoD9T2xndYpCTgCOKjTJsdmKtVl6v
 9YbNPqM2A6sih2RNmC9Q2TZGymlkW1KvYjIoD.Hkz089yIDvY0hXgUAJZl7ZZK1AhaSZXNFicIPh
 xo4nJEYOup70F3_SkJn.zfMxXrigSu.aC8i3PDepxxI6YwyXoo9z6SZD9usvYBDCcrcZ9HsP4tXs
 dcrwX4NOsF7D78WpKB2434mf4pUS4NLHeHxT8hfm0wheh_hryAKuuHi5WC4uywnBu0sAROQAD_Md
 U6jYaKmoFoCkZzlo6c4NhWswehLcshdTykzvQCsatuZ85zCES.l40C4.saYdic6c8HG2U5L5FUpZ
 dpziJSZgCfesx0NWmkgWjlAOLg.4Fwv.QP7cQMDIC66AWm7MKmZKvKYtPggkBJ2d_CID4n4643He
 _H_Zl531W2YyyiyztpcIJLnYrfZ.p4mt8t9BHcAcHFBW8TqihC.pRfjLOUGPJz5re9LwWKs0SLh5
 qwkXeTt4h57kVPMYYOp8OPDR.ep9KRJcUO7uq8AfhRwNvLpU0vlGd2m8YQmBWgZdZxzPdwnHTMiR
 nLpJeS8Jlm5w6g0uL4ukkAW6KAdvWvgV33W6bzTbhdOTI3YzoDjjlNtfFHSOPNxg4WGp2Ig9LAWE
 v4r1BnAnGeFY1aIMVr1kGdDm4xOeMLJ85ZmwWEV.GsIHopRMxFX18JY.C_GorvqFHIZSL4BwmS9f
 EhH8jAC_6wCsudGwqoSOLBHq7R1VxLuIpMzSn25698ZOKUEu93Lb8A23nQIuiZfq4uNF6z.KidfG
 RWlpif1mQuGpVVBNHNjld9yF3JxANiHv8hnpIdvL34pJOCIhY4_7S8pWv477UWB5rCbWomkE4kMe
 dnqu7C5PkX4Sj8wsQFIaaHrov2Xg1Y1KsfgDYFnMfchCMW8HnL7VRJFcKzlcBoA.UdexPD85pBO.
 hObawBbUK.oqLTd2y9NHciqj.JCQDmx54LceGNYOEEX69Mxmr91HJ2PwXnkzKOYPkwy5ppPh0afY
 reSOVwhSt6pPWPHZu0zRt6zB.qs.plmHyLcVE84hCAZquQlgCeIozVp19G_jSEuhdqQ1w0j5voxV
 nzK9F87ef4GaAi6pzV56tWYNAWDKo_PVWVEsH03CAnZ55kzOVh2_v_9v1Un7Z3CW_XkCy5gxCB9Y
 nwdb.kruX7B3qaEsRZ10S2wHNl9UtXyhR3Ui7Bog.ihg9cSKGQj1QJg_4.MHhe81g3Ig.zXzjpPl
 _6okxFDCsjLvuN__V7MbFTfj8xpvWh0adT7nDXmAHNOx8njRTbgWtkmmCDSwmG0SHIlxSx2Lhv79
 gdy9ummXiNBbd_b9O
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.ir2.yahoo.com with HTTP; Sun, 5 Jul 2020 12:00:49 +0000
Received: by smtp431.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 8b2f296ec25dd1368512fe86ed454986; 
 Sun, 05 Jul 2020 12:00:46 +0000 (UTC)
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <4165d137-d97c-e153-b8f6-a91eab2fbc69@yahoo.es>
Date: Sun, 5 Jul 2020 14:00:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
References: <4165d137-d97c-e153-b8f6-a91eab2fbc69.ref@yahoo.es>
X-Mailer: WebService/1.1.16197 hermes_yahoo Apache-HttpAsyncClient/4.1.4
 (Java/11.0.7)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (iapellaniz[at]yahoo.es)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [87.248.110.30 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [87.248.110.30 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1js3KL-00BGDu-3T
Subject: [linux-uvc-devel] Device ID: 0c45:602a Meade ETX-105EC Camera
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
From: Ignacio Apellaniz Gonzalez via Linux-uvc-devel
 <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Ignacio Apellaniz Gonzalez <iapellaniz@yahoo.es>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

SG9sYToKCkxlcyBlc2NyaWJvIHBvcnF1ZSBlc3RveSBpbnRlbnRhbmRvIGhhY2VyIGZ1bmNpb25h
ciBsYSBjw6FtYXJhIGRlbCBhc3VudG8gCmVuIHVuIFVidW50dTE4LiBFc3RlIENDRCBmdW5jaW9u
YSBzaW4gcHJvYmxlbWFzIGVuIFVidW50dTE2LCBwZXJvIGVuIApVYnVudHUgMTggbG8gZGV0ZWN0
YSBjb21vIHRlY2xhZG8uCgpQb3IgZmF2b3IsIHNpIG5lY2VzaXRhbiBtw6FzIGluZm9ybWFjacOz
biBubyBkdWRlbiBlbiBjb250YWN0YXIgY29ubWlnbwoKU2FsdWRvcwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGlu
ZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtdXZjLWRldmVsCg==
