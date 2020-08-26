Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD0A2535F6
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 26 Aug 2020 19:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:In-Reply-To:MIME-Version:Cc:To:
	Date:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=cf6Ng94MdWNdShgUqhu/wrWmfeEXqSgBmqCOkYjbhJk=; b=KoKWR+yV2XURsD2k1PHyK0HQ3
	9cdfL9oT4BAOxE2/+zAuWcQcVh1s+ds0i11eN5i3gr+gFl5e/8eLWE1/Xxes59VlIG1cjcJ9YnUjd
	z3T+k+0RdCYF5dhH90aZ5bjaed5GwfmmYJS49HAozKGZA1HnVL5XaqVnO5klN9Fj8Csx0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1kAzAC-0000c7-1d; Wed, 26 Aug 2020 17:24:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ostroffjh@aya.yale.edu>) id 1kAzAA-0000bm-QZ
 for linux-uvc-devel@lists.sourceforge.net; Wed, 26 Aug 2020 17:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-Id:
 In-Reply-To:MIME-Version:Cc:To:Subject:Reply-To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVPrmPbVj34599g8t7rE693q6WkOs69tnyg7PAt+dGA=; b=T9JvfXJ8/mNboy5TrHlJu18FDg
 Tq3ET8LuNEqHKHF1Kt+OF59qH4NEGRVp6zVnJOo+Iuh84+H9mr4rwZ9UAfJQ4UDsrCCyhAg67+/4q
 l4tUFSTf5J0lJKYgTNOcZmZvYFyi3qeocGWOIW7FJhrsDfriVQ1DZnO4GQuA8KLqvtzU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-Id:In-Reply-To:
 MIME-Version:Cc:To:Subject:Reply-To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVPrmPbVj34599g8t7rE693q6WkOs69tnyg7PAt+dGA=; b=BOY22bsb5IMXBSPZHWBQ2sWWgU
 sbkKCZld3CKwgXJLqxSKLfe8Jgvx3GCCh6ySQLp0i+Jdy+Qh8LfDQmbU/iJbu1T23m4fqs+oj2g/0
 3HNAvklsvcxM2K39968FOoBW0AbZHXMLFkYIb/VirN3E1JYdLfq0Gsr/AD+aCMH9Rb8k=;
Received: from mail-qv1-f46.google.com ([209.85.219.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kAzA6-001VGE-B3
 for linux-uvc-devel@lists.sourceforge.net; Wed, 26 Aug 2020 17:24:42 +0000
Received: by mail-qv1-f46.google.com with SMTP id x7so1095914qvi.5
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 26 Aug 2020 10:24:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:reply-to:subject:to:cc:mime-version
 :in-reply-to:message-id:content-disposition
 :content-transfer-encoding;
 bh=hVPrmPbVj34599g8t7rE693q6WkOs69tnyg7PAt+dGA=;
 b=iA1eilD0HocyXGoRpaQ/0FZ88vvX/J3rETkBbH6laj2TJ+s4Pceeozikh2gy+58yjF
 sQFushZvsSpXhsWgWyqVknzXg7c2KvlHllNbhkf8bPipKYcUqlzRBa/RJUwi8X2F83h5
 95tsPAkxBFNpps9LhdbP7rdq946pAmldtIUjrgMqphxy4o5qFAKixOMi9CHxk5SbzUiV
 6FnDXRNyMtZG0HnK03qlQoSXxUZq8lXuE5Dod852MGPqLMLq+d3DJHzcNiNxpdv6uAeB
 pTt1atr1CAla7rsga73NWAWCjHaUG98x8VfnITs8Xk7Buk1gFmUvvb1jF8JdV4dkSjqe
 1jWg==
X-Gm-Message-State: AOAM5334dvgI3Yl1AWIGNA63zDjHN0dCbgeb45sB0zG87mbcc73uH4l/
 b66AEwrxO4geIIQk6ivyYW6F6yg5/rEmkw==
X-Google-Smtp-Source: ABdhPJyMIYvL/nuwJhWkKCEtOIZREkDGEvnpwXaYdRRkTXDSDROFBKR0i66QKNnkXk71bDXOIExcQQ==
X-Received: by 2002:a0c:f849:: with SMTP id g9mr15172973qvo.80.1598462672392; 
 Wed, 26 Aug 2020 10:24:32 -0700 (PDT)
Received: from ffortso9 (c-76-23-130-96.hsd1.ct.comcast.net. [76.23.130.96])
 by smtp.gmail.com with ESMTPSA id y22sm2234913qkj.114.2020.08.26.10.24.31
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 10:24:31 -0700 (PDT)
Date: Wed, 26 Aug 2020 13:24:30 -0400
To: linux-uvc-devel@lists.sourceforge.net
Cc: 
MIME-Version: 1.0
In-Reply-To: <CE678B96-4476-4B2B-87F9-6D3552688C43@gmail.com>
X-Mailer: Balsa 2.6.1-97-g3159dec4e
Message-Id: <YD23ENBM.SSKL2JGV.HBNH5EOC@37X2XQCR.NNKKU76A.FRBMZAQ3>
Content-Disposition: inline
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.46 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kAzA6-001VGE-B3
Subject: Re: [linux-uvc-devel] Webcam on linux mint
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
From: Jack via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Jack <ostroffjh@users.sourceforge.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="Flowed"; DelSp="Yes"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Michael,

Welcome to Linux.

On 2020.08.26 10:03, Michael Issott wrote:
> I have a Microsoft LifeCam vx2000 webcam
> I've just moved from windows vista (yes I know) to Linux mint 20
> How can I get this webcam to work on the Linux system please
> I know little about Linux as yet but am learning slowly , so please  
> be gentle with me and don't talk above my head
> I'm 73 but not quite a Luddite
> Thanks
To get help,  you need to provide a bit more information.  If you have  
tracked your way to this list, I'll assume you have actually tried to  
use the camera and not succeeded.  In that case, you need to tell us  
what you have tried and what errors you have gotten.  Other useful  
information would be the output of running lsusb from a command prompt  
(Konsole or xterm, for example, depending on your Desktop  
Environment.)  What program have you tried to use the camera with?  Are  
there any errors or just that it says it can't find any camera.  It  
would also help if you could post what dmesg says right after plugging  
in the camera (defer that for now if you don't know what it is or how  
to get it.)  (In all cases, it's good for you to confirm or deny any  
assumptions we make, and to let us know if we do request something you  
don't know how to do.)

Jack (only 66)


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
