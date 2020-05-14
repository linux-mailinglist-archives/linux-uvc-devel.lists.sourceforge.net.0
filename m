Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4F01D36AF
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 14 May 2020 18:41:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jZGum-000431-Cn; Thu, 14 May 2020 16:40:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fercerpav@gmail.com>) id 1jZGuk-00042t-Hm
 for linux-uvc-devel@lists.sourceforge.net; Thu, 14 May 2020 16:40:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ew27bJWgrLRVBQs3snC2Chvl+l2fnkxkoGX0m0ba7PU=; b=gYyMFV0dUn75eA60VA+sLBa+FS
 HhXcUOPCA9Cx9hNZTJWZhHev8VUGDWX5AjqMcGfsr4xQxtZQd7B8IqlGFj9hUVAtXXNF+sBSgM6WZ
 0aMVV6OxL8Yeh0oQtYQj9qTkcDXfesrn9TktyJ02tOL8Q7dVZ2LC1gy1ObkjC6nZQ/xM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ew27bJWgrLRVBQs3snC2Chvl+l2fnkxkoGX0m0ba7PU=; b=WUxkw+9CbGSbW9BU3qwmt/y/Sx
 jaC1xnvDM1rzN34zmMxPPtuRmuMB6Zk6fXeY3TxAnzQAXV+bNVv7+rDuZVYMrGvPn0oit5Bmach1P
 ntyf/WZvRR4qcW7xlQrka2PzG5E9wZVBMBnqIQbuPKqszTnThbyymvlbENDc6yKDVx+k=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jZGuh-00Flug-4z
 for linux-uvc-devel@lists.sourceforge.net; Thu, 14 May 2020 16:40:54 +0000
Received: by mail-lf1-f48.google.com with SMTP id h188so2455108lfd.7
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 14 May 2020 09:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ew27bJWgrLRVBQs3snC2Chvl+l2fnkxkoGX0m0ba7PU=;
 b=rB4jFRnm/ec+YLpulMZ5oCCAbe5qMigcJ6yIz8Vb6MPJ+sTFO8vqG1PS+eBq0VldRu
 /vK3llrnAKw2JL8bO01v7c9merqAwchQEACv9xh/LzX1ZsxZ/EOktpKA6mCenqzie0qy
 ADzLHAhtU3yMNl7i0aph97X3aKrGdtiGU4zjmO3AImaw0+sWooPUPjoB0az1qAJB8zN0
 5aFCX6vb3jA49iXYjUQvjlpNWcOe1ItCav73aUW273ZKagDnoeqa9pCp+FiQ6nAjvlyB
 nCYAvB7198XvEsMcrizXkm/GqyuRuf+5qULPgMBn3cA0bjze12VMoUFsYRjt8GtVi4EQ
 IEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ew27bJWgrLRVBQs3snC2Chvl+l2fnkxkoGX0m0ba7PU=;
 b=tXbJj1E0K8Hf2y1FExs5QMcmd7YnHc5figEfdQ1XAl6/EiP4Tql+mxjEeXWm2oJL/X
 1Kfw7DEfuXlaYcC2UXX5xrzGITWOQXm5NyBcm+Lwxc4UmXeUoRFWagXlF2MwKbEblzRJ
 vLzc17fMMg7ZAuQ7GuQyVz29qZD+sk20NYSql1dV0vi5uFSIMgw09COXLqZqKoIIfuLi
 j3AppDj5mHnc6exruW1bSV91Olywka/72Tu0AD5zWHw0SZH8TimN51iGGlTFu2wQQEGl
 TWDa8rFZghjK7HUKQ409gAnhGXgQMl50SR5iFzWZpA99Wy3aFyQER4mMXPe7qobErLe5
 7uaQ==
X-Gm-Message-State: AOAM531az29HakLvEHKtgKRGZK1NEwC40x+BQeLPXNKI5fRbVMX5/Q8X
 N9V7M6MjYHbvklCsViy8O/U=
X-Google-Smtp-Source: ABdhPJyKD5fw6miOl5IcJXX4uRdunls8sxmecrZxIBn8zCOwJBoQ1gkmFrmOFdVSDjgpgUtZCV8ptw==
X-Received: by 2002:a19:4b12:: with SMTP id y18mr3384616lfa.169.1589474444578; 
 Thu, 14 May 2020 09:40:44 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id g11sm1775905ljg.24.2020.05.14.09.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 09:40:43 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 04EGedw1029824; Thu, 14 May 2020 19:40:41 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 04EGedB7029823;
 Thu, 14 May 2020 19:40:39 +0300
Date: Thu, 14 May 2020 19:40:39 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Xavier Bestel <xavier.bestel@free.fr>
Message-ID: <20200514164038.GZ16976@home.paul.comp>
References: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fercerpav[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jZGuh-00Flug-4z
Subject: Re: [linux-uvc-devel] gspca_z3cxx: Failed to query (GET_CUR) UVC
 control 11 on unit 2
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

Hi,

On Thu, May 14, 2020 at 06:01:17PM +0200, Xavier Bestel wrote:
> but when I try to open it with "cheese" (the GNOME webcam app) it's not
> selectable, and I see these errors:

Probably cheese is UVC-only? Try "mplayer tv://" instead or any other
v4l2 application.

HTH
-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
