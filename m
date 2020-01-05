Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFF5130A57
	for <lists+linux-uvc-devel@lfdr.de>; Sun,  5 Jan 2020 23:50:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1ioEjM-0006Eb-KH; Sun, 05 Jan 2020 22:50:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mandasx@gmail.com>) id 1ioEjL-0006EO-D1
 for linux-uvc-devel@lists.sourceforge.net; Sun, 05 Jan 2020 22:50:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C4HsY/4EQfagAUj66fIgk/gqoy9OYaF2mlrPd+K+QDQ=; b=mZmgSuKyLA9nNqyeeb1yA13J8f
 Njb/+5Aku/504pbspRZs4bvIrJ8hWunnUu3FJMFAlzcfuTTRCKTeEKExH0Wt/1RMAecUhSCOAmS5G
 W06q7Kbon5yhZOgXremeh6ldlFu4YbgqfdjKhe9Agmb52fQAhcRKtf9+gVYVVe1mq5AM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=C4HsY/4EQfagAUj66fIgk/gqoy9OYaF2mlrPd+K+QDQ=; b=R
 LDi7O0yLcCVmzyYKVm5nC4xdwNlMafbc+79BlKQMMuejR/LvsKpjWmWoe0e2FMcslbM/pAzAZiaNZ
 Q/Vkn9dhjgeuHL0jzGU4sWvjLtV1R2B8H3WMYzum5yYd2cQtR4MhE9pprdGYjyYmILyVuvlelDg+V
 ZYiUOfKmvOeM+SBM=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ioEjE-00AasK-Ph
 for linux-uvc-devel@lists.sourceforge.net; Sun, 05 Jan 2020 22:50:43 +0000
Received: by mail-qt1-f182.google.com with SMTP id n15so41179643qtp.5
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun, 05 Jan 2020 14:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=C4HsY/4EQfagAUj66fIgk/gqoy9OYaF2mlrPd+K+QDQ=;
 b=PgD1kCBq+NsnD8DaGyY5VrmN4QqXHnYRvYKJIvT8nBlvi21Y+ouLYGe2fj3tB+xuPy
 bTvZ18KBXs3NT8kLTLbl2EoVPELA/i7g+bCAdmoIodOx1a8PirhQkT5+qO0U2UjTToxv
 /XhNZ31L60SeNF3u+JDtdri3W7csXe4uuGZ8xH2xRnJeJ14oRtaDQzX6ulZ9LGNQrwgm
 9X5DKrlQIGotCssIcaoq7UToKlqJXGrnvQ/JNqOSfGo7sO2MxEdDFXp6Vw3++dUqUEHC
 Q+pHyam9WYlWM1ByVua38RXWYSM49hMmk81hgf9n8a+EbCQyA5gz30UJMOBfeQdqXCfq
 WL6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=C4HsY/4EQfagAUj66fIgk/gqoy9OYaF2mlrPd+K+QDQ=;
 b=pkVkrWBNjUDZPBicGeInQwSkFPSJ8EFYI5ICgT6ljPt+ETBV4K5yIAPQ0dm3lQkwJW
 1J6uNFE0q2Fal0pA4oBy4/gdXUczmBj4u/R9oG8ZVdaSbfUISVizSj5IOJFSAw5YEBFd
 E86/sHhomLlYv9aLPXGS2UCvdLZR1THaY9CfXbaO9rjoNeiUWkoTKgTxpJ/aQlSZYdYI
 PYB5c0lDhce/srLxSnOuDoEySEO5/YMMpr3cJ4lexLBI62+PaGn9HSi9BcV8edK5WBdS
 kTyVLYfSQYLtWIDy+5nv6TSFkmL6Fw0uRUJgWZAEVlPNjvOTCevFX1JPxoUSX0EmWXB5
 766Q==
X-Gm-Message-State: APjAAAW36CX76yGhs5yk77aipE2/m68PbiAYkwY7ictzooE6IacmoACU
 C+FL/eh1oeXz3uoAeW0dR0ilE7FZa53LAo5mGnAoBew2
X-Google-Smtp-Source: APXvYqwUmxAdWes9BxGNxpd5cjbCiAKK3TirBfitMYbGEq/qT3chXk8jVrVxfrDmbpUY5utu6tfxOkOFKO5369haqiA=
X-Received: by 2002:ac8:7297:: with SMTP id v23mr72123242qto.135.1578264630622; 
 Sun, 05 Jan 2020 14:50:30 -0800 (PST)
