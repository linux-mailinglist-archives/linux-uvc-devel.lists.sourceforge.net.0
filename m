Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1104D3246F8
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 24 Feb 2021 23:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/817L4sSRWeCFn4JFxKd8a+yGkuicVTbPsIKhXBhObo=; b=A0ri2rpuSSjzpTTn/0roaF9j9B
	pS5ca/FZc+3JmrNtf3+r/IuIyM6Dz0om1kWYkHaOyjS+S0gXHZyMf8g/yzZhVlB9N56rleQf5Cath
	7LKrvmsKk4Yui9vS6GufJf/b2auZWWrqmZ9lYeZircdAYLGwqzoIVGq18V8AapN4CqKk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1lF2ms-0003Tm-Lt; Wed, 24 Feb 2021 22:37:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ml@bokomoko.de>) id 1lF2mq-0003Tf-PN
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Feb 2021 22:37:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cat7eUIfa9IPg3PkmQZKvY+lUlCqfEcLPSJO+fJGvJI=; b=TiylX0SESnQ+xlfDSDTurcvvDv
 DFXUyYf3tpZudMpcLhB0pYgfoFaduYKoyzM0YaNTR/PYJg35RVK94qbr+17A+cFA8whrcDYQ3dsqN
 ubrydTq2iy8j7ari0b+/bU/18zNzcLYhoI7WLoY9WAVx1Rwa22aeGfBczapJf372SK/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cat7eUIfa9IPg3PkmQZKvY+lUlCqfEcLPSJO+fJGvJI=; b=g
 1IknohPvanhvSOAn13L+Ztmv/wt2vmfM21cHCu5J96HllrnEdA860p3DHa1qUB9Q4/AtnU8Wn6sFY
 l8SeRBHfwTivQfYj8hRF+8GTEz2lUG/ag3Y9K5YL9yZEHPnPx3yqet6WaLEPVJb2QY0NBWOXdJek3
 HkaR6fsh3/+hvF1Q=;
Received: from contabo.bokomoko.de ([95.111.247.246])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lF2mf-00006I-KB
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Feb 2021 22:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=bokomoko.de
 ; s=contabo;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID
 :Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cat7eUIfa9IPg3PkmQZKvY+lUlCqfEcLPSJO+fJGvJI=; b=aMxnRvMQ52JUJAhJdCRgDY7gmz
 lWeZoWZjJiPSWR6JjjxyBNKoX4+1fXhh162+ZJz2R32Lp2W8Arsfu/OguGAe0sP9SywPwvvsmKFvt
 cMA83sAWQtNq9LsC29B0dh86UTWb3Z+YBZ4PwW1An2mlUtGT34iKfDmDUIhf+n5bCFNdiVzYaYkAh
 baVCZLRezBoNZJcPx2LEPBw4icFaq8S30JPlUJs3zATFrkt5wZW8D6KkovazmChwIVsfMpUzWZ5Yv
 SzdNSb5ze9bZfhOa9RXmsB/x2dMnuIv6Ch+hp9uKo67/CAEK8i5SfcVhhn34bklXZhy8UQ9+hBkZ8
 mDtL1D4Q==;
