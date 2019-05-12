Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C254C1ACB4
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 12 May 2019 17:00:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hPpxf-0007ZF-2p; Sun, 12 May 2019 15:00:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aprofoundthinker@gmail.com>) id 1hPpxd-0007Z8-SL
 for linux-uvc-devel@lists.sourceforge.net; Sun, 12 May 2019 15:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=euwPxe+TdmatENUruulIhzS+aZwwMCZhbWb+itJQ0fc=; b=Ywuo6ZqvBkR0NmSvXaEUVcSFxG
 6Y/wsALcnWV9LO+nHAg+HKHdM88lbl71DVlaqn4KXCCGhNWCiJQ5qLzzRjcIa5y8xWcbgpcQWGKst
 svhEBzzY0m7GaYmyYSoHx0B/o9ZHO+2+nK24qlkXUGMjF2JTpGVv2La1CSDh6WYB1QWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=euwPxe+TdmatENUruulIhzS+aZwwMCZhbWb+itJQ0fc=; b=Z
 vTY9JM1tLtRwKjYDp5jphNJYO5m4y31V94Bm5UN+sZzIxTjtKnpxUflJmsFaNBz5KF5WHAlw10wfy
 zBjD921I9gn3DlkL64wz/bRJUmBfPp72wEU67BKTs52r2yL+efu6lLNDx5ercBsQqprUyqw9IOIzg
 fkNhPoaHIZMK0cj8=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hPpxb-00EE2Z-W1
 for linux-uvc-devel@lists.sourceforge.net; Sun, 12 May 2019 15:00:21 +0000
Received: by mail-pl1-f169.google.com with SMTP id p15so5118392pll.4
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun, 12 May 2019 08:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=euwPxe+TdmatENUruulIhzS+aZwwMCZhbWb+itJQ0fc=;
 b=ahABzx79H/YH9JZSj4c46be5BAbzI4W9TaJQB+R2mMjWeAmXtMVtL13V7YFUjWDakK
 Mdqtum2z7F/svmAFy6VFmXqfI0kEg7ocXoGemwiSbT5IjgdrUN/fs0zDllzHjlJJ3YLV
 wAJ4pt9pNfB4NBloVcgbRxNJGiLYwe2b5qr8JvUhxLl3gXlU+4xK1LTtGQvVB8Py6CMR
 TXwk4up6+9javG+/OuDlpCR/63uzYmjBSPZkGAJa3V0ndaHS4gdB8PjNBC5S/gYBBaj7
 IUpoYXO+EPEYkKCryD4TFwOWq7gutkY8rwcr89TZ1Y49BZa1CisISh6kc6x9hAWoJW2D
 Fj8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=euwPxe+TdmatENUruulIhzS+aZwwMCZhbWb+itJQ0fc=;
 b=KcrnK0rwTkoFeyUt4fU4aiik9hF3us2M5oRaq7HpWd6vDgC5VpaZyqWVj7qGdA2+Cz
 rxYqHDdvLdPPeUnJb3QTrND09reEm2pukhWTtqEGkSbIEtKnj9czvdRLxO/pDgEM9Ops
 beWH8c9/Br+iH0o8e52rJIzkQf9UEqijUOGmAKJCRcNqqlLu667sXpTjPsx0s0YDPeun
 pHYHYFP1cYMdapF/gHeW2CBhT6N5PbV0q/dBOr310k5whKsViEuW9boNWQAwAuHH21yg
 isbVXJwed7gEhTBb/rtmeabgBnvMpI4a0BYkglvx1gINNKnC/VZ96NhjNVuK7TpOmL6P
 abig==
X-Gm-Message-State: APjAAAUCKcdIzArgnyOuazh/Y4kq4KgTERP2ldGQEpV8t8WpWxgYuWBz
 gKGI9WeBaReRvECWmFAJQPQH2miu8P/9TI63pBiYXas=
X-Google-Smtp-Source: APXvYqzEuQhk1MsL81zsAIyiuR31DWKW4DoRPBEGPDyMNWo1bfL+EKGqdnwX/qKJ0ISmlJFwOGOynxcB9TEXFqNONRs=
X-Received: by 2002:a17:902:b193:: with SMTP id
 s19mr26149849plr.17.1557673214139; 
 Sun, 12 May 2019 08:00:14 -0700 (PDT)
