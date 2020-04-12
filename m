Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF37A1A5FC2
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 12 Apr 2020 20:25:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jNhIK-0007LC-Nu; Sun, 12 Apr 2020 18:25:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnaud@sphaero.org>) id 1jNhII-0007Kr-7c
 for linux-uvc-devel@lists.sourceforge.net; Sun, 12 Apr 2020 18:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nI2eFU53LhTG2xBokrZYnz5cFwX8H33z1x+qg1azOxw=; b=aOsIQQFPUEoPugOhm0U09ktjWq
 Ff2znRK4H5UxtfqtGd3PBqLCj8opFo+mhq/ogil8bJpqvglMift+rO651FH9rgXFbPSBhnv8/04tU
 lSbBeBYZOiDHSn/M0LmcYKmICIdz0YinbRqwn1rc98pCQ17kFJGESZ4CTafOstysHbWQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nI2eFU53LhTG2xBokrZYnz5cFwX8H33z1x+qg1azOxw=; b=Ml2wAdZ3cA3N0+WBEmwgOHxMqM
 xHOYefBA/fV7osxiu5qVRLTmrx+a4zVB3yIL1ycy4KEgezgoRoyOaKhUAccIWphip7nXqOND5ln2o
 lCBXrkfuDgR/z9a3IEV2jpEKuOku9iYgApFAbbwcsd2cec/nLDIPpo5NHUvAaU3zy0WY=;
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNhID-00D1LE-9U
 for linux-uvc-devel@lists.sourceforge.net; Sun, 12 Apr 2020 18:25:22 +0000
Received: from aloy.sphaero.org ([IPv6:2001:984:3b1f:0:a06e:76ff:fe2e:d0f4])
 by smtp-cloud8.xs4all.net with ESMTP
 id NhCFjRZCLlKa1NhCGj4Ytu; Sun, 12 Apr 2020 20:19:09 +0200
Received: from [192.168.18.104] (unknown [192.168.18.254])
 by aloy.sphaero.org (Postfix) with ESMTPSA id D739A8600B8
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun, 12 Apr 2020 18:19:07 +0000 (UTC)
To: linux-uvc-devel@lists.sourceforge.net
References: <1586556380.21178.7.camel@gmail.com>
 <CADPtnGNuWOViR1F-PbYu0fMCqh0p8kXRJQ0L+_kJYB3Wrao=yA@mail.gmail.com>
 <1586614037.21178.14.camel@gmail.com>
From: Arnaud Loonstra <arnaud@sphaero.org>
Message-ID: <9824eaa1-b13f-94dd-48ed-3ad144e5113b@sphaero.org>
Date: Sun, 12 Apr 2020 20:19:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1586614037.21178.14.camel@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfHkSKVqnKJZTHgCyhLEwNdVnHF5izC+8hjfwU4f+EMVlAZvFSr4yw/kNPhWoaowMS+mwApsfb56Ob1OGDpzcLIN83YLnD59m4fCdojiQQofXynbsDnjZ
 B8wYxRsgrlwQb+HrxRMtRk/Q8CmlxHA85g141GJOBjLJqzwKEvTl2aBEEVmfJbr+xHpixVLNK0l8Efrh9l9wjd/+rATcUVFyAANvmefnh0XuQFe6IdAUnTbZ
 ytCyjO3JA6FrQO+mN0o9lA==
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gmail.co]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jNhID-00D1LE-9U
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi Max,

I recently posted about a Chicony camera as well with similar symptoms. 
I finally installed Windows as well which also only had a black frame. 
The manufacturer is now convinced the camera is broken some how.

Rg,

Arnaud

On 11-04-2020 16:07, maximilian.zraunig@gmail.com wrote:
> Hi Alessandro,
> 
> thanks a lot for your quick reply and the hint - pushing all around the
> display frame didn't do the trick for me unfortunately.
> But it can well be that some connector inside got loose somehow.
> 
> I guess my next step would be getting my hands on a service manual for
> my notebook, open it up and follow the connection from board to camera
> sensor (though I am not sure if I can open the display frame - getting
> to the board and thus to the first important connection shouldn't be an
> issue).
> 
> Does anyone have any other suggestion before I begin? :)
> 
> Thanks & regards,
> Max
> 
> On Sat, 2020-04-11 at 12:20 +0200, Alessandro Govi wrote:
>> Hi Maximilian,
>> I had a similar problem to yours.
>> A netbook with internal webcam: it was recognized, also its "on"
>> light was on, but always black screen from every program with Ubuntu
>> 18.04.
>> I also tried older kernels, different settings, etc. No way.
>> At the end I found that it was... a MECHANICAL problem! :-)
>> Basically I pushed a bit with my fingers at the left and right of the
>> webcam and the image suddenly came while the program was giving only
>> black.
>> I pushed a little more and the image became perfect. For this reason
>> I don't think it was an electrical issue, but really a mechanical
>> one; maybe several open/close, open/close or some impacts made the
>> webcam move a littlep, but enough to give her bad focus and so on.
>> I'm curious, let me know if it was your case too.
>> A greeting from Italy.
>>
>> Alessandro
>>
>> Il giorno sab 11 apr 2020 alle ore 00:08 <maximilian.zraunig@gmail.co
>> m> ha scritto:
>>> Hi,
>>>
>>> I have a few years old Lenovo Notebook with an internal Chicony
>>> Electronics webcam which seems to be a UVC Devide but it's not in
>>> the
>>> supported devices list:
>>>
>>>           linux-1r6q:/home/max # lsusb -d 04f2:b2b6 -v | grep "14
>>> Video"
>>>           bFunctionClass         14 Video
>>>           bInterfaceClass        14 Video
>>>           bInterfaceClass        14 Video
>>>           bInterfaceClass        14 Video
>>>           bInterfaceClass        14 Video
>>>     can't get debug descriptor: Resource temporarily unavailable
>>>           bInterfaceClass        14 Video
>>>           bInterfaceClass        14 Video
>>>           bInterfaceClass        14 Video
>>>           bInterfaceClass        14 Video
>>>
>>> When starting guvcview the camera seems to be recognized - I can
>>> choose
>>> it as "Lenovo EasyCamera" in Video Controls.
>>> But I get only a black canvas from it - as well as within luvcview.
>>>
>>> Attached you can find my dmesg.log from trying to get a picture
>>> with
>>> luvcview as well as my webcam descriptors in lsusb.log.
>>>
>>> Any hints from anyone to get my cam running?
>>>
>>> Thanks & regards,
>>> Max_______________________________________________
>>> Linux-uvc-devel mailing list
>>> Linux-uvc-devel@lists.sourceforge.net
>>> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
> 
> 
> _______________________________________________
> Linux-uvc-devel mailing list
> Linux-uvc-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
> 


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
