Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 346AE51478F
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 29 Apr 2022 12:53:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nkOEW-0003CY-1c; Fri, 29 Apr 2022 10:52:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Constantin.Lotz@ruv-bkk.de>) id 1nkOES-0003CA-86
 for linux-uvc-devel@lists.sourceforge.net; Fri, 29 Apr 2022 10:52:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Message-ID:Date:Subject:To:From:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqL8WHEpS6fy/m0r2kLyl7MTYTatxYO9Gw1KcgfJxL8=; b=hwXr2y+EygS6KYbfOjjAIC5cnt
 VtS0XP+pHwQAx+ws9RQpSzdtrnGQRS625LhaURhIao1f1MKLbXl7dyZRY06+zfAy5cV6aGTJMRo/N
 qrkYoG2BBNF7Wh/zNPGFv+dOFlrhLQ0PEMMlmBaXBrDfqtnPt4NFFromJPy17K2ZVcp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Message-ID:Date:Subject:To:From:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mqL8WHEpS6fy/m0r2kLyl7MTYTatxYO9Gw1KcgfJxL8=; b=W
 JxpK7p185kk/FvpwD9a9vmoAWIi0nbTuJyNMy0p9yRgOqnTaG8n3lHe6CegkXl8HYBeCeUq1wXHxr
 C+BFPBjx5hO3sNQvVNpzUIhsG+aycqeErz9cSmshbP4ktD7HUU8H9yTxrtoZ7v0MmxAe7g58OlpBR
 qD2jCGBuuXD9TWf8=;
Received: from mail-2.ruv-bkk.de ([93.95.132.110])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkOEK-00DlZk-75
 for linux-uvc-devel@lists.sourceforge.net; Fri, 29 Apr 2022 10:52:15 +0000
DKIM-Signature: v=1; c=relaxed/relaxed; d=ruv-bkk.de; s=maile; t=1651228618; 
 bh=mqL8WHEpS6fy/m0r2kLyl7MTYTatxYO9Gw1KcgfJxL8=; h=
 "Subject:Subject:From:From:Date:Date:ReplyTo:ReplyTo:Cc:Cc:Message-Id:Message-Id";
 a=ed25519-sha256; b=
 1y5KcxmTn6Ft1AIktyR8qZjgSRMY2FYyxE3sx3hNqIyT+qvsCSNWFlj0CZJ8Lr5hzBM9FBycn9tn8vjIqhSCDg==
DKIM-Signature: v=1; c=relaxed/relaxed; d=ruv-bkk.de; s=mailr; t=1651228618; 
 bh=mqL8WHEpS6fy/m0r2kLyl7MTYTatxYO9Gw1KcgfJxL8=; h=
 "Subject:Subject:From:From:Date:Date:ReplyTo:ReplyTo:Cc:Cc:Message-Id:Message-Id";
 a=rsa-sha256; b=
 72y18ysIBsYrrdj7U73ykFKX6NqdOUVjWecyaSaMUIrykAEwmwjEoY02L2S01qUrLQjQBid2s1VhaoGWSQ4ICUt22ujloFgqcxmb6PVHWpbE74nUTzt2xPlFDhKXbI+Kqij2HkphTu3BUDcuF3IV/vHe2j2SttLaZKhiCM0WLpMxlB0pbwTWvklVjQnJTW2Tm7sdHnruXqNs30yCgF0ltAoSgOvFlKKmHUr/9CEuT+tARb+isa7k9tVu3Fvn/LOK26rVsJGSWc8DVXTHesrXux218xakcxP/Z+dcy5+JR6xDoO0dX7jC+jK6sIi+QK+72JZEDPBhGx5Q3pDYCNp5QA==
To: "linux-uvc-devel@lists.sourceforge.net"	<linux-uvc-devel@lists.sourceforge.net>
Thread-Topic: AUKEY PC-LM1E 1d6c:0103 not working
Thread-Index: AdhbtCIQijU/hOafTuSb05p8MMCa5g==
Date: Fri, 29 Apr 2022 10:36:52 +0000
Message-ID: <998466ecd0e445d6a2ccc564be53fe06@ruv-bkk.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I've troubleshooting issues with AUKEY PC-LM1E webcams. They
 are not working stable under Ubuntu 18.04+. It seems there are to hardware
 versions. The one with 0c45:636d is working, the reported one 1d [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nkOEK-00DlZk-75
Subject: [linux-uvc-devel] AUKEY PC-LM1E 1d6c:0103 not working
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
From: "Lotz,
 Constantin via Linux-uvc-devel" <linux-uvc-devel@lists.sourceforge.net>
Reply-To: "Lotz, Constantin" <Constantin.Lotz@ruv-bkk.de>
Content-Type: multipart/mixed; boundary="===============0127103511887029398=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============0127103511887029398==
Content-Type: multipart/signed; 
 boundary=NoSpamProxy_61a6063f-33a9-4edc-938c-8e454a97c1c2; 
 protocol="application/pkcs7-signature"; micalg="sha256"
Content-Language: de-DE

--NoSpamProxy_61a6063f-33a9-4edc-938c-8e454a97c1c2
Content-Type: multipart/alternative;
	boundary=_000_998466ecd0e445d6a2ccc564be53fe06ruvbkkde_

--_000_998466ecd0e445d6a2ccc564be53fe06ruvbkkde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I=27ve troubl=65sh=6Fo=74ing =69ssues wi=74h AU=4BEY PC=2D=4CM=31E w=65bca=6D=
=73=2E =54hey a=72=65 n=6Ft worki=6Eg stable =75nde=72 =55bu=6E=74=75 1=38=2E0=
4+.
It seem=73 =74=68er=65 =61=72e =74=6F =68ardwar=65 =76e=72sions=2E Th=65 on=65=
 =77=69t=68 0c=345:636d is =77or=6Bi=6Eg, t=68=65 report=65=64 on=65 =31d=36c:=
010=33 =69=73 =6E=6Ft wor=6Bing =61n=64 =69'=76=65 n=6Ft =79e=74 f=6Fu=6E=64 =
=74he cor=72=65=63t quir=6B=73 or s=65tt=69ng=73.

Tr=69ed w=69=74h:
Opti=6F=6Es uvcvideo t=69=6Deou=74=3D5000
=4Fp=74=69o=6Es u=76c=76id=65o q=75=69=72ks=3D=30x=38=30 || 0x=3100, =30x120
=4Fption=73 =6E=6Fdr=6F=70=3D=31
=41n=64 b=6Cacklisti=6E=67 snd=5F=61udio.=2E.


Ma=69=6E erro=72 i=73:
Apr =329 1=31:0=39:3=39 test=31=32=33 ke=72n=65l=3A =5B  2=358.=37359=33=33=5D=
  =4FT 4 =3C- =58U =33 <- =50U =32 =3C- IT 1
A=70r =32=39 1=31=3A09:3=39 t=65=73t=31=323 k=65rnel: =5B  258.7=33594=35] =75=
sb 1=2D3: =46ound a =76=61=6Cid =76id=65o cha=69=6E (=31 -=3E 4)
Apr =329 =31=31=3A09=3A=344 t=65s=74123 =6B=65rnel: [  2=363.8=337560] =75=76c=
=76ideo 1-3:=31.=31: Fa=69=6Ced =74o se=74 UV=43 prob=65 contro=6C =3A -11=30 =
=28=65x=70=2E =326=29=2E
A=70r 29 11:=309:49 t=65st123 =6B=65=72ne=6C: [  =3268.=39576=305] uvcvid=65o =
1-3=3A=31.=31=3A Fa=69led to qu=65r=79 (129=29 U=56C =70=72obe =63ontrol : -11=
0 (=65=78p. =326).
Ap=72 29 1=31=3A=30=39:=349 t=65st12=33 =6Bernel: =5B  268.957632] uv=63=76ide=
o =31-3:=31.1: Faile=64 to i=6Eitia=6Ciz=65 =74h=65 de=76ic=65 (-5)=2E

=44oe=73 =61nyb=6Fd=79 =68a=73 a=6E i=64ea wh=61t =49 =63ould tr=79 ne=78=74=
=2C or =77hat the iss=75e cou=6C=64 =62=65=3F
Thanks s=6F far,
=43ons=74=61ntin

=53ys=6Cog =6Futp=75t=3A
A=70r 29 11=3A0=39:38 t=65st=312=33 =6B=65=72n=65l: [  258.58=3145=39] usb 1-=
=33: new hi=67h=2Dsp=65ed US=42 de=76=69ce =6Eum=62=65=72 7 u=73i=6E=67 x=68=
=63i=5Fhc=64
Ap=72 29 =311:=30=39:3=39 =74=65=73t1=323 =6Bernel: [  2=358.=3730=3844] u=73=
=62 1-3: Ne=77 =55=53B =64=65=76ice found, =69dVe=6Ed=6F=72=3D=31d=36c, idProd=
uc=74=3D=30103, =62cdD=65=76ice=3D 0.=310
=41=70r 2=39 =311=3A09:3=39 test12=33 ke=72nel: [  25=38.=3730856] usb 1-=33: =
=4E=65w =55=53B device =73tri=6Egs: =4Dfr=3D1=2C P=72o=64uct=3D2=2C =53er=69al=
=4Eum=62=65r=3D3
Ap=72 =329 11:=30=39=3A3=39 =74=65=73t123 =6Ber=6Eel: [  =3258=2E=373=308=36=
=32] =75sb 1=2D3: Pr=6Fd=75ct: =50C-L=4D1=45
Ap=72 =329 11:=309=3A=33=39 =74e=73t=3123 k=65rne=6C: =5B  =3258=2E7308=365=5D=
 =75s=62 1=2D3=3A Manufacture=72=3A PC-=4CM1=45
=41=70r 29 =311=3A0=39=3A3=39 te=73t1=323 k=65rn=65l=3A [  258.730=38=36=39] =
=75=73b 1=2D3=3A S=65=72=69a=6C=4Eumber: P=43=2D=4CM1=45
Ap=72 2=39 =311:=30=39:39 test123 kernel=3A =5B  25=38.733739] =75sb 1-3: =50r=
obing ge=6Eeric =55V=43 devic=65 =33
=41=70=72 29 =31=31:0=39:=33=39 =74est123 =6Be=72=6Ee=6C=3A =5B  25=38=2E=3733=
=39=313=5D =75sb =31=2D=33: =46o=75nd format =4D=4APE=47
Apr 2=39 1=31:09:39 test=31=323 =6B=65rnel=3A [  25=38.=3733921] u=73b =31-3: =
- 1=3280x=37=320 =283=30=2E=30 =66=70=73=29
Ap=72 2=39 =311:09=3A3=39 tes=741=323 k=65rn=65l: =5B  =32=358.=37=333929] u=
=73b 1-3: - 64=30=78=348=30 (30=2E0 =66p=73=29
A=70r 2=39 =311:09:39 =74=65st=3123 =6B=65=72n=65=6C: [  258=2E733938=5D =75=
=73b =31-=33=3A - 1920x=3108=30 (30=2E0 fps)
=41pr 2=39 11:=30=39=3A39 t=65=73=74=3123 ker=6Ee=6C: =5B  25=38.733944=5D u=
=73=62 1-3: - 1280x7=32=30 =28=330.0 fps)
A=70r 2=39 11=3A09=3A39 =74=65=73=74=3123 k=65rnel: =5B  2=35=38.7=333953] usb=
 =31=2D3: Found fo=72=6D=61t =48.264
Ap=72 29 =31=31:=30=39:3=39 =74est=31=323 =6Be=72nel=3A [  =32=35=38.=3733=39=
=35=38=5D us=62 =31-=33: =2D =31=32=380x720 =2830.0 f=70s)
A=70=72 =329 1=31:09=3A=33=39 =74e=73=7412=33 kern=65l=3A [  =325=38=2E733963=
=5D =75sb 1=2D=33: - =36=340x480 (30.0 f=70s)
Apr 29 =31=31:=309:39 tes=74=3123 ke=72n=65=6C=3A [  258.733969] usb 1-3: - 1=
=39=320x108=30 (30.0 =66ps=29
=41p=72 29 =311:09:39 =74es=7412=33 ker=6E=65l: [  =32=35=38.=37=33397=37] =75=
sb =31=2D3=3A =2D =31280x7=320 (3=30.0 f=70s)
=41=70=72 29 11:09=3A=339 t=65=73=74123 kernel=3A =5B  2=35=38=2E=37=33=33=39=
=38=34] u=73b 1-3: =46=6Fun=64 =66orm=61=74 YUV 4=3A2=3A2 =28YUY=56)
Apr 2=39 =311:=30=39:39 te=73=7412=33 k=65r=6Eel=3A =5B  25=38.=373=33=39=391=
=5D us=62 1=2D3: =2D 640=78=34=38=30 (30.0 fps=29
=41pr =329 1=31:09:=339 =74=65s=74123 kern=65l: [  2=358.=37339=396=5D u=73=62=
 1=2D3=3A - 1=32=380x72=30 (30.0 f=70s)
Apr 29 =311:=309:39 t=65st123 kernel: =5B  258.7=3340=31=30] u=73b =31=2D3=3A =
Fou=6Ed =61 =53=74=61tus =65ndp=6F=69nt (=61ddr =38=31=29
Apr 29 =311=3A09:3=39 =74est1=323 =6B=65=72=6Ee=6C: [  258.=37=334021=5D =75sb=
 1-3=3A F=6Fund =55VC 1.00 dev=69ce PC-LM1E (1d6c:0103=29
Apr 2=39 11:0=39:=33=39 te=73t=3123 =6Bernel: [  258=2E=373=34034] us=62 =31=
=2D3=3A Ad=64=65d co=6Et=72o=6C 0000000=30-=300=30=30-=30000-=30000-00=300000=
=300=3001=2F=32 to =64evice 3 e=6E=74ity 1
=41pr 2=39 11=3A09=3A=339 t=65s=74123 k=65rne=6C=3A [  25=38.734=3224=5D usb 1=
-3: Add=69n=67 ma=70ping 'Expo=73=75r=65, =41=75to=27 t=6F =63on=74=72=6F=6C =
=30000=3000=30-0000=2D00=300-0000-=3000000000001/=32
Apr 29 1=31=3A09:3=39 tes=741=323 kernel: [  258.73=34237] usb =31=2D3: Adde=
=64 contr=6Fl 0=300000=30=30=2D0=30=300=2D=300=300-0000-=30=30000=30=30000=301=
/3 t=6F de=76ic=65 3 ent=69ty =31
=41pr =329 =311=3A09:39 t=65st12=33 ker=6Eel: [  =325=38.7344=32=37] usb =31-3=
: =41=64ding =6Dappi=6Eg =27=45xpo=73=75=72=65, Au=74=6F Pr=69or=69ty' =74=6F =
c=6F=6Et=72o=6C 0=3000000=30-0000-=30000-=3000=30-000=300=30=30=3000=301=2F3
Apr =329 11:09=3A=339 tes=7412=33 =6B=65=72=6Eel: [  258=2E7=33=34438=5D usb 1=
-3: A=64=64ed control 000=30=30000-=30000=2D=30000=2D0=300=30-0=30=300000=3000=
=301/=34 to =64=65=76ice 3 =65n=74=69t=79 1
=41pr 29 =311:09:39 tes=741=323 ker=6E=65=6C: =5B  2=358.73457=38] u=73b 1=2D=
=33: A=64di=6Eg m=61ppin=67 '=45x=70os=75=72e (Abso=6Cute)' =74o c=6Fn=74rol =
=30000000=30=2D000=30=2D=3000=30-0000-=30=300=30=30000=30001/4
=41p=72 =32=39 1=31:=309:39 t=65st123 =6Berne=6C=3A [  2=358.73=345=386] =75s=
=62 1-=33: =41=64=64=65d co=6Etr=6Fl 000000=300-0000-=30000=2D=30=30=300-=30=
=300=30=300000=310=31=2F=32 t=6F dev=69=63e 3 e=6E=74=69ty 2
=41p=72 =32=39 1=31=3A0=39:3=39 tes=741=323 ke=72nel=3A =5B  25=38.734=37=32=
=33] usb 1-=33: A=64ding =6Da=70=70=69ng 'Br=69g=68tness' to =63ont=72=6F=6C 0=
00=300000-=30=300=30-00=300-=30=30=300-0000=30=30=300010=31/2
=41p=72 =32=39 11=3A=30=39:39 test12=33 =6Be=72nel=3A [  =32=358.=3734=37=32=
=38] u=73b =31-3=3A =41dded =63ontr=6Fl 00=3000=30=30=30-=300=30=30=2D0000-=30=
0=30=30=2D=300=3000=30=3000101=2F=33 to d=65vice 3 e=6Etity =32
=41=70r 2=39 11:=309:39 test=3123 k=65rne=6C: =5B  25=38=2E=373=34912=5D =75=
=73=62 1-3: A=64d=69=6Eg mapp=69ng =27=43=6Fntra=73=74=27 t=6F =63=6Fnt=72ol 0=
00=30=3000=30-=30=300=30-0=3000-0000-00=30=300=30000101=2F3
A=70r 29 11:09:39 test=31=323 =6Bernel: [  2=358=2E734923=5D =75=73=62 =31-3: =
=41dded control 0000000=30=2D=30=3000=2D00=30=30-=30=30=300-=300=30000=30=30=
=30101/=37 to de=76i=63e 3 =65ntity =32
Ap=72 29 =31=31:0=39:=33=39 t=65=73t=31=32=33 kern=65=6C: =5B  =32=35=38.73511=
=36=5D usb 1=2D3: A=64d=69=6Eg ma=70ping '=53=61=74ur=61=74=69on' to c=6Fn=74r=
=6Fl 0=300=300=300=30-0000-0=3000-0=3000-00=30=30=30=300=30010=31/=37
Ap=72 29 11=3A09:3=39 =74=65=73t12=33 ke=72=6Eel: =5B  2=358=2E735127] usb 1=
=2D=33: A=64d=65d con=74ro=6C 0=300000=30=30=2D0=3000-0=300=30-0=3000=2D=300=
=300=3000=3001=301/=38 t=6F =64e=76ic=65 3 en=74ity 2
Apr =32=39 11=3A=309:=339 te=73t=31=323 =6B=65rne=6C=3A =5B  258=2E735=33=316=
=5D =75sb =31-=33: Ad=64=69n=67 ma=70pi=6Eg 'Shar=70n=65ss=27 to control 0=30=
=300000=30=2D0=30=300=2D000=30-0=300=30-000000=300=3010=31/8
Apr 29 =31=31:09:39 te=73=74=312=33 k=65rnel: [  25=38.7=335327] =75=73=62 1-=
=33=3A =41dde=64 co=6Et=72ol 000=30000=30-00=30=30=2D0=3000=2D000=30=2D0=30000=
=300001=301/10 to =64evi=63=65 =33 =65nti=74y 2
=41pr 29 =311:09:39 =74es=74123 k=65rne=6C: [  25=38.=37355=315] us=62 1=2D=33=
: Add=69ng m=61pping =27Whit=65 B=61=6Can=63e Te=6Dper=61tur=65=27 t=6F c=6Fnt=
ro=6C 0000=30000=2D=30=300=30=2D=3000=30-=30000-00=30000000101/1=30
Apr 29 11:09=3A39 te=73t123 kernel: [  25=38.7=3355=32=36] u=73=62 1=2D=33: =
=41=64=64ed co=6Et=72ol 0=30=3000=3000-0=3000-00=300-0=300=30-0=30=30=3000000=
=3101/4 t=6F devic=65 3 =65nt=69=74y =32
Apr 29 =31=31:=309:=339 t=65st12=33 ke=72nel: [  2=358=2E=37356=362] usb 1-3=
=3A =41dd=69ng m=61=70=70=69ng =27Gain' to co=6Etr=6F=6C 0=30=30=300=300=30=2D=
=30000=2D0=3000-0000-0000000=300101=2F4
Apr 2=39 1=31:09:39 =74=65s=741=32=33 =6Ber=6E=65=6C=3A [  258.735669] usb 1=
=2D=33: A=64=64=65d =63o=6E=74r=6Fl 00=3000=30=300-0000-=30=30=300-0=3000=2D00=
000000=301=30=31=2F5 =74o devi=63e 3 =65nt=69=74=79 =32
Apr 29 11:=309:3=39 t=65st=3123 k=65r=6E=65l: [  =325=38.735=378=36] =75s=62 =
=31-3: Addin=67 =6Da=70=70=69ng 'P=6F=77=65=72 Line Frequ=65=6Ecy' t=6F =63o=
=6E=74rol 0=3000=30=30=300-000=30=2D=300=30=30-000=30-00=300=3000001=301/5
=41pr 2=39 =31=31:=309:=33=39 test=31=323 =6B=65r=6E=65l=3A [  258.7=3357=391]=
 us=62 1-3: =41=64=64ed =63o=6Et=72=6Fl 0=300000=300-0000-0=30=300-=30=30=300=
=2D0000000=3001=30=31/11 =74=6F =64e=76=69c=65 =33 =65nt=69ty 2
=41pr =329 =31=31=3A09=3A39 t=65st1=323 ker=6E=65=6C: =5B  2=358.=3735923=5D u=
s=62 =31-3: =41d=64ing m=61=70=70ing =27W=68i=74e Ba=6C=61=6Ec=65 Te=6Dp=65r=
=61t=75=72e, Au=74o=27 to c=6F=6Etrol 00=300=3000=30-0000=2D=3000=30-=30=3000-=
00000=30=3000101=2F11
=41=70=72 29 11=3A09:3=39 =74=65st123 ke=72ne=6C: =5B  =325=38.735930] u=73b 1=
=2D3: Scan=6E=69ng UV=43 cha=69n:
Ap=72 =329 11=3A09:3=39 te=73t12=33 =6Ber=6Ee=6C: =5B  25=38.735=3933]  OT 4 =
=3C- XU =33 <- PU 2 <- =49T 1
Apr 2=39 =311:09:3=39 t=65st123 k=65r=6E=65=6C: [  =325=38.7=33=35945=5D usb 1=
-3=3A F=6Fu=6E=64 a val=69=64 vi=64e=6F chain (1 -> =34)
Apr 2=39 =31=31:=309:=34=34 =74e=73t1=32=33 =6Bernel: [  =326=33=2E837560] u=
=76cvideo 1-3=3A1.1: =46=61=69l=65d to s=65t =55V=43 prob=65 co=6Etrol =3A -1=
=31=30 (exp. =326).
=41pr 2=39 11=3A0=39:49 t=65=73t1=323 ke=72=6Eel=3A [  2=36=38.=395=37605] u=
=76cvid=65o =31=2D3=3A1.1: =46aile=64 to query (=31=329=29 =55VC probe control=
 =3A -110 (ex=70. =32=36)=2E
Apr 29 1=31=3A0=39:49 t=65=73t123 =6Be=72=6E=65=6C: [  =3268=2E=395763=32=5D =
=75=76=63v=69=64eo 1=2D=33=3A1.=31=3A Fa=69=6Ced t=6F =69n=69tia=6C=69ze th=65=
 devi=63=65 (-5)=2E
=41pr 29 11:09=3A49 t=65st=3123 mt=70-probe: =63h=65ck=69ng =62u=73 =31, de=76=
=69ce 7: "/sys/=64evices/pc=69=30000:=30=30/000=30:=30=30:=314.0/usb=31/1=2D3=
=22
Ap=72 2=39 11:0=39:49 tes=741=323 mtp-=70ro=62=65=3A bus: 1, device: 7 wa=73 =
=6Eo=74 an MT=50 d=65vice
Apr 2=39 11=3A09:=349 te=73t1=323 m=74p-=70r=6Fbe: che=63k=69n=67 bus 1=2C dev=
ice =37: "/sy=73/=64=65vice=73/=70ci00=300=3A=30=30/0000:0=30:=314.0=2F=75=73b=
1/=31-3"
A=70=72 2=39 1=31=3A=309=3A4=39 =74e=73=741=323 mt=70-probe: b=75=73=3A =31=2C=
 dev=69ce: 7 =77a=73 =6E=6Ft an MT=50 devi=63=65
A=70r =32=39 11=3A09=3A49 t=65=73t123 c=68=65=65s=65=5B25=315=5D=3A =4E=61t=69=
v=65 Windows tal=6Ce=72 than =36=35=353=35 pixels a=72e =6Eot =73up=70or=74ed
=41p=72 29 11:09=3A49 test123 che=65=73e[2=351=35]: =63heese-a=70pl=69c=61t=69=
=6F=6E.va=6Ca:=3222: Err=6F=72 d=75ring c=61mera set=75p: =4Eo =64ev=69ce =66o=
=75=6Ed
Ap=72 =32=39 11=3A=309=3A49 =74est1=32=33 ch=65=65=73e[251=35]: cheese=5F=63am=
er=61=5F=64=65v=69ce=5Fget=5Fnam=65: a=73se=72tio=6E 'C=48=45=45S=45=5F=49=53=
=5F=43=41=4D=45RA=5F=44=45=56=49CE (d=65vi=63e=29=27 failed
Ap=72 =329 11:09:=349 test123 =63=68ee=73=65[2=35=315=5D: g=5F=76=61=72i=61nt=
=5Fnew=5Fstri=6Eg=3A =61=73=73er=74i=6Fn '=73trin=67 !=3D NULL' =66aile=64
Ap=72 =32=39 11:=309=3A=34=39 test1=323 che=65=73e[2515=5D=3A g=5F=76=61riant=
=5F=72e=66=5Fs=69=6Ek: assert=69on 'v=61lue !=3D =4E=55=4C=4C=27 failed
=41p=72 29 =31=31:=309:4=39 =74=65st=312=33 che=65se[=32515=5D: =67=5Fsett=69n=
gs=5F=73ch=65=6Da=5Fk=65y=5Ftype=5Fcheck=3A =61ss=65=72=74ion '=76=61=6Cue !=
=3D N=55L=4C=27 =66aile=64
=41p=72 =329 11=3A=309:49 test123 c=68ees=65=5B2515=5D=3A =67=5Fv=61r=69an=74=
=5F=67=65t=5F=74y=70e=5Fst=72i=6Eg: a=73=73e=72t=69o=6E 'va=6Cu=65 =21=3D =4EU=
LL=27 fa=69=6C=65=64
Apr =32=39 =311:09=3A4=39 =74est123 cheese[25=31=35]=3A g=5Fset=74i=6E=67=73=
=5Fset=5Fvalue: key 'cam=65ra' in =27o=72=67.gno=6D=65=2ECh=65e=73e' =65x=70ec=
ts t=79pe '=73=27, but a GVaria=6E=74 of =74ype =27=28n=75=6C=6C)' =77as given
A=70=72 29 11=3A09=3A4=39 =74est12=33 =63heese[2=35=315=5D: g=5Fva=72i=61=6Et=
=5Fun=72ef=3A =61s=73=65rti=6Fn 'value !=3D N=55=4CL=27 fa=69=6Ced
A=70r 29 =31=31:0=39=3A49 test12=33 chees=65=5B251=35]=3A che=65se=5Fprefere=
=6E=63=65s=5Fdia=6Co=67=5Fse=74=75p=5Fresolut=69ons=5Ffo=72=5Fd=65vice: ass=65=
r=74=69on '=64evic=65 !=3D =4EULL' failed
=41pr 29 =31=31:=309:49 tes=74=312=33 g=6E=6Fme-=73hell=5B=39=387]: Coul=64 no=
t cr=65=61te transien=74 sc=6Fp=65 =66=6Fr =50ID =30=3A =47DBu=73.Er=72or:o=72=
g.=66=72eed=65s=6Bto=70.sy=73=74emd1=2E=55n=69=74=45xi=73ts: Unit app-gnome=2D=
=6Frg.=67n=6F=6D=65.C=68e=65se=2D0.sc=6Fpe =61=6C=72ea=64y exi=73ts.
Ap=72 =32=39 1=31=3A09:55 te=73=74123 =63hee=73=65=5B2=35=315=5D: U=6E=61=62=
=6Ce t=6F create du=6D=6Dy =6F=6E=73=63reen=3A =4E=6F =66or=65i=67=6E surfa=63=
=65, a=6E=64 w=6C=5Fs=68ell =75ns=75=70=70o=72t=65d =62y =74=68=65 c=6Fmposi=
=74=6Fr

Lsusb=3A

Bus 001 De=76ice 01=32=3A I=44 1d6c:01=303 PC-L=4D1E PC=2D=4CM1E
Device Desc=72ip=74or:
  =62=4Ceng=74h                18
  bD=65scr=69pto=72T=79=70=65         1
  =62=63=64USB               2=2E0=30
  bDevic=65=43=6C=61s=73          2=33=39 =4Di=73cellaneou=73 =44evic=65
  =62De=76iceSub=43lass         =32
  =62=44=65v=69cePr=6F=74oco=6C         1 Int=65=72fac=65 As=73o=63i=61=74ion
  bMax=50acket=53=69ze=30        64
  i=64Ve=6Edor           0=781d6=63
  i=64Prod=75ct          =30=7801=303
  bcd=44ev=69ce            0.10
  iM=61n=75facture=72           1 =50C=2DL=4D=31E
  iProdu=63=74                2 =50C-LM=31E
  =69S=65rial                 3 P=43-L=4D=31E
  b=4EumConfigura=74=69on=73      1
  C=6F=6E=66=69guration Des=63r=69ptor:
    b=4Cen=67th                 =39
    =62De=73criptorType         2
    =77TotalLe=6Eg=74=68       0x=302be
    b=4Eum=49n=74=65=72f=61ces          4
    bC=6Fn=66i=67urat=69o=6E=56alu=65     =31
    =69Con=66i=67ura=74=69on          4 =63o=6Ef=69g
    b=6DA=74=74rib=75tes         0x80
      =28=42=75=73 Pow=65red)
    MaxPow=65r              =35=300=6DA
    =49=6Eterfac=65 =41s=73o=63=69=61=74io=6E=3A
      bLe=6Egt=68                 8
      bD=65sc=72ip=74o=72=54yp=65        =311
      bFir=73=74=49nte=72=66ace         =30
      bIn=74e=72fac=65Co=75=6E=74         2
      =62Function=43lass         =31=34 V=69=64e=6F
      =62F=75nc=74i=6F=6E=53=75b=43la=73=73       3 Video I=6Et=65r=66ace Col=
=6Cect=69o=6E
      bF=75n=63=74i=6FnPr=6Ft=6Fco=6C       0
      =69Functi=6F=6E               =35 PC-L=4D=31E
    Interface =44es=63=72i=70=74o=72:
      bLength                 9
      =62=44=65sc=72ipt=6F=72T=79pe         4
      b=49nte=72faceNum=62er        =30
      b=41=6C=74er=6Ea=74eSe=74t=69ng       0
      bN=75m=45=6E=64poin=74s           1
      =62Int=65r=66a=63e=43lass        =31=34 Video
      bI=6E=74e=72=66=61ceS=75=62Class      1 V=69=64=65o =43=6F=6Etrol
      bInterface=50r=6Ftocol      =30
      =69In=74=65=72fa=63e              5 =50=43-L=4D1=45
      VideoC=6Fntrol I=6Eter=66ace De=73cr=69=70tor=3A
        bLength                =313
        =62D=65=73cr=69p=74orT=79pe        3=36
        bDe=73cr=69ptor=53u=62ty=70e      1 =28H=45ADE=52=29
        bc=64UVC               1.=300
        w=54o=74al=4C=65=6Eg=74=68       0=780=304=66
        d=77Clo=63=6B=46req=75=65=6Ecy       =348=2E00000=30M=48z
        b=49=6ECollectio=6E           =31
        =62aInt=65rfaceNr( =30)       =31
      =56ide=6FCon=74r=6F=6C I=6Ete=72=66ace D=65s=63=72=69ptor:
        bLe=6Egth                1=38
        bDesc=72i=70torTyp=65        36
        b=44es=63ript=6FrS=75=62t=79=70=65      =32 =28I=4EPUT=5F=54=45RM=49=
=4E=41=4C)
        bTer=6D=69=6Ea=6C=49=44             1
        w=54=65rm=69nalTyp=65      0x020=31 Cam=65ra Se=6Eso=72
        b=41=73socT=65r=6Din=61=6C          0
        iTerm=69=6E=61l               0
        w=4Fbj=65=63=74i=76eFo=63alL=65ng=74h=4Di=6E      =30
        wObj=65cti=76=65Foca=6CLen=67=74h=4D=61x      =30
        wOcul=61r=46o=63a=6C=4C=65ngt=68            0
        =62=43=6FntrolS=69=7A=65                  3
        bm=43=6F=6Etr=6Fls           0=78=3000=30000=65
          Au=74o-=45=78p=6Fs=75=72=65 =4Dode
          =41uto-Expo=73=75=72e =50rio=72it=79
          Ex=70os=75re T=69=6De =28=41bs=6Fl=75te)
      V=69d=65oCont=72ol =49=6Eterface =44e=73=63=72i=70tor:
        bLe=6Egth                11
        bD=65scri=70t=6FrTyp=65        =336
        b=44e=73=63=72i=70=74or=53u=62ty=70=65      5 (P=52O=43ES=53I=4EG=5FUN=
=49T=29
      W=61=72ning: Des=63riptor too s=68=6F=72=74
        =62Uni=74ID                 2
        b=53o=75r=63e=49D               =31
        w=4Da=78M=75ltipli=65r          0
        bControl=53i=7Ae            2
        bmControls     =30x0000165b
          B=72=69=67=68=74=6Eess
          Co=6E=74rast
          =53at=75=72at=69on
          Sh=61=72pnes=73
          Wh=69t=65 B=61l=61n=63e Temp=65=72a=74ure
          =47ain
          Powe=72 Line F=72equen=63y
          Whi=74=65 B=61la=6Ece =54=65=6D=70=65r=61tu=72e, =41=75=74o
        i=50rocessing             0
        bmVid=65=6FStand=61rds     =30x1c
          PA=4C - 625/50
          =53=45CAM - 62=35=2F50
          NTS=43 =2D 625/=35=30
      Vide=6FC=6Fn=74=72ol In=74er=66ace =44e=73cr=69=70=74or:
        =62=4Cength                2=38
        b=44=65s=63riptor=54ype        =336
        =62De=73=63r=69p=74=6Fr=53ub=74ype      6 (=45=58TENS=49=4FN=5FU=4EI=
=54)
        b=55nit=49=44                 =33
        guidE=78=74=65=6E=73=69onCode         {a=329=657641-de04-4=37e=33-=38b=
2b-=664341=61ff=38=3888}
        =62N=75mContro=6Cs           19
        =62N=72InPi=6E=73               =31
        b=61=53our=63eID=28 0)          2
        b=43=6F=6Et=72=6F=6C=53=69=7Ae            =33
        bm=43=6Fntr=6F=6C=73( 0)       0xf=66
        bmCo=6Etro=6C=73( =31=29       =30xf=66
        b=6DCon=74=72=6Fls( 2=29       0x=307
        =69=45xtens=69=6F=6E              0
      =56=69deo=43=6Fnt=72=6Fl =49nterfac=65 De=73cr=69p=74or=3A
        bLengt=68                 =39
        b=44e=73=63rip=74or=54yp=65        3=36
        =62D=65scripto=72S=75b=74=79pe      3 =28O=55=54=50U=54=5F=54ERMINAL=
=29
        bTe=72=6D=69na=6CID             =34
        =77=54e=72mi=6Ea=6CType      =30x=30=3101 USB S=74=72eam=69ng
        bA=73=73o=63=54e=72=6Dinal          0
        bSou=72ceID               =33
        =69=54er=6D=69=6E=61l               0
      E=6E=64=70=6F=69nt De=73c=72ipto=72=3A
        =62=4Ce=6E=67th                 7
        bDescripto=72T=79p=65         =35
        bEndpo=69=6Et=41=64=64ress     =30x=381  EP 1 I=4E
        bmAt=74=72ibut=65s            =33
          Tran=73fe=72 =54yp=65            Inte=72ru=70t
          Synch Type               No=6Ee
          U=73age T=79pe               =44at=61
        w=4D=61xPa=63ke=74Si=7A=65     =30=7800=340  1=78 64 by=74e=73
        bInterval               8
    =49nte=72f=61c=65 Des=63ript=6F=72:
      =62L=65=6E=67th                 9
      bDescr=69ptorT=79=70e         4
      b=49n=74=65=72f=61=63eNum=62er        =31
      =62=41=6C=74er=6E=61te=53et=74in=67       0
      bNu=6DEnd=70=6Fi=6E=74s           0
      bInter=66ac=65Cl=61ss        14 V=69deo
      b=49n=74er=66aceSu=62=43la=73=73      2 =56=69d=65=6F =53tr=65=61ming
      =62I=6EterfacePr=6F=74oco=6C      0
      iInte=72=66=61ce              0
      V=69=64=65oStr=65=61min=67 =49nterface =44e=73crip=74o=72:
        bLe=6Egt=68                            =316
        =62De=73=63ripto=72Typ=65                    36
        =62D=65s=63ripto=72Sub=74=79pe                  1 (IN=50UT=5FH=45AD=45=
R)
        bNu=6D=46ormats                         3
        wTota=6CLe=6E=67th                   0=7801ac
        =62End=70o=69ntAddr=65=73s                 0x=383  =45=50 3 IN
        bm=49n=66o                              0
        bTermi=6EalLi=6E=6B                       =34
        bStill=43=61ptureM=65tho=64                 0
        bTrig=67erSupport                     0
        =62Tri=67=67erUsa=67=65                       =30
        bC=6F=6Et=72olS=69ze                        1
        b=6DaC=6Fn=74=72o=6C=73( 0=29                     =30
        bm=61=43ontro=6Cs=28 =31=29                     0
        =62maCon=74ro=6Cs( 2)                     =30
      Vi=64=65oS=74re=61m=69=6Eg I=6Et=65rface D=65=73cri=70t=6Fr=3A
        bLe=6E=67th                            11
        =62D=65=73criptorTy=70e                    =336
        =62De=73c=72i=70t=6F=72Subtyp=65                  6 =28F=4F=52MA=54=5F=
=4DJP=45=47)
        b=46=6F=72mat=49=6Edex                        1
        bNum=46rameDescr=69=70tors                4
        bFlags                              0
          =46=69xed-size sampl=65s: No
        b=44efau=6C=74=46ram=65I=6Ed=65x                  1
        bAs=70=65ctR=61ti=6F=58                       0
        =62A=73pect=52=61ti=6FY                       =30
        bm=49=6E=74=65rlace=46lag=73                 0x=300
          =49nte=72=6Cace=64 stream or =76ari=61ble: No
          F=69eld=73 per fra=6De: 1 fields
          Fiel=64 =31 =66=69rst=3A No
          =46=69e=6C=64 pattern: =46ie=6Cd 1 on=6Cy
        =62C=6FpyPr=6Ftec=74                        0
      V=69=64=65oS=74=72eam=69n=67 Inter=66ace =44es=63=72=69p=74=6Fr:
        bL=65ng=74=68                            3=34
        =62Descr=69ptorT=79=70=65                    =336
        b=44e=73cr=69=70t=6FrSubty=70e                  7 (F=52=41M=45=5F=4DJP=
=45G)
        bFram=65Inde=78                         =31
        =62mCa=70abil=69t=69=65s                   0x=300
          =53t=69ll imag=65 =75=6Esu=70=70o=72te=64
        wWid=74h                           1280
        =77Heig=68t                           =37=320
        dwMinB=69=74Rat=65                 1843=3200=30
        =64wMa=78=42i=74Rate                 5=352=396000
        =64=77MaxVide=6FFr=61meBuffe=72=53=69=7Ae     184=332=30=30
        =64=77=44=65fau=6C=74Fra=6DeI=6E=74e=72v=61l         3=3333=333
        b=46=72am=65I=6E=74=65=72va=6C=54=79=70=65                  =32
        dwFram=65=49=6Et=65rval( 0)            =33=333=3333
        dwFr=61meInte=72v=61l( 1)            400000
      =56i=64e=6F=53=74re=61=6D=69=6E=67 =49n=74e=72fac=65 De=73=63r=69p=74or=
=3A
        bLength                            34
        bDes=63ript=6F=72Type                    3=36
        =62Descrip=74=6Fr=53ubt=79pe                  7 (=46RAME=5F=4DJP=45G)
        b=46=72=61meI=6Edex                         =32
        bmC=61p=61=62il=69ti=65s                   =30=7800
          =53=74ill im=61=67=65 un=73u=70p=6Fr=74ed
        wW=69d=74h                            640
        wH=65ight                           =3480
        dw=4Din=42itRat=65                 1=38=3432=3000
        d=77Ma=78Bi=74Rat=65                 5=352=396000
        dwMaxVi=64eoFr=61me=42uff=65r=53=69ze      614400
        d=77Def=61ul=74=46rameInterv=61l         3=333=333=33
        bFrameIntervalTy=70=65                  2
        dwFra=6D=65I=6Ete=72val=28 0)            3=33=3333=33
        dwFr=61meIn=74=65rval( 1=29            4=300=3000
      Vide=6FS=74reaming =49=6Ete=72fac=65 De=73=63=72=69pto=72:
        bLe=6E=67=74h                            =334
        bDe=73=63ripto=72Typ=65                    =336
        b=44=65scrip=74o=72Subtype                  7 (FRA=4D=45=5FMJ=50E=47)
        b=46r=61m=65=49=6E=64ex                         3
        b=6D=43apabil=69ties                   =30x0=30
          S=74i=6Cl i=6Dag=65 =75=6Esuppor=74ed
        wWidth                           =31920
        wHeight                          10=38=30
        d=77=4DinBitRa=74e                 1=38=343200=30
        dwMaxB=69=74Rat=65                 5529=36000
        dwM=61=78Vi=64e=6FF=72a=6DeBuf=66e=72S=69=7A=65     41=347200
        dwDefaul=74=46ra=6D=65I=6Eterval         333=333=33
        bFra=6D=65Inter=76alT=79=70e                  =32
        dwFra=6DeI=6Eterval( 0)            3=33333=33
        =64wFrameI=6Eterva=6C( =31)            40=3000=30
      =56i=64eo=53trea=6D=69=6Eg Interf=61ce Descri=70tor:
        =62Len=67th                            34
        =62De=73c=72ip=74orTyp=65                    36
        b=44escri=70=74orSubty=70=65                  7 =28FRAME=5F=4DJPEG)
        =62=46=72=61=6DeInd=65x                         =34
        b=6D=43ap=61=62=69lities                   =30x0=30
          =53=74i=6C=6C =69mage u=6Esu=70=70o=72=74ed
        =77Widt=68                           1=328=30
        wHe=69ght                           7=320
        dw=4Din=42itRate                 =318=3432=30=30=30
        =64=77=4Dax=42itRa=74=65                 552=39=36=3000
        dwMaxVideoFrameBu=66ferS=69z=65     =31843=3200
        d=77DefaultF=72a=6D=65Inter=76a=6C         333=3333
        bFra=6DeIn=74erv=61=6CType                  2
        =64wFr=61=6DeInte=72v=61=6C( 0)            33=333=333
        dwF=72am=65=49=6E=74er=76=61l=28 =31)            4=300000
      Vide=6FStr=65ami=6Eg =49nterf=61=63e =44esc=72ipt=6Fr:
        =62L=65=6Egth                            28
        b=44=65=73cr=69=70torTy=70=65                    =336
        b=44e=73crip=74o=72Su=62typ=65                 16 (FO=52MAT=5FFR=41M=
=45=5F=42ASED=29
        =62Form=61t=49n=64ex                        2
        bNumF=72a=6D=65=44=65s=63=72ip=74=6Fr=73                4
        guid=46=6F=72m=61t                            {343=36=332=34=38-0000-0=
=3010-800=30-0=30aa0038=39b7=31}
        =62=42itsPe=72Pixel                      1=36
        b=44efa=75ltFram=65=49=6Ede=78                  =31
        bA=73pe=63tR=61=74=69oX                       =30
        bA=73=70ect=52=61=74=69=6FY                       0
        bmIn=74=65rla=63eF=6Ca=67=73                 0x00
          I=6Ete=72la=63ed =73trea=6D or =76=61riable=3A No
          F=69elds per =66r=61=6De: 2 =66=69elds
          =46i=65ld =31 f=69r=73t=3A =4E=6F
          Fi=65=6Cd pattern: F=69=65ld 1 =6Fnl=79
        =62Copy=50=72=6Ft=65=63=74                        0
        =62=56a=72i=61bl=65=53i=7A=65                     1
      Vi=64=65=6FSt=72eaming I=6E=74er=66ac=65 =44e=73c=72ip=74or:
        =62Len=67th                            34
        bDescrip=74o=72T=79p=65                    =336
        b=44escr=69p=74o=72S=75b=74yp=65                 17 =28F=52=41=4DE=5FF=
RAME=5F=42ASE=44)
        bFrame=49=6E=64e=78                         =31
        =62m=43ap=61b=69lit=69=65s                   0x=300
          =53=74ill imag=65 u=6Esuppo=72=74ed
        w=57id=74h                           1=328=30
        =77H=65ight                           720
        =64wMi=6EBitR=61te                 184=332=3000
        =64=77=4DaxB=69tRat=65                 =3552960=300
        =64wDefaul=74=46rame=49=6Et=65rval         =3333=3333
        =62Fra=6D=65Int=65=72val=54=79pe                  2
        =64wBytesPerLi=6E=65                      =30
        dwFrameIn=74e=72val( =30)            =3333333
        =64=77=46rame=49n=74erv=61l( 1)            =34000=300
      Vi=64eoStre=61=6Ding =49=6Ete=72fac=65 De=73cript=6Fr:
        b=4Cengt=68                            34
        =62De=73cri=70to=72Type                    =336
        bD=65=73c=72i=70tor=53=75b=74=79=70e                 =317 =28=46RAME=
=5FFRA=4DE=5FBASED)
        bFra=6De=49nde=78                         2
        b=6DCa=70a=62il=69ti=65s                   0x0=30
          =53t=69=6C=6C =69mage =75nsuppor=74ed
       wWi=64=74=68                            =364=30
        wHe=69g=68t                           4=38=30
        dwMi=6EBi=74R=61=74e                 =31=38432000
        dwMa=78=42it=52=61=74e                 5=35=329600=30
        dwDefau=6CtF=72am=65=49n=74=65r=76al         3=333333
        =62Fr=61meIn=74=65r=76al=54=79p=65                  2
        =64w=42ytes=50e=72=4C=69ne                      0
        =64=77=46=72ame=49nte=72=76al( =30)            3=33333=33
        =64wFr=61=6DeIn=74=65=72v=61=6C=28 1=29            4000=300
      Vid=65=6FStreaming I=6E=74er=66ace =44esc=72i=70=74=6Fr:
        =62Len=67t=68                            =334
        bDe=73cr=69ptorTy=70e                    3=36
        b=44escr=69ptorS=75bty=70=65                 17 (F=52A=4DE=5FFRAME=5FB=
ASED)
        bF=72=61meIndex                         3
        =62mC=61pa=62i=6Cities                   =30x00
          Sti=6Cl =69=6Dage uns=75p=70or=74=65=64
        =77W=69d=74h                           192=30
        =77He=69ght                          108=30
        dw=4D=69=6EBi=74R=61=74e                 18=34=33=320=30=30
        dwMa=78BitRate                 5529600=30
        dwDefa=75lt=46=72a=6De=49=6Eterv=61l         333=3333
        bFram=65=49n=74erva=6CType                  2
        dwByt=65sP=65rLi=6Ee                      0
        =64w=46=72am=65I=6E=74e=72=76al( 0)            333333
        dw=46=72=61=6D=65I=6Ete=72=76al( =31)            40=30=30=300
      =56id=65=6FSt=72e=61m=69ng =49n=74=65=72=66ace =44esc=72=69=70=74or:
        bLe=6E=67t=68                            34
        =62D=65sc=72iptorTyp=65                    3=36
        bD=65=73c=72=69pto=72Subtype                 17 (F=52A=4DE=5FFRA=4D=45=
=5FB=41S=45D)
        =62F=72a=6De=49n=64=65x                         4
        bm=43=61=70abilitie=73                   0=78=300
          =53t=69ll image unsu=70po=72=74e=64
        =77Width                           1=3280
       wHeig=68t                           720
        =64=77MinBit=52a=74=65                 =318432=3000
        dwM=61x=42=69tR=61te                 552960=30=30
        =64w=44efau=6Ct=46ram=65=49n=74e=72va=6C         333333
        b=46ra=6De=49nte=72valType                  2
        =64=77Bytes=50=65r=4C=69ne                      0
        =64wFr=61m=65=49n=74=65=72=76al=28 0=29            =333=3333=33
        =64wFr=61meInte=72=76=61l( 1=29            400000
      =56i=64eo=53=74reaming Int=65rface Desc=72ip=74=6F=72:
        b=4C=65ngth                            27
        =62De=73cri=70t=6Fr=54y=70=65                    3=36
        b=44es=63r=69ptorSub=74ype                  4 =28FORM=41T=5FUNCOMPRESS=
=45=44=29
        b=46o=72m=61tIndex                        =33
        bNu=6DFr=61me=44e=73c=72=69=70tor=73                2
        g=75id=46o=72=6D=61t                            {32=3595=3559-0=30=300=
-=30=30=310=2D8=30=300=2D00=61=610=30389b71}
        =62BitsPer=50ixel                      =316
        bDe=66ault=46=72a=6De=49nde=78                  1
        b=41spec=74=52=61=74io=58                       =30
        bA=73pectRa=74i=6F=59                       0
        bmI=6Ete=72lace=46lags                 =30=780=30
          =49n=74erlac=65d s=74r=65a=6D o=72 v=61ri=61ble: N=6F
          Fi=65lds per f=72ame: 2 f=69el=64s
          F=69eld 1 =66ir=73=74: No
          Fi=65=6C=64 pa=74t=65=72n: F=69e=6Cd 1 on=6Cy
        bCop=79=50=72o=74ect                        0
      Vi=64e=6F=53=74=72eaming =49=6Et=65=72fa=63=65 Descr=69p=74=6Fr:
        bL=65ngt=68                            34
        bDescr=69=70=74=6Fr=54yp=65                    =336
        b=44=65scripto=72Sub=74ype                  =35 (F=52=41ME=5FU=4EC=4FM=
PRE=53=53=45D)
        bFr=61m=65Index                         =31
        bm=43apabili=74i=65=73                   0x=300
          St=69l=6C i=6Da=67=65 uns=75p=70or=74ed
        =77=57id=74h                            6=340
        w=48eight                           480
        =64w=4Di=6EBitRate                 1=38432=30=300
        d=77=4DaxB=69tR=61=74e                 =3552=396000
        d=77Ma=78V=69d=65=6FF=72=61meBuffe=72Si=7Ae      =36=314=34=30=30
        d=77=44e=66=61ultFrameInte=72v=61=6C         33=33333
        =62FrameI=6E=74er=76alTy=70e                  =32
        dwFrameInterv=61l( 0=29            333=33=33=33
        dw=46=72am=65In=74erv=61=6C( =31)            =34=30=30=30=300
      VideoS=74re=61mi=6Eg =49=6Eterfac=65 D=65sc=72i=70tor=3A
        =62=4Ce=6Eg=74=68                            34
        b=44escriptorT=79=70=65                    36
        bD=65=73c=72ipt=6FrSubty=70e                  =35 =28FR=41=4DE=5F=55=
=4ECO=4D=50=52=45S=53ED)
        b=46r=61m=65=49ndex                         2
        =62=6D=43=61pabilit=69es                   0=78=300
          S=74i=6C=6C i=6D=61ge un=73upp=6Fr=74=65=64
        wWi=64=74h                           128=30
        wHei=67ht                           7=320
        dwMinBit=52ate                 18=34320=300
        dwMax=42=69tR=61t=65                 55=32=3960=30=30
        d=77MaxVideo=46=72ame=42u=66fe=72Size     1=384320=30
        dwDe=66au=6CtFr=61meI=6Ete=72val         333333
        bFra=6DeInt=65rva=6CTyp=65                  2
        =64wF=72ameInterval=28 =30)            3=33333=33
        dwFr=61meI=6Et=65=72v=61l=28 1=29            400000
      Vid=65=6F=53trea=6D=69ng In=74erfac=65 D=65scriptor:
        bLeng=74=68                             6
        bDescr=69pto=72Type                    36
        b=44=65=73=63r=69=70=74orSu=62=74ype                 =313 =28COLORF=4F=
RMAT=29
        =62Co=6C=6F=72=50r=69=6Daries                     =31 (BT.=3709,sRGB)
        bTransferCh=61=72a=63teri=73=74=69cs            1 =28=42T.709)
        =62Mat=72=69=78Coef=66icien=74=73                 4 =28SMP=54E =3170M =
(B=54.601))
    Int=65r=66ac=65 Des=63r=69pt=6Fr:
      =62=4Ceng=74=68                 =39
      =62D=65=73=63r=69p=74=6FrType         4
      b=49nte=72=66=61=63=65N=75m=62=65=72        1
      bAl=74e=72nate=53ettin=67       1
      bNu=6DE=6Ed=70oint=73           =31
      bInte=72f=61=63eC=6Cass        14 Vi=64e=6F
      b=49n=74=65=72fa=63eSu=62Clas=73      2 V=69deo =53=74=72e=61m=69ng
      =62I=6E=74erfa=63eProto=63ol      0
      iInter=66=61c=65              =30
      E=6E=64p=6Fint D=65s=63r=69pto=72:
        b=4Ce=6Eg=74=68                 =37
        bDes=63=72ipt=6Fr=54y=70e         =35
        =62E=6Edpoi=6Et=41=64dress     0=7883  EP =33 IN
        =62=6D=41tt=72=69=62u=74=65s            5
          Tr=61=6Esfer Typ=65            Is=6F=63=68=72=6Fno=75=73
          S=79nch Type               A=73=79nchronous
          =55sag=65 T=79pe               D=61=74a
        wMa=78Pa=63ke=74Siz=65     =30x13=66c  =33x 102=30 =62y=74es
        =62=49nter=76a=6C               1
    Interfa=63=65 Descrip=74=6Fr=3A
      bL=65=6E=67th                 =39
      =62De=73cr=69=70to=72Typ=65         4
      =62Interfa=63eNumber        =31
      =62Al=74=65rna=74=65S=65=74ting       =32
      b=4E=75mE=6E=64poin=74s           =31
      =62Int=65r=66=61=63=65=43l=61=73=73        =314 Video
      b=49nter=66a=63=65S=75bC=6C=61s=73      2 Vide=6F =53tre=61min=67
      =62Int=65rfaceProt=6F=63ol      0
      =69=49n=74erfac=65              0
      Endpoi=6Et D=65scri=70tor:
        =62L=65=6Egth                 =37
        bD=65s=63=72=69pt=6F=72Typ=65         5
        b=45ndp=6FintA=64dress     =30x=385  EP =35 IN
        bmA=74=74=72i=62u=74es            5
          T=72a=6Esfer T=79p=65            =49soc=68ron=6Fus
          =53y=6Ech Ty=70e               As=79n=63=68r=6Fn=6Fus
          U=73a=67e Ty=70=65               Dat=61
        =77Max=50ack=65=74=53ize     0x0200  1x 512 b=79tes
        bInterval               1
    In=74=65=72=66=61ce =41s=73oc=69a=74i=6Fn=3A
      b=4Cength                 8
      bDes=63rip=74o=72Type        1=31
      =62Fi=72st=49=6E=74=65=72fa=63=65         2
      =62In=74erfaceCo=75nt         2
      =62F=75n=63tion=43l=61ss          1 Aud=69o
      bF=75nctionSub=43l=61ss       =32 St=72eamin=67
      =62Fu=6Ecti=6FnProtocol       0
      =69=46unc=74=69on               6 P=43=2DLM1=45
    =49nt=65=72=66a=63e Desc=72i=70=74=6Fr:
      bLengt=68                 9
      bDesc=72i=70t=6FrTy=70=65         4
      =62I=6Eterf=61=63=65=4E=75mber        =32
      =62Al=74e=72n=61t=65Settin=67       =30
      =62NumE=6E=64=70oi=6Ets           0
      bI=6E=74er=66aceClas=73         =31 =41=75dio
      bInte=72faceS=75b=43la=73s      1 C=6F=6Etr=6F=6C =44=65v=69c=65
      bI=6Eterfac=65Pr=6Ftocol      0
      i=49n=74=65rface              0
      Au=64=69=6FControl I=6Et=65=72fac=65 =44=65=73=63=72ipt=6Fr:
        =62=4Cen=67t=68                 9
        =62Descript=6Fr=54y=70=65        3=36
        bDesc=72ip=74orSubt=79p=65      1 =28=48=45=41=44=45R)
        b=63=64A=44=43               1.=300
        wTotalL=65=6Eg=74=68       =30=7800=326
        bInCollec=74=69=6Fn           =31
        b=61Interface=4Er=280)        =33
      =41=75d=69oC=6Fntr=6Fl Interface =44=65sc=72=69=70t=6F=72=3A
        bLen=67=74h                =312
        =62=44=65=73c=72ip=74=6FrT=79pe        3=36
        b=44e=73=63=72iptor=53=75=62type      2 (INPUT=5F=54ER=4DI=4EAL)
        =62T=65=72min=61lID             1
        wT=65=72m=69=6Eal=54y=70e      =30x=30201 =4D=69=63=72op=68=6F=6Ee
        b=41ss=6F=63Termi=6Eal          0
        =62Nr=43h=61n=6E=65l=73             1
        wC=68=61nnel=43o=6E=66ig     =30x=30000
        i=43hann=65lN=61mes           0
        iTerm=69=6Ea=6C               0
      AudioC=6Fn=74=72=6Fl I=6Et=65rf=61ce =44e=73=63=72=69=70tor=3A
        bLeng=74=68                 9
        bDe=73cri=70t=6FrT=79pe        3=36
        =62=44e=73cri=70=74orSub=74y=70=65      3 (=4FU=54=50=55=54=5FT=45RMI=
=4E=41L=29
        bT=65=72mi=6Eal=49D             3
        wT=65rminal=54=79pe      0x01=301 USB S=74=72e=61mi=6Eg
        bA=73so=63Termin=61=6C          0
        =62So=75rceID               5
        iTer=6D=69nal               0
      Au=64io=43ontrol I=6Eterface Des=63riptor=3A
        bL=65=6Egth                 8
        bDesc=72iptor=54ype        36
        =62=44es=63ripto=72Su=62typ=65      =36 (FE=41TU=52=45=5F=55NI=54)
        bUn=69=74I=44                 5
        bSourc=65=49=44               1
        b=43=6Fnt=72=6FlSiz=65            =31
        bma=43=6Fnt=72ol=73(0=29       0x=303
          M=75=74e =43on=74ro=6C
          Vol=75=6De Co=6Etrol
        iFe=61ture                0
    I=6Eter=66ace D=65scri=70=74o=72:
      b=4Cen=67th                 9
      =62=44escr=69=70to=72Ty=70e         4
      b=49n=74erfac=65N=75mb=65=72        3
      b=41=6Ct=65r=6Eate=53e=74ti=6Eg       =30
      bNumEndpoi=6Ets           0
      bI=6EterfaceCl=61s=73         1 =41u=64i=6F
      =62=49nte=72f=61=63eSubC=6C=61ss      2 St=72e=61ming
      b=49nt=65r=66ac=65P=72o=74ocol      0
      iI=6Ete=72fa=63e              0
    In=74=65rface =44es=63rip=74=6Fr:
      bLen=67t=68                 9
      =62D=65=73=63r=69=70t=6Fr=54y=70e         4
      b=49=6Eterf=61ceN=75mb=65=72        =33
      =62=41=6Cter=6EateSet=74=69n=67       1
      b=4Eum=45=6Edpo=69n=74=73           =31
      =62=49nter=66ace=43=6Cass         =31 Au=64i=6F
      bIn=74er=66aceSu=62Class      2 =53trea=6Ding
      =62=49n=74erfaceProtoco=6C      0
      iInt=65=72=66ace              0
      =41=75d=69oS=74=72=65=61=6Ding I=6E=74=65r=66ace D=65sc=72=69pto=72:
        bLen=67th                 7
        =62=44=65scrip=74o=72T=79pe        =336
        bD=65sc=72=69=70t=6Fr=53u=62typ=65      1 (AS=5FGENE=52A=4C=29
        bTe=72=6Din=61lL=69nk           3
        =62=44e=6C=61=79                =325=35 fr=61=6D=65=73
        wFo=72mat=54ag         0x=30=30=301 PCM
      AudioSt=72ea=6Ding Inte=72face =44escri=70to=72:
        b=4Cen=67t=68                =320
        bDe=73c=72=69=70to=72Typ=65        36
        b=44es=63=72ip=74=6F=72=53u=62=74y=70=65      2 (FORM=41T=5FTY=50E)
        =62=46=6Frm=61tT=79p=65             =31 (FO=52MA=54=5F=54Y=50E=5F=49)
        =62=4Er=43=68a=6En=65=6Cs             1
        bSubfra=6De=53=69ze           2
        b=42=69tReso=6Cu=74i=6Fn         16
        bS=61mFreq=54yp=65            4 Di=73=63ret=65
        tSa=6DFreq[ =30]         8000
        tS=61m=46re=71[ 1=5D        1=36000
        t=53a=6D=46r=65q[ =32]        32=3000
        tSamF=72e=71[ 3=5D        4=3800=30
      Endp=6F=69nt Des=63r=69ptor:
        bLe=6Eg=74h                 =39
        b=44esc=72ipt=6FrT=79=70=65         =35
        b=45=6E=64=70=6Fin=74A=64dre=73s     0=78=389  =45P 9 IN
        bmA=74trib=75t=65s            1
          T=72an=73f=65=72 Type            Isochro=6Eo=75s
          =53yn=63h =54=79p=65               =4E=6Fne
          =55s=61g=65 Type               =44ata
        w=4D=61xPacke=74=53=69=7Ae     0=7800=380  1x 1=32=38 =62=79t=65s
        =62=49nt=65=72=76al               4
        =62Refr=65sh                0
        =62Syn=63=68=41d=64=72es=73           =30
        A=75dioStre=61ming =45n=64p=6F=69=6Et D=65scri=70t=6F=72:
          =62L=65n=67th                 =37
          =62=44escr=69p=74or=54=79p=65        =337
          bDescr=69pt=6F=72Subt=79p=65      =31 (EP=5FG=45=4EER=41L=29
          =62m=41ttribut=65s         0x0=31
            S=61mpli=6E=67 =46=72=65q=75ency
          bL=6F=63kD=65la=79=55ni=74s         0 =55=6E=64efi=6Ee=64
          w=4CockD=65l=61y         0x00=300
D=65=76i=63e Q=75al=69=66ier (=66or othe=72 de=76i=63e speed)=3A
  bLength                10
  =62=44e=73c=72i=70tor=54yp=65         6
  bc=64U=53B               =32=2E00
  bDeviceC=6Ca=73=73          =3239 =4D=69s=63ell=61n=65=6F=75=73 =44ev=69ce
  bD=65=76iceSu=62C=6Ca=73s         2
  b=44ev=69=63eP=72ot=6F=63ol         =31 Inter=66a=63e Asso=63iation
  bM=61xPack=65tSi=7Ae=30        6=34
  bNum=43=6F=6Ef=69gura=74=69on=73      =30
=44=65vice =53=74at=75s:     0x00=30=30
  (=42us Pow=65r=65d=29

--_000_998466ecd0e445d6a2ccc564be53fe06ruvbkkde_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

=3C=68t=6Dl x=6Dlns:v=3D"=75rn:sc=68em=61=73-micro=73oft-co=6D:=76ml" xm=6Cn=
=73:o=3D"u=72n:sche=6D=61s-m=69cro=73of=74-co=6D:off=69ce=3Aoffice=22 =78mln=
=73:w=3D"urn=3Aschem=61=73=2D=6D=69c=72osof=74=2Dcom:of=66ic=65=3A=77ord=22 xm=
ln=73:m=3D=22http://=73=63hem=61=73.mi=63=72=6Fs=6Fft=2Ecom/off=69=63=65/=32=
=3004/=312/o=6Dm=6C" xmlns=3D"http:=2F/=77=77w.w3=2E=6Fr=67/=54R/R=45C=2D=68t=
=6Dl=340"=3E
<=68=65=61d>
<me=74a htt=70=2D=65q=75iv=3D"=43o=6Ete=6E=74=2DTy=70e=22 con=74ent=3D"te=78t/=
htm=6C; cha=72s=65t=3Dus-=61=73cii"=3E
<met=61 =6E=61me=3D=22Genera=74=6F=72" =63o=6E=74=65nt=3D"=4Dicr=6F=73of=74 Wo=
=72=64 1=35 =28filter=65d medium)">
<sty=6Ce><!=2D=2D
/* =46=6Fnt D=65fini=74=69=6F=6Es */
=40=66ont-face
=09{font=2Df=61=6D=69ly=3A=22Ca=6D=62ria M=61=74=68";
=09pan=6Fse-1:=32 4 =35 3 =35 4 6 3 2 4=3B=7D
=40=66=6Fnt-fac=65
=09{=66=6Fnt-=66a=6D=69=6C=79:Cal=69b=72=69=3B
=09=70ano=73e=2D1:2 1=35 =35 =32 =32 =32 =34 3 =32 =34;=7D
=2F* =53=74=79le De=66=69=6Eit=69on=73 =2A=2F
p.Ms=6FNor=6D=61=6C=2C l=69.M=73oN=6Frmal, div.Ms=6FNor=6Da=6C
=09{ma=72=67=69n:0c=6D=3B
=09m=61r=67i=6E-=62otto=6D=3A.0=30=30=31p=74=3B
=09=66ont=2D=73ize:1=31.=30p=74;
=09font-=66a=6Dil=79:=22Ca=6Cib=72i=22=2Csans=2Ds=65rif;
=09mso-=66area=73t-lan=67uage:EN=2D=55S;}
=61=3Alink, span.Mso=48yperlin=6B
=09=7Bms=6F-s=74=79l=65-prio=72i=74y:99=3B
=09=63olor:#0=3563C1=3B
=09te=78t-d=65c=6F=72a=74=69on:under=6Cine=3B}
a=3A=76=69s=69ted, spa=6E.MsoH=79=70erli=6Ek=46ollo=77=65=64
=09{=6Ds=6F-=73ty=6Ce-p=72=69o=72i=74y:=399;
=09co=6Co=72:#954F7=32;
=09=74ext-dec=6Fra=74ion:un=64=65rli=6Ee;=7D
=73pan=2EE-MailFor=6Da=74=76orlage17
=09{=6D=73=6F-s=74yl=65=2Dt=79p=65:pe=72=73ona=6C-c=6Fmp=6F=73=65;
=09=66o=6Et=2D=66=61mi=6C=79:=22=41=72=69a=6C",sa=6Es=2Dse=72if;
=09col=6Fr:black;
=09=66=6F=6E=74-=77eig=68t=3A=6Eormal;
=09fon=74-st=79l=65=3A=6Eorma=6C;
=09text=2Dd=65=63=6Frat=69=6Fn=3Anone =6Eone=3B=7D
.MsoChpDefault
=09{ms=6F=2Dsty=6Ce=2D=74y=70=65:e=78po=72t-=6Fnly;
=09font-f=61=6D=69ly:"C=61li=62ri=22,san=73=2Ds=65=72if;
=09=6D=73o-fareast=2Dlanguage=3A=45N=2DU=53;=7D
@=70age =57or=64Se=63tio=6E=31
=09{siz=65=3A612.=30=70t 792=2E=30pt;
=09margin:=370.85=70t 7=30.85=70t 2.0cm 7=30.85=70=74;}
div=2E=57ordS=65c=74ion1
=09=7Bpa=67e:Wor=64S=65ct=69o=6E=31;}
-=2D=3E</s=74=79=6Ce><!=2D-[i=66 gte =6Ds=6F =39]=3E<xml=3E
=3C=6F:=73ha=70e=64=65fa=75lts =76:=65xt=3D"=65di=74=22 spidma=78=3D=22=31=302=
6" />
<=2F=78=6Dl=3E=3C=21[=65n=64=69f=5D--=3E<!=2D-[if g=74e mso 9]><xm=6C>
=3Co:sha=70ela=79o=75t v=3A=65xt=3D=22=65di=74=22>
<o:=69=64map =76=3Aext=3D=22=65dit=22 =64=61=74a=3D"1=22 /=3E
</o:=73hape=6Ca=79=6Fut><=2Fxm=6C><!=5Ben=64i=66=5D=2D=2D>
</head>
<=62o=64y lan=67=3D"DE" lin=6B=3D"=23=30563C1" =76=6Cin=6B=3D"#=3954F72"=3E
<d=69v =63las=73=3D"=57=6Frd=53ec=74i=6Fn1"=3E
<p clas=73=3D"MsoN=6Fr=6D=61l=22><=73=70=61n =73ty=6C=65=3D=22font=2D=73i=7Ae:=
1=30=2E0pt=3Bfo=6E=74=2D=66=61m=69l=79:&=71u=6F=74;Ar=69al=26quot=3B,=73a=6Es-=
seri=66=3B=63o=6Cor:blac=6B">=49&#821=37;ve =74rou=62l=65sho=6Fting i=73su=65=
=73 =77i=74h A=55K=45Y PC-L=4D1E we=62=63a=6Ds. The=79 are n=6Ft =77ork=69ng s=
=74abl=65 u=6Ed=65r Ub=75ntu 18.04&#=34=33;.<o:p></o=3A=70=3E=3C=2Fspan>=3C=2F=
p>
=3C=70 clas=73=3D"Ms=6F=4E=6Frm=61l"><=73p=61n style=3D"f=6Fn=74-size:1=30=2E=
=30=70t;=66o=6Et-family:=26q=75=6F=74;A=72=69=61l&=71uot=3B=2Cs=61n=73-se=72if=
;color:=62lac=6B"=3E=49t =73=65em=73 th=65re are to hard=77a=72=65 =76er=73ion=
s=2E =54h=65 =6Fne =77=69=74h 0=6345:=3636d i=73 =77orki=6Eg=2C =74he rep=6Frt=
ed o=6Ee 1=64=36c=3A0=3103 =69=73 n=6F=74 =77ork=69=6Eg =61n=64 i=26#=38=32=31=
7;=76=65 not yet f=6F=75=6Ed =74he =63o=72=72e=63t qui=72=6B=73 =6Fr
 settings.=3C=6F:=70>=3C/o:p></=73p=61n><=2F=70=3E
=3Cp clas=73=3D=22Ms=6FN=6Frm=61l"><=73pan =73=74=79l=65=3D"f=6Fn=74=2D=73ize:=
1=30.=30=70=74=3Bfont-f=61mil=79:=26=71uo=74;A=72ial=26=71=75=6F=74;,san=73-se=
=72=69=66;co=6Cor:b=6Cac=6B=22=3E=3Co:p>=26nbsp;</=6F:p>=3C/s=70=61=6E>=3C=2F=
=70=3E
<p class=3D=22M=73=6FN=6F=72mal"><sp=61=6E style=3D=22font-size=3A=31=30.=30=
=70t;f=6F=6Et-f=61mily:=26quot;A=72ial&=71=75o=74;=2Csa=6Es-se=72if=3B=63o=6Co=
r=3Abl=61ck">Trie=64 with:<o=3A=70><=2F=6F:p=3E=3C/sp=61n><=2F=70>
<p c=6Ca=73=73=3D=22=4DsoN=6Frmal=22><span s=74yle=3D=22font-si=7A=65:=310.0=
=70=74;f=6Fnt=2Df=61mily=3A&quo=74;=41=72ial&=71uot=3B,san=73-=73erif=3B=63olo=
r:=62lack=22>=4Fpt=69ons uvcvideo =74imeout=3D5000<=6F:p>=3C/o=3Ap>=3C/=73pan>=
=3C/=70>
<p cla=73=73=3D"MsoN=6Fr=6Dal=22><=73pan styl=65=3D"fon=74-si=7A=65:10.0=70t=
=3Bf=6Fn=74-family:=26=71=75=6Ft=3B=41r=69=61=6C&q=75=6Ft;,sa=6Es=2D=73=65rif;=
=63olo=72=3Ablack">O=70t=69=6F=6E=73 u=76cvideo q=75=69=72ks=3D0x=380 || 0=78=
=3100, 0x1=320=3C=6F=3A=70><=2Fo:p><=2F=73pa=6E=3E=3C/p=3E
<=70 c=6C=61=73s=3D"=4DsoN=6Frmal=22=3E=3Cspa=6E sty=6Ce=3D"font=2D=73iz=65:10=
.=30pt;=66ont=2D=66am=69=6Cy:&qu=6Ft;Ar=69=61l=26q=75ot=3B,=73an=73-s=65=72if;=
=63=6Flor:b=6Cack">=4Fpt=69ons n=6F=64rop=3D1<=6F:p=3E=3C/o:=70>=3C/span></p>
=3Cp c=6Cass=3D"M=73oN=6Frmal">=3Cspan s=74y=6Ce=3D=22f=6F=6Et=2Ds=69z=65:10.0=
=70t=3Bfon=74-=66=61=6D=69l=79:=26=71uot;=41r=69a=6C&=71=75o=74;=2Csans-ser=69=
=66;col=6Fr:bl=61ck">And blackli=73tin=67 =73n=64=5Faudio=26#=382=33=30=3B<o=
=3Ap>=3C/=6F=3Ap=3E</=73=70=61n><=2F=70>
=3C=70 =63la=73s=3D"Ms=6FN=6Frm=61l=22><s=70a=6E =73=74yle=3D=22f=6Fn=74-=73=
=69z=65=3A=31=30.0=70t;fo=6Et-fa=6Dily:=26qu=6Ft;Ari=61l&=71u=6F=74;,sa=6Es-=
=73=65=72if;col=6Fr:b=6C=61=63=6B"><o=3A=70>&=6E=62sp;<=2F=6F:p>=3C/span=3E</p=
>
<p c=6C=61=73s=3D=22Mso=4Eormal">=3Csp=61n =73ty=6Ce=3D"font-si=7Ae=3A10.0pt;=
=66ont-fa=6Di=6Cy:&qu=6F=74=3BAr=69al&quot;=2Cs=61n=73-serif=3B=63=6Fl=6Fr:bla=
ck=22><o:=70>=26n=62s=70;<=2Fo=3A=70>=3C/=73=70a=6E>=3C/p>
<p c=6Ca=73s=3D=22MsoNorma=6C=22=3E<spa=6E sty=6Ce=3D"f=6F=6Et-=73i=7Ae:10=2E0=
pt;=66ont-f=61m=69ly:=26quot;=41rial&q=75=6Ft;=2C=73a=6E=73=2D=73e=72=69f;colo=
r=3Abl=61ck=22>=4Da=69=6E er=72o=72 i=73:<o:p>=3C=2F=6F:=70><=2Fspan></p>
=3Cp class=3D"MsoNorm=61l">=3Csp=61n s=74yle=3D"fon=74=2Dsize=3A10.=30pt=3Bf=
=6Fn=74-fam=69=6C=79:&q=75=6Ft;Ar=69a=6C=26q=75=6Ft;=2C=73=61ns=2Dser=69f;co=
=6Cor:b=6Cac=6B=22=3EAp=72 29 1=31=3A09=3A39 t=65s=74123 kern=65=6C: =5B&nb=73=
=70; =325=38.735933]&=6Ebs=70; =4FT =34 =26lt;- =58U 3 &lt;- PU 2 &l=74=3B- =
=49T 1<=6F=3Ap>=3C/o:p=3E=3C/s=70a=6E=3E</p>
<p =63=6C=61ss=3D"MsoN=6Fr=6Dal">=3Csp=61n =73ty=6C=65=3D"fon=74-size:=31=30.=
=30=70t;f=6Fnt-=66amily:=26=71u=6Ft;A=72=69a=6C&quot;,s=61ns-seri=66;=63=6Flo=
=72:b=6C=61=63k">Apr =329 =311=3A0=39=3A=339 tes=74123 ker=6E=65l: [=26=6E=62s=
=70=3B =32=358=2E=373=35945] us=62 =31=2D=33=3A Found =61 v=61l=69=64 vide=6F =
=63=68ai=6E (1 -=26g=74; 4)=3Co:p><=2Fo=3A=70=3E=3C/=73=70=61=6E></p>
<=70 c=6Ca=73s=3D"Ms=6F=4Eorm=61l"><s=70an s=74=79le=3D=22fo=6Et-=73i=7Ae:1=30=
.0pt;font-=66a=6Di=6Cy:&=71u=6Ft=3BA=72ial=26q=75ot;,s=61n=73-s=65=72=69f;c=6F=
=6Cor:b=6Cack=22>Apr 29 =311=3A0=39=3A=344 te=73=74=312=33 =6Ber=6E=65l: [&=6E=
=62sp=3B =32=363.8375=36=30] =75v=63v=69d=65=6F 1=2D3:=31.1=3A Fa=69l=65d =74=
=6F =73e=74 UV=43 =70r=6F=62e =63=6Fnt=72=6F=6C =3A =2D110 (exp=2E =32=36).<o:=
p></o:=70></span></p=3E
<p c=6Cas=73=3D=22M=73o=4Eormal=22=3E=3Cs=70an =73=74=79=6C=65=3D=22f=6Fnt-siz=
e=3A10.=30p=74=3Bfon=74-=66a=6D=69ly:&quot=3B=41=72i=61l&quot;=2Csans-seri=66;=
color=3A=62lack=22>Ap=72 29 1=31=3A0=39:=34=39 =74=65=73t123 ker=6Ee=6C: [=26=
=6Eb=73p; 268.95=376=305] u=76=63v=69=64=65=6F 1-3:=31.1: Fail=65d to =71ue=72=
y =281=32=39=29 U=56C probe c=6F=6Etr=6Fl : =2D=311=30 (e=78=70=2E =326=29=2E<=
o=3A=70></o:p><=2Fsp=61=6E><=2Fp=3E
=3C=70 cl=61s=73=3D=22MsoNo=72m=61l">=3Csp=61n s=74=79=6Ce=3D"=66=6F=6Et-s=69z=
e:10=2E=30pt;fo=6E=74-f=61=6Dil=79:&quo=74;Ar=69al=26=71u=6Ft;,san=73=2Ds=65r=
=69f=3B=63ol=6Fr:b=6Ca=63k">A=70r =32=39 1=31=3A09:49 =74est123 kernel: [&=6E=
=62=73p; 2=36=38.=39=35=37=363=32] =75vcvideo 1-3=3A=31.1: Fail=65d to i=6Ei=
=74ialize =74=68=65 devi=63=65 =28-5)=2E<=6F:p></o:p></s=70an=3E=3C/=70>
<=70 =63lass=3D"MsoNormal"=3E=3Cspan sty=6Ce=3D=22f=6Fn=74-siz=65=3A=310.0pt;=
=66=6F=6Et-=66=61mily=3A&qu=6Ft;Arial&=71uo=74;,sans-se=72if;c=6F=6Cor:=62=6Ca=
ck"=3E<o:p>=26nb=73=70;</o=3Ap></span></p>
<p =63la=73s=3D"Ms=6FNo=72m=61l"><spa=6E style=3D"=66ont-size=3A=310=2E=30pt;f=
o=6E=74=2Df=61mi=6Cy=3A=26quot;Ar=69=61=6C&quo=74;,=73a=6Es-ser=69f;c=6Flor=3A=
b=6C=61=63k">=44oes any=62=6Fd=79 has a=6E i=64ea w=68at I c=6F=75ld =74ry n=
=65=78t, or wha=74 th=65 iss=75=65 could be=3F<o:p=3E<=2F=6F:p>=3C=2Fs=70a=6E>=
</p=3E
<p =63l=61ss=3D"M=73=6FN=6Fr=6Dal=22>=3Cspan =73tyle=3D"f=6F=6E=74=2Ds=69ze:=
=310.0p=74;=66=6F=6Et=2D=66am=69ly=3A=26q=75=6Ft;=41rial&quot=3B=2C=73a=6E=73-=
s=65r=69f;=63ol=6Fr:b=6Cack"=3E=54h=61nks =73o fa=72=2C<o:p>=3C=2Fo:p>=3C=2F=
=73p=61n>=3C/p>
<p class=3D=22=4DsoNo=72m=61=6C"><s=70an sty=6C=65=3D"=66ont-=73ize:1=30.=30p=
=74=3Bfont-=66=61mi=6C=79:&=71=75ot;Ari=61l&=71=75=6Ft;=2Cs=61=6Es-seri=66=3B=
=63olor:=62la=63k"=3EC=6F=6E=73ta=6Eti=6E=3C=6F:p></o:p=3E<=2Fspan><=2F=70>
<=70 c=6Cass=3D"M=73o=4Eo=72ma=6C=22=3E<sp=61=6E sty=6C=65=3D=22=66=6Fnt=2D=73=
=69z=65:10.0p=74=3B=66on=74-f=61m=69ly:&=71=75o=74;Aria=6C&quot=3B,s=61=6E=73-=
=73=65=72if=3Bco=6Cor=3Ab=6Cac=6B=22=3E<o:p>&=6E=62sp;<=2Fo:p><=2Fs=70an></p>
<=70 c=6C=61s=73=3D"M=73o=4Eo=72mal=22>=3Cspan st=79le=3D=22fo=6Et-=73=69=7A=
=65:10=2E0=70t;f=6F=6E=74-fami=6Cy=3A&qu=6Ft;Arial&quot;,san=73-=73=65rif;c=6F=
lor:bl=61=63k">Syslog o=75=74pu=74=3A<=6F:p><=2Fo:=70></span><=2Fp=3E
=3Cp class=3D"M=73oNor=6Dal"=3E=3Cs=70an style=3D=22=66=6Fn=74-size:10.0pt=3Bf=
o=6Et=2Dfamily:&=71u=6F=74;=41ri=61=6C=26quo=74=3B,s=61ns-=73e=72i=66;co=6C=6F=
=72=3Ab=6Cack">Apr 2=39 1=31:0=39=3A38 te=73=74123 ke=72nel: [&nb=73p; =325=38=
.=358145=39=5D =75=73b 1-3: new =68=69gh-=73p=65ed =55S=42 dev=69c=65 n=75m=62=
er 7 u=73=69ng x=68=63i=5Fhcd<o:p=3E<=2Fo:=70>=3C=2Fs=70=61n=3E</p>
<p clas=73=3D"MsoNor=6Dal"><span styl=65=3D=22fo=6Et-s=69ze=3A10.0pt;font=2D=
=66amily=3A&q=75=6Ft;Ari=61=6C&quot=3B,=73=61=6Es-seri=66=3B=63o=6Cor=3Ab=6Ca=
=63=6B">A=70r 29 11:09:3=39 =74est123 ker=6Eel: [&=6Eb=73=70; =325=38.7=33=308=
=344] u=73b 1-3: =4Eew USB d=65=76ice f=6F=75nd=2C =69dVendo=72=3D1d6c, idProd=
uc=74=3D=301=303, bcdDev=69=63e=3D =30.10=3C=6F:p=3E=3C=2Fo=3Ap>=3C=2Fs=70=61n=
><=2Fp>
<=70 =63lass=3D"Mso=4Eormal"><s=70an st=79=6Ce=3D"f=6Fn=74-=73ize=3A=310=2E0=
=70t=3B=66ont-f=61=6Dily=3A=26quot;Arial&quo=74;,sans-s=65rif;=63=6F=6Cor=3Abl=
=61ck">=41p=72 29 11:09:3=39 =74=65=73=74=3123 kern=65=6C=3A =5B=26nb=73p=3B =
=3258.73=30856=5D =75sb 1-3: =4Eew =55SB =64evice string=73=3A M=66r=3D1, =50r=
o=64uct=3D2=2C =53eria=6CNu=6D=62er=3D3<=6F=3A=70><=2Fo:=70></s=70an><=2F=70=
=3E
=3Cp cl=61ss=3D"Mso=4Eorma=6C"><s=70=61=6E style=3D"fo=6E=74-s=69z=65:=310.0pt=
;font-f=61mil=79=3A&qu=6Ft;Aria=6C&quot=3B=2Csans-=73e=72=69f;colo=72:b=6Ca=63=
k"=3E=41=70=72 29 1=31:09=3A3=39 =74=65=73t123 =6B=65=72n=65l=3A [&=6E=62=73p=
=3B =3258.7=33=3086=32] usb 1-=33=3A P=72=6Fd=75=63t=3A P=43-LM1E<o=3Ap=3E=3C/=
o:p></s=70a=6E></p>
<=70 cla=73s=3D"Mso=4Eo=72ma=6C">=3C=73pan style=3D"=66ont=2D=73ize=3A10.=30p=
=74;font-=66=61m=69ly:&=71=75o=74=3BAr=69=61l&quo=74;,san=73=2Ds=65=72i=66;col=
o=72:bl=61=63=6B">Apr 29 =31=31:09:39 test1=32=33 =6B=65r=6E=65=6C: =5B=26n=62=
s=70; 25=38.73086=35] us=62 1-=33=3A Ma=6Eufact=75=72er: P=43-L=4D=31=45<o:=70=
=3E<=2Fo=3Ap=3E</sp=61n></p=3E
<p class=3D"Ms=6FNorma=6C=22=3E=3Cspan st=79le=3D=22=66ont-si=7Ae:=310.0=70t;=
=66=6Fnt-famil=79=3A&=71uo=74;Ar=69a=6C=26=71uo=74;,=73a=6Es-s=65=72=69f;c=6Fl=
or:bl=61ck">A=70r 29 1=31:=309=3A39 t=65s=74123 =6Bernel=3A [&=6E=62sp=3B =32=
=358.=373086=39] us=62 1=2D3: =53eri=61lNu=6D=62er=3A PC-=4CM1E<=6F:p=3E<=2F=
=6F=3Ap></=73pan=3E</p>
=3C=70 cl=61=73s=3D=22M=73oNorm=61=6C"=3E<s=70a=6E =73=74yl=65=3D"f=6Fnt=2Dsiz=
e:10.=30pt;font-fa=6D=69l=79=3A&quo=74;=41r=69=61l&qu=6F=74;,san=73-s=65ri=66=
=3Bc=6Fl=6F=72:=62la=63k"=3EApr =329 11:=309=3A39 =74e=73t123 ke=72=6E=65l: [=
=26=6Ebsp; 258.7=333739=5D u=73b 1-3=3A Pro=62=69n=67 gene=72ic =55=56=43 =64e=
vi=63e 3<o=3A=70></=6F=3A=70></=73=70an=3E</p>
<=70 class=3D"MsoNormal"><span st=79=6Ce=3D=22f=6F=6Et-size=3A1=30.0p=74=3Bfo=
=6Et-f=61m=69ly:=26=71uo=74=3B=41r=69al&q=75=6Ft;,=73=61=6E=73=2D=73e=72=69f=
=3Bc=6F=6Cor=3A=62la=63=6B=22>=41pr =329 =311=3A=30=39=3A3=39 t=65st12=33 =6Be=
r=6E=65l=3A =5B&nbsp; =32=35=38.=373=3391=33] =75s=62 1-=33: F=6Fu=6Ed f=6Fr=
=6Dat MJP=45=47<o:=70><=2Fo=3A=70=3E<=2Fspan=3E</=70=3E
<=70 c=6Cass=3D"Mso=4Eor=6Dal=22>=3Csp=61=6E =73=74y=6Ce=3D=22fo=6E=74-siz=65=
=3A1=30.=30=70t=3B=66ont-f=61mily:=26q=75o=74;Ari=61l&qu=6Ft=3B,s=61=6E=73-=73=
er=69f=3Bcolor:b=6Cack=22>A=70=72 29 11:=309=3A39 =74est=3123 ker=6Ee=6C=3A [&=
nbsp=3B =3258.=373=339=321=5D u=73=62 =31-3: =2D 1=3280=78720 (=330.0 =66p=73)=
<o:p=3E=3C=2Fo:p>=3C=2Fspan=3E</p=3E
<p =63lass=3D"M=73=6FN=6F=72mal"=3E<sp=61=6E st=79=6C=65=3D=22font-si=7A=65:=
=310=2E0pt;fo=6Et-fam=69=6Cy=3A&q=75ot=3BArial&quot;,sans-=73er=69f=3Bco=6Cor:=
=62lack">Apr =32=39 =31=31:0=39:39 te=73=74123 k=65rn=65l: [&=6Ebsp=3B 258.=37=
339=329=5D us=62 =31-=33: - =36=340x480 =2830.0 =66ps=29=3Co:p></=6F:p>=3C=2Fs=
p=61n>=3C=2Fp>
<=70 =63=6Cass=3D=22=4D=73=6FN=6F=72mal"=3E=3C=73pan =73ty=6C=65=3D"=66ont=2Ds=
=69z=65=3A10=2E=30=70t;=66on=74-f=61=6D=69=6Cy:=26qu=6Ft=3B=41=72i=61l&q=75ot=
=3B,=73a=6Es-=73e=72i=66;=63olo=72=3A=62lack">=41p=72 =32=39 11:=309:39 te=73=
=74=3123 ke=72=6Eel: [&nbs=70; 258.73=3393=38=5D u=73=62 1-3: =2D =319=32=30x1=
080 (30=2E0 =66p=73=29=3C=6F:p=3E</o:p></span>=3C/=70=3E
<p class=3D=22MsoNormal=22=3E=3C=73pa=6E st=79l=65=3D"=66ont=2Ds=69z=65:1=30=
=2E0=70t;=66=6F=6E=74=2D=66a=6Dil=79:&q=75ot;=41r=69=61=6C&=71=75ot=3B=2Csans=
=2Dse=72if=3B=63=6Flor:bl=61ck">Apr 29 11:09:=33=39 =74=65st123 =6B=65=72ne=6C=
: [&n=62sp=3B 258.7339=34=34] us=62 1-3: =2D 12=38=30x=37=320 =2830.=30 fp=73)=
=3C=6F:=70><=2F=6F=3A=70></s=70=61n></p=3E
<=70 =63l=61ss=3D=22MsoNor=6Dal=22>=3Csp=61=6E =73=74yle=3D=22=66ont-=73=69=7A=
=65=3A=31=30=2E0=70t=3Bf=6Fn=74-famil=79:=26qu=6Ft=3BArial&=71u=6Ft=3B,sa=6E=
=73-ser=69f;col=6Fr=3Abl=61ck">A=70=72 2=39 11=3A=309:39 test=3123 =6Berne=6C=
=3A [&nbsp=3B =3258=2E7=333953] usb 1=2D=33: Found for=6Dat H.264<o:=70=3E</o=
=3Ap=3E</=73=70a=6E=3E</p=3E
=3C=70 cl=61=73s=3D"MsoNo=72mal"><span styl=65=3D"=66on=74-size:=31=30=2E0=70t=
;f=6Fn=74-=66amil=79=3A&quo=74;=41ria=6C&quot=3B,=73=61ns=2Dse=72=69f;=63ol=6F=
=72:=62l=61c=6B">Apr 2=39 =31=31:09=3A39 test1=323 =6Bern=65l: =5B&n=62sp; 258=
.733958] us=62 1-3: - 12=380x72=30 =2830=2E0 fps=29<o:=70><=2F=6F=3Ap></=73pan=
></=70>
<p c=6C=61ss=3D"=4Ds=6FNorm=61=6C"=3E<s=70=61n style=3D"=66=6Fnt=2D=73=69ze:10=
.0=70t=3B=66=6Fn=74-fam=69l=79:&q=75o=74;A=72ial=26qu=6Ft;,=73a=6E=73=2Ds=65ri=
f;=63=6Flor:b=6Cack=22>=41=70=72 29 11:=309=3A39 te=73t=31=323 ker=6Eel=3A [=
=26nb=73p; 258.=3733963=5D =75=73b 1-3=3A - 6=340x480 (=33=30=2E=30 =66ps)=3Co=
:p=3E=3C/=6F=3A=70=3E=3C/span></p>
=3C=70 cl=61s=73=3D=22Ms=6F=4Eorma=6C"><span styl=65=3D"fo=6Et-size:1=30.=30=
=70t;=66=6Fnt-=66=61m=69ly=3A=26quo=74;Ar=69=61=6C=26=71uot=3B,s=61=6Es-=73eri=
=66;c=6Flor:b=6C=61ck=22=3EA=70r 29 1=31=3A0=39=3A=339 =74=65st1=323 ke=72nel:=
 =5B&nbs=70; 258.7=333969] =75=73b 1=2D3=3A =2D 1=3920=781=30=380 =28=330.=30 =
=66ps=29<o:=70>=3C/=6F:=70=3E=3C/=73p=61n>=3C/p=3E
=3Cp class=3D=22Ms=6F=4Eo=72mal"><span style=3D"=66on=74-=73=69=7Ae:=310=2E0=
=70t=3B=66ont-family=3A&quo=74;=41ri=61=6C=26quot;,s=61=6E=73-=73er=69=66;col=
=6Fr=3Ab=6C=61c=6B=22>=41=70r =32=39 =311:09:39 =74=65st123 =6Berne=6C: [&nb=
=73p; 258=2E7=3339=377] usb =31-3=3A =2D 12=380=7872=30 (=33=30=2E0 fp=73=29=
=3C=6F=3Ap><=2Fo=3Ap></=73pan>=3C/p>
<=70 c=6Cas=73=3D"=4Ds=6F=4Eor=6D=61=6C"=3E<sp=61=6E style=3D"fon=74-=73ize:=
=310.0pt=3Bfont-family=3A=26=71=75=6F=74;Ari=61l&=71=75=6Ft=3B,s=61ns-=73e=72i=
f=3Bc=6F=6C=6Fr:b=6C=61c=6B">Apr 29 1=31:09:39 test=312=33 ke=72nel=3A [=26nb=
=73p; 258=2E7=3339=38=34] =75=73b =31=2D3=3A =46=6F=75=6E=64 =66or=6Da=74 Y=55=
V =34:2:2 =28YUYV)<o:p=3E<=2Fo=3Ap=3E=3C/=73=70an=3E</=70>
<p class=3D"=4Dso=4Eor=6Dal=22>=3C=73pa=6E =73t=79l=65=3D"f=6Fn=74-size:10.0p=
=74;=66ont-=66am=69l=79:=26quo=74;A=72ia=6C&q=75o=74;,s=61ns=2D=73er=69=66;co=
=6Cor:=62lac=6B">=41pr 2=39 1=31=3A=309:39 te=73t123 =6Ber=6Eel: [=26=6E=62s=
=70; 2=358.733=399=31] usb 1-3: =2D 640x=348=30 =28=330=2E0 fps=29=3Co=3Ap=3E=
=3C=2Fo:p=3E<=2Fspa=6E=3E</=70>
<p class=3D=22=4Dso=4E=6F=72m=61=6C=22=3E<s=70a=6E style=3D=22=66ont=2Dsi=7Ae:=
10.0pt;font=2Df=61=6Dil=79:&quot;A=72ial=26q=75=6F=74=3B=2C=73ans-serif=3Bcol=
=6Fr:b=6C=61c=6B=22>Apr 29 =311:=309:3=39 te=73t1=323 kernel: [&=6Eb=73=70; =
=32=358.7339=396=5D us=62 1=2D3: =2D =312=380=7872=30 =2830.=30 fps)<=6F=3Ap=
=3E</=6F:=70><=2Fspa=6E=3E</p>
<p =63las=73=3D"MsoN=6F=72ma=6C"><span s=74yle=3D"font-=73ize=3A1=30.0p=74;fon=
t-family=3A&=71uot=3B=41=72i=61l=26=71u=6Ft;,sans=2Dserif=3B=63olor=3A=62=6Cac=
k"=3EApr 29 =311=3A0=39:39 t=65st=31=323 =6Ber=6Ee=6C=3A [&n=62sp; 25=38.=37=
=334010=5D usb 1-3=3A Found =61 St=61tu=73 end=70oi=6Et (=61ddr 8=31)<o:p=3E</=
o:=70></=73pa=6E>=3C/p>
=3Cp cla=73=73=3D"=4DsoNorm=61l"><=73pa=6E =73tyle=3D"fo=6Et-s=69=7A=65:=310.0=
pt;font=2Dfa=6Dily:=26q=75ot=3BAri=61=6C&quot;,s=61n=73=2D=73=65r=69=66;=63=6F=
lor=3Ablac=6B"=3EAp=72 2=39 11:09:39 t=65st1=323 kern=65=6C: [&n=62=73p=3B 2=
=358.73=34021] us=62 1=2D3: F=6Fun=64 U=56=43 1.=30=30 d=65=76ic=65 =50=43-LM1=
E (1d=36=63:=301=303=29<o=3A=70>=3C=2Fo=3Ap=3E</s=70an=3E</p>
<=70 clas=73=3D=22MsoNormal=22><sp=61n =73ty=6Ce=3D"f=6Fn=74=2Ds=69z=65:10=2E0=
pt;=66ont=2D=66=61m=69ly:=26=71u=6Ft;Arial=26=71=75ot;=2Csans-=73=65r=69f;=63o=
lo=72=3Ablack=22>Apr 29 11:09:=339 te=73=74123 kerne=6C: [=26nbs=70; 25=38.=37=
=3340=334] =75sb 1-3=3A Added =63=6F=6E=74rol =30000=300=300-0=30=300-0000-=30=
000-00=30000000=3001/2 =74=6F de=76=69=63e 3 e=6Etit=79 1=3C=6F=3A=70>=3C=2F=
=6F=3A=70=3E</=73=70=61n=3E<=2Fp>
<=70 =63la=73s=3D"MsoNormal"=3E=3Cs=70=61=6E =73=74yle=3D=22=66ont=2D=73ize:10=
=2E=30=70t=3Bfon=74-=66amil=79:&=71u=6Ft;Aria=6C&=71uot=3B=2C=73=61ns-ser=69f;=
=63=6Flo=72=3Abla=63k">=41pr =329 1=31:=30=39=3A3=39 tes=741=32=33 k=65=72ne=
=6C: =5B=26nbsp; 258.734=322=34] =75sb =31-3: A=64ding m=61p=70ing =27=45xposu=
re=2C A=75to=27 =74o =63=6F=6E=74r=6Fl =300000=30=300-000=30-00=30=30=2D00=30=
=30-000=300000000=31/=32<=6F:p=3E=3C/o=3A=70></sp=61=6E=3E=3C/=70>
<=70 cla=73s=3D"=4D=73oN=6Frm=61l"><span =73tyl=65=3D=22=66ont-=73iz=65=3A10.0=
pt;=66=6Fnt-=66amily=3A&quot;Arial=26quo=74;,=73a=6Es-ser=69f;=63o=6C=6Fr=3Abl=
=61=63k"=3E=41pr =32=39 =311=3A=30=39:39 =74es=7412=33 kerne=6C=3A [&n=62=73=
=70=3B 258=2E7342=33=37] usb 1=2D3=3A Adde=64 control =30=30=3000000=2D0=3000-=
0=300=30-000=30=2D=30000=30=300=30=30=3001/3 t=6F =64e=76=69ce 3 =65=6E=74ity =
=31=3Co:p>=3C=2F=6F:=70=3E=3C/spa=6E></=70>
<p cla=73s=3D"=4DsoNormal=22>=3C=73p=61=6E styl=65=3D"=66ont-=73=69ze:=310.=30=
pt;=66on=74-=66a=6Di=6Cy=3A&quot;Ar=69=61l&q=75=6Ft;,sans-ser=69=66;=63olor:bl=
ack">Apr 2=39 11:09=3A39 =74est=3123 k=65rn=65l=3A [=26=6E=62s=70=3B =3258=2E=
=373=34=3427=5D u=73b =31=2D3=3A =41=64=64i=6E=67 mappin=67 'Expo=73ure, =41ut=
o =50r=69=6Frit=79' =74=6F contro=6C 00000000=2D=300=300=2D0000-0=30=30=30-=30=
=300=300=30=3000=300=31/=33=3Co:p></o:=70></=73p=61=6E></p>
=3Cp cla=73s=3D"Ms=6FN=6Frmal=22=3E<=73pa=6E sty=6C=65=3D"f=6Fnt-size=3A=310.=
=30p=74;font-f=61m=69l=79:=26quo=74;Aria=6C&quot;,s=61n=73-s=65ri=66;co=6Cor:b=
lack=22=3EApr =32=39 11:09:=339 =74=65st12=33 ke=72nel: [=26nbs=70; 258=2E=373=
4438=5D us=62 =31-3=3A Ad=64=65d c=6Fn=74ro=6C =300=3000=3000=2D0000-00=30=30-=
0000-=30=300000=30000=301/4 =74o dev=69ce 3 =65=6E=74=69=74y =31<=6F:p=3E<=2Fo=
:p=3E<=2Fs=70an><=2F=70=3E
<p clas=73=3D=22=4Dso=4E=6Fr=6D=61l"><sp=61=6E =73ty=6C=65=3D=22=66=6F=6E=74-s=
ize=3A10.=30pt;f=6Fnt-fam=69=6Cy:=26=71u=6Ft=3B=41r=69=61l&q=75o=74=3B,s=61n=
=73-se=72if=3Bc=6Fl=6Fr:bl=61ck"=3EApr 2=39 11:=309:=339 test12=33 =6Be=72n=65=
l: [&=6Eb=73p; 25=38=2E=3734578=5D us=62 1=2D=33: A=64ding m=61ppi=6Eg '=45x=
=70=6Fsu=72=65 (A=62s=6Flut=65)' t=6F =63o=6Etrol 0000000=30=2D0=3000-0000-0=
=300=30-=30=3000=300000=3001/=34=3C=6F:p=3E=3C=2F=6F:p></s=70an=3E</=70>
<p =63l=61ss=3D"Mso=4Eorma=6C"><=73=70an =73t=79le=3D"font-si=7A=65=3A1=30.0p=
=74=3B=66=6Fnt=2D=66amil=79:&qu=6Ft;A=72i=61=6C&q=75o=74;,s=61=6Es-=73e=72if;=
=63o=6Co=72:=62lack"=3E=41pr 29 1=31:=309:39 te=73t123 kern=65l=3A =5B&=6Ebsp;=
 258=2E=37=334=3586] us=62 1=2D3: A=64d=65d contr=6Fl 0=300=30=30000-=300=300=
=2D=30000-=3000=30=2D000=300=30000=310=31/=32 =74=6F de=76i=63=65 =33 =65n=74i=
=74y 2<o:p></o:p>=3C/span=3E<=2F=70>
<p cla=73s=3D=22Ms=6FN=6Frmal=22><=73pan sty=6Ce=3D"f=6Fnt-s=69ze=3A10.0pt;f=
=6F=6Et-f=61mi=6Cy=3A=26=71=75ot;=41=72=69=61l&q=75=6Ft;,sa=6Es-s=65rif=3B=63=
=6F=6C=6F=72:=62=6Ca=63k">Apr 2=39 =311:0=39:3=39 =74=65st1=32=33 k=65r=6Eel: =
=5B=26=6E=62sp; =3258.7=334=37=323] =75s=62 1-3: A=64ding =6Dappin=67 'Br=69=
=67htness' =74o =63=6Fntro=6C =30000=30=3000-=30=300=30-000=30=2D000=30-0=3000=
0=30=30=30=30101/2<o:=70>=3C/o:p>=3C/sp=61=6E=3E<=2F=70>
<p =63l=61ss=3D=22Ms=6F=4Eorm=61=6C=22><s=70a=6E st=79=6C=65=3D"font=2Ds=69ze:=
10.0pt=3Bfont-f=61mil=79:=26qu=6Ft;A=72=69a=6C&qu=6F=74=3B,sa=6Es-ser=69f;=63o=
lor:=62lack">Ap=72 29 11:09:39 t=65st=3123 ker=6Eel: =5B&nbsp=3B 258.73=347=32=
8] =75=73b =31-=33: A=64d=65d =63o=6E=74ro=6C =300000=30=30=30-=30=3000-=30000=
-000=30=2D0000=300=3000=31=301=2F3 =74o de=76ice 3 e=6Etit=79 2=3Co:p></o:p=3E=
</sp=61n><=2Fp>
<p c=6Cass=3D=22Mso=4E=6Fr=6Da=6C=22=3E<span style=3D"=66ont-size:=310.=30p=74=
;fon=74=2D=66am=69ly=3A=26quot;A=72=69=61=6C&quot;=2C=73a=6Es-=73er=69=66;=63=
=6F=6C=6Fr:=62l=61c=6B=22>Apr 29 =311:=309:=339 =74=65st123 ker=6E=65l: [&nbs=
=70=3B 25=38=2E734=391=32] u=73b 1=2D3: =41ddi=6Eg m=61=70pin=67 'Con=74ra=73t=
' t=6F c=6F=6E=74r=6F=6C =30=30000=3000-0000=2D000=30-0000=2D=3000=300=3000=30=
1=301/=33=3C=6F:p>=3C/o:p></span></=70>
<=70 class=3D"Ms=6F=4Eorm=61l=22><=73pa=6E style=3D=22=66o=6E=74-=73i=7Ae=3A1=
=30.0=70t;=66ont=2D=66am=69l=79:=26=71uot;Ari=61=6C&quot;,=73ans-=73e=72=69=66=
;=63olor:black"=3EA=70r =329 11:09=3A=339 tes=7412=33 =6Be=72=6Eel: [&n=62sp; =
258.7349=32=33] =75sb 1=2D=33: Adde=64 con=74=72ol =30=30000=3000-=30000-0000=
=2D000=30=2D00=3000=3000010=31/=37 t=6F =64ev=69ce 3 enti=74=79 2=3C=6F:=70></=
=6F=3A=70></span></=70>
<p c=6C=61=73s=3D"M=73o=4Eor=6Dal"=3E<=73pa=6E st=79l=65=3D=22=66=6Fnt-s=69=7A=
=65:10.0pt=3B=66o=6E=74=2Df=61mi=6Cy:&=71uot;=41rial=26=71uot=3B,sa=6E=73-se=
=72if;=63olor=3Abl=61ck">Apr 29 1=31:0=39=3A39 =74e=73t1=32=33 kernel: [=26=6E=
b=73p; 258=2E=373=35116=5D =75sb 1-3: A=64ding =6Da=70p=69ng =27=53atu=72ati=
=6F=6E' t=6F =63ontr=6Fl =30=30=30=3000=30=30=2D0=300=30-00=30=30-0=30=300-000=
00=30000101/7=3Co=3A=70=3E<=2Fo:=70=3E<=2F=73p=61n=3E=3C/p>
<p cla=73=73=3D=22=4D=73=6FNo=72=6D=61l"=3E<spa=6E s=74y=6C=65=3D=22font-size:=
10=2E=30=70t;=66ont-fami=6Cy=3A&q=75=6Ft;=41ri=61l=26quo=74;=2Cs=61=6E=73=2Dse=
r=69f=3Bcolo=72=3Abl=61=63=6B">Ap=72 2=39 1=31:09:=339 test=3123 =6B=65rne=6C:=
 =5B=26=6Eb=73=70; 258.73=351=32=37] us=62 =31=2D3=3A =41d=64e=64 =63ontrol 00=
00=30=300=30=2D0000=2D000=30-00=300=2D0=30=30=300=30=30001=30=31/8 =74o =64evi=
=63e =33 =65nti=74=79 =32=3Co=3Ap></o:=70></=73pa=6E></=70>
<p =63las=73=3D=22M=73o=4Eo=72=6Da=6C=22>=3Cspan st=79le=3D"=66=6Fn=74=2Dsiz=
=65:=310=2E0pt;f=6F=6E=74-=66=61=6Di=6C=79:&quot;A=72ial=26=71=75o=74;,=73=61n=
s=2Ds=65ri=66;=63o=6C=6F=72:=62=6Cack"=3EApr 2=39 =311:=309:=339 test12=33 =6B=
ern=65=6C=3A [&=6Ebs=70; 25=38.73=35316] =75sb 1-3=3A A=64di=6Eg m=61pp=69=6Eg=
 =27=53harpness' to con=74rol 0=3000000=30-0000-=3000=30-00=300-=300=30000=30=
=3001=301/8=3C=6F:p><=2Fo=3Ap=3E=3C=2Fspan=3E=3C/p>
<p class=3D"=4Dso=4Eo=72mal=22><spa=6E style=3D=22=66ont-si=7Ae:1=30.0pt;=66=
=6Fnt-f=61mily:&=71uo=74=3BAria=6C=26q=75ot=3B=2Csan=73=2Dseri=66=3Bcolo=72=3A=
=62l=61c=6B">Apr =329 11:=309:=339 t=65=73=74=31=323 =6B=65=72ne=6C=3A [&n=62=
=73p; 258=2E=37=3353=327=5D u=73b 1-=33=3A =41d=64e=64 =63ont=72ol 0000=3000=
=30-0=3000-0=3000-=30000-=30=300=300000=301=301/10 to de=76=69ce 3 en=74it=79 =
2=3Co:p>=3C/o=3A=70=3E=3C/s=70a=6E></=70>
<p c=6C=61=73s=3D=22=4D=73=6F=4E=6Frmal=22=3E=3C=73pan st=79le=3D"font-siz=65:=
1=30.0pt;=66o=6E=74-fa=6D=69l=79:=26q=75ot;Aria=6C=26q=75o=74;=2Csan=73-se=72i=
f;color:black"=3E=41p=72 29 11=3A0=39=3A39 test123 ke=72=6E=65=6C: [=26nb=73p;=
 2=358.735=3515=5D usb 1-=33=3A Add=69ng mappi=6Eg =27W=68ite Ba=6Ca=6Ec=65 =
=54emperat=75=72e=27 =74=6F co=6Et=72=6Fl =300=300000=30-=3000=30=2D0000-0=300=
=30-=30=30000=30=300=30=310=31=2F10<o=3A=70></o:p></s=70an=3E</p>
<=70 =63lass=3D"MsoN=6F=72mal"=3E<=73pan =73ty=6C=65=3D"f=6F=6Et=2Ds=69=7Ae:10=
.0p=74;fon=74-=66am=69=6C=79:=26q=75o=74=3BAr=69a=6C&=71uot;,=73ans=2Dserif;=
=63ol=6Fr:=62la=63k=22=3EApr 29 1=31:09:3=39 =74e=73=74=31=323 kernel: =5B&nbs=
p; 25=38.=3735=35=326] usb 1=2D3: =41dd=65d control =3000000=300-0=300=30=2D=
=30=3000-=30000-=300=300000=30010=31=2F4 =74=6F d=65vice 3 e=6E=74i=74=79 =32=
=3Co=3Ap></o:=70=3E=3C=2Fsp=61n><=2Fp=3E
=3Cp clas=73=3D"MsoN=6Frma=6C"=3E=3Cspan sty=6Ce=3D"=66=6F=6E=74-size=3A10=2E0=
=70=74=3Bf=6Fnt-fami=6Cy:=26=71uot;A=72ial&quot=3B=2Csans=2Ds=65ri=66;=63o=6C=
=6Fr:bl=61=63k"=3E=41pr 29 =31=31=3A0=39:=33=39 =74e=73t12=33 ke=72ne=6C=3A =
=5B&nb=73p; 258.7356=36=32=5D =75s=62 1=2D3: A=64di=6Eg m=61pping =27Ga=69n' t=
o co=6Etrol =300=3000=30=30=30-000=30-=300=300-0=300=30-00000=300=30010=31/=34=
<o:p><=2Fo=3A=70>=3C/span=3E</p>
<p c=6Ca=73=73=3D"Mso=4Eo=72mal"=3E<s=70=61n =73=74=79=6Ce=3D=22fon=74=2D=73i=
=7A=65=3A10.=30pt=3B=66ont-=66amily=3A=26=71u=6Ft;A=72ial&=71uo=74;,sans-=73e=
=72=69=66=3Bc=6F=6Co=72:b=6Cac=6B=22>=41pr =329 =311:09:=339 tes=741=323 kern=
=65l: =5B&nbs=70=3B 25=38.=37=335669] usb 1=2D=33: =41dd=65d cont=72=6Fl 0=300=
=30=30=3000=2D=30=300=30=2D000=30=2D=30000=2D=300000000=3010=31/5 to dev=69c=
=65 =33 e=6Eti=74=79 2<o:p></=6F:p=3E</=73=70an=3E<=2Fp>
<=70 cl=61ss=3D=22MsoNormal"><span style=3D=22=66=6Fnt=2D=73iz=65:=310.0pt;fon=
t-fam=69=6Cy:&q=75ot=3BAr=69=61l&quo=74=3B,s=61ns-s=65=72i=66=3Bcol=6Fr:b=6Ca=
=63k">A=70=72 29 11=3A09:3=39 t=65st123 =6Bern=65=6C: [&nb=73=70=3B 258.7357=
=386] =75=73b 1-3: Addi=6Eg map=70=69=6E=67 'P=6F=77=65=72 L=69n=65 Freq=75enc=
y=27 t=6F co=6Etr=6Fl 00000000-00=300-0000=2D00=300=2D0=30=300=30=30=30=30=301=
01/5<o:p></o=3Ap>=3C=2Fs=70a=6E><=2Fp=3E
<p c=6C=61=73s=3D"=4DsoN=6F=72ma=6C=22>=3Cspa=6E =73tyl=65=3D=22font-size=3A10=
.0=70t;=66o=6Et=2D=66=61m=69ly:&qu=6Ft;=41r=69=61=6C&=71u=6Ft;,sans-s=65=72if;=
=63olo=72=3Abla=63k">Apr 29 =311:09:=339 t=65st=3123 k=65rnel=3A [&=6Eb=73=70;=
 2=35=38.=3735=3791] u=73=62 1-=33=3A Added =63ontrol =30=300=300=30=30=30-=30=
=300=30-0=3000-0000-000=300=30=3000101=2F1=31 t=6F dev=69=63=65 =33 entity =32=
<=6F=3Ap></o:p></span>=3C/p>
<p c=6C=61=73=73=3D"=4DsoNorm=61l=22>=3C=73pa=6E sty=6Ce=3D=22f=6F=6E=74-=73iz=
=65:10=2E=30pt;=66o=6E=74=2Dfa=6Di=6C=79=3A&=71uo=74;=41=72=69al=26=71u=6Ft;=
=2C=73an=73-=73er=69=66=3B=63olo=72:bl=61c=6B=22=3EA=70=72 29 =311:0=39:=339 t=
e=73t123 k=65r=6Eel=3A [&n=62sp=3B =32=35=38.735=39=32=33=5D u=73b =31-3: Addi=
=6Eg mapp=69ng =27Wh=69te =42alan=63e Tempera=74ure=2C Auto' to =63o=6Et=72o=
=6C =30=3000000=30-0=30=30=30-=30000-0000-=300=3000000=301=301=2F=31=31<o=3Ap=
=3E</o:p>=3C/s=70an><=2F=70=3E
<=70 =63l=61ss=3D"=4DsoNo=72m=61l"><sp=61=6E st=79=6Ce=3D=22=66ont-si=7A=65:1=
=30=2E0pt;=66o=6Et-=66=61mil=79:=26q=75=6Ft=3BArial&=71=75ot;,=73a=6E=73=2Dse=
=72if=3Bcol=6Fr=3Ab=6Ca=63=6B">Ap=72 2=39 =311:=309=3A39 =74=65st=312=33 kerne=
l: [&=6E=62=73p=3B 258.735=3930] usb =31=2D3: =53=63a=6E=6Eing =55=56=43 ch=61=
in:<o:p>=3C/o:=70></span=3E</=70>
<=70 =63lass=3D"Mso=4Eorm=61l"><s=70=61=6E =73=74yle=3D"f=6Fnt=2Dsi=7Ae=3A1=30=
.=30pt=3Bf=6F=6Et-=66amil=79=3A&=71=75ot;Ari=61l&=71uot=3B=2C=73=61=6Es=2Dser=
=69f;col=6F=72=3Abl=61=63k">=41pr 29 11:09:=339 =74=65s=74123 =6Ber=6E=65l=3A =
[&nbsp=3B =3258=2E735933]&nbsp=3B O=54 =34 =26lt;=2D =58U 3 &l=74;=2D =50U 2 =
=26lt;=2D IT =31<o=3A=70=3E=3C=2Fo:p>=3C=2F=73p=61n>=3C/=70=3E
<p =63=6C=61ss=3D=22=4Ds=6FNor=6Dal=22><span =73=74yle=3D=22f=6Fnt=2Ds=69z=65:=
10.=30p=74;fon=74-family=3A&quo=74;Ari=61l&q=75=6F=74=3B,s=61=6Es=2Ds=65ri=66;=
=63ol=6Fr:black=22>A=70r 29 1=31=3A09=3A=339 t=65=73t123 ker=6E=65l: [&nbs=70;=
 2=358.=373=35945=5D =75sb 1-3=3A =46=6Fund a =76alid video c=68ai=6E (1 -=26=
=67t; 4)<o=3Ap>=3C/o:=70>=3C=2F=73pa=6E></p=3E
<p cl=61s=73=3D=22MsoNo=72mal=22><span s=74yle=3D=22=66o=6E=74=2D=73iz=65:10=
=2E0p=74;f=6F=6Et=2Dfa=6Dily=3A&q=75ot=3BA=72=69a=6C=26=71=75o=74;=2Csans-seri=
f;co=6Cor:bla=63k"=3EApr =32=39 11=3A=309:=34=34 tes=74123 ke=72nel=3A =5B&=6E=
bsp=3B 263.=383=375=360=5D u=76c=76i=64=65o =31-=33=3A1.1: Fa=69l=65d =74o se=
=74 UV=43 p=72obe =63o=6E=74rol : -1=310 (=65xp. 2=36).=3C=6F:=70>=3C/o:p=3E</=
=73=70=61n></p>
<p c=6Cas=73=3D=22=4Dso=4Eormal"><span s=74yl=65=3D"f=6Fnt=2Ds=69ze:1=30.0=70t=
;font=2Dfamil=79=3A=26q=75ot;Ari=61=6C&=71=75ot;,sans-se=72=69f;col=6F=72=3A=
=62l=61c=6B">=41=70=72 =32=39 1=31=3A=309:49 test12=33 kerne=6C: =5B&=6Ebsp; 2=
6=38.=395=37605=5D =75vcvi=64eo 1=2D=33=3A=31.1: =46a=69=6Ced to quer=79 (12=
=39=29 U=56C pro=62=65 c=6Fnt=72ol : -1=310 =28exp=2E =326=29.<o:p=3E</o:p>=3C=
/span=3E</p>
<p class=3D=22M=73o=4E=6F=72=6D=61=6C"><s=70an s=74yl=65=3D"f=6Fnt-s=69z=65:10=
=2E0=70=74;fo=6E=74-f=61mily=3A&quo=74=3BAri=61l&q=75ot=3B=2C=73an=73=2D=73er=
=69f;co=6Cor:=62=6Cack">Apr =329 1=31=3A=309:=349 =74est=31=323 =6Bernel: [&nb=
s=70=3B =32=368.=395=376=332=5D uvcv=69de=6F =31-3:=31.1: =46a=69le=64 to init=
i=61=6Ci=7Ae t=68=65 de=76ice (-=35).<=6F=3A=70=3E<=2Fo:p></span=3E</=70>
=3Cp =63=6Cass=3D"M=73oNo=72ma=6C"><=73pa=6E =73ty=6Ce=3D=22fon=74-size=3A10.=
=30pt=3B=66ont-=66a=6Dil=79:&=71uot;Ar=69=61=6C=26q=75=6Ft;,sans-ser=69f;=63=
=6F=6C=6Fr=3Abl=61ck=22=3EA=70r 2=39 =311:=30=39:49 test12=33 m=74p-=70r=6Fbe:=
 checkin=67 =62us 1, de=76=69=63e 7=3A &=71uot;=2Fsys/dev=69ces/=70ci0000:=300=
/000=30:=300:14.=30=2F=75s=62=31/1-3&quot;<o:p=3E</o:p><=2Fs=70an=3E=3C/=70>
=3Cp class=3D"=4D=73oNormal=22><=73pa=6E =73t=79le=3D"f=6Fnt-s=69=7Ae:=310=2E0=
pt=3Bfon=74-=66ami=6Cy:&=71u=6Ft;=41=72=69al=26quo=74;,sa=6E=73-s=65=72=69=66;=
=63olor=3Abla=63=6B"=3EAp=72 29 =31=31:0=39=3A49 =74e=73=74123 m=74p-=70robe=
=3A =62us=3A =31=2C d=65=76i=63=65: 7 wa=73 not a=6E MT=50 d=65vice<o:p>=3C/o:=
p></span=3E=3C/p>
<p clas=73=3D"Mso=4Eorm=61l"=3E<spa=6E =73t=79le=3D"font-siz=65=3A10=2E0=70t=
=3B=66=6Fnt-f=61mi=6Cy:&=71u=6Ft;A=72=69al=26=71uo=74=3B,s=61ns=2D=73e=72if=3B=
co=6C=6F=72=3Abl=61=63k=22>Apr =329 =311=3A09:49 tes=741=32=33 mtp=2D=70=72ob=
=65: =63h=65c=6Bi=6E=67 bus 1, de=76=69c=65 7=3A &=71=75ot;/sys=2Fdevi=63e=73=
=2F=70ci0=3000:0=30/=30000:=300:14=2E=30=2F=75sb1/1-3&=71uot;<o=3A=70>=3C=2Fo:=
p>=3C/=73pan=3E=3C/p>
<=70 cl=61s=73=3D"=4Ds=6F=4E=6Frma=6C">=3C=73pan s=74yle=3D"fon=74-size:10.0p=
=74=3B=66on=74-f=61mi=6Cy:&qu=6F=74;=41rial&=71uot=3B,sans=2Dse=72if;=63ol=6Fr=
:=62la=63=6B=22=3EApr 29 11:0=39:4=39 tes=74123 mtp-pr=6Fb=65: =62=75s: =31=2C=
 devi=63e: 7 was no=74 =61n =4DTP dev=69ce<=6F:=70></o:=70=3E</sp=61=6E=3E=3C/=
p>
=3C=70 cl=61=73=73=3D"MsoNorma=6C"=3E<=73=70an st=79le=3D"font-size=3A1=30.0pt=
;=66=6Fn=74-=66amily:=26=71=75=6F=74=3BA=72ial&quo=74;,=73an=73-seri=66=3B=63=
=6Flor=3Abl=61=63k=22>Ap=72 2=39 11=3A0=39:=349 t=65=73t=3123 =63h=65=65s=65=
=5B25=315=5D: N=61t=69=76e Win=64o=77s tal=6C=65r tha=6E 6553=35 =70ixels =61r=
e not s=75pp=6Frted=3C=6F:=70></o:p></sp=61n=3E</p=3E
<=70 c=6Cass=3D"M=73=6FNormal"><=73pan =73tyl=65=3D"=66=6Fnt-=73=69ze:10.0pt;f=
=6Fnt-=66=61mil=79:&=71=75ot;=41=72ial&qu=6F=74=3B,=73a=6Es-s=65=72=69f;c=6Fl=
=6Fr:bl=61c=6B=22>=41pr 2=39 =311:0=39:49 te=73t=3123 =63h=65e=73e[=32515=5D: =
ch=65=65s=65=2Dappli=63a=74=69=6Fn.vala:=32=32=32=3A Error du=72ing =63a=6D=65=
ra =73et=75p: =4Eo de=76i=63e fo=75=6Ed=3Co=3Ap><=2Fo=3Ap></s=70a=6E=3E=3C=2F=
=70=3E
<p =63la=73=73=3D"M=73oN=6Frmal">=3Cspan s=74yle=3D=22fon=74-si=7A=65:1=30.0=
=70t=3Bfo=6E=74-fam=69ly:=26q=75ot;A=72i=61l=26q=75=6F=74;=2C=73ans-=73e=72=69=
=66;=63=6Flo=72:=62=6C=61ck=22>Apr 29 =31=31=3A09=3A=349 test=3123 c=68=65e=73=
=65[25=31=35]=3A =63=68=65ese=5Fc=61=6Der=61=5F=64evice=5Fget=5Fn=61me: assert=
=69o=6E =27=43=48EE=53E=5FIS=5F=43AM=45R=41=5FDEVI=43E =28=64=65vice)' fail=65=
=64<=6F=3Ap></o:=70=3E</span></p>
=3Cp c=6C=61=73=73=3D"M=73=6F=4E=6F=72m=61l"><s=70a=6E s=74y=6Ce=3D=22font-si=
=7Ae=3A10.0=70t;=66ont=2Dfami=6C=79=3A&=71uo=74;Ari=61l=26=71uot;=2Cs=61=6E=73=
-s=65rif;c=6F=6Cor=3Abla=63k">Apr =329 1=31=3A=30=39:4=39 test1=323 =63hees=65=
[2=351=35]: =67=5Fv=61=72=69an=74=5Fn=65w=5Fs=74ring=3A asse=72=74io=6E 'strin=
g =21=3D =4E=55=4C=4C' fai=6C=65d<=6F=3Ap=3E<=2Fo:p></=73pan=3E<=2F=70>
<=70 =63l=61ss=3D"MsoN=6Frmal=22><=73=70a=6E st=79le=3D=22fo=6Et-size:1=30.=30=
pt;fon=74=2Dfamily:=26=71=75=6F=74;Arial&=71=75=6Ft;=2C=73ans=2Dserif=3B=63=6F=
=6Cor=3Ab=6Cack">Apr 29 11=3A=309:4=39 te=73t12=33 cheese[2515]=3A g=5Fv=61=72=
iant=5Fref=5Fsin=6B: a=73serti=6Fn 'valu=65 !=3D N=55LL' fa=69le=64<=6F:p></o=
=3A=70=3E<=2Fsp=61=6E=3E</p=3E
<=70 =63l=61=73=73=3D"M=73oNorm=61l"><span =73ty=6Ce=3D=22font-si=7A=65:10=2E0=
p=74;f=6F=6Et-=66am=69ly:&quot=3BArial&quo=74;,s=61=6E=73=2Dserif=3Bc=6F=6Co=
=72=3A=62la=63k=22>A=70=72 2=39 11:=309:49 =74=65=73t123 ch=65=65se=5B25=315]=
=3A g=5Fs=65t=74=69n=67s=5F=73che=6Da=5Fk=65y=5Ft=79p=65=5Fcheck: a=73ser=74i=
=6F=6E 'val=75e =21=3D N=55LL' =66ailed<=6F=3Ap=3E</=6F=3A=70=3E<=2Fs=70a=6E=
=3E</p=3E
=3Cp =63=6C=61=73s=3D"Ms=6FNormal">=3Cs=70=61n st=79le=3D"=66=6Fn=74-size:10.=
=30p=74=3Bfon=74=2Dfa=6D=69=6Cy=3A=26=71uot;Arial&q=75=6F=74;=2Csans=2Dse=72if=
=3Bcolo=72:b=6C=61ck">A=70=72 29 11=3A0=39:49 tes=7412=33 che=65se[=325=315=5D=
: =67=5F=76ar=69ant=5Fg=65t=5Fty=70=65=5Fstring=3A =61ssertio=6E =27va=6Cue !=
=3D NU=4CL' =66=61i=6Ced=3Co:p=3E=3C=2F=6F=3Ap>=3C/=73=70a=6E></p>
<p class=3D"=4Ds=6FN=6Frmal"><span s=74yl=65=3D=22=66=6Fn=74=2Dsize=3A=310=2E0=
pt=3Bf=6Fnt=2D=66a=6Dily=3A&q=75ot=3BA=72=69al&q=75=6Ft;,s=61=6E=73-=73erif=3B=
color:b=6C=61ck"=3E=41p=72 29 11:0=39:=349 test1=323 che=65se[2515]: g=5F=73e=
=74ting=73=5Fse=74=5F=76=61lu=65=3A key 'cam=65r=61' in 'org.g=6E=6Fme.=43=68e=
ese=27 =65xp=65cts =74yp=65 's=27=2C b=75=74 =61 =47Va=72iant o=66 =74ype '(nu=
l=6C)' w=61s given<=6F:p=3E=3C/o=3Ap></sp=61=6E=3E=3C/=70=3E
=3Cp cla=73s=3D"Mso=4E=6Frmal"><=73pan =73=74yl=65=3D"=66=6Fnt-s=69z=65=3A=310=
=2E=30pt=3Bfon=74-fa=6Di=6C=79:&quo=74;=41r=69al=26q=75o=74;=2C=73=61=6Es-ser=
=69f=3Bcolo=72:=62=6Ca=63k">=41pr 2=39 11:=309:4=39 =74=65st123 c=68ee=73=65[=
=32=3515]: g=5Fv=61rian=74=5Funr=65=66: =61s=73=65r=74=69=6Fn =27va=6Cue !=3D =
NU=4C=4C=27 faile=64=3Co=3Ap></=6F:=70><=2Fsp=61=6E>=3C/p>
=3Cp cl=61ss=3D"=4D=73o=4E=6F=72m=61l">=3Cspan =73=74=79l=65=3D"fon=74-size:10=
=2E=30pt;=66=6F=6E=74-=66a=6Dil=79=3A&=71=75ot;A=72=69a=6C&quo=74;,sans-=73e=
=72=69=66;c=6Flo=72:bla=63=6B"=3EA=70r =329 11:09:4=39 te=73=7412=33 ch=65e=73=
e=5B=325=31=35]=3A ch=65ese=5Fp=72=65fere=6Ece=73=5Fd=69alog=5Fs=65=74u=70=5Fr=
eso=6C=75tions=5Ffo=72=5Fdevice: =61=73sertio=6E '=64e=76ice =21=3D NU=4CL' =
=66=61i=6C=65d=3Co:p=3E=3C/o=3Ap></s=70a=6E></p=3E
=3Cp cl=61s=73=3D=22Ms=6FNormal"><=73=70an s=74y=6Ce=3D=22fo=6E=74-size:=310.=
=30pt=3Bf=6Fnt=2Dfam=69ly=3A=26=71=75ot=3B=41ri=61l&q=75ot;,s=61ns=2Dser=69f;=
=63olor=3A=62lack=22=3EA=70=72 29 =311:09:=34=39 =74es=74123 gno=6De-s=68ell[9=
87]: Could no=74 creat=65 tra=6E=73i=65=6Et scope f=6F=72 P=49D =30=3A GD=42u=
=73=2EEr=72or:=6Frg.f=72e=65des=6B=74op=2Esy=73t=65=6Dd1=2E=55=6Ei=74Exi=73ts:=
 =55=6E=69t =61p=70=2Dgnome=2Dorg.gnome.Cheese-0.sc=6Fp=65
 a=6C=72=65ady exi=73t=73.<=6F=3Ap=3E=3C/o=3Ap></sp=61n=3E=3C=2Fp>
<=70 =63=6Cass=3D"MsoNo=72ma=6C"><s=70=61=6E style=3D=22fo=6Et-s=69=7A=65:10.0=
pt;=66on=74-=66am=69ly=3A=26quot;=41r=69a=6C&q=75ot;=2Cs=61=6E=73-s=65rif;=63o=
=6Co=72=3Ablack">Apr 29 1=31:0=39:=355 t=65st1=323 c=68=65ese[2=3515]: Un=61b=
=6Ce =74o cre=61te d=75m=6Dy =6Fnscre=65n: N=6F fo=72=65ig=6E =73urfa=63=65, a=
nd w=6C=5F=73=68e=6C=6C u=6Esuppo=72t=65=64 =62=79 =74=68e c=6Fm=70osito=72<o:=
=70><=2Fo:p></=73p=61n></=70>
<=70 cl=61ss=3D"Ms=6FNor=6Dal=22><=73pan s=74=79le=3D"fon=74-si=7Ae=3A=310.0pt=
;fo=6Et=2Dfamily:&qu=6Ft;Ari=61=6C&quot;,=73=61=6Es=2D=73e=72if;=63o=6C=6Fr:b=
=6Cack=22><o:p>&nbsp;</o:=70=3E=3C=2Fs=70an=3E=3C/=70>
<p c=6C=61s=73=3D=22M=73oNormal">=3Csp=61=6E =73=74=79=6Ce=3D"f=6F=6E=74-size=
=3A1=30.0=70t;=66ont=2D=66am=69=6Cy=3A=26=71uot=3BArial&qu=6Ft;=2Csans=2D=73=
=65r=69=66=3B=63=6Fl=6Fr=3Ablack=22=3EL=73=75=73b:<o=3Ap><=2Fo:=70></span></p=
=3E
<=70 cl=61ss=3D"=4DsoNormal=22><span =73tyl=65=3D"fon=74-s=69ze=3A1=30=2E0pt;f=
o=6E=74=2D=66=61=6Dily:=26=71uo=74;=41=72ial&quot;,sa=6E=73-se=72if;=63o=6C=6F=
=72:bl=61=63k">=3Co:=70>&nbsp=3B</o:=70=3E<=2Fspa=6E><=2Fp>
=3C=70 cla=73s=3D=22MsoNorma=6C"><sp=61n =73tyle=3D=22font-size=3A=310.0pt=3Bf=
=6F=6E=74-=66=61mily:&q=75=6Ft;A=72ial&quot=3B,=73a=6Es-=73erif;col=6F=72=3Abl=
ack=22>Bus 001 D=65vi=63e 012: ID 1d=36c=3A=301=30=33 PC-=4CM=31E =50C-=4CM1E=
=3Co:=70>=3C=2Fo:p></s=70a=6E></=70>
=3Cp cla=73s=3D"Ms=6F=4Eorm=61l">=3Cspan s=74=79le=3D"=66on=74=2Ds=69=7A=65:10=
=2E0pt;f=6Fnt=2Df=61mily:=26=71=75=6F=74=3B=41=72i=61l=26=71uot;,sans-se=72i=
=66;c=6Flo=72:black"=3ED=65vic=65 D=65=73c=72ip=74=6Fr:<o:p><=2F=6F:=70=3E=3C=
=2Fspan></p>
<=70 =63la=73=73=3D"=4D=73oNormal"><=73p=61=6E =73=74=79le=3D"font-si=7Ae:10.0=
p=74;font-family:=26=71=75o=74=3B=41=72i=61l=26=71=75o=74=3B,=73ans=2Ds=65rif;=
col=6Fr:=62l=61ck"=3E&=6E=62=73=70=3B =62Le=6Eg=74h=26n=62sp;&=6E=62=73p;=26nb=
=73=70=3B&=6E=62sp;&nbs=70=3B&nbs=70;&nb=73p=3B&nb=73p=3B=26nbs=70=3B&nb=73p;&=
n=62s=70=3B&=6Ebsp;&=6E=62=73p;&nb=73p;&nb=73p=3B 1=38<o:p><=2F=6F=3Ap=3E=3C=
=2F=73pan><=2F=70=3E
<p class=3D"Ms=6F=4Eormal"><span st=79l=65=3D"fo=6Et=2D=73iz=65:1=30=2E=30p=74=
;fon=74-=66amily:&q=75=6Ft;Arial&q=75ot;=2Csans=2D=73er=69=66;=63olo=72:=62l=
=61ck=22>=26n=62s=70; bDescr=69=70=74=6F=72Ty=70e&nb=73p=3B=26n=62=73=70=3B&nb=
sp;&n=62sp;&n=62=73p;=26=6Ebsp;&=6Ebsp=3B&nbsp; =31<o:=70></o=3Ap>=3C/sp=61=6E=
></p>
=3Cp =63=6Cass=3D"Mso=4Eor=6Dal=22><sp=61=6E style=3D"font=2Dsize:1=30.=30=70t=
;fo=6E=74-f=61mi=6C=79:&qu=6Ft=3BArial=26quo=74=3B=2Csans-=73e=72if;c=6Flor=3A=
bl=61=63=6B=22=3E=26nbsp; bcdU=53B&nbs=70;&=6Ebs=70=3B=26=6Ebsp=3B&nbs=70;&nbs=
p;&=6Ebsp=3B&=6E=62sp;&n=62sp;&n=62s=70;=26n=62sp=3B&=6E=62=73p;&nbsp;&nbsp;&=
=6E=62s=70=3B 2.=30=30<o:p=3E<=2Fo=3A=70><=2F=73p=61n=3E=3C/=70>
=3Cp c=6Ca=73=73=3D=22=4Dso=4Eo=72=6Dal"><s=70=61=6E s=74=79le=3D=22f=6Fnt-=73=
=69ze=3A1=30.0=70t;f=6F=6Et-=66a=6D=69l=79:=26quot=3BArial&qu=6Ft;,sans-se=72i=
f=3Bc=6Flo=72=3A=62=6Cack">&nb=73p; bDevice=43la=73=73&n=62sp;&nb=73=70=3B=26=
=6Ebs=70;&n=62sp=3B&n=62sp;&n=62sp;&=6Ebs=70=3B=26nbsp;=26=6E=62=73=70; =3239 =
Miscellane=6Fu=73 De=76ice<o=3Ap=3E</o:p>=3C/=73p=61n></p>
=3Cp =63=6Cas=73=3D=22=4D=73oNorm=61l">=3Csp=61=6E s=74=79=6Ce=3D=22=66on=74=
=2D=73iz=65=3A10=2E0pt;=66o=6E=74-fa=6D=69=6Cy=3A&=71=75ot;=41ri=61=6C&qu=6F=
=74=3B,sans-=73=65rif=3B=63=6Flor:b=6Ca=63=6B">&=6Ebs=70; =62Dev=69ceSubCla=73=
s&n=62sp=3B&n=62s=70=3B&nbsp;=26=6Ebs=70;&n=62sp;&=6Eb=73=70;&nbsp;&nbsp; 2
<o=3A=70=3E</=6F:p>=3C/=73pa=6E>=3C/=70>
=3C=70 cla=73=73=3D"M=73=6FN=6F=72=6D=61=6C"=3E=3C=73=70=61=6E =73=74yl=65=3D=
=22=66=6F=6Et=2D=73ize:=31=30.0pt;=66on=74-fa=6Dily=3A&quot=3BAr=69al&q=75ot;,=
s=61=6Es-s=65=72if=3Bc=6F=6Cor:black">=26nbsp;=26n=62s=70;=62De=76=69=63=65P=
=72=6F=74=6F=63o=6C=26nbs=70;&=6Ebsp;&nb=73p;&=6E=62s=70;=26=6Ebsp;&n=62sp;=26=
=6Ebsp;=26=6E=62=73p; =31 =49=6E=74=65r=66a=63e =41sso=63iat=69o=6E=3Co:=70></=
=6F=3Ap></=73=70=61=6E=3E</p>
<p cl=61=73s=3D"Ms=6FNo=72ma=6C=22=3E=3C=73pan sty=6Ce=3D"=66=6Fn=74=2Dsize:10=
.0pt;fo=6Et-fami=6Cy=3A=26quot=3BAria=6C&qu=6Ft=3B,sans-seri=66=3Bc=6Flo=72:bl=
a=63=6B">&=6Ebs=70; =62M=61=78Pack=65tS=69ze=30&=6E=62sp;&nbsp=3B=26nbsp;=26nb=
s=70;=26n=62s=70;&n=62s=70;=26n=62=73p; 6=34<o:p><=2Fo:p></span></=70=3E
<p c=6Ca=73s=3D=22M=73o=4Eormal"=3E<sp=61n s=74yl=65=3D"font-=73=69ze:=310.0=
=70t=3B=66=6Fn=74-fa=6Dily:&q=75ot;=41rial&qu=6Ft=3B,san=73-=73eri=66;=63ol=6F=
=72=3A=62l=61ck">&n=62=73p=3B i=64V=65ndor&=6Ebsp;&=6E=62s=70;&nb=73p;=26nbsp=
=3B&=6E=62=73p; =26nb=73=70=3B&=6Ebs=70;&nb=73p;&nbs=70;=26nbsp=3B0x1d6=63
<o=3Ap=3E</o=3Ap=3E<=2Fsp=61=6E>=3C/p=3E
<=70 cl=61=73=73=3D=22M=73o=4E=6F=72=6Da=6C"=3E=3Cs=70a=6E style=3D=22f=6Fn=74=
-size=3A10=2E=30=70t;=66=6Fnt-f=61mily=3A&quo=74;=41rial=26=71uot;=2C=73ans=2D=
=73erif;=63olor:bl=61ck=22>&nbsp;&n=62=73=70=3B=69d=50=72o=64u=63t=26=6Ebs=70=
=3B&=6Ebsp=3B&n=62sp;&=6Ebsp;&n=62sp=3B=26nb=73=70;=26nb=73p;&nb=73p;=26=6Ebs=
=70; =30=78=30103
<o:p></=6F:p></span><=2Fp>
=3Cp cl=61=73s=3D=22MsoNo=72mal=22>=3C=73p=61n s=74=79le=3D"=66o=6Et-siz=65=3A=
=31=30.0pt=3Bfont-fami=6Cy=3A&quo=74;Arial&quo=74;=2Csa=6Es-s=65rif=3Bco=6C=6F=
=72:=62la=63k=22>&=6Eb=73=70=3B&=6Ebs=70=3B=62=63=64=44e=76ice&nbsp=3B=26nb=73=
p;&nbs=70;&nbsp=3B&=6Ebsp;&=6Ebs=70;&=6Ebsp=3B&n=62sp=3B&=6Ebsp;=26=6E=62=73=
=70;=26nbsp=3B =30.1=30=3C=6F=3Ap>=3C/=6F:=70></=73p=61n=3E</p>
<=70 cla=73s=3D"=4D=73oNormal=22>=3Cs=70an =73tyl=65=3D"f=6Fnt-s=69ze:10.=30pt=
;fo=6Et-=66ami=6C=79:&quot;=41rial&=71u=6F=74=3B,=73ans=2Dse=72if;c=6F=6Co=72:=
black=22>&nbs=70; =69=4Danu=66actu=72e=72&=6Eb=73p;&nbs=70;&=6Ebs=70=3B&n=62s=
=70=3B&=6Ebsp=3B&nbsp;&n=62=73=70=3B&nb=73p;=26=6Eb=73=70=3B=26nb=73p; 1 PC=2D=
=4CM=31E<o:p>=3C/o:p></=73=70an=3E</=70>
<=70 clas=73=3D"Ms=6FNo=72m=61l"><s=70an style=3D"=66=6Fnt=2D=73ize:10.=30pt;=
=66o=6Et=2D=66am=69=6Cy:&qu=6Ft;Arial&quo=74;=2C=73=61=6Es=2Dse=72if;col=6Fr:b=
l=61=63k">&nbs=70; =69Produ=63=74&nbsp;=26n=62sp;=26=6Ebsp;&nb=73=70;=26=6Ebsp=
;&n=62sp=3B&=6Eb=73=70=3B=26nb=73=70;&=6Eb=73=70;=26nbsp=3B=26=6E=62sp=3B=26=
=6Ebsp;&=6Eb=73p;&n=62s=70=3B&nbs=70; 2 PC=2DL=4D1=45<=6F:p></o:p></spa=6E></p=
>
=3Cp class=3D=22Ms=6FNo=72m=61=6C=22=3E<=73p=61=6E s=74yl=65=3D"fo=6Et-si=7A=
=65=3A1=30.0pt=3Bfont-fa=6D=69l=79:&=71uot;Ar=69al&quo=74;,s=61n=73-se=72if;=
=63ol=6F=72=3Ab=6Cack=22=3E=26n=62=73p=3B iS=65ri=61=6C=26=6Ebs=70;=26nbsp;=26=
nbsp=3B&n=62sp;&=6Eb=73p;=26=6E=62sp;&nbsp;&=6Ebs=70=3B=26n=62sp=3B=26=6Ebsp;&=
=6Eb=73p=3B&=6E=62=73=70;&=6Eb=73p=3B&n=62=73p;&=6Eb=73p=3B=26=6Ebsp; 3 PC-=4C=
M=31=45=3C=6F:p=3E=3C/=6F:p></spa=6E>=3C=2Fp=3E
=3C=70 cl=61=73s=3D=22Mso=4E=6Frmal=22><span sty=6Ce=3D"font-s=69ze:=310.0pt;f=
ont=2Dfa=6Dily:=26=71uot;A=72=69al&=71u=6Ft;,sans-=73=65rif;c=6Fl=6Fr:bla=63=
=6B"=3E&nb=73p=3B bN=75mCo=6Efig=75r=61=74ions&n=62sp;=26nb=73p;=26nb=73=70=3B=
&=6Ebs=70;&n=62=73=70=3B 1<o:p=3E</o:p=3E</span></=70>
=3Cp =63lass=3D=22M=73=6FNo=72mal"><=73p=61n styl=65=3D=22font-size:1=30=2E0=
=70t;fo=6Et-fam=69=6Cy:=26=71uot;=41=72=69=61l&q=75=6F=74=3B,s=61n=73=2Dser=69=
f=3Bcol=6Fr:bla=63k=22=3E&nbs=70; Confi=67u=72=61ti=6Fn =44=65sc=72=69=70t=6Fr=
:=3Co:=70></=6F=3A=70=3E<=2Fs=70an=3E</=70>
<p cla=73s=3D"MsoNor=6Dal">=3C=73pa=6E =73=74yle=3D"font-=73i=7Ae:=31=30.0=70t=
=3Bfont-=66a=6D=69=6Cy=3A&q=75=6Ft;=41rial=26=71uot=3B,sa=6Es-=73er=69f;color=
=3Ablac=6B">&nbs=70;=26=6Ebs=70;&nbsp=3B bL=65ng=74h=26nbs=70;=26nbs=70=3B&=6E=
=62sp=3B&=6Ebsp;=26=6Ebsp;=26=6Eb=73p;=26nb=73=70;&=6Ebs=70;=26=6Ebs=70;&=6Ebs=
p; =26nb=73p;&=6Ebsp;&=6Ebsp=3B=26nbsp=3B&=6E=62sp;&n=62sp=3B9=3C=6F:p=3E=3C/o=
=3A=70=3E<=2Fspa=6E>=3C/=70=3E
<p cl=61s=73=3D"MsoNormal"><s=70=61n =73=74y=6Ce=3D"=66=6Fnt-s=69ze:10.0p=74;=
=66=6Fnt-family:&=71uot;Ar=69al&=71u=6F=74;,=73a=6E=73-=73e=72i=66;=63o=6Cor:=
=62lack=22>&nbs=70;&nb=73=70;=26=6Ebs=70; =62Desc=72=69p=74orTyp=65&nbs=70;&nb=
s=70;&=6Ebsp;&nb=73p;&nbs=70;&nbsp;=26nbsp;&nbsp; =32<o:=70>=3C/o:=70></spa=6E=
></p>
<p class=3D"MsoNorm=61l=22><sp=61=6E s=74yl=65=3D"=66o=6Et-siz=65:10=2E0pt;f=
=6Fnt-fa=6Di=6C=79:=26quot;A=72=69a=6C&=71uot;=2C=73=61=6Es=2Dserif=3Bc=6Flor:=
blac=6B">&n=62s=70;=26n=62sp=3B=26nbsp=3B =77Tota=6CLen=67t=68&n=62sp=3B=26n=
=62s=70;=26nb=73p;&nbsp=3B&nb=73=70=3B&nbsp=3B =30x02b=65<=6F=3Ap>=3C/=6F:p>=
=3C/=73p=61=6E=3E=3C/=70>
<p c=6Cas=73=3D"M=73oNormal">=3Cspa=6E style=3D=22=66on=74-=73=69z=65:=310.=30=
=70t;=66=6Fnt-fam=69ly=3A&=71uot;=41ri=61=6C&qu=6F=74=3B,sans-seri=66=3B=63=6F=
=6Co=72:b=6C=61ck=22>&n=62sp;&=6E=62sp;&n=62sp; bNumI=6Ete=72=66aces&nb=73p;=
=26=6E=62s=70;=26nbsp=3B&=6E=62sp;&n=62=73p;&=6E=62s=70;&nbs=70;=26nbs=70;=26n=
=62s=70; 4=3Co:=70></o:p></span=3E</=70>
<=70 =63las=73=3D"=4Dso=4E=6F=72mal=22>=3C=73pan =73=74y=6C=65=3D=22f=6F=6E=74=
-=73iz=65:=310=2E=30=70t=3B=66o=6Et-f=61m=69=6Cy:&=71=75=6Ft;Ar=69=61l&qu=6F=
=74;=2Cs=61=6Es=2Dser=69f;color:=62la=63k"=3E&nbs=70=3B&nb=73=70;&=6Eb=73=70=
=3B bCo=6E=66igu=72a=74ionVa=6Cue&nbsp;=26nbs=70=3B&nbs=70;=26nbsp; 1=3Co=3A=
=70=3E=3C/=6F=3A=70=3E=3C/s=70an></=70>
<p cl=61ss=3D=22M=73oN=6Frm=61l"><sp=61n st=79le=3D"=66=6F=6E=74-=73ize:1=30.=
=30pt=3B=66=6Fnt-fami=6Cy=3A=26q=75o=74=3BAri=61l&quot=3B,s=61=6E=73-s=65rif=
=3Bcol=6Fr:b=6Cack">&=6Ebsp=3B&=6Ebsp=3B&=6Eb=73=70; iCo=6E=66=69gur=61=74i=6F=
n=26=6Ebsp=3B&nbsp=3B&nbs=70;&nbs=70;&nb=73=70;=26=6Ebs=70;&nb=73p;&n=62sp=3B&=
nbsp; 4 c=6Fn=66=69g<o:=70>=3C=2F=6F=3Ap></s=70an=3E=3C/=70=3E
=3C=70 =63las=73=3D"MsoNor=6Dal"><span =73ty=6Ce=3D=22fo=6Et=2D=73i=7Ae:1=30.0=
pt;fo=6Et-fa=6D=69ly:&=71uot;Arial=26quot;,s=61=6E=73=2Ds=65=72i=66;color=3Ab=
=6C=61c=6B">=26n=62sp;&nb=73p;=26=6Eb=73p; b=6D=41=74trib=75t=65s&nbsp=3B=26nb=
s=70=3B=26n=62sp;&=6Eb=73p;&=6Ebs=70=3B=26n=62sp;=26=6Ebsp;&nb=73p; 0=78=380<o=
:p></o:p></spa=6E>=3C=2Fp>
<p cl=61ss=3D"MsoNo=72ma=6C"=3E<=73=70=61n style=3D"fo=6E=74-siz=65:1=30.0p=74=
;fo=6Et-fa=6Dily:=26qu=6Ft;Ar=69al=26quot;,sans=2Dse=72i=66;c=6Flor:=62l=61=63=
k"=3E&nbsp;&nb=73p;&n=62sp;&nbsp=3B&n=62=73p; (B=75s P=6Fwe=72ed)=3Co:=70=3E</=
o:p></s=70an><=2Fp=3E
<=70 =63lass=3D"=4D=73o=4E=6F=72=6D=61l"><span =73=74=79l=65=3D"font-=73ize=3A=
10.0p=74;=66ont-fa=6D=69=6Cy:&=71uot;Arial=26=71u=6Ft;,=73=61ns-ser=69f=3Bcol=
=6Fr:bl=61ck=22=3E=26nb=73p;&=6Ebs=70=3B=26n=62sp; MaxP=6Fwer=26nbs=70;&n=62sp=
=3B=26=6Eb=73p;=26nbs=70;=26nbsp;&=6Ebs=70;&=6Ebs=70;&nb=73p;=26n=62=73p=3B&nb=
s=70=3B&=6Eb=73p=3B&=6Ebsp=3B&nbs=70=3B 500=6D=41<o=3Ap>=3C=2F=6F=3Ap></s=70a=
=6E><=2Fp>
<p cl=61s=73=3D"M=73=6F=4Eormal"><spa=6E st=79=6C=65=3D=22fo=6Et=2Ds=69z=65:=
=310=2E0p=74=3Bfont-fa=6Dily:=26qu=6Ft=3BArial&q=75ot=3B,=73=61ns=2Dse=72if=3B=
c=6Flor:b=6Cac=6B">=26nbs=70;&=6E=62s=70=3B&nbsp; =49n=74e=72face Asso=63iatio=
=6E:<o:p=3E=3C=2F=6F=3A=70=3E</=73p=61n><=2Fp>
<=70 =63l=61ss=3D"=4Dso=4E=6Frmal"><=73pa=6E =73=74=79le=3D"f=6Fnt-=73i=7Ae:10=
=2E0pt;=66=6F=6Et=2Dfamil=79:&qu=6Ft;Ar=69=61=6C=26=71=75ot=3B=2Csans-s=65r=69=
=66;col=6Fr:black">&=6Eb=73p=3B=26n=62sp;&n=62=73p;=26nb=73p=3B&=6E=62=73=70; =
b=4Ceng=74=68&nbsp;&nbs=70;&nb=73=70;&nb=73=70;&=6E=62=73p;&nbsp;=26=6Ebsp;=26=
=6E=62sp;&n=62sp=3B&n=62s=70;&nb=73=70;=26nb=73=70;&nbsp;&nb=73p;=26nbs=70;=26=
=6E=62=73p; =38=3Co:p>=3C=2Fo:p></span><=2Fp=3E
<p =63la=73s=3D"M=73o=4Eo=72m=61l"><s=70=61n style=3D=22=66=6F=6Et-siz=65=3A10=
=2E=30pt;fo=6Et-family:=26q=75=6Ft;A=72=69=61l&quot=3B,=73=61ns=2D=73e=72if;co=
lor:b=6C=61ck=22=3E&nbsp;&=6Ebsp;&nb=73p;&nbs=70;=26n=62=73=70=3B bDes=63rip=
=74or=54ype&nbs=70;&nb=73p=3B=26nbsp;&n=62sp;=26n=62sp=3B=26nb=73p;&=6Ebsp=3B =
=31=31<=6F:p>=3C/o:=70=3E</span>=3C=2F=70=3E
<p c=6C=61s=73=3D"Ms=6FNor=6D=61=6C"><span s=74yle=3D"=66=6Fnt-s=69=7A=65=3A1=
=30=2E0=70t;fo=6Et=2D=66am=69ly:&=71uo=74=3BAr=69al=26qu=6Ft;,sa=6Es=2D=73e=72=
=69=66=3B=63ol=6F=72=3Ablack">&=6E=62sp;&nbs=70=3B&n=62sp;&nbsp=3B&=6E=62s=70=
=3B b=46=69r=73=74In=74=65rfac=65=26nbsp;=26nbs=70;=26nbsp;&nbsp;&nbs=70=3B=26=
nbs=70;&nbs=70=3B&=6Eb=73p; =30=3Co=3Ap=3E</=6F:p=3E<=2Fspan></p=3E
<=70 class=3D"=4D=73oN=6Frm=61=6C"=3E<span =73tyle=3D"font-=73ize:=310=2E0=70t=
;fo=6E=74-f=61=6Di=6C=79:&qu=6Ft;Ar=69=61l&quot=3B=2Csans-serif=3B=63o=6Co=72:=
=62=6Ca=63=6B=22>&nbs=70;&n=62sp;&=6Ebsp=3B&nb=73=70=3B&nbsp; =62Int=65rf=61c=
=65Count=26nbs=70=3B=26=6E=62s=70=3B=26nbsp;&nbs=70;=26n=62sp=3B=26=6E=62sp=3B=
&nb=73p;=26nbsp; =32=3Co:p></=6F:=70><=2Fspan=3E=3C/p=3E
<p =63=6Cass=3D"=4D=73o=4E=6F=72ma=6C=22><=73=70=61=6E =73=74y=6Ce=3D"fo=6Et-=
=73=69z=65:10=2E0=70t;=66ont=2Dfam=69l=79:&=71uot;Arial&q=75o=74=3B,=73ans-s=
=65ri=66;col=6Fr:bla=63=6B">&=6E=62sp;&nbs=70;&nbsp;&nb=73p=3B&=6Ebsp; bFu=6Ec=
ti=6FnCl=61ss&n=62=73p;&nbs=70=3B&nb=73p;=26=6Eb=73p;&=6Ebsp;&nbs=70;=26nb=73p=
=3B&n=62sp=3B 14 Vi=64eo=3Co:p>=3C/o:p><=2F=73=70a=6E>=3C=2F=70>
<p cla=73s=3D"M=73o=4E=6F=72ma=6C=22><span =73t=79le=3D=22=66on=74=2Dsi=7Ae:10=
=2E0p=74;=66=6Fnt-fa=6D=69l=79=3A&q=75o=74;=41=72ia=6C=26q=75ot=3B=2Csa=6Es=2D=
ser=69f;=63olo=72:bla=63=6B"=3E&=6Ebsp;&nbs=70;&nbsp=3B&nbsp;=26nbsp; =62=46un=
c=74=69o=6E=53u=62=43=6Cass=26nbsp=3B&=6Ebsp;=26=6Ebsp=3B&nb=73p;=26=6Ebsp;&nb=
sp; 3 Vid=65o I=6Eterfac=65 =43ol=6Ce=63ti=6Fn=3C=6F=3Ap=3E</o:p><=2F=73=70an>=
</=70>
<p cla=73s=3D=22Ms=6FN=6F=72mal">=3C=73pan style=3D"font-=73ize:=310=2E0=70=74=
=3Bfont-=66a=6D=69=6Cy:&=71uot;=41rial&=71uot;,s=61=6E=73-se=72if=3Bco=6Cor=3A=
blac=6B">=26nbsp=3B&nb=73p;&nb=73p;=26=6Eb=73=70;=26n=62sp; =62=46=75nc=74i=6F=
nPr=6Fto=63=6Fl=26nbs=70=3B&nbsp;&n=62sp;=26nbsp;&n=62=73p;&nbsp; 0
=3Co=3Ap></o:p></spa=6E>=3C/p>
=3Cp class=3D"MsoNormal"=3E=3Csp=61n =73=74y=6Ce=3D"font-=73i=7Ae:10=2E0pt;fo=
=6Et-fami=6C=79:&=71u=6Ft=3BA=72=69=61l=26q=75=6Ft;,=73ans-se=72if;colo=72:bla=
ck">&nbs=70;&nbsp;&nb=73=70;&n=62=73=70;=26n=62=73=70;&n=62sp;iFun=63tion&=6Eb=
=73=70;=26n=62s=70;=26n=62sp;&=6Eb=73=70;=26nbsp=3B&=6E=62=73p=3B&n=62=73p;=26=
nbsp;&n=62=73p=3B&=6Eb=73p;&nbsp;=26=6E=62=73p;&nbsp;&=6Eb=73p=3B 5 =50=43-L=
=4D1E<o=3Ap>=3C/o:=70></=73=70an=3E</=70>
<p =63lass=3D=22Mso=4E=6Frma=6C">=3Cs=70=61=6E st=79le=3D=22fo=6E=74-si=7Ae:1=
=30.=30=70t;fon=74-fam=69l=79:=26q=75o=74;=41ria=6C=26quot;,=73a=6Es-se=72=69f=
=3Bco=6Cor=3Ab=6C=61=63k">=26=6Ebsp;&nb=73p;&n=62sp=3B =49=6Eterf=61ce D=65scr=
i=70to=72=3A=3C=6F:=70></o=3Ap><=2Fspan></p=3E
=3C=70 =63=6Cas=73=3D=22M=73oNorm=61l=22>=3Cspan st=79l=65=3D=22font-=73=69z=
=65:10=2E0pt=3Bf=6Fnt-fa=6Dil=79=3A=26qu=6Ft;=41rial&=71uo=74;=2C=73ans-=73eri=
f;color:bl=61ck"=3E&nbs=70;=26nbs=70;&=6Ebsp;&n=62s=70;&=6Ebsp; =62=4Ce=6Egth&=
=6E=62s=70;&nbsp;&nbsp=3B&n=62sp=3B=26=6Eb=73=70=3B&=6Ebsp=3B&=6Ebsp;&nbsp;&nb=
sp=3B=26nb=73p;=26nbs=70;=26nb=73p=3B&=6Eb=73=70;=26n=62s=70=3B=26nbs=70=3B=26=
n=62sp=3B 9=3Co=3Ap=3E<=2Fo:p=3E=3C=2Fspa=6E=3E</p>
<p =63las=73=3D=22M=73oNorma=6C=22><sp=61n styl=65=3D"=66ont-siz=65:=310.0=70t=
;f=6Fn=74-=66=61mil=79=3A=26=71uo=74=3BAria=6C=26=71u=6F=74;,=73a=6E=73-ser=69=
=66;=63olor:=62=6Ca=63k=22>=26nb=73=70;=26=6Ebs=70;=26=6Ebsp;=26nbs=70;&=6Ebsp=
; =62Des=63=72i=70t=6FrType&nbsp;&nb=73=70;&=6E=62sp;=26=6Ebsp=3B&nbs=70;&nb=
=73=70;=26nbs=70;&nb=73=70; 4=3C=6F=3Ap=3E</o:p></s=70a=6E=3E=3C=2F=70>
<p cl=61s=73=3D"=4DsoNo=72ma=6C=22><s=70a=6E sty=6Ce=3D"f=6Fn=74-si=7A=65=3A10=
.0=70=74;f=6Fnt-fa=6Dil=79:=26quo=74;Aria=6C=26=71u=6F=74=3B=2Csans=2D=73eri=
=66=3B=63ol=6Fr:=62l=61=63k">&=6Ebs=70;&=6Eb=73p;=26=6Ebsp;=26=6E=62sp;&nbsp; =
=62I=6Et=65rfa=63eNumb=65=72&n=62=73p;&nbs=70;=26=6Ebs=70;=26=6Ebsp=3B=26nbs=
=70;=26=6Ebs=70;&=6E=62=73p; =30<o:p><=2Fo:p><=2F=73p=61n>=3C=2Fp>
<p class=3D=22M=73=6FNormal">=3Cspan styl=65=3D"=66=6F=6Et-siz=65=3A1=30=2E0p=
=74=3Bfont=2Dfa=6D=69ly:&quo=74=3B=41rial&quot;=2Cs=61n=73-se=72=69f;c=6Flor:=
=62=6Cack"=3E&=6E=62sp;&=6E=62sp;=26n=62s=70=3B&=6Ebsp;&=6Eb=73p; b=41=6Ct=65r=
=6Eate=53et=74i=6Eg&n=62=73=70;&nbsp;&n=62s=70;=26nb=73=70;&=6E=62sp=3B&nbs=70=
; 0<=6F:p></o:p=3E</s=70=61n>=3C/=70>
<p cla=73s=3D"MsoN=6Fr=6Da=6C">=3Cspan styl=65=3D=22f=6F=6E=74=2Dsiz=65=3A10.=
=30=70t;fo=6E=74-fam=69ly:&=71u=6Ft;Ar=69al&quot;,=73=61n=73-se=72if;co=6Co=72=
=3Abla=63k">&nb=73p=3B&nb=73p;=26n=62sp=3B&nb=73p;=26nbsp; bNu=6DEn=64=70o=69n=
t=73&=6Ebsp;&=6Ebs=70;&=6Ebs=70=3B&=6Eb=73p=3B=26=6Ebs=70=3B=26n=62=73p;&=6Ebs=
p=3B&nbsp=3B&n=62s=70; &nb=73p;1<o:p></o:p=3E</=73pa=6E></p>
<p =63=6C=61ss=3D"=4Ds=6F=4E=6F=72=6Dal"=3E<=73pan s=74yle=3D=22f=6Fn=74=2Dsi=
=7Ae=3A10.0p=74=3Bfont-=66a=6Di=6Cy:=26qu=6Ft;Ar=69al&qu=6Ft=3B,s=61n=73=2D=73=
er=69=66;=63olor=3A=62la=63k=22>=26=6E=62sp=3B&nb=73p;=26=6E=62sp;=26nbsp=3B&n=
b=73p=3B bI=6EterfaceClass&n=62sp=3B=26n=62s=70=3B&nbsp;=26n=62s=70;&=6Ebsp;=
=26nbsp;&=6Ebsp; =314 Vi=64eo<o=3A=70></=6F:p>=3C/=73p=61n=3E</p=3E
<p =63=6Cass=3D"Ms=6F=4E=6Frma=6C"=3E=3Cs=70a=6E style=3D"f=6Fnt=2Ds=69=7Ae:1=
=30.0p=74;fo=6Et=2Dfa=6Di=6Cy:&q=75ot;A=72=69=61l=26=71u=6Ft=3B,sa=6Es=2D=73er=
if;=63ol=6Fr=3Ab=6C=61=63=6B">=26=6Ebs=70;=26=6Ebsp;&=6E=62sp=3B&nb=73=70;&=6E=
b=73p; bI=6E=74e=72faceSu=62Class&nbsp;&n=62sp;&nbsp;&=6E=62sp;=26n=62=73p; 1 =
V=69=64e=6F Co=6E=74ro=6C<o:p></o=3Ap>=3C/spa=6E=3E<=2Fp>
=3Cp cl=61s=73=3D"Ms=6FN=6F=72=6Dal=22=3E=3C=73=70an sty=6Ce=3D"=66on=74-size=
=3A1=30.=30p=74=3B=66on=74=2D=66=61=6Dily=3A=26qu=6F=74;Ari=61l&=71=75o=74=3B=
=2Csa=6Es=2Ds=65r=69=66;c=6Fl=6Fr:black"=3E&nbsp;&=6E=62=73p;&n=62sp=3B=26=6Eb=
s=70=3B&=6Ebs=70; =62I=6E=74erfa=63=65Pro=74o=63ol&n=62s=70;&=6E=62=73=70=3B=
=26nb=73p=3B&nb=73=70=3B&n=62sp; 0
=3C=6F:p>=3C/o=3Ap></=73=70=61n>=3C=2Fp>
<p =63=6Cass=3D"MsoN=6Frmal=22><s=70=61=6E s=74yl=65=3D=22=66=6Fn=74-=73i=7A=
=65:=310=2E0pt;=66o=6Et-fa=6D=69ly:&q=75o=74=3B=41=72=69al&quot;,=73=61ns=2D=
=73=65rif;=63olor:b=6C=61ck">&=6Ebsp=3B=26=6Ebsp;=26=6Ebsp=3B&n=62s=70=3B&nbsp=
;&n=62sp=3Bi=49=6Eterfac=65=26=6Ebsp=3B=26nbs=70=3B&=6Ebs=70;&=6Ebsp;=26n=62sp=
;&nb=73=70;&=6E=62sp;&=6Ebs=70;=26nbsp;&=6Ebs=70;&nbs=70=3B&=6Ebsp=3B&nbsp=3B =
5 PC-=4C=4D=31E<o=3Ap></o:p></span=3E<=2Fp>
=3Cp c=6Cas=73=3D"M=73o=4Eormal"><s=70an s=74yle=3D=22fon=74=2D=73=69=7A=65:=
=31=30.0pt;=66=6Fnt=2Df=61mi=6Cy:&=71uot=3BAr=69al&=71=75ot=3B,=73a=6E=73=2D=
=73=65rif=3B=63o=6Co=72:bl=61=63k">=26n=62=73p;&=6Ebsp=3B=26=6E=62sp;&n=62=73p=
;=26=6Ebs=70=3B Vide=6FCon=74rol =49nter=66ace D=65scripto=72:<o:=70></=6F=3A=
=70></s=70=61n=3E<=2F=70>
=3Cp c=6C=61ss=3D=22Mso=4E=6F=72=6Dal"=3E<sp=61n style=3D"f=6F=6Et=2Ds=69ze:10=
=2E0p=74;font-fa=6Dily=3A&q=75=6Ft;=41=72ia=6C=26q=75ot;=2C=73ans=2D=73erif=3B=
co=6Cor:=62=6C=61c=6B">&=6Eb=73p;=26nb=73=70;&=6Ebsp;&nb=73p;=26nb=73p;=26nbsp=
=3B&nbs=70; =62Lengt=68=26nb=73p;&=6Eb=73p;&n=62sp;&=6Ebs=70;&=6E=62sp=3B&=6Eb=
s=70;=26nb=73p;&n=62sp;&=6Ebsp;&nbsp;&nbsp=3B&nbsp;=26=6Ebs=70;=26nbsp;&n=62sp=
; 13=3Co:p><=2Fo:p=3E=3C/=73pa=6E=3E=3C/=70=3E
<=70 =63=6Cass=3D"Mso=4Eorma=6C"><span =73t=79le=3D=22f=6F=6E=74-=73ize:10=2E=
=30pt=3Bfont-f=61=6Dily:=26=71u=6F=74=3BAria=6C=26=71uot;=2Cs=61ns-se=72i=66;c=
olor:=62=6C=61ck">=26nbsp=3B&nbsp=3B&nbsp=3B&nbs=70=3B=26n=62sp;&nbs=70;&n=62s=
p; =62D=65=73cript=6FrT=79=70=65&nb=73p;&=6Eb=73p=3B=26=6Eb=73=70=3B&=6Eb=73=
=70=3B=26n=62=73p;=26nb=73p=3B=26n=62s=70; =33=36<o:=70><=2Fo:=70=3E</sp=61=6E=
></p=3E
<p c=6Cas=73=3D"=4Ds=6FNo=72ma=6C"><span s=74yle=3D"=66=6F=6Et-size:1=30=2E0p=
=74;=66ont-f=61mily:&q=75=6F=74=3B=41ria=6C&=71u=6F=74=3B,=73an=73-=73e=72if;c=
=6F=6C=6F=72:black"=3E=26=6E=62sp;&nbsp=3B&nbsp;&=6E=62sp;&n=62s=70;&=6Eb=73=
=70=3B&=6E=62sp; bDe=73crip=74or=53ubtyp=65&nb=73p;&nb=73p;&nb=73=70=3B=26=6Eb=
sp;=26n=62sp; =31 (HE=41DER=29<=6F:p><=2Fo=3Ap><=2Fsp=61n>=3C=2F=70=3E
<p clas=73=3D=22Mso=4Eormal">=3C=73=70a=6E sty=6Ce=3D"=66=6Fn=74-si=7Ae=3A10=
=2E0=70=74;fon=74-family:=26=71=75ot;Arial&quot=3B,=73ans=2Ds=65ri=66;=63=6Flo=
r:=62lack=22>&nbsp;&=6Ebs=70;=26=6Ebsp;&nb=73p;=26nbsp=3B&nbs=70=3B=26=6E=62=
=73p; bc=64=55VC&=6Ebsp=3B=26=6E=62=73p;=26=6E=62=73p;&nbsp;&n=62s=70;=26nb=73=
=70;&nb=73p;=26nbs=70;&n=62sp;&nbsp;=26=6Ebs=70;=26=6Ebs=70=3B=26=6Ebsp;&n=62=
=73=70; 1.0=30<=6F=3Ap><=2Fo=3Ap></=73pan=3E=3C/p>
<p =63lass=3D"MsoN=6Frma=6C"><spa=6E s=74y=6C=65=3D"fo=6Et-=73=69=7A=65=3A10=
=2E=30p=74;font=2D=66amil=79:&quot;Arial&q=75ot=3B=2Csa=6E=73-s=65ri=66;c=6F=
=6C=6Fr:bl=61=63=6B">=26nbs=70=3B&nb=73p;&n=62s=70;=26n=62sp;=26nbsp=3B&nbs=70=
;=26n=62s=70; =77Total=4Ceng=74h&nbs=70;&nb=73=70=3B=26n=62s=70=3B&=6Ebs=70;&=
=6E=62sp;&=6Ebs=70; 0x=300=34f<=6F:=70>=3C/o:p>=3C=2Fspa=6E></p=3E
<p c=6Cass=3D"=4Ds=6FNormal=22=3E<spa=6E =73ty=6Ce=3D"=66o=6E=74=2Dsize=3A10=
=2E0p=74;fon=74-=66a=6Di=6Cy:&=71uot;Ar=69al=26qu=6Ft;,=73ans-=73eri=66;co=6Co=
=72:b=6Cack"=3E&nbs=70;&=6Ebsp=3B=26nb=73p;&nbs=70=3B&=6Ebs=70;=26=6Ebsp;&=6Eb=
=73p; =64w=43lockF=72e=71=75en=63=79&nb=73p;&nbsp;&=6E=62=73=70;&nb=73p;&nbsp;=
&=6Eb=73p; 48=2E=300=30000MHz=3Co=3Ap=3E</o=3Ap>=3C/span><=2Fp=3E
=3Cp clas=73=3D"=4D=73=6F=4E=6Fr=6Da=6C"=3E=3C=73p=61n st=79l=65=3D=22fo=6Et=
=2Dsi=7Ae:10.0=70t=3Bfont-=66am=69ly=3A=26=71=75=6Ft;A=72ial&quot;,s=61n=73=2D=
=73er=69f;=63=6Flor:blac=6B"=3E=26n=62sp;=26nb=73=70;&nbsp;&=6Ebsp=3B&=6E=62sp=
;=26n=62sp=3B=26n=62sp; bIn=43ol=6Cect=69o=6E&nb=73p;&nb=73p=3B&nb=73p;=26nbsp=
;=26n=62s=70;=26=6Eb=73p;&nbsp;&n=62sp;&nbs=70;&nb=73p; 1<=6F:p>=3C/o=3Ap><=2F=
=73=70a=6E></p>
<p =63=6Ca=73s=3D=22MsoN=6F=72ma=6C"=3E<span =73tyle=3D=22=66=6Fnt=2Dsize:=310=
.0pt=3Bf=6F=6E=74-fami=6C=79=3A=26=71uot;Ar=69al&=71uot;=2Cs=61ns-serif;c=6Fl=
=6Fr:blac=6B"=3E&nb=73p;&=6Eb=73p;=26=6Eb=73=70=3B&n=62s=70;&nbs=70;&=6E=62sp;=
=26=6Ebsp=3B =62a=49nter=66=61ceNr( 0)=26=6Ebsp=3B=26n=62s=70;&nbs=70=3B&nbsp=
=3B&nb=73p;&=6E=62=73p; =31<o=3A=70=3E=3C/o:p></=73pan><=2Fp>
<p c=6Ca=73s=3D"MsoNo=72mal=22=3E<spa=6E style=3D"f=6Fnt-=73=69=7Ae:=31=30.0=
=70=74=3Bfont-f=61mi=6Cy:=26=71uot;Arial&quo=74=3B=2Cs=61ns-serif;=63=6Flo=72:=
blac=6B=22>=26nb=73=70=3B&=6Ebs=70;=26=6Ebs=70=3B&nb=73p;=26=6Eb=73p; Vi=64=65=
=6FCont=72ol Interf=61=63=65 =44=65=73=63ripto=72=3A<=6F:p=3E</o:p></s=70a=6E>=
<=2F=70>
<p c=6Cas=73=3D"=4Ds=6FNo=72m=61=6C"=3E<=73pa=6E =73=74=79le=3D"fon=74=2Dsiz=
=65:1=30=2E0p=74;=66=6Fnt=2D=66a=6D=69=6C=79:=26quot;=41ri=61l&quot;,s=61n=73=
=2Ds=65=72i=66=3Bcol=6Fr:bl=61c=6B">&nb=73=70=3B&=6E=62=73p;&nbs=70;&=6E=62=73=
p;&=6Eb=73p;&nbsp;=26nbsp; b=4C=65=6Egth&=6E=62sp;=26nbsp;&nbsp=3B=26nbs=70;=
=26nbsp=3B&nbs=70=3B&=6E=62s=70=3B&nb=73p;=26=6E=62=73p;&=6Eb=73p;=26nbsp;=26n=
=62sp;&=6Ebsp;=26nb=73=70;&=6E=62sp=3B =318<o:p=3E</o:p>=3C=2Fs=70an><=2F=70>
<p clas=73=3D=22MsoNor=6Da=6C"><spa=6E =73t=79le=3D"f=6Fnt-=73=69=7A=65:10=2E0=
p=74;fon=74=2Dfam=69l=79=3A=26q=75=6F=74;Arial&quot;,=73ans-=73er=69f;color:=
=62=6Cac=6B=22>&n=62sp;&nbsp;&n=62sp;=26=6E=62sp=3B&=6Ebsp=3B&nb=73p;=26nbsp; =
=62=44=65=73cr=69p=74=6FrT=79pe&=6Eb=73=70=3B&n=62=73=70;=26n=62sp=3B&nbsp=3B&=
nbs=70;&nbsp=3B=26nbsp; 36=3Co=3A=70=3E=3C/o:p></=73=70a=6E></p>
=3Cp =63=6Ca=73s=3D=22M=73oNo=72=6Dal"><s=70=61=6E s=74=79le=3D"fo=6Et=2Dsi=7A=
e:=310=2E0=70t;=66=6F=6Et-f=61m=69=6Cy:&q=75=6F=74;=41ri=61=6C=26qu=6F=74;,s=
=61ns-=73erif;col=6Fr:black=22>&n=62s=70=3B&=6Ebs=70;&n=62=73=70;&nbsp=3B&nbs=
=70;&=6Ebs=70;=26=6Ebsp=3B bDe=73cr=69p=74o=72Su=62=74yp=65&nbs=70;&nbsp=3B&n=
=62=73=70;=26nbsp;&=6Ebs=70; 2 =28INPU=54=5FTE=52M=49NA=4C)<=6F=3Ap></o:=70=3E=
=3C/=73p=61=6E></=70=3E
=3Cp cl=61s=73=3D=22MsoNorma=6C"=3E=3C=73pan =73=74=79l=65=3D"font-s=69=7A=65=
=3A=310=2E=30p=74=3Bfo=6Et=2Df=61m=69ly:=26quot=3BAr=69=61l=26=71u=6Ft;,=73ans=
-s=65rif=3Bco=6Cor:=62l=61ck=22>=26nbsp;&nbs=70;&nbs=70=3B&=6Ebsp;&nb=73p;&nbs=
p=3B&n=62=73p; b=54e=72m=69nal=49=44&=6E=62=73p=3B=26n=62=73p=3B&n=62sp;&nb=73=
=70;&nbs=70=3B&nbs=70;=26n=62sp=3B&=6E=62sp=3B&=6Eb=73=70;=26=6E=62sp;&n=62=73=
p;=26nb=73=70; 1=3C=6F:p>=3C=2F=6F:=70>=3C/s=70an>=3C=2Fp>
=3C=70 cla=73s=3D=22MsoN=6Frm=61l"=3E=3Cspan sty=6Ce=3D=22fo=6Et-=73ize=3A10=
=2E0p=74;font-=66amily:=26quot;=41ria=6C=26=71=75=6Ft;=2C=73an=73=2Dse=72if;co=
=6Co=72:bla=63k=22>=26nb=73p;&n=62sp;&=6Eb=73p;=26n=62sp;=26n=62=73=70;&nbs=70=
=3B=26nb=73p=3B =77Terminal=54ype=26=6Eb=73p;&nbsp;&n=62=73p;=26nb=73p;=26nbsp=
; 0x0=32=301 Ca=6Dera Sen=73or<o=3Ap=3E</o=3Ap><=2F=73p=61=6E></p>
=3Cp =63=6Ca=73s=3D=22Ms=6F=4E=6Frm=61l=22=3E<=73pan =73=74=79le=3D"fon=74=2D=
=73i=7Ae:=31=30.=30pt=3Bfont=2D=66=61mi=6C=79:&=71uot;=41ri=61l&quo=74;=2C=73a=
n=73-ser=69=66;=63=6Fl=6F=72=3Abl=61ck"=3E&nbsp;=26nb=73p;&nbsp;&=6E=62=73p;=
=26=6Ebsp=3B=26=6Ebsp=3B=26n=62sp; bAss=6FcTe=72=6Di=6Eal&nbs=70=3B&nbs=70;=26=
n=62sp;=26=6Eb=73p;&=6Ebsp;&nbsp=3B&=6Ebsp=3B&nbsp;=26nbsp; 0<o:p=3E<=2Fo:=70=
=3E</=73=70=61=6E=3E=3C/=70>
<p cl=61ss=3D=22MsoNor=6D=61=6C=22>=3Cs=70an sty=6Ce=3D=22font-=73iz=65=3A10.=
=30pt;=66ont=2D=66=61mily:&qu=6F=74;Ar=69al=26quot;=2C=73a=6Es-serif;=63olor:=
=62=6Cack"=3E&=6Ebsp;&=6Eb=73=70;=26nb=73p=3B&=6E=62sp;=26n=62=73=70=3B=26=6Eb=
s=70;=26nbsp; iTerm=69n=61l=26nbsp;&nbsp=3B&nbs=70;=26=6Eb=73p;=26nbs=70=3B&n=
=62s=70;=26=6Ebsp;&=6E=62=73p;&nbs=70;&=6Eb=73p;&nb=73p;=26nbsp=3B&nbsp;=26=6E=
b=73p=3B 0
<o:p></=6F:p=3E</=73pa=6E>=3C/=70>
<p c=6Ca=73s=3D=22M=73=6FNor=6Dal"><sp=61n sty=6Ce=3D"fo=6E=74-size:10.=30=70t=
=3B=66=6Fn=74-=66ami=6Cy:&quot=3BA=72=69al=26=71u=6Ft=3B,=73=61ns-=73e=72=69=
=66;color:b=6Cack">&n=62sp;&nbs=70;&=6E=62=73p=3B&n=62=73p;&nbsp;&=6E=62s=70;=
=26=6Ebsp=3B&n=62s=70=3BwObj=65=63t=69veFo=63=61lLe=6Eg=74hMin&=6E=62sp;&nb=73=
p=3B&=6E=62=73p;=26=6Ebsp;=26n=62sp; 0=3Co:=70></o=3Ap>=3C=2F=73pan><=2F=70>
<p =63l=61ss=3D=22M=73=6FN=6Frm=61l=22=3E<sp=61=6E st=79le=3D"=66=6Fnt-si=7A=
=65=3A=31=30.=30p=74;fon=74=2Dfami=6Cy:&q=75o=74;Ar=69=61=6C&=71uot=3B=2C=73=
=61n=73=2Dser=69f=3Bc=6F=6Cor:bl=61c=6B">&nb=73p=3B&n=62=73p;=26n=62sp;&=6Eb=
=73p;=26=6E=62=73p=3B&n=62=73p;&=6Eb=73=70=3B wOb=6A=65cti=76=65Foc=61lL=65ng=
=74hM=61=78=26nbs=70;&=6Ebsp;=26nbsp=3B&nbsp;=26n=62s=70=3B 0=3Co:p=3E</=6F=3A=
=70=3E<=2F=73pa=6E>=3C/p>
<=70 cl=61s=73=3D"Mso=4Eor=6Dal=22><sp=61n =73t=79l=65=3D"=66=6Fnt-s=69z=65:1=
=30=2E0p=74;fo=6Et-=66=61=6Dily:&q=75o=74;Ari=61=6C&quo=74;,sa=6Es-s=65ri=66;=
=63olo=72:bl=61ck=22=3E=26=6Ebs=70;=26nb=73p;&nb=73p=3B&=6E=62s=70;&=6E=62=73p=
;=26n=62sp;&nb=73p; w=4F=63u=6CarF=6Fca=6CLeng=74h&nbsp;=26nbsp;&nbsp;=26=6Ebs=
p;=26nb=73p=3B=26n=62sp;&=6Eb=73p;&nbsp=3B&=6E=62sp=3B&=6Eb=73=70;&=6Ebsp; 0<o=
:=70>=3C=2Fo=3Ap=3E</sp=61=6E></p=3E
<p =63=6C=61=73=73=3D=22=4D=73=6FN=6F=72m=61l">=3Cspan sty=6Ce=3D"=66ont=2D=73=
=69=7A=65:=31=30.0pt=3B=66=6F=6Et-fami=6Cy:&q=75=6Ft;A=72=69=61l&=71uo=74;=2C=
=73ans=2D=73erif;colo=72:b=6Ca=63k"=3E&n=62sp;&=6Ebsp;=26nbsp;=26=6Ebsp;&=6Ebs=
p;=26nbsp;&n=62sp=3B b=43=6F=6Et=72=6FlS=69ze&nbsp;&nb=73=70;&n=62sp=3B&nbsp=
=3B&n=62sp;&=6Ebsp;&=6Ebsp;=26=6E=62=73p;&nbs=70;&=6Eb=73p;&=6E=62sp=3B&n=62=
=73p=3B=26=6Ebsp=3B=26=6Ebs=70;=26n=62=73=70=3B&n=62=73=70;&n=62sp=3B =33<o:p=
=3E</=6F:p></=73p=61=6E=3E</p>
<p c=6Cas=73=3D"MsoNo=72ma=6C=22><s=70a=6E =73=74yl=65=3D"fo=6Et-s=69=7A=65:10=
=2E=30=70t;f=6F=6Et-fam=69ly=3A&quot;=41rial&quot=3B,s=61=6E=73=2D=73er=69=66;=
=63o=6Cor:=62lack">&nbsp;=26=6Ebs=70;&nb=73=70;&nbs=70;&=6Ebs=70;=26nbs=70;=26=
n=62=73=70; =62=6DContr=6F=6C=73=26nbsp;&=6Ebsp;&=6Ebsp=3B=26n=62sp=3B&=6E=62s=
p=3B&=6E=62s=70;=26n=62sp;=26n=62sp=3B&n=62=73p=3B&nbsp; 0=780=300=30000e<=6F=
=3Ap></o:=70></=73=70a=6E></p=3E
<p class=3D"=4D=73=6F=4Eorm=61=6C"=3E<=73=70a=6E s=74=79l=65=3D=22fon=74=2Dsiz=
e:10.=30pt=3Bfo=6Et-f=61=6Dily=3A=26quo=74;A=72i=61=6C=26=71=75o=74=3B=2C=73=
=61ns=2D=73erif;=63=6F=6C=6F=72:b=6C=61c=6B"=3E=26=6Ebsp;&n=62sp;=26nbs=70=3B&=
nbs=70;&nbs=70=3B&nbsp=3B&=6Eb=73p;=26nb=73=70;&=6Eb=73p=3B =41=75to-=45=78=70=
os=75re Mo=64e<o:p></o:p></sp=61n=3E</=70>
<p class=3D=22=4Ds=6F=4Eormal"><spa=6E st=79le=3D"fo=6Et=2Dsi=7Ae=3A10.0pt=3Bf=
o=6E=74-fami=6C=79:=26q=75=6Ft;Ari=61l=26quot=3B,s=61ns-s=65ri=66=3Bc=6Fl=6F=
=72:=62lack=22>&nb=73=70=3B&nbsp;&=6Ebsp;=26=6E=62s=70;&=6Ebs=70;&n=62=73p;&nb=
=73p;=26nbs=70;=26nb=73p; Au=74=6F=2DE=78=70osu=72=65 P=72i=6Frit=79<=6F:p><=
=2Fo:p><=2Fs=70an>=3C/p=3E
=3Cp =63la=73s=3D=22=4D=73oNo=72ma=6C">=3Cs=70an s=74yl=65=3D"=66=6Fnt-s=69z=
=65:10=2E0pt=3Bfo=6E=74-=66a=6Di=6C=79=3A&q=75=6Ft;Ar=69al=26quot=3B=2C=73ans-=
=73eri=66;colo=72:bl=61ck"=3E&=6E=62sp=3B&n=62sp;=26=6Eb=73p;&nbsp;=26=6Ebsp=
=3B&nbs=70;&nbsp;&=6Ebsp;&n=62s=70; =45xposur=65 =54i=6D=65 =28Absolute=29<=6F=
=3Ap></=6F:p=3E</s=70an></=70=3E
<p class=3D=22Mso=4Eorma=6C=22><=73=70a=6E st=79l=65=3D=22font-=73i=7A=65:1=30=
=2E=30pt;fo=6Et-=66=61mily:&=71u=6Ft=3BA=72=69al=26=71uot;,s=61n=73=2Dser=69=
=66;colo=72:bla=63k">&nb=73p=3B&nbsp;&n=62=73=70=3B=26nb=73p;&=6Ebsp; Vi=64=65=
o=43ontrol =49nter=66ac=65 =44e=73=63ri=70=74=6F=72=3A<o=3Ap=3E</o=3Ap>=3C/=73=
p=61n=3E<=2Fp=3E
<p cla=73s=3D"MsoNo=72mal=22><sp=61n styl=65=3D"=66ont-si=7Ae:1=30.=30=70t;fon=
t-fa=6Di=6Cy:&quot;=41ri=61l=26quo=74;,san=73=2Ds=65=72i=66=3Bcolor:bla=63k">&=
=6E=62sp=3B&n=62=73=70;&=6E=62s=70;&=6E=62s=70=3B&n=62=73p=3B&=6E=62sp;=26nbsp=
=3B b=4Ce=6Egth&nbsp;&nbsp;&nb=73=70;&=6E=62=73p;=26=6Eb=73=70=3B=26n=62=73p;&=
nbsp=3B=26=6E=62s=70;=26nbs=70=3B&n=62sp;=26n=62sp;&=6Ebs=70;&=6Ebs=70;&nbsp;&=
nb=73p; 11<=6F=3A=70></=6F:=70=3E<=2Fs=70=61n></p>
<p c=6Cass=3D"MsoNormal=22><=73pan =73ty=6Ce=3D"f=6Fnt-=73=69=7A=65:10=2E0=70t=
=3Bfont-f=61m=69ly=3A&=71=75o=74;=41r=69=61=6C=26quo=74;,=73a=6E=73=2D=73=65ri=
=66;colo=72:=62l=61=63k=22=3E&n=62=73p=3B&=6Ebsp;&nbsp;&nbsp;=26n=62s=70=3B&=
=6Ebsp;=26nbsp; bDescr=69=70=74o=72=54ype&nbs=70=3B&=6Eb=73=70;&n=62sp;&nb=73p=
;=26nbsp;&nb=73p=3B&nb=73=70; 36=3C=6F=3A=70=3E</=6F:p>=3C=2Fs=70a=6E><=2F=70>
<=70 class=3D"MsoNor=6Dal"=3E<=73pan style=3D=22font=2Dsize=3A10.0=70t;=66ont-=
=66amil=79=3A&=71u=6Ft=3B=41rial&qu=6Ft=3B,s=61=6Es-serif=3Bcol=6Fr:black=22=
=3E&nbsp;=26=6Ebsp;&=6E=62s=70=3B&n=62s=70;&=6Ebsp;=26n=62=73p;=26=6Ebs=70=3B =
bDe=73cr=69=70tor=53ubty=70=65&=6Ebs=70;=26nbs=70;=26=6E=62=73p;&=6E=62s=70=3B=
&nbs=70=3B 5 (=50RO=43ESSING=5FUNIT)<o:=70><=2Fo:=70=3E</s=70an=3E</p>
=3C=70 c=6Cass=3D"Mso=4Eor=6Dal=22=3E=3Cspa=6E style=3D=22font=2Dsize:10.=30pt=
;fo=6Et-f=61=6D=69l=79=3A&quot=3BAria=6C&q=75o=74;,=73ans-=73eri=66;=63=6Flor=
=3A=62la=63k"=3E&=6Ebsp;&n=62=73=70;&n=62sp;=26n=62sp=3B&n=62s=70=3B War=6E=69=
ng: Desc=72i=70to=72 to=6F =73=68ort<o=3A=70><=2F=6F:p>=3C=2Fs=70=61n>=3C/=70>
<p =63=6Ca=73s=3D"MsoNorma=6C">=3C=73=70an s=74yle=3D=22fo=6E=74-size:10=2E0=
=70t;fon=74-=66amily:=26qu=6F=74;A=72ial&quot;=2Csa=6E=73-=73=65=72if;colo=72:=
=62=6Cack">&n=62sp;&=6Ebsp;&nbsp=3B=26n=62sp=3B&nbsp=3B=26=6Ebsp;=26nb=73=70; =
b=55ni=74ID&n=62=73p=3B&n=62sp;&n=62sp;&nbsp=3B=26nbsp;=26=6Ebsp=3B&n=62sp=3B&=
nbsp;&n=62=73p=3B&nb=73p;&nb=73=70;&=6E=62sp;=26n=62sp;=26nbsp=3B&nb=73p;&nbsp=
=3B 2=3C=6F:p>=3C=2Fo:p></=73pan=3E=3C=2Fp>
<p clas=73=3D=22Mso=4E=6F=72=6D=61l=22>=3C=73pan s=74yle=3D"fo=6Et=2Dsiz=65:=
=31=30.0=70t=3Bf=6Fn=74=2Df=61=6D=69l=79:&=71=75=6F=74=3BArial&=71=75o=74;,=73=
an=73-=73=65=72i=66=3B=63olor:=62lack=22>=26n=62s=70=3B=26nbsp;&=6Eb=73p;&nbs=
=70;&=6Ebsp=3B&n=62=73p;&nbsp; =62S=6F=75=72=63=65=49D&nb=73p;=26nbs=70;&nbsp=
=3B&=6E=62sp;=26=6E=62sp;&=6Ebsp;=26n=62s=70=3B&nb=73=70=3B&n=62=73=70;&n=62=
=73p;&nbsp;&nbsp;&=6Eb=73p=3B&=6Eb=73p; =31<=6F:=70=3E</=6F:p=3E</=73=70an=3E=
=3C=2Fp=3E
=3Cp cla=73s=3D"Ms=6F=4Eormal"=3E<=73=70a=6E style=3D"=66ont-=73i=7Ae=3A1=30.=
=30p=74=3B=66=6F=6Et-fami=6Cy=3A=26=71u=6Ft;A=72=69a=6C&quot;,sans=2Dserif;co=
=6Cor=3A=62lack"=3E&n=62sp=3B&=6E=62sp=3B&=6Ebsp=3B=26nbsp;=26nb=73p;=26=6E=62=
sp;=26n=62=73=70; wM=61=78Mu=6C=74=69=70lie=72=26=6E=62sp=3B&nb=73p=3B&nbsp=3B=
&=6Eb=73=70=3B=26=6Ebsp=3B&nb=73p;=26=6Ebs=70;&nbs=70;&nb=73p=3B 0<o:=70></=6F=
=3A=70=3E</=73p=61n=3E=3C/=70>
=3Cp =63=6Ca=73=73=3D"Ms=6FNormal">=3Csp=61n sty=6Ce=3D"font=2Ds=69ze=3A1=30.0=
p=74;font-=66ami=6Cy=3A=26q=75ot;=41r=69a=6C&qu=6Ft=3B,san=73-s=65=72if;colo=
=72:blac=6B">&n=62s=70=3B&=6E=62s=70=3B&=6Eb=73p;=26=6Eb=73=70;&=6Ebsp;&=6E=62=
sp;&nbs=70=3B =62C=6FntrolSi=7A=65=26nbsp;&=6Eb=73=70=3B=26nb=73p=3B=26=6Ebs=
=70=3B&nbsp;&=6Ebsp=3B=26nb=73p;&=6Ebs=70;&=6E=62sp=3B&n=62sp=3B=26nb=73p; =32=
=3Co:=70>=3C=2Fo:p></span=3E</p>
<p class=3D=22=4DsoNorm=61l=22=3E<=73=70a=6E st=79l=65=3D"f=6Fn=74-size:1=30.0=
p=74;=66o=6Et-f=61mil=79:=26quo=74;Ar=69=61=6C&qu=6Ft;,s=61ns-s=65r=69f;c=6Flo=
r:bla=63k"=3E&nbsp;&nb=73p;=26nb=73p;&=6E=62sp;&=6Ebs=70=3B&=6E=62=73p;=26nbsp=
; bmCon=74ro=6Cs=26=6E=62sp;&n=62s=70;=26nbsp;&nb=73p; 0=780000165b=3Co:p><=2F=
=6F:p><=2Fspa=6E>=3C/p>
<p class=3D=22M=73oN=6Frm=61l"><spa=6E style=3D"=66ont-size:1=30.0=70=74;f=6Fn=
t=2Dfamily:&quot=3BArial&=71uo=74;,=73ans-s=65rif=3Bcolor:=62=6Cack"=3E&n=62sp=
;=26=6E=62=73=70;&nbs=70;&nbsp;&=6Eb=73p;=26nb=73=70;&nb=73p;&nb=73p=3B&=6Ebs=
=70; Br=69=67htness=3Co=3Ap>=3C/o:p>=3C=2F=73p=61=6E></=70>
<=70 =63l=61ss=3D=22MsoNorm=61=6C"=3E<s=70=61n =73tyle=3D"=66ont=2D=73i=7A=65:=
10=2E=30p=74;=66on=74-fa=6Di=6Cy:=26=71=75=6F=74;Ari=61l&=71=75o=74;=2Cs=61=6E=
s-s=65=72if;col=6F=72:bla=63k">&nbsp;&nb=73p=3B=26=6Ebsp;&nbsp;=26n=62sp;&=6Eb=
=73p;=26=6E=62=73p;&nbs=70;=26=6Ebs=70=3B Co=6Etra=73=74<=6F:=70></o:=70>=3C=
=2F=73=70an>=3C=2Fp>
=3Cp =63la=73s=3D"MsoNo=72m=61=6C"=3E=3Cs=70an =73ty=6C=65=3D"=66on=74-s=69z=
=65:1=30.0pt;font-=66=61mily:&=71uot;=41rial&qu=6Ft;=2C=73ans-=73e=72if;c=6F=
=6Co=72:bl=61=63=6B">&nb=73p;=26=6E=62sp;=26n=62=73=70;&n=62sp;&nb=73p=3B&n=62=
=73p=3B=26nb=73p=3B&nbsp=3B&=6E=62sp; =53atu=72a=74io=6E<o:p><=2Fo:=70>=3C=2Fs=
=70an>=3C/p>
<=70 cl=61s=73=3D=22Mso=4E=6Frma=6C">=3Cspa=6E sty=6C=65=3D"font-si=7A=65:10=
=2E=30p=74;=66=6F=6E=74-f=61m=69l=79=3A&=71uo=74=3B=41=72=69al&qu=6Ft;,san=73=
=2Ds=65rif;col=6Fr:black=22=3E=26=6E=62s=70;&=6Ebsp;&=6Eb=73p=3B=26nb=73p=3B=
=26nbsp;=26=6Ebs=70;&n=62sp; =26nbsp=3B&n=62sp;Sharpne=73=73<o:p=3E</=6F:p>=3C=
/s=70an><=2Fp=3E
<p =63las=73=3D=22M=73oNo=72=6D=61=6C"=3E<span =73ty=6C=65=3D"fo=6Et=2Ds=69ze:=
=310=2E0pt=3B=66o=6E=74-=66=61mi=6C=79:&qu=6Ft=3B=41=72ia=6C=26qu=6Ft;,sans-se=
=72if;color:bla=63k=22>&=6E=62sp;&=6E=62s=70;&=6Ebsp;&=6E=62s=70;&nbsp;&=6Ebsp=
;&nb=73p=3B=26=6Ebs=70;&nb=73=70=3B =57h=69=74=65 Balanc=65 =54=65=6Dper=61t=
=75re<o=3Ap><=2Fo:=70></=73pan>=3C/p>
=3C=70 cl=61ss=3D"Mso=4Eorma=6C=22=3E<s=70an =73=74yle=3D=22font-siz=65:=310.0=
pt;fon=74=2Dfa=6D=69l=79=3A&qu=6Ft;A=72i=61l&qu=6Ft=3B=2Cs=61=6E=73=2D=73e=72i=
=66;c=6Fl=6Fr:bla=63k=22>&nbs=70=3B&=6Eb=73p;&nbs=70;&n=62sp;&nbsp=3B=26=6Ebsp=
=3B=26nb=73=70;&nbsp;&=6Eb=73=70; =47ain<o:=70=3E<=2Fo=3Ap>=3C/spa=6E></=70=3E
<p =63las=73=3D"Ms=6FNo=72m=61=6C"=3E=3C=73pan st=79=6Ce=3D"font=2D=73=69ze=3A=
10=2E0pt=3Bfont=2Dfami=6Cy:&=71uo=74=3BAr=69al&q=75ot;,san=73-=73e=72if;=63o=
=6Co=72=3Abla=63k">=26nbs=70;&=6Ebs=70=3B=26n=62sp=3B=26nbsp=3B=26nbs=70=3B&=
=6E=62sp;&n=62sp=3B=26n=62sp=3B=26n=62=73p; Power Li=6Ee F=72equ=65n=63=79<=6F=
:=70=3E</o:p>=3C=2Fs=70an><=2Fp>
<=70 c=6Cass=3D"=4D=73oNorma=6C">=3C=73pan style=3D=22fo=6Et-size:1=30.=30p=74=
;f=6F=6Et-fa=6Dil=79=3A&=71uo=74;Ar=69a=6C&=71uot;,sa=6Es-s=65=72=69f;color=3A=
=62=6Ca=63=6B=22>=26nbsp;&nbsp;&=6Ebs=70;&nb=73p;&=6Ebs=70;&n=62sp;=26=6Eb=73=
=70=3B=26=6Ebsp;&=6Ebsp; W=68i=74e Ba=6Ca=6Ece Tem=70e=72a=74ure, Auto<o:p=3E=
=3C=2Fo:p><=2Fspan></p>
=3C=70 c=6Ca=73=73=3D"M=73o=4E=6F=72=6D=61l"><=73pa=6E =73t=79=6Ce=3D=22=66ont=
-s=69ze=3A10=2E0pt;=66on=74-fami=6Cy=3A&=71=75ot=3BA=72i=61=6C&q=75=6Ft=3B,s=
=61=6Es-=73erif=3B=63o=6Cor:b=6Cac=6B">&=6Ebs=70=3B=26nb=73=70;=26=6E=62sp;&n=
=62=73p=3B&=6Ebs=70;=26=6Ebs=70;&nbs=70; =69P=72oc=65=73=73ing=26nbs=70;&=6Ebs=
p=3B&nbs=70;&nbsp;=26n=62sp=3B&nbsp;=26=6E=62sp=3B=26nb=73=70;&nbsp;&n=62sp=3B=
=26=6E=62sp;=26nb=73=70; =30
<=6F:=70=3E=3C/o:=70></=73=70an=3E</p>
=3Cp cla=73=73=3D=22Ms=6FNorm=61l"><=73pan =73=74yle=3D=22f=6Fnt-size=3A10=2E0=
=70t;fon=74-f=61=6D=69l=79:=26qu=6Ft;Ar=69al&=71uo=74=3B,s=61ns=2Dserif;co=6Co=
=72:bl=61ck=22=3E&=6Eb=73=70;&nbsp;&n=62s=70;=26=6Eb=73p;=26=6Ebs=70;=26nbsp=
=3B&nbsp=3B&n=62sp=3B=62m=56i=64=65=6F=53=74=61=6Ed=61r=64=73&nbsp;&n=62s=70;&=
=6Eb=73=70;&=6Ebsp=3B =30=78=31c<o:p>=3C/o=3Ap>=3C/=73pan>=3C=2F=70>
<p class=3D"=4Dso=4Eo=72mal=22><s=70=61n styl=65=3D"=66=6Fnt-size:=310=2E=30pt=
=3B=66=6Fn=74-=66=61=6D=69ly=3A=26quo=74;Aria=6C=26q=75=6Ft=3B=2Cs=61ns=2Dse=
=72if;=63o=6Cor:=62la=63k">&=6E=62s=70=3B&=6Eb=73p=3B&nb=73=70;=26=6E=62=73p;&=
n=62sp;=26=6Eb=73=70;&=6Ebsp=3B=26n=62sp;&nbsp=3B PA=4C =2D =3625/5=30<o:p>=3C=
/o:p>=3C/span></=70=3E
<p clas=73=3D"MsoN=6Frma=6C"=3E<sp=61n styl=65=3D=22font=2D=73=69ze=3A=310=2E0=
pt;font-f=61=6Dily:=26qu=6F=74;=41rial&=71=75=6Ft=3B=2Cs=61ns-se=72=69f=3Bc=6F=
=6C=6Fr=3A=62lack">=26n=62sp;=26n=62=73p;=26=6E=62=73p;&=6E=62sp;=26=6E=62sp=
=3B=26n=62s=70=3B&=6Ebs=70;=26nbs=70=3B=26nb=73p; =53ECA=4D =2D 625=2F5=30<o:=
=70=3E=3C/o:=70=3E</=73p=61n=3E=3C=2F=70=3E
=3Cp cl=61ss=3D=22=4D=73oNo=72=6Da=6C=22><=73pan st=79=6Ce=3D"fon=74-si=7Ae:=
=31=30.0pt;fon=74-fa=6Dily:=26quot;Arial&quot=3B=2Cs=61ns=2D=73er=69f;=63olor:=
blac=6B">&nbsp=3B&nbs=70=3B&=6Ebsp=3B=26nbs=70;&=6E=62s=70=3B&nbsp;&nb=73=70=
=3B&=6Ebsp;&=6Eb=73=70; NT=53C =2D 6=325/50=3Co:p=3E</=6F=3Ap></=73pan>=3C/p>
=3Cp c=6C=61=73s=3D"M=73o=4Eor=6Da=6C=22=3E<=73p=61n s=74y=6Ce=3D"fo=6Et=2Ds=
=69ze=3A10.0pt=3B=66=6Fn=74-=66am=69ly:=26=71u=6Ft=3BAria=6C=26qu=6F=74;,s=61n=
=73=2D=73er=69f=3Bc=6Flo=72:=62lac=6B=22>=26nb=73p;&=6Eb=73=70;&nb=73p;=26=6E=
=62s=70=3B&nb=73p=3B V=69=64e=6FCo=6Et=72ol =49nterfa=63=65 De=73cr=69ptor:<o:=
p></o:p></=73pan=3E</p>
=3C=70 =63l=61s=73=3D=22=4Ds=6FNorma=6C">=3Cspan styl=65=3D"=66=6Fnt-size=3A=
=31=30=2E=30p=74;f=6Fnt-=66a=6Dily:=26quot;=41=72ial&quot;=2C=73=61ns=2D=73e=
=72=69=66;=63=6Fl=6Fr=3A=62l=61ck"=3E&n=62sp;=26n=62s=70=3B&nbs=70=3B=26=6Ebsp=
;&nbsp;&=6Ebsp=3B&nbsp; bL=65ngth&=6E=62s=70;=26nbsp=3B&n=62sp;&=6Ebsp;=26nbs=
=70=3B=26=6E=62=73p;&n=62s=70=3B=26=6Ebsp;&nbsp;=26nbsp;&n=62=73p;&=6Ebs=70;&n=
b=73p;&n=62=73p;&n=62sp=3B 28<o:p><=2F=6F:=70>=3C/=73p=61n>=3C/=70>
=3C=70 c=6Cas=73=3D"MsoNor=6D=61l">=3Cspan =73tyle=3D=22=66on=74=2D=73i=7Ae=3A=
=31=30.0p=74;f=6Fnt-fa=6Dily:&quot;A=72ial=26q=75ot=3B=2C=73=61=6E=73-=73erif=
=3B=63o=6Cor:=62l=61=63=6B=22>&n=62=73p;&nbsp;&nb=73=70=3B=26nb=73p;=26n=62s=
=70=3B&=6E=62sp=3B&=6Eb=73=70; b=44escr=69pt=6Fr=54=79pe=26=6Ebsp;=26=6E=62sp;=
&=6Eb=73p=3B&nbsp=3B&=6E=62s=70;&=6Eb=73p;&n=62s=70=3B =336=3Co:p>=3C/=6F:p></=
s=70=61=6E></=70=3E
<p =63l=61s=73=3D"M=73oN=6Frma=6C=22=3E<=73p=61=6E s=74yle=3D=22=66ont-=73ize=
=3A1=30=2E0pt;fon=74-family=3A&q=75=6F=74;=41=72ia=6C=26quot=3B=2Csa=6Es-=73e=
=72=69f;=63olor=3A=62la=63k">&nbsp;=26nbsp;&=6E=62=73=70;&nbs=70;&=6Ebs=70;&n=
=62sp;&=6Ebsp=3B bDesc=72ipt=6Fr=53u=62ty=70e&=6Ebs=70;&n=62sp=3B&nbs=70;&=6Eb=
=73p=3B&=6Ebsp; =36 (=45XTE=4ESIO=4E=5FUNIT=29=3Co:p><=2Fo:p></s=70an=3E=3C=2F=
=70>
<p cl=61s=73=3D"=4DsoNo=72ma=6C">=3C=73=70=61=6E s=74yl=65=3D=22font-s=69ze:=
=310.0=70t;=66=6Fn=74=2Df=61=6Dil=79=3A&q=75=6Ft=3BAria=6C&quot;,sans-=73er=69=
f;colo=72:b=6C=61=63=6B"=3E&=6Ebs=70;&n=62sp=3B=26=6E=62s=70;=26=6Ebs=70=3B=26=
n=62sp;&nbsp=3B=26=6E=62sp; =62U=6EitID&=6Ebsp;&n=62s=70;&=6Ebsp;&nbsp=3B&=6Eb=
sp=3B=26n=62s=70=3B&nbs=70=3B&nbsp;&n=62=73=70;&=6Ebsp;&=6Ebsp=3B&nbsp=3B=26n=
=62sp=3B=26=6E=62s=70;&n=62=73=70=3B=26=6Ebsp; 3<o:p=3E</=6F:p=3E=3C/s=70an=3E=
</=70>
=3Cp =63=6C=61=73=73=3D"=4DsoN=6F=72=6D=61l"><s=70an s=74=79le=3D"=66=6F=6Et=
=2D=73=69=7A=65:1=30=2E0pt;=66=6Fnt-fam=69ly:&q=75o=74=3BArial&quo=74;=2C=73=
=61ns-=73=65rif;color:bl=61=63k=22=3E&=6E=62sp=3B&=6Ebs=70;=26=6Ebsp;=26nb=73p=
=3B&nbsp=3B&=6Ebs=70;=26=6Ebsp; gu=69=64E=78=74ensi=6FnC=6F=64=65&=6E=62s=70;&=
=6Eb=73p=3B=26nb=73p=3B&nb=73p;&n=62sp;&n=62sp;&n=62sp;&nb=73p; =7Ba2=39=65=37=
=36=341-de0=34=2D4=37e3=2D8b2=62-=664341aff=38888}<o:p=3E=3C/=6F=3Ap></=73pa=
=6E>=3C/p>
<p c=6Cass=3D"=4D=73oNo=72mal=22><=73=70an =73tyl=65=3D=22fo=6Et-size=3A10.0p=
=74=3Bfon=74-fami=6Cy:&quot;Ar=69a=6C&quot;=2C=73ans-=73=65=72=69f;co=6C=6Fr:b=
=6C=61ck"=3E&n=62sp=3B=26nbsp=3B=26nbsp=3B&nbsp=3B&n=62=73p;&nbsp=3B&nb=73=70;=
 bNumControls=26nb=73p;&n=62=73p;&nb=73=70;=26nbsp;&=6E=62sp;&n=62=73p=3B=26nb=
sp;=26nbsp=3B&n=62s=70;&nbs=70=3B 1=39<=6F:=70>=3C/o:p=3E</s=70an></p>
<p cla=73s=3D"Ms=6FNor=6Dal"=3E=3C=73pan style=3D"f=6Fn=74-size:10=2E=30=70t;f=
o=6E=74=2Dfami=6Cy=3A=26=71uot;Ari=61=6C&=71=75=6F=74;,san=73=2Dser=69f=3Bcol=
=6Fr:blac=6B=22>&n=62sp=3B&n=62=73=70;&n=62=73p;&=6Ebsp;&=6Eb=73p=3B&nbsp;=26n=
bs=70; b=4Er=49nPi=6E=73=26n=62sp;=26n=62sp;=26nb=73p;&nb=73p;=26nb=73=70;&=6E=
bs=70=3B&=6Ebsp;=26n=62sp;=26=6E=62s=70;&nbsp=3B=26=6Eb=73p;&n=62=73p=3B&n=62=
=73p;&n=62=73p; =31=3Co:=70>=3C/o=3Ap><=2Fspan></p=3E
<=70 =63=6Ca=73s=3D"=4Dso=4Eorma=6C"=3E=3Csp=61n st=79=6Ce=3D"=66ont=2Ds=69z=
=65=3A1=30.0p=74;font-=66=61mi=6Cy:&q=75=6F=74;Arial&=71uo=74;,=73a=6Es=2D=73=
=65rif=3B=63=6F=6Cor=3Ab=6Ca=63k"=3E=26n=62sp;=26n=62s=70;&=6Eb=73=70=3B&=6Ebs=
p=3B&=6E=62sp;&=6Ebsp;&=6Ebsp; baS=6Furc=65ID=28 0)=26=6E=62sp=3B=26nb=73p;&nb=
=73p;&nbsp;&nb=73p=3B&nbs=70;&nbsp;&nbsp;&nbs=70; 2<o:p><=2F=6F:p>=3C/spa=6E>=
=3C/=70>
<p =63=6Cas=73=3D"Ms=6FN=6Fr=6Da=6C=22><s=70an st=79=6Ce=3D"=66=6Fnt=2Dsiz=65:=
1=30.0pt=3B=66=6Fnt-f=61=6Dil=79=3A=26q=75=6Ft;Aria=6C&=71uot;,=73=61ns-s=65=
=72if;c=6F=6C=6F=72:bl=61=63=6B">=26=6Eb=73p;&nbsp=3B&nbs=70;&=6Ebsp=3B&n=62sp=
;&nb=73p;&nb=73p=3B =62Co=6E=74rolS=69ze&n=62sp;=26n=62s=70=3B&nb=73=70;=26n=
=62s=70=3B&nbsp;&=6Eb=73p;&nb=73p;&=6Eb=73=70=3B=26nb=73p=3B=26=6E=62s=70=3B&n=
b=73p=3B =33=3C=6F:p></o:p=3E</span>=3C/p=3E
<p class=3D"Ms=6FN=6Fr=6Da=6C"=3E=3C=73=70=61=6E =73=74=79le=3D"f=6F=6E=74=2Ds=
iz=65:10.0pt;fo=6E=74=2Dfa=6Dily:&q=75ot=3B=41r=69al&quo=74;,sa=6Es-s=65r=69=
=66;co=6C=6Fr=3Abl=61=63k=22>=26=6Ebs=70;&n=62sp;&nbsp=3B&n=62sp=3B&nb=73=70;&=
nbsp=3B&nbs=70=3B bm=43ontrol=73( 0)=26=6Eb=73p;=26=6E=62sp=3B&nbsp;&nbs=70;&n=
b=73p=3B&n=62sp=3B =30=78ff=3Co:p=3E<=2F=6F:p><=2F=73pa=6E></=70>
<p c=6Cass=3D=22M=73=6F=4Eormal">=3Cspan s=74yle=3D"font=2Dsi=7A=65:1=30.=30p=
=74;=66o=6Et-=66a=6D=69ly:&quot;Arial&quot=3B=2C=73a=6E=73-ser=69=66=3Bcolor:b=
=6C=61ck"=3E=26nb=73p=3B&n=62sp;&nbs=70;&=6Ebs=70;&=6E=62s=70;&=6Ebs=70=3B&nbs=
p; =62mCo=6Etrols=28 1)&=6Ebsp;&=6Ebsp=3B&n=62sp=3B&nbsp;&=6Ebs=70=3B&n=62=73p=
; 0xf=66<o:=70></=6F:=70></=73pan>=3C=2F=70=3E
<p =63lass=3D"=4Ds=6FNo=72ma=6C=22=3E<spa=6E styl=65=3D=22=66o=6E=74=2Ds=69=7A=
e=3A10.=30p=74=3Bfo=6E=74=2Dfa=6D=69=6Cy=3A&q=75ot;A=72ia=6C&q=75=6F=74;,sans-=
s=65ri=66=3B=63=6Fl=6F=72=3A=62l=61ck">&nb=73p;&=6Ebsp;&n=62sp;&n=62=73p;&nbsp=
=3B=26nb=73=70;&nbsp=3B bmC=6Fnt=72o=6Cs( 2)&nb=73p;=26nb=73p=3B=26nbs=70;&=6E=
=62=73p=3B&=6Eb=73=70=3B&nb=73p; 0=7807<o=3Ap=3E=3C/=6F:=70=3E=3C/=73=70an=3E<=
/p=3E
<p c=6Cas=73=3D"=4D=73=6F=4Eormal"><span s=74=79l=65=3D"f=6F=6Et-size:=310.=30=
=70=74;=66ont-=66a=6D=69ly=3A=26qu=6F=74;Ari=61=6C=26=71u=6Ft;,san=73=2D=73er=
=69=66;colo=72:=62lack"=3E&n=62=73p=3B&=6Eb=73=70;&nbs=70;&=6E=62s=70;&=6Ebsp;=
&nbsp;&nbs=70=3B =69Ext=65nsion&n=62sp=3B&n=62=73p;&=6Ebsp;&n=62s=70;&=6Ebsp;=
=26nbsp=3B&=6Ebsp;=26nb=73p;=26=6Ebs=70;=26n=62sp=3B=26=6E=62=73p;=26n=62sp;=
=26=6Eb=73=70=3B =30
<o:p=3E</=6F=3Ap=3E<=2Fspa=6E=3E</p>
=3C=70 c=6C=61=73s=3D"MsoNor=6Da=6C"><span st=79le=3D"fon=74-size=3A10.=30pt;f=
on=74-fam=69=6Cy=3A&=71uot;A=72=69a=6C&quot;,=73an=73-se=72i=66;=63olo=72:b=6C=
=61=63=6B">=26nbsp;&nb=73=70;&=6Ebsp=3B&nbs=70;=26nbs=70;&=6Ebsp;Vi=64eoCo=6Et=
=72=6Fl Int=65rfa=63=65 De=73=63=72ip=74or:=3Co:p=3E</=6F:p><=2F=73pa=6E>=3C/p=
>
=3C=70 c=6Ca=73s=3D"=4DsoN=6Frmal"><=73pa=6E s=74yle=3D"fo=6E=74-size:10=2E0pt=
=3Bf=6F=6E=74-=66=61m=69ly=3A&quo=74;Arial=26q=75ot=3B,=73a=6Es-=73=65r=69f;c=
=6F=6C=6Fr:bl=61ck">&nbsp;&=6Ebs=70=3B&n=62sp;&nbs=70;&nb=73p;=26=6Eb=73p;=26n=
=62sp; =62=4Ce=6Eg=74=68&nbsp=3B&n=62sp=3B=26n=62sp=3B=26nb=73p;&nbs=70;&=6Ebs=
p=3B&n=62sp=3B&=6Ebsp=3B=26=6Ebs=70;=26=6Ebsp;&n=62sp;&n=62sp=3B=26nbsp=3B&=6E=
=62sp;&nbsp;&=6E=62s=70; =39<o:p></o:p=3E=3C/=73pan=3E</p>
=3Cp =63=6C=61ss=3D=22M=73o=4Eormal"=3E<=73p=61=6E styl=65=3D"=66=6Fnt-si=7Ae:=
1=30.=30pt;=66ont-f=61mily:=26quo=74;A=72ial=26=71=75=6Ft;,=73an=73-ser=69f;=
=63olor:bla=63k">&n=62=73=70;&nbsp;=26=6E=62sp=3B&nb=73p;&n=62sp=3B=26n=62sp=
=3B&nbs=70=3B bDes=63r=69pt=6F=72Typ=65&nbs=70;=26nbsp;&=6Eb=73=70=3B=26nbsp;&=
=6E=62sp=3B&n=62sp=3B=26=6Ebsp; 36<=6F:=70>=3C=2Fo:p>=3C=2F=73p=61=6E>=3C=2Fp=
=3E
<p c=6C=61ss=3D"Ms=6FNorma=6C"><sp=61n st=79=6Ce=3D"=66ont-size:10.0=70=74;f=
=6Fnt-=66am=69=6Cy:=26q=75=6F=74;A=72ia=6C&qu=6Ft;=2Csa=6Es=2Dse=72=69f;c=6Flo=
=72=3Abla=63k"=3E&nbsp;=26nbsp;&nbs=70;=26=6Eb=73=70;=26nbs=70=3B&=6Eb=73=70=
=3B=26nbsp; bDesc=72=69=70=74orSubtype&=6Ebsp;&nb=73p=3B&nbsp;=26nbs=70=3B=26n=
bsp; 3 =28=4F=55=54P=55T=5F=54=45=52M=49NAL)<=6F:=70>=3C/=6F:=70>=3C=2Fspa=6E>=
<=2Fp>
<p =63las=73=3D=22M=73oNormal">=3Cspan style=3D"=66ont=2D=73ize=3A1=30=2E0pt;=
=66=6Fnt=2D=66am=69l=79=3A=26quot;Ari=61l=26qu=6Ft;,=73ans-se=72i=66=3Bcol=6F=
=72:=62lack">&=6E=62=73p;=26nbsp;=26=6Eb=73p;&nb=73p;&=6Ebsp=3B=26nbs=70;&nbsp=
; =62TerminalID&nbs=70;&n=62s=70;&=6E=62sp=3B=26nb=73p=3B=26n=62=73p=3B&n=62=
=73p=3B&n=62s=70;&=6E=62=73p=3B&nb=73p;&n=62s=70;=26nbsp=3B&nb=73p; 4=3Co=3Ap=
=3E=3C=2F=6F:=70><=2F=73=70an></p=3E
<=70 =63=6C=61s=73=3D"M=73oNormal"=3E<s=70a=6E sty=6Ce=3D=22font-si=7Ae:1=30.0=
p=74;=66=6Fnt-fa=6Dil=79=3A&q=75ot=3BA=72=69al=26q=75=6Ft=3B,=73a=6Es-serif;c=
=6Flor=3Abla=63k=22>&n=62s=70;&nb=73=70=3B&nbs=70;&=6Ebsp;=26nbs=70;&nbs=70;=
=26=6Ebsp=3B =77=54e=72=6D=69n=61lT=79p=65&n=62s=70;&nbsp;&nb=73=70;&n=62sp;&n=
b=73p; 0x01=301 =55=53=42 S=74=72e=61=6Ding<=6F=3Ap></o:p=3E=3C=2Fspan>=3C=2Fp=
=3E
<p c=6C=61=73s=3D"=4DsoNo=72=6Dal=22>=3C=73=70an style=3D"fo=6E=74-=73ize:10.=
=30pt;=66ont-=66amil=79:&qu=6F=74=3BA=72ial&=71u=6F=74;,s=61n=73=2D=73erif;=63=
olo=72:b=6Ca=63=6B">&n=62s=70;=26nb=73p=3B=26n=62sp;&nbsp;=26=6Eb=73p;&nbs=70=
=3B=26nb=73=70; =62A=73=73=6Fc=54er=6D=69=6Eal&nbsp;&nbs=70=3B&n=62sp;&=6Eb=73=
p;&=6Eb=73p=3B&nbsp;=26=6Eb=73p;&nb=73p=3B=26=6E=62=73=70; =30<o:p><=2F=6F=3A=
=70></=73pan></=70>
=3C=70 class=3D"=4DsoNo=72m=61l"><spa=6E st=79=6C=65=3D"fon=74=2Dsi=7Ae=3A1=30=
=2E0=70=74;font-=66ami=6Cy:=26quot;=41ria=6C&qu=6F=74;=2C=73ans-=73e=72if;col=
=6Fr:b=6Cac=6B=22>&nbs=70;&n=62s=70=3B&n=62sp;&=6Eb=73p;&n=62=73=70;&n=62sp;=
=26=6E=62sp; bS=6Fur=63eI=44&nbs=70;=26=6Ebsp;&n=62sp;&nb=73p=3B&n=62=73p;&n=
=62sp;&n=62sp=3B=26=6Ebs=70;&nbsp;&=6Ebsp;&nbs=70;=26=6Eb=73=70=3B&nb=73p;&nbs=
p; =33=3Co=3Ap>=3C/=6F:p=3E<=2F=73=70=61n>=3C/=70>
=3C=70 =63l=61s=73=3D"=4Dso=4Eormal"=3E<sp=61=6E =73ty=6C=65=3D=22font-s=69ze:=
1=30.0pt;fon=74=2Dfami=6C=79:&quo=74=3BArial&qu=6Ft;,s=61n=73-ser=69f;=63olor:=
=62la=63=6B">=26n=62sp;&n=62sp=3B&nbsp;=26n=62s=70;&=6Ebs=70;&n=62s=70;=26n=62=
=73p=3B iTer=6D=69n=61=6C=26n=62sp;&nbsp;&=6Ebs=70;&nbs=70;&nb=73p;&n=62s=70;&=
nbs=70;&=6Ebsp=3B=26=6Eb=73=70;=26n=62s=70;&=6Ebs=70=3B&nbsp;&n=62=73p;&nb=73p=
; =30
<o:p></o:=70></span></p>
=3Cp c=6Cass=3D"=4D=73=6F=4Eor=6Da=6C=22=3E<sp=61n =73t=79le=3D"fo=6E=74=2D=73=
ize:=310.0=70t;=66on=74=2Df=61m=69ly:&quot;=41ria=6C=26q=75=6F=74;,=73an=73=2D=
seri=66=3B=63olor:=62=6Cack">&=6Ebsp=3B&=6E=62=73=70;&n=62sp;&nbsp;=26=6Ebsp=
=3B=26nbsp;Endpoi=6Et Descript=6Fr:<=6F=3A=70>=3C/=6F:=70>=3C/sp=61n>=3C/p>
<p =63l=61=73s=3D"M=73=6FNor=6Dal"=3E<span style=3D"fo=6E=74-s=69z=65:10.0=70t=
;fon=74=2D=66=61mily:=26quo=74;A=72ial&q=75ot;,sa=6Es-se=72i=66=3Bco=6C=6Fr:bl=
a=63=6B">&nb=73p;&nbsp=3B&nb=73=70;=26=6Ebsp;&nbsp;=26nbsp=3B&=6Eb=73=70; bLen=
=67=74h&=6E=62=73p;&nbsp=3B&nb=73=70=3B=26n=62sp=3B&nbsp=3B&=6Ebsp;&nbsp;=26nb=
sp=3B&nb=73p=3B=26nbs=70=3B=26=6Eb=73p;&nb=73p;&nbsp;&=6Ebsp;&=6Ebsp;&nb=73p; =
7<o:=70=3E</o:p>=3C/=73pan><=2Fp>
<p c=6C=61ss=3D"Ms=6F=4Eo=72m=61l"=3E<s=70=61n st=79=6Ce=3D"fo=6Et-size:10.0pt=
;=66=6Fn=74-fami=6C=79:&q=75=6F=74;=41r=69a=6C&=71u=6Ft;,s=61n=73=2D=73=65r=69=
=66;=63olor:b=6C=61ck">=26nbsp=3B&=6E=62sp;&nbsp;=26=6Ebsp;&nbsp;=26=6Ebsp;&nb=
=73p; bDes=63=72ipt=6F=72T=79=70=65=26nb=73=70;=26nbsp=3B&nbsp;=26nb=73p=3B&=
=6E=62s=70;=26n=62=73=70;=26=6Eb=73p;=26nbsp; =35=3Co=3A=70><=2Fo=3A=70></=73p=
a=6E></=70=3E
<p =63l=61=73s=3D"MsoNo=72m=61l">=3Cspan s=74y=6C=65=3D"=66=6Fnt-size:=31=30=
=2E0pt;font-fa=6Dil=79:&quot;=41r=69al&quot;,=73=61=6Es-se=72i=66;=63olor:blac=
k">&nbsp=3B&=6Ebsp=3B&=6Ebsp;=26=6E=62=73p;=26nb=73p=3B&=6Eb=73p=3B&=6Ebs=70; =
=62E=6E=64p=6Fi=6EtAd=64=72es=73=26=6Ebsp;=26=6Ebsp;=26=6Ebsp;&nbsp; 0x81&n=62=
sp=3B =45P 1 =49=4E<o:=70></o=3Ap></sp=61n=3E=3C/=70>
<p class=3D"=4D=73=6FNor=6Dal">=3Cspan styl=65=3D"fo=6Et=2Dsi=7Ae=3A10.=30=70t=
;f=6F=6Et-family=3A=26q=75ot=3BA=72=69al&quot=3B,=73ans-seri=66;=63=6Flor=3Abl=
=61ck">=26=6Ebs=70=3B=26=6Eb=73p;=26=6Eb=73p;=26nb=73p;&n=62sp=3B&=6E=62sp=3B=
=26n=62=73p; =62m=41ttr=69=62=75=74e=73&nb=73p=3B&nbsp=3B=26=6Ebs=70;&=6E=62s=
=70=3B&n=62=73=70=3B=26=6Ebsp;&=6E=62s=70;&n=62sp;=26n=62s=70=3B&nbs=70;&nbsp;=
 =33<=6F:=70=3E=3C/o:p></s=70a=6E></p>
<=70 =63lass=3D"M=73oNormal"=3E<s=70an style=3D=22font-si=7Ae:10.0p=74;=66o=6E=
t-f=61m=69ly:&q=75=6Ft=3B=41ria=6C&q=75ot;=2Cs=61=6Es=2Ds=65ri=66=3Bc=6Flo=72=
=3A=62l=61=63k=22=3E&=6Eb=73p=3B&nbsp;=26=6Ebsp;&nb=73p;&nb=73p=3B&=6Eb=73p;&=
=6Ebsp;&n=62s=70=3B&nbsp=3B =54ra=6Esf=65r Type&nbs=70;=26=6Ebs=70;=26nbs=70;=
=26nbsp;&n=62=73p;=26nbs=70;&nb=73=70;&nbsp;&=6E=62=73=70;=26n=62=73=70;=26=6E=
bs=70; I=6Et=65=72=72=75pt=3C=6F:=70><=2Fo:p></s=70=61n>=3C=2F=70>
<p =63lass=3D"=4DsoN=6F=72=6Dal"=3E<=73=70an =73ty=6Ce=3D"fon=74=2D=73ize:10.0=
=70t=3Bfont-family:&quo=74;Aria=6C&quo=74;,sans-serif;color:bla=63k=22=3E&nb=
=73=70=3B&nb=73=70;&nb=73p;=26nb=73=70=3B=26=6Ebsp;&nbs=70;&=6E=62=73p=3B=26n=
=62=73p=3B&nbsp; Synch =54ype&nbsp;=26nbsp;&=6E=62sp=3B&nbs=70;=26n=62sp;&nbsp=
;=26n=62s=70;=26=6Ebs=70;&n=62s=70=3B&=6Ebsp;=26nbs=70;&n=62sp=3B=26n=62=73p=
=3B&n=62s=70; N=6F=6E=65<=6F:p=3E<=2Fo=3Ap></span=3E</=70>
<p c=6C=61ss=3D=22MsoN=6F=72ma=6C"=3E<=73p=61=6E =73=74y=6Ce=3D"f=6Fn=74-s=69=
=7A=65:=310.=30pt=3B=66o=6Et=2D=66ami=6Cy:=26qu=6Ft;=41ri=61l&q=75o=74;,sa=6E=
=73=2Dserif;=63o=6Cor=3A=62la=63k=22>&n=62s=70;=26nbsp;&n=62=73p;=26n=62=73=70=
;&nbsp;=26n=62sp;&n=62sp;&nb=73p=3B&nbsp; U=73age Ty=70=65=26nbsp;&=6Eb=73=70;=
&nb=73p;&nbsp;=26nb=73=70;&=6Eb=73p;&n=62=73p;&=6Ebsp;&nb=73p=3B&n=62s=70=3B=
=26nbs=70=3B=26nbsp;=26n=62s=70;&nb=73p; Data=3Co:p></o:p></=73p=61n=3E</=70>
=3Cp c=6C=61=73s=3D"M=73o=4Eormal"><sp=61n styl=65=3D"f=6F=6Et-siz=65:=310.0=
=70=74;=66o=6Et=2D=66=61=6Dily=3A&q=75ot;=41ri=61=6C&qu=6F=74;,s=61ns=2Dserif;=
col=6Fr=3Abl=61c=6B=22=3E=26n=62s=70;=26nb=73p;&=6E=62=73p;&=6Ebsp;&=6E=62=73p=
;=26nb=73=70=3B&n=62=73p; =77=4D=61xPacke=74=53i=7A=65&nbsp;&=6Ebsp;=26n=62=73=
p;&nb=73=70; =30x=30=3040=26nbsp; 1=78 6=34 b=79=74es=3Co:=70=3E</o:p=3E</s=70=
an=3E</p>
=3Cp clas=73=3D"M=73oNorma=6C"><=73pa=6E st=79le=3D"fo=6Et=2Ds=69ze:1=30.=30pt=
;f=6Fnt-fam=69ly=3A&qu=6Ft=3BAr=69=61l&qu=6F=74;=2C=73ans=2Ds=65=72i=66;co=6C=
=6Fr=3Ablack=22>&nbs=70;=26nbs=70;&nb=73p;&nbsp=3B&=6Ebs=70=3B=26=6Ebsp; &nb=
=73p;b=49=6Eterval&=6Ebsp;&n=62=73p=3B&n=62sp;&nbsp;&=6Eb=73p;&=6Eb=73p;&nb=73=
p;&=6Eb=73=70;&nbsp;&n=62sp;&n=62sp=3B=26=6Ebsp;=26nb=73=70;&nb=73=70; 8=3Co:p=
></o:p>=3C/spa=6E></p=3E
<p c=6Ca=73=73=3D"M=73oNormal"><=73pa=6E st=79le=3D=22=66=6Fnt-s=69ze:1=30.0=
=70=74;f=6Fnt=2D=66a=6Di=6C=79:&q=75=6Ft=3BA=72i=61l&q=75=6Ft;,=73an=73=2Ds=65=
ri=66;=63o=6Cor=3Abl=61c=6B">&nb=73=70;&=6Ebsp=3B=26nbsp=3B Int=65r=66a=63e =
=44=65=73=63=72iptor=3A<o:=70></o:=70=3E</spa=6E>=3C/=70>
<p cl=61=73s=3D=22Ms=6FNor=6D=61l"=3E<span sty=6Ce=3D"f=6F=6Et-=73ize:10.=30pt=
;fon=74=2Df=61=6D=69ly=3A&quo=74;Arial=26=71=75ot;,sans-=73eri=66=3Bcolor=3A=
=62=6C=61=63k=22>=26=6Ebsp=3B=26nb=73p=3B&nbsp=3B=26=6Ebsp;=26n=62sp=3B b=4Ce=
=6Eg=74h=26nbsp;=26nb=73=70;&nbs=70;&nbsp=3B=26nbsp;&=6E=62sp;&nb=73p;&nbs=70;=
&nbs=70;&=6Ebs=70;=26nbsp;&nbsp;=26=6E=62=73p=3B=26n=62sp;&=6Ebsp;&n=62sp; 9=
=3C=6F:=70>=3C/=6F:=70></s=70a=6E><=2Fp>
=3Cp class=3D"=4DsoN=6Frm=61l=22>=3Cs=70=61n style=3D=22font=2Dsi=7A=65=3A10.0=
p=74=3B=66o=6E=74-family:&quo=74;=41ri=61l&q=75o=74=3B,sa=6Es-=73e=72i=66=3B=
=63=6F=6Cor:bl=61c=6B=22>&n=62sp=3B&n=62=73p=3B&nb=73p=3B=26n=62=73p;=26=6Eb=
=73=70; bD=65sc=72iptor=54=79=70=65=26=6Ebs=70;&n=62=73p;&=6Ebsp;&=6E=62s=70=
=3B&=6E=62s=70=3B=26n=62=73=70=3B=26n=62=73p;=26nb=73=70=3B 4<o:p=3E=3C/o=3Ap>=
=3C=2F=73p=61n>=3C/=70>
<=70 class=3D=22M=73=6F=4Eo=72=6Da=6C"><=73=70=61=6E style=3D=22font-s=69ze:10=
.0pt;font=2D=66=61mi=6Cy=3A&quo=74;A=72i=61l&=71uo=74;,=73=61=6Es=2Ds=65ri=66;=
=63olor:b=6Ca=63k"=3E=26=6Ebsp;&nb=73p;&nb=73p;&=6Ebs=70;&=6Ebs=70; bInter=66a=
c=65=4E=75=6Dbe=72=26=6Ebs=70=3B&=6Ebsp;&nbsp=3B=26nbs=70=3B&nb=73=70;&=6E=62=
=73p;=26n=62s=70; 1=3C=6F:=70><=2Fo=3A=70=3E=3C/=73=70an=3E=3C/p=3E
<p cla=73s=3D=22M=73oNo=72ma=6C"=3E<=73pan s=74y=6Ce=3D"f=6Fn=74-siz=65:=310.=
=30pt=3Bf=6F=6Et=2D=66a=6D=69=6C=79=3A&quot;=41ri=61=6C&qu=6F=74=3B=2Cs=61ns=
=2Dse=72if;co=6Co=72=3A=62la=63=6B">&n=62sp;&=6Ebsp;&n=62=73=70;=26nbsp;=26nb=
=73=70=3B b=41l=74e=72n=61teS=65tting&nbsp=3B&nbsp;=26nb=73p=3B&=6Ebsp;&nbsp;=
=26=6E=62sp; 0<=6F:p>=3C/o:p></sp=61=6E>=3C=2F=70>
<p =63lass=3D=22MsoNormal">=3Cspa=6E =73tyl=65=3D=22fon=74-=73=69ze:10.0p=74=
=3Bfont=2Df=61mily:=26=71=75ot;Ari=61l&q=75o=74;,=73a=6Es-ser=69=66;c=6Fl=6Fr:=
black=22>&n=62sp;&nbs=70;&nb=73p=3B&=6E=62sp=3B=26=6Eb=73p=3B b=4Eum=45nd=70oi=
=6Ets&n=62sp;&=6Ebsp=3B&=6Ebs=70=3B&nb=73p=3B=26nbsp;&nb=73=70;&nbsp=3B&nb=73=
=70=3B=26n=62sp;=26n=62s=70; =30<=6F:p=3E<=2F=6F=3A=70><=2Fspan=3E<=2Fp>
=3Cp clas=73=3D"M=73o=4Eorm=61l=22=3E=3C=73=70=61n style=3D"=66on=74-=73=69ze=
=3A10.0pt;=66on=74-fam=69ly:&q=75ot;=41rial&quot;,sans-serif;=63o=6Cor:bl=61=
=63k=22>&n=62=73p=3B&n=62=73p;&=6Eb=73=70=3B&nb=73p;&nb=73p; bInterfa=63eC=6Ca=
s=73&nb=73=70;=26nbsp;=26=6Ebsp;&nbs=70;=26nb=73p;=26nbsp=3B&nb=73=70=3B 14 Vi=
=64eo<o:p>=3C/=6F:p=3E=3C=2Fspa=6E=3E</p>
<p =63lass=3D"=4Ds=6F=4E=6F=72m=61l">=3C=73pan styl=65=3D"=66ont=2Dsi=7Ae=3A=
=310=2E0p=74=3Bfont=2Dfamil=79=3A=26quot=3BArial=26=71uo=74;,sa=6Es-seri=66;=
=63=6F=6Cor:bl=61c=6B"=3E=26nbsp;&=6E=62=73=70;&n=62sp=3B&nbsp=3B &=6Ebsp;b=49=
nter=66a=63=65S=75bCl=61=73s&=6E=62s=70;=26n=62sp=3B&n=62sp=3B=26nb=73p=3B=26=
=6Ebsp; 2 Video Str=65a=6D=69ng<o:=70></o:p=3E=3C/span></p>
<=70 cl=61=73s=3D=22M=73o=4Eor=6Dal"><s=70a=6E =73tyle=3D"fon=74=2Dsiz=65=3A=
=31=30=2E0pt;=66o=6Et-fami=6Cy:&q=75ot;Aria=6C=26q=75=6Ft=3B=2Cs=61=6Es=2Ds=65=
rif;=63=6F=6Co=72:b=6Cack"=3E&nb=73=70;&n=62s=70=3B&nbs=70;&nbsp=3B&nbs=70=3B =
b=49=6E=74er=66a=63eP=72=6F=74ocol&n=62s=70;=26=6Eb=73=70=3B&n=62=73p;&n=62s=
=70;&n=62s=70=3B 0
=3Co=3Ap>=3C/o=3Ap=3E</sp=61n=3E</=70>
<p cla=73=73=3D=22=4Ds=6FNor=6Dal"><span sty=6C=65=3D"=66o=6Et-si=7A=65:10.0pt=
;f=6Fnt=2D=66ami=6Cy:&=71u=6F=74;=41r=69a=6C&qu=6F=74=3B=2C=73=61n=73-se=72=69=
f;color:bla=63k=22>&=6Ebsp;&=6E=62sp=3B&nbs=70;&=6Eb=73=70=3B=26nbs=70;&n=62sp=
=3B=69I=6Eterf=61c=65=26=6Ebsp;&=6Eb=73p=3B&=6E=62=73p;&=6Ebs=70;&n=62sp=3B&=
=6Ebsp=3B=26nbsp;=26=6E=62=73p;&=6Ebsp;&nb=73p;=26nbs=70=3B&=6Ebsp;=26nb=73=70=
; 0
<o:p=3E</o:=70><=2Fsp=61n=3E</p>
=3Cp =63la=73s=3D"MsoNo=72m=61l">=3C=73=70=61=6E style=3D"=66=6F=6E=74-size:1=
=30.0p=74=3B=66on=74=2D=66ami=6C=79:&=71=75ot;A=72ia=6C=26=71uo=74=3B,=73a=6Es=
-se=72i=66;=63=6F=6Cor:b=6Cack=22>&nbs=70=3B&nb=73p=3B=26=6E=62=73=70=3B&nbsp;=
&nbsp;=26=6E=62=73=70=3B=56ideoStre=61=6D=69=6Eg In=74=65rfa=63e Descrip=74or=
=3A<o=3Ap><=2Fo:=70></span=3E<=2F=70>
<=70 =63lass=3D=22Mso=4E=6Frm=61l=22=3E<=73p=61n style=3D"font-size:=31=30.0pt=
;fon=74-=66a=6Di=6C=79:&qu=6F=74;Ar=69=61l=26quot;=2Csa=6E=73=2Dse=72=69f;c=6F=
=6Cor=3Ab=6Cack=22=3E&nbsp=3B&n=62=73p=3B&n=62=73p;&nbs=70;=26n=62=73=70=3B=26=
n=62sp;&nbs=70=3B bLe=6E=67=74=68&nbsp;&=6Ebsp;&=6Eb=73p;&n=62sp=3B&nbsp;&=6E=
=62=73p;=26nbs=70;&nbs=70=3B=26nb=73=70=3B=26nbsp;=26=6E=62sp;&nbsp;&=6Ebsp;&n=
bsp=3B=26nb=73p;&n=62s=70;&n=62sp;&nbsp;&n=62=73=70;&nbsp;&=6Ebsp;=26nb=73p;=
=26nbs=70;=26n=62s=70;&=6Ebs=70=3B=26n=62=73p;&nbsp; 1=36<=6F:p></o:p></s=70a=
=6E=3E=3C/p=3E
<p =63lass=3D"Ms=6FN=6F=72=6Dal"><sp=61n style=3D"fo=6Et-=73i=7Ae:10.0pt=3B=66=
ont-=66amily:&qu=6F=74;=41ri=61l=26quot;,sa=6E=73=2Ds=65r=69f=3Bc=6Flor:=62=6C=
ack">&n=62=73p;&=6E=62=73p;=26nbs=70;=26=6Ebsp;=26nb=73p;&nbs=70;&=6E=62s=70; =
bDes=63=72ip=74=6FrT=79pe&nb=73p=3B=26=6Eb=73=70;=26=6E=62=73=70;&=6E=62=73p=
=3B&nb=73=70;&n=62sp;=26=6Eb=73p=3B&=6E=62=73p;&=6Eb=73=70;=26nbsp=3B&nbsp;&=
=6Ebsp;&n=62sp;=26n=62s=70;=26n=62sp;&nbsp=3B&=6Ebsp;=26=6Ebs=70;&nbsp; =336=
=3C=6F:p=3E</o:p></sp=61=6E></=70>
<=70 c=6Cass=3D"M=73oNo=72mal=22=3E=3C=73p=61=6E =73=74y=6Ce=3D=22=66o=6Et=2Ds=
i=7Ae=3A10.0pt=3B=66ont=2Dfami=6Cy=3A=26q=75ot;=41rial&q=75ot;,san=73=2Dse=72i=
f=3Bco=6Cor=3Ab=6Cack">&nbsp;&nb=73p;&=6E=62sp;&n=62=73p=3B&nbs=70=3B=26nbsp=
=3B&n=62=73p; bDescript=6FrSubtype&nbs=70;&nb=73=70;&nbsp;&=6Ebsp;&nbsp=3B=26n=
b=73p;&=6Ebsp;=26n=62sp;=26n=62=73p;&=6Eb=73=70=3B&=6Ebs=70;=26=6Eb=73p;&n=62s=
p;=26n=62sp;=26nbsp;&nb=73p;=26nbsp; 1 (I=4E=50=55T=5F=48=45=41D=45=52)<o=3A=
=70></o=3Ap></span></p=3E
<p cl=61ss=3D=22=4D=73=6FNo=72m=61l"><sp=61n st=79le=3D"f=6Fnt-s=69=7Ae:1=30.0=
pt=3B=66o=6Et-fami=6Cy:&=71uo=74=3B=41=72=69al&=71uot;,sa=6E=73=2D=73=65rif;co=
lor:bla=63k">&nb=73p=3B=26nbsp;=26n=62s=70;&n=62s=70;&nbs=70=3B&n=62=73p=3B&=
=6Ebsp; =62N=75=6D=46o=72mats&nbsp;&n=62sp;&nbs=70;=26nbsp;&n=62=73p;&n=62=73p=
=3B&=6E=62sp;=26=6Eb=73p;&=6E=62s=70;=26n=62sp=3B&=6Ebs=70;&=6Ebs=70=3B=26=6E=
=62s=70=3B&nbsp;=26nbsp;&n=62sp;&=6E=62sp;=26n=62sp;&nbsp;&nbsp=3B=26=6Eb=73p;=
=26nbsp;&nbsp;&n=62sp; =33<o:p=3E=3C/o:p=3E</sp=61n><=2Fp=3E
=3Cp c=6Cass=3D"Ms=6FNo=72mal">=3Csp=61=6E sty=6C=65=3D=22f=6Fnt-s=69=7Ae=3A=
=31=30.0=70=74=3B=66o=6E=74=2Dfam=69=6Cy:&q=75=6Ft=3B=41r=69al=26=71u=6Ft;,san=
s-s=65r=69f;color:b=6C=61c=6B"=3E=26nbsp=3B=26=6Ebs=70;&n=62s=70;&nbsp=3B&n=62=
=73p;&nb=73p;&n=62sp; w=54=6F=74alL=65ngt=68=26n=62=73p;&n=62s=70;&nbsp;&n=62=
=73p;&=6Ebsp;=26n=62sp=3B&nb=73p;&n=62sp;=26n=62sp;&nbs=70;&nb=73=70;=26nbsp;=
=26n=62sp=3B&=6E=62sp;&nbsp;=26nb=73p;&nb=73=70=3B&nbsp=3B 0=7801=61c<o:=70=3E=
=3C=2Fo:=70></span><=2F=70>
=3C=70 cl=61ss=3D"=4Dso=4Eo=72m=61l"=3E=3C=73pa=6E style=3D"=66ont-s=69ze=3A1=
=30=2E=30=70t=3Bf=6F=6Et-fa=6D=69=6C=79:&=71uot;A=72ia=6C&=71=75ot;=2Csans-ser=
i=66;c=6Fl=6Fr:b=6Cac=6B">=26=6Eb=73p;&n=62sp=3B=26=6Ebs=70;&nbs=70;&nbsp=3B&n=
=62sp;&nbs=70; =62En=64po=69ntA=64d=72ess&nbs=70=3B&nbs=70;=26nbs=70;&n=62s=70=
;&nb=73p;&nb=73p=3B&nb=73p;=26n=62sp;&n=62sp;=26n=62=73=70;&n=62sp=3B&nbsp=3B=
=26nbsp=3B&=6Ebsp;&=6E=62sp=3B=26n=62sp=3B =30=788=33&nbsp=3B EP 3 I=4E<=6F:=
=70>=3C/o:=70><=2F=73pan=3E<=2Fp>
<p =63las=73=3D"Ms=6F=4E=6Frmal"=3E<sp=61=6E s=74=79le=3D=22fo=6Et=2Dsize:10.0=
p=74;f=6Fnt=2Df=61mi=6Cy:&q=75ot=3BArial=26quot;,sans-s=65ri=66;color:bl=61ck"=
=3E&n=62sp;=26=6E=62=73=70;=26=6Ebs=70;=26=6Eb=73p;&nbsp=3B=26=6Eb=73p;&nbsp; =
=62mInf=6F&nbs=70;&=6Eb=73p;=26n=62=73p=3B&nbsp;&nbs=70;&nb=73p;&nbsp;=26=6Ebs=
p;=26=6Ebs=70=3B=26nb=73=70;&=6E=62sp;&n=62sp=3B=26nbsp;=26n=62sp=3B&nbsp;&=6E=
bs=70;&=6Ebs=70;=26=6Ebs=70=3B=26=6Ebsp;&n=62=73p;&=6Ebsp=3B&nbsp=3B=26n=62sp;=
&nbs=70;&n=62=73=70;&n=62=73p;&nbs=70;&=6E=62=73=70;&nb=73p; 0=3Co:=70>=3C=2F=
=6F=3A=70></s=70=61n=3E</=70=3E
<p cla=73s=3D"=4D=73=6F=4Eormal"><sp=61=6E =73tyl=65=3D"=66o=6Et=2D=73i=7A=65:=
=310.0=70t;fon=74=2D=66amil=79=3A&quot;Ari=61l=26quot;=2Cs=61=6Es-ser=69=66=3B=
c=6Flo=72:=62la=63k=22=3E&nbsp;&nbsp;=26nb=73p;=26=6E=62sp=3B=26=6Ebsp=3B&nbs=
=70;&n=62sp; =62=54=65rmin=61lLink=26=6E=62=73p;&=6Eb=73p;=26nb=73p;&nb=73p=3B=
&nb=73p;&nbsp;&=6Ebsp;&n=62sp;&nb=73=70;=26=6Ebsp;&nbsp=3B&=6E=62sp=3B=26n=62s=
p=3B&n=62=73p;&=6E=62sp;=26nb=73=70=3B&nb=73=70;=26n=62sp=3B&nb=73p;&=6E=62s=
=70;&=6Ebs=70=3B=26n=62s=70=3B 4=3C=6F:p><=2Fo=3Ap><=2Fs=70an>=3C/p>
<=70 cl=61s=73=3D"Ms=6FN=6Frma=6C=22=3E<=73=70=61=6E st=79=6Ce=3D=22=66=6F=6Et=
-=73i=7Ae=3A10.=30=70=74;f=6Fn=74-f=61m=69=6Cy:=26qu=6F=74;A=72i=61l&q=75ot;,s=
=61ns-=73=65=72=69f;col=6Fr=3Ab=6C=61=63k=22>=26nb=73p;&=6Eb=73p=3B=26n=62=73p=
;=26=6E=62s=70;&n=62=73p;&n=62=73=70;=26=6Eb=73=70=3B b=53t=69ll=43=61p=74ureM=
=65thod&nbsp;=26n=62s=70;&nb=73p=3B&nbs=70=3B&=6E=62=73p;&nbsp=3B&nb=73=70;=26=
=6E=62sp;&nb=73=70=3B&nbsp=3B=26nbs=70=3B&n=62s=70;=26n=62sp;&n=62sp;&nbs=70;&=
nb=73p; 0<o=3Ap>=3C/o:p></s=70a=6E></=70=3E
<=70 =63=6C=61=73s=3D"=4Dso=4Eo=72=6D=61l"=3E=3Cspan =73tyl=65=3D"f=6F=6Et=2Ds=
i=7Ae:=31=30=2E=30=70t=3Bfont-family=3A=26=71uot=3B=41=72i=61=6C=26=71=75ot=3B=
,sa=6Es-=73eri=66;col=6F=72=3Ablac=6B"=3E&nb=73p;&nbsp;=26nbsp;&=6E=62sp=3B&n=
=62s=70;=26=6Ebsp;=26=6E=62=73p=3B =62Tr=69ggerS=75pport&nbsp=3B&n=62=73p=3B=
=26nbs=70=3B=26=6Ebsp=3B&=6E=62s=70;&nbsp;&=6E=62sp;=26=6Ebsp=3B=26=6E=62sp=3B=
&=6E=62s=70=3B=26n=62=73p=3B&=6Ebsp;&nb=73=70;=26=6E=62=73p;&n=62sp;&nb=73=70;=
&nbsp;&=6E=62=73=70=3B=26=6Ebsp=3B&nbsp; 0<=6F=3A=70><=2Fo:p=3E=3C=2F=73pa=6E>=
</p>
<p c=6C=61s=73=3D"=4DsoN=6F=72ma=6C"=3E<=73pan styl=65=3D"=66on=74-s=69=7Ae:10=
.0pt;font-f=61mily=3A&q=75ot;A=72=69=61l&=71u=6Ft;,=73ans-s=65=72=69=66;colo=
=72:b=6C=61=63k=22=3E&nbsp;&n=62=73p;&nbsp;&n=62=73p=3B&nb=73=70;&n=62s=70;=26=
nbsp; =62T=72iggerUsage=26n=62sp=3B=26n=62sp;&=6Eb=73p;=26nbs=70;=26nbsp;=26nb=
=73p;&n=62sp;&nbsp;&=6Ebsp;&nbsp;&=6Ebsp=3B&=6Eb=73p;=26nbsp=3B=26nbsp;=26=6E=
=62=73p;&nbsp=3B=26n=62=73=70;&n=62sp;=26nbs=70;&=6E=62=73p;&=6Eb=73p;&=6E=62=
=73p; =30=3Co:=70=3E</o:p=3E</s=70an=3E</=70>
<p cl=61=73=73=3D=22Mso=4Eorm=61=6C"><=73pan st=79le=3D"fo=6E=74=2Ds=69=7Ae:1=
=30.0=70t;=66=6Fnt=2D=66a=6Dil=79:&quo=74=3B=41rial=26qu=6F=74;,sa=6E=73=2D=73=
=65=72=69f;c=6F=6Cor:=62l=61=63k">&=6Ebsp;=26=6Ebs=70;=26=6Ebs=70;=26n=62s=70=
=3B=26nbsp;=26n=62sp;=26nb=73=70=3B bCon=74=72ol=53=69=7Ae&=6Ebsp;&nb=73p;=26n=
bsp;&nbsp=3B&nbsp=3B&nbsp;=26n=62=73p=3B&nbsp;&=6Eb=73=70;=26=6E=62=73=70=3B&=
=6E=62sp;=26n=62sp;=26=6E=62=73=70;&=6Eb=73=70;&=6E=62=73p;=26n=62sp=3B&=6Ebsp=
;&=6Eb=73=70;=26nbsp;=26=6Eb=73p;&n=62sp=3B=26=6Eb=73p=3B&n=62sp=3B 1<=6F=3Ap=
=3E=3C/=6F:p></s=70=61=6E>=3C/p>
<p =63=6Ca=73s=3D=22Ms=6FNor=6Dal=22><sp=61n style=3D"=66o=6E=74-size=3A10=2E=
=30pt;font=2Dfam=69l=79:&=71=75ot=3B=41r=69=61l=26=71=75ot;,s=61ns-se=72i=66;c=
olor:bla=63k=22=3E=26=6Eb=73p=3B&=6Ebsp=3B=26=6E=62sp;=26nbsp;&nbsp;&n=62=73=
=70;&nbsp; bma=43=6F=6Etrols=28 =30=29&=6Eb=73p;&nbsp;=26nbsp=3B&=6Eb=73=70;&n=
bsp=3B&nb=73=70;&n=62sp;=26n=62=73p;&nbsp;&n=62s=70;&=6Ebs=70=3B=26n=62sp;=26n=
=62sp;&=6Ebsp;&nbsp=3B=26nbsp;&nb=73=70;&=6Eb=73=70;=26=6E=62=73p=3B&=6Eb=73p;=
 0=3Co=3A=70></o:=70><=2Fs=70an></=70>
=3C=70 cl=61ss=3D=22MsoN=6Frm=61l=22=3E<=73p=61n =73ty=6C=65=3D"f=6F=6Et-s=69=
=7A=65:=310=2E=30pt=3B=66ont-=66=61mil=79:&q=75ot;Ar=69a=6C&=71uot;,s=61=6Es-=
=73=65rif;=63=6Flor=3A=62=6Cack=22>&=6Ebs=70;&n=62s=70;&n=62=73p;=26nbsp=3B&=
=6Eb=73p;&nb=73p;&nbsp; bmaC=6Fntrols( 1=29&=6Ebs=70=3B&n=62sp;=26=6E=62=73p;=
=26nb=73=70;=26n=62=73p;&nbsp;&n=62sp;&=6E=62s=70;&=6E=62sp;&=6Ebsp;&=6E=62=73=
p;=26=6Eb=73=70;&=6E=62=73p=3B&=6E=62sp;&n=62sp;&nbsp=3B&nbsp;&=6E=62s=70=3B&n=
b=73=70;&nbs=70=3B 0<=6F:p>=3C/=6F=3Ap>=3C=2F=73=70=61=6E></p>
<p =63la=73s=3D"Mso=4Eorm=61=6C"><span st=79le=3D"f=6F=6Et=2Dsize:=31=30.0pt=
=3B=66ont=2D=66amily:=26=71=75ot=3BA=72i=61=6C&=71uo=74=3B=2Cs=61ns-=73erif;co=
lo=72=3A=62lack"=3E&=6Eb=73p;&=6Eb=73p;&nbsp;&=6Ebsp;&nbs=70;&nbsp;&nbsp=3B bm=
=61=43on=74r=6Fls( 2)&nbs=70=3B=26n=62sp;&=6E=62sp;&nbsp=3B=26=6Eb=73p;&nb=73p=
;&=6E=62=73p;&n=62=73=70=3B=26n=62s=70=3B&n=62=73p;&nb=73p=3B&nbsp;=26nbsp;&=
=6Ebsp;&nbsp;=26=6E=62sp;&=6Eb=73p;=26=6Ebsp;&nb=73p;&n=62=73=70; =30<o:p=3E=
=3C/=6F=3Ap></sp=61n=3E=3C=2Fp=3E
<=70 cla=73s=3D"Ms=6F=4E=6F=72ma=6C"=3E<span =73tyl=65=3D"=66ont=2Dsize:10.=30=
pt;fo=6Et=2D=66am=69l=79:&qu=6F=74;=41=72=69a=6C&q=75ot;,s=61ns-s=65ri=66;=63=
=6F=6C=6F=72=3Abl=61=63k">&=6Ebsp;&nb=73p;=26=6Ebsp;&nb=73=70;=26=6Eb=73p=3B V=
i=64=65=6FSt=72=65=61m=69ng =49=6E=74erf=61c=65 Des=63=72ip=74o=72=3A<=6F:p>=
=3C=2F=6F=3A=70>=3C/s=70=61n></=70>
=3C=70 c=6C=61ss=3D"=4Ds=6FN=6Frmal"=3E=3C=73=70an sty=6C=65=3D"=66ont-s=69ze:=
10.0=70t;font=2Dfa=6Dily=3A=26quot;A=72ial=26quot=3B,sa=6Es-s=65=72=69=66=3Bco=
=6C=6Fr:=62lac=6B"=3E=26n=62s=70=3B&=6Ebsp=3B&nbsp=3B=26nbsp;=26=6Ebs=70=3B&=
=6Eb=73=70;=26=6Ebsp=3B b=4Cengt=68&=6Ebsp;=26nb=73p=3B=26n=62sp;&nbsp;&n=62=
=73=70;&=6Eb=73p=3B&nbs=70;&=6Ebsp=3B=26nb=73p=3B&=6Eb=73=70;&=6Eb=73p;&=6Eb=
=73=70=3B=26=6Ebs=70=3B&=6E=62=73=70=3B=26n=62sp;&=6Ebsp=3B&=6Eb=73p=3B&nb=73p=
;&nb=73p=3B=26=6E=62sp;&nb=73p;=26nb=73=70;&n=62s=70=3B=26nbs=70;&=6Eb=73p;=26=
nbs=70;&=6Ebs=70; =31=31<o=3A=70>=3C=2F=6F:p><=2F=73pa=6E><=2Fp>
=3Cp c=6Ca=73=73=3D=22MsoNorma=6C"><span s=74y=6Ce=3D"fo=6E=74-size:10=2E=30=
=70t;fon=74-fam=69=6C=79:&=71uo=74;Ari=61l&qu=6F=74;,=73an=73=2Dserif;=63olor=
=3Abl=61=63k">&nbsp;&nb=73p;&n=62=73p;&nbsp;&=6E=62=73=70;=26n=62sp;&=6E=62s=
=70=3B bDes=63rip=74orTy=70=65&nbsp;&n=62=73p=3B&=6Eb=73=70=3B&n=62=73p=3B=26n=
=62=73p; =26nbsp;&=6Eb=73=70;=26nb=73p;&nbs=70;=26=6Ebsp;&n=62=73p;=26=6E=62s=
=70;&nbsp=3B&=6E=62s=70;&=6E=62s=70;=26nbsp=3B&=6Ebsp;&nb=73p=3B=26nbsp;=336<=
=6F:p></o:=70>=3C/s=70a=6E=3E</p>
<p =63lass=3D"MsoNormal"><spa=6E s=74=79le=3D"=66o=6Et=2D=73ize:1=30.0=70t;fon=
t-fam=69l=79:=26q=75=6F=74=3BAr=69al&q=75ot;=2Csan=73-se=72i=66;color:=62=6Cac=
=6B=22>=26n=62=73p=3B=26n=62=73=70;&n=62=73=70;&nb=73p;&n=62sp=3B&=6Ebsp;=26=
=6Ebs=70; bD=65=73criptorSu=62=74=79pe&n=62s=70;&=6Eb=73p;=26nbsp;=26=6Ebsp;=
=26=6Eb=73p;&nbs=70;=26=6Ebsp;&n=62=73p;=26=6Eb=73=70=3B=26n=62sp;=26nb=73p=3B=
=26nbsp=3B=26n=62sp;=26=6Ebsp;=26=6Eb=73=70;&n=62sp=3B&=6E=62s=70=3B =36 (=46O=
=52MAT=5FM=4APEG)=3Co=3Ap=3E<=2Fo:p>=3C=2F=73p=61=6E></=70>
<p class=3D"=4DsoNor=6Da=6C"=3E<s=70=61=6E style=3D"=66ont-size:1=30.=30p=74=
=3Bfo=6Et=2D=66ami=6C=79:=26quot;Ari=61l&quot=3B,sans=2Ds=65rif;=63=6Flo=72:bl=
=61ck">&nbs=70;&nbs=70=3B=26n=62=73p=3B&=6Ebsp;=26nbs=70;&nb=73p=3B&nb=73p; bF=
o=72m=61=74Ind=65x&nbsp;&nb=73p;&=6Eb=73p;&=6Eb=73p;=26=6E=62sp;=26nbsp=3B&=6E=
=62sp=3B&nbsp;=26n=62sp;&nbsp;=26nbsp=3B&=6Ebsp;=26nb=73p=3B&nbs=70;&=6Ebsp;=
=26=6E=62sp;&nb=73p;&nbsp;&n=62=73p=3B&nb=73p=3B=26=6E=62s=70=3B&nbs=70;=26nbs=
=70=3B 1<o:=70><=2F=6F=3A=70></=73=70an=3E=3C/p>
<p class=3D=22M=73oN=6Frma=6C"><=73p=61n style=3D"fo=6Et=2Ds=69ze:=31=30=2E0=
=70t;=66=6F=6Et=2D=66a=6D=69=6Cy=3A&=71=75ot=3B=41r=69al&quot=3B=2C=73=61=6Es-=
ser=69f;co=6Cor:=62la=63=6B">&=6Ebsp;&=6E=62sp;&nbsp=3B=26n=62=73=70;&nbsp=3B=
=26=6Ebsp;&=6E=62=73p; b=4EumFra=6DeDe=73=63=72i=70tors&nbs=70;&nb=73p=3B=26nb=
=73p;=26nbs=70=3B&=6E=62=73=70;&=6Ebsp;&=6Ebs=70;&n=62=73p;=26nbsp=3B=26=6Ebsp=
;&n=62=73p;&n=62=73=70;=26nb=73p=3B&=6Ebsp;=26=6Ebs=70=3B 4<=6F:p><=2Fo:p></sp=
=61=6E>=3C/p>
<p cla=73s=3D=22M=73=6F=4E=6Fr=6Dal=22><s=70=61=6E s=74yle=3D"f=6Fnt-si=7A=65:=
1=30.0=70t;f=6Fnt-fam=69ly:&=71uot;A=72i=61=6C&=71uot;=2Csans-ser=69f;color=3A=
blac=6B"=3E&nbs=70=3B&=6E=62=73p=3B=26=6E=62sp;=26n=62sp;=26=6Ebs=70;&=6Ebs=70=
;=26n=62s=70; bFlag=73&n=62sp=3B=26=6E=62sp;&nb=73p;&nbs=70;&nbsp;&=6E=62s=70=
=3B&n=62=73=70;=26nbsp;=26=6E=62sp;=26nbsp;=26nbs=70;&=6Eb=73=70=3B=26=6E=62sp=
;=26nb=73=70;=26nbsp=3B&=6E=62s=70;=26=6Ebsp;&=6Eb=73p;&n=62sp;&n=62sp;&n=62sp=
;&=6E=62s=70;&nbsp;&nbsp;=26nb=73p;=26nb=73p;&nbsp;&nbs=70=3B&nbs=70; 0<o:=70>=
=3C/o:=70></span>=3C/p>
<p c=6Cas=73=3D=22M=73=6F=4Eorma=6C=22><span sty=6C=65=3D"fon=74=2D=73=69=7Ae:=
10=2E=30=70t=3Bf=6Fn=74-f=61mi=6Cy:&=71uot;A=72ial=26qu=6Ft=3B=2C=73=61n=73-=
=73=65ri=66;c=6Flo=72:b=6Ca=63k"=3E&n=62sp=3B&=6Ebsp=3B&nbs=70;&n=62s=70;=26nb=
=73=70;&n=62=73=70=3B&=6Ebsp;&n=62sp;&=6E=62=73p; Fixed-si=7A=65 sam=70les: N=
=6F=3Co=3Ap></o:p></=73=70an=3E<=2Fp=3E
=3Cp cla=73=73=3D=22M=73=6FN=6Fr=6Da=6C=22>=3Cs=70an =73t=79=6Ce=3D"fo=6E=74-=
=73iz=65:10=2E0pt;fon=74-fam=69ly:&=71uot=3B=41ri=61l&=71=75o=74;,sa=6Es-ser=
=69f=3Bco=6Cor:=62=6C=61c=6B=22>=26nbsp=3B&nbs=70;=26=6E=62sp;&nbsp=3B=26nbsp=
=3B&n=62sp; &nbsp;=62Def=61ultFra=6De=49nd=65=78&nbsp;=26nbs=70;=26=6Eb=73p;=
=26nbsp;&n=62=73=70=3B&n=62s=70;=26=6Ebs=70=3B&nbsp;=26nbsp;&nb=73=70;=26nb=73=
=70=3B=26nbsp=3B=26n=62s=70;=26nb=73=70=3B&nb=73p;&n=62=73=70;&=6Eb=73p=3B 1<o=
:p></o:p=3E</=73p=61n></p=3E
<=70 =63la=73s=3D=22Mso=4E=6Fr=6Dal=22=3E=3Cspa=6E =73ty=6Ce=3D=22=66=6Fn=74-s=
ize:=31=30.0pt;font-f=61mily:&qu=6Ft=3B=41r=69=61l=26=71uot;=2C=73a=6Es-=73=65=
ri=66;co=6Cor:bl=61=63k=22=3E=26n=62sp=3B=26n=62sp;&=6Ebs=70;&nb=73p;&nbs=70;&=
=6E=62s=70;&n=62sp; =62A=73=70=65ct=52a=74io=58=26nbsp;=26=6Ebsp;&n=62=73p;&=
=6Ebs=70=3B&nbsp;&nbs=70;=26n=62=73=70;&=6Ebsp;&nbsp;&=6Eb=73p;&nb=73p;=26nbs=
=70=3B&nbsp=3B&nbsp;=26=6E=62sp;&=6E=62sp=3B=26nb=73p;&=6E=62sp;&n=62sp=3B&=6E=
=62=73=70=3B&=6E=62=73p=3B=26n=62sp; =30<=6F:p=3E</o:p></span></p=3E
<p =63=6Ca=73s=3D=22Ms=6FNormal"><span =73tyle=3D"fon=74-=73=69z=65:=310=2E0pt=
;f=6Fn=74-f=61mily:&q=75ot;Ari=61l&qu=6Ft;,sans=2D=73erif;c=6F=6Cor:=62=6C=61=
=63k=22>&nbs=70=3B&nbs=70;&=6Eb=73=70;&=6Ebsp;=26=6E=62s=70;=26=6Ebsp=3B=26nb=
=73p; bAspe=63tRa=74=69oY&=6Ebsp;&nbsp;&nb=73p;&nbsp;&nb=73=70;=26nbsp=3B&nb=
=73p;&nb=73p=3B=26n=62sp;&nbsp=3B&nbsp;&=6Ebs=70=3B=26n=62sp;&=6E=62=73p=3B&=
=6Ebs=70=3B&=6Ebsp;&nbs=70;&nb=73p=3B=26nbsp;&nbsp=3B&=6E=62s=70=3B=26=6E=62sp=
; 0<o:p>=3C/o=3Ap></span><=2F=70>
<p class=3D=22MsoNor=6D=61l=22><spa=6E =73t=79le=3D"=66=6Fnt=2Dsize:10.0p=74;f=
o=6Et-=66a=6D=69=6Cy:=26=71u=6Ft;=41ri=61l&q=75=6Ft;=2C=73=61ns-ser=69f=3Bco=
=6Cor=3A=62lack=22=3E&=6E=62sp;&=6Ebsp;&nbs=70=3B&n=62sp=3B&nbsp=3B=26=6E=62=
=73p;&nbs=70; =62mIn=74erl=61=63eFla=67s&nbsp=3B=26nbsp;=26n=62=73=70=3B&=6E=
=62sp;=26nb=73=70;=26=6E=62=73=70;=26n=62sp=3B=26nbsp;=26=6Ebs=70;&=6E=62=73p;=
&=6Eb=73p;=26n=62s=70;=26=6Ebsp;&n=62sp=3B&=6Ebs=70=3B=26nbsp; =30=7800<o=3Ap=
=3E=3C=2Fo=3A=70>=3C/span>=3C/=70=3E
=3Cp =63=6Cass=3D"=4D=73o=4Eormal"><span style=3D"=66o=6Et-size:=31=30.=30pt=
=3Bfo=6Et-f=61m=69ly:&q=75o=74=3BA=72=69a=6C=26=71uot;,sans-seri=66;=63o=6Co=
=72=3A=62=6Cac=6B">&nbs=70=3B&nb=73p;=26nbs=70=3B=26nb=73p;=26=6E=62=73p;&=6E=
=62sp=3B=26=6E=62=73=70;=26nbsp;&=6E=62sp; =49nt=65r=6Caced st=72e=61m or =76a=
r=69abl=65=3A =4Eo<o:p=3E</o:=70></=73=70an></p=3E
<p =63l=61s=73=3D"=4Ds=6FNormal=22><=73pa=6E =73t=79l=65=3D"font=2D=73=69=7Ae:=
10=2E0=70t;=66o=6E=74=2Df=61mily:=26=71=75o=74;Aria=6C=26=71uot=3B,=73a=6Es-s=
=65=72if;c=6Flor:black">=26=6Ebsp;=26=6Ebs=70;&=6Ebsp;=26=6Ebsp;=26nbsp=3B=26=
=6Ebsp=3B&nbs=70;&n=62=73p;=26n=62sp=3B Fiel=64=73 p=65r =66rame=3A =31 =66ie=
=6Cd=73=3Co=3Ap></=6F=3Ap></spa=6E></=70>
=3Cp =63la=73s=3D=22Mso=4Eormal"><span style=3D=22f=6F=6Et=2D=73iz=65:1=30=2E=
=30=70t=3B=66=6Fn=74-f=61mil=79:&=71uot=3B=41rial&=71=75ot;=2Csan=73-se=72=69f=
;co=6C=6Fr:=62l=61ck"=3E=26n=62s=70=3B&nb=73p;&n=62sp=3B&nbsp;&n=62s=70;&nbs=
=70=3B&n=62s=70;&=6Ebsp;=26n=62sp=3B F=69=65ld 1 =66irst=3A =4Eo<o:p><=2F=6F:=
=70=3E<=2Fsp=61n=3E</=70=3E
<p c=6Ca=73s=3D"=4Ds=6F=4Eormal"=3E=3Cspa=6E st=79=6C=65=3D=22fo=6Et=2Dsi=7Ae:=
10.0=70t;fon=74=2Dfa=6D=69l=79:=26=71=75=6Ft;A=72ial&=71u=6Ft;,=73=61ns-=73=65=
ri=66;c=6F=6C=6Fr:=62=6C=61ck">&n=62sp=3B&n=62sp;&=6E=62sp=3B&n=62sp=3B&nb=73p=
;=26=6Eb=73p=3B&nbsp=3B&nbs=70;=26nbs=70=3B F=69eld =70att=65=72=6E: Fi=65ld 1=
 onl=79<=6F:p></=6F=3Ap></span=3E=3C/=70>
<p cl=61=73=73=3D"=4DsoNor=6Dal=22><s=70=61=6E s=74yle=3D"=66on=74=2Dsi=7Ae:10=
.0=70t;fon=74=2Dfami=6C=79=3A&qu=6F=74=3BA=72i=61l&=71=75ot;,=73an=73=2Dserif;=
=63olor:bl=61=63k=22=3E&=6Ebs=70;&n=62=73p=3B=26nbsp;&=6Ebs=70;=26n=62sp;&n=62=
=73p;&n=62s=70; b=43=6FpyP=72otect=26nbsp=3B&n=62sp;&nbsp=3B=26nbsp=3B=26=6Ebs=
p;&n=62sp=3B=26nbsp;=26nbsp;&n=62=73p;&nb=73p;=26nbsp;&n=62sp;&=6Ebsp=3B=26n=
=62sp;&n=62s=70=3B&nbsp;&nbsp=3B&n=62sp=3B=26nbsp;=26=6Eb=73p;=26nbsp;&n=62=73=
p;&n=62sp; 0=3C=6F:p></o:p><=2F=73=70a=6E></=70=3E
<=70 cl=61ss=3D=22MsoNo=72m=61l">=3Cs=70an s=74yle=3D"f=6F=6Et-s=69=7Ae:10.0pt=
=3Bf=6F=6Et-=66a=6Dil=79:&quot=3BAri=61l&q=75ot;,=73=61ns-=73=65rif;color=3A=
=62=6Ca=63k">=26=6Ebsp;=26=6E=62=73=70;&n=62sp;&nb=73p;&=6Eb=73=70; Vide=6FStr=
=65=61ming I=6Et=65=72f=61ce D=65sc=72i=70tor:=3C=6F=3Ap=3E=3C/o:p></=73=70=61=
n=3E</p>
<p c=6C=61=73s=3D"Mso=4E=6Fr=6Dal"><span s=74=79le=3D"f=6Fn=74=2Dsiz=65:=310.=
=30pt;f=6Fn=74-f=61=6Dily:&quot=3B=41ria=6C=26qu=6Ft;=2Csan=73-=73=65r=69=66;c=
o=6Cor:=62lack">&nbsp=3B&=6E=62sp;&nbsp;=26=6E=62s=70=3B&=6Ebs=70;&nb=73p;&=6E=
=62sp; =62=4C=65ng=74h&nb=73=70=3B&nbs=70;&=6Ebs=70=3B&n=62sp;&n=62sp=3B&=6Ebs=
=70=3B&nbs=70=3B=26=6Ebsp;&=6Eb=73p;=26nbsp;=26=6Ebsp=3B&=6Eb=73=70;&n=62sp=3B=
&nb=73p;=26=6E=62sp;&=6E=62sp;&=6E=62=73p;&=6Ebs=70;&=6Ebsp;&n=62=73=70;&nb=73=
p;&nbsp=3B&nbsp;=26=6E=62=73=70=3B&nbsp;&n=62=73p;=26n=62=73p=3B 3=34<o:p=3E<=
=2F=6F:p><=2Fspan=3E=3C=2Fp>
<p cl=61s=73=3D"M=73oN=6F=72m=61=6C">=3Cspan =73=74=79=6C=65=3D"=66on=74-size:=
=310.0p=74=3B=66ont-=66a=6Dily:&q=75o=74=3BAr=69al&quot;=2Cs=61=6E=73-s=65ri=
=66;color:=62la=63=6B">&=6Ebsp=3B=26=6Ebsp=3B&nbsp;&n=62=73=70;&n=62=73p;&=6Eb=
sp;&nbs=70=3B b=44escri=70to=72Ty=70e=26nb=73p;&=6E=62sp=3B=26n=62sp;=26nbsp=
=3B&nb=73p=3B=26nb=73p=3B=26=6Ebs=70;=26nb=73p=3B=26nbsp=3B&nb=73p;&n=62=73=70=
;&nb=73=70;&n=62sp;=26=6Eb=73p=3B&n=62=73p;&=6Eb=73=70;&n=62=73=70=3B&nbsp;&n=
=62=73p; 3=36<=6F=3A=70></o:=70=3E=3C/spa=6E></p>
=3C=70 =63l=61s=73=3D"Mso=4Eorm=61=6C"=3E<span st=79=6Ce=3D"font-s=69=7Ae=3A10=
.0=70=74;font=2D=66=61=6Di=6Cy=3A&qu=6F=74=3BA=72i=61=6C&qu=6Ft;,=73ans-=73=65=
r=69f;co=6Cor:=62=6Cack">&nbs=70;=26=6Ebsp;&nbsp;=26nbsp=3B=26nbs=70;&=6E=62sp=
; =26=6E=62=73p;bD=65s=63riptorSu=62ty=70e=26nbs=70;&=6Eb=73p;&nb=73p;&nbsp;=
=26nbs=70;&nb=73p;&=6Eb=73p;&n=62=73p;=26=6Ebsp=3B=26n=62=73=70;&=6Eb=73p;=26n=
bsp;&nb=73p;&nbsp=3B&nb=73p=3B=26=6Eb=73p;&nb=73p; 7 =28F=52=41ME=5F=4DJ=50=45=
=47)=3Co:p><=2Fo:=70></sp=61n></p>
<p cl=61ss=3D"MsoNo=72=6Da=6C">=3Cspa=6E st=79l=65=3D=22f=6Fn=74-siz=65=3A=310=
.0pt;fo=6E=74-=66ami=6Cy:=26=71=75ot=3B=41=72=69=61=6C=26quot;,=73a=6Es-se=72=
=69f=3B=63o=6C=6Fr:b=6Cack=22=3E&=6E=62s=70;&nbsp;&=6Eb=73p=3B&=6Ebs=70;&=6Eb=
=73=70;=26n=62sp=3B=26nbsp; =62Fr=61m=65=49ndex&nbsp=3B&=6Ebsp;&nb=73p;&=6Ebsp=
;&nbs=70;=26nbsp;&nbsp;&=6Eb=73p=3B=26nb=73p;&=6E=62=73=70;&nb=73p=3B&=6Eb=73p=
;&n=62sp;&=6Eb=73p;&=6Eb=73p;=26=6Ebs=70=3B=26=6Eb=73p;=26nb=73p=3B&nbsp;&nbsp=
;&nbs=70=3B&=6E=62s=70=3B&nbs=70;&=6E=62sp; 1<o:p></o:p=3E=3C/=73pa=6E></p>
<p clas=73=3D=22Ms=6FNormal"><=73pan s=74=79=6Ce=3D"f=6F=6E=74-=73=69ze=3A1=30=
=2E0=70=74;=66=6Fnt=2Dfami=6C=79=3A&q=75o=74;Ari=61l=26=71uot;=2Csa=6Es=2Ds=65=
rif;c=6Fl=6F=72:b=6C=61c=6B=22>&n=62sp;&nb=73p;&=6E=62sp=3B&=6Ebsp;=26nbsp=3B=
=26nb=73p=3B&nbsp=3B =62mCa=70a=62i=6C=69ti=65=73=26n=62=73p=3B=26nbs=70;&=6Eb=
sp;=26nb=73=70=3B=26nbsp;&nb=73=70;=26nb=73p=3B=26n=62sp;&=6E=62sp=3B&n=62s=70=
;&=6Ebsp;&=6Ebsp=3B&=6E=62sp;&nb=73p;=26nb=73=70;=26n=62s=70;=26=6E=62sp;=26=
=6E=62sp; =30x=300<o:p></o:p></span><=2Fp>
<p class=3D"M=73=6FNor=6D=61=6C=22><span st=79le=3D"f=6Fnt-=73ize:10.0=70t;fon=
=74-=66=61m=69ly=3A=26quot=3BA=72i=61l=26=71=75=6F=74;=2C=73ans=2Dserif;color=
=3Abl=61ck=22>&nb=73p;&nbsp;&n=62s=70;=26=6E=62sp=3B=26nbsp;=26=6Ebs=70=3B&nbs=
p;=26=6Eb=73p;=26=6Eb=73=70=3B Sti=6C=6C ima=67=65 u=6Esupp=6F=72t=65d=3C=6F:=
=70=3E=3C/o:p>=3C/s=70=61=6E>=3C/=70=3E
=3C=70 class=3D=22M=73oNormal=22><spa=6E style=3D"fo=6Et-si=7A=65=3A1=30.0pt;f=
on=74=2Dfam=69ly:&q=75=6F=74;=41=72=69=61l&quo=74;=2Cs=61=6Es-serif;co=6Cor:bl=
ac=6B=22=3E&nb=73=70=3B&=6Eb=73p;&n=62s=70=3B=26n=62s=70;&n=62s=70;=26=6Ebsp=
=3B&n=62sp=3B w=57id=74h&nb=73p=3B&nb=73=70;&=6Ebs=70;&n=62=73=70;=26nb=73p;=
=26nbsp=3B=26nb=73p;=26=6E=62=73=70;&nb=73p;&=6Ebsp=3B=26nbsp;=26nbsp=3B&=6E=
=62s=70=3B&nbs=70=3B&nbs=70=3B&nbsp;&=6E=62=73p=3B=26=6E=62sp;&nbs=70;&=6Ebsp=
=3B=26n=62=73p=3B=26nb=73p;=26n=62=73=70;&nbsp=3B&nb=73p;&nbsp=3B 1280<=6F:p>=
=3C/o:p></=73=70a=6E></=70>
<=70 =63l=61ss=3D=22M=73oN=6F=72=6Dal"=3E<s=70a=6E =73ty=6C=65=3D=22font=2Dsiz=
e=3A10=2E=30pt;=66=6Fn=74-fam=69=6C=79:=26quot=3B=41rial=26qu=6F=74;=2Cs=61n=
=73-serif=3Bc=6Fl=6Fr:black"=3E&=6E=62s=70;&nb=73=70;&=6Eb=73p;=26=6Eb=73p=3B&=
=6Ebsp=3B=26nb=73p=3B=26nb=73p; wH=65igh=74&n=62=73p=3B&=6Ebsp;&nbsp;&=6Ebsp;=
=26nbsp;=26=6Ebsp;&n=62sp;=26n=62=73p;&=6Ebs=70;&nb=73p;=26nbs=70;&nbsp=3B&nbs=
p;&=6E=62sp;=26nbsp;&=6Ebsp=3B=26nbsp=3B=26nbsp;&=6Eb=73p;=26nbsp;&=6Eb=73=70;=
&nbsp;&=6Ebsp=3B&nbsp;&n=62sp;&nbsp; 720<o=3Ap>=3C/o:p=3E=3C=2Fspa=6E><=2Fp>
=3C=70 cl=61ss=3D=22M=73o=4Eo=72mal=22><s=70=61n =73tyle=3D=22f=6Fnt=2D=73=69z=
e:=310=2E=30pt;=66=6Fn=74-family:&qu=6Ft;A=72ial&quot=3B,=73an=73-=73e=72=69f;=
c=6Fl=6Fr=3Ablack">=26nbsp;&=6Eb=73p;&nbsp=3B&n=62=73=70=3B&n=62sp;&nbsp=3B=26=
=6Ebs=70; d=77MinB=69t=52ate&n=62=73=70;=26nbsp;&n=62sp=3B&n=62=73p=3B&n=62=73=
=70;&nbs=70;=26n=62sp;&=6E=62sp;&nbsp=3B=26nbs=70=3B&=6Eb=73=70;=26nbsp=3B=26n=
b=73p;&nbs=70;=26=6E=62sp;&=6Ebsp=3B 18432000=3Co=3A=70>=3C/=6F:=70=3E</=73p=
=61n><=2Fp>
<p cl=61ss=3D"=4D=73=6F=4E=6Frmal"><=73pa=6E =73ty=6Ce=3D=22=66o=6Et-si=7Ae:10=
.=30=70t=3B=66=6Fnt=2Df=61=6D=69ly:=26quo=74;A=72ial=26q=75ot;,sans-=73e=72i=
=66;colo=72:b=6Ca=63k">&nbsp;&n=62sp=3B&nbs=70;&nbsp;&=6E=62sp;&n=62sp;=26nb=
=73p=3B dw=4DaxBi=74R=61te=26=6E=62sp;&=6E=62s=70=3B&n=62sp=3B&n=62s=70;&n=62s=
p=3B&nbs=70=3B&n=62s=70;&n=62sp;&=6Eb=73p;&=6E=62sp=3B&n=62=73p;&=6Ebs=70=3B&n=
b=73p;=26nb=73p;&nbsp;=26nbs=70=3B 55=3296000=3Co=3Ap></o:=70=3E</s=70=61n>=3C=
/p=3E
=3Cp c=6Cas=73=3D"=4DsoNorma=6C"><span style=3D=22font-siz=65:10.=30=70=74;f=
=6F=6Et-fam=69ly:&q=75=6Ft;Ari=61l&=71=75=6Ft;,sans=2Dserif=3B=63ol=6Fr:=62=6C=
a=63=6B">&n=62=73p;&=6E=62sp;&=6Eb=73p;=26nb=73p;&=6Eb=73p;&nbsp;&=6Ebs=70; =
=64=77Ma=78V=69deoFr=61=6DeBuffe=72Size&=6E=62s=70;&nbsp=3B&nbsp;&n=62sp=3B 18=
4=33200=3C=6F:=70=3E=3C/o:p=3E=3C/=73pan></p>
<=70 c=6C=61s=73=3D"Ms=6F=4Eormal=22><=73=70an =73t=79l=65=3D=22=66ont-si=7A=
=65:10=2E=30=70t;fon=74=2Df=61mi=6Cy:&=71uot;=41rial&quo=74=3B,=73a=6E=73-se=
=72if=3Bc=6F=6Co=72:=62lack">=26=6Ebs=70;&=6E=62sp;=26nbsp;&nbs=70=3B&n=62s=70=
;=26=6E=62s=70=3B=26=6Eb=73=70=3B dwDe=66a=75ltFr=61m=65Inte=72val&n=62sp;&nbs=
=70=3B&nb=73p;&nb=73p;&=6E=62sp;&nb=73p;&n=62=73p;=26=6E=62sp=3B 3=333=3333=3C=
=6F:p=3E</=6F=3A=70=3E<=2Fspan=3E=3C=2Fp>
=3Cp c=6Cass=3D=22=4D=73o=4Eo=72ma=6C=22>=3Csp=61=6E =73t=79le=3D"font-size:1=
=30=2E0pt;fon=74-f=61m=69l=79:&quot;=41=72ial&qu=6F=74;,sa=6E=73=2Dserif=3Bc=
=6F=6Cor:=62l=61c=6B">=26nb=73p;&=6Eb=73p=3B=26nbsp;&=6E=62=73p=3B=26nbsp;&n=
=62sp=3B=26=6Ebsp=3B bFr=61meInterv=61=6C=54y=70e&n=62s=70=3B&nb=73=70;=26n=62=
s=70;=26nbsp;&nbsp=3B&nbsp;=26nbsp=3B=26nb=73=70;&n=62=73=70=3B=26nbsp;=26nb=
=73p;=26nbsp;=26nbsp;&=6Ebs=70;&n=62sp=3B&nb=73=70;&=6Eb=73p; =32<o:=70></o:=
=70=3E<=2Fspan><=2Fp=3E
=3C=70 =63la=73s=3D"M=73oNormal"><s=70an style=3D"=66o=6Et-siz=65:1=30.0=70t;f=
o=6Et=2Df=61m=69ly=3A=26quot=3BAri=61=6C&quo=74;,sa=6Es-=73erif;co=6C=6F=72=3A=
bl=61ck=22=3E&n=62s=70;&n=62sp;&n=62s=70;&nb=73=70;=26=6Ebs=70=3B&nbs=70;&nbsp=
=3B dwF=72am=65Inte=72v=61l=28 0=29=26nbsp;&=6E=62=73=70=3B&=6Ebsp;&=6Ebsp=3B&=
nbsp;&nbsp;=26nbsp;=26n=62sp;&n=62s=70;&n=62=73p=3B&=6E=62sp; =33=33=33333<o:=
=70>=3C/o:=70=3E=3C/=73pan></=70=3E
<=70 =63l=61ss=3D"Mso=4Eorma=6C"><s=70=61=6E =73ty=6C=65=3D"f=6Fnt-size=3A=31=
=30.0p=74;=66=6F=6Et=2Dfa=6Di=6C=79=3A&q=75ot=3B=41=72ia=6C&=71=75o=74=3B,sa=
=6E=73-=73er=69=66;=63=6Flor:bl=61ck"=3E&n=62s=70;&nb=73=70=3B&=6Ebsp;&=6E=62s=
=70;&nbsp;=26=6Ebs=70=3B&nbsp; d=77=46ra=6D=65In=74=65rval( =31=29&n=62=73p;=
=26n=62sp;=26nbs=70;&=6Ebsp=3B=26=6E=62=73p=3B=26nb=73=70;&nbs=70;&nb=73=70=3B=
&=6E=62=73p;&=6Ebsp;&n=62sp; =34000=300<o:=70></=6F:=70=3E=3C=2Fsp=61n></=70=
=3E
<p cl=61=73s=3D"=4DsoNor=6Da=6C"><s=70a=6E s=74=79le=3D"font-=73ize:1=30=2E0=
=70t=3Bf=6Fnt-f=61mily:&quo=74;Ari=61l&q=75ot;,s=61n=73-=73=65=72if;c=6Flor=3A=
b=6Cack=22=3E&nbsp;&=6Ebs=70=3B&n=62=73p=3B&nbsp;&nbsp; Vi=64eoStreamin=67 I=
=6Eter=66=61c=65 Desc=72iptor:=3C=6F=3Ap><=2F=6F:=70>=3C/=73pan=3E</=70=3E
<p =63=6Cass=3D"Mso=4E=6Frma=6C">=3Cspa=6E st=79le=3D"f=6Fn=74-=73=69=7Ae:1=30=
.0pt=3Bf=6F=6Et-=66a=6D=69l=79=3A&q=75=6Ft;=41rial=26q=75o=74;,sa=6Es=2D=73eri=
=66=3Bc=6Flor:=62l=61ck=22>&nb=73p;=26n=62s=70;&nbsp;&=6E=62s=70;=26nbsp;&nbs=
=70=3B&=6E=62=73=70=3B =62L=65ngth=26=6E=62=73p;&nbsp=3B=26=6E=62=73=70;=26nbs=
p=3B=26=6Ebs=70;=26=6E=62sp=3B=26n=62sp;&=6E=62s=70=3B&=6Ebs=70;&=6Ebsp;&n=62=
=73p=3B&=6Eb=73=70;&n=62=73p=3B&nb=73p;&=6E=62=73p=3B&=6Ebsp;&nb=73=70=3B&=6Eb=
sp;&n=62sp;&n=62sp;&=6Ebs=70;=26=6Ebsp;&n=62sp=3B&=6Ebsp;&nbsp;&nb=73p;&nbs=70=
; 34<=6F:p><=2Fo:p><=2F=73=70an=3E</p>
<=70 class=3D=22Ms=6FN=6Frmal"=3E=3C=73pan =73tyle=3D"fo=6Et=2Dsi=7Ae=3A1=30.0=
pt;fo=6Et-fa=6Dily:=26quo=74;=41r=69al=26quot;,sa=6E=73-se=72=69f=3B=63=6Flo=
=72:black">&n=62=73=70=3B&=6E=62sp;=26n=62sp;&nb=73p=3B&nbsp;&nbsp=3B&n=62=73p=
; bDes=63=72i=70=74orType=26n=62sp=3B=26nbs=70=3B&n=62sp=3B=26n=62s=70=3B&=6Eb=
=73p;&=6Ebsp;=26n=62=73p=3B=26=6E=62=73p=3B&=6E=62=73p;&=6Ebs=70;=26nbs=70;=26=
n=62=73p;&nbsp;&=6Eb=73p;&=6Ebsp=3B=26nbsp=3B&nbsp=3B=26=6Eb=73p;&nbsp; 36=3Co=
=3Ap><=2Fo:p=3E=3C/=73=70a=6E=3E</p>
<p c=6Cass=3D"M=73=6FNor=6Dal=22=3E=3Cs=70a=6E st=79le=3D"f=6F=6Et=2D=73iz=65:=
10.=30pt;font-=66a=6Dil=79=3A&=71u=6F=74=3BAr=69al=26q=75ot;=2C=73a=6Es=2Dseri=
f;col=6Fr=3A=62lack">=26nb=73p=3B&nb=73=70;&=6Ebsp;&=6Ebsp;&nb=73=70=3B&=6E=62=
sp=3B&=6E=62=73p; =62=44escr=69pto=72=53ubt=79=70=65=26nbs=70;&n=62sp;&=6E=62s=
p;&n=62=73p;&nbsp=3B&nbsp=3B&=6Eb=73p;=26nb=73=70;&nbsp=3B&nb=73p;&nbsp=3B&nbs=
p=3B&nb=73p;=26=6Eb=73=70;&=6Ebsp;&nb=73p=3B&nb=73p; 7 (FR=41=4DE=5FM=4APEG=29=
<o:p>=3C/o:p><=2F=73pa=6E><=2Fp>
=3Cp =63lass=3D"=4Dso=4E=6Fr=6Dal">=3Cs=70an sty=6Ce=3D"=66ont-s=69=7Ae:10=2E=
=30=70t;font-f=61mi=6C=79=3A=26quo=74;=41ria=6C=26=71=75ot;,=73an=73-ser=69=66=
;c=6F=6C=6Fr:bl=61c=6B=22>&=6Ebsp;=26=6Ebsp=3B&nbsp=3B&nbs=70=3B=26=6Eb=73p;&n=
bsp;=26nbsp=3B b=46r=61meIn=64ex&=6E=62=73p;&=6E=62=73=70;&nb=73=70;=26=6Eb=73=
p;=26=6E=62s=70;&=6Ebs=70;&=6Ebsp;=26n=62sp;&=6Ebsp;=26n=62s=70;&nbsp;=26=6E=
=62sp;=26=6Eb=73p;&n=62s=70;&nbs=70;&n=62=73p;=26=6Ebs=70=3B&nbsp=3B&=6Ebsp;=
=26n=62sp;&nbs=70=3B=26n=62sp;&nb=73=70=3B=26=6E=62sp; =32<o:p>=3C/=6F:p></spa=
=6E=3E</p>
=3C=70 class=3D"=4Ds=6F=4Eor=6Dal">=3Cs=70an =73t=79le=3D"font-=73=69=7Ae:=31=
=30=2E=30pt;=66ont-f=61=6Di=6Cy:=26quot;=41rial&quot;,s=61ns-se=72i=66=3Bc=6Fl=
=6Fr:=62lack">=26n=62=73p;&nbsp;&=6E=62=73=70=3B&=6Ebsp=3B=26=6Eb=73=70;=26=6E=
=62=73=70=3B=26nb=73p; bmCap=61=62iliti=65s=26=6E=62=73p;=26=6Eb=73p;=26n=62sp=
=3B=26n=62sp;=26=6Eb=73=70;=26nb=73=70=3B=26=6Ebsp=3B&nb=73p=3B&n=62=73p=3B&=
=6Ebsp;&n=62s=70;&=6Ebs=70;=26=6Ebsp=3B&n=62=73p;&nbs=70;&n=62s=70;=26=6E=62sp=
;&=6E=62=73p; 0x=30=30<o=3Ap></o:=70=3E</=73pan></p>
<p =63la=73=73=3D"M=73o=4Eo=72m=61l=22><sp=61n s=74yl=65=3D"f=6F=6Et-size:10.=
=30=70t=3Bf=6F=6Et-f=61=6Dil=79=3A=26qu=6Ft;Ar=69al&=71uot;,sa=6Es=2Dse=72if=
=3B=63ol=6F=72:=62lack">&nbs=70;=26n=62s=70;&nbsp;&n=62=73p=3B=26nbsp;&nbsp;=
=26=6Ebsp=3B&nbsp;&n=62sp; Sti=6Cl =69=6Dag=65 =75ns=75=70porte=64<o:p></o:p=
=3E=3C/span></p=3E
<p cla=73s=3D"=4DsoNo=72mal">=3Cspan s=74yle=3D"=66o=6E=74-size=3A10=2E0p=74;f=
on=74-=66amily:=26quo=74=3B=41r=69al&=71uot;,s=61=6E=73=2D=73er=69f;c=6Flor:bl=
a=63=6B=22=3E&=6Ebsp=3B=26nbsp;&nbs=70;&=6E=62=73p;=26n=62=73p=3B=26n=62sp;&nb=
=73=70=3B w=57id=74h&nbsp=3B&=6E=62sp;&nb=73=70;&nbs=70;=26n=62=73=70;&nb=73p;=
&nb=73p;&nb=73p;=26nb=73p;&n=62sp=3B&n=62=73p;&=6Ebsp;&=6Ebsp;&n=62=73=70;&=6E=
bs=70;&n=62=73p;&nbsp;=26=6Ebsp=3B&nbsp;&nbsp;=26=6E=62sp;&nbs=70;&n=62sp;=26n=
=62sp;&n=62=73p=3B&n=62=73p;&=6Eb=73=70; 6=340<o=3Ap=3E=3C/=6F=3Ap></span=3E<=
=2F=70=3E
=3Cp =63lass=3D"Ms=6F=4Eo=72mal=22><span =73tyle=3D"font-=73ize:1=30.0p=74=3Bf=
ont=2D=66=61m=69=6Cy:&quo=74;=41=72=69a=6C=26quot;,sa=6Es-se=72=69f=3B=63ol=6F=
r=3Abl=61ck">&=6Eb=73p=3B&nbsp;=26nbsp=3B&=6Ebsp;&nbsp;=26n=62=73p=3B=26nbsp; =
w=48e=69g=68=74&=6Eb=73p=3B&=6E=62s=70=3B=26=6Ebsp=3B&n=62s=70=3B&=6Eb=73p;&nb=
=73p;&n=62=73=70=3B&=6Eb=73p;&nb=73=70;&n=62s=70=3B&nb=73p=3B&nbsp=3B&nbs=70;&=
=6Ebsp;=26nbs=70;=26nbs=70=3B=26nbsp=3B &n=62=73p;=26=6Ebsp=3B=26nb=73p=3B&nb=
=73=70;&nbsp;&n=62=73p=3B&nb=73=70;&=6E=62=73=70;&nb=73p=3B4=380<=6F:p><=2F=6F=
=3A=70=3E=3C=2F=73pa=6E=3E=3C/p=3E
<=70 =63=6Cass=3D"M=73=6F=4E=6Frma=6C=22><s=70an =73tyl=65=3D=22=66ont-size=3A=
10.=30=70t=3Bf=6Fnt=2Dfamil=79:=26=71=75=6Ft=3B=41rial=26quot;=2Cs=61ns=2D=73e=
=72if;color=3Abl=61ck">&nbs=70=3B=26nb=73p=3B&nbs=70;&nb=73p=3B&nbsp;&nb=73=70=
;=26=6E=62sp; d=77=4D=69nBit=52a=74e&nbsp;&nbsp=3B=26=6E=62=73p=3B&=6Ebs=70;=
=26nbsp;&=6Eb=73p;&nb=73p;&nb=73p=3B&nbsp;=26=6Ebsp=3B&nbsp;&n=62sp=3B&n=62sp;=
&=6Ebsp;=26nb=73=70;&n=62s=70; 1843=32=30=30=30<o:p></=6F:p><=2F=73=70an></=70=
=3E
<p cl=61ss=3D"=4DsoNormal"><sp=61n st=79=6Ce=3D"font-=73i=7A=65=3A=310.0p=74;f=
=6F=6Et-=66=61=6Di=6C=79:=26=71uot;Arial&quo=74;,sans=2D=73=65=72if;co=6Cor:=
=62=6Ca=63k=22>&=6E=62s=70;&=6Ebs=70=3B&nb=73p;=26nb=73p;&n=62sp;&nb=73p;&=6Eb=
=73p; dwMax=42=69tR=61te&nb=73p;&=6Eb=73=70;&nbsp=3B&=6E=62s=70;&n=62sp;&nb=73=
=70;=26nb=73=70;&nbsp;&n=62sp=3B&=6Ebsp=3B&=6Ebsp;=26n=62=73p;&nb=73p;=26n=62s=
p;&nbsp;=26nb=73p; 5=352=39=360=300<o=3A=70></=6F=3Ap></s=70an=3E<=2Fp>
=3Cp cla=73s=3D"=4DsoNormal">=3C=73=70an =73t=79le=3D"f=6Fnt-=73=69=7Ae=3A10.0=
pt=3B=66o=6Et=2Dfamily:&q=75ot=3B=41rial=26q=75ot;=2Csa=6E=73-=73er=69=66=3B=
=63olo=72:=62lack=22=3E&nbsp;&=6Eb=73p=3B&=6Ebs=70=3B&=6Ebs=70;&nb=73p;&=6E=62=
s=70=3B&=6Ebsp; d=77M=61xV=69=64=65oF=72a=6DeBuff=65rS=69ze&nbs=70;&nb=73p;&=
=6Ebsp;&n=62sp;&nbsp; 61=34400<o:p></o:=70><=2Fspan></p>
<=70 c=6Cass=3D"Ms=6F=4Eorma=6C=22><s=70an =73t=79le=3D"fo=6Et-size:1=30.0=70=
=74=3Bfo=6Et-f=61mily=3A&=71uo=74;=41ri=61l&quo=74=3B=2C=73ans-s=65=72=69=66;c=
olor:black">&=6Eb=73p;&nbsp;&n=62sp;=26=6E=62sp=3B=26nb=73p;=26n=62=73p;&nb=73=
=70; =64=77D=65fault=46r=61meInt=65rval&n=62sp;&nb=73p=3B=26nb=73p=3B=26=6E=62=
sp=3B&nbsp;&n=62sp=3B=26nbs=70;&=6Eb=73p; 3=3333=333=3Co:=70=3E<=2F=6F:p>=3C/=
=73pan></=70=3E
<p cl=61s=73=3D"Mso=4Eorm=61=6C"=3E<sp=61n style=3D=22f=6Fn=74-si=7A=65:1=30=
=2E0pt=3Bf=6Fn=74-=66a=6Dil=79:=26q=75=6F=74;Aria=6C&quot;=2Cs=61=6E=73=2Dser=
=69=66;=63ol=6F=72=3Abl=61ck=22>=26n=62sp;&=6E=62sp=3B=26nb=73=70=3B&nb=73p;&n=
bs=70;=26n=62sp;&=6Eb=73p; =62=46=72=61meI=6E=74=65r=76al=54y=70e&=6E=62sp=3B=
=26n=62sp;=26n=62sp=3B&nbsp=3B=26n=62s=70;=26nb=73=70=3B=26=6E=62sp;&=6E=62=73=
=70;&nbsp;&nbsp=3B=26nbsp;&=6E=62s=70=3B&n=62=73=70;=26=6Ebsp;&=6Ebsp;=26n=62s=
p=3B=26nbsp; 2=3C=6F:=70><=2F=6F=3Ap><=2F=73pa=6E=3E=3C=2Fp=3E
<p =63las=73=3D"=4Ds=6FN=6Frm=61l">=3Cspan st=79=6C=65=3D"fo=6Et-si=7Ae=3A10.0=
p=74;f=6F=6E=74=2D=66=61=6D=69ly=3A&qu=6Ft;=41rial=26quot;=2C=73=61ns-s=65ri=
=66;=63ol=6Fr=3A=62l=61=63k">&=6E=62=73p=3B=26nb=73p=3B&n=62=73p;&nbsp=3B=26=
=6Ebs=70;&nbsp;=26nbs=70=3B =64w=46r=61me=49nter=76al( 0)&nbsp;=26nbsp=3B&=6E=
=62sp;&=6Ebsp;=26=6Eb=73p;=26=6Ebsp=3B&=6Ebsp;&nbs=70=3B&=6E=62s=70;=26n=62=73=
p;&n=62s=70=3B 333=33=333<=6F=3A=70=3E=3C=2Fo:p></s=70a=6E></=70>
<p cl=61ss=3D=22=4Ds=6F=4Eorma=6C=22><s=70=61n style=3D"fo=6E=74=2D=73=69=7A=
=65:10=2E0=70=74=3Bfon=74-family:&quot;=41rial&=71=75ot=3B=2Csans-=73erif=3B=
=63ol=6Fr:b=6Ca=63k">=26=6E=62s=70;&n=62sp;&n=62sp;&nb=73p;=26nb=73=70;&nbsp=
=3B&n=62sp; dw=46=72a=6De=49nte=72=76=61l( =31)&=6Ebs=70=3B&=6Eb=73=70;&n=62s=
=70;=26n=62sp;&n=62=73=70;=26nb=73p=3B&nbs=70=3B&nbsp;&nbsp;&=6Eb=73=70;=26nb=
=73=70; =340=30000=3Co:p></=6F:=70>=3C/=73pan></p>
<p =63l=61=73=73=3D=22MsoNormal"=3E=3Cspan st=79le=3D"f=6F=6Et=2D=73i=7A=65:10=
.0pt=3Bfont-family=3A&quo=74=3B=41=72ia=6C&quot;,=73ans-serif;c=6Fl=6Fr=3Ab=6C=
a=63k"=3E=26n=62s=70;=26n=62sp=3B=26n=62s=70=3B=26=6Ebsp;&=6Eb=73p; =56=69deo=
=53tr=65a=6Di=6E=67 Int=65r=66ac=65 D=65script=6F=72:=3Co:=70=3E</o=3A=70>=3C/=
=73pan><=2Fp>
=3Cp clas=73=3D"M=73oN=6F=72mal"><sp=61n st=79le=3D"f=6F=6Et-siz=65=3A=31=30=
=2E0=70t;fo=6Et-famil=79:&=71u=6Ft;A=72i=61=6C=26quo=74;,sans-se=72if=3Bcolor:=
=62lack=22>=26nbsp;&=6E=62s=70;=26n=62sp;=26nbsp;&nbs=70;&n=62=73=70;&nbs=70; =
bL=65ng=74h&nbs=70=3B&n=62sp;&=6E=62sp;&nbsp;&n=62=73p;&nbsp=3B=26n=62s=70=3B&=
n=62sp;=26=6E=62sp=3B&n=62s=70;=26=6E=62s=70;&n=62s=70=3B&nbsp;=26=6Eb=73=70;=
=26=6E=62=73=70;&=6E=62sp;&nb=73p=3B&=6E=62s=70;=26nbsp;&n=62s=70;&=6E=62s=70;=
&nb=73=70=3B&nb=73p;&=6E=62sp=3B&n=62=73=70;&nbs=70;&nb=73p; =334=3C=6F:p=3E</=
o:p>=3C/=73pan>=3C/p=3E
<p cla=73s=3D"MsoNo=72mal"=3E<=73pan =73tyl=65=3D=22fon=74-=73=69=7A=65:=310=
=2E=30pt=3Bfont=2Dfam=69=6Cy:&=71uot;Arial&qu=6Ft;,s=61n=73-serif=3Bc=6Fl=6Fr:=
=62lack"=3E&=6E=62=73p;&nbsp;=26nbsp;&n=62=73p=3B=26n=62=73p;&n=62sp;=26nbsp; =
bDesc=72i=70=74orT=79p=65=26=6Eb=73=70;&n=62=73p=3B=26=6E=62=73p;&n=62=73p;=26=
n=62=73p;&nbs=70;=26nbsp;&=6E=62s=70=3B&nb=73p=3B=26n=62sp;=26nbs=70;=26n=62sp=
;&n=62s=70;&n=62=73p;&nbsp;&=6Ebsp=3B&=6Eb=73p;=26nbs=70;=26nb=73p; 3=36=3Co:=
=70><=2Fo=3Ap>=3C=2Fsp=61n>=3C/=70=3E
<=70 class=3D"Mso=4Eormal=22=3E=3Cs=70an =73t=79l=65=3D"fo=6Et-size:=31=30.0pt=
;f=6F=6E=74=2Dfa=6Di=6Cy:=26quo=74=3BAri=61=6C&quo=74;=2Cs=61n=73-=73erif=3Bco=
l=6Fr=3A=62la=63k">=26=6Ebsp;&=6E=62=73p;&nb=73=70=3B=26n=62sp;&nbsp;&nb=73p;=
=26nbs=70; bD=65=73cript=6FrS=75=62=74=79pe&n=62=73p=3B&n=62sp;&nbsp=3B=26n=62=
sp=3B&nbsp;&=6Ebs=70;&=6Ebs=70;&=6E=62=73p;=26=6E=62s=70;&=6Ebsp=3B=26nbsp;=26=
n=62sp=3B&nb=73p=3B&nbsp=3B=26nb=73=70=3B&=6Ebsp=3B=26n=62s=70=3B =37 (=46R=41=
M=45=5FMJPEG)<o:p=3E</o:p></spa=6E><=2Fp>
=3C=70 cl=61=73s=3D=22M=73=6FNo=72m=61=6C"=3E<=73p=61n st=79=6C=65=3D"font-siz=
=65:10.0=70t=3Bfont-fa=6Dil=79=3A&qu=6Ft;Aria=6C&qu=6Ft=3B=2Csans-serif=3B=63o=
lor=3A=62la=63=6B">&=6Ebsp=3B=26=6Eb=73p=3B=26nbsp=3B&=6Eb=73=70=3B&nbs=70;&n=
=62=73p;=26n=62s=70; b=46=72a=6DeInd=65x&nb=73=70;=26nbsp=3B&=6Eb=73p;&nb=73p;=
&=6Ebsp=3B&n=62sp=3B&n=62=73=70;&nbsp=3B&=6Ebsp;&n=62s=70=3B=26nbs=70;&=6Ebsp;=
=26nbsp;&n=62sp=3B&=6Ebsp=3B=26n=62=73=70;=26=6Ebsp=3B&=6Ebsp;=26nbsp=3B=26=6E=
b=73p;=26=6Eb=73p;&=6Ebsp=3B=26=6Eb=73=70;=26nbs=70; 3<o:=70>=3C/=6F:=70=3E=3C=
/=73=70=61n><=2Fp>
=3Cp cla=73s=3D"Mso=4Eorma=6C=22=3E=3Cspan sty=6Ce=3D"=66on=74-=73ize=3A1=30=
=2E=30p=74;font=2Dfami=6Cy:&qu=6Ft;Ari=61l=26quot;=2C=73an=73=2Ds=65r=69f;colo=
r:bla=63=6B"=3E&nbs=70;=26=6E=62=73p;&=6Ebs=70;&nbs=70;&nb=73=70;&=6E=62s=70;=
=26nbs=70=3B =62=6D=43ap=61b=69l=69ties&n=62sp=3B=26nb=73=70;&=6E=62sp;=26nbs=
=70;&nbsp;&=6Ebsp;=26nbsp;=26nbs=70;&nbsp=3B=26n=62=73p=3B&nbsp;&nbsp=3B&=6E=
=62sp;&n=62sp;&n=62s=70;=26n=62=73p;&=6E=62sp;&nbsp; 0=7800<o=3Ap=3E</o=3Ap></=
spa=6E></=70=3E
<=70 =63=6C=61s=73=3D=22Mso=4E=6F=72m=61l">=3C=73pan =73t=79l=65=3D"font=2D=73=
=69ze:1=30.0pt=3Bfo=6E=74=2Dfam=69ly=3A&q=75=6Ft;A=72=69=61=6C&qu=6F=74;=2C=73=
ans-=73=65r=69f;color:bl=61ck"=3E&n=62s=70=3B=26=6Ebsp=3B&nb=73p=3B=26nb=73=70=
;&=6Ebs=70=3B=26=6Eb=73p=3B&=6E=62s=70;=26n=62=73p;&nb=73p; =53till =69mage un=
s=75=70=70=6Frted<o:=70>=3C=2Fo:p><=2F=73pa=6E></=70>
=3Cp class=3D=22M=73=6FN=6F=72m=61=6C=22>=3Cspan sty=6Ce=3D=22fo=6E=74=2Dsiz=
=65:10.0pt;font-fa=6Dily:=26=71=75=6Ft=3BAr=69al&q=75=6F=74=3B,sa=6Es=2Dse=72=
=69f=3Bco=6C=6F=72=3Ab=6C=61=63k"=3E&nb=73=70;&n=62sp;&n=62s=70;=26nbsp;=26nbs=
=70=3B&nb=73=70;&=6E=62=73p=3B wW=69=64t=68&nb=73p;&nbs=70;=26nbsp;=26nbsp;&=
=6Ebsp=3B&n=62=73=70;&n=62sp;=26n=62=73p;=26nb=73=70;=26nbs=70=3B&=6Ebsp;=26=
=6Ebs=70=3B&nbsp=3B&nbs=70;&n=62=73p;=26nb=73p=3B=26n=62s=70;=26nb=73=70;=26nb=
=73p;&=6E=62=73p;=26=6Eb=73p=3B&=6Eb=73p;&nbs=70;&=6Ebs=70=3B&nb=73=70;&nbs=70=
; 1920=3Co:p>=3C=2F=6F=3Ap><=2Fs=70=61n>=3C/p>
<p cl=61ss=3D"M=73oNormal">=3C=73p=61n =73=74yle=3D"fo=6E=74=2D=73ize:=31=30=
=2E0p=74=3Bfo=6Et-=66am=69l=79:&=71u=6Ft=3B=41ri=61l&q=75ot;=2C=73a=6E=73-s=65=
=72i=66;=63ol=6F=72:black">&n=62sp;=26nbsp;&=6Eb=73p;&=6E=62s=70=3B=26nbsp=3B=
=26=6Eb=73=70;=26nb=73=70; wHeight&=6E=62=73=70=3B&n=62sp;&=6E=62sp;&nb=73=70;=
&n=62=73=70;&nb=73p=3B&n=62s=70;&nbs=70; =26nbs=70=3B=26nbs=70;&nb=73=70=3B=26=
=6E=62sp=3B&nbs=70=3B&=6E=62=73p;=26nb=73=70=3B&n=62=73p;&=6E=62sp;&n=62sp;&=
=6E=62sp=3B&nb=73p;&nb=73p;&nb=73p;&nbsp;=26nb=73=70;=26=6E=62sp;=31=30=38=30<=
=6F=3Ap=3E</=6F:p></spa=6E>=3C/=70>
<p class=3D=22=4DsoN=6F=72mal">=3Cs=70a=6E =73=74=79=6Ce=3D=22=66=6Fnt-s=69ze=
=3A=310=2E=30=70t=3Bf=6F=6Et-f=61=6D=69l=79:&q=75=6F=74;=41=72ial&=71=75ot;,=
=73a=6E=73-ser=69f;=63=6Fl=6Fr:bla=63k=22>&=6Ebsp=3B&=6Ebs=70;&=6Eb=73p=3B&nbs=
p;&nbs=70;=26nb=73p;&nb=73p; d=77Mi=6EBit=52=61=74=65&nbsp=3B=26=6Ebsp=3B&=6Eb=
s=70;&=6E=62sp;=26=6Eb=73p;&nbs=70;&nb=73p;=26nbsp=3B=26nb=73p=3B=26=6Eb=73p=
=3B=26n=62=73=70;=26=6Eb=73p=3B=26nb=73p;&nbsp;&n=62sp;=26n=62=73=70; =3184320=
=300<=6F=3A=70></o=3Ap></span></=70>
=3Cp cl=61ss=3D=22M=73=6FN=6F=72=6D=61=6C"><sp=61n =73t=79=6Ce=3D=22=66ont-=73=
ize:10=2E=30pt;font=2Dfamily:&=71u=6F=74;=41r=69al=26=71uot;=2Csans=2Ds=65r=69=
f;c=6F=6Cor:black">&nb=73p;=26nbs=70=3B=26=6E=62sp;&=6Ebs=70=3B&n=62s=70;&nbsp=
;&=6Ebs=70; =64wMaxB=69=74Ra=74e&nbsp=3B&nbsp=3B=26=6Ebsp;&nbsp=3B&nbs=70;&n=
=62sp;=26nbs=70;&=6Ebs=70;=26nbs=70;=26n=62s=70=3B&=6Ebs=70;=26=6Eb=73=70;=26=
=6Ebs=70;&nbsp;=26n=62=73=70;&nbs=70=3B 5529600=30=3Co=3Ap>=3C/o=3A=70=3E<=2Fs=
pa=6E><=2F=70=3E
=3Cp =63lass=3D=22=4Dso=4E=6Frma=6C=22>=3Cspa=6E s=74yle=3D"=66=6F=6Et-size:1=
=30.0p=74=3B=66ont=2D=66am=69ly:=26quo=74;=41r=69=61l&qu=6Ft;=2C=73an=73-ser=
=69=66;colo=72:bla=63k"=3E&nbsp;=26n=62sp;&n=62s=70=3B=26nbsp=3B&nbs=70;&nb=73=
p;&n=62sp; dwM=61x=56id=65=6FFrame=42u=66=66e=72Size&n=62sp=3B&nb=73p;=26nbsp;=
&n=62sp; =34=314=3720=30<o=3Ap=3E<=2Fo:=70=3E</s=70an>=3C/p>
<p =63=6C=61=73=73=3D"=4DsoN=6F=72mal"=3E<=73pan =73=74yle=3D"fo=6E=74=2D=73=
=69=7Ae:10.=30pt=3B=66=6Fnt-fam=69ly=3A&=71uot;Ari=61=6C&qu=6Ft;,s=61=6Es-=73e=
rif;=63o=6Cor:blac=6B"=3E=26=6Ebsp;=26nbsp;&=6E=62=73p;&=6E=62sp;&nbsp;=26nbsp=
;&n=62sp; =64wD=65faultFr=61meI=6Et=65r=76al=26nb=73=70=3B=26n=62sp;&n=62sp=3B=
&n=62s=70;&=6E=62s=70=3B=26=6E=62sp;&n=62s=70=3B&nb=73p; =3333333<=6F=3Ap>=3C/=
o:p=3E=3C/spa=6E=3E=3C/p=3E
<p c=6Ca=73s=3D=22Ms=6FN=6F=72ma=6C"><=73=70a=6E s=74y=6Ce=3D"=66on=74=2Dsize:=
10=2E=30pt=3Bf=6F=6Et-fam=69l=79=3A&=71uot;Arial=26=71uot;=2Cs=61ns-s=65=72if;=
co=6Co=72:bla=63k"=3E&=6Ebs=70=3B&nb=73p;&nbsp;=26nb=73=70=3B&nb=73p=3B&nbsp;&=
n=62=73p; bF=72am=65=49nt=65=72v=61lTy=70=65&nbs=70;&nbs=70;&nbs=70;&n=62s=70=
=3B=26=6E=62s=70=3B&nbs=70;&nb=73=70=3B&n=62sp=3B&=6Ebsp;&nbsp=3B&nbsp;&n=62=
=73p;&n=62=73p=3B=26=6E=62s=70=3B&=6E=62sp;&n=62sp;=26n=62=73p; 2<o:p>=3C/o=3A=
p=3E</=73pan><=2Fp=3E
<=70 =63=6Cas=73=3D"M=73oNormal"><=73pan st=79l=65=3D"=66o=6E=74=2Dsi=7A=65=3A=
10.0pt=3Bfont=2Df=61=6D=69ly:&quot;Ari=61=6C=26quo=74;=2C=73=61=6Es-serif=3Bco=
l=6Fr:b=6C=61=63k">&=6Ebs=70;&nbsp=3B&=6Ebsp; &nb=73p=3B&n=62sp;&n=62=73p=3B=
=26nbsp;d=77FrameInterval=28 0)&=6Ebsp;=26nb=73p;=26nbsp=3B=26=6Eb=73p=3B&=6Eb=
=73p=3B=26=6Ebsp;&n=62=73=70;&nbsp;=26nb=73=70=3B=26nb=73p;&=6Ebs=70; =3333=33=
33<o:p=3E</o:p=3E</sp=61n></p=3E
<=70 clas=73=3D"MsoN=6Fr=6D=61l">=3C=73=70an st=79=6Ce=3D"font=2Ds=69=7A=65:=
=310=2E0pt;=66=6F=6Et=2Dfami=6C=79=3A=26q=75o=74;=41rial&quot;,san=73-ser=69=
=66=3Bcolor:bl=61=63=6B">&n=62=73p=3B=26n=62s=70;&n=62s=70=3B&n=62sp;=26nbsp;&=
=6Ebsp;&nb=73=70=3B =64w=46r=61meIn=74=65rva=6C( 1)&=6Ebsp=3B&nb=73=70=3B&=6Eb=
=73p;&nb=73=70=3B&=6Ebsp;&=6E=62sp;=26=6E=62sp=3B&n=62sp;&n=62sp;=26=6Eb=73p;&=
nbsp; =340=3000=30<o:=70=3E</o:p=3E</spa=6E></p>
<=70 =63=6Cass=3D=22M=73oN=6Fr=6D=61l"><spa=6E =73t=79le=3D=22fo=6Et-s=69ze:=
=31=30.0=70t;f=6F=6Et=2D=66a=6D=69=6C=79:&q=75=6Ft=3BA=72=69al&=71uot;,s=61=6E=
s-s=65=72i=66=3B=63olor=3A=62=6Cack"=3E&n=62sp=3B&n=62s=70;=26=6Ebsp;&=6Ebsp=
=3B=26=6Ebs=70=3B Vi=64e=6FStr=65am=69=6Eg I=6Ete=72fac=65 Desc=72ip=74or:=3Co=
:p=3E</o:=70=3E</sp=61n></p=3E
=3Cp =63lass=3D"MsoN=6Frmal"=3E<=73p=61=6E s=74yle=3D"font-siz=65=3A10.0pt;fo=
=6E=74=2Dfami=6C=79=3A=26quo=74;=41r=69=61l&=71=75=6Ft;,s=61ns=2Dse=72if=3B=63=
ol=6F=72:blac=6B"=3E&n=62s=70;&nb=73p=3B&n=62s=70;&=6Ebs=70=3B&=6Eb=73p;=26nbs=
p;=26=6Eb=73=70; =62Le=6Eg=74h&nbsp;&n=62=73p;=26nb=73=70=3B&nbsp=3B=26nbsp;&n=
=62sp=3B&=6Ebsp;&=6Ebs=70;&nbs=70;&nbsp=3B=26nb=73=70;&nb=73p;=26nbs=70=3B=26n=
b=73=70;=26nb=73p;&nbs=70;=26nbs=70=3B=26nbs=70;=26=6E=62sp=3B&n=62sp;=26=6Eb=
=73=70;&=6Eb=73p;&=6E=62s=70;=26nbsp=3B&nbs=70;&n=62sp;=26nbsp; 34<o=3Ap><=2Fo=
=3A=70=3E=3C/spa=6E=3E<=2F=70>
=3Cp cla=73=73=3D"Ms=6FNormal=22><sp=61n =73tyle=3D"fon=74-siz=65:10.0pt=3B=66=
on=74-fam=69l=79=3A=26=71=75=6Ft;=41ri=61l&quo=74;=2C=73=61=6Es-seri=66=3B=63o=
lor:b=6Cac=6B">&nbs=70;=26nb=73=70=3B&nbsp;&nb=73p=3B&nbsp;=26nb=73=70;&nbsp; =
bDe=73c=72=69p=74or=54y=70=65&=6Eb=73p;=26=6Eb=73=70=3B&n=62=73p;&=6Eb=73p;&nb=
s=70=3B=26n=62=73=70;=26n=62sp=3B&=6Eb=73p=3B=26nbs=70;=26n=62=73p;&nb=73p;=26=
=6Ebsp;&=6Eb=73=70;=26=6Eb=73p=3B&=6Eb=73p;&nbsp;&=6Eb=73=70=3B&nbs=70=3B&n=62=
sp; =33=36=3C=6F:=70=3E</o:p=3E</=73=70an></p>
=3C=70 class=3D"M=73o=4E=6F=72mal"=3E<s=70=61n s=74=79l=65=3D"=66o=6Et=2Ds=69=
=7A=65:1=30=2E=30p=74;f=6Fn=74-fam=69=6C=79:&q=75=6Ft=3BAria=6C&quot=3B,=73a=
=6Es-=73=65=72if;colo=72=3Abl=61ck=22=3E&=6Ebsp;=26=6Eb=73p;=26nbs=70=3B&n=62=
=73p;=26nb=73=70;&nbsp;&=6Ebs=70=3B b=44e=73=63ri=70=74o=72S=75=62=74=79pe&n=
=62sp=3B&n=62sp=3B=26n=62sp;&nbsp;=26n=62=73p=3B&nbsp; &n=62=73p;=26=6Ebsp;=26=
n=62sp=3B&nbs=70;&nbs=70;=26n=62=73p;&n=62sp;=26=6E=62sp;&=6Ebsp=3B=26=6Ebsp=
=3B&nbsp;7 (FRA=4D=45=5FMJ=50EG=29<=6F=3Ap></=6F:p></span><=2Fp=3E
=3C=70 =63=6Cass=3D"M=73oNor=6Da=6C"><=73pa=6E =73ty=6Ce=3D"=66=6Fnt-size=3A10=
=2E0=70=74;fo=6Et-=66a=6Dily:=26quot;=41=72i=61=6C&=71=75=6Ft=3B,s=61=6Es-=73e=
r=69=66;=63olor=3Ablac=6B=22=3E&n=62sp=3B=26n=62s=70=3B=26nbsp;&nb=73p;&nbs=70=
;&nb=73=70=3B&=6Eb=73p; bFram=65=49ndex&nb=73p;=26nbs=70=3B&=6E=62sp;&nb=73p;=
=26=6Eb=73=70;=26nb=73=70;&nbsp;=26nbsp;&n=62=73p=3B=26nbs=70;&n=62=73=70;&n=
=62sp=3B&nbs=70=3B&=6Ebsp;&=6Eb=73p=3B=26n=62sp=3B=26=6Ebs=70;&n=62=73=70=3B&=
=6Eb=73p;&nb=73p;&=6Eb=73p=3B&=6E=62sp=3B&n=62=73=70=3B&=6E=62=73p=3B 4<=6F:=
=70></=6F:=70></=73pan><=2Fp>
<p =63l=61ss=3D"=4D=73oNo=72mal=22><s=70an sty=6C=65=3D"=66=6Fnt-si=7A=65:10=
=2E0=70t=3B=66ont-=66=61=6Dily:&quot=3BAr=69=61l&quo=74;,=73ans=2Dseri=66;c=6F=
l=6Fr:bl=61=63=6B=22>&=6Eb=73p;&nbsp=3B=26nb=73p;&n=62s=70;=26nb=73p=3B=26nb=
=73p;=26=6E=62sp=3B bm=43apa=62ili=74ie=73&n=62sp;=26=6Ebs=70;&n=62sp=3B&nb=73=
=70=3B&nbsp=3B=26=6Eb=73p;=26nbsp=3B=26n=62sp;=26nbs=70;&nbs=70;&n=62sp;&n=62=
=73=70;&n=62s=70;&nbsp;&=6Ebsp;=26n=62=73p;&nb=73p=3B=26n=62s=70; 0x0=30<o:p>=
=3C/o:p=3E</=73=70=61n>=3C=2Fp>
<=70 =63lass=3D=22MsoNo=72ma=6C"><s=70an s=74y=6C=65=3D=22fo=6Et=2Dsiz=65:10.=
=30pt;f=6Fnt-f=61mily:&q=75=6Ft=3BA=72i=61l&=71=75ot;,=73ans-se=72i=66;color=
=3A=62=6Cack">&=6Ebsp;=26nb=73=70=3B=26nb=73p;=26nbsp;=26=6Ebs=70=3B=26n=62sp;=
=26nb=73p;&nb=73p=3B&nbsp; St=69=6C=6C =69ma=67=65 uns=75ppor=74ed<o:p>=3C/=6F=
:p>=3C/s=70a=6E>=3C/=70>
=3C=70 cl=61s=73=3D"=4Ds=6FNorma=6C"=3E=3Cspa=6E style=3D"f=6Fn=74-si=7Ae=3A1=
=30=2E=30pt;f=6Fnt-f=61mily:&=71uot;=41=72=69al&=71uo=74;,sa=6Es=2Dserif;co=6C=
=6Fr:b=6Cac=6B"=3E&=6Eb=73=70=3B&nbsp=3B&nbs=70;=26nbs=70;&nb=73p;&=6E=62sp;&n=
bs=70; wWi=64th&=6Ebsp=3B=26=6E=62sp=3B&=6Ebsp;&=6Ebsp=3B=26nbs=70=3B=26n=62=
=73p=3B=26=6E=62s=70=3B=26nbsp=3B&nbsp;&nb=73p=3B=26nb=73p;=26=6Ebsp;=26=6Ebsp=
=3B&=6E=62sp=3B=26nbsp;&nbsp;=26=6Ebsp;&nb=73p;&nbsp;=26nb=73p;&nbs=70=3B&n=62=
=73=70;&nb=73p;=26nbs=70=3B&=6Eb=73=70=3B&n=62sp; =3128=30=3C=6F:=70=3E</=6F:p=
>=3C=2Fsp=61n></p>
=3Cp cl=61=73=73=3D"Mso=4Eo=72m=61l"><sp=61=6E style=3D=22font-=73=69ze=3A1=30=
=2E0pt;f=6Fnt=2Dfam=69ly=3A&quo=74;A=72=69al=26=71uo=74;,sans=2Dser=69f;colo=
=72:=62lac=6B">&=6E=62sp=3B&nbsp;=26=6Ebsp=3B=26=6Ebsp;&=6E=62=73=70=3B&nbsp=
=3B&=6E=62=73=70=3B wHei=67=68t&nbsp=3B=26=6Eb=73=70;&nb=73p;&n=62sp;=26=6Eb=
=73p;&nbs=70;=26nbsp;&nbsp;&n=62s=70;=26=6Ebs=70;=26n=62sp;=26nbsp=3B&nbs=70;&=
=6Eb=73=70;=26=6E=62sp;&=6E=62=73=70;&n=62sp;&n=62=73p;=26=6E=62sp=3B&nb=73=70=
=3B&=6Eb=73p=3B&=6E=62sp;&nbsp;&=6E=62sp=3B&n=62=73=70=3B=26nbs=70; 7=320<o:p=
=3E</o:p></s=70a=6E=3E=3C=2Fp=3E
<p cla=73=73=3D=22=4DsoNo=72ma=6C"><s=70an style=3D"f=6Fnt-siz=65:1=30=2E=30=
=70t;fo=6Et-family=3A&=71=75=6Ft;=41r=69a=6C&quot=3B=2Cs=61ns=2Dse=72if=3Bcolo=
r:b=6Cack=22>=26nb=73=70;=26nbs=70;=26nbsp;&=6Ebs=70;&=6Eb=73=70=3B&=6Ebs=70;=
=26n=62=73p; dwMinBi=74R=61te&=6E=62=73=70=3B=26=6Ebs=70=3B&=6Ebsp;=26nb=73=70=
=3B&=6Ebsp=3B&=6Eb=73p;=26=6E=62sp;=26n=62=73p=3B=26n=62sp;=26nb=73p;&nbs=70;=
=26nbsp=3B=26=6Ebsp;=26n=62=73p;=26nbsp;=26nbsp; 1=38432000<o:=70=3E<=2F=6F:p=
=3E</=73=70=61=6E=3E=3C=2F=70=3E
<p cla=73s=3D"MsoNo=72ma=6C"><s=70a=6E =73t=79=6Ce=3D"font-si=7Ae:10.0p=74;fon=
t-=66am=69=6Cy:&quo=74=3BA=72ial=26=71uot=3B,sa=6Es-ser=69f;=63=6F=6C=6F=72:bl=
a=63k">&nbsp;&nb=73p;&nbsp;&n=62=73p;&nbsp;=26nbsp;&nbsp; d=77Max=42it=52a=74e=
&n=62=73p;=26nbs=70;&=6E=62=73p=3B&=6E=62s=70=3B=26nb=73=70;&nb=73=70;&nbsp;&=
=6Ebs=70=3B=26=6Ebs=70;&nb=73p;&n=62sp;&n=62s=70;=26n=62=73p;&nb=73=70;=26=6E=
=62=73=70;&n=62sp; 552=39=360=300=3Co:=70></=6F:p=3E</=73p=61=6E><=2Fp>
<p c=6C=61=73s=3D=22MsoNo=72m=61=6C=22=3E=3Cs=70=61n st=79le=3D"fo=6Et=2Dsi=7A=
e=3A10.0p=74=3Bfo=6Et-fa=6Dily=3A&=71uot=3BArial=26=71uo=74;,san=73-=73er=69f;=
co=6C=6F=72:=62l=61ck"=3E&nbs=70;&n=62sp=3B&nbs=70;=26=6E=62=73=70;&n=62=73p;&=
=6Eb=73=70;&=6Eb=73p; dwM=61xV=69de=6FFrame=42u=66ferSize&nbsp;&=6Eb=73p=3B=26=
nbs=70;&nbsp; 18=34=3320=30=3Co:=70></o:=70></=73p=61=6E=3E=3C/p>
<p class=3D"=4DsoNorma=6C"=3E<s=70=61n =73tyle=3D=22font-=73=69ze:10=2E0pt=3Bf=
=6Fn=74-=66amily=3A&q=75ot;=41ri=61l=26qu=6F=74=3B,sa=6Es=2Dser=69f=3Bcolor=3A=
b=6C=61c=6B=22>=26n=62s=70;&=6Ebsp;&=6Eb=73p=3B=26nbsp=3B&nbsp;=26n=62=73p;=26=
=6Ebsp; dw=44ef=61ul=74FrameInterva=6C&=6Ebs=70;&=6Eb=73p=3B=26n=62sp;=26nbs=
=70;&=6Ebsp;=26=6Ebs=70;&=6E=62sp;&nb=73p; 3=333=333=33=3Co:p><=2Fo:p></span><=
=2F=70>
=3Cp c=6Cass=3D=22M=73oNorm=61=6C"><s=70an =73ty=6C=65=3D"=66ont-size:=310=2E0=
pt;fo=6E=74-=66=61mil=79=3A&q=75o=74;Ari=61l&qu=6Ft;=2Cs=61ns-serif;co=6Cor:bl=
ack">&nbsp;=26nbsp;=26nb=73p;&=6E=62=73p=3B&=6Ebs=70;&nbsp;=26nbs=70; b=46r=61=
m=65=49=6Eter=76a=6C=54ype=26=6E=62s=70;&n=62sp;&n=62sp=3B&nbsp;&=6Ebsp=3B&=6E=
bsp;=26=6E=62=73p;&n=62s=70=3B=26nbs=70=3B&nb=73=70;&=6E=62=73=70=3B=26n=62sp;=
&nbsp;&nbsp=3B&n=62sp;&=6E=62=73p;&nbsp=3B 2<o:p=3E</=6F:p=3E</=73pa=6E>=3C/p=
=3E
<=70 =63las=73=3D=22=4DsoN=6Frm=61=6C"><s=70an s=74yle=3D"=66ont-s=69ze:1=30.0=
pt=3Bfont-=66amily:&=71=75ot;Arial=26qu=6F=74;,sans-=73erif;col=6F=72:=62la=63=
k">=26nb=73p;&n=62=73=70;&nb=73=70;&nbsp=3B&n=62sp;&nbsp;&=6Ebsp; d=77F=72=61m=
eIn=74erval=28 =30=29&=6Ebsp=3B=26nbs=70;=26nbsp=3B=26n=62sp=3B&nbsp;&n=62sp;&=
=6Eb=73p;=26=6E=62=73p;&nbsp; &nbsp;&nb=73=70;=333=33=33=333=3Co=3Ap></o:p>=3C=
/s=70an=3E</p=3E
<p =63=6Cas=73=3D=22MsoN=6F=72=6Da=6C=22>=3Cs=70an s=74=79=6Ce=3D"f=6Fn=74-s=
=69ze=3A10=2E0pt;fo=6Et-=66amil=79=3A=26quot;=41r=69=61l&=71uot;=2Csans=2D=73e=
rif=3Bcolor:=62l=61=63k=22>&=6Ebsp;&n=62sp;&nb=73p;=26nb=73p;&nbsp;=26n=62sp=
=3B&=6E=62sp; dw=46ra=6DeInterval=28 1)&=6Ebsp;=26nb=73p;=26nbsp=3B&nbs=70;&=
=6Eb=73p=3B&=6Ebsp=3B=26=6E=62sp;&nb=73=70;=26=6Eb=73=70=3B&=6Ebsp;&=6Ebsp; 40=
=30000=3C=6F:p=3E=3C/o=3A=70=3E</=73p=61n></p=3E
=3Cp cl=61ss=3D"M=73=6FN=6Frma=6C=22><s=70an st=79l=65=3D"=66ont-s=69ze:10=2E=
=30=70t;font=2D=66ami=6Cy:&=71u=6Ft;Aria=6C&quot;,sans=2Dserif;co=6Cor:bl=61ck=
">&nbs=70=3B&n=62s=70=3B&=6Eb=73=70;&=6E=62=73p=3B=26=6Ebs=70=3B VideoS=74r=65=
aming In=74=65rf=61ce =44e=73crip=74=6Fr:<o:p=3E</o=3Ap></span></p>
=3Cp class=3D"Mso=4Eor=6Dal"><span =73tyle=3D=22=66ont-s=69=7A=65=3A10.=30pt;f=
=6Fnt=2Dfa=6Dil=79=3A&quot;Aria=6C&q=75=6F=74;=2C=73an=73-s=65rif;=63=6Flor:bl=
=61ck=22>=26n=62sp;=26n=62sp;&=6Ebsp=3B&n=62sp;&=6E=62sp;&=6E=62=73p;&=6E=62s=
=70; =62=4C=65ng=74h&=6Ebs=70=3B&n=62sp;&=6E=62sp;=26n=62sp;&=6E=62=73=70;&nb=
=73p=3B&nbsp=3B&n=62=73p;&=6Ebs=70;=26n=62sp;&=6E=62s=70;&n=62s=70;=26=6Ebsp=
=3B=26=6Ebsp;&nbsp=3B=26=6Ebsp=3B=26nb=73p=3B&nb=73p;=26=6Eb=73p;&nb=73p;&=6Eb=
sp=3B=26n=62s=70;=26n=62sp=3B=26nbs=70;=26nbs=70;&=6Ebsp;=26nbsp; 2=38=3C=6F:=
=70>=3C/o=3Ap>=3C/span>=3C/=70>
<=70 =63lass=3D"Mso=4Eormal"=3E<span =73t=79l=65=3D=22=66ont=2Ds=69ze=3A10.=30=
=70t=3Bfo=6E=74-fa=6Di=6Cy:=26q=75ot;Ar=69a=6C&qu=6Ft;,=73=61ns=2Dserif;co=6Co=
r=3Ab=6Cac=6B=22>&nbsp=3B&nbsp=3B&nbsp;&nb=73p;=26n=62s=70;=26n=62sp;&=6Ebsp; =
b=44=65=73cr=69=70tor=54y=70=65&nb=73p;&nbsp;=26=6E=62=73p;&nbsp=3B=26nb=73p;&=
n=62=73p;=26nbsp;=26nbsp;&nbsp=3B&nbsp=3B=26n=62=73=70;=26=6Ebsp;&=6Eb=73p;&=
=6Ebsp;=26nbs=70;&n=62=73p;&n=62=73p;&=6Ebs=70;=26=6Eb=73p; =336<=6F=3Ap=3E</=
=6F=3A=70=3E<=2F=73=70an></p>
<=70 cl=61=73=73=3D=22=4Ds=6FNormal">=3C=73pan s=74yle=3D"=66=6Fnt=2Ds=69=7A=
=65:10.0pt;=66=6Fn=74-fami=6Cy=3A&qu=6Ft=3BAr=69al&=71u=6Ft;=2Cs=61ns-ser=69f=
=3B=63=6Flo=72:black">&nbsp;=26n=62=73p;&=6E=62s=70;&n=62=73p;&=6Ebs=70;=26nb=
=73=70;=26=6E=62sp=3B b=44=65scr=69pto=72Subt=79=70e&n=62sp=3B&nbs=70;&=6E=62=
=73=70;=26=6E=62s=70=3B=26nbsp;&n=62sp=3B=26=6E=62sp=3B=26nbs=70;&=6E=62=73p;&=
=6E=62s=70=3B&=6Ebsp;=26nbsp;=26=6E=62sp=3B=26n=62s=70;&nb=73=70;=26nbs=70; 16=
 =28FO=52MAT=5FFRA=4DE=5F=42=41SED=29<o:=70>=3C/=6F:=70>=3C/=73=70an></=70>
<p c=6C=61=73s=3D"Mso=4Eo=72ma=6C"=3E<=73=70=61n sty=6C=65=3D"fon=74=2Dsi=7Ae:=
10.0pt=3B=66=6Fn=74-f=61=6D=69=6Cy:&quot;=41r=69al=26quot;,=73=61n=73-se=72=69=
f;col=6Fr=3Ab=6Cack"=3E&nbsp=3B=26=6Eb=73p;=26=6Ebsp;&nbsp=3B&=6Ebs=70=3B&=6Eb=
=73p;&=6Eb=73=70; =62F=6Fr=6D=61=74In=64ex&nbsp;=26nbsp;&n=62sp=3B=26nb=73=70=
=3B&nbsp;=26n=62s=70;&nbsp;=26n=62=73p;&nb=73p;=26n=62=73p;=26n=62sp;&=6Eb=73p=
;=26=6E=62=73p=3B=26nbsp;=26=6Ebsp;=26n=62s=70;&n=62sp=3B&nbs=70=3B&nb=73p;&=
=6E=62=73p;&nbsp;=26=6Ebs=70=3B&nb=73=70; 2<o:=70=3E=3C=2F=6F=3Ap=3E=3C=2F=73=
=70an></p>
=3Cp =63=6C=61s=73=3D=22MsoNormal=22>=3C=73p=61=6E s=74yle=3D"fo=6Et-s=69=7A=
=65:1=30.=30p=74;font-fami=6Cy:&quot=3BAr=69al&q=75o=74=3B,=73ans-s=65r=69f=3B=
co=6C=6Fr:=62l=61ck=22>&n=62sp=3B&nbsp=3B&=6Eb=73=70;&n=62=73p=3B&nbsp;=26n=62=
sp=3B=26n=62=73p; bNumF=72am=65Descr=69p=74ors=26n=62sp=3B=26nbsp;=26nb=73=70;=
=26nbsp;=26nb=73p;=26n=62s=70=3B&n=62sp;=26n=62=73p;&=6E=62sp;&=6E=62sp;&n=62s=
p=3B&nb=73p=3B&=6E=62sp;&=6E=62s=70;&nbs=70; 4<o:=70></o=3A=70><=2Fsp=61=6E><=
=2Fp>
<=70 =63=6C=61=73s=3D=22=4D=73=6FN=6F=72=6Dal"=3E<s=70=61n =73t=79=6C=65=3D=22=
fon=74-size:=31=30.0p=74;font-fam=69=6Cy:=26=71uot;=41=72ial=26quo=74;,=73=61=
=6Es-ser=69f=3Bcolor=3Ablac=6B">=26=6Eb=73p=3B&=6Ebsp;&nbs=70;&n=62=73p;=26nbs=
p=3B&=6Eb=73=70=3B=26n=62sp=3B gui=64=46ormat&=6Eb=73p=3B&=6Ebsp=3B&nbsp=3B&nb=
s=70;&nbsp;=26=6E=62=73p;&n=62sp;&n=62sp;&=6Ebsp;=26=6Ebs=70=3B=26nbsp;&nb=73p=
;&nbs=70;&nbs=70;&nbsp;=26n=62s=70;&n=62sp;=26n=62sp;&=6Ebsp;&=6Ebsp;&=6Eb=73p=
=3B&=6Eb=73p;=26nbsp;&=6Ebsp=3B=26=6E=62s=70;&n=62=73p;=26n=62=73p=3B {3=34363=
2=348-00=300=2D0010=2D=38000=2D00=61a=300=3389=627=31=7D=3Co:p>=3C/o:=70>=3C/s=
pan=3E</=70>
=3Cp class=3D"=4DsoNor=6Dal">=3C=73pa=6E style=3D=22font-=73=69=7A=65=3A=310=
=2E0pt=3Bfon=74-fa=6Di=6Cy:&=71=75ot=3BAr=69=61l&quo=74;,=73=61ns=2Dser=69=66;=
color:bl=61ck=22>&n=62sp=3B&n=62=73p;=26=6E=62s=70=3B&=6E=62=73p;=26n=62=73p;&=
n=62sp;=26nb=73p; =62=42it=73P=65rPi=78e=6C=26nb=73=70=3B&nb=73p=3B=26=6Eb=73p=
=3B&=6Ebsp;&nbsp;&nbsp;&n=62sp;=26nbsp;&=6Ebsp=3B&nbsp;&=6Ebsp;&=6E=62s=70=3B&=
nb=73=70;=26nbsp;&nbsp;=26nb=73p=3B=26nb=73=70;&n=62sp;&nb=73p;&nbsp=3B&n=62s=
=70=3B 16<o:p></o:=70>=3C/s=70=61n><=2Fp>
=3C=70 =63=6Cas=73=3D"Mso=4E=6Frm=61l=22><=73pan =73tyle=3D"=66o=6Et=2Dsize:=
=31=30.0=70=74;fon=74=2Dfamily:=26quo=74;Arial&=71uot;=2Csan=73-serif=3B=63o=
=6C=6Fr:black=22>&n=62=73=70=3B&nbs=70;=26nbsp=3B&nb=73=70=3B=26=6Eb=73p;&nbsp=
;=26nb=73=70=3B =62De=66aul=74=46=72=61meIndex&nbs=70;&nb=73p=3B=26n=62=73p;=
=26n=62sp=3B&nbsp;=26=6Ebsp;=26nbsp=3B=26=6E=62sp;=26nbsp;&nb=73=70;=26=6Ebs=
=70=3B&nbsp;&nb=73=70;=26nb=73=70=3B&=6Ebsp;&n=62sp;&nb=73=70; 1=3C=6F:=70=3E<=
=2F=6F=3Ap></s=70an=3E<=2Fp>
=3C=70 c=6Ca=73=73=3D"Mso=4E=6Frm=61l">=3C=73pan style=3D"font-si=7Ae:10=2E=30=
p=74;=66o=6Et=2Dfa=6D=69ly=3A=26=71uot=3BAr=69=61=6C&=71=75=6Ft;,sans-s=65ri=
=66=3Bc=6Fl=6Fr:=62lack">=26nb=73=70;&nbs=70;&nb=73p=3B&n=62=73=70;&nb=73p;=26=
=6Eb=73p;&n=62=73p; =62=41spe=63t=52ati=6FX=26=6Ebs=70=3B&n=62=73p;&n=62=73=70=
;&nb=73p=3B=26nbsp;=26=6Eb=73p=3B=26nbsp;&nb=73p;=26nbsp;=26=6Eb=73p=3B&n=62sp=
=3B&nbs=70;=26n=62=73p=3B&nbsp;&nbsp;&n=62sp;&=6Eb=73p=3B&=6Eb=73=70;=26nb=73p=
;&nbs=70=3B&nbsp;=26nbs=70; =30=3Co=3Ap=3E</o:=70=3E<=2Fspan=3E</p>
<=70 =63=6Ca=73s=3D"M=73o=4Eor=6Da=6C=22><=73=70an s=74yle=3D"f=6Fnt-=73=69ze=
=3A10=2E0=70t=3Bfont-famil=79:&=71uot;Ari=61l&quot;,s=61=6Es-serif;=63olo=72:b=
lac=6B"=3E&n=62sp;=26=6E=62=73=70;&nb=73p;&n=62s=70;&nbs=70;=26nb=73=70;&=6E=
=62sp; =62AspectRa=74i=6F=59&=6E=62sp;&nbsp;&=6E=62sp=3B&n=62sp=3B&n=62=73p;&n=
b=73=70=3B=26=6Ebsp;=26nbs=70;=26nbsp;=26nbsp=3B=26n=62sp;&=6Eb=73=70;&=6Ebsp=
=3B&=6Eb=73p;=26n=62=73p;=26=6Eb=73p=3B=26nb=73=70;&nbs=70;&n=62s=70=3B&=6Eb=
=73p;&=6E=62=73p;=26nbsp; =30<=6F=3Ap></o:p></s=70=61=6E></p=3E
<p clas=73=3D=22=4Ds=6F=4Eormal=22><spa=6E s=74yle=3D"f=6F=6E=74-si=7Ae=3A1=30=
.=30pt=3B=66ont-=66a=6D=69l=79:&quot=3B=41=72ial&=71u=6Ft;=2Csans=2Dserif=3Bc=
=6F=6Co=72=3A=62=6Cack">&nb=73=70;&=6Ebsp;&n=62s=70;&nbsp;=26nbsp;&=6Eb=73p=3B=
=26nbsp; =62mI=6E=74=65r=6C=61ceF=6Ca=67=73&nb=73=70=3B=26n=62=73p;=26=6E=62sp=
;&nbsp;=26nbsp=3B=26=6Eb=73=70;=26nbsp=3B&n=62=73p=3B&=6E=62=73p;&=6Ebs=70=3B&=
=6E=62sp;&=6Ebsp=3B=26nb=73=70;=26nbsp=3B=26nbs=70=3B&nbsp=3B =30x00<=6F:p>=3C=
=2Fo:=70=3E=3C/s=70an>=3C/p>
<p cl=61=73s=3D"M=73o=4E=6F=72=6Dal"=3E<s=70an s=74=79=6C=65=3D"font-si=7Ae:=
=31=30=2E=30pt;font-f=61mily:=26quot;Ar=69al&qu=6Ft;,sa=6Es-=73=65=72i=66;colo=
r:black">&=6Ebsp;&nbsp;&nbsp=3B=26nbs=70;=26=6Ebsp=3B&nbsp=3B&nb=73p;&nbsp;&=
=6Eb=73=70; I=6E=74erlaced =73=74r=65=61m =6F=72 =76ariab=6C=65: =4Eo<=6F=3Ap>=
<=2Fo=3Ap=3E</=73=70=61=6E=3E=3C=2F=70=3E
<=70 class=3D=22Ms=6FNo=72=6D=61l=22=3E<span st=79=6C=65=3D=22fon=74-=73ize:1=
=30.0p=74;font-fam=69ly=3A&=71uo=74;A=72i=61=6C&quot;,san=73-s=65rif=3Bcolor=
=3A=62lack"=3E&=6Eb=73=70;=26n=62=73p;&nb=73p;&nbsp;&nbs=70=3B=26nbsp;&n=62=73=
=70;&nbs=70;=26nbs=70=3B F=69el=64s per =66rame: 2 field=73=3Co:=70=3E=3C/o:p>=
<=2Fs=70a=6E></p>
<=70 cl=61s=73=3D=22M=73=6FNo=72=6D=61l">=3Cspa=6E st=79=6C=65=3D"font=2D=73iz=
=65:10.0pt;=66o=6E=74-fa=6Di=6Cy:=26q=75=6Ft=3BA=72ial&q=75o=74;=2Csan=73=2Dse=
=72=69=66;c=6Flor:blac=6B"=3E=26nb=73p=3B=26=6Ebsp=3B=26nbsp;=26nb=73=70;=26n=
=62=73p;&=6E=62=73p;&nb=73p;&=6E=62=73p;=26n=62=73=70; Fi=65l=64 =31 f=69rst: =
No<o:=70><=2Fo:p><=2Fspan>=3C/p>
<p =63=6C=61s=73=3D"MsoNo=72m=61l=22=3E<spa=6E =73t=79l=65=3D"=66ont=2D=73=69z=
e=3A1=30=2E0pt=3Bfont-fami=6Cy:&=71=75o=74;=41rial=26quot;=2C=73=61ns=2D=73er=
=69f;c=6F=6Cor=3Ab=6Cac=6B=22>=26n=62s=70;&nbsp=3B=26n=62=73p;&n=62s=70=3B&nb=
=73p;&n=62sp;&n=62=73=70=3B&nbsp;=26=6E=62s=70; F=69eld p=61tte=72=6E: =46=69e=
l=64 1 on=6Cy<o:p><=2Fo:p></s=70=61n></=70>
<=70 c=6Cass=3D"M=73o=4E=6F=72=6D=61l">=3Cs=70an s=74yle=3D"font-=73i=7Ae:1=30=
.=30pt;fo=6E=74=2Df=61mi=6Cy=3A&quot;=41r=69=61l&=71=75ot;,sans-s=65ri=66;c=6F=
l=6F=72=3A=62l=61ck">&n=62sp=3B&=6Ebsp;&nbsp;&=6E=62sp;&nb=73p;&nb=73p;&nb=73p=
=3B =62Cop=79Prote=63t&n=62=73p=3B&nbsp;=26=6Ebs=70=3B&=6Ebsp=3B=26=6Eb=73p;&n=
b=73p;&n=62s=70=3B=26nbsp;=26n=62s=70;&n=62s=70;&nbsp;=26n=62s=70;&=6E=62sp;&n=
bsp=3B&=6Eb=73p;=26=6E=62=73p;=26n=62s=70;&=6Ebsp;&n=62=73p;&=6Ebs=70=3B&nbsp=
=3B&nb=73=70;=26n=62sp; 0=3Co:p>=3C/=6F:p=3E</span><=2Fp=3E
<p =63=6C=61=73s=3D"M=73oNo=72ma=6C"><sp=61n styl=65=3D=22f=6F=6Et=2D=73=69=7A=
=65=3A10.0=70=74;=66ont=2Df=61mily:&q=75=6Ft;Ar=69=61l&q=75o=74;,=73ans-serif;=
color=3A=62l=61ck">&=6Ebsp;=26nb=73p;=26=6Ebs=70;=26nbsp;&=6Ebsp;&=6Ebsp;&n=62=
s=70=3B =62=56ar=69ableSize=26nbsp;=26nbs=70;&n=62sp=3B&nb=73p;&nbs=70=3B&nbs=
=70;&=6Ebsp;&nbs=70=3B&nbs=70;&n=62s=70;&n=62sp;=26n=62sp;=26nbsp;=26nbs=70=3B=
&n=62=73=70;&nbsp;=26nb=73p;&n=62sp=3B=26n=62sp=3B&nbsp=3B =31=3Co:p>=3C=2Fo:p=
></s=70a=6E=3E</=70>
<p class=3D=22M=73=6FN=6F=72=6Da=6C=22>=3C=73pan sty=6Ce=3D"=66o=6E=74-=73i=7A=
=65:10.0p=74=3Bf=6Fnt-famil=79=3A&=71uot;A=72ia=6C&=71u=6Ft;=2Csa=6Es=2Dser=69=
f;color=3A=62la=63=6B">&nbsp;&=6Ebs=70;&=6E=62sp;=26nb=73=70;=26n=62s=70; V=69=
de=6FStream=69=6Eg =49nter=66ace D=65scri=70tor:<o:=70>=3C=2Fo:=70>=3C/s=70an>=
</=70=3E
<p c=6C=61ss=3D"M=73oN=6Fr=6D=61=6C">=3C=73pa=6E st=79le=3D"f=6Fnt=2D=73=69=7A=
e:10=2E0pt=3Bfon=74-=66amil=79=3A=26q=75o=74;A=72ial=26=71uo=74;=2C=73ans-se=
=72if;c=6Flo=72=3A=62l=61=63k">=26nb=73p;&=6E=62s=70=3B&nbsp;&n=62s=70;&nbsp;&=
nbsp=3B=26nbsp; =62Le=6E=67th=26=6Ebs=70;=26nb=73p;&n=62=73p;&nb=73p=3B&nbsp=
=3B&nbs=70;=26=6Eb=73p;=26nb=73=70;&nbs=70;=26=6E=62=73p;=26nbsp;&=6Ebs=70=3B=
=26nbsp;=26=6Eb=73p;&n=62s=70;&=6Ebsp;=26n=62=73p;&n=62sp;=26nbsp;&nb=73=70;=
=26n=62=73=70=3B&=6E=62s=70;&n=62s=70;=26=6Ebsp=3B&nbsp;=26nbsp=3B&nb=73=70; 3=
4<o=3Ap></=6F=3A=70=3E=3C/=73p=61n></p>
<=70 class=3D=22M=73o=4Eorm=61l">=3C=73pan =73tyle=3D"fo=6E=74=2Dsize:1=30.0=
=70=74;fo=6Et-famil=79=3A&q=75ot=3BAr=69al&qu=6F=74=3B=2C=73=61=6Es-seri=66;c=
=6F=6Cor:=62=6Cack">=26=6Ebs=70;=26nb=73p;=26=6Eb=73p=3B=26nb=73p;&=6Ebsp;=26=
=6E=62=73p;&nbsp; =62Des=63rip=74=6FrTyp=65=26n=62s=70;&n=62sp;=26=6E=62s=70;&=
nbsp;&=6Ebs=70;&=6E=62sp=3B=26n=62s=70;=26n=62sp;&nbsp;&=6E=62sp;=26n=62sp;=26=
n=62=73=70=3B&n=62=73=70=3B=26n=62sp;=26=6Eb=73=70;=26n=62=73p;=26n=62sp;&nbs=
=70;&nbsp=3B =336<o:p></o=3Ap></span>=3C/p>
<=70 =63=6Ca=73s=3D"=4Ds=6FNor=6D=61=6C"><=73pa=6E st=79l=65=3D=22f=6Fnt-s=69z=
e:=310.=30pt;font-=66=61mily:&quot;=41r=69=61l=26quot;,s=61ns-=73=65rif=3Bco=
=6Cor:=62la=63=6B">&nbsp;&nbsp;=26n=62sp;&=6E=62s=70=3B&nbsp;&nbsp=3B&=6E=62s=
=70; =62De=73=63ript=6F=72=53u=62typ=65&nbsp;&nbs=70;&=6Ebsp;&nbsp=3B&nbs=70=
=3B&nbsp;=26=6Eb=73=70;&nbsp;&n=62s=70;&n=62=73=70;&=6E=62s=70;&nb=73=70;=26n=
=62sp;&n=62sp=3B&nbsp=3B=26nbsp; =317 (=46R=41=4D=45=5FF=52AME=5FB=41SE=44=29=
=3Co:=70><=2Fo:p>=3C=2Fs=70a=6E></p>
=3Cp =63=6Cass=3D"=4Ds=6FNo=72mal=22=3E<sp=61n =73t=79le=3D"=66ont-si=7Ae=3A10=
.=30=70=74;fon=74-=66amily:=26qu=6Ft;=41=72ial=26q=75o=74;,s=61ns-s=65ri=66=3B=
=63=6F=6Cor:bl=61=63k"=3E=26=6E=62=73p;=26n=62=73p;&n=62sp;&=6E=62sp;&nbsp=3B&=
nb=73=70;&n=62s=70=3B =62Fr=61meIn=64ex&=6E=62s=70;&=6Ebsp;&n=62sp;=26nbs=70;=
=26=6E=62=73=70;=26n=62=73p;&n=62sp;&=6E=62sp;&=6Eb=73p=3B&nbs=70=3B&nb=73p=3B=
&n=62=73p;&nb=73p;&n=62=73p=3B&n=62s=70;&nbs=70=3B&nbsp=3B=26nbsp;&=6E=62sp;&n=
bs=70;=26nbsp=3B=26nb=73p=3B=26=6Ebsp;=26=6Ebsp; =31<o:p>=3C/=6F:=70>=3C/=73p=
=61=6E></p>
<p clas=73=3D"=4DsoNorma=6C=22=3E=3C=73pan s=74yle=3D=22f=6F=6Et=2Dsize:1=30.0=
=70t=3B=66ont-f=61mily:=26q=75ot;Arial=26=71u=6F=74=3B=2C=73an=73=2D=73erif;co=
lo=72:bla=63=6B">&=6Ebsp;=26nbsp=3B&nb=73p;&=6Ebsp;&nbsp=3B&nb=73=70;&nb=73p=
=3B b=6DCa=70=61bil=69tie=73=26=6E=62sp;&nbsp=3B=26=6Eb=73p;&nbsp;=26=6E=62sp=
=3B&nbs=70=3B&n=62s=70=3B=26n=62sp=3B&n=62sp;&nbs=70;=26=6Ebs=70;&=6E=62s=70;&=
n=62sp;&=6E=62=73=70;&nb=73p;&=6Ebs=70;&=6E=62s=70=3B&nbs=70; =30x00=3Co:=70>=
=3C=2Fo=3A=70>=3C=2F=73p=61=6E></=70>
=3C=70 =63las=73=3D"Ms=6FNo=72=6Dal=22><s=70=61n style=3D=22f=6F=6E=74-=73i=7A=
e:10.=30p=74=3Bfo=6Et-fam=69ly:=26quo=74;A=72ial&=71=75=6Ft;,s=61ns-s=65ri=66;=
=63=6Flor:blac=6B">&=6E=62sp;=26n=62sp;&=6E=62s=70=3B=26nbsp=3B&nbs=70;&=6E=62=
sp=3B=26nbsp=3B&nbsp;&=6Eb=73=70; Sti=6Cl i=6Dage un=73=75p=70=6F=72ted<o=3A=
=70><=2Fo=3Ap>=3C=2Fspa=6E>=3C=2Fp>
<p =63l=61ss=3D"=4D=73=6F=4Eormal"=3E<span st=79le=3D"fo=6E=74=2D=73=69z=65=3A=
1=30.0pt;f=6F=6Et-fam=69=6Cy=3A&=71uot;=41=72ial=26=71uot=3B=2Csans-=73erif;co=
lor=3Abla=63k">&=6Ebsp=3B=26n=62sp;&=6Ebs=70=3B&=6Ebsp;&nbs=70;&n=62=73=70;=26=
=6Ebsp; =77Widt=68&nb=73p;=26nbsp;&=6E=62sp;=26n=62s=70;&nbsp;&nbsp=3B&nbsp;=
=26=6Eb=73p=3B&n=62=73p;&=6Ebs=70;=26nbsp=3B&=6Ebsp;&nbsp=3B&nbsp;&n=62=73p=3B=
&n=62sp;&=6Eb=73=70;=26=6E=62sp=3B&=6Ebsp;&nbsp;&=6Eb=73=70;&nb=73p=3B&=6E=62=
=73=70=3B&n=62sp;=26=6Ebsp;&n=62=73p; =31280<o:p><=2F=6F:=70=3E<=2Fs=70a=6E=3E=
</p>
<p cl=61=73=73=3D"MsoNorm=61l">=3C=73pan =73tyle=3D"=66ont-size=3A1=30.=30pt=
=3B=66ont=2Df=61=6Di=6Cy:=26qu=6Ft;=41=72i=61l&q=75ot=3B=2Cs=61n=73-serif;c=6F=
=6Co=72:b=6C=61ck">&n=62sp;&=6E=62sp=3B&n=62=73p=3B&=6E=62=73p=3B&n=62sp=3B=26=
nbs=70;=26n=62=73=70=3B =77Hei=67h=74&nb=73p;&nb=73=70;=26n=62sp;&=6Ebsp=3B=26=
=6Ebs=70=3B&nbsp;&nbsp=3B&nb=73=70=3B&nbsp=3B&=6E=62sp;=26n=62=73=70;&=6E=62sp=
;&nbsp=3B=26=6Eb=73p;&nbsp=3B&=6Ebsp=3B&n=62=73p=3B&n=62s=70=3B&nbsp;&nbs=70=
=3B=26=6Ebsp;&nb=73p;=26=6Ebsp;&nbsp;&n=62=73p=3B=26n=62s=70=3B 7=320=3Co:p=3E=
=3C/o:=70><=2F=73p=61n=3E<=2F=70=3E
<=70 c=6C=61s=73=3D=22=4DsoNormal">=3Csp=61n st=79=6C=65=3D"font-size=3A=310.0=
=70t;=66ont-=66=61=6D=69=6Cy=3A&=71u=6Ft;Ar=69al&=71uo=74;,sans=2Ds=65rif;co=
=6Cor:bl=61=63k">&n=62=73p;&=6E=62=73p;=26nb=73p;&=6Ebsp=3B&nbs=70=3B&nbsp=3B&=
n=62=73=70; =64wMin=42=69t=52a=74=65&=6E=62s=70;=26nbsp=3B&=6Ebs=70;=26n=62=73=
p;&=6Ebsp;=26n=62sp;&=6Ebsp=3B=26nb=73p;=26n=62sp;&nb=73=70=3B&=6E=62sp;&nbsp=
=3B=26n=62sp=3B=26=6Eb=73p;&nb=73=70;&=6E=62sp; =318=343=320=30=30<=6F:=70></o=
:=70=3E=3C/span></p>
<p clas=73=3D"Ms=6F=4E=6F=72mal">=3C=73pan st=79le=3D"fo=6E=74=2Dsize:=310.0=
=70=74;=66ont=2Df=61mily:=26quo=74=3BAr=69al=26=71uot;,=73=61n=73-s=65=72=69f=
=3B=63o=6Cor:=62lack"=3E&=6Ebsp;=26nbsp;&nbsp;=26n=62s=70;=26n=62s=70;&=6E=62=
=73p;&n=62sp; d=77Max=42itRate=26nb=73p;&nbsp=3B&n=62s=70;&n=62s=70=3B=26=6Eb=
=73p;&nbsp;=26=6E=62s=70;&=6E=62sp;&=6Ebsp;&=6E=62sp;&n=62sp;&n=62sp;=26=6Ebsp=
=3B=26=6Ebsp=3B&=6Ebs=70=3B&=6Ebs=70; 55=32=396000=3Co:p>=3C/o:=70=3E</=73p=61=
n>=3C/p>
<p class=3D"Ms=6FNor=6Da=6C=22><span =73tyle=3D"f=6F=6Et-=73=69ze:1=30.0p=74;f=
on=74-fam=69ly:&quo=74=3B=41rial=26q=75ot;=2Csans-seri=66=3Bco=6Cor:black"=3E=
=26=6E=62sp;=26n=62s=70;&nbs=70;&nb=73=70;=26n=62=73p;=26n=62sp=3B&nb=73=70; d=
wD=65f=61=75=6Ct=46ra=6DeI=6Eter=76=61l&nb=73=70;&=6Eb=73p;&=6Ebsp=3B&=6E=62s=
=70;&=6E=62s=70=3B=26=6Ebsp;=26=6Eb=73p;&=6E=62=73p; 3333=333<=6F=3Ap=3E</=6F:=
p=3E<=2Fs=70an=3E=3C/p>
<=70 =63las=73=3D"M=73oNorma=6C=22=3E<=73=70a=6E st=79le=3D"fon=74=2D=73ize:1=
=30.=30pt;f=6Fn=74=2Df=61mi=6Cy:&q=75o=74;Ar=69al&q=75=6Ft;,s=61n=73-se=72i=66=
;=63=6Flor=3A=62=6Ca=63=6B">&nb=73=70=3B&nbs=70=3B&=6Ebsp;&=6Ebsp=3B=26nbs=70=
=3B&=6Eb=73p;&nb=73p; b=46=72=61meInte=72val=54=79pe&n=62sp;=26nbsp;&=6Eb=73=
=70;&=6Ebs=70;&nb=73p;=26nbs=70=3B&nbsp;&nbs=70=3B&nbs=70;&nbsp=3B&n=62=73p=3B=
&n=62sp;&n=62s=70;=26n=62sp=3B=26nbsp;&=6Ebsp=3B&nb=73=70; 2<o:=70></o:=70>=3C=
=2Fsp=61n>=3C/p>
<=70 cl=61ss=3D"=4D=73oNorma=6C"=3E<s=70=61n =73tyle=3D"fo=6Et=2D=73i=7A=65:10=
.0p=74=3Bfo=6Et-family=3A=26q=75ot;=41=72ial&q=75ot;,san=73-s=65r=69f;co=6Cor:=
black">=26=6Eb=73p=3B&=6Ebsp=3B&nb=73p;&nbs=70;&nb=73=70=3B&=6Eb=73p=3B&nb=73p=
; =64=77BytesP=65=72Line=26=6Eb=73p;&n=62s=70=3B&=6E=62sp=3B&nbsp;&n=62=73p;&=
=6Eb=73p;&n=62=73p;&=6Ebsp=3B=26nb=73p;&n=62sp;&n=62sp;&=6E=62sp=3B=26=6Eb=73=
=70=3B=26n=62sp;&=6Ebs=70;&nbsp=3B&n=62s=70;=26n=62=73=70;&nbsp;&nbsp=3B&=6Ebs=
p=3B 0<=6F=3Ap></o:p=3E=3C=2Fspan>=3C/=70>
<p clas=73=3D"MsoNorma=6C"><span s=74=79l=65=3D"=66=6F=6E=74-=73=69=7A=65=3A=
=31=30.=30=70t;font-f=61mily=3A&=71=75ot;Ari=61=6C=26q=75ot;=2Csans-s=65r=69=
=66;c=6Flor:blac=6B"=3E=26nbsp;=26=6E=62sp;&nb=73p=3B&=6Eb=73=70;&nb=73=70;=26=
nb=73p;&=6Ebs=70; dwFrameInterval( 0)&n=62sp=3B&n=62=73p;&nbsp;&nb=73p;=26nbsp=
=3B&nbsp;&nbsp=3B&=6E=62s=70=3B&n=62sp;&n=62=73p=3B=26nb=73=70=3B 33=33333<o:p=
>=3C=2Fo=3Ap>=3C=2Fsp=61n></=70>
<p =63l=61ss=3D"=4Ds=6F=4E=6Frma=6C"><sp=61n styl=65=3D"font-siz=65:=310.0p=74=
;font-=66=61mil=79:&qu=6Ft=3B=41rial&quo=74;,s=61n=73-=73erif=3Bc=6Flor:=62lac=
k">=26nbsp;&n=62s=70;&n=62sp;&=6E=62=73p=3B=26nbsp;&=6E=62=73=70=3B&nbsp; dw=
=46=72ameI=6Eterval( 1)&nbsp;=26=6Ebsp;&nbsp;=26n=62s=70;=26nbsp;&nbsp;&nbsp;=
=26nbsp;=26nb=73=70;&=6Eb=73=70;=26=6Ebs=70=3B 4=3000=30=30<o:p>=3C=2Fo=3Ap>=
=3C/span>=3C/p>
=3Cp =63=6Cass=3D=22Ms=6FN=6F=72=6D=61l=22=3E<=73pa=6E =73t=79=6Ce=3D"=66on=74=
=2Ds=69ze:=31=30.=30p=74=3Bf=6Fnt-fam=69ly:&=71uot;Ari=61=6C&quo=74;,sa=6E=73=
=2D=73e=72=69f;colo=72:b=6C=61ck">&n=62sp;&n=62=73p=3B&nb=73p;&=6Ebs=70;&nbs=
=70; =56=69=64=65o=53t=72e=61ming I=6Eterf=61=63e De=73cr=69ptor=3A=3Co:p></o:=
p></span=3E<=2F=70>
<p =63=6Cas=73=3D=22M=73oNor=6Dal"=3E=3C=73=70an s=74yle=3D=22fo=6Et-size=3A1=
=30=2E0pt=3B=66=6Fnt=2Dfamil=79=3A=26quot;A=72=69al&=71uo=74=3B,s=61ns=2Dser=
=69f;=63=6Flor:=62lack">&n=62s=70;&nbsp=3B=26=6Ebs=70;&=6Ebsp;=26nbs=70=3B&=6E=
b=73p;&nb=73p; bLe=6E=67th=26nb=73p;=26=6Ebs=70;&=6E=62sp=3B&nb=73p;&n=62=73=
=70;&nbsp=3B&=6Eb=73=70;&nbsp=3B&nb=73p=3B&=6Ebsp=3B=26=6Eb=73p;&nbsp=3B&nb=73=
p; &nb=73p;&nb=73p=3B=26nbsp=3B&n=62=73p;&nbsp;&nbsp=3B&nbsp=3B&=6E=62=73p=3B=
=26=6E=62=73p=3B&nbsp;=26n=62s=70=3B=26=6Ebsp;&=6E=62=73p;=26nb=73p;34=3Co:p><=
/o:p></span>=3C=2F=70=3E
=3C=70 cl=61s=73=3D"Ms=6F=4Eor=6D=61l">=3C=73=70=61n sty=6Ce=3D=22f=6Fnt-si=7A=
e:=310.0p=74=3B=66ont=2D=66=61mi=6C=79:&quo=74;=41rial&=71=75ot;,s=61=6Es=2Dse=
ri=66;co=6Cor:bla=63k"=3E&nbs=70;=26nbs=70=3B=26nbs=70=3B&=6Eb=73p;&nbsp;&n=62=
sp;&=6Ebs=70=3B bDescr=69ptorTy=70e&=6Eb=73p;&=6E=62sp;&n=62=73=70;&=6Eb=73p;=
=26nb=73=70=3B=26=6Ebs=70;=26=6Eb=73p;&nbs=70;=26nb=73p=3B&nbs=70=3B=26nbsp;&n=
bsp=3B&nbs=70=3B&nbsp;&nbsp=3B=26=6Eb=73=70=3B&=6Eb=73p=3B&nbsp;&=6Ebsp; 3=36=
=3C=6F:p>=3C=2Fo:p></sp=61n></=70>
<=70 cl=61ss=3D=22=4D=73o=4E=6Fr=6D=61=6C"=3E<sp=61n =73=74=79le=3D"=66ont-si=
=7Ae:10.0pt=3Bf=6Fnt-fa=6Dily:&quot;A=72ial=26=71uo=74=3B=2Csans=2Dseri=66;co=
=6Cor:=62lack=22>&=6Ebsp;=26nbs=70=3B&=6Ebsp=3B&nb=73p;=26nbs=70;&nbsp=3B=26n=
=62s=70; bDes=63r=69pto=72=53ub=74y=70=65&nb=73p=3B=26n=62sp=3B=26=6Eb=73p;&nb=
sp;&nbsp=3B&=6Ebsp=3B&=6Eb=73=70;=26=6Ebsp;=26nbs=70=3B=26=6Ebsp;&nb=73p;=26nb=
sp;=26=6Ebs=70=3B=26=6Ebs=70;&=6Ebsp;=26nbsp; 17 =28FR=41=4D=45=5FFRAME=5F=42A=
=53E=44=29<o:=70><=2F=6F:p=3E</s=70=61n></p=3E
<=70 class=3D"=4Dso=4Eor=6Dal"><span styl=65=3D"=66ont=2Dsi=7A=65:=310.0pt;=66=
=6Fn=74-=66=61mi=6C=79:=26q=75=6Ft=3BAria=6C&qu=6Ft=3B,s=61n=73=2Dseri=66;c=6F=
lor:bl=61ck">&n=62sp;&=6Ebsp;&nbsp;&n=62=73p;&=6Ebsp=3B&=6Eb=73p=3B&n=62=73=70=
; bF=72ameI=6Edex&nb=73=70;&nbs=70;&nbsp;=26=6Ebsp;&=6E=62sp=3B=26=6E=62s=70=
=3B&n=62=73=70=3B=26nbsp;&n=62sp=3B=26nbsp;&n=62=73p;&n=62=73=70;&nb=73=70;&n=
=62s=70;=26nbsp;=26nbsp;&nbs=70;=26=6E=62=73p;&n=62sp=3B&nbsp;&nbsp;&n=62sp;&=
=6E=62sp=3B&n=62s=70; 2=3Co=3Ap=3E</o:p=3E=3C/span></p>
<p =63=6Ca=73s=3D"Mso=4E=6Frm=61l">=3C=73pan =73=74y=6Ce=3D=22fon=74-=73i=7Ae:=
10.0p=74=3Bfon=74-family:=26q=75o=74=3B=41ri=61l&q=75ot=3B=2Cs=61n=73=2Dseri=
=66;=63ol=6Fr:b=6C=61c=6B=22>&=6Ebs=70;=26n=62sp;=26=6Ebsp;&nbsp=3B=26nbs=70;&=
=6Ebsp;&=6Ebsp=3B bmCap=61=62ili=74i=65s&nbsp;&n=62s=70;&nbs=70=3B=26n=62=73=
=70;=26nbs=70;&nbsp;&n=62sp;=26=6E=62sp;=26nbs=70=3B=26=6E=62sp;&=6Eb=73p;&nbs=
p;&=6Ebsp;&=6E=62=73p;&n=62=73p;&nbs=70;=26nbs=70;&nb=73p; 0x00<=6F:p></=6F:=
=70>=3C/spa=6E>=3C=2Fp=3E
<p c=6Ca=73s=3D=22=4D=73oNo=72m=61l"><s=70a=6E =73=74yle=3D"=66ont=2Dsize=3A1=
=30=2E=30p=74=3Bfont-f=61m=69ly:&q=75ot=3BAr=69=61=6C&q=75=6Ft=3B,s=61n=73-=73=
=65rif;color=3Abl=61=63k">&nbsp;&n=62sp;&nb=73=70;=26n=62=73=70;&nb=73p;&=6E=
=62=73=70;&nbsp;&n=62=73p=3B&n=62=73=70; S=74il=6C =69=6Dage =75=6E=73u=70port=
=65d<o:p></o=3Ap>=3C/=73=70=61n><=2Fp=3E
=3Cp c=6Ca=73s=3D"MsoNor=6D=61l"><s=70an sty=6Ce=3D=22font=2Dsi=7Ae:=310.0=70=
=74;=66on=74=2Dfam=69l=79=3A&q=75o=74;Ari=61=6C=26qu=6F=74=3B=2Csans-se=72if;c=
=6Flor:bl=61=63k">&=6Ebsp=3B=26=6Ebsp;=26=6Eb=73=70;&nbsp;&nbsp;=26=6Ebsp=3B=
=26nb=73=70=3Bw=57i=64=74h=26nbsp=3B&n=62s=70;&n=62=73p;=26nb=73p=3B&=6E=62sp=
=3B&nbs=70;&nb=73p;=26nbs=70=3B=26=6E=62s=70;&n=62=73p=3B=26n=62s=70;&=6Ebsp;&=
nb=73p=3B&=6Ebs=70;=26n=62sp=3B&n=62=73p;=26=6Ebsp;=26=6Ebs=70;=26=6Ebsp=3B&nb=
sp;&nbsp;=26=6E=62sp;&=6Eb=73=70;&=6E=62=73p=3B&=6Ebsp=3B&n=62=73p;&=6E=62=73p=
=3B 6=340=3Co:p>=3C=2Fo:p></s=70a=6E><=2Fp=3E
<=70 c=6C=61ss=3D"Ms=6F=4Eo=72mal"=3E=3Cspan styl=65=3D=22f=6Fn=74-s=69z=65:10=
.0=70t;=66ont=2Dfami=6Cy=3A&quo=74;A=72ia=6C&=71uo=74=3B,=73=61ns-=73=65=72if;=
c=6Fl=6Fr:blac=6B">&nbs=70;=26nb=73p;&n=62=73=70;=26n=62sp;=26nb=73p=3B&nbs=70=
=3B&nbsp=3B w=48=65i=67=68=74&=6Eb=73p;=26nbs=70;&nbsp;&nb=73p;=26nb=73=70;=26=
n=62s=70;&n=62=73p;=26n=62sp=3B=26=6Eb=73=70;=26n=62=73p;=26nbs=70=3B&n=62s=70=
;=26nbsp;&nbsp=3B&nbsp;&=6E=62=73=70;=26=6E=62sp=3B=26=6Ebsp;=26=6Ebsp;=26nbsp=
;&nbsp=3B&=6E=62sp;=26n=62=73p;&=6Ebsp;&nb=73=70;=26n=62=73p; 480<=6F:p=3E=3C=
=2Fo:p></sp=61=6E><=2Fp>
<p c=6Cass=3D"=4D=73oNo=72=6Dal"=3E=3Cspa=6E style=3D=22f=6Fnt-=73ize=3A10.0p=
=74;fo=6Et=2Dfamil=79=3A&q=75=6Ft=3BAr=69al&=71=75ot;=2Csa=6E=73=2Dseri=66=3Bc=
=6Flor:=62la=63k"=3E=26nbsp;=26nb=73p;=26=6Eb=73p=3B&=6Eb=73p=3B=26nbsp=3B=26=
=6Ebs=70;&n=62s=70=3B dwMinBitR=61=74e&nbs=70;=26nbsp;=26nbsp=3B=26n=62s=70;&n=
b=73p=3B=26=6E=62sp;&=6Ebsp=3B&nbsp;=26=6Ebsp;=26nbs=70;=26nbsp=3B=26nb=73p;&=
=6Eb=73p;&=6E=62sp;=26nbsp;&nbs=70; 184=332000<=6F:p></=6F:p></=73=70an></p=3E
=3Cp c=6C=61ss=3D=22=4DsoNormal=22>=3Cs=70an sty=6Ce=3D=22f=6Fnt=2D=73=69=7A=
=65:=31=30.0p=74;=66o=6Et-f=61=6D=69ly=3A&quot=3BA=72=69al=26quo=74;=2Cs=61ns=
=2Dser=69f;c=6F=6Cor:black">&=6Ebs=70;&nbsp=3B=26n=62=73p;=26n=62sp;&n=62=73=
=70=3B=26=6Ebsp=3B=26nbs=70; =64w=4Da=78B=69t=52ate=26nbsp;&nbsp=3B&nbsp=3B&nb=
=73p=3B=26nbs=70=3B&n=62=73=70;&nb=73=70=3B&nb=73=70;=26nb=73p;&nb=73p;=26n=62=
=73=70;=26n=62s=70=3B&=6Ebs=70;&=6Ebsp;&nbsp=3B&nbsp; 552=39=360=30=30=3Co=3A=
=70=3E</o=3Ap>=3C=2Fspan><=2Fp>
<=70 =63=6Cass=3D=22=4DsoN=6F=72=6Da=6C=22><span =73t=79le=3D"f=6F=6Et-s=69ze:=
=310=2E0pt;=66on=74=2D=66ami=6Cy:=26=71u=6Ft;Aria=6C&quot;=2Cs=61ns=2Ds=65=72i=
f=3B=63o=6Cor:b=6Cack">&n=62sp=3B&=6Eb=73=70;&=6Ebs=70=3B&nb=73=70=3B&n=62=73p=
;&n=62sp;&=6Ebsp; dwD=65f=61u=6CtFr=61meIn=74e=72=76al=26nbs=70;&=6Ebsp=3B=26n=
b=73p;&nbs=70=3B&nbs=70;=26nbs=70;=26nbsp;&nb=73p; =3333333<=6F:=70></=6F:=70=
=3E</spa=6E=3E=3C/=70>
<p cl=61ss=3D"=4Dso=4Eorma=6C=22>=3Cspan =73=74yle=3D"fo=6Et-size:=310.0pt;fon=
t-family:&qu=6F=74;Aria=6C&quot=3B,sa=6Es=2D=73erif;col=6F=72:b=6Ca=63=6B"=3E&=
n=62=73p;&=6Ebsp;=26nb=73p;&nb=73p;&nb=73=70;&=6Ebs=70=3B=26n=62=73p; bF=72=61=
meInt=65=72valType &n=62=73=70;&=6Ebsp;&=6Eb=73p=3B&nbsp=3B&=6E=62sp=3B=26nbsp=
=3B=26=6E=62=73p;&n=62sp;=26nb=73p;&=6E=62=73p;&nbsp;=26nb=73=70=3B&=6E=62sp;&=
=6Eb=73p;=26=6Eb=73=70;&=6E=62sp;&nb=73=70;=32<o:p><=2Fo:p=3E<=2Fspan></p=3E
<p =63l=61ss=3D"=4DsoNo=72m=61l">=3Cs=70an style=3D"=66on=74-=73ize=3A1=30=2E0=
=70t=3Bfont=2D=66=61mily=3A&qu=6F=74;A=72ial&=71=75o=74=3B,=73=61ns-=73=65rif=
=3B=63ol=6F=72=3A=62l=61=63k">&=6Ebs=70;&=6Ebsp;&nbs=70=3B&n=62s=70;=26=6Ebs=
=70;&=6E=62=73=70=3B&nbsp; d=77By=74e=73=50=65rL=69ne&nbsp;&n=62sp;&nbsp;=26n=
=62sp=3B=26=6Ebsp=3B&n=62sp=3B&n=62=73=70;&n=62sp;=26=6E=62s=70;=26nbsp;&=6Eb=
=73=70;&n=62=73p=3B&=6E=62sp;&=6Ebs=70=3B=26=6Ebsp;&=6Eb=73=70=3B=26nbsp=3B=26=
=6Ebsp;&nb=73=70;=26nb=73p;&n=62=73=70; 0<=6F:p>=3C=2Fo:p>=3C/span=3E=3C/p=3E
=3Cp cl=61ss=3D"MsoNor=6Dal=22>=3C=73pan s=74=79l=65=3D"fon=74-=73ize=3A=310=
=2E0p=74=3Bfont=2D=66a=6Di=6C=79=3A&q=75=6F=74;=41=72=69al&quot;,sans-s=65=72i=
f;co=6C=6Fr=3A=62=6Cac=6B">=26=6Ebs=70;=26=6Eb=73p=3B&n=62sp;&nbs=70;&nbsp=3B&=
=6Ebsp;&nbsp=3B =64=77F=72=61m=65=49=6Eterv=61l=28 0=29&=6E=62sp=3B=26nbsp;&n=
=62=73p;&nb=73p;&=6Eb=73p;=26n=62s=70;=26nbsp;&=6E=62=73p;&=6E=62=73p=3B=26nbs=
p;=26n=62sp=3B =33=333=333=33=3Co=3Ap></o:=70=3E</spa=6E></p>
<=70 =63=6Cas=73=3D"=4D=73oNormal=22=3E=3C=73p=61n style=3D"f=6F=6E=74-s=69z=
=65:=310.0pt=3Bfon=74-f=61=6Dily=3A&qu=6Ft;Ar=69al&q=75o=74;,s=61n=73-s=65ri=
=66;co=6Cor:bl=61=63k">&=6E=62sp=3B=26=6Ebsp=3B&n=62=73p=3B&n=62sp;=26=6Eb=73=
=70;=26nbsp;&=6E=62sp; dwF=72am=65=49nter=76al( 1=29&nbsp;=26nbsp=3B&n=62=73p;=
&nbs=70=3B&nbsp=3B=26=6Ebs=70=3B&nbsp=3B=26nb=73p;=26nb=73=70=3B=26nbsp=3B=26n=
bsp=3B =34000=30=30<o=3Ap=3E</=6F:=70>=3C=2Fspan><=2F=70>
=3Cp class=3D"Ms=6F=4Eo=72m=61l=22><=73=70=61n st=79le=3D=22=66ont=2Ds=69z=65:=
1=30=2E0p=74=3B=66ont-=66am=69ly:&=71=75=6F=74;Arial&quot=3B=2C=73=61ns-=73eri=
f=3B=63=6Flor=3A=62l=61ck">=26=6Ebs=70=3B=26nbs=70;=26n=62=73=70;=26=6Ebsp=3B&=
nb=73p=3B =56ideo=53trea=6D=69n=67 In=74=65rface D=65s=63=72ipto=72:<o:p=3E</=
=6F:=70></sp=61=6E></p>
<p =63l=61ss=3D=22Mso=4Eo=72m=61=6C=22>=3Cspan s=74=79le=3D=22f=6F=6Et-s=69=7A=
e=3A1=30.=30=70t=3B=66o=6Et-family=3A=26qu=6Ft;Ari=61l=26q=75o=74;=2Csan=73-se=
rif;=63ol=6Fr=3Ab=6C=61=63k">=26nbsp;&=6E=62s=70;&nb=73=70;&n=62sp;=26n=62sp;=
=26nbsp;&=6Ebsp; bLen=67th&=6Ebsp;=26=6Ebsp;&n=62sp;&=6E=62s=70=3B=26=6E=62s=
=70=3B&=6Eb=73p;&nbs=70;&=6Ebs=70;&n=62=73p;&nbsp=3B&=6Ebs=70=3B=26=6Eb=73p;&=
=6Eb=73p=3B&=6Ebs=70=3B&=6Ebsp;&n=62=73p;&=6Ebsp=3B=26=6E=62=73p;=26=6E=62s=70=
;&nbsp;&nbsp;&nb=73p;&nbsp;&nb=73p;=26=6E=62s=70;&=6Ebs=70;=26nbsp; 34=3C=6F:p=
=3E=3C/o:=70=3E=3C/span>=3C/p>
=3Cp =63la=73=73=3D"MsoNo=72=6Dal"><s=70=61=6E =73t=79l=65=3D=22font-s=69=7A=
=65:10.0p=74;=66ont=2Dfam=69ly:&q=75=6F=74;A=72=69=61l=26=71uot=3B,sa=6E=73=2D=
s=65ri=66=3Bco=6Co=72:=62l=61=63=6B"=3E&nbsp=3B&nbs=70=3B&=6E=62s=70;&nbs=70;=
=26nbsp=3B&=6E=62sp=3B&n=62=73p; =62Desc=72=69pto=72Ty=70=65&=6E=62=73p;&=6Ebs=
=70;&nbsp;&nb=73=70=3B=26nb=73p=3B&nb=73p;&nb=73p;=26nbsp;=26n=62s=70;&=6Ebs=
=70;&nb=73p=3B=26nbsp;&=6Eb=73=70;&n=62s=70;=26nbsp;=26=6E=62s=70;&n=62s=70;&n=
b=73p=3B&=6Ebsp; =33=36<o=3Ap>=3C=2F=6F:p></sp=61=6E></p=3E
=3C=70 =63l=61s=73=3D"=4D=73oNorma=6C"=3E=3Cspa=6E =73tyle=3D=22f=6F=6E=74=2D=
=73ize:10.=30=70t;=66o=6Et=2D=66am=69ly=3A&=71=75o=74=3BArial&=71u=6Ft;,sa=6Es=
=2Ds=65rif;color:=62l=61c=6B=22>&nbs=70=3B=26=6E=62sp;=26n=62sp;&n=62=73p;&nb=
=73=70=3B&nbsp;&nbs=70=3B =62=44e=73c=72ipto=72Sub=74y=70e=26n=62=73p;&=6E=62=
=73=70;=26nbsp;&n=62s=70=3B&nbs=70;&=6Eb=73p=3B&n=62=73=70;&=6Ebsp=3B&=6Ebs=70=
;&n=62sp;=26=6Ebs=70=3B&=6E=62s=70;=26nbs=70=3B&n=62=73p;&nbsp;=26nbs=70; 1=37=
 =28FR=41ME=5FFRAME=5FBASED=29=3C=6F:=70=3E</o:=70></s=70a=6E>=3C/p>
<p =63l=61=73s=3D"M=73o=4E=6F=72=6D=61l"=3E=3Cs=70=61n sty=6C=65=3D=22=66=6Fn=
=74-=73=69ze=3A10=2E0pt;=66o=6Et-=66=61mily:&qu=6Ft=3B=41=72ial&qu=6Ft;,=73a=
=6Es-=73erif;col=6Fr:black=22>&nb=73p=3B&n=62=73p=3B=26=6Eb=73p;&=6Eb=73p;&n=
=62s=70;&=6Ebs=70=3B&=6Eb=73p=3B b=46ram=65Ind=65x=26nbsp=3B&=6Ebsp;&=6Eb=73p=
=3B&n=62sp;=26nbs=70;=26=6Eb=73=70;&=6Eb=73p;&=6Eb=73p;&nb=73p;&n=62sp;=26nb=
=73p;=26=6Ebs=70;&n=62=73=70;&nbs=70;=26=6Eb=73=70;&nbsp;&nbsp;&=6Ebsp=3B=26nb=
s=70=3B&=6E=62s=70;&nb=73p;=26nb=73=70=3B=26=6E=62s=70;&nbsp=3B 3=3Co:p>=3C/o=
=3A=70=3E<=2Fspa=6E><=2Fp>
<=70 =63l=61ss=3D"M=73oN=6Frma=6C"=3E<span styl=65=3D"fon=74=2Ds=69=7Ae:1=30.0=
pt;=66on=74-fam=69ly:&=71uot;A=72=69a=6C&q=75=6Ft=3B,=73ans-serif=3Bcolo=72:=
=62la=63=6B=22>&n=62sp=3B=26n=62=73p;=26=6Eb=73p;=26=6Eb=73p;=26=6Ebsp=3B&nbs=
=70;&nbs=70; b=6DCapab=69li=74=69e=73=26nbsp;&n=62sp=3B&n=62=73p=3B=26n=62s=70=
;=26nbs=70;=26=6Eb=73p;&nbsp;=26nbsp=3B&=6Ebs=70;&nbsp;&n=62sp=3B=26=6Eb=73p=
=3B=26nbs=70=3B=26=6Ebsp;&nbs=70;&nbsp;&nbsp;&=6Eb=73=70; 0=780=30<o:=70=3E</o=
:p>=3C=2Fsp=61n=3E<=2F=70=3E
<p =63lass=3D"Ms=6FNormal"=3E<=73=70=61=6E s=74y=6Ce=3D"f=6Fnt-=73=69ze:10.=30=
p=74;=66on=74-=66=61mil=79:=26qu=6F=74;A=72ial&=71=75ot=3B,sa=6Es=2Ds=65=72if;=
=63=6F=6Co=72=3Ab=6C=61ck"=3E&n=62sp;&=6E=62=73p;=26n=62=73p;&n=62sp;&nbsp;&nb=
=73p;=26=6Ebs=70=3B&nbs=70=3B&nbsp; S=74il=6C =69m=61g=65 =75nsu=70=70ort=65d=
=3Co:=70=3E=3C=2F=6F=3Ap></sp=61=6E=3E</=70>
<=70 cla=73s=3D"M=73=6F=4E=6F=72=6D=61=6C=22=3E=3Cspan =73=74=79le=3D"f=6Fnt=
=2Dsize=3A10.0p=74;fo=6E=74=2D=66=61m=69=6Cy=3A&quot=3B=41=72ial&quot=3B,s=61=
=6Es-s=65ri=66;=63o=6C=6F=72=3A=62lac=6B"=3E&n=62sp;&nbsp;=26=6Eb=73p;&n=62sp;=
&nb=73p;=26=6Ebsp=3B&n=62sp=3B wW=69=64=74h&=6Ebs=70=3B&n=62sp=3B=26=6E=62=73p=
=3B&n=62=73p;&nbsp=3B=26=6E=62sp=3B=26=6Ebsp;=26nb=73p;&nbsp=3B&=6Ebsp=3B&=6Eb=
s=70;&n=62sp;&n=62s=70=3B =26nb=73p=3B&=6E=62=73p=3B&n=62sp=3B=26=6Ebsp;&n=62s=
p=3B=26=6E=62=73=70=3B=26n=62sp;=26=6Ebsp=3B&n=62=73p;&nbsp=3B=26=6Ebsp;=26nbs=
p;=26n=62s=70;19=320<o:p>=3C/=6F=3Ap></s=70=61n=3E</p=3E
=3C=70 clas=73=3D=22Ms=6F=4E=6Frma=6C=22=3E<s=70an s=74yle=3D"fon=74=2D=73i=7A=
e:1=30.=30p=74;fo=6E=74-f=61mi=6Cy=3A=26quot;Ar=69=61=6C&quot;,=73=61n=73-=73e=
=72if=3B=63olor:b=6C=61=63k"=3E&n=62=73p=3B&n=62s=70=3B&n=62sp;&=6Ebsp=3B=26n=
=62sp=3B&nbsp;&nbsp; w=48eight=26nbsp=3B&=6E=62=73p;&n=62s=70;=26n=62=73p=3B&n=
bsp;&n=62sp=3B&nbsp;&nbsp=3B=26nbs=70;&n=62=73p;&nbsp=3B&nbs=70;=26nb=73p;&nbs=
=70=3B&=6E=62sp=3B=26n=62=73=70;&nbs=70;&nb=73=70=3B&nbsp;&nbsp;&nbsp=3B=26nb=
=73p;&nbs=70;&=6E=62=73=70;=26=6E=62sp; 10=380=3C=6F:p><=2Fo:=70>=3C/=73pa=6E=
=3E</=70=3E
<=70 =63l=61ss=3D"=4D=73=6FN=6F=72mal=22=3E<s=70=61=6E st=79=6Ce=3D"fo=6Et-si=
=7Ae=3A=310.0p=74=3Bfont-f=61=6D=69ly:=26quot;=41rial=26qu=6Ft;,san=73-seri=66=
;color:b=6C=61ck">&nbsp;=26n=62=73p=3B&=6Eb=73p=3B&n=62sp;&nbsp=3B&nbsp;&nb=73=
p; dw=4DinBit=52a=74e&nb=73p;&=6Ebsp;=26nbs=70;&=6Eb=73p;&n=62sp;&nbs=70=3B=26=
nbsp;&n=62sp=3B&=6E=62sp;&nbs=70;&nb=73=70=3B&n=62sp;&nb=73p;&n=62=73=70;&n=62=
sp;&=6E=62sp; =318432=3000<o:=70></o:p=3E</span><=2F=70>
<p cla=73s=3D"=4Ds=6FNor=6Da=6C=22><span style=3D=22=66on=74-size=3A10=2E0p=74=
;=66on=74-=66amily:&=71uot=3BAr=69=61l=26q=75o=74;=2Cs=61ns-s=65r=69f=3Bc=6Flo=
=72:b=6C=61=63k">&nb=73p;=26n=62sp;&nbs=70=3B&=6E=62sp;&nb=73p;&nbs=70=3B&n=62=
sp; =64w=4Dax=42=69tRat=65&=6Ebsp=3B&=6Ebsp=3B&=6Ebsp;&n=62sp;=26n=62sp=3B&=6E=
b=73p;&nb=73p;&=6E=62=73p=3B=26n=62s=70;&=6Ebsp;=26n=62sp=3B&=6Eb=73p;&=6E=62s=
p;&nb=73=70=3B=26=6Ebs=70;=26nb=73p=3B 552=396=30=300<o:=70=3E<=2F=6F:p></spa=
=6E=3E=3C/p>
<p cla=73s=3D"M=73oN=6F=72mal">=3Cspan =73t=79=6Ce=3D"font-=73i=7A=65:=310.=30=
=70=74;f=6Fnt=2Df=61=6D=69ly:=26quot;Ari=61=6C&quot=3B,sa=6E=73-=73e=72=69=66=
=3Bc=6Fl=6Fr:bl=61=63k=22>&=6Ebsp;=26=6Eb=73p;=26nbsp;&nbs=70;=26=6Eb=73=70=3B=
&nbs=70;&=6E=62s=70; =64w=44=65faul=74=46ra=6DeI=6Eter=76al&nb=73p;&=6Eb=73=70=
;&=6Eb=73p;&nbs=70;=26n=62sp=3B&nb=73p;&=6E=62=73p=3B=26nbs=70; =3333333<o:=70=
></o:p>=3C/span></p>
=3Cp class=3D"M=73o=4Eor=6Da=6C=22><span style=3D=22=66=6F=6E=74=2D=73=69ze=3A=
1=30.=30pt;=66=6F=6Et-=66amil=79=3A&q=75ot=3BArial&quot=3B=2Csan=73=2Dseri=66=
=3Bc=6Fl=6Fr:bl=61c=6B">&=6Ebsp;=26nb=73p=3B&nbsp;&n=62s=70;=26nb=73p;=26=6Ebs=
p=3B=26=6Ebsp=3B b=46ra=6DeInt=65rv=61l=54y=70e=26nbs=70;=26n=62=73=70=3B=26n=
=62sp=3B&n=62s=70=3B&n=62sp;&nb=73=70;&=6Eb=73p;&=6E=62=73p;&n=62sp;&nb=73p;=
=26n=62s=70=3B&nb=73p;&nbsp;&nbsp;=26n=62sp=3B&nbsp;&n=62s=70; =32=3Co:=70>=3C=
/o:p><=2F=73pan></p>
<=70 =63l=61=73=73=3D"Ms=6F=4Eorm=61l"=3E<s=70a=6E style=3D=22=66ont-si=7Ae:10=
=2E0=70=74;=66=6Fn=74-=66=61m=69ly:&qu=6Ft=3BArial=26=71u=6F=74=3B,=73ans-seri=
f=3Bcol=6Fr=3Ab=6Cac=6B=22=3E=26nbsp;&=6Eb=73=70;&=6Ebsp=3B&=6Eb=73=70;&n=62=
=73=70=3B&nbs=70=3B=26=6E=62=73p; dwByte=73PerLine=26nb=73p=3B&nb=73=70;&n=62=
=73=70=3B=26nbs=70;&nb=73p=3B=26nbsp;&nbsp;&=6Ebsp=3B&=6Ebsp=3B&=6Eb=73p=3B&nb=
s=70;&nbsp;=26=6Ebsp;=26=6Ebsp;&=6Ebsp;&n=62sp;&nbs=70;&nbs=70=3B=26nbsp;&nbs=
=70;&n=62=73p=3B 0=3Co=3Ap>=3C=2Fo:p=3E<=2F=73p=61=6E></p>
=3Cp cl=61ss=3D"MsoNo=72ma=6C"=3E<span s=74=79=6Ce=3D"=66on=74=2D=73=69ze:1=30=
=2E0p=74=3Bfo=6E=74-fami=6Cy:&=71u=6F=74=3BArial&q=75=6Ft=3B=2Csans-serif;c=6F=
lor:b=6Cac=6B">&=6Ebs=70=3B&n=62=73p;&n=62sp;&nbsp;=26nbs=70;=26=6E=62sp;&nbs=
=70; d=77Fram=65Int=65r=76al=28 0)&nbsp;&nbs=70=3B=26nbsp=3B&nbsp;&n=62=73p=3B=
&=6Ebs=70=3B&=6Eb=73=70;=26nbsp;&=6Eb=73p;=26nb=73p=3B&nbsp=3B 333=33=333<=6F:=
p=3E</=6F:p=3E<=2Fsp=61n=3E=3C/=70=3E
<=70 class=3D"M=73o=4Eo=72ma=6C"=3E<sp=61n s=74yl=65=3D=22font-si=7Ae:10.=30p=
=74;font-=66am=69ly:&quo=74=3B=41r=69a=6C&quot=3B=2Csans=2D=73=65rif=3B=63olor=
=3Ab=6Ca=63=6B"=3E=26=6Eb=73=70;=26n=62sp;&=6E=62sp;&=6Ebsp;&=6Ebsp;&nbsp=3B=
=26nb=73p; =64w=46r=61me=49n=74=65rval( 1=29&=6Ebsp;=26nbsp;&nbs=70;&nb=73p;&n=
bsp;&=6Eb=73=70;=26=6Ebs=70=3B&nbsp=3B&nb=73p;&nbsp;&n=62s=70; 4=300000<o=3Ap>=
</o:p=3E=3C/s=70=61n=3E<=2F=70>
=3Cp clas=73=3D"M=73oNo=72ma=6C=22><sp=61n style=3D"fon=74-=73=69ze:10.0pt;fo=
=6Et-famil=79:&quo=74=3BA=72i=61l&=71uot;,=73ans=2Ds=65=72i=66;colo=72=3A=62=
=6C=61c=6B">&nb=73=70=3B&n=62sp=3B=26n=62s=70=3B&=6Ebsp;=26n=62s=70; =56ide=6F=
Strea=6D=69=6Eg Int=65rf=61=63e Des=63r=69pto=72:=3C=6F=3A=70></o=3Ap>=3C=2F=
=73=70an><=2Fp=3E
<p c=6Ca=73s=3D"M=73=6F=4Eormal"><span =73tyl=65=3D"=66ont-siz=65:=31=30.0pt;f=
ont-fami=6Cy:&=71=75ot;=41=72i=61l=26q=75=6F=74;,sa=6Es-=73e=72i=66;co=6Co=72:=
bla=63k">&nb=73p=3B=26n=62s=70=3B=26nbsp=3B=26=6Ebsp;&=6Eb=73p;&nbsp;&nbsp=3B =
bLengt=68=26=6Eb=73=70=3B=26nbsp=3B&nbsp;&n=62=73=70;=26nb=73=70;&n=62=73p=3B&=
=6E=62=73p;&=6Ebsp;&nbs=70;=26=6Ebsp;&=6E=62=73p;&nbs=70=3B=26nbsp;&nb=73=70;&=
=6Eb=73p;=26nbs=70=3B=26=6E=62sp;&nbsp;&nb=73p;=26nb=73p=3B&nb=73p=3B=26n=62s=
=70=3B=26nb=73p;=26nbsp;&=6E=62s=70;&=6E=62=73p;&nb=73p; 34<o=3Ap><=2Fo:=70></=
spa=6E=3E</p>
=3Cp class=3D"MsoNorm=61=6C">=3Cs=70an =73ty=6Ce=3D"fon=74=2Ds=69ze:=310.=30=
=70t;fo=6E=74-family:=26=71uot;Ari=61l&=71u=6Ft;=2Csans-se=72=69f;c=6Fl=6Fr:b=
=6C=61ck">&n=62sp=3B=26=6Ebs=70=3B&=6E=62sp;&=6Eb=73p;=26n=62sp=3B&=6E=62=73p;=
&=6Ebsp; =62D=65scripto=72T=79p=65=26n=62=73=70;=26=6Ebsp;&=6Ebsp=3B=26nb=73p;=
=26nbs=70=3B =26=6Ebsp;=26=6Ebs=70=3B=26nbsp;&=6Eb=73p=3B&=6Ebsp;&=6Ebsp=3B&nb=
sp;&n=62s=70;&n=62sp=3B&n=62sp=3B&=6E=62sp=3B&=6Eb=73p=3B&n=62=73p;=26nbsp=3B3=
6<o=3Ap>=3C=2F=6F:p></sp=61n></p>
<p cla=73s=3D"MsoNorma=6C=22><sp=61=6E =73t=79l=65=3D"=66o=6Et=2D=73i=7Ae=3A=
=310=2E0=70t;f=6Fnt-fami=6Cy:&=71uo=74=3B=41=72ial&q=75ot=3B=2Cs=61=6E=73-=73e=
rif=3Bcolor:=62l=61c=6B=22=3E=26nb=73=70=3B&=6E=62s=70=3B&nbsp;&=6Ebs=70;=26n=
=62=73=70;&nbsp;&nbsp; bDesc=72ip=74orS=75=62=74y=70e=26=6Ebsp;=26n=62sp;=26=
=6Ebs=70;=26n=62sp;&nbsp;=26=6Ebs=70=3B&nbsp=3B&nbsp;&n=62sp;&n=62sp;=26=6E=62=
sp;=26=6Ebsp=3B&n=62=73p=3B&n=62=73p;&=6Eb=73p=3B&nbsp; 1=37 =28FR=41ME=5FFRA=
=4D=45=5FB=41=53ED=29=3Co:p=3E</=6F:=70>=3C/sp=61=6E=3E</p>
<p cl=61ss=3D=22=4D=73oNo=72mal=22=3E<span sty=6Ce=3D=22f=6F=6E=74-size=3A=310=
=2E0=70t;=66=6Fnt=2Dfamil=79:&=71uot=3B=41=72=69al=26=71=75ot;,=73=61ns-ser=69=
f;=63olor:=62lac=6B=22>=26=6Ebsp;&=6Ebsp;&nbs=70;&nbs=70;&nbs=70;&n=62s=70;&nb=
=73p; bF=72=61m=65In=64ex=26=6Ebsp;&=6Eb=73=70;&n=62sp;=26=6Eb=73=70=3B&nb=73p=
=3B&nb=73=70=3B&nbsp=3B&nbs=70;&nbs=70;&nbsp;=26=6Eb=73p;=26nbs=70;&nbsp;=26n=
=62s=70=3B&nb=73p;=26=6Ebsp;&=6E=62=73p;=26n=62sp=3B=26nbsp;=26n=62=73p;&nbsp=
=3B=26n=62sp=3B&=6Ebsp=3B&n=62sp; =34<o:=70></=6F:=70>=3C/=73=70a=6E=3E</=70>
=3Cp =63las=73=3D"=4Ds=6FNor=6Da=6C=22=3E=3Csp=61=6E styl=65=3D"=66on=74-=73iz=
e:=31=30=2E=30pt=3B=66=6F=6Et=2Dfami=6Cy:=26q=75ot;A=72i=61l&=71=75ot=3B,=73=
=61=6E=73-=73e=72if=3B=63olo=72:bla=63k">&nb=73p;&=6E=62sp;=26nbs=70;&nbsp=3B=
=26=6Eb=73=70;=26nb=73p;&nbsp=3B =62=6DCa=70ab=69lit=69e=73&nb=73p;&n=62sp=3B&=
nbsp;=26nbs=70=3B&nbsp;&n=62sp;=26nb=73p;&nb=73=70=3B&=6Ebsp=3B&=6E=62=73=70=
=3B&nbs=70=3B&nbsp;&nb=73=70=3B=26nbs=70;&n=62s=70;&=6Ebs=70;&nbsp;=26n=62s=70=
=3B 0x0=30<o:p=3E<=2Fo=3Ap><=2Fs=70=61n>=3C/p=3E
<=70 cla=73=73=3D"MsoNo=72mal=22=3E<sp=61n =73=74yl=65=3D"f=6Fnt=2D=73ize:=310=
=2E0pt;font-fam=69=6Cy:&qu=6Ft=3B=41=72=69al&quot;,=73=61ns-seri=66;c=6Flor:b=
=6C=61c=6B">&nbsp;&nbs=70;&nb=73=70=3B=26nb=73=70;&n=62sp;&n=62sp;=26nb=73p=3B=
=26nbsp;&n=62=73=70; =53ti=6Cl im=61=67=65 =75=6Esu=70port=65d=3Co:p=3E=3C=2Fo=
:p></s=70a=6E=3E</p>
=3Cp clas=73=3D=22M=73oN=6Frm=61l"><s=70a=6E =73=74y=6Ce=3D"=66o=6E=74-s=69ze=
=3A=31=30.=30=70t=3Bf=6Fn=74=2Dfam=69ly:=26quot;Ar=69a=6C&=71uot=3B,s=61n=73-=
=73=65rif;co=6Co=72:black">&nbsp=3B&nb=73p;&=6E=62sp;&nb=73p=3B=26=6Ebs=70=3B&=
=6Ebs=70;&n=62s=70; wWi=64th=26=6Eb=73p=3B&=6Ebsp=3B=26nb=73p;=26nb=73=70=3B&n=
=62=73p=3B=26nb=73=70;&=6E=62=73=70;=26=6E=62s=70=3B=26nbsp=3B&n=62=73p=3B&nbs=
p;&nbsp;=26nbsp;&=6Ebsp;&=6Ebs=70;=26nb=73=70=3B&nbs=70;&=6Ebsp=3B=26nbsp;&=6E=
bsp=3B&nbsp;&n=62sp;&n=62s=70=3B=26nbsp=3B&nb=73p;=26=6Ebsp=3B =312=38=30<=6F:=
p>=3C=2Fo:=70><=2Fs=70=61=6E></p>
<p class=3D=22M=73oNo=72ma=6C=22><span =73t=79l=65=3D"=66ont-si=7Ae:10.=30=70=
=74=3B=66ont=2Dfam=69l=79:=26=71uot;Ari=61=6C=26=71u=6Ft;=2C=73ans=2D=73=65rif=
=3B=63=6Flo=72:b=6Ca=63k"=3E&n=62=73p=3B=26n=62=73p;&nbsp;=26=6E=62sp;=26nb=73=
p=3B&nb=73=70;=26=6Eb=73=70;wHei=67=68t=26nbsp=3B&nb=73p;&nbsp=3B=26nb=73=70;&=
nb=73=70;&nbs=70;=26=6Ebsp;=26=6Ebs=70;&=6Ebsp=3B&nb=73=70;=26n=62sp=3B&nbs=70=
=3B&n=62=73p;&nbs=70;&nb=73=70=3B&n=62=73p;&nbs=70;=26=6Ebs=70;&=6Ebsp;&=6Eb=
=73p;&nbsp;=26nbsp=3B&=6Ebsp;&n=62sp;&nbs=70=3B&nb=73p; 72=30<=6F:p></o:p=3E=
=3C/spa=6E><=2Fp>
=3Cp c=6Cass=3D=22=4D=73=6FNo=72=6Dal">=3Cs=70a=6E st=79l=65=3D=22f=6Fn=74=2D=
=73=69z=65=3A=310.0p=74=3B=66o=6Et=2D=66ami=6Cy=3A&=71uo=74;Ar=69=61l&quo=74;=
=2C=73a=6Es-se=72i=66;c=6F=6Cor:=62l=61=63k=22>&=6Ebsp;&nb=73p=3B=26nbsp;&nbsp=
=3B&=6Eb=73p;&=6Ebsp;&nbsp; dwMin=42it=52ate=26n=62sp;=26nbsp=3B&=6E=62=73=70=
=3B&nbs=70;=26nb=73p;&=6Ebsp;&nbs=70;=26nb=73p;=26n=62sp;=26n=62=73p=3B&nb=73p=
;&=6E=62sp;=26nbsp=3B=26nbs=70=3B&nbsp;&nbs=70=3B =31=38=34=33=32=30=30=30<=6F=
:p><=2F=6F:p></=73p=61n=3E</p>
<p class=3D"Ms=6FNo=72ma=6C=22><s=70=61n =73t=79=6C=65=3D"f=6Fnt=2D=73ize:1=30=
.=30pt;fon=74-f=61=6Dily:=26quot;Ar=69a=6C=26=71u=6Ft;,sans-se=72i=66;co=6Co=
=72:bl=61=63k"=3E&n=62=73=70=3B=26=6E=62sp;=26=6Ebsp=3B&nbsp;&n=62sp;&=6Ebsp=
=3B&n=62sp=3B =64=77MaxBit=52a=74=65&n=62sp;&=6Ebsp;&n=62=73p;=26nb=73=70;&=6E=
bsp;&nbs=70;=26nbsp;=26nbs=70=3B=26n=62sp;=26nbsp=3B&n=62sp=3B&n=62sp;&nbs=70=
=3B&nbsp=3B&n=62=73=70=3B&nb=73=70=3B 5=352960=30=30<o:p></o:=70>=3C/sp=61n=3E=
=3C/=70>
=3Cp cla=73s=3D=22Mso=4Eor=6D=61l=22>=3Cspa=6E st=79l=65=3D"fo=6E=74-size=3A1=
=30.0=70t;=66on=74=2D=66a=6Di=6C=79=3A&qu=6Ft;A=72ial&=71uot=3B=2Csans-=73eri=
=66=3Bco=6Co=72:black=22>&=6E=62=73p;&=6Eb=73p;&=6Eb=73p;&=6Ebsp;&=6Eb=73p;=26=
nbsp;&=6Ebsp; dw=44e=66au=6C=74=46ram=65I=6E=74erval&n=62sp;&n=62sp;&nbsp=3B&n=
bsp;&n=62sp=3B=26nb=73p;&nbsp=3B&=6Ebs=70=3B =33333=333=3Co:=70>=3C/o=3A=70></=
span=3E<=2F=70=3E
<=70 c=6Cass=3D"M=73oN=6Frmal">=3Cs=70an s=74yle=3D"fo=6E=74-s=69=7Ae:=310.=30=
p=74;font-=66=61=6Dil=79:&=71u=6F=74;=41=72=69=61=6C&=71=75ot=3B,s=61ns-serif;=
co=6Co=72:=62l=61=63k=22>=26=6Eb=73=70;&nb=73p;&n=62s=70;&nb=73=70=3B&nbsp;=26=
=6Eb=73p;&=6Ebsp=3B b=46=72a=6DeInt=65rva=6CTy=70e&=6Ebsp=3B&nbsp;&=6Eb=73p;&n=
b=73=70;=26=6Ebsp=3B&nb=73=70=3B&n=62=73p=3B&nb=73=70;&nbsp;=26nbs=70;=26=6Ebs=
p=3B&nbsp;=26nbsp;&=6E=62s=70;&nbsp=3B&=6E=62sp;=26nb=73=70; 2<o:=70=3E=3C/=6F=
:p></=73=70=61n></p>
<=70 c=6Ca=73s=3D"Ms=6FNor=6Dal"><=73pa=6E =73tyl=65=3D=22=66=6F=6Et=2D=73ize:=
1=30=2E0pt;=66=6F=6Et=2D=66amily:=26=71u=6F=74=3BAri=61l=26quo=74;,=73a=6E=73-=
s=65=72i=66=3Bc=6Flor:black=22>&nbsp;&nbsp=3B=26nb=73p=3B&=6Ebsp=3B=26n=62=73=
=70;=26nbs=70=3B=26nb=73p; =64wBytes=50erLi=6Ee=26nbsp;&=6Eb=73p;=26n=62=73=70=
;&nbs=70; &nb=73p;=26nb=73=70;=26nb=73=70;&n=62=73p;=26nbsp;=26nbsp;&n=62sp;=
=26n=62=73=70;&nbsp;&nb=73p=3B=26=6Eb=73p;&nb=73p=3B&n=62sp;=26=6Ebsp;&nbsp=3B=
&nbsp;&n=62s=70;0<o=3Ap></=6F:=70=3E=3C=2F=73p=61n=3E=3C=2F=70=3E
<p class=3D=22=4Ds=6FNorma=6C"><span sty=6C=65=3D"font-size:=310=2E0=70t;=66=
=6Fnt=2Dfamil=79:&quo=74;Ari=61l=26q=75o=74=3B,san=73-s=65r=69f;=63o=6C=6Fr=3A=
bl=61ck">&nbs=70;=26nbs=70;&n=62sp;&nb=73p;&nb=73p;=26=6E=62s=70;&nb=73p; dw=
=46rame=49nt=65=72=76al=28 0=29=26nbs=70;=26nbs=70;&n=62sp=3B=26=6Ebs=70;=26nb=
=73p;=26=6Eb=73=70;&nbsp;&=6E=62sp;&=6Eb=73=70=3B&=6E=62sp=3B=26nbs=70; 33=333=
33<=6F:p=3E=3C/=6F:p></s=70an=3E</p>
=3Cp =63la=73=73=3D=22M=73oNorm=61=6C=22>=3C=73pa=6E style=3D=22fon=74-siz=65=
=3A=310=2E=30pt;=66ont-f=61m=69=6Cy:=26qu=6Ft;A=72ia=6C&quot;,sans=2Ds=65rif;c=
olo=72:=62lack=22>=26nb=73=70;&=6E=62s=70;&nbs=70;&n=62sp=3B&nbsp;&nbsp=3B&=6E=
=62sp; dwFr=61=6D=65Inte=72va=6C=28 1=29&n=62sp;&nbs=70=3B=26=6E=62s=70=3B&=6E=
bsp;&=6E=62sp;&nbsp=3B&nbs=70;&nbsp;&nbsp=3B=26n=62=73p=3B=26nbs=70=3B 4=30=30=
00=30<o:p><=2Fo=3Ap></=73pan>=3C=2Fp>
<=70 cl=61=73=73=3D=22Ms=6FNo=72=6Dal"><=73pa=6E style=3D"f=6Fnt=2Ds=69=7Ae=3A=
1=30.0=70t;f=6Fnt=2D=66ami=6C=79:&quo=74=3BAr=69al&q=75o=74;,s=61ns=2D=73=65ri=
f;color:=62=6Cack">&nbsp;&nb=73=70;&=6E=62=73p;&nb=73p;=26nbs=70; Vide=6FS=74r=
=65aming =49n=74=65=72fac=65 =44esc=72ip=74o=72=3A=3C=6F:=70></o:=70><=2Fspan>=
<=2F=70>
<p cl=61ss=3D"MsoN=6Frmal"=3E<s=70an style=3D=22font-si=7A=65=3A10=2E0pt;f=6Fn=
t-=66amily:&=71=75o=74;Ar=69al=26quo=74;=2C=73=61ns-serif;co=6C=6F=72=3Ablack"=
>&nb=73p;&nbsp=3B&n=62=73p;&=6E=62sp=3B&nb=73=70=3B=26=6Ebsp=3B&nbsp=3B =62=4C=
e=6Egt=68&=6E=62s=70=3B&=6Ebs=70;=26nb=73p;&n=62=73p;&n=62=73=70=3B&=6Ebs=70;=
=26nbsp;&nbsp=3B&=6Ebs=70=3B=26=6Eb=73p;=26nbs=70;&n=62sp=3B&n=62s=70;&nbs=70=
=3B=26=6E=62s=70;&n=62sp;=26n=62sp;&n=62sp;=26=6Ebsp;=26nbsp;&n=62sp=3B&nbs=70=
;&n=62=73p=3B&=6Ebsp;&nb=73p;&nb=73p;=26n=62sp; 27<=6F:p=3E=3C=2Fo:p=3E</=73=
=70an=3E</=70=3E
=3Cp c=6C=61=73s=3D"MsoNorm=61=6C">=3C=73=70an =73tyle=3D"fo=6E=74-=73=69ze:=
=310.0=70=74=3Bfo=6Et-=66am=69=6Cy:&qu=6Ft;Arial&q=75=6Ft;=2Csans=2Dseri=66;co=
lo=72=3A=62l=61=63k=22>&nbsp;=26=6Ebsp;&=6Ebsp;&=6Ebs=70;&n=62=73=70;&=6E=62s=
=70;=26=6Ebs=70=3B b=44escrip=74=6Fr=54ype=26n=62sp=3B&n=62sp;=26n=62=73=70=3B=
=26=6Ebsp;&nbsp;=26=6Ebsp=3B&nbs=70;=26nb=73=70=3B&nb=73p=3B&n=62=73p;&=6E=62s=
=70=3B=26n=62=73p;&=6Ebsp;&nb=73p=3B&nb=73p;=26=6Ebsp;=26nb=73=70;&n=62s=70=3B=
&=6E=62sp; 3=36<o:p=3E</o:p=3E</=73pa=6E=3E</p=3E
<p c=6C=61ss=3D=22M=73=6FNormal"><s=70an =73tyl=65=3D"=66on=74-s=69ze:10.0p=74=
;=66on=74=2Dfam=69ly:=26=71=75ot=3B=41r=69a=6C=26quot;,sa=6Es-=73erif;co=6C=6F=
=72:=62la=63=6B=22>=26n=62sp=3B=26n=62=73p;&nbsp;=26n=62=73p=3B&nb=73=70=3B&=
=6Eb=73=70;&=6Ebsp=3B =62De=73=63rip=74orSub=74ype=26nbsp;&nbs=70;&nb=73p;&nbs=
p;=26nb=73p;=26nb=73p;=26n=62sp=3B&=6E=62=73=70;=26=6Ebsp;&n=62s=70;&n=62sp;&n=
b=73p;&nb=73p=3B&nbsp;&=6Eb=73p;&nbs=70;=26n=62=73=70=3B 4 =28=46=4FRMAT=5FUNC=
O=4D=50R=45=53=53E=44=29=3Co=3A=70>=3C/o:p><=2F=73=70=61=6E=3E<=2Fp>
<=70 cl=61ss=3D"Ms=6F=4Eor=6Da=6C=22>=3Csp=61n styl=65=3D"=66=6Fnt-=73i=7A=65=
=3A1=30=2E0=70t=3B=66on=74=2Df=61=6Dil=79:&q=75ot=3B=41=72ial=26quo=74;=2Csan=
=73-=73e=72=69f;co=6C=6F=72:black"=3E&nbsp;&n=62sp=3B=26n=62sp;&nbsp=3B=26=6Eb=
=73=70;&nbs=70;&n=62sp; =62Fo=72=6Da=74Ind=65x&=6E=62=73p=3B&n=62=73p;&nb=73p=
=3B=26n=62s=70=3B&nbsp;&=6Eb=73=70=3B&nbsp=3B&n=62sp;&n=62=73p;&nb=73p=3B&n=62=
=73p;&=6Eb=73p;&=6Eb=73=70=3B=26nbsp;&nbsp;&nbs=70=3B=26=6Ebsp=3B=26n=62s=70;&=
nb=73p=3B&nbs=70;&=6Eb=73=70;=26nbsp=3B&=6Ebsp; 3<o:=70></=6F=3Ap=3E</=73p=61n=
=3E=3C/=70=3E
<=70 clas=73=3D"MsoNo=72m=61l"><s=70=61n styl=65=3D"f=6F=6E=74-siz=65=3A10.0p=
=74;=66o=6Et-family:=26quo=74=3B=41r=69=61=6C=26q=75=6F=74;,sa=6E=73-=73e=72=
=69=66;col=6F=72:b=6Ca=63k">&n=62sp;&n=62s=70;=26=6Ebsp=3B&nbsp;=26=6Ebsp;&=6E=
bsp;&n=62=73p; =62Nu=6DFram=65Descrip=74ors=26nbsp=3B&nb=73p=3B&nb=73=70=3B&nb=
sp;&=6E=62=73p;&=6Eb=73p;&nbsp=3B&n=62sp;&nbsp=3B=26nb=73p;&n=62sp=3B&nbs=70;&=
nb=73=70;&nbsp=3B=26n=62=73p; 2<o=3Ap></o:=70></=73p=61n=3E=3C/p>
<p cla=73s=3D"Ms=6FN=6F=72m=61l"=3E=3C=73p=61=6E s=74=79le=3D"font-=73iz=65=3A=
1=30.0p=74;=66=6F=6Et-famil=79=3A&=71=75=6Ft;=41r=69al&=71uot;,=73a=6Es=2D=73e=
ri=66;co=6C=6Fr=3A=62la=63k=22>&nbs=70=3B&nbsp;&nb=73=70;&n=62sp;&n=62sp=3B&=
=6Eb=73p;&nbs=70; gu=69d=46or=6D=61=74&nbsp;=26n=62sp;=26n=62sp;=26nb=73=70;&n=
bsp;&nb=73=70;=26nb=73p=3B&nb=73=70=3B&=6E=62=73p=3B=26nbs=70;&nb=73p;&nb=73p=
=3B&n=62sp=3B=26=6E=62sp;&nbsp=3B&nb=73p=3B&=6Ebs=70;&=6Ebs=70;&=6Eb=73p;&nb=
=73p;&n=62s=70;&n=62=73p;&nbs=70=3B&nbs=70;&nbsp=3B=26=6Eb=73p;=26=6Ebsp; =7B3=
2595559-0=300=30-0=301=30-800=30-00=61=6100=3389=627=31=7D=3Co:p=3E=3C=2Fo:p=
=3E</=73pan>=3C=2Fp=3E
=3Cp c=6Ca=73=73=3D=22=4Dso=4E=6Frmal"=3E=3C=73p=61=6E sty=6Ce=3D"fon=74=2Dsiz=
=65=3A=310.=30pt;=66on=74=2Df=61=6Dily=3A=26=71=75o=74=3BAr=69al&qu=6Ft;,=73an=
s-se=72i=66=3Bcolor:=62l=61=63k=22=3E&n=62sp;=26nb=73p;&n=62=73p=3B&n=62sp=3B&=
nb=73p=3B=26=6E=62s=70;&n=62sp=3B bBit=73P=65=72Pi=78el&nbs=70;&nbsp=3B&nbsp;&=
=6Ebs=70;&=6Ebsp=3B&nb=73p=3B&=6Ebsp=3B&nbsp;&nb=73p;=26=6Ebsp;&nbsp;&=6Eb=73=
=70;&nbs=70;&=6Ebs=70;&=6E=62sp=3B&nbsp;=26nbsp;&=6Ebsp=3B=26=6Eb=73p=3B&nbs=
=70;&=6Eb=73p; 16<o:=70>=3C/o:p></s=70an=3E<=2Fp=3E
<=70 =63=6Cas=73=3D"Ms=6FN=6Frm=61l"><sp=61n style=3D=22=66=6Fnt-siz=65=3A=310=
.0pt;f=6Fnt-fa=6Dil=79:&=71uot;Aria=6C&q=75o=74;,s=61n=73-ser=69=66=3Bco=6C=6F=
r:bl=61=63k=22>&nbsp;&n=62sp;&nbs=70;=26nbsp;&nb=73=70=3B&nb=73=70;&nbsp; bDef=
=61u=6CtFram=65I=6E=64=65x&=6Eb=73=70;&nbsp;&n=62s=70;&n=62=73p;&n=62sp=3B&nbs=
=70;=26n=62sp=3B=26n=62sp;=26=6E=62=73p;=26nb=73p;&n=62sp;&nbsp;=26nbsp=3B=26n=
bs=70;&nbsp=3B&n=62=73p=3B=26nb=73p; =31=3C=6F=3Ap><=2Fo:p><=2F=73=70=61n>=3C/=
p=3E
<p cla=73s=3D=22=4DsoNo=72m=61l"=3E=3Cs=70=61=6E =73=74y=6Ce=3D"fon=74-siz=65=
=3A10.0pt=3Bfont=2D=66amil=79=3A=26qu=6Ft;Arial&qu=6Ft;,=73=61n=73-=73e=72=69f=
;=63o=6Co=72:=62la=63=6B=22>&n=62=73p;&nbsp;=26nbs=70=3B&n=62sp=3B&nb=73p;&n=
=62=73p;&=6Ebs=70=3B =62As=70e=63tR=61=74io=58=26nb=73p;=26nb=73p;&=6Eb=73p=3B=
&n=62sp;&=6E=62sp;&=6E=62=73=70=3B=26=6Eb=73p;=26n=62=73p;&=6E=62s=70;&=6Ebs=
=70;&=6Eb=73p;&n=62=73p=3B=26nb=73p;=26n=62sp;&n=62sp;&=6E=62sp;&nb=73p=3B&n=
=62s=70=3B&nbsp;&nb=73p;=26nbs=70=3B=26=6Eb=73p; 0=3Co=3Ap>=3C/=6F:p></=73pan=
=3E=3C/p>
<p c=6Ca=73s=3D=22M=73o=4E=6Frmal"=3E=3Cs=70an sty=6Ce=3D"fon=74-s=69ze:1=30=
=2E0p=74;fon=74=2Dfam=69l=79=3A&=71=75=6Ft;Ari=61l&qu=6Ft;,san=73-serif;=63=6F=
=6Cor:bl=61ck">&n=62sp=3B&nbsp;&=6Ebsp=3B&n=62=73p=3B=26nbsp;&nbs=70;&=6Ebsp; =
=62=41spe=63=74=52a=74=69=6FY=26n=62sp;&n=62s=70;=26nb=73p;=26=6E=62=73p;&=6E=
=62sp;=26=6Ebsp=3B=26nb=73=70;&=6Ebsp=3B&=6Ebsp;&=6Ebsp;&nb=73p;=26nb=73p;=26n=
b=73p;=26nbsp;&nbsp;=26=6Eb=73=70;&nbsp;&nb=73=70;&n=62sp=3B&nb=73p=3B&nbs=70=
=3B=26n=62=73=70; 0=3Co:p=3E=3C/o:=70><=2Fs=70=61n></p>
<p cla=73=73=3D"Mso=4E=6Fr=6D=61l"><sp=61n =73=74=79le=3D"fo=6Et-=73=69=7Ae:1=
=30.0=70=74;font-f=61=6Dily=3A&=71u=6F=74;Ar=69a=6C&q=75ot;,s=61=6Es-se=72i=66=
;=63ol=6Fr:bl=61ck">&=6Ebs=70;&=6E=62s=70;=26n=62sp=3B=26n=62sp=3B&n=62s=70;&=
=6E=62s=70=3B&n=62s=70; bmI=6Eter=6CaceFla=67=73&n=62=73p;&=6E=62sp;=26nbs=70;=
=26=6Ebsp;&nbsp;&=6E=62s=70;&n=62=73=70=3B=26nb=73p;&n=62=73=70;=26=6Ebsp=3B&n=
bs=70;&nbsp;&nbs=70;=26nbsp;&n=62sp;=26=6Ebsp; =30x0=30=3Co=3Ap><=2Fo:=70=3E</=
span><=2F=70>
<=70 cl=61=73s=3D"=4DsoN=6F=72m=61=6C"=3E<=73=70an style=3D"fon=74=2Ds=69z=65=
=3A10.0p=74;=66=6Fnt-fam=69ly=3A=26qu=6Ft;Arial&quo=74;,=73=61ns-s=65ri=66;=63=
olor:b=6C=61ck=22>&=6Ebsp;=26nbs=70;=26n=62sp;&=6E=62=73p;&nb=73p=3B=26=6E=62s=
p=3B&nbsp=3B=26n=62=73p;&nbs=70; Inte=72=6C=61=63ed s=74re=61m or vari=61ble: =
=4E=6F<=6F:p=3E=3C=2Fo:p=3E<=2F=73pa=6E></p=3E
<p cla=73s=3D"M=73oN=6Frm=61l"=3E<=73pan =73=74yle=3D"fon=74-size=3A10.0=70t;f=
o=6E=74-=66a=6D=69ly=3A&=71=75ot=3BAr=69=61l=26quot;,sa=6E=73-s=65rif=3Bcolor:=
bla=63k=22>&nb=73=70;&=6E=62=73p;&nbsp=3B&nb=73p;=26n=62s=70=3B=26n=62=73p;=26=
nbsp=3B&n=62sp;&=6E=62=73p; =46i=65lds pe=72 =66=72=61me: 2 fie=6Cds=3Co:=70=
=3E</o:p><=2F=73=70=61n>=3C/=70>
<=70 =63=6Cass=3D=22=4DsoN=6F=72=6D=61=6C=22><=73p=61=6E s=74=79le=3D"=66ont=
=2Dsi=7A=65:=310.=30pt;font=2Dfamily:=26quot=3B=41ri=61=6C&=71uot;,=73an=73-se=
r=69f;color:black">&n=62s=70;&nbsp=3B=26nb=73=70=3B&nb=73p;&n=62s=70=3B&=6Ebsp=
;=26nbsp;&nbs=70;&=6Eb=73p; Fi=65ld 1 firs=74: No=3Co=3A=70></o:p></s=70an>=3C=
/=70>
<p clas=73=3D=22Ms=6F=4E=6Frmal=22><spa=6E s=74y=6Ce=3D"f=6F=6Et-=73i=7A=65:10=
=2E0p=74;f=6Fnt=2D=66amily:=26qu=6Ft;A=72ial&=71uot=3B,=73a=6Es-=73=65rif;c=6F=
lor:=62lac=6B">&=6E=62sp;&=6Ebsp;&nbsp=3B&n=62sp;&nb=73p=3B=26n=62sp=3B=26=6E=
=62s=70=3B&=6Ebsp;&=6E=62sp; Field p=61=74=74=65rn: Field 1 only=3C=6F=3Ap>=3C=
/=6F:=70></s=70an=3E</p>
<p c=6Ca=73=73=3D"Ms=6FN=6Fr=6Dal"=3E<sp=61n =73ty=6Ce=3D"fon=74-=73i=7A=65:=
=310.=30=70t;font-f=61=6Di=6Cy:&q=75o=74=3B=41=72=69al=26qu=6Ft;,sans-=73=65ri=
f;c=6Flor:b=6C=61c=6B"=3E&nbsp;&n=62=73p;&nb=73p;=26nb=73p;&=6E=62=73=70;=26n=
=62sp;&=6E=62sp; =62=43=6Fp=79Protect&nbsp;=26nbs=70;&=6E=62s=70;=26=6Ebsp=3B&=
nb=73p=3B&n=62s=70;&nbsp;&=6E=62=73p=3B&=6E=62sp;&=6E=62sp;&nbsp=3B&=6Eb=73p=
=3B&=6Ebsp;&n=62=73p=3B&=6E=62=73=70;&nbsp;=26nbsp=3B&n=62sp;&nbs=70;=26=6E=62=
sp;&=6Ebsp=3B&=6E=62=73p=3B&nb=73p; =30<o:p></o=3Ap></s=70a=6E=3E=3C/p>
=3Cp c=6C=61=73=73=3D=22M=73o=4Eorm=61=6C"><span s=74y=6C=65=3D"=66o=6Et=2D=73=
iz=65:=310=2E0p=74;font-fa=6Di=6Cy=3A&=71u=6Ft;Aria=6C&qu=6Ft;,sa=6Es=2Dseri=
=66=3Bc=6Flor:bl=61=63k=22>&nbs=70;=26nbsp;&nb=73p;&=6E=62=73p=3B&n=62=73=70; =
=56=69deo=53=74=72ea=6D=69ng I=6Et=65rface Desc=72=69=70t=6Fr:=3C=6F=3Ap></o:p=
></spa=6E>=3C=2Fp>
=3Cp class=3D"MsoN=6F=72mal"><=73p=61n st=79=6C=65=3D=22=66=6Fnt-s=69=7Ae:10.0=
=70t=3Bf=6F=6E=74-fa=6Di=6Cy:&q=75=6F=74;=41rial&=71uo=74;,san=73-s=65ri=66=3B=
=63ol=6Fr:bla=63k=22>&=6Ebs=70;&nbs=70;=26=6Ebsp;&n=62s=70;=26nbsp=3B=26nbs=70=
;&n=62sp; bLe=6Egt=68&nbsp;&=6Ebs=70=3B&nbsp;=26nbsp;=26=6Ebs=70=3B&=6E=62=73p=
;&n=62sp;=26=6E=62=73=70;&nb=73p;=26nbs=70;&nb=73p;=26=6E=62sp;&=6E=62sp=3B&nb=
=73p;=26nbsp=3B&nb=73p=3B=26nb=73p;=26nb=73=70;&=6Eb=73p;&=6E=62=73p;&=6Eb=73=
=70;&nbsp;&=6Ebsp;=26nb=73p=3B=26n=62=73p=3B&=6Eb=73=70=3B&=6E=62=73=70; 34=3C=
=6F:p=3E</o:p=3E</sp=61=6E><=2Fp>
<=70 c=6C=61ss=3D=22=4Dso=4E=6F=72mal"><span style=3D=22fon=74-size:10.=30pt=
=3Bfont-family=3A&quot=3BA=72=69al=26quot;=2Csans=2Ds=65=72if;=63=6Fl=6F=72:=
=62l=61c=6B"=3E=26=6Ebs=70;=26nb=73p=3B&=6Ebsp;&nb=73=70=3B&=6Ebsp=3B&nbsp=3B&=
nb=73p=3B bDescripto=72Typ=65&=6Ebs=70=3B=26nbsp=3B&=6E=62=73p=3B=26=6E=62=73p=
;&nbs=70=3B&n=62=73p;=26=6Eb=73=70=3B&n=62s=70;&n=62s=70;&=6E=62sp=3B&=6E=62=
=73p;&=6E=62sp=3B&nbs=70=3B=26n=62sp=3B&=6E=62=73p=3B=26nbsp;=26=6Ebsp;&nb=73p=
;&=6Ebsp=3B 36<=6F:p>=3C=2Fo=3Ap></=73=70an=3E</p>
<p =63lass=3D=22MsoNorm=61=6C=22=3E<span =73=74=79=6C=65=3D=22f=6Fnt=2Dsiz=65=
=3A10.=30=70=74;=66ont-fami=6Cy=3A&quo=74;=41=72ial&qu=6Ft;=2Csans-s=65=72i=66=
;c=6Flor=3Abla=63k">&nb=73p;&nbsp=3B&nbs=70;&=6Ebs=70;=26=6Eb=73p=3B&nbs=70=3B=
=26n=62sp=3B =62Desc=72ipt=6F=72=53u=62=74=79=70e&n=62sp=3B&=6E=62=73p;&n=62sp=
=3B=26nbsp=3B&nb=73p;&nbsp;&nb=73p;=26nb=73p;&=6E=62sp=3B&nbsp;&nbsp=3B&nbsp;&=
n=62s=70;=26n=62sp;&=6Ebsp;&nbsp=3B&=6Ebsp; 5 (FRA=4DE=5FUNCOMPR=45SSED=29=3C=
=6F=3Ap=3E</o=3A=70=3E=3C/=73=70an>=3C/p>
<p =63=6Cas=73=3D"MsoNorm=61=6C"><s=70an styl=65=3D"fo=6Et-s=69=7A=65:1=30.=30=
=70t;fon=74=2Df=61=6Dily:&quo=74;=41rial&quot;=2C=73a=6Es=2Ds=65=72if;=63=6Fl=
=6Fr:bl=61=63k">=26nbs=70;&=6Ebs=70;&n=62sp;=26nbsp;=26n=62sp;&=6E=62s=70=3B=
=26n=62sp=3B =62Fra=6DeI=6Ed=65x&nbsp;=26nb=73p;=26nbsp;=26=6Ebs=70;&n=62=73p=
=3B=26=6E=62sp;&=6Ebs=70;&nbsp=3B&nb=73=70;&=6E=62sp;&=6E=62sp;&=6Ebsp;&=6Eb=
=73p;&nbsp=3B=26nbs=70=3B&nbsp;=26=6E=62sp;&=6Ebsp=3B&nbsp=3B&=6Ebsp;&nbsp;&=
=6Ebsp;&n=62sp;&=6Eb=73p=3B 1=3Co:=70=3E=3C/=6F:=70></=73=70an></p=3E
<p class=3D"Ms=6F=4Eorma=6C">=3C=73=70an s=74=79le=3D"f=6F=6Et-si=7Ae:1=30.0pt=
;=66=6Fn=74=2Dfa=6Dily=3A&qu=6Ft;Ar=69al&quot;,sa=6Es-serif;co=6C=6Fr=3Ab=6Cac=
k">&=6Ebsp;&=6Ebs=70=3B&=6E=62s=70;&nbsp;&nbs=70;&=6Ebs=70=3B&nb=73p; bmCapab=
=69l=69ties=26nbsp;&nbsp;=26=6Eb=73=70;&n=62sp=3B&n=62sp;&n=62sp;=26nb=73=70;=
=26nbsp;&nb=73p;&n=62=73p;&=6Ebs=70;&n=62sp;&nbsp;&n=62sp;&=6Ebsp=3B=26=6Ebs=
=70=3B&nbs=70;&nb=73p; =30x0=30<o=3Ap=3E</o:p>=3C/sp=61n=3E<=2Fp=3E
<p =63las=73=3D=22MsoN=6F=72=6D=61=6C"><span =73t=79l=65=3D=22fo=6Et-size=3A10=
.=30p=74;=66ont-fam=69ly=3A=26quot=3BAri=61l&quot=3B=2Cs=61ns=2Dser=69f;colo=
=72:=62l=61=63k">=26nbsp;=26nb=73=70=3B&n=62sp=3B=26=6E=62sp=3B&n=62=73p;&=6E=
=62=73p;&nb=73p=3B&nb=73p;=26nbsp; =53ti=6Cl =69=6D=61g=65 un=73u=70p=6Frted<o=
:=70=3E</o:p=3E=3C/s=70=61n></p=3E
=3C=70 =63l=61=73=73=3D"MsoN=6F=72ma=6C"><sp=61n s=74=79le=3D"=66on=74-s=69ze=
=3A=31=30.=30pt;f=6Fnt-fa=6Dil=79:&quot;=41r=69al&=71uot=3B,sans-s=65rif;c=6Fl=
=6Fr:=62la=63=6B=22>&nbsp;&nbsp;&nbsp;=26=6Eb=73p=3B&n=62sp=3B&=6E=62=73p;=26n=
b=73p=3B =77=57=69=64t=68=26=6E=62sp=3B&=6Ebs=70=3B &=6Eb=73p;=26nbs=70=3B&nbs=
p;&nbsp=3B=26n=62sp;&=6Ebsp=3B=26nb=73p;&nb=73p=3B&nbsp;&nbsp;&n=62s=70;=26nbs=
=70=3B=26=6E=62=73p;&=6Ebs=70=3B=26nbsp;&nbsp;=26n=62s=70;&nb=73=70=3B=26=6Ebs=
p;&n=62sp;&=6Ebsp=3B&=6E=62s=70;=26nbs=70;=26=6Ebsp;=26nbsp;640=3Co:=70>=3C/o=
=3Ap=3E=3C=2F=73pan=3E=3C=2Fp=3E
<p =63lass=3D"M=73=6FNorma=6C"><spa=6E styl=65=3D"f=6Fn=74-siz=65:10.=30=70t=
=3Bfo=6Et=2Dfamil=79:&quo=74;=41=72=69al&quo=74;,sans=2Dse=72i=66;c=6Fl=6Fr:bl=
ac=6B">&=6E=62sp=3B=26n=62=73p;&nbs=70;&=6Ebsp;&=6E=62s=70=3B&nbsp;=26=6Ebs=70=
; w=48eight=26nbs=70=3B&nb=73p;=26nb=73=70;&nb=73p;=26n=62=73=70;&=6E=62=73p;&=
nb=73p;&nbsp;=26nbsp;&nb=73p;=26nbsp;&nbs=70;&=6Eb=73=70;&nbsp=3B&nb=73=70=3B=
=26=6E=62sp;=26nbsp=3B&n=62s=70;=26nbsp;&n=62=73p=3B&nbs=70;&nb=73p=3B&nbs=70=
=3B&n=62=73p;&nb=73p;&=6Ebsp; =3480<o:p><=2F=6F:p><=2F=73=70=61n=3E=3C/p=3E
<p c=6C=61=73=73=3D"MsoN=6Fr=6D=61l=22=3E=3C=73p=61n =73tyle=3D"fo=6E=74=2D=73=
i=7Ae:1=30.=30p=74;font-=66ami=6C=79:&quot;=41=72ia=6C&quo=74=3B=2C=73a=6Es-se=
=72=69f=3Bco=6Cor:b=6Cack">=26nbs=70;=26n=62sp=3B=26nb=73p;&nb=73=70;=26n=62sp=
=3B=26n=62sp;&=6Ebs=70; d=77MinBi=74Rate=26=6E=62=73p;=26=6E=62=73p;&nbsp=3B&n=
bsp=3B=26=6Ebsp;&nb=73=70;&nbs=70=3B=26nbsp=3B&nbsp=3B&nb=73=70;&nb=73p;&nb=73=
=70=3B&=6Ebsp;&=6Ebsp=3B=26n=62sp=3B&nbsp; =3184=332000=3Co:p><=2Fo:=70=3E</=
=73pan></=70>
=3C=70 =63l=61=73s=3D"Mso=4E=6F=72mal=22>=3Cspan s=74yl=65=3D=22f=6F=6E=74=2D=
=73iz=65:10.=30pt;=66=6Fnt=2D=66am=69=6C=79:&quot;=41ri=61l=26qu=6F=74=3B,s=61=
=6Es-ser=69=66;=63=6Flo=72=3A=62=6C=61=63k">&nbsp;=26n=62sp=3B&n=62=73=70=3B=
=26nb=73=70;&nbs=70=3B&=6Eb=73p=3B&nbs=70; dw=4D=61xBitR=61t=65&nb=73=70;&n=62=
s=70;&n=62s=70=3B=26nb=73=70;&n=62=73p;&nb=73p=3B&=6Ebsp;=26nbs=70=3B=26nbsp;=
=26nbs=70;&nbs=70;=26nbs=70;=26nbs=70;=26=6Ebsp;=26nbsp;=26=6Ebs=70; =35=35296=
=300=30<o:p></=6F:=70></spa=6E></=70>
=3Cp cla=73s=3D"Ms=6FNor=6Da=6C=22=3E=3Cspan =73=74=79le=3D=22f=6F=6Et-=73ize=
=3A1=30.=30pt;=66=6Fnt-=66am=69ly=3A=26qu=6Ft=3BA=72=69a=6C&qu=6Ft;,=73a=6Es-s=
e=72i=66;co=6Cor:=62lack">=26nbs=70;&n=62sp;&=6Ebs=70;&n=62sp;=26=6E=62sp;&n=
=62sp;&nbs=70; =64=77MaxVid=65=6FFr=61=6DeBuffer=53ize=26nbsp=3B&nbsp;=26nb=73=
=70;=26nb=73p=3B&=6Ebs=70; 6=31=34400<o:p>=3C=2Fo:p><=2Fsp=61n><=2Fp=3E
=3C=70 c=6C=61=73=73=3D=22M=73oNor=6D=61=6C"=3E<sp=61=6E =73tyle=3D"font-size:=
10=2E=30pt=3Bfo=6Et=2D=66=61mil=79:&=71uo=74=3B=41rial&=71uot=3B,sans-=73eri=
=66=3Bcol=6F=72=3Ablack=22=3E&n=62sp;=26=6E=62sp=3B=26nb=73p;&n=62s=70;&nbs=70=
=3B&nbs=70=3B=26n=62sp; d=77D=65fa=75=6Ct=46=72a=6D=65=49=6E=74=65=72=76al&nbs=
p;&nbs=70;&nbsp=3B&n=62s=70;&=6E=62=73p;&nbsp=3B&n=62=73=70=3B&=6E=62sp; 33=33=
3=333<o=3Ap></=6F:p><=2Fspa=6E><=2F=70>
<=70 =63las=73=3D"Mso=4Eormal=22><=73=70=61n s=74=79=6C=65=3D"=66o=6Et-si=7Ae=
=3A10.=30p=74;=66o=6Et=2Dfa=6Dily:&=71u=6F=74;Arial&q=75ot;,sans-s=65r=69f;=63=
olor:bla=63k=22>=26=6Ebs=70;&nb=73=70;=26nbsp=3B=26=6Ebsp;=26=6Eb=73p;&nbsp=3B=
&nb=73=70; bFr=61me=49=6Ete=72v=61lTy=70=65&nb=73p=3B&nbsp=3B=26n=62=73p=3B=26=
=6E=62=73=70=3B&nbs=70=3B&=6Ebsp;&nbsp;&=6Ebsp;=26nbsp;&n=62s=70;=26=6Ebs=70;=
=26n=62sp=3B&n=62=73=70;&=6E=62sp;&=6E=62=73p;&n=62sp;&nbsp; =32=3Co=3A=70=3E<=
/o=3Ap=3E</s=70=61=6E=3E=3C/p=3E
<=70 c=6C=61ss=3D=22M=73oNorm=61l"><spa=6E s=74=79le=3D"font=2D=73i=7Ae=3A10.0=
pt;f=6Fnt-fa=6Dily:&quot;Ari=61l&quo=74=3B,sans-se=72i=66;colo=72:b=6Cack">=26=
nb=73=70=3B=26n=62sp=3B=26=6E=62=73=70;&=6E=62=73p;&=6Ebsp=3B&nbsp;&=6E=62sp; =
d=77=46r=61m=65I=6Et=65rval=28 0)&nb=73p;&nbsp=3B=26n=62=73p=3B=26=6Eb=73=70;&=
=6Ebsp=3B&=6E=62sp=3B&n=62s=70;&n=62=73=70;=26n=62sp;&n=62=73p=3B=26n=62sp; 33=
3333<=6F:p><=2Fo=3Ap></=73pa=6E></=70=3E
=3Cp =63=6C=61ss=3D=22Mso=4Eor=6Da=6C"=3E<spa=6E sty=6Ce=3D"=66ont-=73ize=3A1=
=30=2E=30p=74=3B=66=6Fnt=2Dfa=6Dil=79:&=71u=6Ft=3B=41=72i=61=6C=26=71uo=74;,=
=73an=73-se=72=69=66;=63o=6Cor:bl=61ck=22>&=6Ebsp;&=6Ebsp;=26nb=73=70;=26n=62s=
p;&n=62=73p;&nbsp;=26n=62s=70; dwF=72=61=6DeInterv=61l( 1)&=6Eb=73p;&=6E=62sp;=
&nb=73p;&nbsp;&nbs=70=3B&n=62sp=3B&=6Ebs=70;&=6Ebsp;&=6Ebsp;&nbs=70;&n=62sp; 4=
00000<=6F:p>=3C/o=3A=70>=3C/=73pan=3E</=70>
<=70 cl=61=73s=3D=22M=73=6F=4Eormal"><=73pan style=3D=22fo=6Et=2Ds=69z=65:=31=
=30.=30pt=3Bf=6Fn=74=2Dfam=69ly=3A&quot=3BAr=69al&=71=75ot;,=73ans=2Dse=72if;=
=63o=6Cor:bl=61c=6B"=3E=26nbs=70=3B=26=6Eb=73p;&=6Ebs=70;&nbs=70;&nb=73p; Vi=
=64e=6F=53tr=65a=6Ding Int=65=72=66=61=63e Descri=70tor:<o=3Ap=3E</o:p></span>=
=3C=2Fp>
=3Cp =63las=73=3D=22MsoN=6Frm=61=6C"=3E=3Csp=61=6E st=79=6C=65=3D"f=6F=6Et=2D=
=73i=7A=65=3A=31=30.=30pt=3Bfo=6Et-=66amil=79:&q=75ot;A=72i=61l=26quot;=2C=73=
=61ns=2Dse=72=69f;=63o=6Co=72=3Ab=6Ca=63=6B">=26nbsp;=26=6Ebsp;&nb=73p;&n=62sp=
;&=6Eb=73p;&=6Ebsp;=26=6Ebs=70; b=4C=65n=67th=26n=62sp=3B=26nbsp=3B&n=62s=70;=
=26=6Eb=73p;&n=62sp=3B=26nbsp=3B&=6Ebsp=3B&nbsp;=26n=62sp=3B&nb=73p=3B=26=6Eb=
=73=70;&nbsp;=26=6Ebsp;&=6Ebs=70;=26=6E=62=73p;&n=62s=70;&nbsp;=26nbsp=3B&=6E=
=62=73p;&n=62sp;&nbsp;&nbsp;&=6E=62=73=70;=26nbsp;=26n=62s=70=3B=26nb=73=70;&n=
b=73=70=3B 34=3C=6F:p=3E<=2Fo:=70><=2Fs=70a=6E>=3C/=70=3E
<=70 =63=6Cass=3D"=4Ds=6F=4Eor=6Da=6C"><=73=70=61=6E =73tyl=65=3D"font-siz=65:=
=310.=30pt;f=6F=6E=74=2Dfamily:&=71u=6F=74=3B=41r=69=61l&q=75=6Ft;,s=61=6Es-se=
ri=66;c=6Flor:=62l=61ck"=3E&nbsp;&n=62=73=70;&n=62sp;&nb=73=70=3B&nb=73=70=3B=
=26=6Eb=73p;&nbsp=3B =62De=73c=72=69ptor=54ype&=6Ebs=70;&n=62=73=70;=26nbs=70;=
=26nb=73p;&n=62s=70;&nb=73p;&nbsp;&nbsp;=26n=62=73p=3B&=6Eb=73=70;&=6E=62=73p=
=3B&nb=73=70;=26nbsp=3B&=6Ebsp;&n=62=73=70=3B&nb=73p;&=6E=62s=70;&=6Ebs=70=3B&=
=6Ebs=70; 36<=6F=3Ap=3E</o=3A=70></spa=6E></p>
=3C=70 cla=73s=3D"MsoNorma=6C"><span =73=74yle=3D=22fon=74-=73iz=65:=310.0pt;f=
=6Fnt-=66ami=6C=79:=26q=75=6F=74;=41ri=61=6C&qu=6Ft=3B=2Cs=61ns-=73erif;c=6Fl=
=6Fr:b=6C=61c=6B">&n=62s=70=3B&nbsp;=26nbsp;=26=6Ebs=70;&n=62sp=3B&nb=73=70=3B=
&nbs=70; bDes=63=72iptorS=75bty=70=65&=6Ebs=70;=26nbs=70;&n=62s=70;=26n=62=73p=
;&=6Eb=73p;=26nb=73p=3B&nb=73p;=26nbsp;=26=6Eb=73p;&nbsp;&nbsp;&n=62sp=3B&nbsp=
;&nb=73=70;=26nbsp;=26nbsp;=26nbs=70; =35 =28FR=41M=45=5F=55N=43=4FM=50R=45SS=
=45D)<o:=70></o:p=3E</=73p=61=6E></p>
=3Cp =63=6Cas=73=3D"M=73=6FNorm=61l"><=73p=61=6E s=74yle=3D"=66ont=2D=73iz=65=
=3A1=30.=30pt=3B=66ont-=66=61mily:&q=75=6F=74;=41=72ia=6C&=71uot=3B,sa=6Es-=73=
e=72i=66=3Bc=6F=6Cor:black"=3E&=6Ebs=70;&nbsp=3B&=6Ebs=70;=26nb=73p=3B&nbsp=3B=
&=6Ebsp=3B&nb=73p; =62F=72ameInde=78=26nb=73p;&n=62sp;&=6Ebsp=3B&nb=73p=3B&=6E=
bs=70=3B&n=62sp=3B=26n=62=73=70;=26=6Ebsp;&n=62s=70;=26nbsp;&n=62s=70;&nbs=70;=
&n=62=73=70=3B&n=62=73=70;&=6Ebsp=3B=26=6Ebsp=3B&nbsp=3B&nbs=70;=26n=62=73p;&=
=6Ebsp=3B&=6E=62s=70;=26=6Ebsp=3B&nbs=70=3B&nbsp=3B 2<=6F:p>=3C/o:p=3E=3C=2Fsp=
=61n=3E</p>
=3Cp cl=61s=73=3D"=4D=73o=4E=6Frm=61l">=3Csp=61n s=74y=6C=65=3D"fo=6Et=2Dsize:=
=310.=30pt;=66ont-family=3A=26quot;A=72=69al=26q=75ot;,s=61=6Es=2Ds=65=72=69f;=
colo=72:=62=6Cack">=26=6Ebsp;&nb=73p=3B&=6E=62=73p=3B=26nb=73=70;=26nb=73p=3B=
=26n=62=73p;=26nb=73=70; bmCapa=62ilities=26n=62=73=70=3B&n=62=73=70;&nbsp=3B=
=26=6Ebs=70;=26n=62sp;&n=62=73=70;&n=62s=70;&=6E=62=73p;=26nb=73=70;&=6E=62=73=
p;=26=6Ebsp=3B=26nb=73p=3B&nb=73=70;&nbsp;&nbsp;=26nbsp=3B=26nb=73=70=3B&nbsp=
=3B =30x00<=6F:p=3E</o:=70=3E=3C/s=70an=3E</=70>
<=70 =63=6Cass=3D"MsoNormal"=3E<s=70=61n style=3D=22f=6F=6E=74-=73iz=65=3A1=30=
.=30=70t;fo=6E=74-=66am=69l=79:&=71=75o=74;=41=72ial&q=75=6F=74;=2Cs=61ns-seri=
f;co=6C=6Fr=3A=62=6Cack"=3E&nb=73p;=26n=62=73p;=26nbsp;&=6Eb=73p;&=6Ebs=70;=26=
n=62sp;&=6Ebsp;&=6Eb=73p;&nbs=70; =53till i=6D=61g=65 =75nsupport=65d<o:p=3E</=
o=3A=70>=3C/span></p=3E
=3Cp =63lass=3D"Ms=6F=4Eor=6Dal"=3E<=73p=61n sty=6Ce=3D"font-si=7Ae:=31=30.0pt=
=3B=66o=6Et-famil=79:=26=71uot=3BAr=69a=6C=26=71=75ot;=2Csans-serif=3Bc=6F=6Co=
r=3Ab=6C=61ck">&nbsp;&nb=73=70=3B&nbs=70;=26n=62s=70=3B&nbs=70;&=6Eb=73p;&n=62=
=73=70=3B wWidth=26=6Eb=73=70=3B&=6Ebsp; &=6E=62sp;&n=62s=70=3B&n=62=73p=3B=26=
=6E=62=73=70;=26nbsp=3B=26=6Eb=73p;&nbsp;&nb=73p=3B&=6Eb=73=70;&n=62=73=70=3B&=
n=62sp;=26nb=73p;&n=62sp;&n=62sp=3B&nbsp;&nbs=70;&=6Eb=73p;&=6Ebsp;&nbsp;=26n=
=62sp;=26=6Eb=73p=3B&=6Ebsp;&nbsp;&nbsp=3B1=32=380<o=3Ap=3E=3C/=6F=3Ap></sp=61=
n>=3C/p=3E
=3Cp =63=6C=61=73s=3D=22Mso=4E=6Frmal=22>=3Csp=61=6E s=74yle=3D"font-size=3A10=
.=30=70t;fon=74=2Df=61=6Dil=79=3A&quot;Arial&=71uot=3B,=73=61ns-serif;=63=6Flo=
r:b=6C=61c=6B=22=3E&=6Ebsp;&n=62sp;&nbs=70=3B=26=6E=62s=70;&=6Ebsp;=26nbs=70=
=3B=26=6Ebsp; w=48eig=68t&n=62sp=3B&=6Ebsp=3B=26n=62sp=3B=26nb=73p=3B&n=62=73p=
;&nb=73=70;&nbsp;&=6Eb=73p=3B&n=62sp=3B=26nbsp;&n=62sp;&nb=73=70=3B=26n=62=73p=
;&nb=73p;&=6E=62sp;=26=6Ebsp;=26nb=73p;&nbsp=3B&=6Eb=73=70;=26nbs=70;&nbsp;&nb=
sp;&nb=73p;&nb=73p;=26nbsp;&=6E=62sp=3B 720=3Co:p=3E=3C/=6F:=70=3E</s=70a=6E>=
=3C=2Fp>
<p =63las=73=3D=22Ms=6FNorm=61=6C=22>=3Cspan style=3D"f=6F=6Et=2D=73=69z=65:10=
=2E0=70=74=3Bfont-f=61mi=6C=79:=26=71uo=74;A=72=69a=6C=26quot=3B,s=61ns=2Dser=
=69f=3Bcol=6Fr:=62lac=6B"=3E&nbsp;&=6Ebs=70;&=6Ebsp=3B&nb=73p=3B=26nbsp;&nbsp;=
=26n=62s=70; dwMinB=69t=52ate=26=6Eb=73p=3B=26=6E=62sp;&n=62s=70=3B&=6E=62sp;&=
n=62s=70;&nbs=70;&n=62sp=3B=26nb=73p;&nbs=70;&=6Ebsp=3B&nbsp=3B&nb=73=70;&nbsp=
;&=6Ebsp=3B=26nb=73p=3B&=6E=62sp; =318=34=332000=3C=6F=3A=70><=2F=6F:p></s=70a=
n></=70>
<=70 cl=61ss=3D=22=4D=73oN=6Fr=6Da=6C=22>=3Csp=61n style=3D"=66o=6Et-si=7A=65:=
=310.=30p=74;=66=6Fnt-=66am=69ly:&qu=6Ft;Ar=69al&=71=75ot=3B,sans-s=65r=69f=3B=
colo=72:bla=63k"=3E=26n=62sp;&=6Eb=73p=3B=26nb=73p;&nb=73p;&nbs=70;=26=6E=62=
=73=70=3B&nbs=70; =64=77=4D=61xBitRate&=6Eb=73=70;&=6Ebsp;&nbsp;=26nb=73p;&=6E=
=62=73=70;=26n=62sp;&n=62s=70;&=6Eb=73=70;=26nbsp;=26=6E=62=73p;=26=6E=62=73=
=70;=26n=62sp;&=6E=62sp;=26nbsp=3B&nb=73=70=3B=26n=62s=70; 5=3529=36=30=300<o:=
p=3E<=2Fo:p=3E=3C/s=70=61=6E=3E=3C=2F=70>
<p class=3D=22=4DsoN=6F=72m=61l"><s=70an =73=74=79le=3D"f=6Fnt=2Ds=69z=65:1=30=
=2E0p=74;fon=74-fami=6Cy:&q=75ot;=41rial&q=75=6Ft=3B,=73ans-serif=3Bcolor:b=6C=
ac=6B=22>&nbs=70=3B&=6Eb=73p=3B=26=6E=62=73=70;&nbs=70=3B&nbs=70=3B=26nbsp;&=
=6Ebs=70=3B dwMaxVid=65o=46r=61meB=75ff=65rS=69z=65=26nbs=70;&nb=73p;&=6Ebsp;&=
=6E=62=73p; 18=343=3200=3C=6F:=70>=3C/o:=70></s=70=61=6E>=3C/p>
<=70 class=3D=22M=73=6FNorma=6C"=3E=3C=73p=61n st=79le=3D"f=6Fnt=2Ds=69z=65=3A=
=310.=30=70t;fo=6Et-family:&quot=3B=41r=69a=6C&quo=74=3B,sa=6E=73=2D=73=65=72i=
=66;=63olo=72:bl=61c=6B"=3E&nbs=70=3B&n=62=73p;&n=62=73p;&n=62=73=70;&n=62=73p=
;&nbsp;=26=6Eb=73p; dwD=65f=61ultF=72ame=49n=74e=72v=61l&=6Eb=73p;&=6Ebsp;&=6E=
bs=70;&n=62sp=3B&nbsp;&n=62sp;&n=62sp;&nbsp; 33=33=333=33<=6F:p=3E</o:p=3E=3C/=
=73pan></=70>
<=70 c=6Cass=3D"Mso=4Eor=6D=61=6C"=3E<=73=70=61n =73=74yl=65=3D=22font-s=69z=
=65:10=2E=30=70t;f=6Fn=74-fa=6D=69ly:&quo=74=3B=41rial=26=71uo=74;,san=73-se=
=72i=66;=63=6Fl=6Fr=3Ablac=6B">&nb=73p;&n=62sp=3B=26n=62sp;=26n=62=73=70;=26nb=
sp;=26=6Ebsp=3B&nbsp; =62Fra=6D=65I=6EtervalTyp=65&=6E=62s=70;&=6Ebs=70;=26nbs=
p;=26=6Ebs=70;&nbsp;&n=62=73p;=26n=62s=70=3B&=6Ebsp=3B&=6Eb=73p=3B&n=62=73p;&n=
b=73p;=26n=62s=70;&nbsp=3B&n=62sp=3B&=6Ebsp;&=6Ebs=70;&n=62sp=3B =32=3C=6F=3Ap=
=3E</o:p>=3C/span></=70>
<p class=3D=22MsoNormal"><=73pan s=74=79l=65=3D"font-si=7Ae:10.=30=70=74;=66o=
=6E=74-=66amily=3A&=71u=6Ft;=41r=69=61=6C&q=75ot;=2Csan=73-se=72i=66=3Bc=6Fl=
=6F=72:=62l=61ck">=26nb=73p=3B&=6Ebsp;=26=6E=62sp;=26=6Ebsp;&=6E=62s=70;=26nbs=
=70=3B=26n=62sp; dwF=72=61m=65=49nt=65rval=28 0)=26n=62sp;&nbs=70=3B&=6E=62sp;=
=26nbsp=3B&n=62=73p;&=6E=62sp;&nbsp=3B=26=6E=62sp;=26n=62s=70;&nb=73p=3B&nb=73=
=70=3B 3333=33=33=3C=6F:=70=3E</o:p><=2F=73=70a=6E>=3C/p=3E
<=70 =63=6Cas=73=3D"=4DsoN=6Frm=61=6C"=3E<spa=6E st=79le=3D"=66o=6Et=2Dsize:1=
=30.0pt;f=6Fn=74=2D=66amil=79:=26q=75o=74;Ar=69al=26quot;,sans-serif;co=6C=6Fr=
:=62=6Ca=63k">=26=6Eb=73=70;&n=62=73=70;&nb=73=70;&nbsp=3B=26nbsp;&=6Eb=73p;&=
=6Ebsp; d=77Fram=65Int=65=72val( =31=29=26=6E=62sp;&=6E=62=73p;&nb=73=70;&nbsp=
=3B&nb=73=70;=26nbsp;=26n=62=73p;&n=62sp;&=6E=62sp;&nbs=70;=26n=62sp; 400=3000=
<=6F=3Ap>=3C/=6F:=70>=3C/s=70a=6E></p>
<p cl=61ss=3D"=4Dso=4E=6F=72=6Dal=22><=73=70a=6E s=74yl=65=3D"fon=74-=73ize=3A=
=310.=30pt;=66=6Fnt-=66amily:=26quot=3BAr=69=61l&qu=6Ft=3B,s=61ns-=73eri=66;=
=63olor:=62la=63k=22>&nb=73p;=26=6E=62sp;=26=6Ebs=70=3B&nbsp;=26nbsp=3B =56=69=
deo=53=74reami=6Eg I=6Et=65=72=66=61=63e =44e=73cr=69pt=6Fr:=3Co:p=3E=3C/=6F:p=
></s=70=61n=3E</p=3E
<p =63lass=3D"M=73o=4Eorm=61=6C"=3E<s=70a=6E style=3D"font-size:10.=30p=74=3B=
=66=6F=6Et=2Dfami=6C=79:&quot;=41r=69a=6C&quot;,=73a=6Es-se=72=69f;colo=72=3Ab=
lack">&=6Eb=73p=3B&nbsp=3B&nb=73=70=3B=26=6Eb=73p=3B&=6E=62s=70;=26nb=73p;=26n=
=62=73p; bL=65=6Egt=68&nb=73p;&nbsp;&n=62=73p=3B=26nbsp=3B&=6E=62=73=70=3B=26n=
bsp;&nbsp=3B&nbs=70;=26n=62sp;&=6Ebsp;&n=62sp;&nb=73p;&=6Ebsp;=26nb=73=70=3B&n=
b=73p;&nb=73p;&=6Eb=73=70;&nbsp=3B&nb=73p;&nb=73p;=26=6Eb=73p;&nbsp=3B&=6Ebs=
=70;&nbsp=3B&nbs=70=3B&nbsp;&=6Ebsp=3B&n=62=73=70; 6<o:p=3E</=6F:=70></sp=61n>=
</p>
=3Cp cla=73s=3D"=4D=73oN=6Fr=6Dal"=3E=3Cspan s=74yle=3D"fon=74-siz=65=3A1=30=
=2E=30p=74;fon=74-=66ami=6Cy:&qu=6Ft;=41rial&=71u=6Ft;,sans=2Ds=65r=69f;c=6F=
=6C=6Fr=3A=62l=61ck"=3E=26=6E=62s=70=3B&=6Eb=73=70;&n=62sp;&=6E=62=73p;&nb=73p=
=3B=26nbsp=3B&nbsp; =62=44=65s=63=72ip=74orT=79p=65=26=6Ebs=70;&=6Ebs=70; =26n=
b=73=70;=26nbsp;&=6E=62sp;&=6Ebsp=3B&=6Ebsp;=26nb=73p;&nbs=70;=26=6Ebsp;&nbsp;=
=26nbsp;&=6Ebsp;&nbsp;&n=62sp;&n=62sp;&nbsp;=26=6E=62sp;&n=62sp;36<o:p=3E=3C=
=2F=6F:p></=73=70an=3E</=70>
=3Cp class=3D=22Ms=6FN=6Frm=61l=22=3E<=73pan sty=6Ce=3D"font-=73i=7A=65=3A=310=
=2E=30pt;=66=6Fn=74-f=61m=69=6C=79=3A&=71=75ot;A=72=69al=26quot;=2Csa=6Es-seri=
f;co=6Cor=3Ab=6C=61ck">&n=62s=70;=26=6Ebsp;=26n=62sp=3B&=6E=62=73=70=3B&nb=73p=
=3B=26=6Ebsp;&nbsp=3B =62Descripto=72=53=75btyp=65&nb=73p;&=6Ebsp;&nbsp=3B&n=
=62=73p;&nb=73=70=3B=26=6E=62sp;&nb=73=70=3B&nbsp;=26n=62=73p=3B=26nbsp;&=6Ebs=
=70;&nbs=70;&nbs=70;&=6Ebs=70=3B&n=62sp=3B&=6Ebs=70=3B 1=33 (COLORF=4FR=4DAT=
=29<o:=70></=6F=3Ap><=2Fs=70an=3E<=2F=70>
<p clas=73=3D"MsoNo=72=6Dal"=3E<s=70an s=74yl=65=3D"font=2D=73ize=3A10=2E=30pt=
=3B=66=6Fnt-fam=69=6Cy:&=71u=6Ft=3BArial&=71=75ot;,sa=6Es-s=65rif;col=6F=72=3A=
black">=26=6Eb=73p;=26nbs=70=3B=26=6Ebsp=3B=26n=62=73p;&nbs=70=3B&=6Ebsp;&nbsp=
=3B bCo=6Co=72P=72i=6Daries&n=62sp;=26=6E=62s=70;&nbsp=3B&nbsp;=26=6Ebs=70;=26=
nbs=70;=26nb=73=70;&=6Eb=73=70;&nbsp=3B&n=62sp;&=6Ebsp;&=6Eb=73p;=26nb=73p=3B&=
nbs=70=3B&nb=73p;=26=6Ebsp;=26nbsp;=26=6Eb=73=70;=26n=62sp;&nb=73p=3B 1 (B=54=
=2E70=39,=73=52G=42=29=3C=6F:p=3E</o:p></s=70a=6E>=3C/=70>
<p c=6Cass=3D"Ms=6FNorma=6C"=3E=3Cs=70=61n =73=74yle=3D"font-=73i=7Ae:1=30.=30=
pt=3Bfont=2Dfa=6Dil=79=3A&=71u=6F=74=3BAr=69=61l=26qu=6Ft=3B=2C=73=61ns=2Ds=65=
rif;co=6C=6Fr:=62la=63=6B">&=6E=62=73=70=3B=26n=62s=70;&n=62sp;=26n=62sp;=26nb=
=73=70;=26nbsp;&n=62s=70=3B =62T=72an=73f=65rC=68ar=61c=74=65=72ist=69cs=26=6E=
bs=70=3B&n=62=73p=3B&nb=73p;=26nbsp=3B=26n=62sp;=26nbsp=3B&=6Eb=73=70;&nbs=70;=
&=6E=62=73=70;&nbsp=3B=26n=62sp; 1 (BT.7=30=39)<o=3Ap=3E=3C/o:=70=3E=3C=2F=73p=
a=6E>=3C/=70>
<=70 cl=61ss=3D=22=4D=73oNorma=6C"=3E<=73p=61n style=3D"font=2Dsi=7A=65=3A1=30=
.=30=70t=3B=66=6Fnt-=66=61mil=79:&=71uot;Ari=61l=26quot;,=73an=73-se=72=69f=3B=
=63o=6C=6Fr=3Ab=6C=61=63k=22>&=6Eb=73p=3B&n=62sp;&nb=73=70=3B&n=62=73p;=26=6Eb=
=73p=3B&n=62=73p;&n=62sp=3B bMatrixCo=65=66=66ic=69ents&n=62sp;=26nbs=70;&nbs=
=70;&=6Ebsp=3B&nb=73p;=26nbsp=3B=26=6Ebsp;&nbsp=3B=26=6E=62sp;=26n=62sp;=26=6E=
bsp;&nbs=70=3B=26nbsp=3B=26n=62=73p;&nbsp;=26=6Ebs=70; 4 =28=53MP=54E 170M =28=
=42T.601))=3C=6F=3A=70><=2F=6F=3Ap>=3C/s=70=61=6E></p>
<p c=6Ca=73=73=3D"Ms=6FN=6Fr=6D=61l=22=3E<s=70a=6E =73tyle=3D"f=6F=6E=74=2Dsiz=
=65:10.0p=74;=66=6Fnt=2D=66am=69ly:&quo=74=3B=41ria=6C&=71=75ot;,=73an=73=2Dse=
rif=3Bco=6Co=72:b=6Cack=22=3E&=6E=62sp=3B&nbsp;&nbsp; Inte=72f=61ce De=73cr=69=
=70to=72:<o=3Ap></o=3A=70>=3C/span>=3C=2Fp>
<=70 =63=6C=61ss=3D"=4Dso=4E=6Frmal=22=3E=3Cspan style=3D"=66=6Fnt-si=7Ae=3A1=
=30.0p=74;font-=66am=69ly=3A&q=75=6Ft;A=72=69=61l&=71uo=74;,s=61ns-s=65=72=69=
=66=3Bco=6Cor:black=22>&=6E=62s=70;=26nbsp=3B&nb=73=70;=26n=62sp;&nb=73=70=3B =
b=4Cen=67th&nb=73p;&nb=73p=3B&nbs=70;&=6E=62sp;&n=62sp;&nbs=70;=26nbsp;&nbsp;&=
=6Ebs=70=3B&nb=73p;&nbs=70;=26nbsp;&nb=73p=3B&nbsp;&n=62sp=3B&n=62=73p; 9<=6F:=
p></=6F=3A=70=3E<=2Fs=70an><=2F=70>
=3Cp cla=73s=3D"MsoNorm=61=6C"><spa=6E s=74y=6C=65=3D"f=6Fnt-size:10=2E0pt;=66=
=6F=6Et-=66amily:&quot=3BArial=26=71u=6F=74;,s=61=6E=73-=73erif;c=6Fl=6Fr:bl=
=61ck">&nbsp;&=6Eb=73=70=3B&nbsp;&nbsp=3B&nbs=70=3B =62De=73=63r=69pto=72Typ=
=65&nbs=70=3B&=6Eb=73p=3B&n=62s=70;&nbsp;=26nbs=70=3B=26=6E=62sp;=26=6Eb=73p;&=
n=62=73p; 4=3C=6F:=70><=2F=6F=3Ap>=3C/=73pan=3E=3C/p>
=3C=70 =63l=61s=73=3D"M=73=6FNo=72mal"><=73pan s=74y=6C=65=3D"=66=6Fnt-siz=65=
=3A=310.0pt;fo=6Et=2D=66=61mily:=26=71uot=3BArial&qu=6F=74;,sans=2Dserif;c=6Fl=
=6Fr:=62lack">=26nb=73p;&nbsp;=26=6Ebsp;&=6Ebsp;=26n=62s=70; =62=49=6EterfaceN=
=75m=62er&nbs=70=3B&nb=73p;&=6Ebsp;&n=62s=70;&=6E=62=73p;=26nbsp;&nb=73p; =31<=
=6F=3A=70=3E</o:=70></=73=70an>=3C=2Fp=3E
=3Cp c=6Cass=3D"=4D=73oNorma=6C"><=73p=61n =73t=79l=65=3D=22fo=6Et-size=3A=310=
.0=70t;fon=74-fa=6Dily:&q=75o=74=3B=41rial=26quo=74;,sans=2Ds=65rif;=63=6Fl=6F=
r=3Ablack=22>&nbs=70;&nbsp;&n=62=73p;&=6Eb=73p;=26=6E=62sp; bA=6Cterna=74=65Se=
tt=69=6E=67=26nbsp;=26nbsp=3B&nb=73p=3B&nb=73p;&n=62sp;&nbs=70=3B 1<o=3Ap></o:=
p>=3C/=73pan><=2F=70=3E
=3C=70 cla=73s=3D"=4Dso=4Eo=72=6D=61l"=3E<=73p=61=6E =73tyl=65=3D=22fo=6Et=2D=
=73ize=3A10=2E0p=74=3Bfon=74-f=61m=69l=79=3A&qu=6F=74=3BA=72ia=6C=26quot;,=73a=
=6Es=2Dserif;colo=72=3Ablack">=26nbsp;&n=62s=70=3B&n=62sp;=26n=62sp;&nbsp; bNu=
m=45nd=70o=69nts&=6E=62sp;&n=62s=70=3B&nbsp;&n=62=73p=3B=26n=62s=70;=26nbs=70;=
&=6E=62=73p=3B&=6Ebsp;&nbsp;&nb=73=70; 1<o:p></=6F:p=3E<=2Fsp=61n>=3C/p>
<=70 class=3D"=4Dso=4Eo=72mal"><s=70an st=79le=3D"f=6Fn=74=2Ds=69=7A=65:10=2E0=
p=74;=66=6Fnt=2D=66ami=6Cy=3A=26quot;=41ria=6C&=71=75ot;=2Csan=73-se=72i=66;co=
lo=72:bl=61=63=6B">&=6E=62sp;&nbsp=3B=26=6E=62sp=3B&nbsp;=26=6Ebsp=3B b=49n=74=
e=72=66=61c=65C=6C=61s=73&n=62=73p;=26nbs=70=3B&nbsp;&n=62sp;&nbs=70;&nbsp;&=
=6Ebs=70; 14 =56id=65=6F<o:p=3E=3C/o=3Ap=3E=3C/=73=70a=6E>=3C/p>
<p class=3D=22M=73=6FNorm=61l"=3E<=73=70a=6E st=79le=3D=22=66=6Fn=74-size:=310=
=2E0pt;=66o=6Et-=66amily:=26quot=3BA=72ial&=71=75ot;=2C=73a=6Es=2Dserif;col=6F=
=72:b=6Cac=6B=22>=26n=62sp;=26n=62s=70=3B=26=6Ebs=70=3B&nbsp;&n=62sp; bIn=74=
=65rfaceS=75bClass&nb=73=70;=26nb=73=70;&=6Ebs=70=3B&nbs=70;=26=6Ebs=70; =32 V=
ide=6F St=72=65am=69n=67=3C=6F:=70><=2F=6F:p>=3C/span=3E</p>
<p class=3D"=4Dso=4Eorma=6C=22><sp=61n sty=6C=65=3D"fo=6E=74=2Ds=69=7Ae=3A10=
=2E0pt;fon=74=2Df=61=6D=69ly=3A&=71=75=6Ft=3B=41r=69=61l=26=71uot;,=73ans-seri=
f;color:=62=6Ca=63k"=3E=26nbsp;&nb=73p=3B&n=62=73p;=26nbsp=3B&=6E=62s=70; bI=
=6Eter=66ace=50rotoc=6F=6C=26=6Ebs=70;&=6Ebs=70;&=6Ebs=70;=26nbsp;=26=6Ebs=70=
=3B 0
<o:p>=3C/=6F:p>=3C=2Fs=70an>=3C=2Fp>
<p =63=6Cas=73=3D"Ms=6F=4Eo=72mal"=3E<s=70a=6E st=79le=3D"=66=6Fnt-size=3A1=30=
.=30p=74;f=6Fnt=2Dfami=6Cy=3A&quot;Ari=61l=26quot;,s=61ns-s=65r=69=66;col=6Fr:=
=62l=61ck">&n=62sp;=26=6E=62sp;=26=6Ebsp=3B&nb=73=70;&nbsp;&n=62=73p;iInterfac=
e&=6Ebsp=3B=26nb=73=70=3B=26nbsp;&nbs=70;=26nb=73=70;=26=6E=62sp;&n=62s=70;&nb=
sp;&=6Eb=73=70;&nb=73p;&nb=73p;&=6Ebsp;=26=6E=62s=70; 0
<=6F:p>=3C=2Fo=3Ap></s=70=61=6E>=3C/p=3E
<p cla=73=73=3D"=4D=73oNo=72=6Dal"><s=70an styl=65=3D"fo=6Et=2Dsiz=65:1=30=2E0=
pt=3Bfo=6Et=2D=66amily=3A=26q=75o=74;Ari=61l=26qu=6Ft;=2Csans-=73=65r=69=66=3B=
co=6C=6Fr:b=6Cack">=26=6Ebsp=3B&nbsp;=26n=62s=70;=26nb=73p=3B&nbsp;&nbs=70;End=
=70=6Fint Des=63riptor=3A<o:=70=3E=3C/=6F:p></sp=61=6E></p=3E
<p =63=6Ca=73=73=3D=22Ms=6F=4Eo=72ma=6C"=3E<s=70=61n style=3D=22=66on=74-size:=
=310.0=70t=3Bfon=74=2D=66ami=6Cy=3A&quot=3BArial=26q=75ot;,=73ans-se=72if;col=
=6Fr:b=6C=61ck"=3E&n=62sp;&nb=73p;&=6Eb=73p;&nbs=70;&n=62sp;&nb=73p=3B&=6E=62s=
p=3B =62Le=6Egth&=6Ebsp;=26=6Ebs=70;=26nbsp;&=6Ebsp=3B&=6Ebsp;&=6E=62sp=3B&nbs=
=70;&n=62=73p;&nb=73p=3B&nbs=70;=26nbsp;=26nb=73p;&nb=73=70;&nb=73p;&n=62sp=3B=
&n=62sp; =37<o=3Ap></o:p>=3C=2Fs=70an><=2F=70=3E
<p clas=73=3D"Ms=6FNorma=6C">=3C=73p=61n sty=6C=65=3D"font-siz=65:=310.=30p=74=
=3B=66o=6Et-=66am=69ly:&quot=3BAr=69al&=71uot;,sa=6E=73-seri=66=3Bco=6C=6Fr:b=
=6Cack=22>&nbs=70=3B&=6Ebsp=3B=26=6E=62s=70=3B&nbs=70;=26=6Ebs=70;&nbsp;&nbsp;=
 bDes=63=72i=70=74or=54y=70=65&nbsp;&=6Ebs=70;=26nbsp;=26=6Ebs=70=3B&n=62=73p=
=3B&nbsp;=26nbs=70;=26nbsp=3B 5=3Co:p=3E=3C/o:p></s=70=61n>=3C=2Fp=3E
<p =63l=61ss=3D=22Ms=6F=4Eormal"=3E<s=70=61n =73=74yle=3D=22=66ont-=73=69=7Ae:=
=310.=30pt;=66ont-=66ami=6Cy=3A&q=75=6Ft;Ari=61l=26=71u=6Ft=3B,s=61n=73-s=65=
=72=69f;col=6Fr:bl=61=63=6B">&=6Eb=73=70=3B&=6E=62sp;&nb=73p;&nbs=70=3B&=6Ebsp=
;&=6Eb=73p=3B&n=62sp; =62End=70ointAd=64ress&nb=73p;&nbsp=3B&nbsp;&n=62sp; 0x8=
3=26=6Ebs=70=3B EP 3 IN=3C=6F:p></o=3Ap></spa=6E=3E=3C=2F=70>
<=70 c=6C=61ss=3D"MsoNormal"=3E<sp=61=6E =73tyl=65=3D"=66ont-size:=310.0pt;fon=
t=2D=66=61mi=6Cy:=26=71u=6Ft;=41=72ial&q=75ot;,s=61ns-=73er=69=66=3B=63olo=72:=
b=6Cack">&nbs=70;&=6Eb=73=70=3B=26n=62=73=70; =26=6Ebsp;=26=6Eb=73p;&=6E=62=73=
p;=26=6Ebsp;=62=6DAtt=72ibu=74=65=73&=6Ebs=70;&nbs=70;&nbsp;=26nb=73p;&nbs=70;=
&nb=73p;=26nbs=70;&=6Eb=73p;&nb=73p=3B&nb=73p=3B&=6Ebs=70; 5<o=3A=70=3E=3C/o=
=3Ap=3E=3C/=73=70a=6E><=2Fp>
<p =63la=73s=3D"MsoN=6Frm=61=6C"><span =73ty=6Ce=3D=22font-s=69=7A=65:1=30.0=
=70=74;font-=66=61m=69ly=3A=26q=75=6Ft;Arial&q=75o=74;,san=73=2Ds=65=72=69=66;=
co=6Cor:black=22=3E&nb=73p=3B=26n=62sp=3B&nbsp;=26=6E=62=73p;&n=62s=70=3B&n=62=
=73=70;=26=6Ebsp;&nb=73=70=3B=26nbsp=3B Transf=65r Type&nbsp=3B=26nbsp=3B&n=62=
=73p=3B=26=6Ebsp;=26nbs=70;=26n=62sp;&n=62=73=70;&nbsp;=26=6Ebsp=3B&=6Ebsp;=26=
nbsp=3B Iso=63hronou=73=3C=6F=3Ap>=3C/o:=70=3E</s=70=61n=3E<=2Fp>
<p c=6C=61=73=73=3D"Mso=4Eorm=61=6C=22><span =73ty=6Ce=3D"=66on=74=2Ds=69=7Ae=
=3A1=30.0=70t;f=6F=6Et-=66=61mily:&qu=6F=74;A=72=69al&qu=6Ft;,=73ans=2Dserif;c=
olo=72:bla=63k=22>&nb=73p;&n=62=73p;=26=6Ebsp;=26nb=73p;=26nbs=70=3B&nbs=70;=
=26=6Ebs=70=3B&nbs=70;&n=62sp; =53y=6Ech =54ype&nbsp;&n=62s=70=3B&n=62=73p;&=
=6Ebsp;=26n=62=73p;=26nbsp;=26=6Ebsp;&n=62s=70;=26nb=73p=3B&nbsp=3B=26=6E=62=
=73p;=26=6Eb=73=70;=26n=62sp;&n=62sp=3B A=73ync=68=72on=6F=75s<o:=70></o=3A=70=
>=3C/=73=70an=3E</p>
=3Cp c=6Ca=73s=3D"Mso=4E=6F=72m=61l"><span =73tyl=65=3D"f=6Fnt-=73=69=7Ae:1=30=
.0=70t=3Bfont-fa=6Dily:=26=71=75ot;A=72ial=26=71uo=74=3B,=73a=6E=73=2D=73e=72=
=69f;col=6Fr:=62l=61ck"=3E=26=6E=62sp;&=6E=62sp=3B=26=6Eb=73p=3B&nbsp=3B&=6Ebs=
p;&=6Eb=73p=3B&=6Eb=73p;=26=6Ebs=70;&=6Ebsp; Usa=67e Ty=70=65&=6Ebs=70;=26nbsp=
=3B&nb=73=70=3B&n=62s=70=3B&n=62sp;&=6Eb=73p;&=6E=62=73p=3B&nb=73=70=3B&nb=73p=
;=26=6Ebs=70;=26nbsp;&=6Eb=73p;=26=6E=62sp;=26nb=73p=3B =44at=61<o:=70=3E</=6F=
=3A=70></s=70an>=3C/=70=3E
<p cla=73s=3D"Ms=6F=4Eorm=61l"><=73=70an st=79=6Ce=3D"f=6Fnt-size:=310.0pt;f=
=6Fnt-family:&=71uo=74=3BAr=69al=26=71uot;,sa=6E=73-seri=66;colo=72=3A=62lac=
=6B=22>=26nbsp;&n=62=73p;=26=6Ebs=70=3B&nb=73=70=3B&=6E=62s=70;=26=6Ebsp;=26nb=
=73p; =77Ma=78=50a=63k=65tSi=7Ae&=6E=62sp;&=6Ebsp;&n=62=73p;&nbsp=3B 0=78=31=
=33fc&nbsp; 3x 1=302=30 =62=79=74=65=73=3Co=3Ap><=2Fo:p=3E</sp=61n>=3C/p=3E
<p class=3D=22=4DsoNorma=6C"><sp=61n s=74yle=3D"f=6F=6E=74-size:1=30.=30pt=3Bf=
ont-f=61=6Di=6C=79=3A=26=71uo=74=3B=41rial=26quot;,s=61n=73-serif=3Bcol=6Fr:b=
=6Cack"=3E&nbs=70;&nb=73=70;=26nbsp=3B=26nbsp=3B&=6Ebs=70;&nbsp;&=6Ebsp=3B =62=
In=74=65=72val=26=6E=62=73p;&=6Eb=73=70;&nbs=70;=26nbs=70;&nbsp;=26n=62sp;&=6E=
b=73p=3B=26=6Ebs=70=3B=26nbsp;&nbsp=3B&=6E=62sp=3B=26nbsp;&nbsp;&nbsp; =31<o=
=3Ap></=6F:=70>=3C=2F=73pan=3E</p=3E
<p cla=73s=3D=22=4DsoN=6Frm=61l=22><sp=61n st=79=6C=65=3D"fo=6Et-siz=65=3A=310=
.0=70t;f=6Fnt=2Dfa=6D=69=6C=79=3A&=71=75ot;A=72i=61=6C&=71uot=3B,san=73-serif=
=3B=63ol=6F=72:=62=6Cac=6B=22>&=6Eb=73=70;&nbs=70;=26=6E=62s=70; In=74erface =
=44e=73=63=72i=70t=6Fr=3A<o=3Ap></=6F:p></s=70a=6E></p>
<p c=6Ca=73s=3D=22Mso=4Eorma=6C=22=3E<span =73tyl=65=3D"fo=6Et-=73ize:10=2E0pt=
=3Bf=6F=6Et-fa=6Dil=79:&q=75ot;Ar=69=61l&q=75ot=3B,san=73-=73=65rif;co=6Cor:bl=
ack=22>&=6E=62sp;&nbsp;&nb=73p;&=6Ebsp;=26nbsp; bL=65ngth&n=62=73p;=26=6Ebsp=
=3B&n=62=73p=3B&nb=73p;&nbsp=3B&=6Ebs=70;&nbsp;=26=6Eb=73p=3B&nbs=70;&nbsp=3B=
=26nb=73p=3B&=6Eb=73=70;&=6E=62=73=70;&nbsp=3B=26nbsp;&nbsp=3B 9<o:p>=3C=2Fo:p=
></s=70=61=6E=3E<=2Fp>
<p cla=73s=3D"M=73o=4E=6Frmal"><=73pan sty=6Ce=3D"fon=74=2Dsiz=65:1=30.0pt;=66=
o=6Et-family:=26=71u=6Ft;Aria=6C=26qu=6F=74;,sans-s=65ri=66;=63ol=6Fr:=62l=61=
=63k"=3E&nb=73p;&=6E=62sp;&nbsp=3B&=6Ebsp;=26nbsp=3B bD=65s=63ri=70tor=54ype=
=26=6Ebs=70=3B=26n=62=73=70;&=6Ebsp=3B&nbs=70=3B=26nb=73p;=26nbsp=3B=26nbs=70;=
&n=62sp=3B 4<o=3A=70></o:=70>=3C=2Fs=70an></=70>
<=70 =63l=61s=73=3D"Ms=6FN=6Frm=61=6C=22=3E=3Cs=70=61n st=79l=65=3D"font=2D=73=
i=7Ae=3A10.0=70t;=66ont-f=61=6Dily=3A=26q=75=6Ft;Ar=69a=6C&qu=6Ft=3B,san=73-=
=73er=69=66;=63olo=72=3A=62=6C=61=63k=22>&nbsp=3B=26nbsp;&n=62s=70=3B=26nb=73p=
;=26nbs=70; bI=6Et=65rface=4Eumb=65r&nbs=70;&=6E=62s=70;=26=6E=62=73p;=26nbsp;=
=26nbsp;=26=6Ebsp=3B&nb=73p; 1<=6F=3Ap>=3C/o=3A=70><=2Fspan><=2Fp>
<p cla=73=73=3D=22=4DsoNorm=61l"><=73pan st=79l=65=3D=22f=6F=6Et=2Dsize:10.0=
=70t;f=6F=6E=74=2Dfamily:=26quot=3BAr=69=61l=26quot;=2C=73a=6E=73=2Ds=65=72if;=
co=6Co=72=3A=62lack">=26n=62sp;=26=6Eb=73=70;=26n=62sp;&=6Ebs=70=3B&nbsp=3B =
=62Alte=72=6Ea=74eSett=69n=67&=6Eb=73=70;&nbsp=3B&nbs=70=3B&nbs=70;=26nbs=70;&=
=6E=62sp; 2<o:p></o=3A=70></=73=70a=6E>=3C/p=3E
<=70 =63l=61ss=3D=22Ms=6FNormal=22=3E<spa=6E =73tyl=65=3D"fo=6Et-siz=65:1=30=
=2E0pt;=66=6Fnt-fa=6Dily:&q=75o=74;Ar=69al&q=75ot=3B=2Csa=6Es=2Dse=72=69f;=63o=
lo=72:b=6Ca=63=6B">&nbsp;=26nb=73=70;=26nb=73p=3B=26nb=73p;=26nbs=70; b=4EumE=
=6Edpoints&n=62s=70;=26=6Eb=73=70;&=6Eb=73=70=3B=26nbsp;=26nbs=70;=26n=62=73p;=
=26nbsp;&=6E=62sp;&nbs=70=3B&n=62sp; =31<o:p>=3C/o:p></=73=70a=6E=3E</p=3E
<p clas=73=3D"MsoNo=72mal"><spa=6E =73=74y=6C=65=3D=22f=6F=6Et-siz=65=3A10=2E=
=30p=74;f=6Fnt=2Dfami=6Cy:=26q=75ot;A=72ial&quo=74;,=73a=6E=73-seri=66;col=6Fr=
:=62l=61ck=22=3E&nb=73p;&nbs=70;&nb=73p=3B&=6Ebsp;=26=6Ebsp; bInter=66aceCl=61=
ss=26nb=73p;=26nbs=70;&=6E=62s=70=3B&n=62s=70;&nbsp;=26n=62=73p;=26=6Ebsp; =31=
4 Vide=6F=3C=6F:p></=6F:p=3E<=2Fs=70a=6E>=3C=2F=70=3E
=3C=70 =63lass=3D=22Ms=6F=4Eor=6Da=6C"=3E<=73p=61n =73=74=79l=65=3D"f=6Fnt-s=
=69ze=3A10=2E=30pt=3Bfon=74-=66amily:&qu=6Ft=3BA=72ial=26=71uot;=2Cs=61ns-ser=
=69f=3B=63olor:=62l=61=63=6B=22>&nb=73p=3B&n=62sp;&nb=73=70=3B=26nb=73p;&nbs=
=70; bInte=72f=61c=65=53ubCl=61s=73=26nb=73p;&=6Eb=73p=3B&n=62s=70;&nbs=70;&nb=
sp=3B =32 Vide=6F Streaming<=6F=3Ap=3E</o=3Ap><=2Fs=70an>=3C/p>
<=70 =63la=73=73=3D"Mso=4E=6Frm=61=6C=22><=73p=61=6E sty=6Ce=3D"fo=6Et-si=7Ae:=
10.0pt;font-=66amil=79:&q=75o=74;Ar=69a=6C=26=71uo=74;,s=61ns=2D=73er=69=66=3B=
co=6Cor:b=6C=61ck=22=3E&nb=73p;=26nb=73p;=26=6E=62=73p;=26nbs=70=3B&nbsp; b=49=
n=74=65=72faceP=72oto=63ol=26=6Eb=73=70;&nbsp;&n=62=73=70;&nb=73=70;&=6Ebsp=3B=
 =30
<o:p=3E=3C/o:p></span><=2Fp=3E
<p c=6Ca=73s=3D"MsoNormal=22=3E<=73=70a=6E style=3D"=66=6F=6Et-si=7A=65:10.0p=
=74;f=6F=6E=74-fa=6Di=6Cy=3A&=71uo=74;Ari=61=6C&quo=74;=2C=73ans-se=72i=66=3Bc=
ol=6Fr:=62la=63k"=3E&=6E=62=73p=3B&=6Ebsp;&nbs=70;&nbsp=3B&nbs=70;&nbsp;i=49nt=
erf=61=63e=26=6Eb=73=70;=26=6Ebsp;&nbsp;=26=6E=62sp=3B&=6Eb=73p=3B&=6Ebs=70;&n=
bsp=3B&=6Ebsp=3B&=6Ebs=70=3B&=6Ebsp;&nbsp=3B=26=6Ebsp;&n=62=73=70; 0
<=6F:=70></=6F:=70=3E=3C/span></p>
<=70 c=6C=61s=73=3D=22=4Dso=4Eorma=6C=22>=3C=73=70=61=6E style=3D=22font=2Ds=
=69=7Ae:10.0p=74;font-f=61=6D=69=6Cy=3A&qu=6F=74;Ari=61l&q=75ot;=2Csans=2D=73e=
=72=69f=3Bc=6F=6C=6Fr=3Abla=63k">&n=62s=70;&=6Ebsp=3B&nb=73p;&=6Eb=73p=3B&=6Eb=
=73p=3B&=6Ebs=70;E=6Ed=70oint =44=65s=63=72ip=74or:=3Co:=70=3E<=2Fo:=70=3E</sp=
a=6E=3E</p=3E
<p cl=61ss=3D"MsoNo=72=6Da=6C">=3Cs=70an =73ty=6C=65=3D=22=66=6F=6Et-siz=65=3A=
10=2E0pt;=66=6Fnt-fa=6Dily:&=71uot=3B=41rial=26qu=6F=74=3B,sa=6Es-=73erif=3Bco=
lor:black">=26=6Ebsp;&=6Ebs=70;&nbs=70=3B&=6E=62sp;&nbsp;&nbsp;&nbs=70; =62Le=
=6Egth=26=6E=62s=70;=26=6Ebs=70=3B&n=62=73=70=3B&n=62=73p;=26=6E=62s=70;=26=6E=
bsp=3B&n=62=73=70;&=6Ebsp;&n=62=73p;&n=62sp;=26n=62sp;=26nbsp;=26nb=73=70;&=6E=
bsp;&=6E=62sp;&nb=73p; 7<=6F:p></o=3Ap>=3C/s=70a=6E><=2Fp>
<p class=3D"M=73oNor=6D=61l=22>=3Cs=70an =73t=79le=3D"=66on=74-s=69ze:1=30=2E=
=30pt;fo=6E=74-fa=6Di=6C=79:=26q=75o=74;Arial=26q=75=6F=74=3B,san=73=2Dse=72=
=69f;co=6Co=72:b=6C=61ck">&=6E=62=73=70=3B&nb=73p;&n=62sp;=26nbsp;&nbsp=3B=26n=
=62=73=70;&=6Eb=73=70=3B bDesc=72i=70to=72=54ype=26=6E=62sp=3B&nbsp=3B&n=62=73=
p=3B=26nbsp;&=6Ebsp;&n=62sp;&n=62s=70;&n=62sp=3B 5=3Co=3A=70=3E</=6F=3Ap></spa=
n>=3C/p>
=3C=70 cla=73=73=3D"MsoNormal=22><=73pa=6E style=3D"font=2Dsi=7Ae:1=30.=30p=74=
;f=6Fnt=2Dfam=69=6C=79:=26q=75ot=3BA=72i=61l&q=75=6F=74;=2Csan=73=2Dser=69f;c=
=6Flor=3Abla=63=6B"=3E=26=6E=62=73p;=26nbsp;=26nb=73p=3B&=6Ebsp;&=6Ebsp;=26nbs=
p=3B&nbsp=3B bEndp=6F=69n=74A=64=64r=65ss&nbsp;=26nbsp;&=6Ebsp;&nbs=70; 0x=385=
=26n=62=73p; =45P 5 I=4E<o=3Ap></o:p></sp=61n=3E=3C=2Fp>
<p cla=73s=3D"=4Dso=4Eor=6Dal=22=3E<=73=70=61n style=3D"=66ont-size:1=30.0=70=
=74;fo=6Et-fami=6Cy=3A=26quo=74;Ari=61l&quot;=2Csan=73-se=72i=66;co=6Cor:blac=
=6B">&nb=73p;&nbsp;=26nbs=70=3B&=6Ebsp;&nbsp=3B&nb=73=70=3B&nb=73=70; b=6DAt=
=74rib=75tes=26nb=73p;&n=62sp;=26n=62sp=3B=26n=62s=70;&nb=73p;&nbsp;=26n=62sp=
=3B=26=6Ebs=70;=26n=62s=70=3B=26=6E=62s=70=3B=26nbsp; 5<=6F:p></o=3A=70=3E=3C/=
spa=6E></p>
<p cla=73s=3D=22=4DsoN=6Frm=61=6C=22>=3Cspan s=74y=6Ce=3D"=66o=6Et=2D=73=69=7A=
=65=3A=31=30=2E=30pt;font-f=61m=69=6C=79:=26quot=3BAr=69al&=71=75ot;,sans-=73e=
=72=69f=3Bcolo=72=3Ab=6C=61ck">&nb=73p=3B&=6Ebsp=3B=26=6Eb=73=70;&nb=73p;&=6Eb=
sp=3B&=6Ebs=70;=26nbsp;=26=6E=62=73p;=26=6Eb=73p; Tr=61ns=66er Ty=70e&=6Eb=73p=
;&n=62s=70;&nbsp=3B=26nbs=70;&nbs=70;=26nbs=70=3B=26=6Ebsp=3B&nbsp;&n=62=73=70=
;=26nbsp;&=6Eb=73p; I=73oc=68=72o=6E=6F=75=73<=6F:p>=3C/o:p=3E</=73pan=3E=3C/p=
>
<p cl=61s=73=3D"=4D=73oN=6F=72m=61=6C"><s=70an =73tyle=3D"font=2Dsize=3A10.0pt=
;font-fami=6C=79:=26qu=6Ft=3BAr=69al&quot;,san=73-se=72i=66=3B=63=6F=6C=6Fr=3A=
bl=61ck"=3E=26nb=73p=3B&n=62sp=3B&=6Eb=73=70=3B=26n=62=73p=3B=26nbsp;&nb=73=70=
;&n=62sp;&=6E=62=73=70;&nbsp=3B S=79nc=68 Type&nbsp;&=6Ebsp=3B=26nbs=70;&nb=73=
p;&n=62=73=70;&n=62sp;&nb=73p=3B=26n=62sp;=26nbsp=3B&=6Ebsp=3B&=6Eb=73p;&nb=73=
p=3B&=6Ebsp=3B=26=6Ebs=70; =41=73y=6Ech=72=6F=6Eo=75=73=3Co:=70>=3C=2Fo=3A=70>=
</s=70=61n><=2Fp=3E
=3Cp =63=6Cas=73=3D=22=4DsoNor=6D=61=6C=22=3E=3Csp=61n style=3D=22fo=6Et-=73iz=
e:10.0p=74;f=6Fnt=2Df=61mi=6C=79:&quo=74;Arial&quot=3B=2C=73a=6Es-se=72if;c=6F=
l=6Fr:b=6Ca=63k=22=3E=26=6E=62sp=3B&=6Ebsp=3B&=6Ebs=70=3B=26n=62s=70;&nbs=70;=
=26n=62sp;&=6Ebsp=3B&=6Ebsp=3B&=6Ebsp; Usa=67e T=79=70e&nbs=70;&nbs=70;&nbsp;=
=26=6E=62s=70;&n=62s=70=3B&=6Ebsp;=26=6Ebsp;=26n=62=73p;&nbs=70=3B&=6E=62sp;&n=
bs=70;&=6E=62s=70=3B&nbs=70=3B=26nbsp; =44=61ta<o=3A=70><=2Fo:p>=3C/span=3E</p=
>
<=70 class=3D"=4Dso=4E=6F=72ma=6C">=3C=73=70an st=79le=3D=22font-size=3A=310=
=2E=30p=74;=66on=74-=66a=6D=69ly:&=71uo=74=3BAria=6C&q=75=6Ft;=2C=73an=73-seri=
f=3B=63olo=72:bl=61ck=22=3E=26n=62s=70=3B&=6E=62s=70;&n=62=73p;=26nbsp;&=6Ebsp=
;=26=6E=62=73p=3B=26=6E=62sp=3B =77M=61=78Pac=6Bet=53i=7Ae&=6Ebs=70;=26=6Ebsp;=
&=6E=62=73p;&=6E=62sp; =30=78=30=3200&=6Ebs=70; =31=78 51=32 by=74=65s<=6F=3A=
=70=3E<=2Fo:=70>=3C=2F=73p=61n><=2Fp=3E
<p c=6Cas=73=3D"MsoNorm=61l=22><spa=6E styl=65=3D=22fo=6E=74-size=3A10.0pt;=66=
on=74=2Dfa=6D=69ly:=26quot;A=72=69al&=71u=6Ft;=2Cs=61ns=2D=73=65rif;=63olor:bl=
ac=6B">=26=6E=62sp=3B&n=62sp;=26n=62sp;&nbsp;=26nb=73=70;&nbs=70=3B&=6E=62s=70=
; bIn=74erval=26n=62sp;&=6Ebsp=3B&n=62sp;&nb=73p;=26nbsp;&nbs=70;&nbsp;=26n=62=
sp;&=6Eb=73p;&n=62s=70;&nbs=70;&=6Ebsp;&=6Ebsp=3B=26nbsp; 1<o=3Ap>=3C=2Fo:=70>=
</span>=3C=2Fp>
<p =63las=73=3D"MsoN=6F=72mal=22>=3Csp=61=6E =73ty=6C=65=3D=22f=6Fnt-s=69=7A=
=65=3A=310.0pt=3B=66=6F=6Et-f=61mily:=26quot;=41rial&qu=6Ft;=2Cs=61ns-serif;co=
lo=72:bla=63=6B=22>=26=6E=62sp;&=6E=62=73p=3B=26=6Ebsp=3B =49=6Et=65=72face =
=41=73=73=6Fciation=3A<o=3Ap></o:p>=3C/=73=70a=6E=3E=3C/p=3E
<=70 c=6Cass=3D"Ms=6F=4E=6Fr=6Dal=22><span sty=6C=65=3D"=66o=6E=74-s=69=7A=65:=
10.=30p=74=3B=66ont-fa=6Di=6C=79:=26qu=6F=74=3BArial&=71u=6F=74;,=73ans-=73=65=
rif;co=6Cor:black">=26nbsp;=26=6Ebs=70=3B&=6Ebsp;=26=6Ebsp=3B&=6Ebsp; =62=4C=
=65ng=74h&nbsp;&nbs=70=3B=26=6E=62s=70;&n=62sp;&nbsp;&=6Ebsp;&=6E=62=73=70=3B&=
nb=73=70;=26=6Ebsp=3B&nb=73p;&=6E=62=73p;=26n=62sp;&nbs=70;=26nb=73p;&nbs=70;=
=26nbs=70=3B 8<o:p>=3C/o=3Ap=3E</sp=61=6E></=70=3E
<p c=6Cas=73=3D=22Ms=6FNo=72m=61l"><span =73=74yle=3D"=66o=6Et-siz=65:10.0pt;f=
=6F=6Et-=66am=69=6C=79:=26=71uo=74;=41rial&quo=74=3B,=73ans=2Ds=65rif;co=6C=6F=
r=3Ab=6Cack"=3E=26n=62=73p;&nbsp=3B&nbs=70;&nbsp=3B=26nbsp=3B bDe=73=63riptor=
=54=79pe&=6E=62sp;&=6Ebsp;=26nb=73p=3B&=6E=62=73p=3B=26nbsp=3B&nbsp;=26n=62sp;=
 =31=31=3Co:=70=3E</=6F=3Ap>=3C=2F=73=70=61=6E></p>
<p =63l=61=73s=3D"MsoNorma=6C"><span s=74yl=65=3D"font=2D=73i=7A=65:10.=30pt;f=
o=6Et-fami=6C=79:&q=75=6F=74;A=72ia=6C&=71uo=74;=2C=73=61=6Es-ser=69f=3Bc=6Fl=
=6Fr:=62=6C=61ck">&nbsp;&=6Ebsp;&n=62sp=3B=26nbsp=3B=26nbsp; =62=46irs=74=49n=
=74=65=72f=61ce&nb=73=70;&n=62s=70=3B&nbsp;=26nbs=70=3B&=6E=62sp;=26n=62sp;&=
=6E=62sp;&=6E=62=73=70=3B 2=3Co=3A=70=3E<=2Fo=3A=70></=73=70a=6E><=2F=70>
<p c=6Cass=3D=22MsoNo=72m=61l">=3Cspan st=79l=65=3D"=66ont-=73=69ze:=310=2E0p=
=74;=66o=6Et-fa=6Dily=3A&qu=6F=74;Ari=61l&=71uot;=2Cs=61ns-ser=69=66=3Bco=6Co=
=72:b=6C=61c=6B=22>&nbsp;&n=62=73p;&nbsp;&nbs=70;=26nbs=70=3B b=49n=74erfaceC=
=6F=75nt&nb=73=70;=26=6Ebsp;&=6Eb=73=70=3B&nbsp;=26=6E=62s=70;&n=62sp;=26=6Ebs=
=70=3B&=6E=62=73=70=3B =32<=6F:p></o:p=3E=3C/span></p>
<p cla=73s=3D=22=4D=73=6F=4E=6Frma=6C=22=3E=3Cspa=6E style=3D"f=6Fnt-=73=69ze:=
=31=30.0=70t;=66=6F=6E=74-=66amily:=26quot;=41r=69al&quot;,s=61n=73-=73er=69=
=66=3Bc=6F=6C=6F=72=3Abla=63=6B=22>&nbsp;&nbsp=3B=26nb=73p;=26=6Eb=73p;&=6Ebs=
=70; =62=46u=6Ection=43l=61ss&nb=73p=3B=26=6E=62=73p=3B&nbsp;&=6Eb=73p=3B=26=
=6E=62sp;=26nb=73p;&=6Ebsp;&nbsp;&=6E=62=73=70; =31 Audio=3C=6F:=70></=6F:p>=
=3C=2Fspan><=2F=70>
<p c=6Ca=73s=3D"=4Ds=6FN=6Fr=6D=61l=22><sp=61n style=3D=22=66ont-siz=65:10.0=
=70=74;=66ont-fa=6Di=6Cy:=26=71u=6F=74=3BAria=6C&=71u=6Ft=3B,s=61ns-s=65rif=3B=
=63olor:black">&n=62sp;&nbsp;=26=6Ebs=70;&nb=73p;=26nbsp; =62FunctionSubCl=61s=
=73=26=6Eb=73=70;&=6E=62sp;&n=62s=70;=26n=62=73p;=26=6E=62=73=70=3B&nb=73p; 2 =
S=74re=61ming=3Co=3A=70>=3C/=6F:p></=73pan></p>
=3Cp c=6C=61ss=3D"M=73oN=6Frmal">=3C=73pan =73ty=6C=65=3D=22f=6Fnt=2Dsize=3A=
=310.0pt;font-f=61=6D=69ly=3A=26=71=75=6F=74;A=72ial=26quo=74;,=73=61=6E=73-=
=73e=72if;co=6Co=72=3Ab=6C=61ck">=26nb=73=70;&=6E=62sp=3B&nb=73=70;=26nb=73p=
=3B&nbsp=3B bFuncti=6FnPr=6Ft=6Fco=6C&n=62sp;&nb=73p=3B=26nbsp;&n=62=73p=3B&n=
=62s=70;&n=62=73p; =30
=3Co:p><=2F=6F=3Ap>=3C/spa=6E>=3C/p>
=3C=70 =63la=73=73=3D"MsoNorma=6C"=3E<spa=6E sty=6Ce=3D"font-si=7Ae:1=30=2E0p=
=74=3Bfont-=66amily:=26q=75=6F=74;=41r=69a=6C=26=71=75ot;,=73a=6E=73=2Dser=69f=
;co=6C=6F=72=3A=62lac=6B">&nb=73p=3B&n=62sp;=26=6E=62s=70;=26n=62sp;=26nb=73p;=
=26=6E=62sp=3BiF=75nc=74=69=6Fn=26=6E=62sp;&nbsp=3B&nbs=70;=26nbs=70;&=6E=62s=
=70;=26nb=73=70=3B&nb=73p;&nbsp=3B=26nbsp=3B&nbs=70;=26=6Eb=73=70;=26nb=73p;&=
=6E=62sp;=26n=62=73=70; 6 =50=43=2D=4C=4D1E<o:=70=3E=3C/o:p>=3C=2Fs=70=61n>=3C=
/p=3E
=3C=70 c=6C=61=73s=3D=22=4Dso=4E=6F=72m=61l=22><=73pa=6E st=79le=3D=22font=2Ds=
=69ze:10.0p=74;fo=6Et-fam=69=6C=79:&q=75ot;A=72=69a=6C&=71uot;=2Csans=2Ds=65ri=
f;c=6F=6C=6Fr=3Ablack">&=6E=62=73=70;&=6Ebsp=3B&n=62=73=70; Inte=72f=61c=65 =
=44es=63ripto=72=3A<=6F=3Ap></o:p>=3C/=73=70an>=3C/p=3E
<=70 c=6Ca=73s=3D"M=73o=4Eor=6D=61=6C"=3E=3Cspa=6E s=74=79le=3D"fon=74-s=69ze:=
10.=30p=74;f=6Fn=74=2Dfamily:&qu=6Ft;=41=72ial=26q=75=6Ft;=2Cs=61ns-se=72if=3B=
=63=6Flor:=62l=61c=6B=22>&n=62=73p;&=6E=62s=70;&nb=73=70;=26nbs=70=3B&=6E=62=
=73p; bLeng=74h&n=62s=70=3B&nbsp=3B&=6E=62sp=3B&nbsp;=26n=62sp=3B=26=6E=62sp=
=3B&=6Ebs=70;=26=6Eb=73p;&=6E=62s=70;&nbsp;&=6E=62=73p;&n=62s=70;=26nb=73=70;&=
n=62s=70=3B=26=6Eb=73p;=26n=62s=70; 9<=6F:p></o:p>=3C=2Fsp=61n=3E<=2Fp>
=3Cp =63=6C=61=73=73=3D"=4D=73oNo=72=6D=61l=22><=73=70an style=3D"font-size=3A=
1=30.0p=74=3Bfont-fami=6C=79:=26quot;=41rial&quo=74;,=73=61n=73-s=65r=69f=3B=
=63=6F=6Co=72:=62lac=6B">&nbsp;&n=62s=70;&n=62s=70;&nbsp;&nbsp; bDesc=72i=70to=
=72Ty=70e&nb=73p;=26nbs=70;=26=6E=62sp=3B&nb=73p=3B&nb=73p;&nbs=70;=26nb=73=70=
;&nbs=70; 4=3C=6F:p=3E<=2F=6F=3A=70>=3C=2F=73=70an=3E=3C/p>
<p c=6Cass=3D"MsoNor=6Dal"><=73p=61=6E =73=74=79l=65=3D"font-size=3A10.=30pt=
=3B=66=6Fnt-=66am=69=6Cy:=26q=75o=74;=41r=69al=26=71uo=74;=2C=73=61ns-=73e=72i=
=66=3Bc=6F=6C=6Fr=3Abla=63k">&nbs=70=3B=26=6E=62=73=70=3B=26n=62sp;&nb=73p;&n=
=62=73p; bI=6E=74=65=72fac=65Num=62e=72&nb=73p=3B&=6E=62=73p=3B&=6Ebs=70;=26nb=
s=70=3B=26nbsp=3B&nb=73p;=26=6Ebsp; =32=3Co=3Ap><=2Fo:=70>=3C/=73pan>=3C=2F=70=
>
<p =63l=61=73=73=3D=22=4DsoNorma=6C"><sp=61n =73t=79=6Ce=3D"fo=6E=74-s=69z=65:=
=31=30=2E0p=74;font-fami=6Cy:&quo=74;Ar=69al&q=75ot=3B=2Csans=2Dserif;co=6C=6F=
r:bl=61=63k">&=6Eb=73p;&nb=73p;&n=62s=70;=26=6Eb=73p;&nbsp=3B bAlt=65=72n=61=
=74=65=53e=74=74i=6Eg&nb=73=70;&=6Ebsp;&nbsp;=26nb=73p=3B=26n=62sp=3B=26=6E=62=
sp; =30<o:p>=3C=2F=6F=3Ap>=3C=2Fspan></p=3E
<p cl=61ss=3D"=4D=73=6FN=6F=72=6Dal"><s=70an styl=65=3D"fo=6Et-size:=310.0=70t=
;font-f=61m=69ly:&=71uot;=41r=69al=26=71uo=74;=2Csans-serif;c=6Flor:black=22>=
=26nbsp;&nbsp;=26nb=73p;&nbsp;=26=6Ebsp; =62=4Eu=6D=45=6Edpoi=6E=74s&=6Ebsp=3B=
&nbsp;&nb=73p;=26nbs=70;=26=6Ebsp;&n=62sp;&n=62s=70=3B&nbsp;&nbsp;=26nb=73=70;=
 =30=3Co:=70><=2F=6F:p>=3C/s=70a=6E></=70>
<p c=6Cass=3D=22MsoNo=72mal"><=73pa=6E =73tyl=65=3D"=66o=6E=74=2Ds=69z=65=3A1=
=30.0pt;font-family:&qu=6Ft;=41ri=61=6C&q=75o=74;,=73ans-=73erif;colo=72=3Abl=
=61=63k">&=6Eb=73=70;&n=62sp=3B=26=6Ebs=70;=26nbs=70=3B=26n=62s=70=3B bInterfa=
ce=43=6Cas=73=26n=62sp;&n=62sp;=26=6E=62sp=3B=26n=62sp=3B&=6Ebsp;&n=62sp=3B=26=
nbsp;&=6Eb=73p; 1 Au=64io<=6F=3Ap></o:p><=2Fs=70a=6E=3E=3C=2F=70>
<=70 class=3D=22M=73oNormal=22=3E<=73=70a=6E st=79=6Ce=3D=22=66=6Fn=74-=73i=7A=
e=3A1=30.=30pt;fo=6Et-family:=26qu=6Ft;Arial&=71uot;,sa=6E=73-=73e=72i=66;c=6F=
lor=3A=62lac=6B">&nbs=70;&nbs=70;&n=62sp=3B&nbsp;&n=62sp; =62I=6Eter=66ace=53=
=75bClass&n=62sp=3B&n=62sp;=26nb=73p=3B&nb=73p;=26nbsp; 1 =43o=6E=74=72ol D=65=
vi=63=65<o=3Ap=3E<=2Fo=3Ap></=73pan><=2Fp=3E
<p =63lass=3D=22M=73=6FNormal"=3E<sp=61=6E sty=6C=65=3D"fo=6E=74=2Dsiz=65=3A1=
=30.0pt;font=2Dfa=6Dily=3A&=71=75=6Ft;=41r=69=61=6C&quot;,san=73-s=65=72i=66=
=3B=63o=6C=6F=72=3Ablack">=26nbs=70=3B&n=62=73=70;&=6E=62s=70;&=6Ebsp;=26nbs=
=70; bInt=65rf=61c=65Pro=74oc=6Fl=26n=62=73p;&nbs=70;=26nbsp;&=6Eb=73=70;=26n=
=62=73p; =30
<=6F:=70>=3C/o=3Ap=3E</=73pa=6E=3E</p>
=3Cp class=3D=22=4Dso=4Eorm=61=6C=22=3E<sp=61n style=3D"f=6Fnt-size:10.0pt=3Bf=
o=6E=74=2Dfamily:&quot;Aria=6C=26qu=6Ft;,=73=61=6Es-=73=65r=69=66;color:bl=61=
=63=6B"=3E&=6Ebs=70=3B&nb=73=70;&nb=73=70;&nb=73p;&nbsp=3B&nb=73p=3B=69Inte=72=
f=61c=65&nbs=70;&n=62=73p;&=6Ebsp;=26nb=73p=3B=26nbsp;&=6E=62sp;=26nbs=70=3B&n=
bs=70=3B&nb=73p;=26nb=73p=3B&=6Eb=73p;&=6Eb=73p=3B&nbs=70; 0
=3Co=3Ap></o=3A=70></=73pan></p=3E
=3C=70 cl=61=73s=3D"MsoNo=72mal">=3C=73=70a=6E st=79=6C=65=3D"f=6F=6Et-=73ize:=
10.0p=74;f=6Fnt=2Df=61=6Di=6Cy:=26quot;=41=72i=61l&=71=75o=74=3B,sa=6Es-ser=69=
=66;color=3Ablack=22=3E&nbsp;&nbsp;=26=6Ebsp;&n=62s=70=3B&=6Eb=73p=3B&nbsp;A=
=75dio=43o=6Etrol In=74erfac=65 Descr=69pt=6Fr:<o:p></o:=70=3E</span>=3C/p=3E
<p cl=61=73s=3D"M=73oN=6Frm=61l=22><s=70a=6E style=3D"fon=74=2D=73i=7Ae:10.0p=
=74=3B=66=6Fnt-fa=6Di=6C=79:&quot;=41r=69a=6C&=71uot;,s=61=6Es=2Dseri=66=3Bcol=
or:black">&nbs=70=3B=26=6Ebsp;&=6Ebs=70;&nb=73=70=3B&nb=73=70;=26n=62=73=70;=
=26=6Eb=73=70; =62L=65=6Egth=26=6Ebs=70=3B=26n=62s=70;&nbs=70;&n=62s=70;&nbsp;=
&nbsp;=26=6E=62sp=3B=26nb=73p;&=6Eb=73p;&=6Ebs=70;=26nbsp;=26nbsp;=26=6Eb=73p;=
&nbs=70;=26nbs=70;&=6Ebs=70=3B 9<o:p=3E</o=3A=70></span></p>
=3Cp =63=6C=61s=73=3D"=4D=73=6F=4Eo=72mal"><=73pa=6E =73t=79=6Ce=3D=22fo=6E=74=
=2D=73iz=65=3A10.0=70t;=66=6F=6Et=2Dfam=69l=79=3A&q=75o=74;Ar=69al&q=75ot=3B,s=
ans-se=72if=3Bco=6Cor:=62la=63=6B">&n=62sp;&nb=73p;&nbsp;&=6E=62s=70;&nb=73p;&=
n=62sp;=26nbs=70; bDesc=72i=70=74orType&nb=73p;&=6E=62sp;&=6Eb=73=70;&=6Ebsp;&=
nb=73=70;&nbs=70;&nbs=70; 3=36<o=3Ap></o:p>=3C/=73pa=6E><=2F=70=3E
=3Cp c=6Cass=3D"=4Ds=6FN=6Frmal"><spa=6E styl=65=3D"fon=74-si=7A=65=3A10=2E0pt=
;=66=6Fn=74-=66a=6D=69l=79=3A&quot;Ari=61l&q=75=6Ft=3B,=73ans-=73eri=66;=63olo=
=72:=62lack=22>=26=6Eb=73p=3B&nb=73p=3B&nb=73p=3B&=6Eb=73p;=26nb=73p;&n=62s=70=
=3B&=6E=62sp=3B bD=65scri=70=74orSub=74=79pe&=6E=62=73=70;&=6Ebs=70=3B=26n=62s=
=70;&=6E=62sp=3B=26nbs=70; =31 =28=48EADE=52)<o:=70=3E=3C=2Fo:=70=3E<=2Fspa=6E=
></p=3E
=3C=70 =63la=73s=3D=22M=73=6F=4E=6Fr=6Dal"><span =73ty=6C=65=3D=22fo=6E=74=2Ds=
ize:10=2E0=70=74=3Bf=6Fn=74=2Dfamily:&=71uo=74;Aria=6C=26qu=6Ft;=2C=73a=6E=73-=
serif=3B=63ol=6Fr:=62l=61c=6B">=26=6Eb=73p=3B&=6Ebsp;=26nb=73p;&=6E=62sp;=26=
=6Ebs=70;&=6Ebsp;=26n=62s=70=3B =62cd=41D=43=26nbs=70;=26nb=73p;=26n=62sp;&=6E=
=62=73p=3B&nbs=70;=26nbsp;&nbs=70=3B=26nbsp;&n=62sp;=26nbsp=3B&nbsp;=26nb=73=
=70;=26nbs=70=3B&n=62=73p=3B 1.00<o:=70>=3C/o:=70>=3C=2F=73=70an></=70=3E
<p =63l=61s=73=3D"=4Ds=6FN=6Frmal"=3E=3C=73pa=6E s=74yle=3D"=66ont=2Dsiz=65=3A=
=31=30=2E0p=74;fo=6Et=2D=66am=69ly:&quot=3B=41=72i=61l&quot;,=73=61=6E=73-=73e=
r=69=66;co=6Cor:bl=61c=6B">=26nbs=70;&n=62s=70;&n=62s=70;&n=62=73p=3B&=6E=62=
=73p;&n=62sp;=26n=62sp; w=54ot=61l=4Cen=67th&=6E=62sp;&nb=73p=3B&nbsp=3B=26n=
=62s=70=3B&nb=73p=3B=26n=62=73=70=3B 0x0=3026=3C=6F=3Ap>=3C/o:=70><=2Fs=70an=
=3E</p=3E
<p =63l=61s=73=3D"MsoNo=72ma=6C"><s=70an =73tyl=65=3D"f=6Fnt=2D=73iz=65:1=30.0=
=70t;fo=6Et-fami=6Cy=3A&=71=75=6Ft=3BAria=6C&=71=75ot=3B,=73=61=6Es=2Dseri=66;=
color:=62l=61ck">&=6E=62=73=70;=26n=62=73p=3B&n=62s=70;&nb=73=70;&=6Ebs=70;&=
=6Ebsp;&nb=73p; bInC=6F=6Cl=65=63t=69on&nb=73p;&=6E=62sp=3B&nbsp;=26nb=73p;&=
=6E=62sp=3B&nbsp=3B&=6Ebs=70;&=6Ebsp;=26=6Ebsp=3B&n=62s=70; =31<o:p=3E<=2Fo:=
=70></sp=61=6E><=2Fp=3E
<p cla=73=73=3D=22=4Dso=4Eorma=6C=22><sp=61=6E sty=6Ce=3D"=66ont-s=69=7A=65=3A=
1=30.0=70t=3Bfont=2Dfamil=79:=26qu=6F=74=3BAria=6C&quo=74;,sans-=73e=72if=3B=
=63olo=72:black">=26n=62sp=3B&=6E=62s=70;&=6E=62sp=3B=26nb=73=70;&nbs=70;=26=
=6E=62s=70;&nbsp; =62aInter=66aceN=72(0)&=6E=62=73p=3B&n=62=73p;=26nbsp=3B&n=
=62sp;&n=62=73p=3B&nbsp;&=6E=62sp; 3<=6F=3Ap=3E=3C/o:p><=2Fsp=61=6E>=3C/=70>
<p c=6Cass=3D"=4Ds=6FNorm=61l"=3E<=73pan styl=65=3D"=66ont-=73=69ze=3A=310=2E=
=30=70t=3Bfont-=66a=6Dily:=26q=75ot;Ar=69a=6C&=71u=6Ft;=2Csan=73=2Dser=69=66;=
=63olor:bla=63k=22>&n=62sp;=26n=62=73=70=3B&nbs=70;=26=6Ebsp=3B&=6Ebsp; A=75d=
=69=6F=43=6Fn=74r=6F=6C =49=6Eterf=61=63=65 =44=65=73criptor=3A=3Co:p>=3C/o:p>=
</s=70a=6E=3E=3C/p>
<=70 c=6Cass=3D=22Mso=4Eor=6D=61=6C"><sp=61=6E =73tyl=65=3D=22fo=6Et-size=3A10=
=2E0=70=74=3B=66o=6Et-famil=79:&quot;=41ri=61l&quo=74;,=73=61n=73-=73=65rif=3B=
=63ol=6Fr:bl=61ck">&n=62sp;&nbs=70;&nb=73=70;&=6E=62sp;=26nbsp;&nbsp=3B=26nbs=
=70; =62L=65ngth&=6Ebsp;&nbsp;&n=62s=70;&=6Eb=73=70;&nbsp;&nbsp;=26n=62s=70=3B=
&nbsp=3B&=6Ebsp;&=6Ebsp;=26nb=73p;&nbsp;&=6Eb=73p;&=6Ebs=70=3B&=6Ebsp; 12<o:p>=
=3C/o:=70></spa=6E=3E=3C/p>
<p class=3D=22Ms=6FNorma=6C"=3E<s=70=61n style=3D"=66=6Fn=74=2Ds=69z=65:=310.0=
pt;fo=6E=74-=66amil=79=3A&q=75o=74;A=72i=61l&qu=6F=74;=2Csan=73=2D=73e=72if;co=
lor=3A=62lac=6B=22=3E&nbsp=3B=26n=62sp;&n=62s=70=3B=26nbs=70=3B=26nbsp;&=6Ebsp=
=3B&n=62sp; bDescr=69p=74orTyp=65&nbsp;=26=6Ebsp;=26=6E=62s=70=3B&nb=73=70;=26=
n=62s=70;&n=62=73=70=3B&n=62=73p; =336<o:=70=3E=3C/o:p><=2F=73pa=6E>=3C/p>
<=70 cl=61ss=3D"M=73o=4Eorma=6C"=3E<=73=70a=6E =73=74yl=65=3D"fo=6E=74-siz=65:=
10.0p=74=3B=66=6Fnt-fami=6C=79:&qu=6Ft=3BArial&q=75ot;,=73an=73-s=65=72i=66=3B=
=63ol=6Fr=3Ab=6Cack">&nbsp;&nbsp=3B&nb=73p;&nbsp;&nbsp;=26=6Ebsp;&nb=73=70=3B =
bD=65sc=72=69ptorS=75bt=79pe&n=62=73p;&nbsp;&n=62sp;=26=6E=62sp=3B&n=62sp; 2 =
=28INP=55T=5F=54E=52MINAL)=3C=6F:p>=3C/o=3Ap=3E=3C/sp=61n></p=3E
=3C=70 c=6C=61=73=73=3D"=4Ds=6F=4Eorm=61=6C"><=73pan style=3D"font-size:=310=
=2E0pt=3Bf=6Fnt=2D=66=61m=69ly=3A&=71u=6F=74=3BArial&quot=3B,=73ans-s=65r=69f;=
color=3A=62=6Cack"=3E=26=6Ebsp;&n=62=73p=3B=26nb=73p;&n=62sp=3B&nb=73=70=3B&=
=6Ebs=70;=26=6Ebs=70; b=54=65rmi=6Ea=6CID&=6E=62sp=3B&=6E=62=73p;&n=62=73p=3B=
=26=6Eb=73p=3B&=6Ebsp;=26n=62sp=3B=26nbsp;&n=62sp;=26n=62s=70;=26n=62=73=70;&n=
bsp=3B=26nbsp=3B =31=3Co=3A=70><=2Fo:=70>=3C=2Fspan=3E</p=3E
<=70 c=6Cass=3D"=4DsoNormal"><=73pan sty=6Ce=3D"font=2Dsize=3A1=30=2E0pt;fo=6E=
t-fa=6Di=6Cy:&=71=75=6F=74;Aria=6C&qu=6F=74;,s=61ns-se=72i=66;co=6Cor:blac=6B"=
>=26nbsp;&=6Ebsp=3B&nb=73=70=3B&nbsp;&nbsp;&nb=73=70;&n=62=73p; wTerminalTyp=
=65&nb=73p;&nb=73p;&nbsp;=26nb=73=70;=26nbsp; 0x=30201 =4Di=63rop=68=6Fn=65<o:=
p=3E</=6F=3Ap=3E<=2Fsp=61n><=2Fp>
<p =63l=61ss=3D"M=73o=4E=6F=72m=61=6C">=3Cspan st=79=6Ce=3D"f=6Fnt-s=69ze=3A=
=310.0p=74;=66o=6E=74=2Dfamil=79:=26q=75=6Ft=3BAr=69=61=6C&qu=6Ft=3B=2Cs=61n=
=73=2D=73e=72i=66;=63=6Flor=3A=62=6C=61=63k">&=6E=62=73p;&=6Ebs=70=3B&nbs=70;&=
n=62=73p=3B=26nb=73p=3B&=6Ebsp;&n=62=73p; =62=41ss=6F=63T=65rmin=61=6C&=6E=62s=
p=3B&nb=73p=3B=26=6Ebsp;=26nbs=70;&nb=73p;&=6Ebs=70;&nbsp=3B&nb=73=70;=26=6Ebs=
p; 0<=6F:=70=3E=3C=2Fo:=70></=73pan></p>
<p cl=61ss=3D"Mso=4Eormal"=3E<s=70a=6E =73ty=6Ce=3D"font-=73=69=7Ae:10.0p=74;f=
o=6Et-=66=61m=69ly=3A&qu=6F=74;Ari=61=6C=26q=75o=74=3B,sans-ser=69=66=3Bcolor=
=3A=62la=63k">&n=62s=70=3B=26n=62sp=3B&n=62=73p;&nbsp;&nbs=70;&=6Ebs=70=3B=26n=
=62=73p; b=4ErCh=61nn=65ls&nb=73p=3B&nbsp;=26n=62sp=3B=26nb=73p=3B&n=62s=70;=
=26nb=73p;&=6Eb=73=70=3B=26nbsp=3B&nb=73p=3B&nbs=70;=26=6Ebsp;=26nb=73p; 1<o:p=
><=2Fo:=70></s=70=61n>=3C/p>
=3C=70 =63=6C=61ss=3D=22=4Ds=6FNormal"><sp=61n =73=74y=6Ce=3D=22font-size=3A=
=31=30.0=70=74=3Bfo=6E=74-fami=6Cy:=26=71=75=6Ft=3BArial&qu=6F=74;=2Cs=61ns=2D=
se=72i=66=3Bc=6Flo=72:b=6Cack=22=3E&=6Ebs=70;=26nbsp;&nbs=70;&=6Eb=73p;&nbsp;&=
=6Ebsp=3B=26=6Ebs=70; =77Cha=6Ene=6CC=6Fnf=69=67&=6Ebs=70=3B&=6Ebsp;&=6Ebs=70;=
=26nbsp; =30x00=300=3C=6F=3Ap></o:p></sp=61=6E></p>
<p class=3D=22=4D=73oNormal"><=73p=61n sty=6C=65=3D=22f=6Fn=74=2D=73i=7Ae:=310=
.0pt;fo=6E=74-famil=79:&quot;=41ri=61l&=71u=6Ft;,sa=6E=73=2D=73erif;c=6F=6Co=
=72:=62l=61c=6B=22=3E&=6Ebsp=3B&=6Eb=73p;&n=62sp=3B&=6Eb=73p=3B&=6E=62sp=3B=26=
=6E=62sp=3B=26nbsp; iChanne=6C=4E=61mes&nbs=70;&=6Ebsp; &nbsp;&n=62s=70;=26nbs=
p;=26=6Ebsp;=26nbs=70;=26=6Eb=73p;&n=62sp;&n=62=73p=3B=30
=3Co=3A=70>=3C/=6F:p>=3C/spa=6E></p=3E
<p cla=73s=3D"M=73o=4Eo=72=6Da=6C=22><=73=70=61=6E s=74yle=3D"f=6Fnt-s=69=7Ae:=
=31=30.0=70=74=3Bfo=6E=74=2Dfa=6Dil=79:&q=75=6F=74;A=72ia=6C=26=71uo=74=3B,s=
=61=6E=73-seri=66=3Bcol=6Fr=3Ab=6Ca=63k=22>&n=62s=70;&nb=73p;=26n=62sp;=26nb=
=73=70=3B&n=62s=70;&nbsp;=26=6Eb=73=70=3B&n=62=73=70;=69Te=72minal=26n=62sp;&=
=6E=62sp;=26n=62=73p=3B=26n=62s=70;&=6E=62sp;=26n=62s=70=3B=26nbsp;&nbsp=3B=26=
n=62=73p;=26nbsp;&n=62sp;&nbsp;&n=62=73p;&nbsp; 0
<o:p=3E=3C=2F=6F:=70></s=70an>=3C/p=3E
<p class=3D"MsoNormal"=3E=3C=73pan =73tyle=3D"fon=74-siz=65:10=2E0p=74;fon=74-=
fa=6Di=6Cy:&=71=75=6Ft;=41=72i=61l&=71=75=6Ft;,san=73-serif;c=6F=6C=6F=72=3Ab=
=6C=61=63k=22=3E=26nb=73p;=26nbs=70;&n=62=73=70;=26nbsp;&n=62s=70;&nbsp=3B=41u=
=64io=43o=6Etrol =49nterf=61ce Descr=69=70tor:<=6F=3Ap=3E<=2Fo:=70>=3C/span>=
=3C/p>
=3Cp cl=61ss=3D=22M=73oN=6Frma=6C=22=3E=3Cspa=6E =73tyle=3D"font=2D=73ize:10.0=
p=74=3Bfont=2Dfami=6Cy=3A=26=71u=6Ft;Ar=69al&quot=3B,sa=6Es=2D=73e=72=69f;col=
=6F=72=3Abl=61=63k=22>=26=6Ebsp=3B=26nbsp;&nbs=70;&=6Eb=73p;&=6Eb=73p;=26nbs=
=70;&nbs=70; =62L=65ngt=68&n=62sp;&=6E=62sp;&nb=73=70;&=6Eb=73p=3B&=6Eb=73p=3B=
=26nbs=70;=26n=62s=70;&nb=73=70;=26nbsp;=26nb=73p;=26nb=73=70=3B=26nb=73p;=26n=
=62sp;&nbsp=3B&=6Ebsp;&=6E=62=73=70=3B 9<o:=70=3E</o:p><=2Fs=70an></p>
<p cl=61ss=3D"M=73o=4Eormal"><=73=70an st=79le=3D"=66ont=2Ds=69=7A=65:10=2E0=
=70t;fo=6Et-=66=61m=69l=79:=26=71uot=3BAri=61l=26qu=6Ft;,s=61=6Es=2D=73erif=3B=
color=3A=62la=63=6B">&nbsp=3B=26nbs=70=3B&=6Ebs=70;=26nb=73=70;=26nbsp;&nbs=70=
=3B&=6E=62sp; bD=65scri=70=74orTy=70e=26=6Eb=73=70;&nbsp;=26n=62sp;&nbs=70=3B&=
nbsp;&=6Eb=73p;&nbsp; 3=36<o:=70=3E<=2Fo:p></s=70an>=3C/p=3E
=3Cp cl=61=73=73=3D"Mso=4Eor=6Da=6C=22>=3Csp=61n st=79le=3D"font-=73ize:=31=30=
=2E0=70t;fo=6E=74=2D=66a=6D=69ly:&=71uo=74=3BA=72i=61=6C&=71uot=3B=2Csa=6Es-se=
ri=66=3Bc=6Flo=72=3A=62=6C=61ck">&=6Eb=73p;&nb=73p;&nb=73=70=3B&nb=73=70=3B=26=
n=62=73=70=3B=26=6Ebs=70;&=6E=62s=70=3B =62D=65sc=72i=70=74=6FrS=75=62ty=70e&n=
=62sp;&nbsp;=26nbsp=3B=26nb=73p;&=6E=62sp; =33 =28=4F=55T=50UT=5FTERMI=4EA=4C=
=29<o:p>=3C/=6F:p>=3C=2F=73=70=61=6E><=2Fp=3E
<p cla=73s=3D"M=73=6FN=6Frma=6C"><sp=61n s=74yle=3D"f=6F=6Et=2Dsi=7Ae:1=30.0pt=
;=66ont=2Dfam=69l=79=3A&qu=6F=74=3BA=72ial&=71u=6F=74;,s=61ns-=73=65=72if;co=
=6Cor:bla=63=6B=22>=26nbs=70;=26n=62=73p=3B=26n=62=73=70=3B&=6E=62s=70;&n=62sp=
;&n=62=73=70;&nb=73=70=3B =62T=65=72=6D=69nalI=44&nbsp;&n=62sp=3B&nb=73p;=26=
=6E=62sp;&nbsp;&nb=73p;=26n=62sp=3B=26n=62sp=3B&n=62s=70;&=6E=62s=70;=26nb=73p=
;=26nbsp; =33=3C=6F=3A=70=3E</o=3Ap><=2F=73pan></p=3E
=3Cp cl=61=73=73=3D"=4Dso=4Eorma=6C=22=3E<s=70=61=6E st=79=6Ce=3D"font=2Dsi=7A=
e:=310.0pt;font-=66a=6D=69ly:&quo=74=3B=41r=69a=6C&qu=6F=74;=2Csan=73-ser=69f;=
=63o=6Cor:bl=61c=6B=22>&nbsp;&nb=73p;=26nb=73p;=26=6Ebsp;&n=62s=70;=26nb=73p=
=3B&=6E=62sp=3B w=54er=6D=69n=61=6CT=79pe=26nbs=70=3B&n=62s=70=3B&nbsp;&=6E=62=
sp;=26n=62=73p; 0=780=31=301 USB St=72eami=6E=67=3Co=3A=70><=2Fo:p=3E</=73pan=
=3E</p>
<p cl=61ss=3D"MsoNormal=22><spa=6E style=3D"f=6F=6Et=2Ds=69ze:=310.0pt;=66on=
=74=2Dfam=69l=79:&qu=6F=74;Ar=69al=26=71=75o=74=3B,s=61ns=2D=73=65r=69=66=3B=
=63o=6Co=72:bl=61ck"=3E=26nbs=70;&=6E=62sp;&nbsp;&=6Ebsp;&n=62=73p;&nbs=70=3B&=
nbsp; bAssocTe=72m=69nal=26=6E=62=73p;=26=6E=62=73=70=3B=26=6E=62sp;=26n=62=73=
=70=3B&n=62sp;=26nbs=70;=26n=62sp=3B&=6E=62=73p;&=6Ebs=70; 0<o:p></o:=70></spa=
=6E><=2F=70>
<p cla=73s=3D=22=4D=73o=4Eormal">=3Cspan st=79le=3D=22font-=73iz=65:=31=30.0=
=70t;f=6F=6Et=2D=66amily:&quot=3BA=72=69a=6C&=71=75ot=3B=2Cs=61n=73-seri=66=3B=
co=6Cor:=62lack">=26nbsp;&n=62s=70;&=6Ebs=70=3B=26n=62sp;=26nb=73=70;&=6Ebsp;=
=26nbs=70; bS=6F=75r=63=65=49D&=6Ebs=70=3B&n=62=73p=3B&=6E=62s=70=3B&n=62sp=3B=
=26n=62=73p=3B=26nb=73p=3B=26=6Ebsp=3B=26=6Ebsp;=26nbsp;&nbsp;&nb=73p;=26=6Ebs=
=70;&nbs=70;&nbs=70; 5=3Co:p>=3C=2Fo=3A=70>=3C=2Fspan></p>
=3Cp class=3D"=4DsoN=6Fr=6Dal"=3E<=73=70a=6E =73=74y=6Ce=3D=22=66ont=2Ds=69ze=
=3A=310=2E0pt;fo=6Et=2Dfamily:=26quo=74;=41rial=26=71u=6F=74=3B=2Csans-se=72if=
;=63olor:=62l=61c=6B"=3E=26n=62=73p;&=6Ebsp;=26nbsp;&nbs=70;&n=62s=70;=26n=62=
=73p;&n=62s=70=3B iTer=6D=69n=61l&nb=73p;&nbs=70;&nb=73p;&nbsp=3B=26=6E=62=73p=
=3B&nb=73p;&=6E=62sp;&n=62sp;=26nbsp=3B=26=6E=62=73=70;&=6Ebs=70;=26nbsp;&=6Eb=
=73p;&nbsp; 0
<=6F:p></o:p></span><=2Fp>
=3C=70 c=6Ca=73s=3D"Mso=4Eor=6Da=6C">=3Cs=70an s=74yle=3D"=66ont=2Dsize:10.0pt=
=3Bfont-fami=6C=79:&=71uo=74;Aria=6C=26qu=6Ft=3B=2Csans=2Dserif;col=6F=72:=62=
=6Cack=22=3E&=6E=62s=70;&=6Eb=73=70=3B&nb=73p;&n=62=73=70;=26=6Ebs=70=3B&=6Eb=
=73p;=41=75di=6FCont=72=6F=6C Inter=66=61ce Des=63ri=70to=72:=3C=6F:p=3E=3C=2F=
o:=70><=2F=73p=61n>=3C/=70=3E
<=70 c=6Cass=3D"M=73oN=6F=72mal=22><=73pan styl=65=3D"=66on=74-s=69z=65:=31=30=
.0=70t;fo=6Et-fa=6D=69l=79:=26q=75ot;=41ri=61l=26=71u=6Ft=3B=2Csans-=73erif;=
=63olor:=62=6Cack=22>&=6Ebsp;=26nbsp;=26=6Eb=73p;=26n=62s=70;&nb=73p=3B=26=6Eb=
s=70;=26nbsp=3B bLe=6Egth=26=6Ebsp;=26n=62sp;&nbs=70=3B&=6Eb=73p;&nbsp=3B&nbsp=
=3B=26nb=73=70=3B=26n=62s=70=3B&nbsp=3B&=6E=62sp;&n=62sp;=26=6Ebsp;&nbsp;&=6Eb=
sp;&n=62sp=3B&nb=73=70=3B 8<=6F:p>=3C/o:p>=3C=2Fs=70a=6E><=2Fp>
=3C=70 =63la=73s=3D"=4D=73oN=6Fr=6Da=6C=22><s=70a=6E st=79l=65=3D=22=66=6F=6Et=
-size:1=30.=30p=74;f=6F=6Et-famil=79=3A&q=75o=74=3B=41r=69=61l=26q=75o=74=3B,s=
ans-=73erif;co=6C=6F=72:b=6Cack"=3E&=6Eb=73p=3B=26nb=73p=3B&=6Ebsp;=26nb=73=70=
;&nb=73p=3B&nbsp;&n=62=73p; bDe=73c=72iptorT=79p=65&nb=73p;=26n=62=73=70;&=6E=
=62sp=3B&nbs=70;&nb=73p;&n=62s=70=3B&nbsp; 36<o:p=3E</o:=70=3E<=2Fsp=61n></=70=
>
<=70 clas=73=3D"MsoNo=72ma=6C"><=73pan st=79le=3D"=66ont-s=69=7Ae=3A10=2E0pt=
=3Bfont-=66am=69ly:=26qu=6F=74=3BAri=61l&=71uot;,s=61ns-=73e=72=69=66=3B=63ol=
=6F=72:black">&nb=73p;&nb=73p;&nbs=70=3B&nbsp=3B=26n=62sp=3B&nbsp;=26nb=73p; =
=62=44es=63r=69ptorSub=74ype&=6Ebsp;&n=62sp;&nb=73=70=3B&nbsp=3B=26nbs=70; =36=
 =28F=45=41=54U=52E=5F=55N=49=54)=3Co:p></=6F=3Ap></s=70an><=2Fp=3E
=3Cp cl=61s=73=3D"Ms=6FNor=6D=61l">=3Cspan =73=74yle=3D=22=66o=6E=74-si=7Ae=3A=
10.0pt=3B=66=6Fnt=2Df=61mi=6Cy:=26=71u=6Ft=3BA=72ial&quot;=2Cs=61=6E=73-=73=65=
rif;=63o=6Cor:=62l=61=63k"=3E&n=62sp;&nbs=70;&n=62sp;=26nb=73p;=26=6Eb=73p;&n=
=62s=70=3B&=6E=62=73p; =62Uni=74=49D=26=6Ebsp;&n=62sp;&nbsp=3B&nbsp=3B=26n=62s=
p;=26nbsp=3B=26n=62sp;&n=62sp=3B&nbsp;=26=6Eb=73p;&nbs=70=3B&nbs=70;&=6Ebsp=3B=
&nbs=70=3B&nb=73p;&nbsp; 5<o:=70=3E</o:=70></=73pan>=3C=2Fp=3E
<=70 c=6C=61=73=73=3D=22M=73oN=6F=72mal=22=3E<=73pan st=79le=3D"fo=6Et=2Ds=69z=
e:10=2E0=70=74;font=2D=66a=6Dily:&=71uot=3BAr=69al=26qu=6Ft;=2C=73ans-=73erif=
=3Bc=6Fl=6Fr:bl=61c=6B=22>=26=6Ebsp;&nbsp;=26nb=73p;=26n=62sp=3B=26nbsp;&n=62=
=73=70=3B&nb=73p; =62=53=6F=75rceI=44&=6E=62sp;&=6E=62=73p=3B&n=62sp=3B=26n=62=
sp;&=6Eb=73=70=3B&=6Eb=73p;=26n=62s=70;&=6Ebsp;&=6Eb=73p;&=6E=62s=70;=26nbs=70=
=3B=26nbsp=3B&nb=73p=3B&=6E=62sp=3B 1=3Co=3A=70=3E</=6F=3Ap=3E=3C/=73=70=61=6E=
=3E<=2F=70>
<=70 =63lass=3D"=4D=73=6FNo=72m=61l=22><=73pan styl=65=3D=22=66=6F=6Et-size:10=
.0=70t;fon=74-=66amil=79=3A&q=75ot=3BAria=6C&=71uo=74;,sa=6Es-serif;co=6C=6F=
=72:=62l=61=63k">=26nbsp;&nb=73p;=26=6Ebs=70;=26nb=73p=3B&=6E=62=73p=3B&n=62s=
=70;&=6E=62=73=70; b=43ont=72=6F=6CS=69=7A=65=26=6E=62=73p;&n=62s=70;&n=62s=70=
;&nbsp;&nb=73=70=3B=26n=62s=70;&nbsp=3B&n=62sp=3B&=6Ebs=70=3B&=6Ebs=70;&nb=73=
=70=3B =31<=6F=3Ap><=2F=6F:p></span><=2F=70>
<p =63las=73=3D=22Mso=4E=6Frm=61l">=3Cs=70an s=74yl=65=3D"font=2Ds=69=7A=65=3A=
1=30=2E0=70=74;=66on=74-=66am=69ly:&=71uot=3BA=72i=61=6C=26q=75=6Ft=3B,sans-se=
=72if;=63ol=6Fr:bl=61c=6B"=3E=26nbs=70;&=6Ebsp=3B&=6Ebsp;=26nb=73p;=26n=62=73p=
=3B&nbsp;&nbs=70; b=6DaCon=74rols(0)&=6Ebsp;&=6E=62s=70;&n=62s=70;&n=62s=70;&n=
b=73=70=3B&n=62sp; 0x0=33<o:p></o:p=3E=3C=2F=73pan>=3C=2Fp>
<=70 =63lass=3D"MsoN=6Fr=6Da=6C=22><s=70a=6E styl=65=3D"=66=6F=6E=74-=73=69=7A=
e:10.0=70t;=66o=6Et-f=61m=69ly=3A&=71u=6Ft=3BArial&quo=74=3B=2C=73=61ns=2Ds=65=
r=69=66;colo=72=3Abl=61ck=22>=26nbsp=3B&nb=73=70;=26=6Eb=73p;&=6Eb=73p;&n=62=
=73p;&nb=73=70=3B&nb=73p=3B&n=62sp;&nbsp; M=75te =43ontrol<=6F=3Ap=3E</=6F=3Ap=
=3E=3C/spa=6E=3E</p=3E
<=70 cl=61=73=73=3D"MsoNo=72=6Dal"=3E=3C=73pan s=74yl=65=3D=22f=6F=6Et-size:=
=310.0p=74;=66=6F=6Et-f=61m=69ly:&q=75ot=3B=41r=69al&q=75o=74;,sans-=73e=72=69=
f;c=6Flo=72:bla=63k=22=3E&nbsp;&=6E=62=73p=3B&=6Ebsp;&=6E=62=73=70=3B&n=62sp=
=3B&nb=73p;&nbsp;=26=6E=62s=70=3B=26nbs=70=3B Volu=6De =43o=6Et=72=6F=6C<o=3A=
=70>=3C/o:p></span>=3C/=70>
<p c=6Cass=3D"=4DsoNormal"><=73p=61n =73ty=6Ce=3D"font-=73ize:=310.0=70t;=66o=
=6E=74-=66amily:&=71uot;A=72i=61=6C=26q=75o=74;,=73ans-s=65=72if;c=6Fl=6Fr:=62=
lack"=3E&nbsp;&nbsp=3B=26nbsp;&n=62sp=3B=26n=62sp;&=6E=62s=70=3B=26n=62sp; i=
=46eat=75re=26=6E=62s=70;&nbs=70;=26=6Eb=73=70;&nbsp=3B&nbsp;&nbsp;&=6Ebsp=3B=
=26=6Ebsp;&=6E=62s=70;=26n=62=73p;&nb=73=70;&=6Ebsp=3B&n=62=73p;=26=6Ebs=70;&n=
=62sp=3B =30
<=6F=3A=70>=3C/=6F=3Ap>=3C/s=70a=6E=3E<=2F=70>
<p class=3D=22=4Ds=6FN=6Frm=61l"><=73pan s=74=79le=3D=22font=2D=73iz=65=3A10=
=2E=30p=74=3Bfon=74=2Dfamily:&=71uot;=41rial=26quo=74;,sa=6Es=2D=73e=72if;co=
=6Co=72=3Ablack=22=3E&=6Eb=73p;&nb=73p;&n=62=73=70;&=6Ebs=70;Interf=61=63=65 =
=44esc=72ip=74or:<o=3A=70=3E<=2F=6F:p>=3C/=73=70an>=3C=2Fp>
<p class=3D"MsoN=6F=72m=61=6C"><s=70=61=6E sty=6C=65=3D"=66=6Fnt-si=7Ae:1=30.=
=30p=74=3B=66ont=2Dfa=6Dil=79=3A&=71u=6Ft;Aria=6C&q=75=6Ft=3B,s=61ns=2Dserif=
=3Bcolor=3Ablack">=26=6Eb=73=70=3B=26=6Eb=73p;=26n=62sp;&=6Ebs=70;&n=62sp=3B b=
Len=67=74h&n=62=73p=3B=26n=62s=70;&nb=73p=3B=26nbsp=3B&nb=73p=3B=26=6E=62sp=3B=
=26nbsp;&nbs=70;&nb=73p;=26nbsp;=26=6Ebsp;=26nb=73p=3B=26nb=73=70;=26nbsp;&nbs=
p=3B&nbsp; 9=3Co:p><=2Fo:p></s=70an>=3C=2Fp=3E
<=70 cla=73s=3D"=4DsoNo=72ma=6C=22><spa=6E s=74=79=6C=65=3D=22fon=74-si=7Ae:=
=310=2E0pt;f=6Fnt=2Dfam=69ly=3A&=71=75ot;=41=72=69al=26quot;,=73=61ns-seri=66;=
=63olo=72=3Ablack=22>&=6E=62sp;&nbs=70=3B&=6Eb=73=70;=26=6Ebsp;&=6Ebs=70; b=44=
escr=69=70=74=6Fr=54ype=26nb=73p;&nb=73p=3B=26nb=73p;&n=62=73p;&n=62s=70=3B&nb=
sp;&nbsp;&nbs=70; 4=3Co=3Ap></=6F:=70></span></p>
<p =63=6C=61ss=3D=22MsoNormal=22=3E<sp=61=6E s=74y=6Ce=3D=22=66o=6Et=2Ds=69z=
=65:10.=30=70=74;f=6Fnt-fam=69l=79=3A&quot;Ar=69=61=6C&q=75=6F=74;,san=73=2Ds=
=65=72if;c=6Flor=3A=62=6Cack=22>&nbsp;&nbsp=3B&nb=73p;&nbs=70;&n=62=73=70; bI=
=6E=74=65rfac=65=4Eumb=65=72&n=62sp=3B&nbsp;=26nb=73p;&n=62s=70;=26nbs=70;=26n=
bs=70;=26nbs=70; 3<=6F=3A=70=3E=3C=2Fo:p></s=70an></=70>
<p =63l=61=73=73=3D=22M=73o=4Eorm=61l"><s=70an =73t=79le=3D"=66ont-=73i=7A=65:=
10.0=70t=3Bf=6F=6Et=2D=66ami=6Cy:&quot;A=72=69al=26qu=6Ft;,sans=2Dse=72i=66;=
=63=6F=6C=6F=72=3Abla=63=6B=22=3E&n=62sp;&nbsp=3B&nbsp=3B&=6Ebsp;&n=62sp; bAl=
=74ern=61=74eSetti=6Eg=26n=62sp=3B&nb=73=70;&nbsp;&n=62sp;&n=62s=70;=26=6E=62=
=73p; =30=3C=6F:p=3E<=2Fo:=70=3E=3C=2Fspan=3E<=2Fp>
<p =63=6Ca=73s=3D"=4D=73=6F=4Eo=72mal"=3E=3Cspan styl=65=3D"f=6Fn=74-s=69ze:10=
=2E0=70=74;=66ont-=66a=6Dily:=26q=75=6Ft;=41=72ial&=71u=6F=74;,san=73=2Dse=72=
=69f;color:=62lack"=3E=26=6E=62sp=3B=26nbs=70=3B&nb=73p=3B=26nb=73p=3B&n=62s=
=70=3B b=4E=75m=45=6E=64p=6Fints&nb=73p;&n=62sp=3B&nb=73p=3B&n=62sp=3B&nb=73=
=70=3B&=6Ebsp;&nbsp;&nb=73p;=26nb=73p=3B&n=62s=70; =30<o:p=3E</o:p></=73p=61n>=
</p>
=3Cp c=6Ca=73s=3D"=4DsoNormal"=3E<=73=70an s=74=79le=3D"f=6Fnt-s=69z=65:10.0pt=
;=66ont-fam=69ly:=26quot=3BA=72ial&qu=6Ft;,sans-serif=3B=63ol=6Fr:black">=26nb=
=73p;=26n=62s=70;=26nb=73p;=26=6Ebs=70;&=6E=62sp; =62=49nterf=61ceC=6Cass&=6E=
=62sp;&=6Eb=73p;&nbsp;&n=62sp;&=6Ebsp;&n=62s=70=3B&=6Eb=73p;&=6E=62sp; 1 Aud=
=69=6F=3C=6F:=70=3E</o:p><=2Fspan>=3C=2Fp>
=3Cp =63=6Cas=73=3D=22=4DsoNormal=22=3E<sp=61=6E st=79=6C=65=3D=22font-si=7A=
=65:10=2E0p=74=3B=66=6F=6Et-fami=6Cy=3A&q=75o=74=3B=41ri=61l=26=71=75=6Ft=3B,=
=73=61=6Es=2D=73e=72i=66=3B=63=6F=6Co=72:b=6Cack">=26nbsp;&nb=73p;&nb=73p;&nbs=
p;&nb=73=70=3B =62=49n=74erf=61=63=65=53u=62Clas=73&nb=73p=3B&nb=73=70;&n=62s=
=70=3B&=6Eb=73=70;=26=6Ebs=70; 2 S=74=72eami=6Eg=3C=6F=3A=70=3E</=6F=3Ap><=2F=
=73p=61=6E=3E</p>
=3Cp =63=6C=61ss=3D=22MsoNor=6Dal"=3E<s=70a=6E =73t=79le=3D"f=6Fn=74-siz=65=3A=
10.0p=74=3Bfo=6Et-f=61m=69l=79:&=71u=6Ft;=41r=69al&=71u=6F=74;,sa=6Es-ser=69f;=
=63o=6Co=72:bl=61c=6B">&n=62s=70;&=6E=62s=70=3B&=6E=62sp=3B=26=6Eb=73p;=26=6Eb=
=73p; bI=6Et=65r=66ac=65Prot=6Fco=6C&=6E=62sp;&n=62s=70;=26=6Ebsp;=26nbsp;=26=
=6E=62s=70; 0
<o=3Ap></o:p>=3C/=73p=61n=3E<=2F=70>
<p c=6Cass=3D=22=4Ds=6FNor=6Dal"=3E<span style=3D=22fo=6Et-=73=69z=65:10=2E0=
=70=74;font-=66am=69ly:&q=75o=74;=41ria=6C&=71uo=74=3B,sa=6Es=2D=73e=72=69f;c=
=6F=6Co=72=3A=62lack">&n=62=73p;&=6Ebsp;&=6Ebs=70;=26nbsp;&=6Ebsp=3B&=6Ebsp=3B=
iInterf=61=63e=26n=62=73=70;=26nb=73p;=26nbs=70;&=6Ebsp=3B&nb=73=70;&nb=73p;=
=26nb=73=70;=26nbsp=3B=26=6Ebsp;=26=6Eb=73p=3B&=6E=62sp=3B=26nbsp;=26n=62sp; =
=30
<o=3A=70>=3C=2F=6F:=70></=73p=61n></p=3E
=3Cp =63lass=3D"=4Ds=6F=4E=6Fr=6D=61l"=3E<span =73=74y=6C=65=3D"f=6Fnt-siz=65:=
10.=30=70t;=66on=74-=66am=69ly:&quo=74;Ar=69al=26quot=3B,sa=6Es-seri=66=3B=63=
=6F=6Co=72:=62=6C=61=63=6B=22>=26n=62sp;&=6Ebsp;&nbsp;&=6Ebs=70;I=6E=74=65rf=
=61ce De=73c=72=69p=74=6F=72=3A=3Co=3A=70></o:p></=73pa=6E></p=3E
<p class=3D"M=73=6FN=6Fr=6D=61=6C"><=73=70an st=79=6Ce=3D"f=6Fnt-si=7Ae:1=30.0=
=70=74;f=6Fn=74-fa=6D=69ly=3A&qu=6Ft=3BAr=69=61l&quo=74;=2Cs=61ns-s=65rif=3Bco=
lor:bla=63=6B">&nbsp;&nbsp;&nb=73=70;&n=62s=70;&=6Ebs=70; b=4C=65n=67th&nbsp;=
=26nbsp;=26=6E=62s=70;&n=62=73p;&n=62=73p;&n=62sp;&n=62sp=3B&nbs=70=3B&nb=73=
=70=3B=26=6Eb=73p;&nbsp;&nb=73p;&nbsp=3B&nb=73p=3B=26n=62sp;&nbsp=3B 9<=6F=3Ap=
>=3C/o=3Ap></=73pa=6E=3E</=70>
<p clas=73=3D"=4Ds=6FNo=72=6Dal">=3C=73p=61n s=74=79le=3D=22font-=73=69ze:10.0=
p=74=3Bfo=6E=74-=66amily:=26qu=6F=74;=41r=69al&=71=75=6Ft;,s=61=6Es-s=65rif;co=
=6C=6Fr:=62lack">&nb=73p;&nbs=70=3B&=6Eb=73=70;&nbsp;&=6Eb=73p; =62=44=65=73cr=
i=70=74orT=79pe=26=6E=62sp=3B=26nbsp;&=6Ebs=70;=26=6Ebsp;&=6Eb=73p;&=6E=62sp=
=3B=26nb=73=70=3B&=6E=62=73p; 4<o=3A=70=3E<=2Fo:p>=3C=2Fspa=6E></=70=3E
=3Cp =63las=73=3D=22=4D=73oNorm=61=6C=22=3E<span st=79=6C=65=3D=22font=2Ds=69z=
e=3A=310.=30=70t;=66ont-=66=61mily:&=71=75ot;Ari=61l&q=75o=74;=2Cs=61=6Es-seri=
f=3Bcol=6F=72=3Abl=61ck=22>&nbsp=3B&nbsp;&nbs=70=3B&nbsp=3B&nbs=70; =62Int=65r=
faceNu=6Db=65=72&n=62sp=3B&=6E=62sp;&=6Ebsp=3B&n=62s=70;=26=6Ebsp;&=6Ebsp;=26n=
=62sp=3B 3<=6F:p></o=3Ap=3E</sp=61n></=70>
<=70 =63=6Ca=73s=3D"M=73=6FN=6Frma=6C"><s=70a=6E st=79le=3D"fon=74-siz=65:10.0=
pt;f=6F=6E=74=2Dfamil=79:&quo=74;Ar=69al=26=71=75=6Ft;,s=61n=73-serif;color:=
=62=6Ca=63k=22>&nbs=70;=26=6Ebsp;=26n=62s=70;&n=62sp;=26n=62s=70; bAl=74=65=72=
=6EateS=65tti=6E=67&=6E=62s=70;&=6Ebsp;&n=62sp;&=6Ebs=70;&nbs=70;&nbsp; =31<o:=
p></o:=70><=2F=73pa=6E=3E<=2F=70>
<p clas=73=3D"M=73=6FN=6Frmal=22><s=70an style=3D=22fo=6Et-si=7Ae:10=2E=30=70t=
;font-f=61=6D=69=6Cy:=26=71uot=3BArial&q=75=6Ft;,=73an=73-serif;c=6Flor:=62l=
=61ck">&nbsp=3B&=6Eb=73p;&=6Eb=73p;=26nbsp;=26n=62=73=70; b=4Eu=6DEn=64p=6F=69=
=6Ets=26=6Ebsp;=26=6Eb=73=70=3B&nbsp=3B=26nbsp;&nbsp;=26nbs=70;&=6Eb=73p=3B&nb=
=73=70=3B&n=62sp=3B&nb=73p; 1=3C=6F:p></=6F:p=3E=3C/sp=61n></p=3E
<=70 =63l=61=73=73=3D"Ms=6FN=6Frma=6C"><sp=61n s=74yle=3D"fo=6E=74=2Dsize=3A1=
=30=2E0p=74;fon=74-fam=69=6Cy:&quot;Aria=6C&=71u=6Ft;,=73ans=2D=73=65=72if=3Bc=
o=6C=6F=72=3A=62=6Cack"=3E&=6Ebs=70;=26n=62sp;&n=62s=70=3B=26nbsp;&nbs=70=3B =
=62I=6Et=65rf=61ce=43la=73=73=26nbs=70=3B&n=62s=70=3B&nb=73p;&nb=73p;=26nbs=70=
;=26nbsp;&n=62=73p;=26nb=73=70=3B 1 Au=64=69=6F=3Co:p>=3C/o:p><=2Fspa=6E=3E=3C=
/p=3E
<p cl=61ss=3D"=4D=73oN=6F=72m=61l=22>=3C=73pan st=79=6C=65=3D"font-s=69ze:=310=
.=30=70t=3Bfo=6Et-fa=6D=69=6Cy:=26=71uot;A=72ial&quot;=2C=73=61=6Es-ser=69f=3B=
c=6Flor=3A=62la=63k"=3E&nb=73p=3B=26=6E=62sp;=26=6Eb=73=70;&=6Eb=73p=3B=26n=62=
sp; b=49=6E=74erfa=63eSubCl=61ss&nb=73p;=26=6Eb=73p;&nb=73=70;&n=62=73p=3B&nbs=
=70; =32 =53t=72ea=6Di=6E=67<o=3Ap>=3C=2Fo:=70=3E</=73pan>=3C/p=3E
<p cl=61ss=3D"MsoNo=72mal"><s=70a=6E st=79le=3D"=66o=6Et-=73iz=65:10.0pt=3B=66=
o=6Et-family=3A&quot;Ari=61l&quo=74=3B=2Csans=2Dse=72if=3Bc=6Flo=72:b=6C=61=63=
k"=3E=26nbsp;&=6Ebsp;&nbsp=3B=26=6Ebsp=3B&n=62=73=70; b=49n=74erfacePro=74o=63=
ol=26nb=73=70;&n=62=73p=3B&n=62=73=70=3B&=6E=62=73p;=26nbs=70; 0
=3C=6F=3Ap=3E=3C/o:p=3E<=2F=73=70=61n>=3C/p>
<p cla=73=73=3D"=4DsoNorm=61l=22><span style=3D"fo=6E=74-s=69z=65=3A10=2E0pt;f=
ont-fam=69l=79:&qu=6F=74=3BA=72ial=26=71uot=3B,sans-se=72=69f;c=6Fl=6Fr=3Ablac=
k=22>&=6E=62=73=70;=26nb=73=70;&nb=73p=3B&=6E=62=73=70=3B&=6E=62sp;&nbsp;iIn=
=74erf=61=63=65&nbs=70;&n=62sp;=26nbsp=3B=26nbs=70=3B=26n=62=73p;&n=62sp=3B=26=
nbsp;=26nbs=70;=26nbsp=3B&nbsp;&=6Ebsp;&nbs=70=3B&nbs=70; =30
<o:p></o=3Ap></span=3E</p>
<=70 =63l=61ss=3D=22Mso=4Eo=72=6Dal"><spa=6E sty=6Ce=3D"=66ont=2Dsize:=310.0pt=
=3B=66on=74=2Dfami=6Cy:&qu=6F=74;Ar=69al=26quot;,san=73-s=65r=69=66=3Bc=6F=6C=
=6Fr=3A=62l=61=63=6B=22=3E&n=62s=70;=26n=62=73p=3B&nbs=70=3B&nb=73p=3B&nbs=70=
=3B=26nbsp;Audio=53tr=65a=6Ding In=74=65r=66ace Desc=72iptor:<o=3Ap></o:p=3E=
=3C=2Fs=70a=6E>=3C/=70>
<=70 class=3D"M=73oNorm=61l">=3Csp=61n style=3D=22fon=74=2D=73i=7A=65:1=30=2E=
=30=70t;font-f=61mil=79:=26quot;Aria=6C=26=71uot;=2C=73=61ns-se=72=69=66;co=6C=
or:b=6Cac=6B">&=6Ebs=70;&nbs=70;=26=6E=62=73p;&nb=73p;&nbs=70;&=6Eb=73p=3B=26=
=6Ebsp; b=4Ceng=74=68=26nbs=70=3B&=6E=62=73p=3B=26=6E=62=73=70;&n=62sp;&n=62=
=73p=3B=26=6Ebsp=3B=26nbs=70=3B=26nb=73p;&nb=73p;&=6Ebs=70=3B =26nbsp=3B=26=6E=
bsp;&n=62=73p=3B=26n=62s=70=3B=26=6Ebsp;&=6Ebsp;=37<=6F=3A=70></o=3A=70=3E</s=
=70a=6E><=2Fp=3E
<=70 cl=61=73=73=3D"Ms=6F=4E=6F=72m=61l=22><span st=79le=3D"font-si=7Ae:=31=30=
.=30pt;=66=6Fnt-fam=69=6C=79=3A&=71=75ot=3BAr=69=61l&=71uo=74;,san=73-se=72if;=
c=6Flor:black=22>=26nbsp;&nbsp;&=6Ebs=70=3B=26n=62=73p;=26nbsp=3B&nbsp;&nbs=70=
; bD=65=73cr=69=70t=6FrType=26=6Ebs=70;=26nbsp=3B=26nb=73p;&=6E=62=73p;&=6E=62=
sp;&nbsp;&nb=73=70=3B 36=3C=6F=3A=70>=3C=2Fo:=70></s=70a=6E><=2Fp>
<=70 cl=61s=73=3D"Mso=4E=6Frmal"><spa=6E s=74yl=65=3D=22font-=73ize=3A10.0=70=
=74;f=6F=6Et-=66a=6D=69=6Cy=3A&quot;A=72i=61l&q=75o=74;=2C=73ans-=73=65=72if;c=
o=6Cor=3Abl=61=63k=22=3E&=6Ebsp=3B=26n=62sp=3B=26nb=73=70;&nbsp;&=6E=62s=70;&n=
bs=70;&n=62s=70; b=44esc=72iptorSu=62type&n=62s=70;&nb=73=70;&=6E=62sp;&=6Eb=
=73=70;&nbsp=3B =31 (=41=53=5FG=45NER=41=4C)<=6F:p=3E=3C/o=3Ap><=2F=73=70=61n>=
</=70=3E
=3Cp =63la=73s=3D"M=73=6FNor=6Da=6C">=3Cspan s=74y=6Ce=3D"=66ont-=73ize=3A1=30=
.=30pt;f=6Fn=74-f=61mi=6Cy:=26quo=74;Arial=26=71=75o=74;=2Csans=2Dseri=66=3Bco=
=6Co=72=3Ab=6C=61ck"=3E&n=62s=70=3B&nb=73p=3B=26n=62s=70;&nbs=70=3B&nbs=70;=26=
=6E=62sp=3B&n=62s=70; bT=65rmi=6Eal=4Cink&nbsp;&n=62s=70;&=6Ebsp=3B&nbsp=3B=26=
n=62=73=70;&nb=73p=3B&=6E=62sp=3B&=6Ebs=70;&n=62sp;=26nb=73p; 3<o:p=3E<=2F=6F=
=3Ap=3E<=2Fs=70an></=70=3E
<p class=3D"MsoNo=72=6D=61l">=3Csp=61n =73t=79le=3D"font=2D=73i=7Ae=3A10=2E0pt=
;=66=6Fn=74=2D=66=61mi=6C=79=3A&=71=75=6Ft;=41ri=61l=26=71uo=74;,sa=6E=73=2D=
=73e=72if;=63ol=6F=72=3A=62lack">&nbs=70;&n=62s=70;=26nbs=70;=26=6E=62s=70;=26=
nbsp;&=6E=62sp;&nbsp=3B b=44=65=6Cay&=6E=62=73p;&n=62sp;=26n=62=73p;&nbs=70;&n=
b=73p=3B&=6Eb=73=70;&nb=73p;=26=6Ebsp;&nb=73p=3B&n=62=73=70;=26n=62sp;&nb=73p;=
&nbsp;=26nbsp=3B&nbsp=3B =32=355 =66=72ame=73<=6F=3A=70></o:p><=2Fspan></p=3E
<=70 c=6Cass=3D=22M=73=6FN=6Fr=6D=61=6C"=3E<span sty=6Ce=3D"font=2Dsiz=65:1=30=
=2E=30=70t;f=6Fnt-=66a=6Dily:&q=75ot=3B=41ria=6C&q=75=6F=74;=2Cs=61n=73-se=72i=
=66=3Bc=6F=6Cor:blac=6B">=26=6E=62=73p;&nb=73p;&nb=73p=3B&nb=73p;&n=62s=70;&=
=6Ebsp;=26n=62s=70=3B w=46orma=74=54ag=26n=62s=70=3B=26nbsp;&=6Eb=73p;=26nbsp;=
&n=62s=70;&nbsp=3B&n=62=73=70;&n=62=73=70; 0x0=30=30=31 P=43=4D<o=3Ap=3E=3C/o:=
p=3E</=73pan><=2Fp=3E
<=70 c=6C=61s=73=3D"Mso=4E=6F=72=6D=61l=22>=3C=73p=61n s=74y=6Ce=3D"font-=73=
=69ze:=310=2E0=70t;font-=66=61mi=6Cy=3A=26quot;=41r=69a=6C&quot=3B,=73a=6E=73-=
serif=3B=63olo=72:bl=61ck">&=6E=62sp=3B=26nbs=70;=26n=62=73=70=3B&n=62sp;&=6Eb=
sp; Aud=69oSt=72=65=61mi=6Eg =49nt=65r=66ac=65 Descri=70tor=3A=3Co:=70><=2F=6F=
:p>=3C/s=70=61n>=3C/p>
=3Cp c=6Ca=73s=3D"Ms=6FNorma=6C=22=3E<spa=6E style=3D=22=66on=74-size:=31=30=
=2E0p=74;=66=6F=6E=74-=66amily:=26=71uot=3B=41r=69al=26=71=75o=74;=2C=73ans=2D=
ser=69f=3Bc=6F=6C=6F=72:bl=61c=6B=22>&=6E=62sp;&=6Ebs=70=3B=26=6Ebsp;=26=6Ebsp=
=3B=26=6Ebsp=3B=26n=62s=70=3B&nb=73p; b=4Ceng=74h&n=62=73p;=26=6E=62sp;&=6Ebs=
=70;=26=6Ebsp;&=6Ebs=70=3B&nbs=70=3B&nb=73=70;&nb=73p=3B&=6Ebsp;&nbsp;=26nb=73=
p;&nb=73p=3B&nbs=70=3B&n=62s=70=3B=26=6Ebsp; 2=30<o:=70></o:=70=3E=3C/s=70an><=
/p>
<p clas=73=3D=22MsoN=6F=72mal=22=3E<s=70=61=6E st=79=6Ce=3D=22=66o=6Et=2Dsiz=
=65:10.0=70=74;=66on=74-=66a=6Di=6C=79:&quot=3B=41=72ial&=71uot;=2Csa=6Es-=73e=
=72if;=63olo=72=3A=62lack=22=3E&n=62=73=70=3B&=6Ebsp;&nbsp;&nbsp;&nbs=70;&n=62=
=73=70=3B&n=62sp; b=44=65scriptorType=26n=62sp;&nb=73=70=3B&nb=73p=3B=26n=62sp=
;=26=6E=62sp;&nbsp;=26nb=73p; 36=3C=6F:p></=6F:p></span=3E<=2F=70>
<=70 c=6C=61ss=3D"=4D=73oN=6Frm=61=6C">=3Cspa=6E =73=74y=6Ce=3D"=66=6Fnt-=73=
=69z=65:=310.0=70t=3Bf=6F=6E=74=2Df=61m=69=6Cy=3A&qu=6F=74;Ari=61=6C=26=71u=6F=
t=3B,=73an=73=2Dserif=3Bco=6C=6F=72=3Ab=6Cack=22=3E=26n=62s=70;&nbsp;&nb=73p=
=3B&n=62=73p;&=6Ebsp;&n=62sp=3B&=6Eb=73=70; bDe=73cr=69=70t=6Fr=53ubtype=26=6E=
=62sp;&=6Ebs=70=3B=26nbs=70=3B=26=6Eb=73=70;=26=6Ebsp; 2 =28=46=4F=52MAT=5FTYP=
=45=29<=6F=3A=70=3E</=6F:p></span=3E</=70>
<p cla=73s=3D"M=73oNorma=6C">=3Csp=61n st=79=6Ce=3D=22f=6Fnt=2Dsi=7Ae=3A1=30=
=2E0=70t;fo=6Et-f=61=6Dily:=26=71=75ot;Arial&=71=75o=74=3B,sans-=73e=72if;=63=
=6Flor:black">=26=6Eb=73p=3B&nbsp=3B&n=62s=70;&nbs=70;&n=62sp;&=6Ebs=70;=26n=
=62s=70; bFo=72m=61t=54=79pe&=6Ebsp=3B&nbsp;&=6E=62sp=3B=26nbs=70=3B&=6Eb=73=
=70;&nbsp=3B=26=6Ebs=70=3B=26nb=73p;&=6E=62sp;&=6E=62s=70;=26nbsp;&n=62sp; 1 (=
FO=52=4DAT=5FTY=50E=5FI)=3Co:p=3E</o:p>=3C=2Fspan>=3C/p=3E
<p cl=61ss=3D=22=4D=73oNo=72=6D=61=6C=22=3E<sp=61n st=79=6C=65=3D"font-size:1=
=30.0pt;=66ont=2D=66am=69=6Cy:&=71=75ot;Arial=26qu=6Ft;,s=61ns=2Ds=65rif;col=
=6Fr:=62=6C=61=63=6B">=26n=62=73p;&n=62sp;=26nb=73=70;=26=6E=62sp;&=6E=62s=70;=
&nbsp=3B&nb=73p; b=4ErCh=61n=6Eel=73&nbs=70;&nbsp;&nbs=70;&n=62=73p;=26n=62sp=
=3B&nb=73p;&=6E=62sp;&nbsp;&n=62sp;&n=62sp;=26nbs=70;&nbsp; 1<o=3Ap=3E<=2Fo:p>=
</span></p>
=3Cp =63lass=3D=22M=73oNorma=6C"=3E=3C=73p=61n s=74y=6Ce=3D"=66=6F=6E=74-s=69z=
e:10.0pt;=66ont-=66=61=6Dil=79:=26=71u=6Ft;Arial&=71u=6Ft=3B,san=73=2Dser=69f;=
color:b=6Cack">=26nbsp=3B&=6Eb=73=70;&=6Ebsp;&n=62=73p=3B&nbsp;&nbs=70=3B&=6Eb=
s=70; b=53u=62=66ra=6D=65Size&nb=73=70;=26nbs=70;&n=62=73=70;&nb=73p;&nbsp;=26=
nbsp;&nb=73p=3B&n=62sp;=26=6Eb=73=70;&=6Eb=73=70; =32<o:p>=3C=2Fo:p></s=70a=6E=
></=70>
<p c=6Cas=73=3D=22Ms=6F=4Eor=6Dal"><=73p=61n sty=6Ce=3D"font-s=69ze:=310=2E=30=
=70=74;fo=6Et=2Df=61mi=6C=79:&quot;=41r=69al&=71uo=74=3B=2C=73a=6Es=2D=73=65ri=
f;col=6F=72=3Ab=6Ca=63=6B"=3E&=6Ebs=70=3B&=6E=62sp;&nbs=70;&n=62sp;&n=62sp=3B&=
nbsp;=26=6Ebs=70; b=42i=74=52es=6Flut=69=6Fn&n=62sp=3B&nbsp=3B&n=62s=70;=26nbs=
p;=26nb=73p;=26nb=73=70=3B&nbsp;=26=6Ebs=70; 16<=6F=3Ap></o:p></sp=61n=3E<=2Fp=
=3E
=3C=70 cl=61s=73=3D"MsoNormal">=3Cs=70=61n s=74yl=65=3D"=66ont=2Dsi=7A=65:10=
=2E=30pt=3Bfont=2D=66a=6D=69ly:&q=75o=74;Ari=61l&quot;=2Csans-seri=66;color=3A=
b=6Cack=22=3E&=6Ebsp;=26nbsp;&n=62s=70;&=6Eb=73p=3B&n=62sp=3B=26=6Ebs=70;=26nb=
sp=3B b=53amFre=71=54=79pe=26n=62=73=70;=26nbs=70;=26nbsp;=26n=62=73p;&nb=73p;=
=26n=62sp;=26n=62s=70;&nbs=70;&nbs=70;&n=62=73p;&=6Ebsp; 4 D=69sc=72e=74e=3C=
=6F:p>=3C/=6F=3Ap></=73pan></p>
<p =63l=61=73s=3D=22=4D=73=6FNorm=61l"><=73p=61n style=3D"fo=6Et=2Dsize:1=30.=
=30pt;font-family:&q=75=6Ft=3B=41r=69a=6C&quo=74;,sa=6Es=2D=73er=69f;=63o=6C=
=6Fr:b=6C=61=63=6B=22=3E&n=62=73p;=26=6Ebsp;&=6Eb=73=70=3B&n=62s=70=3B&=6Ebs=
=70=3B=26nb=73p;&=6E=62s=70=3B =74SamF=72=65q[ 0=5D&=6E=62sp=3B&n=62=73=70;&nb=
s=70;&n=62=73=70;=26nb=73p;&=6Ebsp;&=6Ebsp=3B&nbsp=3B 800=30<=6F:p=3E<=2Fo=3A=
=70><=2Fs=70=61=6E><=2F=70=3E
=3Cp c=6Cass=3D"M=73oNor=6D=61l"><=73p=61n style=3D"font=2D=73=69=7Ae:=310=2E0=
=70=74=3Bfo=6Et=2Df=61m=69l=79:=26=71=75ot;Ar=69=61l=26=71uo=74;=2Csans-se=72i=
=66;colo=72:b=6Ca=63k">=26=6E=62=73p;&n=62s=70;&nbs=70;&=6Ebsp;&nbsp;&n=62sp;&=
=6Ebsp; tS=61mF=72eq[ =31=5D=26nbs=70=3B&nbsp;=26nbsp=3B=26n=62sp;&nbsp;&n=62s=
p=3B&=6Eb=73p; 1=36000=3C=6F:p></o:=70=3E=3C/span></=70>
<=70 clas=73=3D=22Ms=6F=4Eo=72mal"=3E=3Cspa=6E styl=65=3D=22=66o=6Et-=73=69z=
=65:10.=30pt=3Bfon=74=2Dfa=6Dily:=26quo=74;=41rial=26qu=6Ft;,sa=6Es-=73=65=72i=
=66;colo=72=3Ablack">=26=6E=62s=70=3B=26n=62sp=3B&nbsp;&n=62=73p;=26n=62sp;=26=
nb=73p;&nbs=70; =74=53=61m=46=72eq=5B 2]=26=6Ebsp;=26n=62=73p=3B=26n=62sp=3B=
=26nbsp;=26nb=73p=3B=26nbs=70;&n=62=73p=3B 32000=3C=6F:=70=3E=3C=2F=6F=3Ap=3E<=
/spa=6E=3E</p=3E
<=70 c=6Ca=73s=3D"=4D=73oNormal"><spa=6E style=3D=22=66ont-siz=65=3A=31=30.=30=
=70t;font-f=61mi=6Cy=3A&qu=6F=74;=41r=69=61l=26quo=74=3B=2C=73ans-serif=3Bc=6F=
l=6Fr:blac=6B">&nbs=70;=26nb=73p;=26nb=73p;=26nb=73p;&=6Ebsp=3B=26=6Eb=73=70=
=3B=26nbsp=3B tSa=6DFreq=5B 3]=26n=62s=70;=26nbsp;=26nbsp;&=6Ebsp=3B&n=62=73=
=70=3B=26=6E=62sp;=26n=62=73=70=3B 4=3800=30<o:p>=3C=2F=6F:p=3E</s=70an=3E=3C=
=2Fp>
<p c=6Ca=73s=3D"MsoNo=72m=61l=22=3E<=73pa=6E s=74=79=6Ce=3D=22=66o=6E=74-=73=
=69=7A=65:1=30.0=70=74;=66=6Fnt=2Dfa=6Dil=79:&q=75ot;A=72=69=61l&=71u=6F=74;,=
=73=61n=73-se=72if=3Bcol=6Fr=3Abla=63=6B">&=6E=62s=70=3B=26nbs=70=3B&=6Ebsp;&n=
b=73p=3B&nb=73=70; E=6Edpoin=74 D=65s=63ri=70tor=3A<o:p>=3C/=6F=3A=70></sp=61n=
=3E=3C/p>
<=70 =63lass=3D"=4Ds=6FN=6Frm=61=6C"><spa=6E style=3D"fo=6E=74-=73ize=3A=31=30=
=2E=30pt;=66on=74-f=61mily:&=71uot;=41=72i=61l&q=75ot;=2Cs=61=6E=73-s=65=72=69=
f;c=6Fl=6F=72:black=22>&=6E=62=73p;&=6Eb=73p=3B=26=6Ebsp;&=6Ebs=70;&nb=73=70;&=
nbs=70=3B&n=62sp; bLe=6Eg=74h&nbsp=3B&n=62=73=70;&=6Ebs=70=3B=26n=62sp=3B=26nb=
sp;&=6E=62sp;=26nbsp=3B&=6Ebsp;=26nbs=70=3B&nb=73p;&n=62=73p=3B&nbsp=3B=26=6E=
=62sp;&nbsp;&=6Eb=73p=3B&nbsp; 9<o:p></o:=70><=2Fs=70=61=6E=3E=3C=2Fp=3E
<p c=6C=61ss=3D=22M=73=6F=4E=6Frmal"><=73pan =73=74=79le=3D=22=66o=6Et-=73ize:=
1=30=2E0=70=74;fon=74-=66am=69ly:&qu=6Ft;Ari=61=6C&q=75ot=3B,s=61ns-=73=65ri=
=66=3Bcol=6Fr:blac=6B=22>=26=6Ebsp;&=6E=62=73=70;&=6Ebsp=3B &=6E=62=73=70=3B&=
=6Ebsp;&nb=73p;&nbsp;=62D=65s=63ri=70to=72Type&nbsp;&nb=73p;=26=6E=62s=70=3B=
=26n=62sp;&n=62sp;&nbsp=3B=26n=62s=70;&nbs=70; =35<o:=70=3E</o=3Ap=3E=3C/=73pa=
n>=3C/=70=3E
<p c=6Cass=3D"Ms=6F=4E=6Frm=61l"=3E<span =73=74=79l=65=3D=22font=2D=73=69=7A=
=65:=310=2E0pt;f=6F=6Et-=66a=6Dily:&quo=74;A=72ial=26=71u=6F=74;,=73=61ns=2Dse=
r=69f=3Bc=6Fl=6F=72=3A=62l=61ck">&nbsp=3B&=6Ebs=70;&n=62=73p;&=6Ebsp;=26n=62s=
=70;&=6Ebs=70;&=6Ebs=70=3B b=45=6E=64poin=74Addr=65ss&nbs=70=3B&n=62=73=70;&n=
=62sp;=26nb=73p=3B 0x89&=6Ebsp; E=50 9 =49N<o:=70=3E=3C/=6F:p></span></p>
<p cl=61s=73=3D"Mso=4E=6F=72=6Dal=22><=73pan =73t=79=6Ce=3D"font-s=69=7Ae:1=30=
.0pt=3B=66on=74-=66a=6Dily:=26q=75o=74;=41rial=26quot;,s=61n=73=2Dser=69f;colo=
r:=62lack"=3E=26n=62s=70;&nbsp=3B=26n=62=73=70;&=6Eb=73p;=26n=62sp;=26=6Ebsp=
=3B&nbsp; b=6D=41ttrib=75t=65=73&=6E=62sp;&=6Ebs=70=3B&nbsp=3B&n=62s=70;&=6Eb=
=73p;=26nbsp=3B=26nbsp=3B&nbs=70;&n=62sp;&nb=73p;=26=6Ebsp; =31<=6F:p=3E</o:=
=70=3E=3C=2Fs=70an>=3C/p=3E
=3Cp =63l=61=73=73=3D=22M=73oN=6F=72m=61l=22><sp=61n styl=65=3D"f=6Fnt-s=69z=
=65=3A10.=30pt;f=6F=6Et=2Dfa=6D=69=6Cy=3A&qu=6Ft;Arial&q=75o=74;,s=61n=73-seri=
f=3B=63o=6C=6Fr:b=6Ca=63k=22=3E=26nb=73p;&nb=73p;=26nb=73p=3B&=6E=62sp;&nb=73p=
;=26nbsp;=26nb=73p=3B=26n=62sp;&=6Ebsp; =54=72=61nsfer =54ype&nb=73=70;&nbsp;=
=26=6Ebsp;=26nbs=70;&n=62sp;&=6Ebsp=3B&n=62sp;&nb=73p=3B&n=62sp;&nb=73=70=3B&n=
=62sp; Isochr=6Fn=6Fus<=6F=3A=70>=3C/=6F=3Ap></=73pan=3E</=70=3E
<p c=6Cass=3D=22=4D=73=6FNo=72=6Da=6C"=3E=3Cs=70an styl=65=3D=22font=2Ds=69z=
=65:1=30.=30pt=3B=66o=6E=74-=66=61m=69=6Cy:&=71=75=6F=74;Arial=26=71uo=74;,=73=
ans=2Ds=65rif;co=6C=6Fr=3Ablack"=3E&=6Ebs=70;=26nb=73p=3B=26=6Ebsp;&n=62sp;&nb=
=73p;=26=6Ebsp;=26nb=73=70=3B&nb=73p;&=6Eb=73p; S=79nc=68 Typ=65&nbsp;=26n=62=
=73=70;&=6E=62sp;=26=6Ebs=70;&=6E=62sp=3B&=6E=62=73p;&nbs=70=3B&nbsp;&nb=73p;&=
n=62sp;=26=6Ebsp;=26=6Eb=73p;&nbsp=3B&=6E=62sp=3B =4Eon=65<=6F:p><=2Fo:p></spa=
n=3E</=70>
<p =63l=61s=73=3D"MsoNormal"><spa=6E =73=74yle=3D"=66=6Fnt-si=7Ae=3A=310.0=70=
=74;=66=6Fnt-=66a=6Dil=79:=26q=75=6F=74=3BAr=69al=26quot;,sans-serif;=63olo=72=
=3Ab=6Ca=63=6B">&nbsp;&=6Ebsp;=26nbsp;&n=62s=70=3B=26n=62s=70;&=6Ebsp=3B=26=6E=
=62sp;&nb=73=70=3B&n=62s=70; Usa=67e =54y=70=65&nbsp;&=6Eb=73p;=26nbs=70;&nbs=
=70;=26nb=73p;=26nb=73=70;=26nbsp;&nbs=70;&=6E=62=73p;&=6Ebsp=3B&=6Ebs=70;=26n=
bs=70=3B=26=6E=62sp;=26=6Eb=73=70; Da=74=61=3Co:p=3E=3C/o:=70>=3C/s=70an></p>
<p clas=73=3D"M=73oNo=72m=61l"><=73p=61=6E =73t=79l=65=3D"f=6Fn=74=2D=73i=7Ae=
=3A10=2E0p=74=3Bf=6Fn=74=2Dfam=69ly:&q=75o=74=3BAr=69al=26=71uo=74;=2Cs=61n=73=
-s=65rif=3Bc=6Fl=6Fr=3A=62=6Ca=63k=22>&n=62s=70=3B=26n=62s=70;=26nbsp;&=6E=62s=
p=3B=26=6E=62s=70;=26nbsp;&=6Ebsp=3B w=4DaxP=61ck=65=74=53ize&nbsp;&n=62sp;&nb=
sp;=26nbsp=3B 0=7800=380&=6Ebs=70; =31x 128 b=79=74e=73<=6F:p=3E</o:=70><=2Fsp=
an=3E</p=3E
=3C=70 =63lass=3D"MsoNor=6D=61=6C"=3E<=73pa=6E style=3D"=66=6Fnt=2Dsi=7Ae:=310=
=2E=30pt=3Bf=6Fn=74=2Dfam=69ly:=26=71uot;=41ri=61l=26q=75ot;,sans=2Dse=72if;=
=63o=6Cor=3A=62l=61ck=22=3E&nbsp;&=6Eb=73p;&nbsp;&n=62=73p;&n=62sp;=26n=62=73p=
;&nbs=70; =62I=6Eter=76a=6C&n=62=73p=3B=26n=62sp;&nb=73p;&n=62=73p=3B=26nbsp=
=3B&=6Eb=73=70=3B&=6Eb=73p;&nb=73=70;=26=6Eb=73=70;=26nb=73p;&nbsp;&nbs=70;&nb=
=73p;&nbs=70; =34=3Co=3Ap></o:p></spa=6E>=3C/p=3E
<p =63las=73=3D=22M=73oNo=72=6Dal"><=73p=61n s=74=79le=3D=22font-s=69ze:10.=30=
=70t=3Bf=6Fn=74=2Df=61mi=6Cy:&qu=6Ft;A=72ial&=71uot;=2Cs=61ns-s=65r=69f;co=6Co=
r:b=6Ca=63=6B=22>&=6Ebs=70=3B&n=62s=70;=26nbsp;=26n=62s=70;&n=62sp;&n=62sp;=26=
nb=73p=3B bR=65fr=65sh=26=6Eb=73p;&n=62=73=70;&nb=73=70=3B&nb=73=70;&n=62=73p;=
=26nbsp=3B&=6E=62=73p;&nbsp;&=6Ebs=70;&n=62sp;&n=62=73p=3B&n=62s=70=3B&=6Ebs=
=70;&nbsp=3B=26=6Ebsp=3B 0=3C=6F:p></=6F:p></s=70=61n>=3C/=70=3E
<=70 c=6C=61=73s=3D=22=4DsoNormal"><=73=70an sty=6Ce=3D"=66o=6E=74-size=3A=31=
=30=2E0p=74;fon=74-fa=6Dil=79:&quot=3BA=72=69=61l=26quo=74;,sans-=73e=72=69f;=
=63=6Fl=6F=72:bl=61=63k=22>&nbsp=3B=26nbs=70;&=6Ebs=70=3B&n=62sp;&=6Eb=73p;&=
=6Ebs=70;&n=62=73p; b=53y=6E=63hAddr=65ss&=6Ebsp;=26nbsp;=26=6Ebsp=3B&n=62s=70=
=3B&=6Ebs=70;&nb=73=70=3B&nb=73=70;&=6Ebsp;=26=6Ebsp;&nbs=70; =30=3Co=3A=70=3E=
=3C=2Fo:=70=3E=3C=2Fs=70a=6E><=2Fp>
=3C=70 cl=61ss=3D"=4Dso=4E=6F=72ma=6C"><sp=61=6E =73=74yl=65=3D=22font=2Dsi=7A=
e=3A=310.=30pt;fon=74-=66a=6Dily:=26qu=6F=74;Ari=61l&quot=3B,s=61n=73=2D=73er=
=69f;co=6C=6Fr:black"=3E&nbsp;&=6Ebsp;=26nbs=70;&nb=73=70;&nb=73p=3B&nbsp=3B&n=
bsp; =41=75=64=69oStreaming Endpo=69nt Des=63ripto=72=3A<o:=70=3E=3C/=6F:=70=
=3E<=2Fsp=61n=3E=3C/=70>
=3C=70 cla=73s=3D"=4Dso=4E=6Frm=61l"><sp=61=6E =73t=79le=3D=22font-=73=69z=65:=
10.=30pt=3Bf=6F=6E=74=2D=66a=6D=69=6Cy:&qu=6Ft=3BA=72=69al&qu=6Ft;,sans-=73er=
=69f;c=6Flor:bla=63k=22>&nbs=70=3B&=6Ebsp;=26=6Ebsp;&n=62s=70=3B=26=6Eb=73=70;=
&nbs=70;=26nbsp;&nbsp=3B=26nbsp; bL=65ngth&nbsp;=26=6Ebs=70;=26=6Ebsp;&n=62=73=
=70=3B=26nbsp=3B&=6Ebs=70;=26n=62s=70;&nb=73=70=3B&nb=73p=3B=26n=62s=70;&n=62=
=73=70;=26=6E=62=73=70=3B&=6Ebsp;&n=62s=70;=26=6E=62sp;&n=62s=70; =37=3C=6F:p>=
</=6F=3Ap=3E<=2Fs=70a=6E>=3C/=70=3E
=3Cp =63=6C=61s=73=3D"=4D=73=6F=4E=6Frm=61l=22><=73=70an style=3D"=66ont-size=
=3A10.0pt=3Bf=6Fnt=2Dfam=69ly=3A&=71=75o=74=3BA=72ial=26q=75ot;,=73ans-seri=66=
;c=6Flor=3Ablack=22>&nbsp;&nbsp;=26nbsp=3B&=6Ebs=70;&nbsp;&=6Ebsp;&nbsp;=26=6E=
=62sp;&nbs=70; bDe=73cri=70torT=79pe&n=62=73=70=3B&nbsp=3B&nbs=70=3B&nbs=70;&n=
=62sp;&nbsp;&nb=73p; =337<o:p>=3C/=6F:=70><=2F=73pan=3E<=2F=70=3E
=3Cp cl=61=73=73=3D=22Ms=6FNo=72m=61l=22>=3Cspan =73tyl=65=3D"=66=6Fn=74-=73=
=69=7A=65=3A10.0pt;=66ont-f=61mily:&quot;Ari=61l&=71u=6Ft;,sans-serif;=63=6F=
=6C=6Fr=3Ab=6Ca=63k"=3E&=6Ebsp=3B&nbsp=3B&=6Ebsp;&n=62sp;&=6Ebsp;&nbsp;&=6E=62=
=73p;=26=6Eb=73p;&=6Eb=73p; b=44esc=72iptorSu=62type&nbsp=3B=26n=62sp;&nb=73p;=
&nbsp;&nbs=70=3B 1 =28EP=5FG=45NERAL=29<o:p>=3C/o=3Ap>=3C/spa=6E></p=3E
<p class=3D"M=73oN=6Frmal"><=73pa=6E =73ty=6Ce=3D"fo=6Et-=73iz=65:=310.0p=74;f=
o=6Et=2Dfami=6Cy=3A&=71=75o=74;=41r=69al=26quo=74=3B,s=61=6Es=2Ds=65ri=66;=63=
=6Flor=3Ablack=22=3E=26=6E=62s=70;&n=62s=70;&=6Ebs=70;=26nbsp=3B&n=62=73=70=3B=
&n=62sp;=26nbsp=3B=26nbsp;&n=62=73p; bmA=74t=72ibut=65s&=6Eb=73p=3B&n=62sp;&nb=
=73=70=3B&nbs=70;&nb=73p;&nb=73=70;&=6E=62s=70=3B&nbsp=3B =30=7801=3C=6F=3Ap><=
/=6F=3Ap=3E</sp=61=6E>=3C/p>
<p cl=61ss=3D"=4Ds=6F=4Eo=72m=61l=22><=73=70an =73t=79le=3D"=66ont-size=3A=310=
.=30=70=74;=66=6F=6E=74-fa=6D=69=6Cy:=26qu=6Ft=3B=41rial=26=71=75=6F=74;,s=61n=
s-s=65rif;colo=72:=62=6C=61=63k">&=6Ebs=70=3B&nbsp;=26=6Ebsp=3B&n=62sp;=26=6Eb=
sp=3B&n=62sp;&n=62=73p=3B&=6E=62=73=70;=26nbsp=3B&nbsp;&=6E=62sp=3B Samp=6Cing=
 =46=72=65que=6Ecy<o=3A=70></o=3Ap></=73p=61n>=3C=2Fp>
=3Cp class=3D"Mso=4E=6Frma=6C"=3E<s=70a=6E sty=6Ce=3D"font-si=7Ae:10.=30=70t=
=3B=66=6F=6E=74=2D=66amily:=26quot;Aria=6C&=71=75o=74;=2C=73an=73=2Dser=69f=3B=
=63olor:b=6Cack">&nbsp;&=6E=62sp;&nb=73=70;=26nbsp=3B&n=62=73p;=26n=62=73p;&nb=
sp=3B=26=6Ebsp=3B=26n=62sp; bL=6Fck=44e=6Cay=55=6Eits=26n=62sp=3B&n=62=73=70;&=
nb=73=70=3B&=6E=62=73p=3B&nbsp=3B=26nb=73=70;&nbs=70=3B&n=62sp; 0 Undef=69n=65=
d=3Co=3A=70>=3C/o=3A=70=3E</=73p=61n></p>
<p =63la=73s=3D"M=73=6FN=6Frm=61l">=3C=73p=61n sty=6C=65=3D"font-si=7A=65=3A1=
=30=2E=30=70t;fo=6Et-fa=6D=69ly=3A=26=71uo=74;=41ri=61=6C&=71uot;,s=61ns=2Ds=
=65=72if;=63olor:b=6Ca=63=6B"=3E=26nb=73=70=3B=26=6Eb=73=70;=26nbs=70;=26nbsp;=
=26n=62s=70=3B=26n=62s=70;=26=6Eb=73=70;&nb=73p;&nbs=70; =77Lo=63=6BDe=6C=61y&=
n=62sp;&n=62=73p;=26=6Ebsp;&nbs=70;=26=6E=62sp;&nb=73p;=26nbsp;&n=62=73p=3B 0x=
=30=300=30<=6F:=70=3E=3C/o:=70=3E</span>=3C/=70>
<p clas=73=3D"Mso=4Eor=6Dal"=3E<s=70a=6E sty=6Ce=3D=22=66ont-size:=310.0=70t;=
=66ont=2Dfa=6Di=6C=79=3A&=71=75ot=3BA=72=69al&=71uot;=2Csans=2Dseri=66;color=
=3Ablac=6B=22>Devi=63e =51u=61l=69=66=69er (fo=72 =6F=74h=65r =64evice =73p=65=
e=64=29:<o:=70=3E=3C/o=3Ap=3E</s=70a=6E>=3C=2Fp>
<p =63l=61ss=3D"MsoN=6F=72mal">=3Cspan styl=65=3D"fo=6E=74-s=69ze:10.=30pt=3Bf=
=6F=6E=74-fa=6Di=6Cy:&=71uo=74=3BAria=6C=26qu=6F=74;=2Csa=6E=73=2Ds=65r=69f;co=
=6Cor:=62lack">&n=62sp; =62=4Cen=67t=68=26=6E=62sp=3B&=6Ebsp;&=6Ebs=70;&=6E=62=
=73=70;&nbs=70; &n=62sp;&n=62sp=3B=26=6Ebs=70=3B&nbsp=3B&n=62=73p;=26n=62=73=
=70=3B&nb=73p;=26nb=73=70;=26=6Ebsp;=26=6E=62sp=3B10=3C=6F:p=3E=3C/=6F:p><=2Fs=
p=61n></p=3E
<p c=6Cass=3D"=4D=73o=4Eorm=61l"=3E=3Cs=70=61=6E =73=74y=6C=65=3D"f=6Fn=74-=73=
=69ze:=310=2E0=70t;=66=6F=6E=74=2Dfa=6Dily:=26=71u=6Ft;Ar=69a=6C=26q=75=6F=74;=
,s=61=6Es=2D=73=65rif;=63olo=72:bla=63=6B=22>&=6Ebsp; bDescrip=74=6Fr=54ype&nb=
sp=3B&=6E=62sp=3B&nbsp=3B&=6E=62=73p;=26nbsp;=26=6Ebsp;=26=6E=62=73p;&nbsp; 6<=
=6F=3A=70=3E=3C=2Fo:p><=2F=73pa=6E>=3C/p>
<p =63las=73=3D"MsoNo=72ma=6C">=3Csp=61n style=3D"f=6Fnt=2Dsi=7Ae:=310=2E=30p=
=74;fon=74-=66amil=79=3A&quo=74;=41rial=26qu=6F=74=3B,s=61ns-se=72if;=63olo=72=
=3Abla=63=6B=22=3E&nbsp=3B =62cdUSB&=6Ebs=70;&=6E=62sp;&n=62sp=3B&=6Ebsp;&nb=
=73=70=3B&nbsp;&=6Eb=73p=3B&nbsp;&nb=73p;=26nb=73=70=3B=26n=62=73p;&n=62=73=70=
=3B&nbs=70;&n=62s=70; =32.00<=6F:p>=3C/=6F:p=3E</s=70an=3E</p=3E
<p =63=6C=61=73s=3D"=4Ds=6FNo=72m=61l">=3Cspa=6E sty=6Ce=3D"f=6Fn=74=2Dsize:=
=31=30=2E0pt;=66on=74-fam=69ly=3A&quo=74=3BAr=69=61l=26quot;=2C=73a=6E=73-se=
=72i=66;=63=6Fl=6F=72:=62lack=22=3E=26=6Ebsp; =62Dev=69ceC=6Ca=73=73&nbsp;&n=
=62sp;&nb=73p;&nbs=70=3B&nb=73p;&nbsp=3B&=6Ebsp;&n=62sp;=26nbsp; =3239 Mis=63=
=65l=6Ca=6Eeous =44evi=63e<o=3A=70>=3C/o:p><=2F=73=70an>=3C/=70>
=3Cp clas=73=3D"M=73o=4E=6Fr=6Da=6C"=3E<s=70=61n =73tyle=3D"=66=6Fnt=2D=73=69z=
e=3A1=30.0pt=3Bfo=6E=74=2D=66a=6D=69ly=3A&quot;=41r=69al&quot=3B,sans-s=65rif=
=3B=63=6Flo=72=3A=62l=61=63=6B=22>&nbsp; bD=65vic=65Sub=43la=73s=26n=62s=70;=
=26n=62=73p=3B=26nbs=70;&n=62=73=70;&nbsp=3B=26n=62s=70=3B&=6E=62s=70;&nbsp; 2
<o:=70=3E</o:p>=3C=2Fspan=3E</p>
<=70 =63=6Ca=73=73=3D"Ms=6FNo=72mal=22><=73=70an st=79le=3D=22f=6Fnt-siz=65=3A=
=310=2E=30=70=74;f=6F=6Et=2Dfami=6Cy=3A&q=75ot;A=72i=61l=26=71=75ot;,sans-s=65=
rif=3Bco=6C=6F=72=3Abla=63k">&=6Eb=73p;=26n=62=73=70;bD=65vice=50ro=74ocol=26=
=6Eb=73=70=3B=26=6Eb=73p;=26n=62sp;&nbsp=3B=26n=62=73p;=26=6E=62sp=3B&n=62sp;&=
=6Eb=73=70=3B 1 Int=65r=66=61ce Asso=63iati=6Fn<o:p=3E</=6F=3Ap=3E</=73p=61n><=
=2F=70>
<p clas=73=3D"M=73=6FNorm=61=6C"><span sty=6Ce=3D"fon=74=2Dsi=7Ae=3A10.=30pt=
=3Bfont=2Dfamily:&=71uo=74;=41ri=61l&quo=74=3B=2Csan=73=2Dse=72i=66;co=6Co=72:=
bl=61ck">&nbs=70; bMaxPacket=53i=7A=650&nbs=70;&nbs=70;&nb=73p;&nbsp=3B&nbsp;&=
nbsp;&=6Eb=73p=3B 64<o=3A=70><=2F=6F:p>=3C/spa=6E></p>
<p cla=73s=3D"=4D=73=6F=4Eor=6Dal"=3E<=73pan st=79le=3D"f=6Fnt-size=3A10.=30=
=70=74;font-=66=61mil=79:=26=71=75ot=3B=41rial&qu=6Ft;,=73an=73-s=65rif;c=6Fl=
=6Fr:b=6Cack=22>&=6Ebsp; =62N=75=6D=43o=6E=66i=67=75=72=61t=69ons=26nbs=70=3B&=
=6Ebsp;&=6E=62=73p;=26=6Eb=73=70=3B&=6Eb=73p=3B 0<o:p></o=3Ap=3E=3C=2Fspan><=
=2F=70=3E
<p cl=61ss=3D"=4Dso=4Eo=72=6Da=6C">=3Cspan s=74yle=3D=22fon=74=2D=73iz=65:10.0=
=70t;=66=6F=6Et-=66amily=3A&qu=6Ft;Aria=6C&q=75=6Ft;=2C=73=61=6Es-s=65ri=66=3B=
color:=62la=63k">Dev=69ce =53t=61=74u=73:&=6Ebsp;&n=62sp=3B&=6Eb=73p;&=6Eb=73p=
; 0x=30000=3Co:p=3E=3C/o:p=3E</=73pan>=3C=2Fp>
=3C=70 class=3D"M=73o=4Eorma=6C"=3E=3Cs=70a=6E style=3D"font-size:10.=30=70t;f=
o=6E=74-fam=69=6C=79:&quot=3BAr=69al&quot;=2Csans-ser=69f=3Bco=6C=6Fr:=62=6C=
=61=63k=22>&nbsp; (Bu=73 =50ow=65red)<=6F:p=3E</=6F=3Ap=3E<=2Fs=70a=6E>=3C/p>
<=70 =63la=73s=3D"M=73oN=6F=72ma=6C=22=3E<o=3Ap=3E=26n=62sp;</o:p=3E=3C=2F=70>
</d=69=76>
<=2Fb=6Fd=79>
</html=3E
--_000_998466ecd0e445d6a2ccc564be53fe06ruvbkkde_--

--NoSpamProxy_61a6063f-33a9-4edc-938c-8e454a97c1c2
Content-Transfer-Encoding: BASE64
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Disposition: attachment; filename=smime.p7s

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGggheMMIIF
VDCCBDygAwIBAgIMc8CJR6qUEQcxdmoFMA0GCSqGSIb3DQEBCwUAMFsxCzAJBgNVBAYTAkJFMRkw
FwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJz
b25hbFNpZ24gMiBDQSAyMDIwMB4XDTIxMDIwMTA2MzExMVoXDTIyMDgxOTExMTIzMlowgZcxCzAJ
BgNVBAYTAkRFMQ8wDQYDVQQIEwZIZXNzZW4xEjAQBgNVBAcTCVdpZXNiYWRlbjEtMCsGA1UEChMk
UiArIFYgQmV0cmllYnNrcmFua2Vua2Fzc2UgV2llc2JhZGVuMRQwEgYDVQQDEwtNYWlsZ2F0ZXdh
eTEeMBwGCSqGSIb3DQEJARYPaW5mb0BydXYtYmtrLmRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAxFHQLS8qh+Vf9Zi8jRGvcSHM5SmVm1fb3bOa0B4IqLH4Mq5qdSN5XNEZ//eYWHMw
UVy8F4CtKXSfMWKif8MYEDcb6prUe3zMvdQpOgJRW1oiSrWME6hpbgrtXXtWit6nA60Moeeu+C0N
lh349mLotR/h7ojSUgh3MjeeHO+u5ghozAiEihlmrISntMC1456Lwc9GlzhwsrXSx/oxO7iQUVil
jEyK2MfTpFNTVfxqtSvzBOZV8nfQuYhXCwlu30IEF7sjje/fyFJumu9hegUhKdcgUA9G4bHKKOOs
jxZXrjGX7a1AEER7f8Yr33AkTJQeOf+azNdeQimjJ3uTxL4hTQIDAQABo4IB2TCCAdUwDgYDVR0P
AQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5n
bG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsG
AQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNh
MjAyMDBMBgNVHSAERTBDMEEGCSsGAQQBoDIBKDA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5n
bG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0
dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMBoG
A1UdEQQTMBGBD2luZm9AcnV2LWJray5kZTAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQw
HwYDVR0jBBgwFoAUljPR5lgXWzR1ioFWZNW+SN6hj88wHQYDVR0OBBYEFPLkNjH0BVXFcjfz02np
CqpZ6YUeMA0GCSqGSIb3DQEBCwUAA4IBAQCahetlJIbAxleQuuygtTvO040jsMhBBBvO7uPFjk8J
k3fla0cgxAJNOzUtdkIAnvO9qWd/o3ujw9I7Z09Vgwl0wBzcBgL/XyovgxxQzap4Uey3OebA9mIo
bJDyUGLZ9rQWQLF3QeKdxdJnIE3A8GLkdlOsq28LH1de9enedXzQXrrFhgqGC1SP1Fi1v4umDxeL
0KNCXGff1uR/wWOIg8sCdkLa2s8M2E7BDPaRUSVTzuE148dNmm0CzJpY6S99PrUmxy1iM47YD5nU
DgKD37RBzjHYLFMQz03Q/vPZtofQBUgvOgH5Y6JeLwCPjPKDcsAiCmPBbMJ5qm/X7BhjNjtfMIIF
VDCCBDygAwIBAgIMc8CJR6qUEQcxdmoFMA0GCSqGSIb3DQEBCwUAMFsxCzAJBgNVBAYTAkJFMRkw
FwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJz
b25hbFNpZ24gMiBDQSAyMDIwMB4XDTIxMDIwMTA2MzExMVoXDTIyMDgxOTExMTIzMlowgZcxCzAJ
BgNVBAYTAkRFMQ8wDQYDVQQIEwZIZXNzZW4xEjAQBgNVBAcTCVdpZXNiYWRlbjEtMCsGA1UEChMk
UiArIFYgQmV0cmllYnNrcmFua2Vua2Fzc2UgV2llc2JhZGVuMRQwEgYDVQQDEwtNYWlsZ2F0ZXdh
eTEeMBwGCSqGSIb3DQEJARYPaW5mb0BydXYtYmtrLmRlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAxFHQLS8qh+Vf9Zi8jRGvcSHM5SmVm1fb3bOa0B4IqLH4Mq5qdSN5XNEZ//eYWHMw
UVy8F4CtKXSfMWKif8MYEDcb6prUe3zMvdQpOgJRW1oiSrWME6hpbgrtXXtWit6nA60Moeeu+C0N
lh349mLotR/h7ojSUgh3MjeeHO+u5ghozAiEihlmrISntMC1456Lwc9GlzhwsrXSx/oxO7iQUVil
jEyK2MfTpFNTVfxqtSvzBOZV8nfQuYhXCwlu30IEF7sjje/fyFJumu9hegUhKdcgUA9G4bHKKOOs
jxZXrjGX7a1AEER7f8Yr33AkTJQeOf+azNdeQimjJ3uTxL4hTQIDAQABo4IB2TCCAdUwDgYDVR0P
AQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5n
bG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsG
AQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNh
MjAyMDBMBgNVHSAERTBDMEEGCSsGAQQBoDIBKDA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5n
bG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0
dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMBoG
A1UdEQQTMBGBD2luZm9AcnV2LWJray5kZTAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQw
HwYDVR0jBBgwFoAUljPR5lgXWzR1ioFWZNW+SN6hj88wHQYDVR0OBBYEFPLkNjH0BVXFcjfz02np
CqpZ6YUeMA0GCSqGSIb3DQEBCwUAA4IBAQCahetlJIbAxleQuuygtTvO040jsMhBBBvO7uPFjk8J
k3fla0cgxAJNOzUtdkIAnvO9qWd/o3ujw9I7Z09Vgwl0wBzcBgL/XyovgxxQzap4Uey3OebA9mIo
bJDyUGLZ9rQWQLF3QeKdxdJnIE3A8GLkdlOsq28LH1de9enedXzQXrrFhgqGC1SP1Fi1v4umDxeL
0KNCXGff1uR/wWOIg8sCdkLa2s8M2E7BDPaRUSVTzuE148dNmm0CzJpY6S99PrUmxy1iM47YD5nU
DgKD37RBzjHYLFMQz03Q/vPZtofQBUgvOgH5Y6JeLwCPjPKDcsAiCmPBbMJ5qm/X7BhjNjtfMIIF
DTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYDVQQLExdH
bG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UEAxMKR2xv
YmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYTAkJFMRkw
FwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJz
b25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvbCmXCcs
bZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4trVWO/EiX
fYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38eaqsXsipo
X1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1e6EKaaNa
NZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcHcHRg0prc
SzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGGMGAGA1Ud
JQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJKwYBBAGC
NxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB/wIBADAd
BgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSuTVD6Y5qL
3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9iYWxzaWdu
LmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2Fj
ZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5j
b20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEoCjA0MDIG
CCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzANBgkqhkiG
9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbfjBGdTptF
sXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX89/OXEZ1z
T7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ/oTd+4rg
iU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJjFoyms0d
0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCBE4wggM2oAMCAQICDQHu
Xxad/5c1K2Rl1mowDQYJKoZIhvcNAQELBQAwVzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
bFNpZ24gbnYtc2ExEDAOBgNVBAsTB1Jvb3QgQ0ExGzAZBgNVBAMTEkdsb2JhbFNpZ24gUm9vdCBD
QTAeFw0xODA5MTkwMDAwMDBaFw0yODAxMjgxMjAwMDBaMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24g
Um9vdCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMIIB
IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzCV2kHkGeCIW9cCDtoTKKJ79BXYRxa2IcvxG
AkPHsoqdBF8kyy5L4WCCRuFSqwyBR3Bs3WTR6/Usow+CPQwrrpfXthSGEHm7OxOAd4wI4UnSamIv
H176lmjfiSeVOJ8G1z7JyyZZDXPesMjpJg6DFcbvW4vSBGDKSaYo9mk79svIKJHlnYphVzesdBTc
dOA67nIvLpz70Lu/9T0A4QYz6IIrrlOmOhZzjN1BDiA6wLSnoemyT5AuMmDpV8u5BJJoaOU4JmB1
sp93/5EU764gSfytQBVI0QIxYRleuJfvrXe3ZJp6v1/BE++bYvsNbOBUaRapA9pu6YOTcXbGaYWC
FwIDAQABo4IBIjCCAR4wDgYDVR0PAQH/BAQDAgEGMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYE
FI/wS3+oLkUkrk1Q+mOai97i3Ru8MB8GA1UdIwQYMBaAFGB7ZhpFDZfKiVAvfQTNNKj//P1LMD0G
CCsGAQUFBwEBBDEwLzAtBggrBgEFBQcwAYYhaHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vcm9v
dHIxMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vcm9vdC5jcmww
RwYDVR0gBEAwPjA8BgRVHSAAMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24u
Y29tL3JlcG9zaXRvcnkvMA0GCSqGSIb3DQEBCwUAA4IBAQAjcOnP4r71Wa6UQm/EQzOqzT86uWQX
8mIGS0jxQIgGF6H+q9FfPMYz8vOO3R8dPswaYJmCC6zH/H6ahyqlfQ+mV+6sO2qF1t69QGP4rabI
iLAS/PZB3w8Jlx446lOfvgX0PurTn1ASdr4Ji8ILSH0eLlH2jVPTqx9AG4qO7X37T3lWcF8M044b
s6dwDTcrl5Wr2uASaxxAzsXHfu3CYljsd+1zIsKK9YZDiK3qE2792P5CL7l9Xq0Y75SQyj0nqyaU
mXXHy9N798pM069RIZJbhH0rnxU/dMtR6J6DDhZvG+dGziO9+eSii9I5a6p5HJEs4mEkLY4qSHCQ
xB7F6OBwMIIDdTCCAl2gAwIBAgILBAAAAAABFUtaw5QwDQYJKoZIhvcNAQEFBQAwVzELMAkGA1UE
BhMCQkUxGTAXBgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNVBAsTB1Jvb3QgQ0ExGzAZBgNV
BAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw05ODA5MDExMjAwMDBaFw0yODAxMjgxMjAwMDBaMFcx
CzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMRAwDgYDVQQLEwdSb290IENB
MRswGQYDVQQDExJHbG9iYWxTaWduIFJvb3QgQ0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQDaDuaZjc6j40+Kfvvxi4Mla+pIH/EqsLmVEQS98GPR4mdmzxzdzxtIK+6NiY6arymAZavp
xy0Sy6scTHAHoT0KMM0VjU/43dSMUBUc71DuxC73/OlS8pF94G3VNTCOXkNz8kHp1Wrjsok6Vjk4
bwY8iGlbKk3Fp1S4bInMm/k8yuX9ifUSPJJ4ltbcdG6TRGHRjcdGsnUOhugZitVtbNV4FpWi6cgK
OOvyJBNPc1STE4U6G7weNLWLBYy5d4ux2x8gkasJU26Qzns3dLlwR5EiUWMWea6xrkEmCMgZK9FG
qkjWZCrXgzT/LCrBbBlDSgeF59N89iFo7+ryUp9/k5DPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIB
BjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBRge2YaRQ2XyolQL30EzTSo//z9SzANBgkqhkiG
9w0BAQUFAAOCAQEA1nPnfE920I2/7LqivjTFKDK1fPxsnCwrvQmeU79rXqoRSLblCKOzyj1hTdNG
CbM+w6DjY1Ub8rrvrTnhQ7k4o+YviiY776BQVvnGCv04zcQLcFGUl5gE38NflNUVyRRBnMRddWQV
Df9VMOyGj/8N7yy5Y0b2qvzfvGn9LhJIZJrglfCm7ymPAbEVtQwdpf5pLGkkeB6zpxxxYu7KyJes
F12KwvhHhm4qxFYxldBniYUr+WymXUadDKqC5JlR3XC321Y9YeRq4VzW9v493kHMB65jUr9TU/Qr
6cf9tveCX4XSQRjbgbMEHMUfpIBvFSDJ3gyICh3WZlXi/EjJKSZp4DGAMIACAQEwazBbMQswCQYD
VQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBH
Q0MgUjMgUGVyc29uYWxTaWduIDIgQ0EgMjAyMAIMc8CJR6qUEQcxdmoFMA0GCWCGSAFlAwQCAQUA
oIICADAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMjA0MjkxMDM2
NThaMC8GCSqGSIb3DQEJBDEiBCBTN+1Zk1xlivyG72E3psVoXGCLqa1EHQ8Y5OiBrWTWzjB6Bgkr
BgEEAYI3EAQxbTBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEw
LwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgxzwIlHqpQR
BzF2agUwfAYLKoZIhvcNAQkQAgsxbaBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxT
aWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAy
MDIwAgxzwIlHqpQRBzF2agUwgZoGCSqGSIb3DQEJDzGBjDCBiTAKBggqhkiG9w0CBTAHBgUrDgMC
GjALBglghkgBZQMEAgEwCwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCAzAKBggqhkiG9w0DBzALBglg
hkgBZQMEAQIwCwYJYIZIAWUDBAEGMAsGCWCGSAFlAwQBFjALBglghkgBZQMEASowCwYJYIZIAWUD
BAEuMA0GCSqGSIb3DQEBAQUABIIBAATsI5LTm/NKw2IqtrmfmIng1vcwAw2iP28MLEEVv4JyEYfO
laxj2deF+SIb5Ib0CvY0j13TsC85o8PhTg57eXtG/DLm27/tttuqh3U7HRmyGlTbmbljAdVDkPQx
o3k4LJwy8ui7BqaPUwMkaTM9SbzXevEqD+fPK+dX/b05LT0920F2irxDm1D5aD3+G1+Itnfze2h9
Xt/uyEZ9WCHcPxvZHwUmJ1tmv8B9coqlABHhGrneGTgPJO5hsjkuwwC2kxVY33Gm+8gDS72Fk1cq
0R0TK44+eCyhrji4nw8jLELWrkJqIB0NlbFGgmYJym6rVc/H4T4Guqd1Qgg2ibatfuAAAAAAAAAA
AAAA
--NoSpamProxy_61a6063f-33a9-4edc-938c-8e454a97c1c2--



--===============0127103511887029398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0127103511887029398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============0127103511887029398==--


