Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 800222A0F3C
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 30 Oct 2020 21:10:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kYajA-0001xA-EO; Fri, 30 Oct 2020 20:10:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <246tnt@gmail.com>) id 1kYaj8-0001x3-M0
 for linux-uvc-devel@lists.sourceforge.net; Fri, 30 Oct 2020 20:10:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=in0xRHPBcbYYOD1VGDQcDkLHcag4tCXpBxnXNTx/kRM=; b=CoJUKjlssdNzimWHyTMsFTEwX
 vdF9r0ivIZN9KyVfpZusUJue1zBYc8rSZsoYcZ63PIgXSZrgsB9XtEsVbX8v+tjIjZIp1Dpfw5gbb
 w4F5sGaVaqUHsc0twFvg4u7unZiP778abTvemmvx+pFEO8Psqt0S6JBT9H1BdwFV0aP1k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=in0xRHPBcbYYOD1VGDQcDkLHcag4tCXpBxnXNTx/kRM=; b=QgqZSYI2RV2dZsjQMkTJIMS7Ee
 R4IMA2Aj++Zln0pZgleNx2w/FxwyDP6mnE1MnQpDoKZvR7if/q1NTMHhH7vYXlSRDIIke9b4zTAdb
 tnQtToZBsjc5EA2Opbf+QwG7v5DL1J796uf6mBLSE1740cb0vU/BNLUvjuf/kpLFs+ts=;
Received: from mail-qv1-f44.google.com ([209.85.219.44])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kYaj6-00DONF-NS
 for linux-uvc-devel@lists.sourceforge.net; Fri, 30 Oct 2020 20:10:22 +0000
Received: by mail-qv1-f44.google.com with SMTP id cv1so3354178qvb.2
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 30 Oct 2020 13:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=in0xRHPBcbYYOD1VGDQcDkLHcag4tCXpBxnXNTx/kRM=;
 b=uy1RkqWTaxX4Na1dNYtEq5wVj5z3m3ZU5ToGKR/x0ZO5lBERbJVcn0qnJwKYsvDnw4
 pBW1A858K/fzWpugoqaAyD2N2vw0XPrwNA+5LUZkzUTU/h/Wl1HEsQIQzLlsbzpMiShn
 nHwlT3N5V+P/LdUId0St8MWrJN5DuVtAPFuiIZ6VJvkunKEzCbedby2NRKjaU4ZvzItG
 lpSbWuN1F865nGA93iSxqR1Lcdupbq0xxPnspJGFVaIG6sf6fdldojtmZqyFP9ZGECZq
 2ix3Dfa+OuMEqznKmdVXbS6xStr40uKUF9s/MeuvFgBgrq5YOrgCYRHKrry8h0HDwsYz
 86Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=in0xRHPBcbYYOD1VGDQcDkLHcag4tCXpBxnXNTx/kRM=;
 b=TYV4A7nQEVSjbaM/QXbwAdOLbaJp0ZFOevYJBRJnmcmDG8rDAQPqNTlBOh12oWbY4E
 1WtEBrDBDrzAcL6B5ORL14Nsd7NiWPKMOxbtZ+ZBMsYK3rgNBD54l5/l6ZW3TDAhcBDR
 0m4MaJPm9Bticp1nCInZYCKThLmEQw8K436BDa/22ZEVRsd+bpL/ME3pdxBO8Nih6xhr
 LEzfV/rOo2Y1+TnF7OMwO+HljaErVbruH0rKrqUcMZBrdIbtv/XmfFMfFSNsR2VcelBw
 prFjgMQu6WE7YkwUO4GwDwv978gFO58OpeC3Xl6OYChfgIr4EVyIftUTob/yE1wIzF5o
 9WpQ==
X-Gm-Message-State: AOAM53238SmgCTN1G1Y3FuXn+OMHrBnKXqT/RRtu9tPV3BfJZr909GBx
 hN1tWyhyKCijejraz5LUMYNUJeqSOHN0RttVYyhgTAgSIgA=
X-Google-Smtp-Source: ABdhPJxAS9YKCpgZoEpH+SbIqXcqf5el5QC5e4YNZR2q5fNsbdUnBtVI2bodENxiO+zF3kTP37T1cZyKV0CytsscDHQ=
X-Received: by 2002:a0c:c2ce:: with SMTP id c14mr11349866qvi.20.1604088613996; 
 Fri, 30 Oct 2020 13:10:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAHL+j0_AUpNb2u3k8XBDeV+-hrGmdx+L8hCr3U509Z6QDoKO_A@mail.gmail.com>
In-Reply-To: <CAHL+j0_AUpNb2u3k8XBDeV+-hrGmdx+L8hCr3U509Z6QDoKO_A@mail.gmail.com>
From: Sylvain Munaut <246tnt@gmail.com>
Date: Fri, 30 Oct 2020 21:10:00 +0100
Message-ID: <CAHL+j08pwhh3PRaSdxLVB2oSOizHuO7BtDsFn8WSpjEmeK4VNw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.6 FROM_STARTS_WITH_NUMS  From: starts with several numbers
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (246tnt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kYaj6-00DONF-NS
Subject: [linux-uvc-devel] Fwd: UVC output device with isochronous end point
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

Hi,

I was trying to build a UVC output device but got hit by :

"uvcvideo: Isochronous endpoints are not supported for video output devices."

Any reason for that limitation ? AFAICT the spec perfectly allows this.

Cheers,

    Sylvain


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
