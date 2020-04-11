Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EB41A5274
	for <lists+linux-uvc-devel@lfdr.de>; Sat, 11 Apr 2020 16:07:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jNGnD-0008Ju-Rd; Sat, 11 Apr 2020 14:07:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maximilian.zraunig@gmail.com>) id 1jNGnD-0008Jm-6K
 for linux-uvc-devel@lists.sourceforge.net; Sat, 11 Apr 2020 14:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zIHm2b+066Duv/WhZ4jPw1b7rvyQ/hC+eV8XSfNzucI=; b=TbSSy2TYN1Flg392J6voboyREz
 xKu5JFJLhn5c2ap8GhCYXiQlo2jNmVwX/Q99elBoAJ3EFdm/Yipmm6q69Ym9UvEEHogxioU//UYWn
 8I+rM+anvj4hRMZaSneZsi1+r1vQ0r/9GHnaSkoIZ3fIpqtmSuOtuYqHkZ/rwFf9Cwxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zIHm2b+066Duv/WhZ4jPw1b7rvyQ/hC+eV8XSfNzucI=; b=jINVJQITvL5/duax5WWSPsy3W+
 yggUDecGb3S5Y4Mzmi001+mvxt70cHodQ0675RoByEzsccp7aTJZitXO7uZS0vX/Fv7/yeBvxCNhB
 ynWZBrbUmtNi4pKLt61JSw5EU7goM7yiEtCbYZvAIcm38G8eze5nMb6g8WfBX1uJcqe4=;
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jNGn9-00BZGy-Ap
 for linux-uvc-devel@lists.sourceforge.net; Sat, 11 Apr 2020 14:07:31 +0000
Received: by mail-wm1-f66.google.com with SMTP id a81so5377954wmf.5
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sat, 11 Apr 2020 07:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zIHm2b+066Duv/WhZ4jPw1b7rvyQ/hC+eV8XSfNzucI=;
 b=BzcGTqfoYc9AISywo82fQcniHoIyjjZkub5XNF9v6NSCtwl3ayS3fGbs6rIpTrvwAI
 aXN07eunXz7KXlmhgB/ozZTF80v6X/mKQwY6eVl14EbCR5Qy3NZxmT43jpQC3cqOSMU0
 f6mr4+Z36xYHSTP7I73q29YGg7Gi/zizHZGM05g+M6w9wqBpNDMnPV/arDdjuoXSE+ls
 aWhio/BW3ZcvXfUbaUoA8j1GXnNUbO4JQu7PQdOrZQgvHwXBw8Nu2oy35fI1Z5b6t+wG
 W/y43VFF00O9tFWWALzrklK9HfdnS+MRrCaoaQryO6vqcUlWBTpizX9FEVbTMqXAkG74
 vpQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zIHm2b+066Duv/WhZ4jPw1b7rvyQ/hC+eV8XSfNzucI=;
 b=r5rE3WyjnOoPTGrEcQgkOtF1v02NJQLBoVxhSGwvpA92V4dtQfwYqUrTIxVfbj+bTf
 AfjLdKTSAkpAa0qsotQ87+qGQJk+U+n28jKPz8p9+gTsoGUUiJ2WFZGP5IU+5ctWy7kb
 HIqLXWed8vMDoQ8hgd8oQxodAXRjpU3hHMnRH5q8WJ+ZLvUnl6f6aS+7YuTMxjNBIH58
 D5wiMfuYnupXRvNR3tl3t34IDsgEiyMzLhEcQ9mlECz6cVZsCA4QmUDdbJVXtBwIcWS4
 euiMqDS4RlKmrN2PxT+ySDaK3pkcxuY6nO5EZczTzp87JjW6usgNKNGxFE8grdjTFrKx
 SVEA==
X-Gm-Message-State: AGi0PuaLMwNSzIOHc56Hd8ZUCBR2F7TbErvTBvQm/fZ7DccwfJcwDxT5
 /2RJXcg3A5MGbxMBRzZqWS0=
X-Google-Smtp-Source: APiQypICzItLfjSnwQDA8l74ObS7D3R5RdCdsOId0rSAY4BXfHEolQKrV084dfP1cJga2RHbHmkudA==
X-Received: by 2002:a1c:9842:: with SMTP id a63mr9586789wme.23.1586614040750; 
 Sat, 11 Apr 2020 07:07:20 -0700 (PDT)