Received: from [2a02:8070:898f:e400:1a31:bfff:fe52:1b1c] (helo=h370.localnet)
 by contabo.bokomoko.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ml@bokomoko.de>) id 1lF2U5-0001Id-32
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Feb 2021 23:18:17 +0100
To: linux-uvc-devel@lists.sourceforge.net
Date: Wed, 24 Feb 2021 23:18:16 +0100
Message-ID: <3476070.nnKX5im3bS@h370>
Organization: @home
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [95.111.247.246 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bokomoko.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lF2mf-00006I-KB
Subject: [linux-uvc-devel] USB Cam 1d6c:0103
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
From: Rainer Dorsch via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Rainer Dorsch <ml@bokomoko.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

Hi,

I have a new USB cam showing the issues below. I added all the reports shown 
in http://www.ideasonboard.org/uvc/faq/ if anything is missing, please let me 
know.

Any hint or idea on how to make the camera reliably work is very welcome.

Thanks
Rainer

dmesg entries:

[269095.515439] usb 1-8: new high-speed USB device number 7 using xhci_hcd 
[269095.665098] usb 1-8: New USB device found, idVendor=1d6c, idProduct=0103, 
bcdDevice= 0.10 
[269095.665100] usb 1-8: New USB device strings: Mfr=1, Product=2, 
SerialNumber=3 
[269095.665100] usb 1-8: Product: webcam 
[269095.665101] usb 1-8: Manufacturer: webcam 
[269095.665101] usb 1-8: SerialNumber: V011R007C001B005 
[269095.666244] uvcvideo: Found UVC 1.00 device webcam (1d6c:0103) 
[269095.668093] uvcvideo: Failed to query (129) UVC probe control : -32 (exp. 
26). 
[269095.668124] uvcvideo: Failed to initialize the device (-5). 
[269100.955724] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89 
[269106.080015] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89 
[269111.196308] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89 
[269112.058185] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89 
[269112.565290] usb 1-8: USB disconnect, device number 7 
[269112.565575] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89

echo 0xffff > /sys/module/uvcvideo/parameters/trace

[269095.515439] usb 1-8: new high-speed USB device number 7 using xhci_hcd
[269095.665098] usb 1-8: New USB device found, idVendor=1d6c, idProduct=0103, 
bcdDevice= 0.10
[269095.665100] usb 1-8: New USB device strings: Mfr=1, Product=2, 
SerialNumber=3
[269095.665100] usb 1-8: Product: webcam
[269095.665101] usb 1-8: Manufacturer: webcam
[269095.665101] usb 1-8: SerialNumber: V011R007C001B005
[269095.666244] uvcvideo: Found UVC 1.00 device webcam (1d6c:0103)
[269095.668093] uvcvideo: Failed to query (129) UVC probe control : -32 (exp. 
26).
[269095.668124] uvcvideo: Failed to initialize the device (-5).
[269100.955724] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89
[269106.080015] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89
[269111.196308] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89
[269112.058185] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89
[269112.565290] usb 1-8: USB disconnect, device number 7
[269112.565575] usb 1-8: 3:1: cannot set freq 48000 to ep 0x89
[269178.403619] usb 1-8: new high-speed USB device number 8 using xhci_hcd
[269178.557378] usb 1-8: New USB device found, idVendor=1d6c, idProduct=0103, 
bcdDevice= 0.10
[269178.557384] usb 1-8: New USB device strings: Mfr=1, Product=2, 
SerialNumber=3
[269178.557388] usb 1-8: Product: webcam
[269178.557391] usb 1-8: Manufacturer: webcam
[269178.557394] usb 1-8: SerialNumber: V011R007C001B005
[269178.558843] uvcvideo: Probing generic UVC device 8
[269178.559055] uvcvideo: Found format MJPEG.
[269178.559061] uvcvideo: - 1920x1080 (30.0 fps)
[269178.559064] uvcvideo: - 2560x1440 (30.0 fps)
[269178.559066] uvcvideo: - 320x240 (30.0 fps)
[269178.559069] uvcvideo: - 640x360 (30.0 fps)
[269178.559071] uvcvideo: - 640x480 (30.0 fps)
[269178.559073] uvcvideo: - 800x600 (30.0 fps)
[269178.559076] uvcvideo: - 960x720 (30.0 fps)
[269178.559078] uvcvideo: - 1024x576 (30.0 fps)
[269178.559080] uvcvideo: - 1280x720 (30.0 fps)
[269178.559083] uvcvideo: - 1920x1080 (30.0 fps)
[269178.559085] uvcvideo: - 2560x1440 (30.0 fps)
[269178.559087] uvcvideo: - 1920x1080 (30.0 fps)
[269178.559090] uvcvideo: Found format H.264.
[269178.559093] uvcvideo: - 1920x1080 (30.0 fps)
[269178.559095] uvcvideo: - 2560x1440 (30.0 fps)
[269178.559098] uvcvideo: - 320x240 (30.0 fps)
[269178.559100] uvcvideo: - 640x360 (30.0 fps)
[269178.559102] uvcvideo: - 640x480 (30.0 fps)
[269178.559105] uvcvideo: - 800x600 (30.0 fps)
[269178.559107] uvcvideo: - 960x720 (30.0 fps)
[269178.559109] uvcvideo: - 1024x576 (30.0 fps)
[269178.559112] uvcvideo: - 1280x720 (30.0 fps)
[269178.559114] uvcvideo: - 1920x1080 (30.0 fps)
[269178.559117] uvcvideo: - 2560x1440 (30.0 fps)
[269178.559119] uvcvideo: - 1920x1080 (30.0 fps)
[269178.559121] uvcvideo: Found format YUV 4:2:2 (YUYV).
[269178.559123] uvcvideo: - 1280x720 (30.0 fps)
[269178.559126] uvcvideo: - 320x240 (30.0 fps)
[269178.559128] uvcvideo: - 640x360 (30.0 fps)
[269178.559130] uvcvideo: - 800x600 (30.0 fps)
[269178.559133] uvcvideo: - 960x720 (30.0 fps)
[269178.559135] uvcvideo: - 1024x576 (30.0 fps)
[269178.559138] uvcvideo: - 1280x720 (30.0 fps)
[269178.559140] uvcvideo: - 1280x720 (30.0 fps)
[269178.559150] uvcvideo: Found a Status endpoint (addr 81).
[269178.559154] uvcvideo: Found UVC 1.00 device webcam (1d6c:0103)
[269178.559163] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/2 
to device 8 entity 1
[269178.559328] uvcvideo: Adding mapping 'Exposure, Auto' to control 
00000000-0000-0000-0000-000000000001/2.
[269178.559333] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/4 
to device 8 entity 1
[269178.559469] uvcvideo: Adding mapping 'Exposure (Absolute)' to control 
00000000-0000-0000-0000-000000000001/4.
[269178.559473] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/2 
to device 8 entity 2
[269178.559738] uvcvideo: Adding mapping 'Brightness' to control 
00000000-0000-0000-0000-000000000101/2.
[269178.559750] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/3 
to device 8 entity 2
[269178.559923] uvcvideo: Adding mapping 'Contrast' to control 
00000000-0000-0000-0000-000000000101/3.
[269178.559932] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/7 
to device 8 entity 2
[269178.560070] uvcvideo: Adding mapping 'Saturation' to control 
00000000-0000-0000-0000-000000000101/7.
[269178.560074] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/8 
to device 8 entity 2
[269178.560267] uvcvideo: Adding mapping 'Sharpness' to control 
00000000-0000-0000-0000-000000000101/8.
[269178.560274] uvcvideo: Added control 
00000000-0000-0000-0000-000000000101/10 to device 8 entity 2
[269178.560464] uvcvideo: Adding mapping 'White Balance Temperature' to 
control 00000000-0000-0000-0000-000000000101/10.
[269178.560471] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/4 
to device 8 entity 2
[269178.560801] uvcvideo: Adding mapping 'Gain' to control 
00000000-0000-0000-0000-000000000101/4.
[269178.560808] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/5 
to device 8 entity 2
[269178.561147] uvcvideo: Adding mapping 'Power Line Frequency' to control 
00000000-0000-0000-0000-000000000101/5.
[269178.561153] uvcvideo: Added control 
00000000-0000-0000-0000-000000000101/11 to device 8 entity 2
[269178.561346] uvcvideo: Adding mapping 'White Balance Temperature, Auto' to 
control 00000000-0000-0000-0000-000000000101/11.
[269178.561353] uvcvideo: Scanning UVC chain: OT 4 <- XU 3 <- PU 2 <- IT 1
[269178.561366] uvcvideo: Found a valid video chain (1 -> 4).
[269178.562460] input: webcam: HD 4MP WEBCAM as /devices/
pci0000:00/0000:00:14.0/usb1/1-8/1-8:1.0/input/input62
[269178.562617] uvcvideo: UVC device initialized.
[269188.790367] uvcvideo: uvc_v4l2_open
[269188.790419] uvcvideo: uvc_v4l2_release
[269188.794541] uvcvideo: uvc_v4l2_open
[269188.794551] uvcvideo: uvc_v4l2_release
[269188.794624] uvcvideo: uvc_v4l2_open
[269188.799446] uvcvideo: uvc_v4l2_open
[269188.799451] uvcvideo: uvc_v4l2_release
[269188.799486] uvcvideo: uvc_v4l2_open
[269189.312113] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269189.828209] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269190.336251] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269190.848206] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269191.364238] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269191.872313] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269192.388288] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269192.896443] uvcvideo: Failed to query (GET_DEF) UVC control 3 on unit 2: 
-110 (exp. 2).
[269193.408447] uvcvideo: Failed to query (GET_DEF) UVC control 3 on unit 2: 
-110 (exp. 2).
[269193.920430] uvcvideo: Failed to query (GET_DEF) UVC control 2 on unit 2: 
-110 (exp. 2).
[269194.432487] uvcvideo: Failed to query (GET_DEF) UVC control 3 on unit 2: 
-110 (exp. 2).
[269194.944701] uvcvideo: Failed to query (GET_DEF) UVC control 3 on unit 2: 
-110 (exp. 2).
[269195.456574] uvcvideo: Failed to query (GET_DEF) UVC control 7 on unit 2: 
-110 (exp. 2).
[269195.968666] uvcvideo: Failed to query (GET_DEF) UVC control 3 on unit 2: 
-110 (exp. 2).
[269196.480621] uvcvideo: Failed to query (GET_DEF) UVC control 3 on unit 2: 
-110 (exp. 2).
[269196.992778] uvcvideo: Failed to query (GET_DEF) UVC control 7 on unit 2: 
-110 (exp. 2).
[269197.504706] uvcvideo: Failed to query (GET_DEF) UVC control 7 on unit 2: 
-110 (exp. 2).
[269198.020733] uvcvideo: Failed to query (GET_DEF) UVC control 7 on unit 2: 
-110 (exp. 2).
[269198.528702] uvcvideo: Failed to query (GET_DEF) UVC control 7 on unit 2: 
-110 (exp. 2).
[269198.528786] uvcvideo: Control 0x00980903 not found.
[269198.528822] uvcvideo: Control 0x00980904 not found.
[269198.528831] uvcvideo: Control 0x00980905 not found.
[269198.528839] uvcvideo: Control 0x00980906 not found.
[269199.040763] uvcvideo: Failed to query (GET_DEF) UVC control 7 on unit 2: 
-110 (exp. 2).
[269199.040818] uvcvideo: Control 0x00980903 not found.
[269199.040827] uvcvideo: Control 0x00980904 not found.
[269199.040835] uvcvideo: Control 0x00980905 not found.
[269199.040849] uvcvideo: Control 0x00980907 not found.
[269199.040854] uvcvideo: Control 0x00980906 not found.
[269199.040862] uvcvideo: Control 0x00980907 not found.
[269199.040869] uvcvideo: Control 0x00980908 not found.
[269199.040875] uvcvideo: Control 0x00980909 not found.
[269199.040881] uvcvideo: Control 0x00980908 not found.
[269199.040885] uvcvideo: Control 0x0098090a not found.
[269199.040890] uvcvideo: Control 0x00980909 not found.
[269199.040894] uvcvideo: Control 0x0098090b not found.
[269199.040899] uvcvideo: Control 0x0098090a not found.
[269199.552760] uvcvideo: Failed to query (GET_DEF) UVC control 11 on unit 2: 
-110 (exp. 1).
[269200.064794] uvcvideo: Failed to query (GET_DEF) UVC control 11 on unit 2: 
-110 (exp. 1).
[269200.064884] uvcvideo: Control 0x0098090b not found.
[269200.576732] uvcvideo: Failed to query (GET_DEF) UVC control 11 on unit 2: 
-110 (exp. 1).
[269201.088861] uvcvideo: Failed to query (GET_DEF) UVC control 11 on unit 2: 
-110 (exp. 1).
[269201.088915] uvcvideo: Control 0x0098090d not found.
[269201.088924] uvcvideo: Control 0x0098090e not found.
[269201.088932] uvcvideo: Control 0x0098090f not found.
[269201.088939] uvcvideo: Control 0x00980910 not found.
[269201.088946] uvcvideo: Control 0x00980911 not found.
[269201.600823] uvcvideo: Failed to query (GET_DEF) UVC control 11 on unit 2: 
-110 (exp. 1).
[269202.112922] uvcvideo: Failed to query (GET_DEF) UVC control 11 on unit 2: 
-110 (exp. 1).
[269202.113017] uvcvideo: Control 0x00980912 not found.
[269202.624942] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit 2: 
-110 (exp. 2).
[269202.625039] uvcvideo: Control 0x0098090d not found.
[269202.625075] uvcvideo: Control 0x0098090e not found.
[269202.625083] uvcvideo: Control 0x0098090f not found.
[269202.625091] uvcvideo: Control 0x00980910 not found.
[269202.625099] uvcvideo: Control 0x00980911 not found.
[269202.625106] uvcvideo: Control 0x00980912 not found.
[269203.136961] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit 2: 
-110 (exp. 2).
[269203.649015] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit 2: 
-110 (exp. 2).
[269204.161002] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit 2: 
-110 (exp. 2).
[269204.673056] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit 2: 
-110 (exp. 2).
[269204.673149] uvcvideo: Control 0x00980914 not found.
[269204.673184] uvcvideo: Control 0x00980915 not found.
[269204.673193] uvcvideo: Control 0x00980916 not found.
[269204.673201] uvcvideo: Control 0x00980917 not found.
[269205.184982] uvcvideo: Failed to query (GET_DEF) UVC control 5 on unit 2: 
-110 (exp. 1).
[269205.697043] uvcvideo: Failed to query (GET_DEF) UVC control 4 on unit 2: 
-110 (exp. 2).
[269206.213111] uvcvideo: Failed to query (GET_DEF) UVC control 5 on unit 2: 
-110 (exp. 1).
[269206.724959] uvcvideo: Failed to query (GET_DEF) UVC control 5 on unit 2: 
-110 (exp. 1).
[269206.725021] uvcvideo: Control 0x00980914 not found.
[269206.725031] uvcvideo: Control 0x00980915 not found.
[269206.725033] uvcvideo: Control 0x00980916 not found.
[269206.725034] uvcvideo: Control 0x00980917 not found.
[269207.233129] uvcvideo: Failed to query (GET_DEF) UVC control 5 on unit 2: 
-110 (exp. 1).
[269207.233200] uvcvideo: Control 0x00980919 not found.
[269207.745018] uvcvideo: Failed to query (GET_DEF) UVC control 5 on unit 2: 
-110 (exp. 1).
[269208.257159] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: 
-110 (exp. 1).
[269208.769109] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: 
-110 (exp. 1).
[269209.281244] uvcvideo: Failed to query (GET_DEF) UVC control 5 on unit 2: 
-110 (exp. 1).
[269209.281301] uvcvideo: Control 0x00980919 not found.
[269209.793324] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: 
-110 (exp. 1).
[269210.305252] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: 
-110 (exp. 1).
[269210.817344] uvcvideo: Failed to query (GET_DEF) UVC control 8 on unit 2: 
-110 (exp. 2).
[269211.329357] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: 
-110 (exp. 1).
[269211.841304] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: 
-110 (exp. 1).
[269212.353429] uvcvideo: Failed to query (GET_DEF) UVC control 8 on unit 2: 
-110 (exp. 2).
[269212.865392] uvcvideo: Failed to query (GET_DEF) UVC control 8 on unit 2: 
-110 (exp. 2).
[269213.377372] uvcvideo: Failed to query (GET_DEF) UVC control 8 on unit 2: 
-110 (exp. 2).
[269213.889502] uvcvideo: Failed to query (GET_DEF) UVC control 8 on unit 2: 
-110 (exp. 2).
[269213.889587] uvcvideo: Control 0x0098091c not found.
[269213.889622] uvcvideo: Control 0x0098091d not found.
[269213.889630] uvcvideo: Control 0x0098091e not found.
[269213.889638] uvcvideo: Control 0x0098091f not found.
[269214.401419] uvcvideo: Failed to query (GET_DEF) UVC control 8 on unit 2: 
-110 (exp. 2).
[269214.401469] uvcvideo: Control 0x00980920 not found.
[269214.401480] uvcvideo: Control 0x00980921 not found.
[269214.401481] uvcvideo: Control 0x0098091c not found.
[269214.401482] uvcvideo: Control 0x00980922 not found.
[269214.401483] uvcvideo: Control 0x0098091d not found.
[269214.401484] uvcvideo: Control 0x00980923 not found.
[269214.401485] uvcvideo: Control 0x0098091e not found.
[269214.401486] uvcvideo: Control 0x00980924 not found.
[269214.401486] uvcvideo: Control 0x0098091f not found.
[269214.401487] uvcvideo: Control 0x00980925 not found.
[269214.401488] uvcvideo: Control 0x00980920 not found.
[269214.401489] uvcvideo: Control 0x00980926 not found.
[269214.401490] uvcvideo: Control 0x00980921 not found.
[269214.401490] uvcvideo: Control 0x00980927 not found.
[269214.401491] uvcvideo: Control 0x00980922 not found.
[269214.401492] uvcvideo: Control 0x00980928 not found.
[269214.401493] uvcvideo: Control 0x00980923 not found.
[269214.401493] uvcvideo: Control 0x00980929 not found.
[269214.401494] uvcvideo: Control 0x00980924 not found.
[269214.401495] uvcvideo: Control 0x0098092a not found.
[269214.401496] uvcvideo: Control 0x00980925 not found.
[269214.401497] uvcvideo: Control 0x08000000 not found.
[269214.401498] uvcvideo: Control 0x00980926 not found.
[269214.401499] uvcvideo: Control 0x00980927 not found.
[269214.401500] uvcvideo: uvc_v4l2_release
[269214.401501] uvcvideo: Control 0x00980928 not found.
[269214.401502] uvcvideo: Control 0x00980929 not found.
[269214.401504] uvcvideo: Control 0x0098092a not found.
[269214.401505] uvcvideo: Control 0x08000000 not found.
[269214.401507] uvcvideo: uvc_v4l2_release
[269214.402772] uvcvideo: uvc_v4l2_open
[269214.402824] uvcvideo: uvc_v4l2_release
[269214.402891] uvcvideo: uvc_v4l2_open
[269214.402960] uvcvideo: uvc_v4l2_release
[269214.403301] uvcvideo: uvc_v4l2_open
[269214.403345] uvcvideo: uvc_v4l2_release
[269219.490172] usb 1-8: 3:1: usb_set_interface failed (-110)
[269224.610463] usb 1-8: 3:1: usb_set_interface failed (-110)
[269229.730728] usb 1-8: 3:1: usb_set_interface failed (-110)
[269234.850987] usb 1-8: 3:1: usb_set_interface failed (-110)


