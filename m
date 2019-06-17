Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D7C480BA
	for <lists+linux-uvc-devel@lfdr.de>; Mon, 17 Jun 2019 13:32:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hcps9-0007Vg-Rk; Mon, 17 Jun 2019 11:32:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kowaraj@gmail.com>) id 1hcps8-0007VF-6l
 for linux-uvc-devel@lists.sourceforge.net; Mon, 17 Jun 2019 11:32:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:Message-Id:Subject:Mime-Version:
 Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8w7HoD2x9vdl4CJhnb38APLyACW3d7BYObnAkJKjWUg=; b=fLu1dvsE6qiIddLPtRT0oObx97
 A3tLlF1g1in9Otk91OamX29EyfZ0GYBqhc3ocOvckBXFxms27UV2Dzne7MJ3CfDHwb90Wg/Kd9ptp
 B+Ij4hlVMLTUphpdkKTVu200J4FdfO3jpTt3PKD75Hq30v8PCio8qip6n7eukVDiV+Qw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Date:Message-Id:Subject:Mime-Version:Content-Type:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8w7HoD2x9vdl4CJhnb38APLyACW3d7BYObnAkJKjWUg=; b=J
 X1dyXXMpr0bw3bl/LZh6F/9/gJtnkVQH2M9QFHX+aVs9VkjYIhcAH+hYEcYFXNKRdDoPIvDkFhS77
 HBbQXPV5cw04S45U2esPqp8NSVu3dR971fEoFL9IBPhLs/23g482t2SmKayDFcghTTumbDzdGJDG7
 k/zFU9lpvzZD3n0c=;
Received: from mail-ed1-f49.google.com ([209.85.208.49])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hcps5-000wMH-EO
 for linux-uvc-devel@lists.sourceforge.net; Mon, 17 Jun 2019 11:32:23 +0000
Received: by mail-ed1-f49.google.com with SMTP id e3so15623733edr.10
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 17 Jun 2019 04:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:mime-version:subject:message-id:date:to;
 bh=8w7HoD2x9vdl4CJhnb38APLyACW3d7BYObnAkJKjWUg=;
 b=qJDGiqGMS18G8pUTS2NPWmSMl4EUDMoQMxEtc0ZSSh3Fwk6PMTHt7sgcaqk7gP8AIQ
 CL5slsyT9rYgjI472br575wbpInHzDxZnUcPYxx4atxwRzH5uKX0WXxV558y/njp1LHk
 N2PqotlMZIDSKGN8c5/wk8bxegcWOi+U3qOoJHqU5wNMVvv7lPECBWLoYsGTHy1e7FWZ
 ygj0ZcxdJrfAhH2boquq3ENS79cUG/GF3S9m5bhaTuXzdWTEWtv3e1T5mJZn2nlu0bmS
 2gXuDbk58di+Vc7+AbELxjyfIwBg/DRPaA9ssO24nBs0645BLyO0rfe9VV8NjmXm0958
 Ixmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=8w7HoD2x9vdl4CJhnb38APLyACW3d7BYObnAkJKjWUg=;
 b=m8n4MmQiBL/FvbRgWHtBejM+Nor+w1U7My1Zch4TOc3dqF96PkD+q/FGt4hqe9PPTB
 jz0ulZV+2gq8PvXx7EStfqeNiBvIJjkwZeQVdKDUFP9Uzj3bWZg++DIOZzR/Ed23zHVB
 p8NdqDJxm85bBGBWuiaauONB4DIzLlT2FpGcOc/JOxgg2WSncypGBDihMNlVyVRK5SDM
 qLYVeTANDURcQcbBNG9kZ72x/ahWH2IzQbShRafj6F88OyX9rKxSmkJif7/L8Ihu8j9t
 f6z3cHgkIR3PGx7BXxOu50PvDRDXUTRwPJknZ7aQIThBlh85Eht/GwBFRpDLJBiH0rwG
 EI4w==
