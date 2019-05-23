Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 499A82843C
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 23 May 2019 18:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	MIME-Version:Message-ID:To:Date:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=Ih/g++FZOp8aUu44VXfXvqvkOL+kyv9PqQ8T3TqKMIc=; b=MKEczbr3Aws+mv62+FReWYG+as
	S4JuBkAgBTlephWqdq0GAHlHlPHbOD5QS16ENqYjj+A17G9jBSUvzKsLjhjjZHprV1Z2JEldFYCRL
	55b8xH/vnQmTgwC31p/ffWtso9L0A3J4jvrP6k5oniiNh3zNiTfYIagiuIrMHzoeQ/MU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hTqwd-0007pr-45; Thu, 23 May 2019 16:51:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <waterreedshimmer@ymail.com>) id 1hTqwb-0007pc-7o
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 May 2019 16:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Subject:
 Message-ID:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k1HlvUm8iKLlk4nNFGjB/WvkDg135vy0Gmx6NX1lqEY=; b=EliJHI4SEERof7EqkYYp7N7/uB
 Ab882xLKx6aRujYiSh+W0xA2UZgNLrwCmWRuvClz4ofd004pxb4Ebmz74y3QnIypfA2zpdeIO8gj2
 3J+63j/wTDai4fIEcIT9K2Leora+qocY0w6h+VesyaYPPINWSwbrwYgy6zb6/aiDgxvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Subject:Message-ID:To:From:Date:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=k1HlvUm8iKLlk4nNFGjB/WvkDg135vy0Gmx6NX1lqEY=; b=a
 Z1s4DQZpzaUd1CKHNRxDEFU7ArDqioLep1CaIH2Mymg/16WTa0aL6mjLBOjCCAnuQ9p7nurB+qH5I
 fZq1dk+kqalP9I89fjAt3wfEl8BsV2n94ltrpud0iYJO7AZbi11Ow4OOsS2FlBwCrlg9DYdGyPhqW
 HSQrA8xjogJF9bfc=;
