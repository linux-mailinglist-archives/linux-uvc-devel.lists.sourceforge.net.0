Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 534931A6861
	for <lists+linux-uvc-devel@lfdr.de>; Mon, 13 Apr 2020 16:58:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jO0X2-0001lw-47; Mon, 13 Apr 2020 14:57:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maximilian.zraunig@gmail.com>) id 1jO0X0-0001lp-Rk
 for linux-uvc-devel@lists.sourceforge.net; Mon, 13 Apr 2020 14:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CtM2FS2PbwSfb/bfdpYFIA7aeKnwDTgyQ1fZr7Cylmc=; b=XoYWRWSGkQhHsyqa/O77qTIp/f
 Y4bvytCbRK7lad441pHdzr78UQjeWExK7jbuMsXpLSj/aPBOHuzLhkRqmV/jEYS9JKCusSwtuFg5r
 ZjZdscm4jORcV+70RPrFd7nNEjmjZyrHeibm1p9/nMYT4zxkUBhwoFCpQiuU66LeBR4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CtM2FS2PbwSfb/bfdpYFIA7aeKnwDTgyQ1fZr7Cylmc=; b=auUL52dh5gLKIeeeXnxxZLLny9
 sxhhfbX/PyxCA9IhS2Kd5bjxNduAVzItEtzB/ACOiwrYgDqrxWUDeaKbIpmnCOdibWWrBpCvwPAm+
 DZdC/FPY8jenqzwmelySDe4K1F03YaE1/Z8GkwTgvmwQvIltaRGweZLr/mPdq7KrF99U=;
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jO0Ww-00DgtZ-UG
 for linux-uvc-devel@lists.sourceforge.net; Mon, 13 Apr 2020 14:57:50 +0000
Received: by mail-wr1-f53.google.com with SMTP id d17so3534905wrg.11
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 13 Apr 2020 07:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:date:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CtM2FS2PbwSfb/bfdpYFIA7aeKnwDTgyQ1fZr7Cylmc=;
 b=vTC0KakM/jWwbCYt0FR+Xb5XLxf41KhxqXyL5om59craTHy+rAeM+1Bov8pA6cpzup
 MWHQFk2B16x75b2W+MvZT+HGiZ/dZC08sg/2yth/GvzBdWogLuqOC/SDeJnFoC1dMnFL
 eebqN4A1Js7ODD91NfQohYkdcQO0wsE7UbRqa/Kt6k4Q0HAhxzvygmLJ7TQ0eS2rfBwt
 wWAnbKF/ntqqnCpgYhyLJT39udC+vasiGldXTUIFTzNYoRcmb0yqAfLK8JaW6vmXyX/X
 b2ftmo4y54limMoYgaMBVNDRZa0VzMrAFuLcd/e57z7yotxIF1jGB4D/wY3euvDhxqDv
 HIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtM2FS2PbwSfb/bfdpYFIA7aeKnwDTgyQ1fZr7Cylmc=;
 b=Ubs4IFytUJVWQN4kmRl3mtMSOSLVFTVb6dtBLv/dTofdexZW+fzBxFsRXyEOqgy8qH
 N78rA84jxQlRfCNTzvSeDnGErGDUAueH2o8p/LrM9ogloiwOqGaGSfXv9crtr3ZgyHw4
 q5ugastWjFscxMclqpdvOKYQKnj7lp+gYmcUTrtdhejnvkmb8n18q5stp+WT0pWYlp4U
 uPlchOV35FxWiAIswboCJWJlC9k01OEzIxryqkasz2mgTWpyeiFka9O3vkzZEHqu9t/4
 ONjn74xP2LTnnRRL7K3zo4C5sWQ/aIbnkFZlQ6SWnpGMv7Y/3+AV49VwVhJlUctI271c
 /pIg==
X-Gm-Message-State: AGi0PubE77/Huyk9iPdILIrCXQGFeGferVD5BOqz9x2p7x91uyX24yeB
 qvCpKcOxABa9XmOKBupCt17+oaMAgQM=
X-Google-Smtp-Source: APiQypKab9eyyFzPb0A0rG6xeXscP1PceNkb/f0MEwHeqnug2K0kOseK/FfG2SFrcWvxI7FJvTkQfQ==
X-Received: by 2002:adf:f5c4:: with SMTP id k4mr9510963wrp.294.1586789860386; 
 Mon, 13 Apr 2020 07:57:40 -0700 (PDT)