Received: from
 2a02-8388-6081-cd00-b107-2e0e-6d12-fc95.cable.dynamic.v6.surfer.at
 (2a02-8388-6081-cd00-b107-2e0e-6d12-fc95.cable.dynamic.v6.surfer.at.
 [2a02:8388:6081:cd00:b107:2e0e:6d12:fc95])
 by smtp.gmail.com with ESMTPSA id k8sm5311482wrm.52.2020.04.11.07.07.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 07:07:19 -0700 (PDT)
Message-ID: <1586614037.21178.14.camel@gmail.com>
From: maximilian.zraunig@gmail.com
To: Alessandro Govi <alessandro.govi@gmail.com>
Date: Sat, 11 Apr 2020 16:07:17 +0200
In-Reply-To: <CADPtnGNuWOViR1F-PbYu0fMCqh0p8kXRJQ0L+_kJYB3Wrao=yA@mail.gmail.com>
References: <1586556380.21178.7.camel@gmail.com>
 <CADPtnGNuWOViR1F-PbYu0fMCqh0p8kXRJQ0L+_kJYB3Wrao=yA@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gmail.co]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maximilian.zraunig[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.66 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jNGn9-00BZGy-Ap
Subject: Re: [linux-uvc-devel] Chicony Electronics Notebook Cam not supported
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
Cc: "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi Alessandro,

thanks a lot for your quick reply and the hint - pushing all around the
display frame didn't do the trick for me unfortunately.
But it can well be that some connector inside got loose somehow.

I guess my next step would be getting my hands on a service manual for
my notebook, open it up and follow the connection from board to camera
sensor (though I am not sure if I can open the display frame - getting
to the board and thus to the first important connection shouldn't be an
issue).

Does anyone have any other suggestion before I begin? :)

Thanks & regards,
Max

On Sat, 2020-04-11 at 12:20 +0200, Alessandro Govi wrote:
> Hi Maximilian,
> I had a similar problem to yours.
> A netbook with internal webcam: it was recognized, also its "on"
> light was on, but always black screen from every program with Ubuntu
> 18.04.
> I also tried older kernels, different settings, etc. No way.
> At the end I found that it was... a MECHANICAL problem! :-)
> Basically I pushed a bit with my fingers at the left and right of the
> webcam and the image suddenly came while the program was giving only
> black.
> I pushed a little more and the image became perfect. For this reason
> I don't think it was an electrical issue, but really a mechanical
> one; maybe several open/close, open/close or some impacts made the
> webcam move a littlep, but enough to give her bad focus and so on.
> I'm curious, let me know if it was your case too.
> A greeting from Italy.
> 
> Alessandro
> 
> Il giorno sab 11 apr 2020 alle ore 00:08 <maximilian.zraunig@gmail.co
> m> ha scritto:
> > Hi,
> > 
> > I have a few years old Lenovo Notebook with an internal Chicony
> > Electronics webcam which seems to be a UVC Devide but it's not in
> > the
> > supported devices list:
> > 
> >          linux-1r6q:/home/max # lsusb -d 04f2:b2b6 -v | grep "14
> > Video"
> >          bFunctionClass         14 Video
> >          bInterfaceClass        14 Video
> >          bInterfaceClass        14 Video
> >          bInterfaceClass        14 Video
> >          bInterfaceClass        14 Video
> >    can't get debug descriptor: Resource temporarily unavailable
> >          bInterfaceClass        14 Video
> >          bInterfaceClass        14 Video
> >          bInterfaceClass        14 Video
> >          bInterfaceClass        14 Video
> > 
> > When starting guvcview the camera seems to be recognized - I can
> > choose
> > it as "Lenovo EasyCamera" in Video Controls. 
> > But I get only a black canvas from it - as well as within luvcview.
> > 
> > Attached you can find my dmesg.log from trying to get a picture
> > with
> > luvcview as well as my webcam descriptors in lsusb.log.
> > 
> > Any hints from anyone to get my cam running?
> > 
> > Thanks & regards,
> > Max_______________________________________________
> > Linux-uvc-devel mailing list
> > Linux-uvc-devel@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