X-Gm-Message-State: APjAAAWEsR9h7iGxY0Wm+5vqx4TtVS6le666ONvFIt4fD3PDTaRC5BDB
 QQMLu8xFOMARzo6RLRNmWlUxL+HHVaE=
X-Google-Smtp-Source: APXvYqwwSRsmwklKXmKmOWnWJGV5qjJ7YGBaioIBxdVU76Rb7hTua7AbMqPqESYSgTiAO2jC4voWAA==
X-Received: by 2002:a17:906:3756:: with SMTP id
 e22mr14443998ejc.72.1560771134623; 
 Mon, 17 Jun 2019 04:32:14 -0700 (PDT)
Received: from ams-usba2eth001.dyndns6.cern.ch ([2001:1458:202:6d::101:cdd0])
 by smtp.gmail.com with ESMTPSA id
 m3sm3489897edi.33.2019.06.17.04.32.13
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 04:32:14 -0700 (PDT)
From: Andrej Pashnin <kowaraj@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <65F49C97-C200-4BB1-A051-064575B9B729@gmail.com>
Date: Mon, 17 Jun 2019 13:33:15 +0200
To: linux-uvc-devel@lists.sourceforge.net
X-Mailer: Apple Mail (2.3273)
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kowaraj[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hcps5-000wMH-EO
Subject: [linux-uvc-devel] PAN+TILT for Logitech BCC950 ConferenceCam
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
Content-Type: multipart/mixed; boundary="===============6717144018163799495=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net


--===============6717144018163799495==
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_C4337F4B-FE04-4AF5-9896-1F2D51DFB5A8"


--Apple-Mail=_C4337F4B-FE04-4AF5-9896-1F2D51DFB5A8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Dear developers,=20

I would like to control (pan-tilt-zoom) the following conference camera:
> Bus 001 Device 005: ID 046d:0837 Logitech, Inc. BCC950 ConferenceCam
It's a PTZ (pan-tilt-zoom) camera and I can control all 3 parameters =
with a remote control device.

However, using the v4l2-ctr utility I can only change the ZOOM =
parameter. It doesn't contain neither PAN nor TILT in the list of =
controllable parameters.

Question #1.=20
Why?=20

Question #2.
Is it possible to add this options to the driver? I don't mind writing =
some linux kernel module if necessary. I just don't know where I should =
start.


I also know that it can be controlled programmatically with DirectShow =
under Windows.=20


Thank you in advance for any suggestions.

Cheers,=20
Andrey=

--Apple-Mail=_C4337F4B-FE04-4AF5-9896-1F2D51DFB5A8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">Dear developers,&nbsp;</div><div class=3D""><br=
 class=3D""></div><div class=3D"">I would like to control =
(pan-tilt-zoom) the following conference camera:</div><blockquote =
type=3D"cite" class=3D"">Bus 001 Device 005: ID 046d:0837 Logitech, Inc. =
BCC950 ConferenceCam</blockquote>It's a PTZ (pan-tilt-zoom) camera and I =
can control all 3 parameters with a remote control device.<div =
class=3D""><br class=3D""></div><div class=3D""><div class=3D"">However, =
using the&nbsp;<b class=3D"">v4l2-ctr</b>&nbsp;utility I can only change =
the ZOOM parameter. It doesn't contain neither PAN nor TILT in the list =
of controllable parameters.</div><div class=3D""><br class=3D""></div><div=
 class=3D""><b class=3D"">Question #1.&nbsp;</b></div><div =
class=3D"">Why?&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D""><b class=3D"">Question #2.</b></div><div class=3D"">Is it =
possible to add this options to the driver? I don't mind writing some =
linux kernel module if necessary. I just don't know where I should =
start.</div><div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D"">I also know that it can be controlled =
programmatically with DirectShow under Windows.&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Thank you in advance for any suggestions.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Cheers,&nbsp;</div><div =
class=3D"">Andrey</div></div></body></html>=

--Apple-Mail=_C4337F4B-FE04-4AF5-9896-1F2D51DFB5A8--


--===============6717144018163799495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6717144018163799495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6717144018163799495==--