Trace sometimes shows when unplugging the usb camera:

[266351.804223] ------------[ cut here ]------------ 
[266351.804229] Trying to vfree() nonexistent vm area (0000000082c5765b) 
[266351.804256] WARNING: CPU: 3 PID: 1111201 at mm/vmalloc.c:2251 
__vunmap+0x281/0x290 
[266351.804258] Modules linked in: uvcvideo st uas usb_storage ufs qnx4 
hfsplus hfs minix msdos jfs xfs videobuf2_vmalloc videobuf2_memops 
videobuf2_v4l2 videobuf2_common cp210x usbserial usblp tcp_diag udp_diag 
inet_diag vhost_net vhost vhost_iotlb tap tun xt_CHECKSUM ipt_REJECT 
nf_reject_i
pv4 xt_tcpudp rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace 
nfs_ssc fscache bnep xt_conntrack nft_chain_nat xt_MASQUERADE nf_nat 
nf_conntrack_netlink nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 xfrm_user 
xfrm_algo nft_counter xt_addrtype nft_compat nf_tables nfnetlink br_netf
ilter bridge vboxnetadp(OE) vboxnetflt(OE) vboxdrv(OE) overlay intel_rapl_msr 
bluetooth intel_rapl_common jitterentropy_rng snd_sof_pci snd_sof_intel_byt 
drbg snd_sof_intel_ipc snd_sof_intel_hda_common ansi_cprng snd_sof_xtensa_dsp 
ecdh_generic ecc snd_hda_codec_hdmi snd_sof snd_sof_intel_hd
a snd_soc_skl snd_soc_hdac_hda snd_hda_ext_core snd_hda_codec_realtek 
snd_soc_sst_ipc snd_soc_sst_dsp snd_hda_codec_generic lz4 
[266351.804388]  snd_soc_acpi_intel_match ledtrig_audio snd_soc_acpi zram 
snd_hda_intel zsmalloc nfc snd_intel_dspcfg soundwire_intel 
x86_pkg_temp_thermal intel_powerclamp soundwire_generic_allocation coretemp 
kvm_intel snd_soc_core binfmt_misc kvm snd_compress nls_ascii 
soundwire_cadence nl
s_cp437 irqbypass eeepc_wmi vfat asus_wmi rapl fat snd_hda_codec snd_usb_audio 
battery intel_cstate sparse_keymap intel_uncore pcspkr i915 rfkill efi_pstore 
wmi_bmof snd_hda_core snd_usbmidi_lib snd_rawmidi snd_hwdep snd_seq_device 
soundwire_bus snd_pcm joydev snd_timer iTCO_wdt evdev intel_
pmc_bxt drm_kms_helper snd iTCO_vendor_support mei_me watchdog soundcore sg 
mei cec i2c_algo_bit acpi_pad intel_pmc_core button acpi_tad 8021q garp stp 
mrp llc v4l2loopback_dc(OE) videodev mc parport_pc ppdev lp drm parport sunrpc 
fuse configfs efivarfs ip_tables x_tables autofs4 ext4 crc16 
mbcache jbd2 btrfs blake2b_generic xor raid6_pq libcrc32c crc32c_generic 
hid_cherry hid_generic dm_crypt dm_mod usbhid hid sd_mod 
[266351.805112]  sr_mod cdrom t10_pi crc_t10dif crct10dif_generic 
crct10dif_pclmul crct10dif_common crc32_pclmul crc32c_intel 
ghash_clmulni_intel aesni_intel e1000e libaes crypto_simd cryptd ahci ptp 
glue_helper xhci_pci libahci pps_core xhci_hcd i2c_i801 i2c_smbus libata 
usbcore scsi_mod us
b_common fan wmi video [last unloaded: uvcvideo]                                                                                                                                                                                                                                                     
[266351.805164] CPU: 3 PID: 1111201 Comm: uvcdynctrl Tainted: G        W  OE     
5.10.0-3-amd64 #1 Debian 5.10.13-1 
[266351.805167] Hardware name: System manufacturer System Product Name/PRIME 
H370M-PLUS, BIOS 1402 04/03/2019 
[266351.805174] RIP: 0010:__vunmap+0x281/0x290 
[266351.805180] Code: 87 48 89 fe 48 c7 c7 a8 e1 2e ad e8 e9 5b 61 00 0f 0b 5b 
5d 41 5c 41 5d 41 5e c3 4c 89 e6 48 c7 c7 d0 e1 2e ad e8 cf 5b 61 00 <0f> 0b 
eb e4 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 53 31 
[266351.805183] RSP: 0018:ffffbb298466be60 EFLAGS: 00010286 
[266351.805334] RAX: 0000000000000000 RBX: 0000000000000001 RCX: 
ffff8e7d0dcd8a08 
[266351.805337] RDX: 00000000ffffffd8 RSI: 0000000000000027 RDI: ffff8e7d0dcd8a00 
[266351.805489] RBP: 0000000000000000 R08: 0000000000000000 R09: 
ffffbb298466bc80 
[266351.805491] R10: ffffbb298466bc78 R11: ffffffffad8bf7d0 R12: ffffbb29a708f000 
[266351.805494] R13: ffff8e75c8ec1420 R14: ffff8e75c9849840 R15: 0000000000000000 
[266351.805498] FS:  00007f7f96ccbb80(0000) GS:ffff8e7d0dcc0000(0000) knlGS:
0000000000000000 
[266351.805502] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 
[266351.805505] CR2: 00007f7f98dbbe40 CR3: 00000002d0e20006 CR4: 
00000000003706e0 
[266351.805508] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000 
[266351.805510] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
0000000000000400 
[266351.805512] Call Trace: 
[266351.805529]  v4l2_loopback_close+0x86/0xf0 [v4l2loopback_dc] 
[266351.805552]  v4l2_release+0xb8/0xc0 [videodev] 
[266351.805559]  __fput+0x95/0x240 
[266351.805565]  task_work_run+0x65/0xa0 
[266351.805584]  exit_to_user_mode_prepare+0x111/0x120 
[266351.805592]  syscall_exit_to_user_mode+0x28/0x140 
[266351.805599]  entry_SYSCALL_64_after_hwframe+0x44/0xa9 
[266351.805604] RIP: 0033:0x7f7f98e5a6c3 
[266351.805609] Code: e9 37 ff ff ff e8 7d df 01 00 66 2e 0f 1f 84 00 00 00 00 00 
0f 1f 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 03 00 00 00 0f 05 <48> 3d 00 
f0 ff ff 77 45 c3 0f 1f 40 00 48 83 ec 18 89 7c 24 0c e8 
[266351.805612] RSP: 002b:00007ffc6c7ae898 EFLAGS: 00000246 ORIG_RAX: 
0000000000000003 
[266351.805617] RAX: 0000000000000000 RBX: 00005616967dff50 RCX: 
00007f7f98e5a6c3 
[266351.805619] RDX: 00007ffc6c7ae900 RSI: 00000000c0445624 RDI: 
0000000000000004 
[266351.805622] RBP: 00005616967e8990 R08: 0000000000000002 R09: 
00007f7f98f29be0 
[266351.805625] R10: 00007ffc6c7ac007 R11: 0000000000000246 R12: 
00007ffc6c7ae900 
[266351.805627] R13: 0000000000000003 R14: 00000000c0445624 R15: 
0000000000000004 
[266351.805633] ---[ end trace fd5b2560a3f737e7 ]---