Received: from sonic301-32.consmr.mail.ne1.yahoo.com ([66.163.184.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hTqwY-009g4m-PZ
 for linux-uvc-devel@lists.sourceforge.net; Thu, 23 May 2019 16:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s2048;
 t=1558630304; bh=k1HlvUm8iKLlk4nNFGjB/WvkDg135vy0Gmx6NX1lqEY=;
 h=Date:From:To:Subject:References:From:Subject;
 b=dCYpndrKiPGTug39BgvEFYASlqicLGZnaruVvgp1/ToEGlbCyzxg8MEKUsD0GK0mWd9CMYLnUFxmvS8d1XZBDRWcYLb+RpMwtIApsWzQNXa6hXROgUNN2PVEEk14e2eszofTzjRbKu+KEZO6qHyWqhDFiO6M9MKVXi+s2Uu+/GCzlP+bi0FAjoXuU4O9qXpKOLQlqwrKhoMQC+RpsdTMlsH3mJz20DtshAX1KtP9kEdduObM4X0pj8Y3tnLuVPkwhAlZFXRiI2pmyJs/qjkQX7REobcvOzPFiI/xsIc1kMxURA+iTJXlDX1yTdyamqTontsUsGGKNLdsRySBDorA3A==
X-YMail-OSG: 0DD6lcwVM1lmJmW3CgAkkKanqX6a528VXWKsQof0eF8lF9xLDBfQV97R2VJzFnP
 a0zHc47PyAqx9I0g.kRlmdGIDHW6suxeCLD9V8bqKO3J17e3gvn2caJSge06s0zLHQ7LDQYCC5qS
 i8KhQQnG2.UiWWSRwxBWj9bpC.Gh4tr_g8PSSE2HGlJuJLzcM.5R2bL2tb7DpekVV.Ymhm0eIceI
 QPq_vWmjv8KLb5yfOfmxskqw.kCGjiIr7E6a4D8jHB20_fwXtc4mbR5pYDOFLFe_PgK0zwuMOpoU
 tt4hrSol3IiakDLlBv1b7XOOOqyvNauBdaj4K6l16Ee45ur2BqcD1FEpSj2dMoWdK.xvjQcqNy43
 xST7lorsSULchRMrtwLEBBmSnYl4x3yylXTvNiE6HffUTOXWSxw5N8iRr20apfNK5EflBeQfuAGu
 yn.708Nie7cC3B0giuT__Xnq9ptbXxBbbGaX34VB2syXda2EnOZpWzxoDQNS3k0kqt2KbI73EK6M
 CfQH5aE8b5qiSRv_6hnNkOGsqIOqUYVagLUka6Km2EhDiSuaX8pNhfO6OIXNg7eJdUgwyAfKuTDX
 pvtyHCNPRm6Bce_8B9_8jIJsL6WqPOvtEc4t3vUGngcCiOHdORSC0FlEjjYvMskcWPFowtkH3xx_
 INXpBEIWRx06r14vKSPASxeeHrIL4uktgStr5vWnF8bTbnzFLet24P546ncK2AsfiLd06qvL0IHI
 1b3mKe_K5cDPTQp3M7NjbIFXMjPa_vfz4M0rubBntQVv0794CwWgLXZl27SK_L4hjoSLStgDJcqP
 5CSU6mgsUFmnGOKL6HW_S_fGMtq9V4f.CEqGk0XqdxrlYLjQlgcAO59Dge5mfZiqFoY58Zp210pe
 vDvAKBo5oggyHgM.thj6H3CSAmE46TvbgdRnRMmRLiEJ5Guy83reZl2HfCNvfthPSMSlyX.SAUj8
 fDnMtpEUkOyehr2SmMNS8xIR0oGB4.o3w_KqRL2BO7IQZtLekhxS4G4T1TyIHerWssj2F3.b2fbq
 IEzzQvZLwWhAlLv.kR7qwhj_TryVqYaasGLZs6b68HSnnIFARiRHxP8P8Dgz33N6PS4DWI4xSVH.
 ttCBvap1EAY5InzDrk4BYF7c_b3W54iHFjrT8cvtARalPnf8pzom.LopnMP15TPCoDsPhbzBQiYK
 jAbTZuV7Ry2.WmNy6wVAPcycd6FWdkV0CuHDsDE7olnd1QQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Thu, 23 May 2019 16:51:44 +0000
Date: Thu, 23 May 2019 16:30:18 +0000 (UTC)
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Message-ID: <660374020.6776579.1558629018860@mail.yahoo.com>
MIME-Version: 1.0
References: <660374020.6776579.1558629018860.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13634 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (waterreedshimmer[at]ymail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [66.163.184.201 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.163.184.201 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hTqwY-009g4m-PZ
Subject: [linux-uvc-devel] Logitech B525 webcam is compatible.
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
From: Francoise Del socorro via Linux-uvc-devel
 <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Francoise Del socorro <waterreedshimmer@ymail.com>
Content-Type: multipart/mixed; boundary="===============2107501109418353848=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============2107501109418353848==
Content-Type: multipart/alternative; 
	boundary="----=_Part_6776578_1819529699.1558629018858"
Content-Length: 9656

------=_Part_6776578_1819529699.1558629018858
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello, my webcam is compatible =3D)But we don't know how to check nothing.
Bus 002 Device 003: ID 046d:0836 Logitech, Inc. B525 HD Webcam
Linux UVC driver & tools

|=20
|=20
|  |=20
Linux UVC driver & tools


 |

 |

 |




[r=C3=A9solu]Installation webcam Logitek B525 / Autres types de mat=C3=A9ri=
el / Forum Ubuntu-fr.org

|=20
|=20
|=20
|  |  |

 |

 |
|=20
|  |=20
[r=C3=A9solu]Installation webcam Logitek B525 / Autres types de mat=C3=A9ri=
el / Fo...


 |

 |

 |






------=_Part_6776578_1819529699.1558629018858
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" xmlns:v=3D"urn:schemas-microso=
ft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"><head><!--[=
if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>=
96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><bo=
dy><div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:16px;"><div>Hello, my webcam is compati=
ble =3D)</div><div>But we don't know how to check nothing.</div><div><br></=
div><div><div><div>Bus 002 Device 003: ID 046d:0836 Logitech, Inc. B525 HD =
Webcam</div><div><br></div><div><a href=3D"http://www.ideasonboard.org/uvc/=
" rel=3D"nofollow" target=3D"_blank" class=3D"enhancr_card_9587561350">Linu=
x UVC driver &amp; tools</a></div><div><br></div><div id=3D"ydp9f5265a3enha=
ncr_card_9587561350" class=3D"ydp9f5265a3yahoo-link-enhancr-card ydp9f5265a=
3yahoo-link-enhancr-not-allow-cover ydp9f5265a3ymail-preserve-class ydp9f52=
65a3ymail-preserve-style" style=3D"max-width:400px;font-family:&quot;Helvet=
ica Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif" data-ur=
l=3D"http://www.ideasonboard.org/uvc/" data-type=3D"YENHANCER" data-size=3D=
"MEDIUM" contenteditable=3D"false"><a href=3D"http://www.ideasonboard.org/u=
vc/" style=3D"text-decoration:none !important;color:#000 !important" class=
=3D"ydp9f5265a3yahoo-enhancr-cardlink" rel=3D"nofollow" target=3D"_blank"><=
table class=3D"ydp9f5265a3card-wrapper ydp9f5265a3yahoo-ignore-table" style=
=3D"max-width:400px" cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbod=
y><tr><td width=3D"400"><table class=3D"ydp9f5265a3card ydp9f5265a3yahoo-ig=
nore-table" style=3D"max-width:400px;border-width:1px;border-style:solid;bo=
rder-color:rgb(224, 228, 233);border-radius:2px" width=3D"100%" cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td><table class=3D"ydp9f5=
265a3card-info ydp9f5265a3yahoo-ignore-table" style=3D"background-color: rg=
b(255, 255, 255); background-repeat: repeat; background-attachment: scroll;=
 background-image: none; background-size: auto; position: relative; z-index=
: 2; width: 100%; max-width: 400px; border-radius: 0px 0px 2px 2px; border-=
top: 1px solid rgb(224, 228, 233);" cellspacing=3D"0" cellpadding=3D"0" bor=
der=3D"0"><tbody><tr><td style=3D"background-color:#ffffff;padding:16px 0 1=
6px 12px;vertical-align:top;border-radius:0 0 0 2px"></td><td style=3D"vert=
ical-align:middle;padding:12px 24px 16px 12px;width:99%;font-family:&quot;H=
elvetica Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;bor=
der-radius:0 0 2px 0"><h2 class=3D"ydp9f5265a3card-title" style=3D"font-siz=
e:14px;line-height:19px;margin:0 0 6px 0;font-family:&quot;Helvetica Neue&q=
uot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;word-break:break-w=
ord;color:#26282a">Linux UVC driver &amp; tools</h2><p class=3D"ydp9f5265a3=
card-description" style=3D"font-size:12px;line-height:16px;margin:0;color:#=
979ba7;word-break:break-word"></p></td></tr></tbody></table></td></tr></tbo=
dy></table></td></tr></tbody></table></a></div><div><br></div><div><br></di=
v><div><br></div><div><a href=3D"https://forum.ubuntu-fr.org/viewtopic.php?=
pid=3D22102415" rel=3D"nofollow" target=3D"_blank" class=3D"enhancr_card_92=
50875391">[r=C3=A9solu]Installation webcam Logitek B525 / Autres types de m=
at=C3=A9riel / Forum Ubuntu-fr.org</a></div><div><br></div><div id=3D"ydpda=
60cdcfenhancr_card_9250875391" class=3D"ydpda60cdcfyahoo-link-enhancr-card =
ydpda60cdcfymail-preserve-class ydpda60cdcfymail-preserve-style" style=3D"m=
ax-width: 400px; font-family: &quot;Helvetica Neue&quot;, &quot;Segoe UI&qu=
ot;, Helvetica, Arial, sans-serif; position: relative;" data-url=3D"https:/=
/forum.ubuntu-fr.org/viewtopic.php?pid=3D22102415" data-type=3D"YENHANCER" =
data-size=3D"MEDIUM" contenteditable=3D"false"><a href=3D"https://forum.ubu=
ntu-fr.org/viewtopic.php?pid=3D22102415" style=3D"text-decoration:none !imp=
ortant;color:#000 !important" class=3D"ydpda60cdcfyahoo-enhancr-cardlink" r=
el=3D"nofollow" target=3D"_blank"><table class=3D"ydpda60cdcfcard-wrapper y=
dpda60cdcfyahoo-ignore-table" style=3D"max-width:400px" cellspacing=3D"0" c=
ellpadding=3D"0" border=3D"0"><tbody><tr><td width=3D"400"><table class=3D"=
ydpda60cdcfcard ydpda60cdcfyahoo-ignore-table" style=3D"max-width:400px;bor=
der-width:1px;border-style:solid;border-color:rgb(224, 228, 233);border-rad=
ius:2px" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><t=
body><tr><td class=3D"ydpda60cdcfcard-primary-image-cell" style=3D"backgrou=
nd-color: rgb(0, 0, 0); background-repeat: no-repeat; background-size: cove=
r; position: relative; border-radius: 2px 2px 0px 0px; min-height: 175px;" =
valign=3D"top" height=3D"175" bgcolor=3D"#000000" background=3D"https://s.y=
img.com/lo/api/res/1.2/E2LCRNRcTAs_.K9yMvg6QA--~A/Zmk9ZmlsbDt3PTQwMDtoPTIwM=
DthcHBpZD1pZXh0cmFjdA--/https://forum.ubuntu-fr.org/img/avatars/1713397.jpg=
?m=3D1544616332.cf.jpg"><!--[if gte mso 9]><v:rect fill=3D"true" stroke=3D"=
false" style=3D"width:396px;height:175px;position:absolute;top:0;left:0;"><=
v:fill type=3D"frame" color=3D"#000000" src=3D"https://s.yimg.com/lo/api/re=
s/1.2/E2LCRNRcTAs_.K9yMvg6QA--~A/Zmk9ZmlsbDt3PTQwMDtoPTIwMDthcHBpZD1pZXh0cm=
FjdA--/https://forum.ubuntu-fr.org/img/avatars/1713397.jpg?m=3D1544616332.c=
f.jpg"/></v:rect><![endif]--><table class=3D"ydpda60cdcfcard-overlay-contai=
ner-table ydpda60cdcfyahoo-ignore-table" style=3D"width:100%" cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td class=3D"ydpda60cdcfca=
rd-overlay-cell" style=3D"background-color: transparent; border-radius: 2px=
 2px 0px 0px; min-height: 175px;" valign=3D"top" bgcolor=3D"transparent" ba=
ckground=3D"https://s.yimg.com/cv/ae/nq/storm/assets/enhancrV21/1/enhancr_g=
radient-400x175.png"><!--[if gte mso 9]><v:rect fill=3D"true" stroke=3D"fal=
se" style=3D"width:396px;height:175px;position:absolute;top:-18px;left:0;">=
<v:fill type=3D"pattern" color=3D"#000000" src=3D"https://s.yimg.com/cv/ae/=
nq/storm/assets/enhancrV21/1/enhancr_gradient-400x175.png"/><v:textbox inse=
t=3D"0,0,20px,0"><![endif]--><table class=3D"ydpda60cdcfyahoo-ignore-table"=
 style=3D"width: 100%; min-height: 175px;" height=3D"175" border=3D"0"><tbo=
dy><tr><td class=3D"ydpda60cdcfcard-richInfo2" style=3D"text-align:left;pad=
ding:15px 0 0 15px;vertical-align:top"></td><td class=3D"ydpda60cdcfcard-ac=
tions" style=3D"text-align:right;padding:15px 15px 0 0;vertical-align:top">=
<div class=3D"ydpda60cdcfcard-share-container"></div></td></tr></tbody></ta=
ble><!--[if gte mso 9]></v:textbox></v:rect><![endif]--></td></tr></tbody><=
/table></td></tr><tr><td><table class=3D"ydpda60cdcfcard-info ydpda60cdcfya=
hoo-ignore-table" style=3D"background-color: rgb(255, 255, 255); background=
-repeat: repeat; background-attachment: scroll; background-image: none; bac=
kground-size: auto; position: relative; z-index: 2; width: 100%; max-width:=
 400px; border-radius: 0px 0px 2px 2px; border-top: 1px solid rgb(224, 228,=
 233);" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"center"><=
tbody><tr><td style=3D"background-color:#ffffff;padding:16px 0 16px 12px;ve=
rtical-align:top;border-radius:0 0 0 2px"></td><td style=3D"vertical-align:=
middle;padding:12px 24px 16px 12px;width:99%;font-family:&quot;Helvetica Ne=
ue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;border-radius:=
0 0 2px 0"><h2 class=3D"ydpda60cdcfcard-title" style=3D"font-size:14px;line=
-height:19px;margin:0 0 6px 0;font-family:&quot;Helvetica Neue&quot;, &quot=
;Segoe UI&quot;, Helvetica, Arial, sans-serif;word-break:break-word;color:#=
26282a">[r=C3=A9solu]Installation webcam Logitek B525 / Autres types de mat=
=C3=A9riel / Fo...</h2><p class=3D"ydpda60cdcfcard-description" style=3D"fo=
nt-size:12px;line-height:16px;margin:0;color:#979ba7;word-break:break-word"=
></p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody>=
</table></a><div class=3D"loadingSpinnerContainer" style=3D"position: absol=
ute; top: 0px; width: 100%; height: 100%; display: flex; align-items: cente=
r; justify-content: center; background-color: rgba(255, 255, 255, 0.3);"><d=
iv class=3D"D_F F_n gl_C ab_C H_6MGW o_h"><div class=3D"W_6MGW H_6MGW D_X a=
h_1PEzoz" data-test-id=3D"loading_indicator"><svg class=3D"W_6MGW H_6MGW ah=
_Zq6hUs" viewBox=3D"0 0 24 24" width=3D"24" height=3D"24"><path class=3D"cd=
PFi_n cZ13pKbK_Z2aVTcY cZ1XO2Ji_dRA c2abBOT_EY cZ1vNhDV_rd cZV8aCd_pI ah_14=
s73" d=3D"M12,22C6.477,22,2,17.523,2,12S6.477,2,12,2"></path><path class=3D=
"cdPFi_n cZ13pKbK_Z2aVTcY cZ1XO2Ji_dRA c2abBOT_EY cZ1vNhDV_rd cZV8aCd_pI ah=
_14s73" d=3D"M12,2c5.523,0,10,4.477,10,10s-4.477,10-10,10"></path></svg></d=
iv></div></div></div><div><br></div><div><br></div><br></div><br></div></di=
v></body></html>
------=_Part_6776578_1819529699.1558629018858--


--===============2107501109418353848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2107501109418353848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============2107501109418353848==--

