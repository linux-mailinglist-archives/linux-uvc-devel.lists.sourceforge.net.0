Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4BD220444
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 15 Jul 2020 07:13:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jvZjI-0005p8-Lg; Wed, 15 Jul 2020 05:13:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maurice194@gmail.com>) id 1jvZjI-0005p2-3I
 for linux-uvc-devel@lists.sourceforge.net; Wed, 15 Jul 2020 05:13:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yvt/ukbO1SssSwVuAz+gH8+WOIVzoQOyUqjs3QkBsCo=; b=RFy7gTBVk//GmQqyHkjupDL2fz
 BgErpupZxaSEYi4jhdujY25tyxz3bq7iVucBeZfYxxUemaK31ZAvnh7CdMuPZmnRLKHDytJ5L998r
 BmCY+rq8WcEWTvhUT99JFkNOQNcrvxhdmUlYajKon6DdRTGBFrFEm+4OUecAoh6W+JQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Yvt/ukbO1SssSwVuAz+gH8+WOIVzoQOyUqjs3QkBsCo=; b=c
 L2uXet9h5bjkFqQXD1g81342+1X7Iw8RRPHCwusHOJJVxek0cvmNQenYvlgLdSj80YoJjGKSHDBKP
 NIWRDmwpafgzK+4e1ndCmeLfN9EGYwZOxvd8CrHEPjP62+aZQoewMXjNipD+Xyzor5tpoGba6sQkE
 SGpADyG7xYaz6tOc=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jvZjF-008GO7-Vu
 for linux-uvc-devel@lists.sourceforge.net; Wed, 15 Jul 2020 05:13:16 +0000
Received: by mail-ot1-f44.google.com with SMTP id g37so515857otb.9
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 14 Jul 2020 22:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Yvt/ukbO1SssSwVuAz+gH8+WOIVzoQOyUqjs3QkBsCo=;
 b=EYwF06BUmNQ2OQqR8euixiaQb9u2D/BtKd30J5Ru6B4SrnfzcQBG59dP5bt51ivnfz
 fJRKPeW2hgCCCocYTiexZN3oQlIq5V0P6xoOjeTMO5QUYF+YKk6SOvHDRAO1FizeKdl+
 jp1YVGRbOc8jtWNWqNB4B8gxm3ibKXYhu2ALmtfjl83gXm3lFOo+s+auks/zjQsl3XXZ
 skT2pZCw6/9JA4UBEb79Irl9wXJVdEkdtnS6OW7WcXyB6GpQp4iuhnew80xzyq5Hf7ul
 Tf0hNjIjs04rLT2HFLNKcyEDBahQ8tOshm0vhAZ/OxdaHenDEmhdy7HM2UyzjHYiCOjm
 aW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Yvt/ukbO1SssSwVuAz+gH8+WOIVzoQOyUqjs3QkBsCo=;
 b=afgUPWECPB1JQc7OF/peBEHeLO5yrErgnAqkOdza1yI8vepNJKj5rby4jf6Qsj5XD7
 iqojH1YSnqMBrmS26nvcfPjXD8nycKCowc2nPcvroBtFnV7/G/67U3k2HN2hjeMoiBgx
 Mlv+MMp7n4tOdTY7mgtoeN8KNETp+Mfpy3PjVvphmiSYGQWzF9zPrQEV/KHeZvtwcDjU
 2EWlkJMXRNjp6xYshhGoq2VdjyFAoB4tU9UnxkyRSzTxOrXzrPdDJJ6Wyb2yZ+cpoN0n
 tJnnJmZG726gu80hsj3psrmVlrzuL3SD/heyZu0xeSxglP3B5au7xwt52+QjgUr6uNXQ
 DFoA==
X-Gm-Message-State: AOAM533NMQMUnlUY4F6dGE911fwPBWa0qcS8pN8K7ByW79AF2Kc9p+G8
 r03isjcQLSkmB6gBU+zoqygsCH5GwTLkrEj9r7Axx1KwhUw=
X-Google-Smtp-Source: ABdhPJz7keFTExvow6/r9hZO5j5QAN42B19zSyHMdc/0Vk7twuBgWqAJeVSK0wiTMIGji1kfIoeDOUY63BVdwrgdtus=
X-Received: by 2002:a9d:7352:: with SMTP id l18mr6665304otk.177.1594789987890; 
 Tue, 14 Jul 2020 22:13:07 -0700 (PDT)
MIME-Version: 1.0
From: Maurice Haeseleer <maurice194@gmail.com>
Date: Wed, 15 Jul 2020 07:13:39 +0200
Message-ID: <CANseDonC8H9iAYdoM5MRHUSHQ8Cif48-+Lqqvmaj4juj0A0=jA@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maurice194[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: csindustry1.free.fr]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (maurice194[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jvZjF-008GO7-Vu
Subject: [linux-uvc-devel] SQ11 VS C920 syslog
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
Content-Type: multipart/mixed; boundary="===============3400532133549565869=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============3400532133549565869==
Content-Type: multipart/alternative; boundary="000000000000b8386605aa73fac5"

--000000000000b8386605aa73fac5
Content-Type: text/plain; charset="UTF-8"

Hello,

Here belowyou will find SQ11 VS Logitech C920 syslog comparison.
SQ11 is lagging while C920 is fluid.

Could you please help ?

Thanks in advance,

Maurice

http://csindustry1.free.fr/SQ11/syslog_SQ11
http://csindustry1.free.fr/SQ11/syslog_C920

--000000000000b8386605aa73fac5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Here belowyou will find SQ11 VS =
Logitech C920 syslog comparison.</div><div>SQ11 is lagging while C920 is fl=
uid.</div><div><br></div><div>Could you please help ?</div><div><br></div><=
div>Thanks in advance,</div><div><br></div><div>Maurice</div><div><br></div=
><div><a href=3D"http://csindustry1.free.fr/SQ11/syslog_SQ11">http://csindu=
stry1.free.fr/SQ11/syslog_SQ11</a>=C2=A0</div><div><a href=3D"http://csindu=
stry1.free.fr/SQ11/syslog_C920">http://csindustry1.free.fr/SQ11/syslog_C920=
</a>=C2=A0=C2=A0<br></div></div>

--000000000000b8386605aa73fac5--


--===============3400532133549565869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3400532133549565869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============3400532133549565869==--

