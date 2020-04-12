Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D831A5F55
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 12 Apr 2020 18:29:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jNfTe-00039x-Nj; Sun, 12 Apr 2020 16:28:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <marco.zoc@gmail.com>) id 1jNfTd-00039q-In
 for linux-uvc-devel@lists.sourceforge.net; Sun, 12 Apr 2020 16:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X8mWKgOJxLetenN5WU59elmeqSxlPLnlqL0iQw4gGio=; b=ekMhO053UUsjMi/z1UJDm9gQsY
 c6GSXRBNBnbYw33n+T7dngeTz4/mpd3DZCE0JIiWg9abVn1Dk2X8jPVvDKM76HGA1ggT33oooJOL/
 VxASqOfj8o19y4cTHfcxR33ECJKcSGPJaKyWxYUHr0LUDSn0He5GTUvG2ix+r8DdtcSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X8mWKgOJxLetenN5WU59elmeqSxlPLnlqL0iQw4gGio=; b=cD0ZywJsy48VfKEFQHIpuugQ8F
 ZWPDSzSuynJwkp7IWOvf3QIWSjR6qWicYC9mLI1THsm+UR0E3SlT15N/vyUlSYVPT3LTNbI+ERvFE
 aN6PTCaLVBfgaxpmGK/1DH2S+g0W/LZaKKn9F+o9xX9CkPJcvlCAJZjAvizDomsx7pr8=;
Received: from mail-il1-f169.google.com ([209.85.166.169])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jNfTY-00Cv6d-Hy
 for linux-uvc-devel@lists.sourceforge.net; Sun, 12 Apr 2020 16:28:57 +0000
Received: by mail-il1-f169.google.com with SMTP id z12so6548719ilb.10
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun, 12 Apr 2020 09:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X8mWKgOJxLetenN5WU59elmeqSxlPLnlqL0iQw4gGio=;
 b=tuelXGFb5F1m0QtNCpRUQy76I+SLR4cLTwzNxrKJebg/vOynbkcTLK+w8aa7qqd1pu
 JVDXYNT6R8e6NZIyLXINAcXFYUNKaLWAjKM83V8sc95vB5X1GOSSjfhR7dLCQ20zSH7i
 tq4Tf6aPJZPjn2tXyGUH5PARacGtHhhnrEP2ohRdhGn9fbX2aW8E63HKU/lz5d1pCwvl
 pugZkZOCJf3pL2+FsL5DY+Tvd83bCO3kI/SSo+2E4mUs6psuuF+p+zWzFhe9tMM7V5wO
 /dJ29p51XlCEUciHnNlUpKFsn0idGcBMX4itQrvRU1icoObkrS59K9FlUMKIm2jd31ya
 g1pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X8mWKgOJxLetenN5WU59elmeqSxlPLnlqL0iQw4gGio=;
 b=SfM98AlE1x8krR56I1lVp8n/FjnbVmFS8zhOfWondXhATluPSFQz46/FYqVrE6jb4x
 jgNRBkZYXsBvLLc4Hov6/KWHcaRRTSBVbHYOKtYrtklGh19pVcOD9TgJT4H2DJ5TsaTg
 wGOSENt1KHJf497bi+ZvxY+oP3DTRX4LKnoZylOwIv6aWbvzDfmJ4riTXy1csDeIgMNw
 Em2EHpRTp+iavYVhKIgbnyykQb9ok/+KpoLkTL26WjHWsg0WdHiTwT1/cD+UZA+BW1Le
 WmipC4vtv4L5FeGoZIeJvzyw4lnZYjELbdXG/MMqC2WBTwUIrtFFawLGot30hZm/IRRM
 h4bg==
X-Gm-Message-State: AGi0PuZ/hpDqxUtmWTxdDhdvDl3U4He0bmcYa7+S/iZgvkj58nVeKRtz
 FruY28xYU+fKM7LT6jZ0RGd6qNvfEfJmqbiWFSo=
X-Google-Smtp-Source: APiQypKWdmYbnm9X4Q1fAzGRTorbp4CHqhVadIDxhMjXzFpnRA4Hh9ZETRhxjgZqjS1/BEzQXqBovbYN/q+n2UDOpDU=
X-Received: by 2002:a92:3ac4:: with SMTP id i65mr12779779ilf.247.1586708926817; 
 Sun, 12 Apr 2020 09:28:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAHaNs=KvCLtGnOBrPieBRaq63NczhRjL5VZQtKoZF7UUso719g@mail.gmail.com>
 <20200407075454.GU23797@home.paul.comp>
In-Reply-To: <20200407075454.GU23797@home.paul.comp>
From: Marco Zoccolan <marco.zoc@gmail.com>
Date: Sun, 12 Apr 2020 18:28:35 +0200
Message-ID: <CAHaNs=+VnZKFnavnjiSBvq1i-4UfcA6dMaRsyV5jG839XM4aRg@mail.gmail.com>
To: Paul Fertser <fercerpav@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.169 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (marco.zoc[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.169 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FREEMAIL_REPLY         From and body contain different freemails
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jNfTY-00Cv6d-Hy
Subject: Re: [linux-uvc-devel] Webcam USB20 0c45:627b not supported
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
Cc: linux-uvc-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

You're right! It's a pre-UVC device which is handled by the gspca driver.

It provides a compressed video so for some application I had to force
loading the compat library but there was no problem with the gspca
driver.

For example to have it recognised by cheese I had to launch:

LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libv4l/v4l2convert.so cheese

Other applications (i.e. VLC) does recognise the webcam without problems.

Thank you very much.

Il giorno mar 7 apr 2020 alle ore 09:54 Paul Fertser
<fercerpav@gmail.com> ha scritto:
>
> Hi,
>
> On Tue, Apr 07, 2020 at 08:29:39AM +0200, Marco Zoccolan wrote:
> > [dom apr  5 13:11:47 2020] usb 1-1.1: Product: USB20 Camera
> > [dom apr  5 13:11:47 2020] gspca_main: gspca_sn9c20x-2.14.0 probing 0c45:627b
> > [dom apr  5 13:11:47 2020] gspca_sn9c20x: OV7660 sensor detected
>
> So it's actually not a UVC device, but something handled by the gspca
> driver.
>
> > Is there any chance to have it added in the supported device list?
>
> Not to the UVC's. Are there any errors in dmesg though, it doesn't
> look like gspca complains about anything from your paste.
>
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