MIME-Version: 1.0
From: Neil T <aprofoundthinker@gmail.com>
Date: Sun, 12 May 2019 16:00:03 +0100
Message-ID: <CAFAcfJXonqDhD17AL2H-zFD7jF5oyHoYqmeVYt8XU7sQ2BRw2Q@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (aprofoundthinker[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hauppauge.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.169 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or Formatted
 Colors in HTML
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hPpxb-00EE2Z-W1
Subject: [linux-uvc-devel] Hauppauge HD PVR Pro 60 (model 01684)
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
Content-Type: multipart/mixed; boundary="===============4365937611631385383=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============4365937611631385383==
Content-Type: multipart/alternative; boundary="0000000000009ae06e0588b20ea4"

--0000000000009ae06e0588b20ea4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am posting to this list in the hope that I could get some advice.  I
apologise if this is not the etiquette.

I=E2=80=99m a big fan of Hauppauge. I have been successfully using a Hauppa=
uge
HDPVR2 with Linux albeit with the =E2=80=98driver=E2=80=99.  Recently I've =
noticed the
Hauppauge HD PVR Pro 60 4K listed on Amazon and the Hauppauge website. The
HD PVR Pro is better suited to my needs as it is bus powered and doesn=E2=
=80=99t
need a driver.

The Amazon listing offers this description : "Uvc driver using the latest
USB 3 technology, USB Type-C. Compatible with video capture and streaming
applications which use uvc Class drivers. Uvc drivers are supported in
Windows, Mac and Linux".  There is no mention of Linux compatibility on the
Hauppauge website.
http://www.hauppauge.com/pages/products/data_hdpvrpro60.html

My requirements.  I want to be able to capture from the HDMI source at the
highest quality to a file, eg

cat /dev/video >/path/to/some/file.ts

or redirect to vlc with something like

cat /dev/video >/usr/bin/vlc stream:///dev/stdin --sout
"#standard{access=3Dhttp,mux=3Dts,dst=3D192.168.0.1:8090}"

I don=E2=80=99t want to buy one of these devices unless it is compatible wi=
th
Linux.  Are you able to give any advice? Do you own one? BTW I have sent an
email to Hauppauge support but they haven=E2=80=99t replied.

Many thanks.

--0000000000009ae06e0588b20ea4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span id=3D"gmail-docs-internal-guid-eb25afa5-7fff-574c-0c=
27-e0bfbc1a907e"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(=
0,0,0);background-color:transparent;font-variant-numeric:normal;font-varian=
t-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Hello,</s=
pan></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0=
);background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;vertical-align:baseline;white-space:pre-wrap">I am posting t=
o this list in the hope that I could get some advice.=C2=A0 I apologise if =
this is not the etiquette.  </span></p><br><p dir=3D"ltr" style=3D"line-hei=
ght:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-variant-=
numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;white=
-space:pre-wrap">I=E2=80=99m a big fan of Hauppauge. I have been successful=
ly using a Hauppauge HDPVR2 with Linux albeit with the =E2=80=98driver=E2=
=80=99.=C2=A0 Recently I&#39;ve noticed the Hauppauge HD PVR Pro 60 4K list=
ed on Amazon and the Hauppauge website.  The HD PVR Pro is better suited to=
 my needs as it is bus powered and doesn=E2=80=99t need a driver.</span></p=
><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;vertical-align:baseline;white-space:pre-wrap">The Amazon listing of=
fers this description : &quot;Uvc driver using the latest USB 3 technology,=
 USB Type-C. Compatible with video capture and streaming applications which=
 use uvc Class drivers. Uvc drivers are supported in Windows, Mac and Linux=
&quot;.=C2=A0 There is no mention of Linux compatibility on the Hauppauge w=
ebsite. <a href=3D"http://www.hauppauge.com/pages/products/data_hdpvrpro60.=
html">http://www.hauppauge.com/pages/products/data_hdpvrpro60.html</a></spa=
n></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);=
background-color:transparent;font-variant-numeric:normal;font-variant-east-=
asian:normal;vertical-align:baseline;white-space:pre-wrap">My requirements.=
=C2=A0 I want to be able to capture from the HDMI source at the highest qua=
lity to a file, eg</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:=
Arial;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre=
-wrap">cat /dev/video &gt;/path/to/some/file.ts</span></p><br><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical=
-align:baseline;white-space:pre-wrap">or redirect to vlc with something lik=
e</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-variant-numeric:normal;font-variant=
-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">cat /dev/v=
ideo &gt;/usr/bin/vlc stream:///dev/stdin --sout &quot;#standard{access=3Dh=
ttp,mux=3Dts,dst=3D<a href=3D"http://192.168.0.1:8090">192.168.0.1:8090</a>=
}&quot; </span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;colo=
r:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-=
variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">I d=
on=E2=80=99t want to buy one of these devices unless it is compatible with =
Linux.=C2=A0 Are you able to give any advice?  Do you own one? BTW I have s=
ent an email to Hauppauge support but they haven=E2=80=99t replied.</span><=
span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-=
color:transparent;font-variant-numeric:normal;font-variant-east-asian:norma=
l;vertical-align:baseline;white-space:pre-wrap"><br><br></span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color=
:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;ver=
tical-align:baseline;white-space:pre-wrap">Many thanks.</span></p></span><b=
r class=3D"gmail-Apple-interchange-newline"></div>

--0000000000009ae06e0588b20ea4--


--===============4365937611631385383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4365937611631385383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============4365937611631385383==--

