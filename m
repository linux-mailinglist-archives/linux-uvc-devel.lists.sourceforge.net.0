Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B94293ED8
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 20 Oct 2020 16:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	MIME-Version:Message-ID:Date:To:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+yMoPtmahQCFHosK+ZRFIWxxymAvaHdp0RiXvOonCW8=; b=MiIWb717fkCXJwLgOe88hfn3ln
	2+Ss1HuglidxQGUQvoWG8jpuYEKOg7tFG9cSC5sIZD4ZJlwk3U/qWsWXCGz6a+/ahmmdPR6/oCXPT
	fLfGK6wc9LbSSF8U2u0si5RSq1kFGPQ1rzl8BJ/dZSxH9k5qWpzmZERkzX9bIfpfanFo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kUslF-00021D-OB; Tue, 20 Oct 2020 14:37:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <RyanE@envipco.com>) id 1kUslD-000210-LU
 for linux-uvc-devel@lists.sourceforge.net; Tue, 20 Oct 2020 14:37:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fU4KafqQZiohrteqkgRnUwBM2864120NV4+mFoQxGxo=; b=iH3SCchj4u+5AESTjJ/di3kK8H
 uc6FyPKxmd9wanbvXf97r4Iz6vOEhSXv8og1NbUnP0IbP9XMH2muAdkcAJJoQlzKnGcsQYEpjPUFf
 LZKaCzd0Bi+MewwX+gB6NrI7T20B80gPPLie3Xi5Bf+fhJBObdKhGSZ5HVeVTNbrZuxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fU4KafqQZiohrteqkgRnUwBM2864120NV4+mFoQxGxo=; b=C
 vDMyquOAhqBLdfdILh9wuTSsVR/8MfE7cQG7QgrVpwAy581eN+CiE7oAQ0ogULRv3TJaDGYNMOdXB
 O3vpYTuHLIk5UYsOkXGlDcNWOwUvTbrzZa2HhV7M/JUNzaqYpSd8n7aK/wTPTtgSr4bgSOpiwmeVm
 Skxl1IjeaZbKLaxo=;
Received: from mail.envipco.com ([50.225.14.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kUsl5-00HRAv-EV
 for linux-uvc-devel@lists.sourceforge.net; Tue, 20 Oct 2020 14:37:11 +0000
Received: from ENV-MAIL.ct.envipco.com (192.168.2.28) by
 ENV-MAIL.ct.envipco.com (192.168.2.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 20 Oct 2020 10:21:35 -0400
Received: from ENV-MAIL.ct.envipco.com ([::1]) by ENV-MAIL.ct.envipco.com
 ([::1]) with mapi id 15.01.1713.004; Tue, 20 Oct 2020 10:21:35 -0400
To: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Thread-Topic: absolute exposure reads as zero all the time
Thread-Index: AQHWpugUS7g2amG2o0a7G4miCrvleA==
Date: Tue, 20 Oct 2020 14:21:35 +0000
Message-ID: <3f0ccad6b00e41089d8b72ed925ba19a@envipco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.134]
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1kUsl5-00HRAv-EV
Subject: [linux-uvc-devel] absolute exposure reads as zero all the time
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
From: Ryan Esty via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Ryan Esty <RyanE@envipco.com>
Content-Type: multipart/mixed; boundary="===============5741723093823673346=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============5741723093823673346==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3f0ccad6b00e41089d8b72ed925ba19aenvipcocom_"

--_000_3f0ccad6b00e41089d8b72ed925ba19aenvipcocom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi uvc-devel list,


I'm upgrading one of my computers to the latest and greatest. This system i=
s using a camera "0403:602a Future Technology Devices International" specif=
ically and was working fine on an older kernel (4.4.8 specifically). When I=
 went to a modern version I lost the ability to read back exposure_absolute=
 from v4l2-ctl. Someone added a UVC_CTRL_FLAG_AUTO_UPDATE to UVC_CT_EXPOSUR=
E_TIME_ABSOLUTE_CONTROL commit 1ab8c3fc750321726313b222230343de897744b1. It=
 seemed to be a fix to an issue reading the exposure back when the camera s=
upports auto exposure. This change seemed to have broken my camera and I'm =
wondering if mine is the only one. My camera doesn't support any auto expos=
ure controls and I do not have another model that has no auto exposure cont=
rols.


Is there anyone on the list that has a camera with no automatic exposure co=
ntrols and is able to read back the absolute exposure after setting it? I'm=
 trying to figure out if only my camera has a problem or if this is a bug o=
n camera models with no auto exposure controls.

Ryan Esty

--_000_3f0ccad6b00e41089d8b72ed925ba19aenvipcocom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi uvc-devel list,</p>
<p><br>
</p>
<p>I'm upgrading one of my computers to the latest and greatest. This syste=
m is using a camera &quot;<span style=3D"font-size: 12pt;">0403:602a Future=
 Technology Devices International&quot; specifically and was working fine o=
n an older kernel (4.4.8 specifically). When
 I went to a modern version I lost the ability to read back exposure_absolu=
te from v4l2-ctl. Someone added a&nbsp;<span style=3D"font-family:monospace=
">UVC_CTRL_FLAG_AUTO_UPDATE to&nbsp;</span></span><span style=3D"font-famil=
y: monospace; font-size: 12pt;">UVC_CT_EXPOSURE_TIME_ABSOLUTE_CONTROL
 commit&nbsp;</span><span style=3D"font-family: monospace; font-size: 12pt;=
">1ab8c3fc750321726313b222230343de897744b1. It seemed to be a fix to an iss=
ue reading the exposure back when the camera supports auto exposure. This c=
hange seemed to have broken my camera and
 I'm wondering if mine is the only one.&nbsp;</span><span style=3D"font-siz=
e: 12pt; font-family: monospace;">My camera&nbsp;</span><span style=3D"font=
-size: 12pt; font-family: monospace;">doesn't support any&nbsp;</span><span=
 style=3D"font-size: 12pt; font-family: monospace;">auto
 exposure controls&nbsp;</span><span style=3D"font-size: 12pt; font-family:=
 monospace;">and I do not have another model that has no auto exposure cont=
rols</span><span style=3D"font-size: 12pt; font-family: monospace;">.</span=
></p>
<p><span style=3D"font-size: 12pt; font-family: monospace;"><br>
</span></p>
<p><font face=3D"monospace"><span style=3D"font-size: 12pt;">Is there&nbsp;=
anyone on the list that&nbsp;</span></font><font face=3D"monospace"><span s=
tyle=3D"font-size: 12pt;">has a camera with no automatic exposure controls =
and is able to read back the absolute exposure after
 setting it? I'm trying to figure out if only my camera has a problem or if=
 this is a bug on camera
</span>models<span style=3D"font-size: 12pt;">&nbsp;with no auto exposure c=
ontrols.</span></font></p>
<p><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p></p>
<p class=3D"MsoNormal"><a name=3D"_MailAutoSig" id=3D"LPNoLP"><span style=
=3D"">Ryan Esty</span></a></p>
<p></p>
</div>
</div>
</div>
</body>
</html>

--_000_3f0ccad6b00e41089d8b72ed925ba19aenvipcocom_--


--===============5741723093823673346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5741723093823673346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============5741723093823673346==--

