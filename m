Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C8BED054
	for <lists+linux-uvc-devel@lfdr.de>; Sat,  2 Nov 2019 20:06:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iQyjI-0006R9-97; Sat, 02 Nov 2019 19:06:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peter.dieterich@posteo.de>) id 1iQyjH-0006QM-4C
 for linux-uvc-devel@lists.sourceforge.net; Sat, 02 Nov 2019 19:06:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tXuLe5KeEuxyCQKso00z6uN5MV1ajZzsMBLbixym7I8=; b=i/19dyiyBo3h7J+hWke1rW2Up
 k+NBNe5mvKtNxSJgpiDPhzmlkFFJb8X2+ZjaIz3C53GbR7cteTA6+XCEBxmG5trJEFXY530H/MrMq
 0lydMy1NfVpTR2SJ2txCt4ZOR1pc8fK4QDXdRuoXliFgXuIUoQi7sawdz9O/amXJOCw9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tXuLe5KeEuxyCQKso00z6uN5MV1ajZzsMBLbixym7I8=; b=h4PEXij3CGRN0lyN5ZCCOTxEg7
 UV5Ggsg5bTzgNpYiBWlFVJxoyvWQHtnEUNPkTpTCzMzBKGFt4P7zPPvYqjZHcl9j4NQEvpoiX4s3k
 shuAKvaoVMUL4hGZYlUoguRnnD9eM1gYzNMUgvTJYPMVJYTaABoJfT78QbPtgJLbG3w0=;
