Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBA0732D6
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 24 Jul 2019 17:35:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hqJIQ-0006J5-Id; Wed, 24 Jul 2019 15:35:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <phlomos@gmail.com>) id 1hqJIP-0006Ig-Bv
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Jul 2019 15:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Mime-Version:To:Date:Message-Id:Subject:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=erh2ivnXdTNuHlMl45b0gmCfMksQtYYSEdk0dTXBgX8=; b=Hi8cTHOM3q0YXi1I6k9rSB4QGH
 YfW3Yye3zh6dYX9YStZj2MtktYZCp4y65Y1IIpKHId1JMRnyq9/A658KPq0MMOMkp8eTnzG1raOuo
 ADQyeStbEweszCTLdY0kNJQ7jkD0u+E80tYwUagv0tcalJUjbaCXy91OI7wNv9wp1zD0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:
 Content-Type:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=erh2ivnXdTNuHlMl45b0gmCfMksQtYYSEdk0dTXBgX8=; b=MoBsDQQt2UBeQbJBrf80TzovxD
 4LU6sRu5Iku4ozwJjXPCr/p9iKfB4L8sOapa6CuJLQji1pnU3d6zBBGJJ/Bz/bH3evozQC+TU2IdY
 VRJ/9Cxj3d74jhsROT0prxNn2uTJ2MupcWTaKv8PJITnA8VuZEyXpl/7fGv88bVJC0qo=;