root@h370:~# lsusb -d 1d6c:0103 -v

Bus 001 Device 009: ID 1d6c:0103 webcam webcam
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x1d6c 
  idProduct          0x0103 
  bcdDevice            0.10
  iManufacturer           1 webcam
  iProduct                2 webcam
  iSerial                 3 V011R007C001B005
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x05aa
    bNumInterfaces          4
    bConfigurationValue     1
    iConfiguration          4 (error)
    bmAttributes         0x80
      (Bus Powered)
    MaxPower              500mA
    Interface Association:
      bLength                 8
      bDescriptorType        11
      bFirstInterface         0
      bInterfaceCount         2
      bFunctionClass         14 Video
      bFunctionSubClass       3 Video Interface Collection
      bFunctionProtocol       0 
      iFunction               5 (error)
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0 
      iInterface              0 
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.00
        wTotalLength       0x004f
        dwClockFrequency       48.000000MHz
        bInCollection           1
        baInterfaceNr( 0)       1
      VideoControl Interface Descriptor:
        bLength                18
        bDescriptorType        36
        bDescriptorSubtype      2 (INPUT_TERMINAL)
        bTerminalID             1
        wTerminalType      0x0201 Camera Sensor
        bAssocTerminal          0
        iTerminal               0 
        wObjectiveFocalLengthMin      0
        wObjectiveFocalLengthMax      0
        wOcularFocalLength            0
        bControlSize                  3
        bmControls           0x0000000a
          Auto-Exposure Mode
          Exposure Time (Absolute)
      VideoControl Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      5 (PROCESSING_UNIT)
      Warning: Descriptor too short
        bUnitID                 2
        bSourceID               1
        wMaxMultiplier          0
        bControlSize            2
        bmControls     0x0000165b
          Brightness
          Contrast
          Saturation
          Sharpness
          White Balance Temperature
          Gain
          Power Line Frequency
          White Balance Temperature, Auto
        iProcessing             0 
        bmVideoStandards     0x1c
          PAL - 625/50
          SECAM - 625/50
          NTSC - 625/50
      VideoControl Interface Descriptor:
        bLength                28
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 3
        guidExtensionCode         {a29e7641-de04-47e3-8b2b-f4341aff8888}
        bNumControls           17
        bNrInPins               1
        baSourceID( 0)          2
        bControlSize            3
        bmControls( 0)       0xff
        bmControls( 1)       0xff
        bmControls( 2)       0x01
        iExtension              0 
      VideoControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             4
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               3
        iTerminal               0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0040  1x 64 bytes
        bInterval               8
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      VideoStreaming Interface Descriptor:
        bLength                            16
        bDescriptorType                    36
        bDescriptorSubtype                  1 (INPUT_HEADER)
        bNumFormats                         3
        wTotalLength                   0x0498
        bEndPointAddress                  131
        bmInfo                              0
        bTerminalLink                       4
        bStillCaptureMethod                 0
        bTriggerSupport                     0
        bTriggerUsage                       0
        bControlSize                        1
        bmaControls( 0)                     0
        bmaControls( 1)                     0
        bmaControls( 2)                     0
      VideoStreaming Interface Descriptor:
        bLength                            11
        bDescriptorType                    36
        bDescriptorSubtype                  6 (FORMAT_MJPEG)
        bFormatIndex                        1
        bNumFrameDescriptors               12
        bFlags                              0
          Fixed-size samples: No
        bDefaultFrameIndex                  1
        bAspectRatioX                       0
        bAspectRatioY                       0
        bmInterlaceFlags                 0x00
          Interlaced stream or variable: No
          Fields per frame: 1 fields
          Field 1 first: No
          Field pattern: Field 1 only
        bCopyProtect                        0
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         1
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     4147200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           2560
        wHeight                          1440
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     7372800
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           360
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      460800
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      960000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         7
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            960
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1382400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         8
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1024
        wHeight                           576
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1179648
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         9
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                        10
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     4147200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                        11
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           2560
        wHeight                          1440
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     7372800
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                        12
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     4147200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            28
        bDescriptorType                    36
        bDescriptorSubtype                 16 (FORMAT_FRAME_BASED)
        bFormatIndex                        2
        bNumFrameDescriptors               12
        guidFormat                            
{34363248-0000-0010-8000-00aa00389b71}
        bBitsPerPixel                       0
        bDefaultFrameIndex                  1
        bAspectRatioX                       0
        bAspectRatioY                       0
        bmInterlaceFlags                 0x00
          Interlaced stream or variable: No
          Fields per frame: 2 fields
          Field 1 first: No
          Field pattern: Field 1 only
        bCopyProtect                        0
        bVariableSize                     1
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         1
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           2560
        wHeight                          1440
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           360
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         7
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            960
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         8
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1024
        wHeight                           576
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                         9
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                        10
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                        11
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           2560
        wHeight                          1440
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                 17 (FRAME_FRAME_BASED)
        bFrameIndex                        12
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwBytesPerLine                      0
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            27
        bDescriptorType                    36
        bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
        bFormatIndex                        3
        bNumFrameDescriptors                8
        guidFormat                            
{32595559-0000-0010-8000-00aa00389b71}
        bBitsPerPixel                      16
        bDefaultFrameIndex                  1
        bAspectRatioX                       0
        bAspectRatioY                       0
        bmInterlaceFlags                 0x00
          Interlaced stream or variable: No
          Fields per frame: 2 fields
          Field 1 first: No
          Field pattern: Field 1 only
        bCopyProtect                        0
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         1
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           360
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      460800
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      960000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            960
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1382400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1024
        wHeight                           576
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1179648
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         7
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         8
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                 18432000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  2
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
      VideoStreaming Interface Descriptor:
        bLength                             6
        bDescriptorType                    36
        bDescriptorSubtype                 13 (COLORFORMAT)
        bColorPrimaries                     1 (BT.709,sRGB)
        bTransferCharacteristics            1 (BT.709)
        bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       1
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x83  EP 3 IN
        bmAttributes            1
          Transfer Type            Isochronous
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x13fc  3x 1020 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       2
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x85  EP 5 IN
        bmAttributes            1
          Transfer Type            Isochronous
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               1
    Interface Association:
      bLength                 8
      bDescriptorType        11
      bFirstInterface         2
      bInterfaceCount         2
      bFunctionClass          1 Audio
      bFunctionSubClass       2 Streaming
      bFunctionProtocol       0 
      iFunction               6 (error)
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        2
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass         1 Audio
      bInterfaceSubClass      1 Control Device
      bInterfaceProtocol      0 
      iInterface              0 
      AudioControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdADC               1.00
        wTotalLength       0x0026
        bInCollection           1
        baInterfaceNr(0)        3
      AudioControl Interface Descriptor:
        bLength                12
        bDescriptorType        36
        bDescriptorSubtype      2 (INPUT_TERMINAL)
        bTerminalID             1
        wTerminalType      0x0201 Microphone
        bAssocTerminal          0
        bNrChannels             1
        wChannelConfig     0x0000
        iChannelNames           0 
        iTerminal               0 
      AudioControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             3
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               5
        iTerminal               0 
      AudioControl Interface Descriptor:
        bLength                 8
        bDescriptorType        36
        bDescriptorSubtype      6 (FEATURE_UNIT)
        bUnitID                 5
        bSourceID               1
        bControlSize            1
        bmaControls(0)       0x03
          Mute Control
          Volume Control
        iFeature                0 
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       1
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           3
        bDelay                255 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                20
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            4 Discrete
        tSamFreq[ 0]         8000
        tSamFreq[ 1]        16000
        tSamFreq[ 2]        32000
        tSamFreq[ 3]        48000
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x89  EP 9 IN
        bmAttributes            1
          Transfer Type            Isochronous
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0080  1x 128 bytes
        bInterval               4
        bRefresh                0
        bSynchAddress           0
        AudioStreaming Endpoint Descriptor:
          bLength                 7
          bDescriptorType        37
          bDescriptorSubtype      1 (EP_GENERAL)
          bmAttributes         0x01
            Sampling Frequency
          bLockDelayUnits         0 Undefined
          wLockDelay         0x0000
can't get device qualifier: Resource temporarily unavailable
can't get debug descriptor: Resource temporarily unavailable
cannot read device status, Resource temporarily unavailable (11)
root@h370:~# 





-- 
Rainer Dorsch
http://bokomoko.de/




_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
