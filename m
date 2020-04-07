Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 078DB1A074A
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  7 Apr 2020 08:30:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jLhkG-0003Ja-LK; Tue, 07 Apr 2020 06:30:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <marco.zoc@gmail.com>) id 1jLhkF-0003JS-Ih
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 Apr 2020 06:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H5z0FP8Pv3v0mv16w8W6LFi0pJKbWO5wWQIG0/6vMEU=; b=esI0RdhZ4Fd93AVhaFWRsByKB5
 LGV3wG7/vTEBUMdAizOX+3P+EWrVjvRBUXE7aRVmW0IxmoWM5jqDotAK8sQHml54vrWyiPu3F56Ct
 tEI7ImAdazhcDp/zUY776a6U20bw3MY1rBCQkJoJX8T7tI7OP6KfCr0+vxIOhO7YAXMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H5z0FP8Pv3v0mv16w8W6LFi0pJKbWO5wWQIG0/6vMEU=; b=n
 N2UaLEJrCLXs0T7n6h/h0PFjbVzcGauTZAd04vpQAXvR2bROfEBgWmiyZSl3EgXR8z2Uic/i8cMkR
 OYfiMiI3ZIbXy8i+7BwL/zJ4efaOqSIpBo3ww2lD7qz9CYx99d+jsA5nXmO5g7ScSaJrpIsq6eAOy
 fFPN79tAF17HmL2k=;
Received: from mail-io1-f49.google.com ([209.85.166.49])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLhkA-006B1n-Qi
 for linux-uvc-devel@lists.sourceforge.net; Tue, 07 Apr 2020 06:29:59 +0000
Received: by mail-io1-f49.google.com with SMTP id n10so2239279iom.3
 for <linux-uvc-devel@lists.sourceforge.net>;
 Mon, 06 Apr 2020 23:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=H5z0FP8Pv3v0mv16w8W6LFi0pJKbWO5wWQIG0/6vMEU=;
 b=WkiS2Z5smEdnPV7lce04cp5XqZXmlYVEjwhp+X1FmndP7xC/uAZ4nllUin5AlFy7Vh
 hdHKv+hSMsVHYaTp4G7VBgB1pIja0HPDocpmLq5DXTHe4C1EgGVt3VH0Yp4znFHys8xn
 AqYGr6EEn6qQ4WY/wRTa+yJMLBuAzg+puB764E64NE/hVAww8J0HzR85k3PEPDCu6O+Z
 do1K2dhX52x9nVwfwpPYMrK6e0ibPv2eNyoDzev17FFaF8Tm3PRJyvB0m4ao1bn5d1cl
 p8kpnOv0zgfXacQePTOyWHVOIatKVdvQGcJ/36Syl0ZO10Zxrg4NkLYFIVCnTPESooWd
 XYqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=H5z0FP8Pv3v0mv16w8W6LFi0pJKbWO5wWQIG0/6vMEU=;
 b=J7IqgDlxYH3Z625Py69zxD05VIZ9m8f7MQTQU1pQqXlx+VSoN8X0sU81VCpfo4mc4d
 FYqCNb0NCqtCbBxAaZgK7ZNZMz7d7Ue7CoWAbYbXzL3671gLZqXj42DLA5CRYwU9KZns
 HNCnqptI63SBxj+WGDQZXxB6wZeLzOxwJyYJnsjc7IpVJar+wU4qDbDYAFhLKqcKSBSu
 kU1r8aUCQ5+W7zm3LLxkdqqggsqyBwjiZWlzyOqxUUvSY0CEw8ol3J2TklIxneaWisH5
 m3CC1+qRLfW7RL24SsHF2eSypWGNPy6e85+pAH2uj+ID3lRcYtpd6Nscmb4uyFEiVM7j
 IdZQ==
X-Gm-Message-State: AGi0PuZkHZigCNRUKpDm69wfFIH6s+/HLN2MR4Ju62HUnCuMmQJHC+NS
 yGQjv93Rt5PCFJA1GZf+zLqmfK3uL9PT8YwxWu/x/G0XCV4=
X-Google-Smtp-Source: APiQypJSQbSochVFs53Ne/iXBeH9lzsB4Fq6OHukGzbcFNzc/9kPS6AWqjaqlgYZWiRCFrRwUBNFfRp1T9YaecRyUFU=
X-Received: by 2002:a02:7017:: with SMTP id f23mr526064jac.7.1586240988737;
 Mon, 06 Apr 2020 23:29:48 -0700 (PDT)
MIME-Version: 1.0
From: Marco Zoccolan <marco.zoc@gmail.com>
Date: Tue, 7 Apr 2020 08:29:39 +0200
Message-ID: <CAHaNs=KvCLtGnOBrPieBRaq63NczhRjL5VZQtKoZF7UUso719g@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (marco.zoc[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLhkA-006B1n-Qi
Subject: [linux-uvc-devel] Webcam USB20 0c45:627b not supported
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

I have a quite old USB 2.0 webcam which worked fine last time I
checked it (I used it on a windows 32 bit system) but which is not
listed as a known UVC device.

When connected the device is recognized:

[dom apr  5 13:11:47 2020] usb 1-1.1: new high-speed USB device number
7 using ehci-pci
[dom apr  5 13:11:47 2020] usb 1-1.1: New USB device found,
idVendor=0c45, idProduct=627b, bcdDevice= 1.00
[dom apr  5 13:11:47 2020] usb 1-1.1: New USB device strings: Mfr=0,
Product=1, SerialNumber=0
[dom apr  5 13:11:47 2020] usb 1-1.1: Product: USB20 Camera
[dom apr  5 13:11:47 2020] gspca_main: gspca_sn9c20x-2.14.0 probing 0c45:627b
[dom apr  5 13:11:47 2020] gspca_sn9c20x: OV7660 sensor detected
[dom apr  5 13:11:47 2020] input: gspca_sn9c20x as
/devices/pci0000:00/0000:00:1a.0/usb1/1-1/1-1.1/input/input37

There are other products from idVendor 0c45 supported but not this one.

I also notice some devices with OV7670 sensor in the supported devices list.

The webcam is stated as capable of VGA (640x480) video with framerate 30 fps.

Is there any chance to have it added in the supported device list?

Thanks in advance.


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