MIME-Version: 1.0
From: Dimitris Mandalidis <mandasx@gmail.com>
Date: Mon, 6 Jan 2020 00:50:19 +0200
Message-ID: <CAE3YyDTLnY1Ybd9Cqjgo8fLAJtKW06uUQHSq==bfs9AwPchHLQ@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mandasx[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ioEjE-00AasK-Ph
Subject: [linux-uvc-devel] 05c8:0374 webcam support + problem
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
Content-Type: multipart/mixed; boundary="===============6415368344307765220=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============6415368344307765220==
Content-Type: multipart/alternative; boundary="000000000000ab7c3c059b6c5eeb"

--000000000000ab7c3c059b6c5eeb
Content-Type: text/plain; charset="UTF-8"

Hi all,

This is to report that the:

"ID 05c8:0374 Cheng Uei Precision Industry Co., Ltd (Foxlink) HP HD Webcam"
(lsusb output)

is a (somehow) supported from the uvc driver. This camera is used in HP
ZBook 17
G2 laptops (at least)

Here is the output of "dmesg | grep -i uvc" (from a session where the webcam
works):

[    8.705459] uvcvideo: Found UVC 1.00 device HP HD Webcam (05c8:0374)
[    8.726559] uvcvideo 2-7:1.0: Entity type for entity Extension 4 was not
initialized!
[    8.726561] uvcvideo 2-7:1.0: Entity type for entity Extension 3 was not
initialized!
[    8.726562] uvcvideo 2-7:1.0: Entity type for entity Processing 2 was
not initialized!
[    8.726562] uvcvideo 2-7:1.0: Entity type for entity Camera 1 was not
initialized!
[    8.726722] usbcore: registered new interface driver uvcvideo
[    9.922433] uvcvideo: Found UVC 1.00 device HP HD Webcam (05c8:0374)
[    9.922758] uvcvideo: Failed to query (GET_INFO) UVC control 2 on unit
1: -71 (exp. 1).
[    9.923039] uvcvideo: Failed to query (GET_INFO) UVC control 3 on unit
1: -71 (exp. 1).
[    9.923119] uvcvideo: Failed to query (GET_INFO) UVC control 4 on unit
1: -71 (exp. 1).
[    9.923274] uvcvideo: Failed to query (GET_INFO) UVC control 2 on unit
2: -71 (exp. 1).
[    9.923360] uvcvideo: Failed to query (GET_INFO) UVC control 3 on unit
2: -71 (exp. 1).
[    9.923752] uvcvideo: Failed to query (GET_INFO) UVC control 6 on unit
2: -71 (exp. 1).
[    9.923967] uvcvideo: Failed to query (GET_INFO) UVC control 7 on unit
2: -71 (exp. 1).
[    9.924053] uvcvideo: Failed to query (GET_INFO) UVC control 8 on unit
2: -71 (exp. 1).
[    9.924158] uvcvideo: Failed to query (GET_INFO) UVC control 9 on unit
2: -71 (exp. 1).
[   10.432245] uvcvideo: Failed to query (GET_INFO) UVC control 10 on unit
2: -110 (exp. 1).
[   10.944207] uvcvideo: Failed to query (GET_INFO) UVC control 1 on unit
2: -110 (exp. 1).
[   11.456224] uvcvideo: Failed to query (GET_INFO) UVC control 5 on unit
2: -110 (exp. 1).
[   11.968248] uvcvideo: Failed to query (GET_INFO) UVC control 11 on unit
2: -110 (exp. 1).
[   22.208370] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported.
Enabling workaround.
[   27.328440] uvcvideo: Failed to query (129) UVC probe control : -110
(exp. 26).
[   27.328575] uvcvideo: Failed to initialize the device (-5).
[   27.905201] uvcvideo: Found UVC 1.00 device HP HD Webcam (05c8:0374)
[   27.926891] uvcvideo 2-7:1.0: Entity type for entity Extension 4 was not
initialized!
[   27.926898] uvcvideo 2-7:1.0: Entity type for entity Extension 3 was not
initialized!
[   27.926902] uvcvideo 2-7:1.0: Entity type for entity Processing 2 was
not initialized!
[   27.926905] uvcvideo 2-7:1.0: Entity type for entity Camera 1 was not
initialized!

This is the happy (and rare) path; under circumstances I 'm not still able
to
reproduce (usually after a power-related event, suspend to RAM, shutdown
etc.)
the camera stops working, it isn't listed in libusb and "dmesg | grep -i
usb"
doesn't report anything related. When this happens, camera doesn't appear
neither on Windows and the only way I found to resurrect it is to shutdown
the
laptop and leave it off for a while.

This is probably a power-related problem as it seems like the device isn't
powered up at all in some cases, but I was wondering if someone has ever
spotted
something similar.

Dimitris

--000000000000ab7c3c059b6c5eeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>This is to report that the:<br><br>&quot;ID=
 05c8:0374 Cheng Uei Precision Industry Co., Ltd (Foxlink) HP HD Webcam&quo=
t;<br>(lsusb output)<br><br>is a (somehow) supported from the uvc driver. T=
his camera is used in HP ZBook 17<br>G2 laptops (at least)<br><br>Here is t=
he output of &quot;dmesg | grep -i uvc&quot; (from a session where the webc=
am<br>works):<br><br>[ =C2=A0 =C2=A08.705459] uvcvideo: Found UVC 1.00 devi=
ce HP HD Webcam (05c8:0374)<br>[ =C2=A0 =C2=A08.726559] uvcvideo 2-7:1.0: E=
ntity type for entity Extension 4 was not initialized!<br>[ =C2=A0 =C2=A08.=
726561] uvcvideo 2-7:1.0: Entity type for entity Extension 3 was not initia=
lized!<br>[ =C2=A0 =C2=A08.726562] uvcvideo 2-7:1.0: Entity type for entity=
 Processing 2 was not initialized!<br>[ =C2=A0 =C2=A08.726562] uvcvideo 2-7=
:1.0: Entity type for entity Camera 1 was not initialized!<br>[ =C2=A0 =C2=
=A08.726722] usbcore: registered new interface driver uvcvideo<br>[ =C2=A0 =
=C2=A09.922433] uvcvideo: Found UVC 1.00 device HP HD Webcam (05c8:0374)<br=
>[ =C2=A0 =C2=A09.922758] uvcvideo: Failed to query (GET_INFO) UVC control =
2 on unit 1: -71 (exp. 1).<br>[ =C2=A0 =C2=A09.923039] uvcvideo: Failed to =
query (GET_INFO) UVC control 3 on unit 1: -71 (exp. 1).<br>[ =C2=A0 =C2=A09=
.923119] uvcvideo: Failed to query (GET_INFO) UVC control 4 on unit 1: -71 =
(exp. 1).<br>[ =C2=A0 =C2=A09.923274] uvcvideo: Failed to query (GET_INFO) =
UVC control 2 on unit 2: -71 (exp. 1).<br>[ =C2=A0 =C2=A09.923360] uvcvideo=
: Failed to query (GET_INFO) UVC control 3 on unit 2: -71 (exp. 1).<br>[ =
=C2=A0 =C2=A09.923752] uvcvideo: Failed to query (GET_INFO) UVC control 6 o=
n unit 2: -71 (exp. 1).<br>[ =C2=A0 =C2=A09.923967] uvcvideo: Failed to que=
ry (GET_INFO) UVC control 7 on unit 2: -71 (exp. 1).<br>[ =C2=A0 =C2=A09.92=
4053] uvcvideo: Failed to query (GET_INFO) UVC control 8 on unit 2: -71 (ex=
p. 1).<br>[ =C2=A0 =C2=A09.924158] uvcvideo: Failed to query (GET_INFO) UVC=
 control 9 on unit 2: -71 (exp. 1).<br>[ =C2=A0 10.432245] uvcvideo: Failed=
 to query (GET_INFO) UVC control 10 on unit 2: -110 (exp. 1).<br>[ =C2=A0 1=
0.944207] uvcvideo: Failed to query (GET_INFO) UVC control 1 on unit 2: -11=
0 (exp. 1).<br>[ =C2=A0 11.456224] uvcvideo: Failed to query (GET_INFO) UVC=
 control 5 on unit 2: -110 (exp. 1).<br>[ =C2=A0 11.968248] uvcvideo: Faile=
d to query (GET_INFO) UVC control 11 on unit 2: -110 (exp. 1).<br>[ =C2=A0 =
22.208370] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Ena=
bling workaround.<br>[ =C2=A0 27.328440] uvcvideo: Failed to query (129) UV=
C probe control : -110 (exp. 26).<br>[ =C2=A0 27.328575] uvcvideo: Failed t=
o initialize the device (-5).<br>[ =C2=A0 27.905201] uvcvideo: Found UVC 1.=
00 device HP HD Webcam (05c8:0374)<br>[ =C2=A0 27.926891] uvcvideo 2-7:1.0:=
 Entity type for entity Extension 4 was not initialized!<br>[ =C2=A0 27.926=
898] uvcvideo 2-7:1.0: Entity type for entity Extension 3 was not initializ=
ed!<br>[ =C2=A0 27.926902] uvcvideo 2-7:1.0: Entity type for entity Process=
ing 2 was not initialized!<br>[ =C2=A0 27.926905] uvcvideo 2-7:1.0: Entity =
type for entity Camera 1 was not initialized!<br><br>This is the happy (and=
 rare) path; under circumstances I &#39;m not still able to<br>reproduce (u=
sually after a power-related event, suspend to RAM, shutdown etc.)<br>the c=
amera stops working, it isn&#39;t listed in libusb and &quot;dmesg | grep -=
i usb&quot;<br>doesn&#39;t report anything related. When this happens, came=
ra doesn&#39;t appear<br>neither on Windows and the only way I found to res=
urrect it is to shutdown the<br>laptop and leave it off for a while.<br><di=
v><br></div><div>This is probably a power-related problem as it seems like =
the device isn&#39;t<br>powered up at all in some cases, but I was wonderin=
g if someone has ever spotted<br>something similar.<br><br>Dimitris<br></di=
v></div>

--000000000000ab7c3c059b6c5eeb--


--===============6415368344307765220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6415368344307765220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6415368344307765220==--

