Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1246B10FBB5
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  3 Dec 2019 11:26:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1ic5Nz-0005y9-Og; Tue, 03 Dec 2019 10:26:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quwenruo.btrfs@gmx.com>) id 1ic5Nx-0005y0-BB
 for Linux-uvc-devel@lists.sourceforge.net; Tue, 03 Dec 2019 10:26:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:
 From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dh4gjgxLbyFbLlmvuwbpfXl0u4WQBb2teNdCCAC5Ueg=; b=LgD+fp+cqIkNVK/SDp5uBeiJlC
 a9eUexFww7jvLpn9B7m23acUepr+wKF+HClS0FTUPi6mC4geOOx0KAFME36WQLXTdFjQHxk1h4d2b
 FqnGg6aZXsYU6CAUOBFMpxNQ+WxaIbkR9ZrtTRz+mnNqLvCFsd3LRyRQxtwQvXIkIKvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Dh4gjgxLbyFbLlmvuwbpfXl0u4WQBb2teNdCCAC5Ueg=; b=m
 JVuI4CIyrfHKfGNfH6dzCml0Zfik0ahEPTrs3RT7FJ/JPgaIWVAaFwKOMwTS9ThFWZ5cBXjz/bCeF
 surx32mrichBRgxB14/rgSLU+oUPDtk63JmYa/IrR+Lr65dLBtaZc3Fjy/C1R04rDICozwl/oqghH
 ZMavttg+atsLATfI=;