Received: from mout02.posteo.de ([185.67.36.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iQyj7-00FNM0-SF
 for linux-uvc-devel@lists.sourceforge.net; Sat, 02 Nov 2019 19:06:30 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 3155D2400E5
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat,  2 Nov 2019 20:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1572721575; bh=Wf5vpHNYeAibC+E5ueatbDgoMUUcoEbKIfnzE7MKghA=;
 h=Subject:From:To:Openpgp:Autocrypt:Date:From;
 b=B32V/eObFL4D4QiPZnQxJ7Gl6EbJL5XBTIBtbUeO9XtjNu+d3C/yiUSVa2REIrPG5
 E5iKKgc4n3E5WywUxfiSR2+L8zYas7dfJQx7hPKrFcud+WjZjOj8i1HRKv3hQE70K9
 iH2IkOMXZSbJGWKuYWdlm51cqn1g7JLGsAJSuk9/Fg00wDvJwQW5e8DGuHA+AdTSKT
 FURtHLfXoSehwB7QJyWvUicQJpc25IP+nNz89tpz+yIiMpfAIQ2DJ8VGToH66mwnNC
 Kmsg1y5GLJfi+9K2DH/i2U7kKlj7QgufvfcWyty69nsXJTtXagE3UwhQOPeKB7ytgg
 T6UhFDfQY2glQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4757nf4xNTz9rxG
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat,  2 Nov 2019 20:06:14 +0100 (CET)
From: Peter-Simon Dieterich <peter.dieterich@posteo.de>
To: linux-uvc-devel@lists.sourceforge.net
References: <931166d1-05ea-38ed-92f8-5e858e381583@posteo.de>
Openpgp: preference=signencrypt
Autocrypt: addr=peter.dieterich@posteo.de; prefer-encrypt=mutual; keydata=
 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
 EkI5bKQIQxqc7S3KP8WN
Message-ID: <04b1d3c6-7dd2-4870-a8b7-21383f1f9a20@posteo.de>
Date: Sat, 2 Nov 2019 20:06:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <931166d1-05ea-38ed-92f8-5e858e381583@posteo.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iQyj7-00FNM0-SF
Subject: [linux-uvc-devel] How do I properly expose control unit to toggle
 camera's infrared emitter
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
Content-Type: multipart/mixed; boundary="===============7200348174707190451=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7200348174707190451==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="J7prUpL0rp1l5VGS2VAWVvMiSDZUrHdAq"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--J7prUpL0rp1l5VGS2VAWVvMiSDZUrHdAq
Content-Type: multipart/mixed; boundary="nRdDyzJnslpNWz09zBHprbu2D9AiD5kbH";
 protected-headers="v1"
From: Peter-Simon Dieterich <peter.dieterich@posteo.de>
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <04b1d3c6-7dd2-4870-a8b7-21383f1f9a20@posteo.de>
Subject: How do I properly expose control unit to toggle camera's infrared
 emitter
References: <931166d1-05ea-38ed-92f8-5e858e381583@posteo.de>
In-Reply-To: <931166d1-05ea-38ed-92f8-5e858e381583@posteo.de>

--nRdDyzJnslpNWz09zBHprbu2D9AiD5kbH
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I recently bought a Lenovo T490s with an integrated IR-camera that is
compatible with Windows Hello face authentication. The camera shows up  a=
s:

04f2:b67c Chicony Electronics Co., Ltd Integrated Camera

The camera has an integrated IR emitter which is off by default. By
looking at Wireshark USB dumps while an app in Windows turned on the
LED, I found a call to the Realtek Extended Control Unit
26b8105a-0713-4870-979d-da79444bb68e (to which I couldn't find any
documentation), writing 2 bytes to the selector 0x0e. The data sent was
0x0219 and would indeed turn on the IR LED. The first byte (0x19) seems
to control the intensity (0x19 is seemingly already the maximum
intensity). I don't know what the second byte does: 0x01 seems to do the
same, 0x00 turns off the LED.

I wrote a simple tool that can send the corresponding UVCIOC_CTRL_QUERY
to the device (https://github.com/PetePriority/chicony-ir-toggle/),
however, this feels more of a workaround to me. One could use udev rules
to do this at boot. However, another call is necessary after waking from
suspend. I don't know if this is possible with udev.

I tried mapping this control with UVCIOC_CTRL_MAP,
(UVC_CTRL_DATA_TYPE_UNSIGNED -> V4L2_CTRL_TYPE_INTEGER) but the control
reports a range from 0 to 2 and only sets the the second byte. I don't
know how I would go about exposing the raw bytes to v4l2.

I'm writing to this list because
* I thought someone might find these findings interesting/useful,
* I'm unsure of what would be the right way to expose the functionality
of enabling the IR emitters (I haven't done anything regarding uvcvideo
or v4l2 before)? Would turning on the LED be the responsibility of the
user applications by calling the ioctl directly? Should this go into the
uvcvideo driver or the v4l2 layer?

Thanks!
Peter






--nRdDyzJnslpNWz09zBHprbu2D9AiD5kbH--

--J7prUpL0rp1l5VGS2VAWVvMiSDZUrHdAq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: Using GnuPG with Thunderbird - https://www.enigmail.net/

iQEzBAEBCAAdFiEE7UlSq86Dj0YDuV9tRxC/CwsUe8IFAl2906YACgkQRxC/CwsU
e8Jvlwf/d4DckCrU13uwVf+YpvwysGkwSUFQwE4RL8iTCZXr8Ny7XMpiOjqKjUjT
PJVhMAFB0liJ6vk/YOzpoXwY9k2ubXEHtW6mgi6ZZyfSM6bK/K2dTxQXRxzaiT6s
mH38gg5pvxqHlxMMKL6V5CVv8sMMgWpmhk8UZAZLmruv04O4RtpdgH9hMpW5OBgd
qjO50/6FMH7YfP4/cSB2QWzEcYeykPWBP7rSI+QrKcwjFJJBt7QOcIEot76nGPg7
qKwiZBboHIaOCDSmmF9sWlgNTJD8RJTzg2VIcA2YMt+A3tgj4rE+CpEr+E/9uurJ
Bfa1wkiKBylYRd3lPTNzrFnyr67WsQ==
=ah+F
-----END PGP SIGNATURE-----

--J7prUpL0rp1l5VGS2VAWVvMiSDZUrHdAq--


--===============7200348174707190451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7200348174707190451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============7200348174707190451==--