Received: from
 2a02-8388-6081-cd00-8492-8466-02c2-1de4.cable.dynamic.v6.surfer.at
 (2a02-8388-6081-cd00-8492-8466-02c2-1de4.cable.dynamic.v6.surfer.at.
 [2a02:8388:6081:cd00:8492:8466:2c2:1de4])
 by smtp.gmail.com with ESMTPSA id w17sm6727078wru.20.2020.04.13.07.57.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 07:57:39 -0700 (PDT)
Message-ID: <1586789858.9159.2.camel@gmail.com>
From: maximilian.zraunig@gmail.com
To: Alessandro Govi <alessandro.govi@gmail.com>, 
 "linux-uvc-devel@lists.sourceforge.net"
 <linux-uvc-devel@lists.sourceforge.net>
Date: Mon, 13 Apr 2020 16:57:38 +0200
In-Reply-To: <1586614037.21178.14.camel@gmail.com>
References: <1586556380.21178.7.camel@gmail.com>
 <CADPtnGNuWOViR1F-PbYu0fMCqh0p8kXRJQ0L+_kJYB3Wrao=yA@mail.gmail.com>
 <1586614037.21178.14.camel@gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.53 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maximilian.zraunig[at]gmail.com)
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jO0Ww-00DgtZ-UG
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Dera all,

thanks again for any replies and hints - just so that nobody waits for
my report after opening my machine up ;) - I have decided not to do
that - instead I went with droidcam which works just fine for me!

Kind regards,
Max

On Sat, 2020-04-11 at 16:07 +0200, maximilian.zraunig@gmail.com wrote:
> Hi Alessandro,
> 
> thanks a lot for your quick reply and the hint - pushing all around
> the
> display frame didn't do the trick for me unfortunately.
> But it can well be that some connector inside got loose somehow.
> 
> I guess my next step would be getting my hands on a service manual
> for
> my notebook, open it up and follow the connection from board to
> camera
> sensor (though I am not sure if I can open the display frame -
> getting
> to the board and thus to the first important connection shouldn't be
> an
> issue).
> 
> Does anyone have any other suggestion before I begin? :)
> 
> Thanks & regards,
> Max
> 
> On Sat, 2020-04-11 at 12:20 +0200, Alessandro Govi wrote:
> > Hi Maximilian,
> > I had a similar problem to yours.
> > A netbook with internal webcam: it was recognized, also its "on"
> > light was on, but always black screen from every program with
> > Ubuntu
> > 18.04.
> > I also tried older kernels, different settings, etc. No way.
> > At the end I found that it was... a MECHANICAL problem! :-)
> > Basically I pushed a bit with my fingers at the left and right of
> > the
> > webcam and the image suddenly came while the program was giving
> > only
> > black.
> > I pushed a little more and the image became perfect. For this
> > reason
> > I don't think it was an electrical issue, but really a mechanical
> > one; maybe several open/close, open/close or some impacts made the
> > webcam move a littlep, but enough to give her bad focus and so on.
> > I'm curious, let me know if it was your case too.
> > A greeting from Italy.
> > 
> > Alessandro
> > 
> > Il giorno sab 11 apr 2020 alle ore 00:08 <maximilian.zraunig@gmail.
> > co
> > m> ha scritto:
> > > Hi,
> > > 
> > > I have a few years old Lenovo Notebook with an internal Chicony
> > > Electronics webcam which seems to be a UVC Devide but it's not in
> > > the
> > > supported devices list:
> > > 
> > >          linux-1r6q:/home/max # lsusb -d 04f2:b2b6 -v | grep "14
> > > Video"
> > >          bFunctionClass         14 Video
> > >          bInterfaceClass        14 Video
> > >          bInterfaceClass        14 Video
> > >          bInterfaceClass        14 Video
> > >          bInterfaceClass        14 Video
> > >    can't get debug descriptor: Resource temporarily unavailable
> > >          bInterfaceClass        14 Video
> > >          bInterfaceClass        14 Video
> > >          bInterfaceClass        14 Video
> > >          bInterfaceClass        14 Video
> > > 
> > > When starting guvcview the camera seems to be recognized - I can
> > > choose
> > > it as "Lenovo EasyCamera" in Video Controls. 
> > > But I get only a black canvas from it - as well as within
> > > luvcview.
> > > 
> > > Attached you can find my dmesg.log from trying to get a picture
> > > with
> > > luvcview as well as my webcam descriptors in lsusb.log.
> > > 
> > > Any hints from anyone to get my cam running?
> > > 
> > > Thanks & regards,
> > > Max_______________________________________________
> > > Linux-uvc-devel mailing list
> > > Linux-uvc-devel@lists.sourceforge.net
> > > https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
