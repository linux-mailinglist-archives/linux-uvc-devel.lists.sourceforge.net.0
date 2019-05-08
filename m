Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8BD16E49
	for <lists+linux-uvc-devel@lfdr.de>; Wed,  8 May 2019 02:33:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hOAWS-0001IX-VA; Wed, 08 May 2019 00:33:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hnp45acp@gmail.com>) id 1hOAWR-0001IP-6s
 for linux-uvc-devel@lists.sourceforge.net; Wed, 08 May 2019 00:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OLjY5MZSaNPfKLHY21r5RS8ir5r/5ZN+Xsij8V9naEM=; b=eyDagIx0G5JsHrEIh7qT9dH1fi
 Fh8H3hNcQ34rZuEJsXYOZVLwi6M3hDfBmErIDqVpb0YOpSsqwFryaJVvGEZwTdexHVhNM0dGUJUAI
 rczmE4AdThn/tsb/Wgk0jlqA3+wb7cpz9kGo2tSgNfFksN27sYsZazMwqRhL1+xUlBtI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OLjY5MZSaNPfKLHY21r5RS8ir5r/5ZN+Xsij8V9naEM=; b=I
 Usj6cpw6IsQRWVeMQJokNgRJL7u9N0WwX0Porty1eEb75DaLGd5Qmt68sQ7yG4wWzL6nJiBM71RK9
 TtsaK3VKPh3Y2nllzmY0QG0t1s5+EGe04RwqpP0bproJA7COBn2EnZBx88ZwrTy2MII6fjt/Pjf3m
 ro5vUc0eRMZ0wqzA=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hOAWP-008qB7-UR
 for linux-uvc-devel@lists.sourceforge.net; Wed, 08 May 2019 00:33:23 +0000
Received: by mail-wm1-f43.google.com with SMTP id h11so821789wmb.5
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 07 May 2019 17:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=OLjY5MZSaNPfKLHY21r5RS8ir5r/5ZN+Xsij8V9naEM=;
 b=lavzoC/fd3vHX6Ve719DMhTj9PWCbOuRgsP4yvpqAupznlECuTzbi13oJf7tzWOSfQ
 Zc8SrFWtEa6XN929025zAkJcsJC8ThnaBLYcfNft3ZHgATkji/LRLXYRR8Jw7nOJrdMS
 j3Vc2U52qu1iPwAPF4uK0GMBpLAIUSnFWmUP85IXbfiKDxv45hCwsNEndtpMWExqc/pd
 HR0OnWDZwgFeh6AIJ1LMALaGFd/Ls8vNfzhqfTgNQXZ4wj+pGQw81rJvIeluk3nvIOcu
 MLlhBisP1nRkrpdNbO3xmLIXoy9NGFu4krtUNCh2XH5WvjMBdHOPo+ranQgaXYq/SmjL
 mp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=OLjY5MZSaNPfKLHY21r5RS8ir5r/5ZN+Xsij8V9naEM=;
 b=aZ77lOeJuV2MU6ZTwTUTjsImQnMDsnzP60Dv1u3+2X6W4p7UGTAu2/JwDqvCjFFqrX
 fAg0/HYAj8rzZfwEpYLXmGwG/MzvN9CNA+oMMBNt1KAbM5VlKr6+vrGMx7dhTjLSt6G+
 dGD9avXmNGjbBy9znxXX1t+2+W3OHsrDF6IlYiNhtlJo6eVRZEEXBfbmT2LNv4gL8PnO
 RDCShiS8ioDegJ96LbZoZI69na+Wb0IcElXEBHNM1FatoLKXGTN7HfLUKqQvqQURnH/f
 Wg9+9SLS+BWLYhV9af39FcRuFvFIAkqfblEvlSVgv3CakgPuyF4Q0cPRbGxAHqbPnDCv
 /6vA==
X-Gm-Message-State: APjAAAWeFDogcg7ZDxaGomSApv7WBiQX4o3uT5co8HPUOcQqsP+LH9uy
 oE+nfsq+/OBcC/wyTN4Z7g0KxNh4/c9IEeRQiUjJ1hdD
X-Google-Smtp-Source: APXvYqwrf3aQ9G4A9w1PCfCpW6eogbPjVmlbc15z48dhQALmkKBf3OKdqXpAryh8Q5i7hqwIOq995BQw3EJoC7LganY=
X-Received: by 2002:a05:600c:2190:: with SMTP id
 e16mr727672wme.113.1557275594806; 
 Tue, 07 May 2019 17:33:14 -0700 (PDT)