Received: from mout.gmx.net ([212.227.15.19])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ic5Nu-005lsX-QB
 for Linux-uvc-devel@lists.sourceforge.net; Tue, 03 Dec 2019 10:26:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575368772;
 bh=E0Bs8VrmUEvwUpTiQyYLpPTgeS37MI9lT7EvSHD3KD0=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=e1TCHH6/vqix46OOi2SdMv227spPhROiTt+pqrROK9ofg8nWx44rf7mtHlaWXfMfr
 v5fTNuV9HxATAC5PQ4prM9IbnICquH9OXYe/mf5ESqUbbKFetFgaLrY/WF+iO1sUjd
 XWC0Sv1BAo3KL1aYoqHap8fDBOGB629w3c3xbIt8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [0.0.0.0] ([149.28.201.231]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MiJZE-1i5lVV3sJy-00fTsW for
 <Linux-uvc-devel@lists.sourceforge.net>; Tue, 03 Dec 2019 11:26:12 +0100
To: Linux-uvc-devel@lists.sourceforge.net
From: Qu Wenruo <quwenruo.btrfs@gmx.com>
Autocrypt: addr=quwenruo.btrfs@gmx.com; prefer-encrypt=mutual; keydata=
 mQENBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAG0IlF1IFdlbnJ1byA8cXV3ZW5ydW8uYnRyZnNAZ214LmNvbT6JAU4EEwEIADgCGwMFCwkI
 BwIGFQgJCgsCBBYCAwECHgECF4AWIQQt33LlpaVbqJ2qQuHCPZHzoSX+qAUCXZw1oQAKCRDC
 PZHzoSX+qCY6CACd+mWu3okGwRKXju6bou+7VkqCaHTdyXwWFTsr+/0ly5nUdDtT3yEVggPJ
 3VP70wjlrxUjNjFb6iIvGYxiPOrop1NGwGYvQktgRhaIhALG6rPoSSAhGNjwGVRw0km0PlIN
 D29BTj/lYEk+jVM1YL0QLgAE1AI3krihg/lp/fQT53wLhR8YZIF8ETXbClQG1vJ0cllPuEEv
 efKxRyiTSjB+PsozSvYWhXsPeJ+KKjFen7ebE5reQTPFzSHctCdPnoR/4jSPlnTlnEvLeqcD
 ZTuKfQe1gWrPeevQzgCtgBF/WjIOeJs41klnYzC3DymuQlmFubss0jShLOW8eSOOWhLRuQEN
 BFnVga8BCACqU+th4Esy/c8BnvliFAjAfpzhI1wH76FD1MJPmAhA3DnX5JDORcgaCbPEwhLj
 1xlwTgpeT+QfDmGJ5B5BlrrQFZVE1fChEjiJvyiSAO4yQPkrPVYTI7Xj34FnscPj/IrRUUka
 68MlHxPtFnAHr25VIuOS41lmYKYNwPNLRz9Ik6DmeTG3WJO2BQRNvXA0pXrJH1fNGSsRb+pK
 EKHKtL1803x71zQxCwLh+zLP1iXHVM5j8gX9zqupigQR/Cel2XPS44zWcDW8r7B0q1eW4Jrv
 0x19p4P923voqn+joIAostyNTUjCeSrUdKth9jcdlam9X2DziA/DHDFfS5eq4fEvABEBAAGJ
 ATwEGAEIACYCGwwWIQQt33LlpaVbqJ2qQuHCPZHzoSX+qAUCXZw1rgUJCWpOfwAKCRDCPZHz
 oSX+qFcEB/95cs8cM1OQdE/GgOfCGxwgckMeWyzOR7bkAWW0lDVp2hpgJuxBW/gyfmtBnUai
 fnggx3EE3ev8HTysZU9q0h+TJwwJKGv6sUc8qcTGFDtavnnl+r6xDUY7A6GvXEsSoCEEynby
 72byGeSovfq/4AWGNPBG1L61Exl+gbqfvbECP3ziXnob009+z9I4qXodHSYINfAkZkA523JG
 ap12LndJeLk3gfWNZfXEWyGnuciRGbqESkhIRav8ootsCIops/SqXm0/k+Kcl4gGUO/iD/T5
 oagaDh0QtOd8RWSMwLxwn8uIhpH84Q4X1LadJ5NCgGa6xPP5qqRuiC+9gZqbq4Nj
Message-ID: <836b72e6-6c56-a663-dff2-e1c084dd20bc@gmx.com>
Date: Tue, 3 Dec 2019 18:26:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:aAto4FW3mFGS0lY/Y3n0PHaxnKsuy4i4LzWDCppu19fpuPqfD8m
 5PzzMiNBSbrve7pDLi0e66SGxsXANY4tN9u/Dn2L6asrHRqi2JG7lNgFGamy6MrzkYbkIp5
 O1FsUPKu9DI0jjYsYY9IQYUkA0AvkXO6h6YXWspY2GdBlkUiKEfzBnKjUA2pZ4OBxD1YGzR
 C2yiHsUonNdeSHgKz5Qpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pF23OIWbZes=:+oNqedTJ/mIQ5dGhGcWGMT
 BhrcNJGKstcEfz5VbDkZaPfXwiEUbOeLuqN8jAX4vkKEZ9MkQ2W1IflsJsmFOXi8PMDmBkiZn
 2+81y3CmejSzM8IDP1tdAAmEYq2F/Kx6CkHZ4unIfNtz9uxWjWpFJrbqI2KWjTYw2gNqFwlhp
 W36VIYWTol5FPYToteQF8GMHnB+jCu0/GJ8UCWgl7YadgQauSWR40UoBri3AGcvBgqgCgZsmg
 /eGgqVOI8pyYo9VsLtxGxMenr5kXhebKoj7P1QP9OyWHzWgDan3qWqE8DWCrD4DkU1sbZw2J+
 kLqvfAb68ipUKqgeCKcF+x4kcgrTQpvCKUhKU5RqRCh56qv4uhxoZNkmEx20U0LGt9j/RFRuJ
 Q9SI6K2r/jzRTBBQHqbnvJeSsL128KBOYCl4Pd/BCX1fzKL/2AxxsK85h973JMj3v9t4zZL+j
 uc7Nxopal+Ydxt7tNNM1ByYoYmOlqyoR3Ws22Q1lznb9h5NbLR2bwt3b5B61aG/pj+cOVKk3P
 XsWiOI3RigmhC1iOBVsTr2FCzSQri3c0uU3lkmU0txCVrkZmA03sm/CAgA8X+D8REKXbOOVKz
 4nfJy081M2ImMRbCzj72yffGYT07d/tokDTWfKxXKW66OLcKhmfeBHXF9AR+QqNC/xKqbuBHo
 o+x88QaGNUBY4rWzVoepb6FOZMdHjJRDICtNxM4Q9UYbN2sWSTtrca+LUfcWqEoKWbk7nL/0L
 j6psqdJJBnXdMAsMTYYwKXnJ82Iy3LueHH4OKAjanwnICotkjowAoGXonaQiAYl7ibeAXJz9E
 CdwguGpnqyXrpLXUSv9l1lPaA6Kza3jhIEVATKNtp5eh7W6Jt06EzuVvLDNeiAPmbL+x4s82M
 fG9phHqKUl2KYQ6i+ZIHGwrmwJHt75/CIFj8MPjPW66TJSKwtJFf3UaYewkYTvZYBQpgRf2zJ
 Y1lHGyvIrrr3teN7UAu4SFHOm/TklgIshqaXK1WGeofQ/fPebMZtOHQ5rRJcax1PLWxlZAxCS
 VljRglgXkuhsUp9VCr9zArUZGNUBnQk7nYye5fqecN0NGImR+yKyZBgZxyd6zrvc/A/X5EIfB
 X2QZj/sN9WcYyWF9xPakkPirHyl3ry5pmpJV9vm3+TC6acEQsYNt1QO3IJVJ7NImAUG2uW53d
 zhnSPQ13NfDRQqjAvQntrGGBz6qSfZZMUWF6e3ILJE3m44g5vYSqO+t9ZxdZ1BEwlaUQ6Jo6g
 rmlvIwX0FEzKi7KkIkP30Fnto08HIJtL1its0QWCLdP2BsKzlv6G6YU0VuIY=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (quwenruo.btrfs[at]gmx.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ic5Nu-005lsX-QB
Subject: [linux-uvc-devel] UVC: unsupported device (Elgato HD60S+),
 Unknown video format 30313050-0000-0010-8000-00aa00389b71
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
Content-Type: multipart/mixed; boundary="===============6355978495134696320=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6355978495134696320==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="KOsyD3tah5XJdtxhcOJ44ZLzMK14q38KJ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--KOsyD3tah5XJdtxhcOJ44ZLzMK14q38KJ
Content-Type: multipart/mixed; boundary="39acKCRaOrl6WOwQMasHpDJRO8EynOtrL"

--39acKCRaOrl6WOwQMasHpDJRO8EynOtrL
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

Just got a new capture card, Elgato HD60S+, it supports UVC, but
obviously not supported under Linux (yet?).

For the dmesg:
usb 2-2: new SuperSpeed Gen 1 USB device number 3 using xhci_hcd
usb 2-2: LPM exit latency is zeroed, disabling LPM.
usb 2-2: New USB device found, idVendor=3D0fd9, idProduct=3D006a, bcdDevi=
ce=3D
0.00
usb 2-2: New USB device strings: Mfr=3D1, Product=3D2, SerialNumber=3D4
usb 2-2: Product: Game Capture HD60 S+
usb 2-2: Manufacturer: Elgato
usb 2-2: SerialNumber: 00031D15A8000
uvcvideo: Unknown video format 30313050-0000-0010-8000-00aa00389b71  <<<
uvcvideo: Found UVC 1.10 device Game Capture HD60 S+ (0fd9:006a)
uvcvideo 2-2:1.0: Entity type for entity Processing 2 was not initialized=
!
uvcvideo 2-2:1.0: Entity type for entity Input 1 was not initialized!
input: Game Capture HD60 S+: Game Capt as
/devices/pci0000:00/0000:00:01.3/0000:03:00.0/usb2/2-2/2-2:1.0/input/inpu=
t28
hid-generic 0003:0FD9:006A.0009: hiddev1,hidraw6: USB HID v1.01 Device
[Elgato Game Capture HD60 S+] on usb-0000:03:00.0-2/input2

Is that some proprietary format not supported?

Thanks,
Qu


--39acKCRaOrl6WOwQMasHpDJRO8EynOtrL--

--KOsyD3tah5XJdtxhcOJ44ZLzMK14q38KJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEELd9y5aWlW6idqkLhwj2R86El/qgFAl3mOEEACgkQwj2R86El
/qgDhAf/bK3qCCt29C4/4HRVtE6vFHyCxmjfdPYGbApkmUdgSwc+PCfWLXI7/Kza
/zouUC4W6xkM0+r9q9NWmC+0+wet38EGK8GZxl6J8Xnk+JAtsZInoG4e8q3ReTS3
OVVKLuD7+Uv+chRuL3ZTs5f5YpTYQIW+61vyHGEsA0vFamMRcBkZA0oqANrREuF6
EfFaiwuir9pVZOPjN1u9cdkJFxBIBouUiZIkIkAjavjFAb/wO4NYNy51yQxAKyV8
h7Y8sFEscE+SMJJEcCwjy6JtS9AvQn7SE2ODyRskffJnywNW+ZSDyC5YtS0Xlhwk
ahzaRlvMvwsdsDbWJIkSb3zjHAJ30w==
=XKnZ
-----END PGP SIGNATURE-----

--KOsyD3tah5XJdtxhcOJ44ZLzMK14q38KJ--


--===============6355978495134696320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6355978495134696320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6355978495134696320==--

