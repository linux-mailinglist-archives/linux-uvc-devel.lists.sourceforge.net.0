Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF1625E5FD
	for <lists+linux-uvc-devel@lfdr.de>; Sat,  5 Sep 2020 09:31:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kESes-00006Y-3d; Sat, 05 Sep 2020 07:30:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lazjen@gmail.com>) id 1kESer-00006Q-O8
 for linux-uvc-devel@lists.sourceforge.net; Sat, 05 Sep 2020 07:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=txZIhMalLmY/IBCHMiQvr65/XRHAwOk5e7/Kgi39Vyo=; b=RBYSC7ERGQgQ+f7WuZs56z+2NY
 sasJBiAKW2y4aZpvlwFwgZ73RG0bfcPIdy0VZOLpX2olibsHwCgSkdxwkWLMR1GgUnpxB19I+5ag6
 /DJJWeiiOVluON+nHls/vcwj6Scm3kn7y4ycGBAiuyInpOv+S3HpWduHExjhQxsXyInw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=txZIhMalLmY/IBCHMiQvr65/XRHAwOk5e7/Kgi39Vyo=; b=j
 tN/d2XTKxN70vNR5MFKDmls1cPLo05KVXHHhnY7A5ArhpwJHWn7Rt7ZNF2cBsIrV4DKH3dH6/D6L7
 ymflp2HY1TsJTdmgm18m3QuEgQuXAsNiWsGDOBOCYIucZdVAgCajiSGQhiy66wZv4uL27FHcRx//j
 7vLtu73aYQFkwx7E=;
