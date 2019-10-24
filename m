Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DA3E3AAD
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 24 Oct 2019 20:11:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iNha8-00024Y-OC; Thu, 24 Oct 2019 18:11:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jnpitt@uw.edu>) id 1iNha7-00024K-1j
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 18:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Elk4vzW59MQcG8K57b4BUZl9+SK4lW+csFEHBv14Qn8=; b=AkUR9Y4cZ4GRUm7zawPsXDe312
 PiyW4goC+rJDgcKacLwrwsbCrYtt1r+EONvIWVuzGbo3peParf2lcIqfPHdDJ/XQQ+oElRU+ubbji
 dBHPdTzKeXjfEdtOn7r9WOu/hheZACv7Os0vI3bUJBY81A3oYOr2LbVjjIdBe9Ofa9gQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Elk4vzW59MQcG8K57b4BUZl9+SK4lW+csFEHBv14Qn8=; b=I
 Bh9KsWDesa9cx80nCpyKbOFCNvy/233Loq7hzOMMztMTigO4lenrZV6J7BI7ZDuTTDdleAm9pC0UE
 e0SLUduGM39fOGakwl2Wtrlx5DJMEmnDn4/TrYY2ntCVjjEiDudmScPu/4xsgLVdpuTVfaHRUnFMy
 hktlusK/+uhhAWFE=;
Received: from mxout24.cac.washington.edu ([140.142.234.158])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNhZD-0026GC-7o
 for linux-uvc-devel@lists.sourceforge.net; Thu, 24 Oct 2019 18:10:57 +0000
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70])
 by mxout24.cac.washington.edu (8.14.4+UW14.03/8.14.4+UW16.03) with ESMTP id
 x9OI9AWZ009381
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-uvc-devel@lists.sourceforge.net>; Thu, 24 Oct 2019 11:09:11 -0700
Received: by mail-ua1-f70.google.com with SMTP id r39so3326163uad.3
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 24 Oct 2019 11:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Elk4vzW59MQcG8K57b4BUZl9+SK4lW+csFEHBv14Qn8=;
 b=i1RV25FRGl1AI3nBSwKyGLZB6F+p+NpreccBleuogckqGS9x3sLwBVdJzryJ8uOOlJ
 J12SGi8yMrWk0jH1MfbNfbJ35K2Pp4rv/DLU2s7y2LincC0HXsSpRyBHt173CXyMCLYc
 LsUF1KNYUmV2vEUIxiXdr0Clt1L7QkcCWG2swUknoWSOOJkrrLrfgrfBjnZy9vJw9Oqz
 YwuNlLpHeJv1DXbsy1iaIp9KzHn4q1Lwt+v4iEPib/ALhgODsUCuDd+4MPFv0A4saJsI
 jHGp1/npJW8ucfZvmRMPiBudeZkWwQFWmaX9To4S8Dr/syCQXiH2hR6Gy7Mg+jIRRdm0
 BHjQ==
X-Gm-Message-State: APjAAAVn5caqjpWQiJ3+BTHjbRzL0DUE3o3JvbXPXGrm30mprjyWU9E4
 cItwQN77v40sjQXkE1yXR67f7Vx4qMalgrcNarRbaSNwtCU75Z5VzC6PRNTZlhz335sGmY/sJXE
 FhID8ey0AJ2aVauZ9tyPHz4X6awPze9dJWrrjGcabg6GvvkMXigFgrdc1x1FoPYrwuaVcU6OOV7
 N3hg==
X-Received: by 2002:a67:ad0c:: with SMTP id t12mr9791694vsl.82.1571940550326; 
 Thu, 24 Oct 2019 11:09:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSSISLs4VLWrDGIR2dYoXn0a51TbbcZYGiCdNiuvTxRLO791rqtT7ea6EHsOtByAaDuWlsdzT8FQYcRMwhoWI=
X-Received: by 2002:a67:ad0c:: with SMTP id t12mr9791663vsl.82.1571940549919; 
 Thu, 24 Oct 2019 11:09:09 -0700 (PDT)
MIME-Version: 1.0
From: Jason Pitt <jnpitt@uw.edu>
Date: Thu, 24 Oct 2019 11:08:34 -0700
Message-ID: <CANcfARO_GNfogsYwKtFv86AT9J8BH79FDhsrswbPNDqtWUW7tg@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409,
 Antispam-Data: 2019.10.24.180017, AntiVirus-Engine: 5.68.0,
 AntiVirus-Data: 2019.10.24.5680002