Received: from mail-ed1-f44.google.com ([209.85.208.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqJIO-00GH9j-1j
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Jul 2019 15:35:13 +0000
Received: by mail-ed1-f44.google.com with SMTP id w20so47481849edd.2
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 24 Jul 2019 08:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:subject:message-id:date:to
 :mime-version; bh=erh2ivnXdTNuHlMl45b0gmCfMksQtYYSEdk0dTXBgX8=;
 b=tW8+GeGvD/0wEIbOH7rvRxAeiYJ5iLMQq6yg9HrKZnkk+PIEV5vmjmE8Gi0DYpVwlN
 3kTL5mQ8jJGWsh8BMRSzsSRJP4xc8MO2BzpNbR3dZxxhqkVl6JW0LnoBpqU9aOO4FeLC
 Q3fWj9W7CPqvJxrfTT/ZYdfNFBySdKHAYRTT4aGskOlktWra73wkqJkBxNW5akmJWc9P
 qASaACsz3ZnlExbJOETb4wjrtdi6yDUClnLEqtRIgpAiyrLjg1j0OhPJsg8XErBiTKzc
 PnPSuCTT9Qn/WjenvMKsGbtSjL85ieYbYDTkb6x8V3/O3AwP916mUY+LcYcl5RAIEfNQ
 77mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:subject
 :message-id:date:to:mime-version;
 bh=erh2ivnXdTNuHlMl45b0gmCfMksQtYYSEdk0dTXBgX8=;
 b=X5P/WTbJuV+oNOHXl305X182xCx8ywaE1LDWZ1TgBsxfTMizJOxAtdUQN5dKovEVSV
 CwOMjEA/uOjmkWtFwvDH1L0ZH329xend/+oMTIB0SAYbj/fJuMNQbUv6Vqjp+blDIXP5
 C+qxF91Pq60iGqCKOedeLTX80jYCKcHCJiQ0sMpwPpl959G8ckumjRHlCsf55OA/QFZb
 fXyjcFiR4STrpuHHT+D3I/CyuPEcK8reQkf2pheel3SEiaaswmf/6yx6hvEyHOCNsX8t
 qyrifunnZWX+a24GHPMWI7EgSK9pq6Qa8aFbuFox8XOuIAZvfR0XmfX1exDVmSv33Z3/
 vQGQ==
X-Gm-Message-State: APjAAAVk+465DOFrkDDWuWm1+cLtvsLXkZnIgsT8E/Wfu7W7s2HQ3NXg
 3xCG8ufTrodtVeoCDSUACKmGw5f79Ps=
X-Google-Smtp-Source: APXvYqxbC0iHVALzX9nzznQ1gnJu7T3+ZsKC6H28umKNQN7Mx2uGWogtk7nxdAFdOXHpoyY8E3tPow==
X-Received: by 2002:a50:8be8:: with SMTP id n37mr72025259edn.216.1563982505175; 
 Wed, 24 Jul 2019 08:35:05 -0700 (PDT)
Received: from cmumac2.unige.ch (cmumac2.unige.ch. [129.194.88.23])
 by smtp.gmail.com with ESMTPSA id a18sm6433516ejp.2.2019.07.24.08.35.03
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 08:35:04 -0700 (PDT)
From: =?utf-8?Q?Heiri_M=C3=BCller?= <phlomos@gmail.com>
X-Priority: 5
Message-Id: <4C450CB0-E2FB-4788-9E12-7808B0B2C237@gmail.com>
Date: Wed, 24 Jul 2019 17:35:03 +0200
To: linux-uvc-devel@lists.sourceforge.net
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
X-Mailer: Apple Mail (2.3445.104.11)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (phlomos[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqJIO-00GH9j-1j
Subject: [linux-uvc-devel] 0x5a3:0x9230: Resource unavailable
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

SGVsbG8sCgoKSSBib3VnaHQgc29tZSBDaGluYSBVU0IgMi4wIENhbWVyYSAoQVJDIEludGVybmF0
aW9uYWwsIFRyYW5zRGltZW5zaW9uLU5IIExMQyksIHRoYXQgc2F5cywgaXQgaGFzIFVWQyBzdXBw
b3J0LiBJdHMgVVNCIElEIGlzIDB4NWEzOjB4OTIzMC4KSSBhbSBvbiBhIFNNUCBEZWJpYW4gNC45
LjE2OCBrZXJuZWwuClRoZSBVVkMgZHJpdmVycyBzZWVtIHRvIGJlIGxvYWRlZDoKCnV2Y3ZpZGVv
ICAgICAgICAgICAgICAgOTAxMTIgIDEKdmlkZW9idWYyX3ZtYWxsb2MgICAgICAxNjM4NCAgMSB1
dmN2aWRlbwp2aWRlb2J1ZjJfdjRsMiAgICAgICAgIDI0NTc2ICAyIHV2Y3ZpZGVvLGN4MjM4ODUK
dmlkZW9idWYyX2NvcmUgICAgICAgICA0MDk2MCAgNCB1dmN2aWRlbyx2aWRlb2J1ZjJfZHZiLGN4
MjM4ODUsdmlkZW9idWYyX3Y0bDIKdmlkZW9kZXYgICAgICAgICAgICAgIDE4MDIyNCAgNyBjeDIz
NDF4LHV2Y3ZpZGVvLHY0bDJfY29tbW9uLHZpZGVvYnVmMl9jb3JlLGN4MjM4ODUsdmlkZW9idWYy
X3Y0bDIKbWVkaWEgICAgICAgICAgICAgICAgICA0MDk2MCAgMyB1dmN2aWRlbyx2aWRlb2Rldixz
aTIxNTcKdXNiY29yZSAgICAgICAgICAgICAgIDI1Mzk1MiAgNiB1dmN2aWRlbyxlaGNpX2hjZCx4
aGNpX3BjaSxidHVzYix4aGNpX2hjZCxlaGNpX3BjaQoKV2hlbiBJIHRyeSB0byBjYXB0dXJlIGFu
IGltYWdlIHdpdGggR3V2Y3ZpZXcsIHRoZSBsb2dzIHNheTogIlY0TDJfQ09SRTogQ291bGQgbm90
IGdyYWIgaW1hZ2UgKHNlbGVjdCB0aW1lb3V0KTogUmVzb3VyY2UgdGVtcG9yYXJpbHkgdW5hdmFp
bGFibGXigJ0uCkkgYW0gYSBjb21wbGV0ZSBuZXdiaWUgd2l0aCBjYW1lcmFzIG9uIExpbnV4LCBz
byBwbGVhc2UgZm9yZ2l2ZSwgaWYgdGhlIHNvbHV0aW9uIGlzIG9idmlvdXMuCgoKVGhhbmtzIGZv
ciB5b3VyIGhlbHAhCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXV2Yy1kZXZlbCBtYWlsaW5nIGxpc3QKTGludXgtdXZjLWRldmVsQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9saW51eC11dmMtZGV2ZWwK
