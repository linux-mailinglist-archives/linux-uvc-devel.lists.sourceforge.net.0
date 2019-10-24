Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 083FAE36FF
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 24 Oct 2019 17:49:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iNfMr-0004LS-O3; Thu, 24 Oct 2019 15:49:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <barsnick@gmx.net>) id 1iNfMq-0004LL-3w
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 15:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8vNjadNlxieDu0xvWXbK1hxR/sgy367FfjKUOKIzgpo=; b=f73LePfDI4zq9wyqyd/0ACpAFB
 b6jo/wVJjTYIrlEUVKdNCwZVDzW+0DMI6D3RGF7yI1q6dsPo5sZ2y1POxQyiCETtPghaX4JM+scON
 i6aaxU88IXUUG0Krm90ZYi9viK1BZOdCHIWy5jRbXeP8SQOSAdPa1pee/2+PMfEK/XEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8vNjadNlxieDu0xvWXbK1hxR/sgy367FfjKUOKIzgpo=; b=VAMAAO9H6FdZXRFqD2tOTdH/ZL
 b+uPE7D0WWVJpIBeEZeqRlpXZjfzgmCBb8ecPrlKF1fenQ9grrjqrS2pDrvwwBCc1fnovDPumQkj5
 ap9JMQLeKnVsqw+4bN7rpM7a3nZHSCVOchFWrMKaH6yYJGS0JOBiwu0mfTw/upbgkoeI=;
Received: from mout.gmx.net ([212.227.15.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iNfMn-001mfg-TN
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 15:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571932167;
 bh=8vNjadNlxieDu0xvWXbK1hxR/sgy367FfjKUOKIzgpo=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=hPwzYnELdlC2GqSG/9u4PeTd4iYAkOSg/98qEwh3F/q4o9ZMA0A4lngMytqUVCc1n
 fc80DFsvYxNjyc4wafyHqbTFWpED7JU4bgerMOkZ0WRhvJAah3YmS6mjGcj/Zcdp8Q
 S0iUUQHE2INqCFnsDGebJ9ywGGG6gjfBcTudPt8s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from sunshine.barsnick.net ([89.182.225.136]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MxDkw-1i3fe32pCq-00xXuj; Thu, 24 Oct 2019 17:49:27 +0200
Date: Thu, 24 Oct 2019 17:49:27 +0200
From: Moritz Barsnick <barsnick@gmx.net>
To: Linux UVC development discussions <linux-uvc-devel@lists.sourceforge.net>
Message-ID: <20191024154927.GD16006@sunshine.barsnick.net>
References: <CABWL1Pn0enp+FzXnK=-gk5xiYTB0naN3Qgv0yhHOVP-3cWOuGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABWL1Pn0enp+FzXnK=-gk5xiYTB0naN3Qgv0yhHOVP-3cWOuGg@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Provags-ID: V03:K1:4DT6ijetWbqa9S9ldgEU3eobc+TcQf6Gitv50yOy0fQXiuELR8g
 jaD/2WUSZwn2csnx4lCql1go8Vc55HKJjsMFG97YPD1phAA46fPqz5uJFBMP1eCWiFxH+t/
 6Qxb3fWAdhJM0QKzbCbf+VmL19WKYZe/7B4z/FvdyoyFLFkvHOWfet+BuHpALwH1teicwLO
 JHDHQNMG7KHEkDjm02yRw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A2CIfxDWI7E=:/Z1pCpvsMGnfnZYX4P1eMd
 rc1gzng2Te6J7tVDk3c7P5TXAO0M6HrD4ftpoPuOEkQnju02u1Iv+Yc+EymT13tGlp6RZWdHF
 12WZKQXUKzbisz5/pufl4uyXAXHjnfAC4NoydAfLvvDLtup9bgUmGQCltJiJuVraor77Q7f3T
 2hE3QO0GLMQO0DE/EJdI85A1ENcYbgUfJSx0dNaPHgN6E4EoizxIlWlKjhsZi4PcUTu/LG4CK
 iN1/8WMtcRmyL/0z6vDvO9aIe7+ZQBfOsRlC5CKWvB+w0gnxJs6FcURzVvgjTBsXfN/IDKf60
 t0P9fn2Bh+ST2XypUaXh2HC4moG7jBkoQuGm7/6hmaBiOFQPfrMvAozdHTKcM0GuWveBKIwHo
 WjTeyfQrQV9pZig96XFusfcy3zgEkO3zIadgxIcfD+lLbuYRTweCfjroc62d73ALLODbEFQzi
 K3FwGWFNSfchDRNUdo4WwTncDrIrnSLbUbm+eOqeqAgXlBGdixoYG8KQ9ZZEd2RnbkWSHbN+y
 Xbx5z6R3N0T/QO4Ss6Ld8HxoYkUT7SmxUhdETb7xHbrskT5fgDX9juMQjRcDsA6qMU8CWlGmM
 jOIJ6pWXm9fnEJef75jFcxqQYM6LIN9p+4L208Bx8hbZwCzwqlPwugSU4hit9WJiozpCBXGjA
 OacZniZuss0NUAFzzGwr8c5s1hrzsKhfdCE55h879OiWhImg4RcS1hBTs1ThbNlSEMMyw0AZz
 RK+IUf3yYmEmNTqF3B0nnSbzvF3IJzE10Yx0TRb+Dfc0eu9nrIBT68/F2P47ej3GsoBWtGQzS
 0rUoaxk0gitgcx6Spkixat3WIUDHTsMegfSIyf02rPDliKOGtvrf2I1QBjF1yQ14fT8qp9ATJ
 YutQWcpL2+ZYE8qxLRrVkBHSf8TVQUHfjZ00P++OJ2NqJCPmc0KIHaUDVuCS/w2rZ0Y/p0GWd
 XwqPOogrDhP0BLFMQve1+0oC+ARpcQoORqVBILVjcUFZTGTfkpIKWEIFKdPgJV86VXU4FUf/y
 E8OPBKglVKKEScc71jrS4YlXxhI7Oq4PKlg77USmWEbjcqWAmqOQKhPiB0IR6jOUojN0pgzJu
 b6FNC7PmAJP3KamtuWLH5kASCRyIc4AQ+5fggUzjJD68XCg6YfUMhgsNOL2RiTE/5RPReOi8X
 X2/HrM1gg+pHxXYEm0NIyQ1nxEMmogSK4Y6rJfntV4r5gE3wrpP/ZTEui7P4uFHldeLsHA3MU
 AkUTlqC8zrfz+goAOF1vZ5SMVFJuFdzOvyq/nXg==
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (barsnick[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iNfMn-001mfg-TN
Subject: Re: [linux-uvc-devel] webcam not supported yet or NOT UVC
 COMPATIBLE, PLEASE HELP ME
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

On Thu, Oct 24, 2019 at 12:41:07 -0300, Neuber Sousa wrote:
> What about my webcam its compatible with UVC ? or no?

Does it work, or not? That would be the best indicator.

> Below LSUSB -v command result:

http://www.ideasonboard.org/uvc/faq/

Please follow this hint:

"You should start with trying several applications. qv4l2, guvcview and
luvcview are common test tools for UVC webcams, but feel free to try
other V4L2 applications as well." Other applications may be camorama,
skype, cheese, gstreamer, ffmpeg, ...

And then there are several other commands in the FAQ for things to try
and information to gather.

And finally:
"Send a clear description of your problem, including the steps to reproduce
it [...]". I notice you haven't mentioned a problem yet.

Thanks,
Moritz


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
