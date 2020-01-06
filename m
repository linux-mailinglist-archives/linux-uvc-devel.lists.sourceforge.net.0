Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4676D1315FA
	for <lists+linux-uvc-devel@lfdr.de>; Mon,  6 Jan 2020 17:24:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1ioVBG-0001PJ-Hf; Mon, 06 Jan 2020 16:24:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mandasx@gmail.com>) id 1ioVBE-0001P9-Ce
 for linux-uvc-devel@lists.sourceforge.net; Mon, 06 Jan 2020 16:24:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1sVXZLS9INV+sefq8EJ6YiC8jBwxKQoADwdwgiEm9oU=; b=eRkDi9F/Tf+aQl72dOBiQqvxqA
 Jfof1MStcslu+Lsr4hipWDlM6Oh7DQLQvFsPIypQlRSExLaRFqtiVJAQTniKSA6d1DOXNfHNMHoH+
 BayEro1+KWNbz1xYisNplYyzVnxA/yUU5zA/rt7EMnu5RGUAOKB5J4GwFJt174OmucUg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1sVXZLS9INV+sefq8EJ6YiC8jBwxKQoADwdwgiEm9oU=; b=O
 oDCteizetg2wLiHSo+uFNR6u9WdK4GVoe/kpEbrxrfGien4kTXvul0xl1nD0SDUzs/IZVqhGm9SEE
 Dt0zPGW4M6bGS/qXJYEuC8pZ1GZ0KP5mYie/sKor76Nvi9kAzXqJ5Qfd23IrtR+3shxDU+dKJP91Z
 SC+w3ITnFa+r3J0k=;
Received: from mail-qv1-f47.google.com ([209.85.219.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ioVB9-00CR11-Gy
 for linux-uvc-devel@lists.sourceforge.net; Mon, 06 Jan 2020 16:24:36 +0000
Received: by mail-qv1-f47.google.com with SMTP id x1so19243066qvr.8
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 06 Jan 2020 08:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=1sVXZLS9INV+sefq8EJ6YiC8jBwxKQoADwdwgiEm9oU=;
 b=CcxF5SXQzjMcKQLCJWcBSZPIAJO2KdRYvwt9NsYcfznTR03ZAvfFwPgrEhYYRADuKw
 TCLthDi19lfIdCKKk45BdEyIUnCpXFZxO295Nhxa4AwX7i9GDcHzQLEZG8ws0/TKQDtu
 x1BhhH477nC+dPt7i1uF0GJHwnjLFdaaIWF40aU3fF2leru68tZucUc2CVwbL/Ssqi2l
 e/Cneh4d23Hhif+11ogP9gEFiqq1+DNNr+06utexbL60i2twFtV/TtmtoqPaxs24zLOW
 j8p+mJb8HJojb2pQFlpGp6nR2/RuxnRlJgY3YDmJipPcGkRdmyPUxTWYdp21h2nGOtJL
 f7Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1sVXZLS9INV+sefq8EJ6YiC8jBwxKQoADwdwgiEm9oU=;
 b=sXzwn1MTmvMk6QcRNavPfIUzyS2K6JDXuWRz4DSn26AI72wzpulvR6AO548RDeIwwZ
 QTmQim2kp9RZ1kQSBQhfSWtaV2lZzuwrAlKTKafy85p8MgJvdSrnFELb19K3MF0Wydp/
 NUuupsbNfFCi+QuSABmTWH3yRcsbH0b0al+o1tfUEnF+f6dLBDAgmcwJbgWF1w76kaKm
 O9BNOQ4W2WuTLWuX+oAMYvI/QSVKCbIwr/IdAoWh5M54pig7c65x8xwSDGFU22JC9d2D
 HGJL/bf5DfT9IqxEi/pdPGEUGX5W7UvowuAYyrDv+ByLLNKPZdTTjyVl/1r+HNW0t9IF
 Yysw==
X-Gm-Message-State: APjAAAUZ3iy8VbVE/YEKitp1KuCFOTJXotTJH4pVhYqcheZ9M1VNYl5t
 XFkA1IoQOdtKDtEjYn7LowylnyAFIU2F9ifAXpyCwWGs
X-Google-Smtp-Source: APXvYqwLThU1njBDtXfgJbd9/tJfZgSiIkhsoAWG6AcCVvJAKgir9wSadWukF7oGxSSuEwTf//JVDr7UjREQJ/T/LwA=
X-Received: by 2002:a0c:c68a:: with SMTP id d10mr80793594qvj.126.1578327865249; 
 Mon, 06 Jan 2020 08:24:25 -0800 (PST)
MIME-Version: 1.0
From: Dimitris Mandalidis <mandasx@gmail.com>
Date: Mon, 6 Jan 2020 18:24:14 +0200
Message-ID: <CAE3YyDRG_iDnjzWBLzATRonV3Z2EeO6QwQgNeYAfMDiTpHSrXw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mandasx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ioVB9-00CR11-Gy
Subject: [linux-uvc-devel] Logitech C170 webcam
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
Content-Type: multipart/mixed; boundary="===============4672171083443604302=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============4672171083443604302==
Content-Type: multipart/alternative; boundary="000000000000bf6fd3059b7b17cb"

--000000000000bf6fd3059b7b17cb
Content-Type: text/plain; charset="UTF-8"

Hi,

This is to report that :

"ID 046d:082b Logitech, Inc. Webcam C170"

is supported by the uvc driver.

Default support comes with pretty low frame rate (device reportedly
supports 30gps). This can be worked around through:

/usr/bin/v4l2-ctl -c exposure_auto_priority=0 # if your device is
/dev/video0

or permanently through the following udev rule:

ACTION=="add", SUBSYSTEM=="video4linux", SUBSYSTEMS=="usb",
ATTRS{idVendor}=="046d", ATTRS{idProduct}=="082b", RUN+="/usr/bin/v4l2-ctl
-d /dev/%k -c exposure_auto_priority=0"

Kind regards,
Dimitris

--000000000000bf6fd3059b7b17cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>This is to report that :=C2=A0</div=
><div><br></div><div>&quot;ID 046d:082b Logitech, Inc. Webcam C170&quot;<br=
></div><div><br></div><div>is supported by the uvc driver.</div><div><br></=
div><div>Default support comes with pretty low frame rate (device reportedl=
y supports 30gps). This can be worked around through:</div><div><br></div><=
div>/usr/bin/v4l2-ctl -c exposure_auto_priority=3D0 # if your device is /de=
v/video0<br></div><div><br></div><div>or permanently through the following =
udev rule:</div><div><br></div><div>ACTION=3D=3D&quot;add&quot;, SUBSYSTEM=
=3D=3D&quot;video4linux&quot;, SUBSYSTEMS=3D=3D&quot;usb&quot;, ATTRS{idVen=
dor}=3D=3D&quot;046d&quot;, ATTRS{idProduct}=3D=3D&quot;082b&quot;, RUN+=3D=
&quot;/usr/bin/v4l2-ctl -d /dev/%k -c exposure_auto_priority=3D0&quot;<br><=
/div><div><br></div><div>Kind regards,</div><div>Dimitris</div><div><br></d=
iv><div><br></div><div><br></div></div>

--000000000000bf6fd3059b7b17cb--


--===============4672171083443604302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4672171083443604302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============4672171083443604302==--

