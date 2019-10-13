Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A95D54C3
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 13 Oct 2019 08:07:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iJX2Z-00086Q-Vv; Sun, 13 Oct 2019 06:07:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <travisharrisonyeah@gmail.com>) id 1iJX2Z-0007zj-0Y
 for linux-uvc-devel@lists.sourceforge.net; Sun, 13 Oct 2019 06:07:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9dkGflL4CMDQqdmNuRElnx+AY1J34A5zlvbubik3lOY=; b=jIaE/xIeV340UGHad8DGKhUB0A
 PcUxBSucq3c4Y/0pDzuj7CGCFvM6owpMPkleyMvI6rPZ0OUPSF9aWZPHvAAyReqJNp95dp2qi5haO
 vCciftxuicpoEosNMUFcjffmq5lwszquU5VH/0jk83wh2dkNj7QCIwqEUJsGhVkwE9Dg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9dkGflL4CMDQqdmNuRElnx+AY1J34A5zlvbubik3lOY=; b=d
 4HsDKllusFGZ295SKUpMv60L3ozBmhuL2y4s8PV69VNaKKLTOTq2VRhaKsJmNZW1Lzz41uBr3DvYE
 iQAEa0DbGyQwFTY9tkWFoUBBhU4+mI8SPPHN4yYVM542nHzSKJ/nxTH7upUfSo7yF4DGnBrX0ZS7g
 GCB9k+LSeLHl/vg4=;
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iJX2X-007cYG-Hq
 for linux-uvc-devel@lists.sourceforge.net; Sun, 13 Oct 2019 06:07:38 +0000
Received: by mail-io1-f48.google.com with SMTP id q10so30264953iop.2
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat, 12 Oct 2019 23:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9dkGflL4CMDQqdmNuRElnx+AY1J34A5zlvbubik3lOY=;
 b=DSM0WmnE2y54B5gnolD0kRB7sBplFOWh5eJoh3PauN3bNi9Q6651otF1LEKa3oC81m
 pKJZfLzGaM2y9D1afyoZ9Zn30K/hA1Gr+rGYnCGH1+3ALh44WJyRK6vJRp1c2tUb7x/M
 tzQo5j9WDeaEMxLjKn/q8xohB2hztrR8rnHs/BReUFbKmJhpCKo5BbPYEIS5FOFo11V0
 IPgT62kI3lCNWDli7eEj1iFYu8SMig6s4h05zJL45AbaZ/BOl5KLbLpTDTSPe/N2wD5w
 whfieVZQ8M5wtpbPl9Fa/ApuGuhUFqn2IO1y27lpGnDzI1PGrpjcftOdKaGvr9QRwBv8
 PDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9dkGflL4CMDQqdmNuRElnx+AY1J34A5zlvbubik3lOY=;
 b=Jx0UYd6Vlgcn86rRotUDavs1jzD2aFZ4zG265oXq99MvSKYalLJW/O1yfw95+K/9y1
 TIwfxMTGcp1qVt0WM9wmfzSDOF68QJC2IsdncX01dYj8yiURfaQ4DQqZmZCEQsXgv/Y2
 oDzt3grulU8biw/ve4XOuTNRMfYt40w+XadqWseGwsPatJbXslUON3bt0Mx0ia554xD8
 FTbULLvQV0lnHbPMujpC76HSM5b1aJhbanallOHc9NQF7XsTqHp3jm6Z1VryEehlodR1
 VBaiKb+i+3f/fXHPwihkwGIzYhs0KPgEsIKQLqs9gQFBTTy3A5OJesuDf2lDZ/tRagE7
 Mn6A==
X-Gm-Message-State: APjAAAWhbMjGI2zIKBF6veLBBB9D5XjYTUavDEjnuhgRRUFqNExdIdhV
 fWeT5h9FzghxRhOmWa8/vh53IueaYWjthkI65zUi8E5OYG0=
X-Google-Smtp-Source: APXvYqyhavE9nhCVCD0PYfbC0T3bAwbdsuWXDglvmYLtb7OOogFxOXxDbqu3YiEVVJDAQ3kiDvCOZLp8JKESFUrp8ws=
X-Received: by 2002:a6b:730f:: with SMTP id e15mr13080322ioh.279.1570946851527; 
 Sat, 12 Oct 2019 23:07:31 -0700 (PDT)
MIME-Version: 1.0
From: Travis Harrison <travisharrisonyeah@gmail.com>
Date: Sun, 13 Oct 2019 01:07:20 -0500
Message-ID: <CAE1VX2TUq7EMKKmJ3VMiZgmx3fMYWLCAGMMmY7zNxUo=Xmz1DA@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (travisharrisonyeah[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iJX2X-007cYG-Hq
Subject: [linux-uvc-devel] Update supported device list
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
Content-Type: multipart/mixed; boundary="===============4787086846579554540=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============4787086846579554540==
Content-Type: multipart/alternative; boundary="0000000000000be04e0594c49132"

--0000000000000be04e0594c49132
Content-Type: text/plain; charset="UTF-8"

Hi,

The following webcam information can be added to the supported devices list.

Device ID - 046d:082d
Name - Logitech HD Pro Webcam C920
Manufacturer - Logitech
Status - Device works

Thanks,
Travis

--0000000000000be04e0594c49132
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><div><br></div><div>The following webcam=
 information can be added to the supported devices list.</div><div><br></di=
v>Device ID - 046d:082d<div>Name - Logitech HD Pro Webcam C920</div><div>Ma=
nufacturer - Logitech</div><div>Status - Device works</div><div><br></div><=
div>Thanks,</div><div>Travis</div></div>

--0000000000000be04e0594c49132--


--===============4787086846579554540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4787086846579554540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============4787086846579554540==--

