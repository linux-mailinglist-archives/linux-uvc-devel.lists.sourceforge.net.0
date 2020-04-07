Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 469C11A08BC
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  7 Apr 2020 09:55:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jLj4f-0001B4-0I; Tue, 07 Apr 2020 07:55:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fercerpav@gmail.com>) id 1jLj4d-0001Ap-MZ
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 Apr 2020 07:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9tjQNCCL671R6oYmIQoFJbcNBQt6psjzUDZ9c2yJTyg=; b=ewGUKzweRship4z5mzUWYjl7Ou
 B5ddIoZByAm95zTbkaBhWFZRoMsw4R5t6ZsCz10yHnH7n94gaeu69tNxVNXKinQKh92ri6YzKhODL
 ZKuJGMrA799M039VYN07sAytKjX2kppPLaVn4L0KePLHAUG4vifwx5s908dZ3U9YR7xE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9tjQNCCL671R6oYmIQoFJbcNBQt6psjzUDZ9c2yJTyg=; b=b23CBKfUfTqTCdfHOCovG+udHe
 4qs5D5cmasOwDnvQl9aF298LS8MaR9H3F7BuG75d38BGxQynB0XM9plNv8d8q/FduXRcMrM3XKW1V
 /DS1QLxOynAEean99ALc+wmoEsXSDjaM/GZjyPalyRld0+89HB8nZs6bsppDKkLHkNs8=;
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLj4b-006DZh-Oj
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 Apr 2020 07:55:07 +0000
Received: by mail-lj1-f179.google.com with SMTP id t17so2554993ljc.12
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 07 Apr 2020 00:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9tjQNCCL671R6oYmIQoFJbcNBQt6psjzUDZ9c2yJTyg=;
 b=gYMRaeXREyJ44ruRoYx/b02gvtdckptsc1czV2BDOQxIHSsOK5uEmzaNaVFlVW3FiC
 dqiC7xdUS2RxXBegxvDq6NG0LhPWD4+LpJjzG+RyIDNQI4Ayqop45zpKmsJQV4Ap+yvD
 Km/FEKQ18P4NRc8eDeIYa2RJhjOTfDyLeOLShyqtTsLedlFXcM+HXO31f8UAGb9omOU9
 f7TSP/dSPPxpP70YfR/eb7B2pQ2rx6neGwLK7P6zzJqT7+ezMYFBoIrUGj2IJfsH78KI
 83k7OIkYcsUhWFK/W/TT18EAI8FQa+muYzhAv7pIrq8EQKn+SLxce8pvQrBXInGRzF3b
 GIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9tjQNCCL671R6oYmIQoFJbcNBQt6psjzUDZ9c2yJTyg=;
 b=PaN+t2/F9WUBWw6rg6EjrnvbISyqinc3GBcaLyfHg3OpY8Y92VPdWUL6SmXf0Gd9k0
 LxLeEIYcHOEekVkDuJ2oZ1Ar3//J5OOp+12kDZQHaSlYBl4KUh+YZgaAGXb+InIZ31Cc
 iPfRPQq03lbgfQ0g0Ii2eCbTSRQicbFjdTn1/giLpj56ZjvpviDY0hFlCp29ynpxOOhl
 2AmQeDH0gBVoFHvChXLcESjBuTvP1ewTZc5z9XnvHRo9fp7eWJbw52qZTBiCRM8Fu4Nd
 cRac1WL1mYn8GNqwKAJsBLqXJPWFIOv2PlzaT59taSIyf9Q9CQEYosH+pyQ2zW0J9QSw
 Mj+A==
X-Gm-Message-State: AGi0PuYzlI/vXy7G/9mZvNhy9kTNIUS/4vckCSg5RAR9+ohiowJG5eJi
 tvBAzlbaPhuiqIm76lV2WeM=
X-Google-Smtp-Source: APiQypJfYWjNmfJCeCOavA8st87sYYaAY1x/MBXdBebpb3sUrshpoGIyRv3qP288divQjoPbOSMnhg==
X-Received: by 2002:a2e:8146:: with SMTP id t6mr893215ljg.236.1586246098960;
 Tue, 07 Apr 2020 00:54:58 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id v9sm11401673ljj.31.2020.04.07.00.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 00:54:58 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 0377stPB012577; Tue, 7 Apr 2020 10:54:56 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 0377stho012576;
 Tue, 7 Apr 2020 10:54:55 +0300
Date: Tue, 7 Apr 2020 10:54:55 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Marco Zoccolan <marco.zoc@gmail.com>
Message-ID: <20200407075454.GU23797@home.paul.comp>
References: <CAHaNs=KvCLtGnOBrPieBRaq63NczhRjL5VZQtKoZF7UUso719g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHaNs=KvCLtGnOBrPieBRaq63NczhRjL5VZQtKoZF7UUso719g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fercerpav[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLj4b-006DZh-Oj
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

Hi,

On Tue, Apr 07, 2020 at 08:29:39AM +0200, Marco Zoccolan wrote:
> [dom apr  5 13:11:47 2020] usb 1-1.1: Product: USB20 Camera
> [dom apr  5 13:11:47 2020] gspca_main: gspca_sn9c20x-2.14.0 probing 0c45:627b
> [dom apr  5 13:11:47 2020] gspca_sn9c20x: OV7660 sensor detected

So it's actually not a UVC device, but something handled by the gspca
driver.

> Is there any chance to have it added in the supported device list?

Not to the UVC's. Are there any errors in dmesg though, it doesn't
look like gspca complains about anything from your paste.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