MIME-Version: 1.0
From: Hermen Pedrosa <hnp45acp@gmail.com>
Date: Tue, 7 May 2019 20:33:04 -0400
Message-ID: <CAFMRpKTADToXSA-XvZeL4Nz5r_zJG-u09dUROWEiTSY=L9tXsg@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hnp45acp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hOAWP-008qB7-UR
Subject: [linux-uvc-devel] (no subject)
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
Content-Type: multipart/mixed; boundary="===============3457893156084225778=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============3457893156084225778==
Content-Type: multipart/alternative; boundary="000000000000a55a210588557abb"

--000000000000a55a210588557abb
Content-Type: text/plain; charset="UTF-8"

WiFi Microscope, DEPSTECH 50X to 1000X

$ lsusb -d *1b3f:2002* -v | grep "14 Video"
Couldn't open device, some information will be missing
      bFunctionClass         14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video

$ sudo echo 0xffff > /sys/module/uvcvideo/parameters/trace
bash: /sys/module/uvcvideo/parameters/trace: Permission denied

$ sudo echo 0 > /sys/module/uvcvideo/parameters/tracebash:
/sys/module/uvcvideo/parameters/trace: Permission denied
hermen@hermen-ubuntu-1804:~$ dmesg > dmesg.log
hermen@hermen-ubuntu-1804:~$ lsusb -d VID:PID -v > lsusb.log
hermen@hermen-ubuntu-1804:~$ lsusb -d 1b3f:2002 -v > lsusb.log
Couldn't open device, some information will be missing

--000000000000a55a210588557abb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><h1 id=3D"gmail-title" class=3D"gmail-a-s=
ize-large gmail-a-spacing-none" style=3D"box-sizing:border-box;padding:0px;=
margin:0px;color:rgb(17,17,17);font-family:&quot;Amazon Ember&quot;,Arial,s=
ans-serif;font-size:21px;line-height:1.3"><span id=3D"gmail-productTitle" c=
lass=3D"gmail-a-size-large" style=3D"box-sizing:border-box;line-height:1.3"=
>WiFi Microscope, DEPSTECH 50X to 1000X</span></h1><div><span class=3D"gmai=
l-a-size-large" style=3D"box-sizing:border-box;line-height:1.3"><br></span>=
</div><div>$ lsusb -d <b>1b3f:2002</b> -v | grep &quot;14 Video&quot;</div>=
<div>Couldn&#39;t open device, some information will be missing</div><div>=
=C2=A0 =C2=A0 =C2=A0 bFunctionClass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A014 Vid=
eo</div><div>=C2=A0 =C2=A0 =C2=A0 bInterfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 14 Video</div><div>=C2=A0 =C2=A0 =C2=A0 bInterfaceClass=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 14 Video</div><div>=C2=A0 =C2=A0 =C2=A0 bInterfaceClass=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 14 Video</div><div>=C2=A0 =C2=A0 =C2=A0 bInterfaceCla=
ss=C2=A0 =C2=A0 =C2=A0 =C2=A0 14 Video</div><div>=C2=A0 =C2=A0 =C2=A0 bInte=
rfaceClass=C2=A0 =C2=A0 =C2=A0 =C2=A0 14 Video</div><div><br></div><div>$ s=
udo echo 0xffff &gt; /sys/module/uvcvideo/parameters/trace</div><div>bash: =
/sys/module/uvcvideo/parameters/trace: Permission denied</div><div><br></di=
v><div>$ sudo echo 0 &gt; /sys/module/uvcvideo/parameters/tracebash: /sys/m=
odule/uvcvideo/parameters/trace: Permission denied</div><div>hermen@hermen-=
ubuntu-1804:~$ dmesg &gt; dmesg.log</div><div>hermen@hermen-ubuntu-1804:~$ =
lsusb -d VID:PID -v &gt; lsusb.log</div><div>hermen@hermen-ubuntu-1804:~$ l=
susb -d 1b3f:2002 -v &gt; lsusb.log</div><div>Couldn&#39;t open device, som=
e information will be missing<br></div></div></div>

--000000000000a55a210588557abb--


--===============3457893156084225778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3457893156084225778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============3457893156084225778==--