X-PMX-Server: mxout24.cac.washington.edu
X-Sophos-SenderHistory: ip=209.85.222.70, fs=2448787, da=48390422, mc=17337,
 sc=4, hc=17333, sp=0, fso=38096817, re=5, sd=0, hd=30
X-Uwash-Spam: Gauge=IIIIIIII, Probability=8%, Report=
 HTML_NO_HTTP 0.1, BODYTEXTH_SIZE_10000_LESS 0, BODYTEXTP_SIZE_3000_LESS 0,
 BODY_SIZE_2000_2999 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0,
 DATE_TZ_NA 0, DQ_S_H 0, FROM_EDU_TLD 0, HREF_LABEL_TEXT_NO_URI 0,
 HREF_LABEL_TEXT_ONLY 0, HTML_BAD_EXTRAS 0, KNOWN_MTA_TFX 0, NO_URI_HTTPS 0,
 SPF_PASS 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, __ANY_URI 0, __BODY_TEXT_X4 0,
 __CP_MEDIA_BODY 0, __CT 0, __CTYPE_HAS_BOUNDARY 0, __CTYPE_MULTIPART 0,
 __CTYPE_MULTIPART_ALT 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0,
 __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0,
 __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_SC_1_P 0,
 __FUR_RDNS_GMAIL 0, __HAS_FROM 0, __HAS_HTML 0, __HAS_MSGID 0, __HELO_GMAIL 0,
 __HEX28_LC_BOUNDARY 0, __HIGHBITS 0, __HREF_LABEL_TEXT 0, __HTML_AHREF_TAG 0,
 __HTML_BAD_END 0, __HTML_BAD_START 0, __HTML_TAG_DIV 0, __MIME_HTML 0,
 __MIME_TEXT_H 0, 
 __MIME_TEXT_H1 0, __MIME_TEXT_H2 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0,
 __MIME_TEXT_P2 0, __MIME_VERSION 0, __MSGID_DOMAIN_NOT_IN_HDRS 0,
 __PHISH_SPEAR_SUBJ_ALERT 0, __RDNS_WEBMAIL 0, __SANE_MSGID 0,
 __SUBJ_ALPHA_END 0, __SUBJ_ALPHA_START 0, __TO_MALFORMED_2 0, __TO_NO_NAME 0,
 __URI_NO_WWW 0, __URI_NS , __X_GOOGLE_DKIM_SIGNATURE 0, __YOUTUBE_RCVD 0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1iNhZD-0026GC-7o
Subject: [linux-uvc-devel] select-timeout errors OpenCV
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
Content-Type: multipart/mixed; boundary="===============3594474749881543814=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============3594474749881543814==
Content-Type: multipart/alternative; boundary="000000000000161b230595abeef5"

--000000000000161b230595abeef5
Content-Type: text/plain; charset="UTF-8"

Hi-

I'm having issues with a webcam throwing select-timeout errors after
several days of image acquisition.

dmesg yields: [251952.411582] uvcvideo: Non-zero status (-71) in video
completion handler.

over and over and over

Would appreciate any help in getting this camera working more stably as
it's on a robotic system that needs to run for months at a time.

thanks
-J


-- 
/*
Jason Pitt PhD                                   206.616.1193
Kaeberlein Lab                                   jnpitt@uw.edu
University of Washington
Department of Pathology
Health Sciences Building                    Box 357470
1989 NE Pacific Street
Seattle, WA 98195
*/

--000000000000161b230595abeef5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi-</div><div><br></div><div>I&#39;m=
 having issues with a webcam throwing select-timeout errors after several d=
ays of image acquisition.</div><div><br></div><div>dmesg yields: [251952.41=
1582] uvcvideo: Non-zero status (-71) in video completion handler.</div><di=
v><br></div><div>over and over and over</div><div><br></div><div>Would appr=
eciate any help in getting this camera working more stably as it&#39;s on a=
 robotic system that needs to run for months at a time.<br></div><div><br><=
/div><div>thanks<br></div><div>-J<br></div><div><br></div><div><br>-- <br><=
div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">/*<br>Jason Pitt=
 PhD =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 206.616.1193<br>Kaeberlein=
 Lab =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span><span><a href=3D"mai=
lto:jnpitt@uw.edu" target=3D"_blank">jnpitt@uw.edu</a></span></span><br>Uni=
versity of Washington<br>Department of Pathology<br>Health Sciences Buildin=
g=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Box 357470<br>1989 NE Pacific St=
reet<br>Seattle, WA 98195<br>*/</div></div></div></div></div>

--000000000000161b230595abeef5--


--===============3594474749881543814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3594474749881543814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============3594474749881543814==--