Received: from mail-ej1-f43.google.com ([209.85.218.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kESel-00D26C-ML
 for linux-uvc-devel@lists.sourceforge.net; Sat, 05 Sep 2020 07:30:45 +0000
Received: by mail-ej1-f43.google.com with SMTP id lo4so11448253ejb.8
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat, 05 Sep 2020 00:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=txZIhMalLmY/IBCHMiQvr65/XRHAwOk5e7/Kgi39Vyo=;
 b=CAGPu9zbrctUllDC+Si9jWKTxOvFwG+H6rSX2R7wjuXc37ua8X2Jh5ZxBBbudyKCl0
 vea4I+crYhCD6ibX0QimcvYMUhnIo5Z0qYorF8iB+01HcweKflDdLmavwhyNEPiRb+ni
 8Ea5oEQpUw3t51EjS973MN7i/sf8dxGimmIdA+8MyP1ptQcPJaC11vfwKSdemIZ7hPQx
 Aas4XPstx+5sYoQXmqej26LpfMIXcNcPuFayDYff5BPitwIWa3F9R1J4BTh7fTrHnO7Q
 e6CK0laTX/3ZJkpM/oIhZ85q4krQ7s6yZh5PEKO8u9FUy/WAyN1Fg4gW9ioKEfcdiyCP
 La6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=txZIhMalLmY/IBCHMiQvr65/XRHAwOk5e7/Kgi39Vyo=;
 b=agtwDXM1ZEzg0p882W/pisdtQSEHUutMRClZzhlmlSAssYsrLInTBI1GLDKYnpzbhd
 +qdrYMr5RZJGP2dbloduIbGpjvLExFxFqtlw6JhK1M5iYiA9X5JGTQSGSEWyow7oN5QN
 L+kqwNhk3iCcLTGCYiwtnF4b3BCSkViK/BmAsqn7Dj99TnVmCwkXfpkXyBgW3WL/B1R3
 NJn5SFi7aGjMgE3CBpbouLlPTzYOwVdBJrwIM2ZpUnmxOoJKukX9bzylUb6dBvy5sEGn
 2g6tDJp5C7tArzKOVfLgIoDu9iGRnqybzGQ6782mVfyZNDZXleEj1HHsiO4eT7RvMxnv
 8F/Q==
X-Gm-Message-State: AOAM530Q2JU0CFek++pOhxKROX3BYMvOcMcPSt5XWjhetmUkX4UF+6LT
 ypvRqy7IHycUKY2cLNnZhX3k9sVTDUcgjCpxvWiKkdxtrBZoSQ==
X-Google-Smtp-Source: ABdhPJxI6eOp9RMGOg5XnjfbgZQgAq24meX0QO83Uc2xSuT3MFXpK6ETkp1ExyDLG1xbVV48LmRI/ANGCTaWOjKT+ck=
X-Received: by 2002:a17:906:386:: with SMTP id
 b6mr11171184eja.538.1599291033081; 
 Sat, 05 Sep 2020 00:30:33 -0700 (PDT)
MIME-Version: 1.0
From: Chris Ryan <lazjen@gmail.com>
Date: Sat, 5 Sep 2020 17:30:22 +1000
Message-ID: <CAANF7d+MJ56+FUhtaJvU6-CQc=T6XSQg8GwkRPA_B2v80=bv+A@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lazjen[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kESel-00D26C-ML
Subject: [linux-uvc-devel] Trying to get AVEO Cheetah3 USB2.0 Device to work
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
Content-Type: multipart/mixed; boundary="===============7789968416487313928=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============7789968416487313928==
Content-Type: multipart/alternative; boundary="000000000000eb597505ae8bf5d3"

--000000000000eb597505ae8bf5d3
Content-Type: text/plain; charset="UTF-8"

 When I plug it in, dmesg shows:

[  185.456597] usb 1-4: USB disconnect, device number 2
[  193.643879] usb 1-4: new high-speed USB device number 4 using xhci_hcd
[  193.680489] usb 1-4: New USB device found, idVendor=1871,
idProduct=01b0, bcdDevice= 0.05
[  193.680490] usb 1-4: New USB device strings: Mfr=1, Product=2,
SerialNumber=0
[  193.680491] usb 1-4: Product: AVEO Cheetah3 USB2.0 Device
[  193.680492] usb 1-4: Manufacturer: AVEO Technology Corp.


lsusb output for it:

Bus 001 Device 004: ID 1871:01b0 Aveo Technology Corp. AVEO Cheetah3 USB2.0
Device


I'm trying to see it using webcamoid software, but it doesn't see the
device at all.  I also tried guvcview but no luck there either.

I'm running under Gentoo Linux, custom 5.5.7 kernel build.

I'm trying to work out: is the device supported?  What should I look into
fixing if it is supported?  What kernel options should I use or need?  Any
libraries, etc that I should have installed?

Thanks for any help,

Chris

--000000000000eb597505ae8bf5d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>=C2=A0When I plug it in, dmesg shows:</div><div><br><=
/div><div>[ =C2=A0185.456597] usb 1-4: USB disconnect, device number 2<br>[=
 =C2=A0193.643879] usb 1-4: new high-speed USB device number 4 using xhci_h=
cd<br>[ =C2=A0193.680489] usb 1-4: New USB device found, idVendor=3D1871, i=
dProduct=3D01b0, bcdDevice=3D 0.05<br>[ =C2=A0193.680490] usb 1-4: New USB =
device strings: Mfr=3D1, Product=3D2, SerialNumber=3D0<br>[ =C2=A0193.68049=
1] usb 1-4: Product: AVEO Cheetah3 USB2.0 Device<br>[ =C2=A0193.680492] usb=
 1-4: Manufacturer: AVEO Technology Corp.</div><div><br></div><div><br></di=
v><div>lsusb output for it:</div><div><br></div><div>Bus 001 Device 004: ID=
 1871:01b0 Aveo Technology Corp. AVEO Cheetah3 USB2.0 Device</div><div><br>=
</div><div><br></div><div>I&#39;m trying to see it using webcamoid software=
, but it doesn&#39;t see the device at all.=C2=A0 I also tried guvcview but=
 no luck there either.<br></div><div><br></div><div>I&#39;m running under G=
entoo Linux, custom 5.5.7 kernel build.</div><div><br></div><div>I&#39;m tr=
ying to work out: is the device supported?=C2=A0 What should I look into fi=
xing if it is supported?=C2=A0 What kernel options should I use or need?=C2=
=A0 Any libraries, etc that I should have installed?<br></div><div><br></di=
v><div>Thanks for any help,</div><div><br></div><div>Chris</div><div><br></=
div><div><br></div></div>

--000000000000eb597505ae8bf5d3--


--===============7789968416487313928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7789968416487313928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============7789968416487313928==--

