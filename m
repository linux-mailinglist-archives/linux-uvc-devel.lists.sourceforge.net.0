Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9149299F12
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 22 Aug 2019 20:42:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1i0s1m-0000bV-OY; Thu, 22 Aug 2019 18:41:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ben@ekran.org>) id 1i0s1l-0000bN-4a
 for linux-uvc-devel@lists.sourceforge.net; Thu, 22 Aug 2019 18:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:From:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fN9VnOwilYrN52u8XYt8J7q3TaJhw8lARZUN1BSepGs=; b=jVWX+IrIHAv5OaD3cREntOOgF
 TnOzb6jF/MkainjzLSuRqEaRcg2dWXT7uooWjfGTxyIUTxyASVDnKHNKWSENNZ7ezf8qdifuS6b7G
 PMmdQ4UYGWttaMW3488r4wKlpZrqzRr82XUvt6sf32i9Akjq23vP5DhISkIh4iH5BAeBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fN9VnOwilYrN52u8XYt8J7q3TaJhw8lARZUN1BSepGs=; b=ZdUtiUBRGtDN6h78newsNG/EC+
 byk+LcyUYiXknhk5OBeUOO/GazbkfbPBn9PjyNzb8JGdOUSYaOXXcvR/Y1xc7Kwyjyok6rzGfCQhp
 f0ONKnzxpDvVa85TfDb9Vk1mRmfX9b2MRtfU5dcKZCbhfuXTpwlqRc9zAvMPvbCnH6IA=;
Received: from mout.perfora.net ([74.208.4.197])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0s1h-00C79U-BW
 for linux-uvc-devel@lists.sourceforge.net; Thu, 22 Aug 2019 18:41:41 +0000
Received: from [192.168.1.76] ([154.5.31.132]) by mrelay.perfora.net
 (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id 1MY6bJ-1hkZWw0bj3-00YOgC
 for <linux-uvc-devel@lists.sourceforge.net>; Thu, 22 Aug 2019 20:41:31 +0200
From: "B. Bogart" <ben@ekran.org>
To: linux-uvc-devel@lists.sourceforge.net
References: <49a725f9-98cc-95e2-afd5-ef4765951c07@ekran.org>
Openpgp: preference=signencrypt
Autocrypt: addr=ben@ekran.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1c196d20-7f7a-40f2-7b0f-d90ecbc6d2b7@ekran.org>
Date: Thu, 22 Aug 2019 11:41:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <49a725f9-98cc-95e2-afd5-ef4765951c07@ekran.org>
Content-Type: multipart/mixed; boundary="------------89D5DA98652B134000DFE8DA"
Content-Language: en-CA
X-Provags-ID: V03:K1:RRo3ZXmTthmgWlYrtQfR7uA8sh8+Bsc35JH24U0708/6Q+7AWUo
 Xmlkssk/AAnqOHb2+uTPIO1IUvUEiQl5svBccgGMNvyNyUI/wtzanPV+HtDCx28rKbgIV2L
 vutRzP0jZS41JaLjwwnK5SBJ9FG2P0bOKukdH3RIGVgX0ez2KRXVwpW1HRcuCPiZkfA1trz
 hzn8jXE4QesA/uADuNALQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kHtYlBae70U=:/sr+6mkB8+zqLQ5u90m11C
 tIpSlaAmp7weIiwklut+f27u9O4i+chzkDR0OQuTM6DJvZhpG0DMMwsarzty58plKhK5AN4ue
 4IvN5ppJ4xUdrdwbgiV/CdcDeW7sdo13Cfcs/EBo23pQm6CDyeS/KlRt//uCBzyuKe5r0hGZy
 E/l8Ez7jD50gGb2Jyoxmu4TAAa142c9eEqcN4OKuisZNpnoMvWH5y0B3rajyMT/2u0tr0W6CV
 R1bKLJsmAEbxi3i3vpeBZq0FmPBEffVEaUeLNggbg21tZtCd5sTEWLnBVcf7Pq7M8Qr6me/PX
 OPQyt6KJH0ZXaqF5mU4c66uE6IhdKIpI5OqcVDd7O4whE4rmCddwJAhCDBo2c3qj05e/QV8/8
 LJbWvQb+08XbKQ5dloT31J2qYrdaBUQWyjbZy/C1wKY2OvHbUiohqrmBlz485XTJlK2zypI8f
 H4tMt5KPPg/zycjd3jptoLe5fQzY1Q4axIpXmGjCDOQjTrSwfiw047w7CvLx9RTdjFB5EGIdH
 ft8zImYRuj7iqM0s3/D8ZWaowUbDARRuCSFSgkBRZ1CmapHnWtGfji9oSfoIUMOJotw0zdYaO
 o0WmwPnJba5UjmgyDx9aCUh7KXzIcMIqAPRTXj8w2Eo3X0TklM2VX/0C2d12d5DfA0OocK4Yd
 wl0WnbC003ki0yw9nNTFFVf4oMMaxt4wlbWzTEfyI6swcHwMJizTJEWYBxMKkyFyZ1EyToFFO
 4xfUj2dowxAQVIpUM+bcbuvvllo49+91Xu3WNQ==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [74.208.4.197 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1i0s1h-00C79U-BW
Subject: Re: [linux-uvc-devel] 090c:337b (Silicon Motion) Camera Support?
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
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--------------89D5DA98652B134000DFE8DA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello again,

I tinkered a little more and played with qv4l2. All the controls seem to
work and the device gets polled, I can see the green light turn on. As
far as the uvc / v4l2 interface goes it seems to be working except qv4l2
shows no video, just a black frame(s?) at the requested resolution.

I've attached the dmesg output with
/sys/module/uvcvideo/parameters/trace = 0xffff

How do I check if this is not a fully UVC compatible camera? The test on
http://www.ideasonboard.org/uvc/faq/ shows:

$ lsusb -d 090c:337b -v | grep "14 Video"
      bFunctionClass         14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video
      bInterfaceClass        14 Video

I just need to know if this is just incompatible and I need to buy
another camera module.

Thank you,
B. Bogart

On 2019-08-04 9:32 a.m., B. Bogart wrote:
> Hello all,
> 
> I've been unable to make this camera work and wonder if it is not
> supported. I bought it thinking it would work out of the box being an
> OV2640 chip and UVC compliant.
> 
> $ lsusb
> Bus 001 Device 010: ID 090c:337b Silicon Motion, Inc. - Taiwan (formerly
> Feiya Technology Corp.) Silicon Motion Camera
> 
> $ lsusb -d 090c:337b -v > usblog.txt
> (see usblog.txt attached)
> 
> $ lsmod | grep uvc
> uvcvideo               86016  2
> videobuf2_vmalloc      16384  3 uvcvideo
> videobuf2_v4l2         24576  1 uvcvideo
> videobuf2_core         40960  2 videobuf2_v4l2,uvcvideo
> videodev              184320  5 videobuf2_core,videobuf2_v4l2,uvcvideo
> media                  40960  2 videodev,uvcvideo
> 
> $ echo 0xffff > /sys/module/uvcvideo/parameters/trace
> (see kern.txt attached)
> 
> $ uname -a
> Linux domi 4.15.0-55-generic #60-Ubuntu SMP Tue Jul 2 18:22:20 UTC 2019
> x86_64 x86_64 x86_64 GNU/Linux
> 
> $ lsb_release -a
> No LSB modules are available.
> Distributor ID:	Ubuntu
> Description:	Ubuntu 18.04.2 LTS
> Release:	18.04
> Codename:	bionic
> 
> *The closest I've come to make it work is with this command, which shows
> a window of the right size, but its all green and garbled (see attached).*
> 
> $ mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video1
> -vf screenshot -vo xv
> MPlayer 1.3.0 (Debian), built with gcc-7 (C) 2000-2016 MPlayer Team
> do_connect: could not connect to socket
> connect: No such file or directory
> Failed to open LIRC support. You will not be able to use your remote
> control.
> 
> Playing tv://.
> TV file format detected.
> Selected driver: v4l2
>  name: Video 4 Linux 2 input
>  author: Martin Olschewski <olschewski@zpr.uni-koeln.de>
>  comment: first try, more to come ;-)
> v4l2: your device driver does not support VIDIOC_G_STD ioctl,
> VIDIOC_G_PARM was used instead.
> Selected device: PC Cam
>  Capabilities:  video capture  streaming
>  supported norms:
>  inputs: 0 = Camera 1;
>  Current input: 0
>  Current format: YUYV
> tv.c: norm_from_string(pal): Bogus norm parameter, setting default.
> v4l2: ioctl enum norm failed: Inappropriate ioctl for device
> Error: Cannot set norm!
> Selected input hasn't got a tuner!
> v4l2: ioctl set mute failed: Invalid argument
> ==========================================================================
> Opening video decoder: [raw] RAW Uncompressed Video
> Could not find matching colorspace - retrying with -vf scale...
> Opening video filter: [scale]
> Movie-Aspect is undefined - no prescaling applied.
> [swscaler @ 0x55b224369a00] bicubic scaler, from yuyv422 to yuv420p
> using MMXEXT
> [swscaler @ 0x55b224369a00] using unscaled yuyv422 -> yuv420p special
> converter
> VO: [xv] 640x480 => 640x480 Planar YV12
> Selected video codec: [rawyuy2] vfm: raw (RAW YUY2)
> ==========================================================================
> Audio: no sound
> Starting playback...
> v4l2: select timeout
> 
> *I can also sort-of make it work with gstreamer, but rather than green I
> get a window whose content never updates:*
> 
> $ gst-launch-1.0 --gst-debug-level=4 v4l2src device=/dev/video1 !
> video/x-raw,width=640,height=480,framerate=30/1 ! videoconvert !
> autovideosink
> (see gst.txt attached)
> 
> In both the mplayer and gst cases, the LED on the camera does turn on.
> 
> Thank you,
> Ben
> 
> 

--------------89D5DA98652B134000DFE8DA
Content-Type: text/x-log;
 name="dmesg.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="dmesg.log"

[Aug22 11:19] media: Linux media interface: v0.10
[  +0.006410] Linux video capture interface: v2.00
[  +0.008637] usbcore: registered new interface driver uvcvideo
[  +0.000001] USB Video Class driver (1.1.1)
[Aug22 11:20] usb 1-2: new high-speed USB device number 7 using xhci_hcd
[  +0.156505] usb 1-2: New USB device found, idVendor=090c, idProduct=337b
[  +0.000007] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[  +0.000005] usb 1-2: Product: PC Cam
[  +0.000005] usb 1-2: Manufacturer: SMI
[  +0.001743] uvcvideo: Probing generic UVC device 2
[  +0.000022] uvcvideo: Found format YUV 4:2:2 (YUYV).
[  +0.000006] uvcvideo: - 640x480 (30.0 fps)
[  +0.000004] uvcvideo: - 160x120 (30.0 fps)
[  +0.000003] uvcvideo: - 176x144 (30.0 fps)
[  +0.000005] uvcvideo: - 320x240 (30.0 fps)
[  +0.000004] uvcvideo: - 800x600 (15.0 fps)
[  +0.000004] uvcvideo: - 1280x720 (5.0 fps)
[  +0.000004] uvcvideo: - 1280x1024 (5.0 fps)
[  +0.000005] uvcvideo: - 1600x1200 (5.0 fps)
[  +0.000004] uvcvideo: - 640x480 (30.0 fps)
[  +0.000013] uvcvideo: Found a Status endpoint (addr 83).
[  +0.000007] uvcvideo: Found UVC 1.00 device PC Cam (090c:337b)
[  +0.000014] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/3 to device 2 entity 1
[  +0.000008] uvcvideo: Adding mapping 'Exposure, Auto Priority' to control 00000000-0000-0000-0000-000000000001/3.
[  +0.000011] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/2 to device 2 entity 3
[  +0.000005] uvcvideo: Adding mapping 'Brightness' to control 00000000-0000-0000-0000-000000000101/2.
[  +0.000007] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/3 to device 2 entity 3
[  +0.000006] uvcvideo: Adding mapping 'Contrast' to control 00000000-0000-0000-0000-000000000101/3.
[  +0.000006] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/6 to device 2 entity 3
[  +0.000005] uvcvideo: Adding mapping 'Hue' to control 00000000-0000-0000-0000-000000000101/6.
[  +0.000007] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/7 to device 2 entity 3
[  +0.000006] uvcvideo: Adding mapping 'Saturation' to control 00000000-0000-0000-0000-000000000101/7.
[  +0.000006] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/8 to device 2 entity 3
[  +0.000004] uvcvideo: Adding mapping 'Sharpness' to control 00000000-0000-0000-0000-000000000101/8.
[  +0.000006] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/9 to device 2 entity 3
[  +0.000007] uvcvideo: Adding mapping 'Gamma' to control 00000000-0000-0000-0000-000000000101/9.
[  +0.000006] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/10 to device 2 entity 3
[  +0.000013] uvcvideo: Adding mapping 'White Balance Temperature' to control 00000000-0000-0000-0000-000000000101/10.
[  +0.000006] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/1 to device 2 entity 3
[  +0.000005] uvcvideo: Adding mapping 'Backlight Compensation' to control 00000000-0000-0000-0000-000000000101/1.
[  +0.000007] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/4 to device 2 entity 3
[  +0.000004] uvcvideo: Adding mapping 'Gain' to control 00000000-0000-0000-0000-000000000101/4.
[  +0.000007] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/5 to device 2 entity 3
[  +0.000005] uvcvideo: Adding mapping 'Power Line Frequency' to control 00000000-0000-0000-0000-000000000101/5.
[  +0.000007] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/11 to device 2 entity 3
[  +0.000006] uvcvideo: Adding mapping 'White Balance Temperature, Auto' to control 00000000-0000-0000-0000-000000000101/11.
[  +0.000005] uvcvideo: Scanning UVC chain: OT 4 <- PU 3 <- XU 2 <- IT 1
[  +0.000017] uvcvideo: Found a valid video chain (1 -> 4).
[  +0.004674] uvcvideo 1-2:1.0: Entity type for entity Processing 3 was not initialized!
[  +0.000008] uvcvideo 1-2:1.0: Entity type for entity Extension 2 was not initialized!
[  +0.000005] uvcvideo 1-2:1.0: Entity type for entity Camera 1 was not initialized!
[  +0.000258] input: PC Cam as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2:1.0/input/input14
[  +0.000208] uvcvideo: UVC device initialized.
[  +0.014433] uvcvideo: uvc_v4l2_open
[  +0.000073] uvcvideo: uvc_v4l2_release
[  +0.009264] uvcvideo: uvc_v4l2_open
[  +0.000015] uvcvideo: uvc_v4l2_release
[  +0.000093] uvcvideo: uvc_v4l2_open
[  +0.330098] uvcvideo: uvc_v4l2_release
[  +2.106315] uvcvideo: Suspending interface 1
[  +0.000005] uvcvideo: Suspending interface 0
[Aug22 11:22] uvcvideo: uvc_v4l2_open
[  +0.116219] uvcvideo: Resuming interface 0
[  +0.000006] uvcvideo: Resuming interface 1
[  +0.004903] uvcvideo: uvc_v4l2_release
[  +2.730740] uvcvideo: Suspending interface 1
[  +0.000004] uvcvideo: Suspending interface 0
[ +14.016445] uvcvideo: uvc_v4l2_open
[  +0.115919] uvcvideo: Resuming interface 0
[  +0.000066] uvcvideo: Resuming interface 1
[  +0.068269] uvcvideo: uvc_v4l2_release
[  +0.000071] uvcvideo: uvc_v4l2_open
[  +0.001097] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000001] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001073] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000001] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001032] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000001] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001026] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000001] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001023] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000000] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001045] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000001] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001034] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000001] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001468] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000001] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001409] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000000] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.021383] uvcvideo: uvc_v4l2_poll
[  +0.008978] uvcvideo: uvc_v4l2_poll
[  +0.005825] uvcvideo: uvc_v4l2_poll
[  +0.005824] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.003369] uvcvideo: uvc_v4l2_poll
[  +0.000121] uvcvideo: uvc_v4l2_poll
[  +0.000017] uvcvideo: uvc_v4l2_poll
[  +1.668837] uvcvideo: uvc_v4l2_poll
[  +0.000169] uvcvideo: uvc_v4l2_poll
[  +0.000151] uvcvideo: uvc_v4l2_poll
[  +0.010831] uvcvideo: uvc_v4l2_poll
[  +0.000158] uvcvideo: uvc_v4l2_poll
[  +0.000127] uvcvideo: uvc_v4l2_poll
[  +0.010348] uvcvideo: uvc_v4l2_poll
[  +0.000070] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +0.011357] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +0.011132] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.011272] uvcvideo: uvc_v4l2_poll
[  +0.000171] uvcvideo: uvc_v4l2_poll
[  +0.000142] uvcvideo: uvc_v4l2_poll
[  +0.010685] uvcvideo: uvc_v4l2_poll
[  +0.000169] uvcvideo: uvc_v4l2_poll
[  +0.000272] uvcvideo: uvc_v4l2_poll
[  +0.001364] uvcvideo: uvc_v4l2_poll
[  +0.009348] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.000261] uvcvideo: uvc_v4l2_poll
[  +0.002215] uvcvideo: uvc_v4l2_poll
[  +0.008777] uvcvideo: uvc_v4l2_poll
[  +0.000152] uvcvideo: uvc_v4l2_poll
[  +0.000139] uvcvideo: uvc_v4l2_poll
[  +0.001112] uvcvideo: uvc_v4l2_poll
[  +0.009788] uvcvideo: uvc_v4l2_poll
[  +0.000123] uvcvideo: uvc_v4l2_poll
[  +0.000169] uvcvideo: uvc_v4l2_poll
[  +0.001594] uvcvideo: uvc_v4l2_poll
[  +0.009605] uvcvideo: uvc_v4l2_poll
[  +0.000143] uvcvideo: uvc_v4l2_poll
[  +0.000137] uvcvideo: uvc_v4l2_poll
[  +0.010744] uvcvideo: uvc_v4l2_poll
[  +0.000136] uvcvideo: uvc_v4l2_poll
[  +0.000170] uvcvideo: uvc_v4l2_poll
[  +0.000801] uvcvideo: uvc_v4l2_poll
[  +0.010115] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000202] uvcvideo: uvc_v4l2_poll
[  +0.000637] uvcvideo: uvc_v4l2_poll
[  +0.010577] uvcvideo: uvc_v4l2_poll
[  +0.000155] uvcvideo: uvc_v4l2_poll
[  +0.000245] uvcvideo: uvc_v4l2_poll
[  +0.001474] uvcvideo: uvc_v4l2_poll
[  +0.009126] uvcvideo: uvc_v4l2_poll
[  +0.000119] uvcvideo: uvc_v4l2_poll
[  +0.000123] uvcvideo: uvc_v4l2_poll
[  +0.011062] uvcvideo: uvc_v4l2_poll
[  +0.000134] uvcvideo: uvc_v4l2_poll
[  +0.000132] uvcvideo: uvc_v4l2_poll
[  +0.011017] uvcvideo: uvc_v4l2_poll
[  +0.000137] uvcvideo: uvc_v4l2_poll
[  +0.000168] uvcvideo: uvc_v4l2_poll
[  +0.000799] uvcvideo: uvc_v4l2_poll
[  +0.010266] uvcvideo: uvc_v4l2_poll
[  +0.000135] uvcvideo: uvc_v4l2_poll
[  +0.000167] uvcvideo: uvc_v4l2_poll
[  +0.000604] uvcvideo: uvc_v4l2_poll
[  +0.010132] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.000237] uvcvideo: uvc_v4l2_poll
[  +0.001804] uvcvideo: uvc_v4l2_poll
[  +0.009260] uvcvideo: uvc_v4l2_poll
[  +0.000154] uvcvideo: uvc_v4l2_poll
[  +0.000155] uvcvideo: uvc_v4l2_poll
[  +0.010859] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000123] uvcvideo: uvc_v4l2_poll
[  +0.010820] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.000156] uvcvideo: uvc_v4l2_poll
[  +0.011127] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000130] uvcvideo: uvc_v4l2_poll
[  +0.000790] uvcvideo: uvc_v4l2_poll
[  +0.010061] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.000224] uvcvideo: uvc_v4l2_poll
[  +0.000761] uvcvideo: uvc_v4l2_poll
[  +0.010329] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.010873] uvcvideo: uvc_v4l2_poll
[  +0.000143] uvcvideo: uvc_v4l2_poll
[  +0.000150] uvcvideo: uvc_v4l2_poll
[  +0.010969] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.010995] uvcvideo: uvc_v4l2_poll
[  +0.000113] uvcvideo: uvc_v4l2_poll
[  +0.000098] uvcvideo: uvc_v4l2_poll
[  +0.011111] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.010967] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.000132] uvcvideo: uvc_v4l2_poll
[  +0.010952] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.000196] uvcvideo: uvc_v4l2_poll
[  +0.000584] uvcvideo: uvc_v4l2_poll
[  +0.010371] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000158] uvcvideo: uvc_v4l2_poll
[  +0.000904] uvcvideo: uvc_v4l2_poll
[  +0.010124] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000125] uvcvideo: uvc_v4l2_poll
[  +0.000707] uvcvideo: uvc_v4l2_poll
[  +0.010313] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000139] uvcvideo: uvc_v4l2_poll
[  +0.000691] uvcvideo: uvc_v4l2_poll
[  +0.010238] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.011071] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.011190] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.011035] uvcvideo: uvc_v4l2_poll
[  +0.000110] uvcvideo: uvc_v4l2_poll
[  +0.000094] uvcvideo: uvc_v4l2_poll
[  +0.011149] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000099] uvcvideo: uvc_v4l2_poll
[  +0.010932] uvcvideo: uvc_v4l2_poll
[  +0.000187] uvcvideo: uvc_v4l2_poll
[  +0.000111] uvcvideo: uvc_v4l2_poll
[  +0.010885] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.011092] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000099] uvcvideo: uvc_v4l2_poll
[  +0.011035] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.011058] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000097] uvcvideo: uvc_v4l2_poll
[  +0.011212] uvcvideo: uvc_v4l2_poll
[  +0.000139] uvcvideo: uvc_v4l2_poll
[  +0.000122] uvcvideo: uvc_v4l2_poll
[  +0.010744] uvcvideo: uvc_v4l2_poll
[  +0.000117] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.011081] uvcvideo: uvc_v4l2_poll
[  +0.000123] uvcvideo: uvc_v4l2_poll
[  +0.000076] uvcvideo: uvc_v4l2_poll
[  +0.562928] uvcvideo: uvc_v4l2_poll
[  +0.000140] uvcvideo: uvc_v4l2_poll
[  +0.056593] uvcvideo: uvc_v4l2_poll
[  +0.000163] uvcvideo: uvc_v4l2_poll
[  +0.000291] uvcvideo: uvc_v4l2_poll
[  +0.001434] uvcvideo: uvc_v4l2_poll
[  +0.000347] uvcvideo: uvc_v4l2_poll
[  +0.000089] uvcvideo: uvc_v4l2_poll
[  +0.009225] uvcvideo: uvc_v4l2_poll
[  +0.000186] uvcvideo: uvc_v4l2_poll
[  +0.000259] uvcvideo: uvc_v4l2_poll
[  +0.009999] uvcvideo: uvc_v4l2_poll
[  +0.000148] uvcvideo: uvc_v4l2_poll
[  +0.001740] uvcvideo: uvc_v4l2_poll
[  +0.009729] uvcvideo: uvc_v4l2_poll
[  +0.000146] uvcvideo: uvc_v4l2_poll
[  +0.003066] uvcvideo: uvc_v4l2_poll
[  +0.007681] uvcvideo: uvc_v4l2_poll
[  +0.000131] uvcvideo: uvc_v4l2_poll
[  +0.000539] uvcvideo: uvc_v4l2_poll
[  +0.010959] uvcvideo: uvc_v4l2_poll
[  +0.000143] uvcvideo: uvc_v4l2_poll
[  +0.002398] uvcvideo: uvc_v4l2_poll
[  +0.008631] uvcvideo: uvc_v4l2_poll
[  +0.000138] uvcvideo: uvc_v4l2_poll
[  +0.000603] uvcvideo: uvc_v4l2_poll
[  +0.010442] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.002792] uvcvideo: uvc_v4l2_poll
[  +0.007929] uvcvideo: uvc_v4l2_poll
[  +0.000130] uvcvideo: uvc_v4l2_poll
[  +0.002618] uvcvideo: uvc_v4l2_poll
[  +0.011221] uvcvideo: uvc_v4l2_poll
[  +0.000139] uvcvideo: uvc_v4l2_poll
[  +0.000526] uvcvideo: uvc_v4l2_poll
[  +0.008164] uvcvideo: uvc_v4l2_poll
[  +0.000143] uvcvideo: uvc_v4l2_poll
[  +0.000298] uvcvideo: uvc_v4l2_poll
[  +0.010838] uvcvideo: uvc_v4l2_poll
[  +0.000143] uvcvideo: uvc_v4l2_poll
[  +0.000232] uvcvideo: uvc_v4l2_poll
[  +0.010662] uvcvideo: uvc_v4l2_poll
[  +0.000133] uvcvideo: uvc_v4l2_poll
[  +0.000459] uvcvideo: uvc_v4l2_poll
[  +0.011342] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.002527] uvcvideo: uvc_v4l2_poll
[  +0.007879] uvcvideo: uvc_v4l2_poll
[  +0.000136] uvcvideo: uvc_v4l2_poll
[  +0.002673] uvcvideo: uvc_v4l2_poll
[  +0.011813] uvcvideo: uvc_v4l2_poll
[  +0.000161] uvcvideo: uvc_v4l2_poll
[  +0.002516] uvcvideo: uvc_v4l2_poll
[  +0.005057] uvcvideo: uvc_v4l2_poll
[  +0.000113] uvcvideo: uvc_v4l2_poll
[  +0.000210] uvcvideo: uvc_v4l2_poll
[  +0.010684] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000148] uvcvideo: uvc_v4l2_poll
[  +0.010974] uvcvideo: uvc_v4l2_poll
[  +0.000167] uvcvideo: uvc_v4l2_poll
[  +0.001830] uvcvideo: uvc_v4l2_poll
[  +0.009856] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.001776] uvcvideo: uvc_v4l2_poll
[  +0.008957] uvcvideo: uvc_v4l2_poll
[  +0.000111] uvcvideo: uvc_v4l2_poll
[  +0.001783] uvcvideo: uvc_v4l2_poll
[  +0.009221] uvcvideo: uvc_v4l2_poll
[  +0.000101] uvcvideo: uvc_v4l2_poll
[  +0.000504] uvcvideo: uvc_v4l2_poll
[  +0.011310] uvcvideo: uvc_v4l2_poll
[  +0.000123] uvcvideo: uvc_v4l2_poll
[  +0.000556] uvcvideo: uvc_v4l2_poll
[  +0.010200] uvcvideo: uvc_v4l2_poll
[  +0.000122] uvcvideo: uvc_v4l2_poll
[  +0.002259] uvcvideo: uvc_v4l2_poll
[  +0.008975] uvcvideo: uvc_v4l2_poll
[  +0.000209] uvcvideo: uvc_v4l2_poll
[  +0.000517] uvcvideo: uvc_v4l2_poll
[  +0.010580] uvcvideo: uvc_v4l2_poll
[  +0.000120] uvcvideo: uvc_v4l2_poll
[  +0.000313] uvcvideo: uvc_v4l2_poll
[  +0.010661] uvcvideo: uvc_v4l2_poll
[  +0.005895] uvcvideo: uvc_v4l2_poll
[  +0.000398] uvcvideo: uvc_v4l2_poll
[  +0.005318] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000256] uvcvideo: uvc_v4l2_poll
[  +0.010334] uvcvideo: uvc_v4l2_poll
[  +0.000121] uvcvideo: uvc_v4l2_poll
[  +0.000043] uvcvideo: uvc_v4l2_poll
[  +0.012659] uvcvideo: uvc_v4l2_poll
[  +0.000136] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.009384] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000029] uvcvideo: uvc_v4l2_poll
[  +0.011075] uvcvideo: uvc_v4l2_poll
[  +0.000130] uvcvideo: uvc_v4l2_poll
[  +0.000042] uvcvideo: uvc_v4l2_poll
[  +0.157095] uvcvideo: uvc_v4l2_poll
[  +0.000076] uvcvideo: uvc_v4l2_poll
[  +0.001894] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.002714] uvcvideo: uvc_v4l2_poll
[  +0.001210] uvcvideo: uvc_v4l2_poll
[  +0.084359] uvcvideo: uvc_v4l2_poll
[  +0.000136] uvcvideo: uvc_v4l2_poll
[  +0.000133] uvcvideo: uvc_v4l2_poll
[  +0.010880] uvcvideo: uvc_v4l2_poll
[  +0.000133] uvcvideo: uvc_v4l2_poll
[  +0.000120] uvcvideo: uvc_v4l2_poll
[  +0.010853] uvcvideo: uvc_v4l2_poll
[  +0.000121] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.011068] uvcvideo: uvc_v4l2_poll
[  +0.000120] uvcvideo: uvc_v4l2_poll
[  +0.000124] uvcvideo: uvc_v4l2_poll
[  +0.011186] uvcvideo: uvc_v4l2_poll
[  +0.000133] uvcvideo: uvc_v4l2_poll
[  +0.000111] uvcvideo: uvc_v4l2_poll
[  +0.010974] uvcvideo: uvc_v4l2_poll
[  +0.000134] uvcvideo: uvc_v4l2_poll
[  +0.000133] uvcvideo: uvc_v4l2_poll
[  +0.011188] uvcvideo: uvc_v4l2_poll
[  +0.000119] uvcvideo: uvc_v4l2_poll
[  +0.000146] uvcvideo: uvc_v4l2_poll
[  +0.010766] uvcvideo: uvc_v4l2_poll
[  +0.000134] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.010738] uvcvideo: uvc_v4l2_poll
[  +0.000136] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.011118] uvcvideo: uvc_v4l2_poll
[  +0.000145] uvcvideo: uvc_v4l2_poll
[  +0.000146] uvcvideo: uvc_v4l2_poll
[  +0.011119] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.000147] uvcvideo: uvc_v4l2_poll
[  +0.000804] uvcvideo: uvc_v4l2_poll
[  +0.010156] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.000153] uvcvideo: uvc_v4l2_poll
[  +0.001177] uvcvideo: uvc_v4l2_poll
[  +0.009629] uvcvideo: uvc_v4l2_poll
[  +0.000124] uvcvideo: uvc_v4l2_poll
[  +0.000138] uvcvideo: uvc_v4l2_poll
[  +0.000597] uvcvideo: uvc_v4l2_poll
[  +0.010494] uvcvideo: uvc_v4l2_poll
[  +0.000244] uvcvideo: uvc_v4l2_poll
[  +0.000173] uvcvideo: uvc_v4l2_poll
[  +0.010640] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.017107] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000237] uvcvideo: uvc_v4l2_poll
[  +0.001087] uvcvideo: uvc_v4l2_poll
[  +0.000205] uvcvideo: uvc_v4l2_poll
[  +0.000442] uvcvideo: uvc_v4l2_poll
[  +0.000227] uvcvideo: uvc_v4l2_poll
[  +0.000249] uvcvideo: uvc_v4l2_poll
[  +0.031382] uvcvideo: uvc_v4l2_poll
[  +0.000063] uvcvideo: uvc_v4l2_poll
[  +0.000124] uvcvideo: uvc_v4l2_poll
[  +0.000038] uvcvideo: uvc_v4l2_poll
[  +0.308672] uvcvideo: uvc_v4l2_poll
[  +0.000094] uvcvideo: uvc_v4l2_poll
[  +0.000275] uvcvideo: uvc_v4l2_poll
[  +0.000078] uvcvideo: uvc_v4l2_poll
[  +0.066920] uvcvideo: uvc_v4l2_poll
[  +0.000094] uvcvideo: uvc_v4l2_poll
[  +0.956486] uvcvideo: uvc_v4l2_poll
[  +0.002070] uvcvideo: uvc_v4l2_poll
[  +0.000168] uvcvideo: uvc_v4l2_poll
[  +0.003235] uvcvideo: uvc_v4l2_poll
[  +0.000119] uvcvideo: uvc_v4l2_poll
[  +0.000516] uvcvideo: uvc_v4l2_poll
[  +0.002457] uvcvideo: uvc_v4l2_poll
[  +0.006672] uvcvideo: uvc_v4l2_poll
[  +0.000056] uvcvideo: uvc_v4l2_poll
[  +0.003018] uvcvideo: uvc_v4l2_poll
[  +0.000042] uvcvideo: uvc_v4l2_poll
[  +0.003317] uvcvideo: uvc_v4l2_poll
[  +0.000031] uvcvideo: uvc_v4l2_poll
[  +0.000038] uvcvideo: uvc_v4l2_poll
[  +0.011259] uvcvideo: uvc_v4l2_poll
[  +0.000040] uvcvideo: uvc_v4l2_poll
[  +0.000040] uvcvideo: uvc_v4l2_poll
[  +0.011167] uvcvideo: uvc_v4l2_poll
[  +0.000047] uvcvideo: uvc_v4l2_poll
[  +0.000040] uvcvideo: uvc_v4l2_poll
[  +0.011351] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.011091] uvcvideo: uvc_v4l2_poll
[  +0.000053] uvcvideo: uvc_v4l2_poll
[  +0.000053] uvcvideo: uvc_v4l2_poll
[  +0.011208] uvcvideo: uvc_v4l2_poll
[  +0.000068] uvcvideo: uvc_v4l2_poll
[  +0.000065] uvcvideo: uvc_v4l2_poll
[  +0.011296] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.011136] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.011097] uvcvideo: uvc_v4l2_poll
[  +0.000149] uvcvideo: uvc_v4l2_poll
[  +0.000139] uvcvideo: uvc_v4l2_poll
[  +0.010759] uvcvideo: uvc_v4l2_poll
[  +0.000135] uvcvideo: uvc_v4l2_poll
[  +0.000136] uvcvideo: uvc_v4l2_poll
[  +0.011045] uvcvideo: uvc_v4l2_poll
[  +0.000121] uvcvideo: uvc_v4l2_poll
[  +0.000118] uvcvideo: uvc_v4l2_poll
[  +0.010936] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000160] uvcvideo: uvc_v4l2_poll
[  +0.000474] uvcvideo: uvc_v4l2_poll
[  +0.010478] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.010961] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.011000] uvcvideo: uvc_v4l2_poll
[  +0.000071] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.011217] uvcvideo: uvc_v4l2_poll
[  +0.000066] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000434] uvcvideo: uvc_v4l2_poll
[  +0.010640] uvcvideo: uvc_v4l2_poll
[  +0.000067] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.011072] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.011217] uvcvideo: uvc_v4l2_poll
[  +0.000078] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000421] uvcvideo: uvc_v4l2_poll
[  +0.010775] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.000638] uvcvideo: uvc_v4l2_poll
[  +0.010245] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.000119] uvcvideo: uvc_v4l2_poll
[  +0.011088] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.011039] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000120] uvcvideo: uvc_v4l2_poll
[  +0.011316] uvcvideo: uvc_v4l2_poll
[  +0.000140] uvcvideo: uvc_v4l2_poll
[  +0.000167] uvcvideo: uvc_v4l2_poll
[  +0.010779] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.000132] uvcvideo: uvc_v4l2_poll
[  +0.001524] uvcvideo: uvc_v4l2_poll
[  +0.009461] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000139] uvcvideo: uvc_v4l2_poll
[  +0.000716] uvcvideo: uvc_v4l2_poll
[  +0.010302] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000099] uvcvideo: uvc_v4l2_poll
[  +0.010908] uvcvideo: uvc_v4l2_poll
[  +0.000124] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.010938] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +0.011236] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.011030] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000101] uvcvideo: uvc_v4l2_poll
[  +0.010902] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000094] uvcvideo: uvc_v4l2_poll
[  +0.011099] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.011089] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.010965] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.011037] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000089] uvcvideo: uvc_v4l2_poll
[  +0.011079] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.011054] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.011077] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000098] uvcvideo: uvc_v4l2_poll
[  +0.010902] uvcvideo: uvc_v4l2_poll
[  +0.000159] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.011047] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.011081] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.011017] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000098] uvcvideo: uvc_v4l2_poll
[  +0.011088] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.011091] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000097] uvcvideo: uvc_v4l2_poll
[  +0.010908] uvcvideo: uvc_v4l2_poll
[  +0.000138] uvcvideo: uvc_v4l2_poll
[  +0.000136] uvcvideo: uvc_v4l2_poll
[  +0.011064] uvcvideo: uvc_v4l2_poll
[  +0.000110] uvcvideo: uvc_v4l2_poll
[  +0.000094] uvcvideo: uvc_v4l2_poll
[  +0.011017] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.011081] uvcvideo: uvc_v4l2_poll
[  +0.000122] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.011060] uvcvideo: uvc_v4l2_poll
[  +0.000113] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.010928] uvcvideo: uvc_v4l2_poll
[  +0.000089] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.011096] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000078] uvcvideo: uvc_v4l2_poll
[  +0.011124] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.011001] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.011039] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +0.011064] uvcvideo: uvc_v4l2_poll
[  +0.000176] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.010992] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.011059] uvcvideo: uvc_v4l2_poll
[  +0.000101] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.011089] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.011035] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.011074] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000536] uvcvideo: uvc_v4l2_poll
[  +0.000464] uvcvideo: uvc_v4l2_poll
[  +0.010051] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.011110] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.022243] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.078528] uvcvideo: uvc_v4l2_poll
[  +0.000185] uvcvideo: uvc_v4l2_poll
[  +0.000142] uvcvideo: uvc_v4l2_poll
[  +0.010896] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.011171] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.011019] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000123] uvcvideo: uvc_v4l2_poll
[  +0.010802] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000110] uvcvideo: uvc_v4l2_poll
[  +0.011148] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000535] uvcvideo: uvc_v4l2_poll
[  +0.000312] uvcvideo: uvc_v4l2_poll
[  +0.010294] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000111] uvcvideo: uvc_v4l2_poll
[  +0.011026] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.202773] uvcvideo: uvc_v4l2_poll
[  +0.000156] uvcvideo: uvc_v4l2_poll
[  +0.000150] uvcvideo: uvc_v4l2_poll
[  +0.010916] uvcvideo: uvc_v4l2_poll
[  +0.000156] uvcvideo: uvc_v4l2_poll
[  +0.000173] uvcvideo: uvc_v4l2_poll
[  +0.000667] uvcvideo: uvc_v4l2_poll
[  +0.009988] uvcvideo: uvc_v4l2_poll
[  +0.000272] uvcvideo: uvc_v4l2_poll
[  +0.000673] uvcvideo: uvc_v4l2_poll
[  +0.000309] uvcvideo: uvc_v4l2_poll
[  +0.010156] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.000147] uvcvideo: uvc_v4l2_poll
[  +0.010727] uvcvideo: uvc_v4l2_poll
[  +0.000117] uvcvideo: uvc_v4l2_poll
[  +0.000125] uvcvideo: uvc_v4l2_poll
[  +0.011226] uvcvideo: uvc_v4l2_poll
[  +0.000130] uvcvideo: uvc_v4l2_poll
[  +0.000135] uvcvideo: uvc_v4l2_poll
[  +0.010746] uvcvideo: uvc_v4l2_poll
[  +0.000121] uvcvideo: uvc_v4l2_poll
[  +0.000129] uvcvideo: uvc_v4l2_poll
[  +0.011171] uvcvideo: uvc_v4l2_poll
[  +0.000154] uvcvideo: uvc_v4l2_poll
[  +0.000170] uvcvideo: uvc_v4l2_poll
[  +0.011096] uvcvideo: uvc_v4l2_poll
[  +0.000166] uvcvideo: uvc_v4l2_poll
[  +0.000238] uvcvideo: uvc_v4l2_poll
[  +0.067244] uvcvideo: uvc_v4l2_poll
[  +0.000146] uvcvideo: uvc_v4l2_poll
[  +0.000563] uvcvideo: uvc_v4l2_poll
[  +0.000110] uvcvideo: uvc_v4l2_poll
[  +0.000187] uvcvideo: uvc_v4l2_poll
[  +0.000212] uvcvideo: uvc_v4l2_poll
[  +0.001525] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.064399] uvcvideo: uvc_v4l2_poll
[  +0.000186] uvcvideo: uvc_v4l2_poll
[  +0.000215] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000004] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.002048] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
[  +0.000005] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[  +0.001836] uvcvideo: Setting frame interval to 1/30 (333333).
[  +0.030557] uvcvideo: uvc_v4l2_mmap
[  +0.000035] uvcvideo: uvc_v4l2_mmap
[  +0.000027] uvcvideo: uvc_v4l2_mmap
[  +0.000027] uvcvideo: uvc_v4l2_mmap
[  +0.000404] uvcvideo: Device requested 3072 B/frame bandwidth.
[  +0.000004] uvcvideo: Selecting alternate setting 1 (3072 B/frame bandwidth).
[  +0.038890] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[  +0.001093] uvcvideo: uvc_v4l2_poll
[  +0.000950] uvcvideo: uvc_v4l2_poll
[  +0.001312] uvcvideo: uvc_v4l2_poll
[  +0.000350] uvcvideo: uvc_v4l2_poll
[  +0.596619] uvcvideo: uvc_v4l2_poll
[  +0.000097] uvcvideo: uvc_v4l2_poll
[  +0.000110] uvcvideo: uvc_v4l2_poll
[  +0.010996] uvcvideo: uvc_v4l2_poll
[  +0.000073] uvcvideo: uvc_v4l2_poll
[  +0.000076] uvcvideo: uvc_v4l2_poll
[  +0.011226] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000459] uvcvideo: uvc_v4l2_poll
[  +0.000773] uvcvideo: uvc_v4l2_poll
[  +0.009838] uvcvideo: uvc_v4l2_poll
[  +0.000132] uvcvideo: uvc_v4l2_poll
[  +0.000153] uvcvideo: uvc_v4l2_poll
[  +0.003668] uvcvideo: uvc_v4l2_poll
[  +0.007280] uvcvideo: uvc_v4l2_poll
[  +0.000099] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.011080] uvcvideo: uvc_v4l2_poll
[  +0.000114] uvcvideo: uvc_v4l2_poll
[  +0.000120] uvcvideo: uvc_v4l2_poll
[  +0.011017] uvcvideo: uvc_v4l2_poll
[  +0.000120] uvcvideo: uvc_v4l2_poll
[  +0.000098] uvcvideo: uvc_v4l2_poll
[  +0.011018] uvcvideo: uvc_v4l2_poll
[  +0.000183] uvcvideo: uvc_v4l2_poll
[  +0.000152] uvcvideo: uvc_v4l2_poll
[  +0.010849] uvcvideo: uvc_v4l2_poll
[  +0.000094] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.011147] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.011044] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000127] uvcvideo: uvc_v4l2_poll
[  +0.011088] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.011039] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.011042] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000073] uvcvideo: uvc_v4l2_poll
[  +0.022422] uvcvideo: uvc_v4l2_poll
[  +0.001330] uvcvideo: uvc_v4l2_poll
[  +0.000113] uvcvideo: uvc_v4l2_poll
[  +0.009760] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.011052] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.011000] uvcvideo: uvc_v4l2_poll
[  +0.000110] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.011041] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.000061] uvcvideo: uvc_v4l2_poll
[  +0.011166] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.011061] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000049] uvcvideo: uvc_v4l2_poll
[  +5.422041] uvcvideo: uvc_v4l2_poll
[  +0.001183] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.010019] uvcvideo: uvc_v4l2_poll
[  +0.000073] uvcvideo: uvc_v4l2_poll
[  +0.000053] uvcvideo: uvc_v4l2_poll
[  +0.011161] uvcvideo: uvc_v4l2_poll
[  +0.000099] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.011278] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.010948] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.011129] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.011018] uvcvideo: uvc_v4l2_poll
[  +0.000165] uvcvideo: uvc_v4l2_poll
[  +0.000128] uvcvideo: uvc_v4l2_poll
[  +0.010957] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +0.033520] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.022355] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.011176] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000078] uvcvideo: uvc_v4l2_poll
[  +0.011024] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.000073] uvcvideo: uvc_v4l2_poll
[  +0.011011] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.011013] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.011158] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.010938] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.011071] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.011066] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.011148] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.010879] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.011176] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.011108] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.011132] uvcvideo: uvc_v4l2_poll
[  +0.000111] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.010926] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.011107] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.665660] uvcvideo: uvc_v4l2_poll
[  +0.000101] uvcvideo: uvc_v4l2_poll
[  +2.133005] uvcvideo: uvc_v4l2_poll
[  +0.000069] uvcvideo: uvc_v4l2_poll
[Aug22 11:23] uvcvideo: uvc_v4l2_poll
[  +0.000044] uvcvideo: uvc_v4l2_poll
[ +11.614986] uvcvideo: uvc_v4l2_poll
[  +0.000041] uvcvideo: uvc_v4l2_poll
[  +0.000031] uvcvideo: uvc_v4l2_poll
[  +0.011118] uvcvideo: uvc_v4l2_poll
[  +0.000022] uvcvideo: uvc_v4l2_poll
[  +0.000017] uvcvideo: uvc_v4l2_poll
[  +0.022506] uvcvideo: uvc_v4l2_poll
[  +0.000042] uvcvideo: uvc_v4l2_poll
[  +0.000031] uvcvideo: uvc_v4l2_poll
[  +0.000427] uvcvideo: uvc_v4l2_poll
[  +0.000015] uvcvideo: uvc_v4l2_poll
[  +0.000012] uvcvideo: uvc_v4l2_poll
[  +0.010691] uvcvideo: uvc_v4l2_poll
[  +0.000035] uvcvideo: uvc_v4l2_poll
[  +0.000027] uvcvideo: uvc_v4l2_poll
[  +0.011129] uvcvideo: uvc_v4l2_poll
[  +0.000021] uvcvideo: uvc_v4l2_poll
[  +0.000016] uvcvideo: uvc_v4l2_poll
[  +0.011319] uvcvideo: uvc_v4l2_poll
[  +0.000041] uvcvideo: uvc_v4l2_poll
[  +0.000031] uvcvideo: uvc_v4l2_poll
[  +0.011163] uvcvideo: uvc_v4l2_poll
[  +0.000041] uvcvideo: uvc_v4l2_poll
[  +0.000027] uvcvideo: uvc_v4l2_poll
[  +0.011182] uvcvideo: uvc_v4l2_poll
[  +0.000041] uvcvideo: uvc_v4l2_poll
[  +0.000033] uvcvideo: uvc_v4l2_poll
[  +0.011200] uvcvideo: uvc_v4l2_poll
[  +0.000048] uvcvideo: uvc_v4l2_poll
[  +0.000039] uvcvideo: uvc_v4l2_poll
[  +0.011184] uvcvideo: uvc_v4l2_poll
[  +0.000038] uvcvideo: uvc_v4l2_poll
[  +0.000028] uvcvideo: uvc_v4l2_poll
[  +0.011166] uvcvideo: uvc_v4l2_poll
[  +0.000043] uvcvideo: uvc_v4l2_poll
[  +0.000030] uvcvideo: uvc_v4l2_poll
[  +0.011173] uvcvideo: uvc_v4l2_poll
[  +0.000039] uvcvideo: uvc_v4l2_poll
[  +0.000029] uvcvideo: uvc_v4l2_poll
[  +0.022433] uvcvideo: uvc_v4l2_poll
[  +0.000041] uvcvideo: uvc_v4l2_poll
[  +0.000031] uvcvideo: uvc_v4l2_poll
[  +0.011155] uvcvideo: uvc_v4l2_poll
[  +0.000039] uvcvideo: uvc_v4l2_poll
[  +0.000029] uvcvideo: uvc_v4l2_poll
[  +0.011144] uvcvideo: uvc_v4l2_poll
[  +0.000022] uvcvideo: uvc_v4l2_poll
[  +0.000015] uvcvideo: uvc_v4l2_poll
[  +0.011262] uvcvideo: uvc_v4l2_poll
[  +0.000046] uvcvideo: uvc_v4l2_poll
[  +0.000034] uvcvideo: uvc_v4l2_poll
[  +0.011261] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +0.000037] uvcvideo: uvc_v4l2_poll
[  +0.011128] uvcvideo: uvc_v4l2_poll
[  +0.000052] uvcvideo: uvc_v4l2_poll
[  +0.000040] uvcvideo: uvc_v4l2_poll
[  +0.011274] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.000069] uvcvideo: uvc_v4l2_poll
[  +0.011167] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.011294] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.010845] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.011017] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.000066] uvcvideo: uvc_v4l2_poll
[  +0.011225] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000144] uvcvideo: uvc_v4l2_poll
[  +0.010919] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.011088] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.011080] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.011097] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.010972] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +0.000057] uvcvideo: uvc_v4l2_poll
[  +0.011168] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.011020] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.011178] uvcvideo: uvc_v4l2_poll
[  +0.000117] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.427253] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.010950] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.011238] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000146] uvcvideo: uvc_v4l2_poll
[  +0.011153] uvcvideo: uvc_v4l2_poll
[  +0.000130] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.010825] uvcvideo: uvc_v4l2_poll
[  +0.000098] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.011100] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.000071] uvcvideo: uvc_v4l2_poll
[  +0.011062] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.011118] uvcvideo: uvc_v4l2_poll
[  +0.000575] uvcvideo: uvc_v4l2_poll
[  +0.000113] uvcvideo: uvc_v4l2_poll
[  +0.004713] uvcvideo: uvc_v4l2_poll
[  +0.000106] uvcvideo: uvc_v4l2_poll
[  +0.000393] uvcvideo: uvc_v4l2_poll
[  +0.001637] uvcvideo: uvc_v4l2_poll
[  +0.005621] uvcvideo: uvc_v4l2_poll
[  +0.000101] uvcvideo: uvc_v4l2_poll
[  +0.009442] uvcvideo: uvc_v4l2_poll
[  +0.000121] uvcvideo: uvc_v4l2_poll
[  +0.000305] uvcvideo: uvc_v4l2_poll
[  +0.001657] uvcvideo: uvc_v4l2_poll
[  +0.001349] uvcvideo: uvc_v4l2_poll
[  +0.000056] uvcvideo: uvc_v4l2_poll
[  +0.727528] uvcvideo: uvc_v4l2_poll
[  +0.000089] uvcvideo: uvc_v4l2_poll
[  +0.000475] uvcvideo: uvc_v4l2_poll
[  +0.000064] uvcvideo: uvc_v4l2_poll
[  +0.000036] uvcvideo: uvc_v4l2_poll
[  +0.000036] uvcvideo: uvc_v4l2_poll
[  +0.010493] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000503] uvcvideo: uvc_v4l2_poll
[  +0.000056] uvcvideo: uvc_v4l2_poll
[  +0.010879] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.000260] uvcvideo: uvc_v4l2_poll
[  +0.000059] uvcvideo: uvc_v4l2_poll
[  +0.010849] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.000379] uvcvideo: uvc_v4l2_poll
[  +0.000076] uvcvideo: uvc_v4l2_poll
[  +0.000170] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.000213] uvcvideo: uvc_v4l2_poll
[  +0.000056] uvcvideo: uvc_v4l2_poll
[  +0.010083] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.000207] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.010722] uvcvideo: uvc_v4l2_poll
[  +0.000065] uvcvideo: uvc_v4l2_poll
[  +0.000189] uvcvideo: uvc_v4l2_poll
[  +0.000065] uvcvideo: uvc_v4l2_poll
[  +0.011037] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.000226] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.011062] uvcvideo: uvc_v4l2_poll
[  +0.000089] uvcvideo: uvc_v4l2_poll
[  +0.000194] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.010721] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000496] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.888042] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.000205] uvcvideo: uvc_v4l2_poll
[  +0.000061] uvcvideo: uvc_v4l2_poll
[  +0.010858] uvcvideo: uvc_v4l2_poll
[  +0.000110] uvcvideo: uvc_v4l2_poll
[  +0.000215] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.011039] uvcvideo: uvc_v4l2_poll
[  +0.000076] uvcvideo: uvc_v4l2_poll
[  +0.000249] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.011104] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.000243] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.010540] uvcvideo: uvc_v4l2_poll
[  +0.000067] uvcvideo: uvc_v4l2_poll
[  +0.000218] uvcvideo: uvc_v4l2_poll
[  +0.000053] uvcvideo: uvc_v4l2_poll
[  +0.011122] uvcvideo: uvc_v4l2_poll
[  +0.000086] uvcvideo: uvc_v4l2_poll
[  +0.000242] uvcvideo: uvc_v4l2_poll
[  +0.000059] uvcvideo: uvc_v4l2_poll
[  +0.000160] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.000161] uvcvideo: uvc_v4l2_poll
[  +0.000052] uvcvideo: uvc_v4l2_poll
[  +0.010290] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.000238] uvcvideo: uvc_v4l2_poll
[  +0.000057] uvcvideo: uvc_v4l2_poll
[  +0.010676] uvcvideo: uvc_v4l2_poll
[  +0.000066] uvcvideo: uvc_v4l2_poll
[  +0.000132] uvcvideo: uvc_v4l2_poll
[  +0.000047] uvcvideo: uvc_v4l2_poll
[  +0.011096] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000216] uvcvideo: uvc_v4l2_poll
[  +0.000061] uvcvideo: uvc_v4l2_poll
[  +0.010904] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.000216] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.011076] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.003527] uvcvideo: uvc_v4l2_poll
[  +0.000072] uvcvideo: uvc_v4l2_poll
[  +0.209891] uvcvideo: uvc_v4l2_poll
[  +0.000086] uvcvideo: uvc_v4l2_poll
[  +0.000212] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.010761] uvcvideo: uvc_v4l2_poll
[  +0.000067] uvcvideo: uvc_v4l2_poll
[  +0.000198] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.011060] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.000292] uvcvideo: uvc_v4l2_poll
[  +0.000056] uvcvideo: uvc_v4l2_poll
[  +0.010744] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000245] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +0.011072] uvcvideo: uvc_v4l2_poll
[  +0.000086] uvcvideo: uvc_v4l2_poll
[  +0.000278] uvcvideo: uvc_v4l2_poll
[  +0.000065] uvcvideo: uvc_v4l2_poll
[  +0.000185] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.000118] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.010305] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.000651] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.000177] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.010106] uvcvideo: uvc_v4l2_poll
[  +0.000107] uvcvideo: uvc_v4l2_poll
[  +0.000212] uvcvideo: uvc_v4l2_poll
[  +0.000049] uvcvideo: uvc_v4l2_poll
[  +0.010845] uvcvideo: uvc_v4l2_poll
[  +0.000098] uvcvideo: uvc_v4l2_poll
[  +0.000252] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.000131] uvcvideo: uvc_v4l2_poll
[  +0.000066] uvcvideo: uvc_v4l2_poll
[  +0.000295] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +1.213918] uvcvideo: uvc_v4l2_poll
[  +0.000086] uvcvideo: uvc_v4l2_poll
[  +2.722233] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +9.438719] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.000117] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +0.134711] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.000167] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +0.213469] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.000192] uvcvideo: uvc_v4l2_poll
[  +0.000048] uvcvideo: uvc_v4l2_poll
[  +1.630584] uvcvideo: uvc_v4l2_poll
[  +0.000138] uvcvideo: uvc_v4l2_poll
[  +2.745047] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000183] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +0.303498] uvcvideo: uvc_v4l2_poll
[  +0.000088] uvcvideo: uvc_v4l2_poll
[  +0.000076] uvcvideo: uvc_v4l2_poll
[  +0.000070] uvcvideo: uvc_v4l2_poll
[  +0.202217] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.000049] uvcvideo: uvc_v4l2_poll
[  +3.003466] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.000191] uvcvideo: uvc_v4l2_poll
[  +0.000052] uvcvideo: uvc_v4l2_poll
[  +0.078478] uvcvideo: uvc_v4l2_poll
[  +0.000096] uvcvideo: uvc_v4l2_poll
[  +0.000168] uvcvideo: uvc_v4l2_poll
[  +0.000099] uvcvideo: uvc_v4l2_poll
[  +0.123359] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000104] uvcvideo: uvc_v4l2_poll
[  +0.000048] uvcvideo: uvc_v4l2_poll
[  +0.595960] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.000032] uvcvideo: uvc_v4l2_poll
[  +0.000053] uvcvideo: uvc_v4l2_poll
[  +0.056047] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +0.000065] uvcvideo: uvc_v4l2_poll
[  +0.067370] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.000206] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.055794] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.000128] uvcvideo: uvc_v4l2_poll
[  +0.000048] uvcvideo: uvc_v4l2_poll
[  +0.078454] uvcvideo: uvc_v4l2_poll
[  +0.000089] uvcvideo: uvc_v4l2_poll
[  +0.000139] uvcvideo: uvc_v4l2_poll
[  +0.000049] uvcvideo: uvc_v4l2_poll
[  +0.404748] uvcvideo: uvc_v4l2_poll
[  +0.000088] uvcvideo: uvc_v4l2_poll
[  +0.000112] uvcvideo: uvc_v4l2_poll
[  +0.000049] uvcvideo: uvc_v4l2_poll
[  +0.055996] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000115] uvcvideo: uvc_v4l2_poll
[  +0.000073] uvcvideo: uvc_v4l2_poll
[  +0.044723] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000072] uvcvideo: uvc_v4l2_poll
[  +0.044732] uvcvideo: uvc_v4l2_poll
[  +0.000108] uvcvideo: uvc_v4l2_poll
[  +0.000130] uvcvideo: uvc_v4l2_poll
[  +0.000055] uvcvideo: uvc_v4l2_poll
[  +0.067232] uvcvideo: uvc_v4l2_poll
[  +0.000078] uvcvideo: uvc_v4l2_poll
[  +0.000117] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +2.068021] uvcvideo: uvc_v4l2_poll
[  +0.000117] uvcvideo: uvc_v4l2_poll
[  +0.001494] uvcvideo: uvc_v4l2_poll
[  +0.000121] uvcvideo: uvc_v4l2_poll
[  +0.000240] uvcvideo: uvc_v4l2_poll
[  +0.000061] uvcvideo: uvc_v4l2_poll
[  +0.292111] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000117] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +2.553480] uvcvideo: uvc_v4l2_poll
[  +0.000098] uvcvideo: uvc_v4l2_poll
[  +0.000113] uvcvideo: uvc_v4l2_poll
[  +0.000041] uvcvideo: uvc_v4l2_poll
[  +0.078413] uvcvideo: uvc_v4l2_poll
[  +0.000087] uvcvideo: uvc_v4l2_poll
[  +0.000153] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.101024] uvcvideo: uvc_v4l2_poll
[  +0.000086] uvcvideo: uvc_v4l2_poll
[  +0.000118] uvcvideo: uvc_v4l2_poll
[  +0.000048] uvcvideo: uvc_v4l2_poll
[  +0.224767] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.000277] uvcvideo: uvc_v4l2_poll
[  +0.000063] uvcvideo: uvc_v4l2_poll
[  +0.089557] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.000252] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +1.473262] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.235971] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.000165] uvcvideo: uvc_v4l2_poll
[  +0.000061] uvcvideo: uvc_v4l2_poll
[  +0.359670] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.000150] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.663456] uvcvideo: uvc_v4l2_poll
[  +0.000079] uvcvideo: uvc_v4l2_poll
[  +0.000149] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.067208] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000148] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.089723] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000140] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.157192] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000146] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.089744] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000141] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.517135] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +0.067276] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000119] uvcvideo: uvc_v4l2_poll
[  +0.000046] uvcvideo: uvc_v4l2_poll
[  +0.067349] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000282] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.078323] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.000317] uvcvideo: uvc_v4l2_poll
[  +0.000059] uvcvideo: uvc_v4l2_poll
[  +0.044555] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.000204] uvcvideo: uvc_v4l2_poll
[  +0.000072] uvcvideo: uvc_v4l2_poll
[  +0.033366] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000048] uvcvideo: uvc_v4l2_poll
[  +0.022173] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000184] uvcvideo: uvc_v4l2_poll
[  +0.000063] uvcvideo: uvc_v4l2_poll
[  +0.010880] uvcvideo: uvc_v4l2_poll
[  +0.000077] uvcvideo: uvc_v4l2_poll
[  +0.002414] uvcvideo: uvc_v4l2_poll
[  +0.000032] uvcvideo: uvc_v4l2_poll
[  +0.031103] uvcvideo: uvc_v4l2_poll
[  +0.000059] uvcvideo: uvc_v4l2_poll
[  +0.000211] uvcvideo: uvc_v4l2_poll
[  +0.000037] uvcvideo: uvc_v4l2_poll
[  +0.247392] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000052] uvcvideo: uvc_v4l2_poll
[  +0.000037] uvcvideo: uvc_v4l2_poll
[  +0.010878] uvcvideo: uvc_v4l2_poll
[  +0.000071] uvcvideo: uvc_v4l2_poll
[  +0.000086] uvcvideo: uvc_v4l2_poll
[  +0.000050] uvcvideo: uvc_v4l2_poll
[  +0.011363] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000116] uvcvideo: uvc_v4l2_poll
[  +0.000068] uvcvideo: uvc_v4l2_poll
[  +0.010945] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.000182] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.010735] uvcvideo: uvc_v4l2_poll
[  +0.000069] uvcvideo: uvc_v4l2_poll
[  +0.000194] uvcvideo: uvc_v4l2_poll
[  +0.000047] uvcvideo: uvc_v4l2_poll
[  +0.011026] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.000241] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.010708] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000200] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.010880] uvcvideo: uvc_v4l2_poll
[  +0.000078] uvcvideo: uvc_v4l2_poll
[  +0.000530] uvcvideo: uvc_v4l2_poll
[  +0.000071] uvcvideo: uvc_v4l2_poll
[  +0.010617] uvcvideo: uvc_v4l2_poll
[  +0.000333] uvcvideo: uvc_v4l2_poll
[  +0.010950] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.000208] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.010908] uvcvideo: uvc_v4l2_poll
[  +0.000109] uvcvideo: uvc_v4l2_poll
[  +0.000033] uvcvideo: uvc_v4l2_poll
[  +0.202362] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000127] uvcvideo: uvc_v4l2_poll
[  +0.000048] uvcvideo: uvc_v4l2_poll
[  +0.010799] uvcvideo: uvc_v4l2_poll
[  +0.000064] uvcvideo: uvc_v4l2_poll
[  +0.000242] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.011053] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.000424] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.011087] uvcvideo: uvc_v4l2_poll
[  +0.000088] uvcvideo: uvc_v4l2_poll
[  +0.000289] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.010324] uvcvideo: uvc_v4l2_poll
[  +0.000065] uvcvideo: uvc_v4l2_poll
[  +0.000230] uvcvideo: uvc_v4l2_poll
[  +0.000061] uvcvideo: uvc_v4l2_poll
[  +0.011062] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.000155] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.010899] uvcvideo: uvc_v4l2_poll
[  +0.000088] uvcvideo: uvc_v4l2_poll
[  +0.000365] uvcvideo: uvc_v4l2_poll
[  +0.000065] uvcvideo: uvc_v4l2_poll
[  +0.010493] uvcvideo: uvc_v4l2_poll
[  +0.000073] uvcvideo: uvc_v4l2_poll
[  +0.000167] uvcvideo: uvc_v4l2_poll
[  +0.000053] uvcvideo: uvc_v4l2_poll
[  +0.011030] uvcvideo: uvc_v4l2_poll
[  +0.000088] uvcvideo: uvc_v4l2_poll
[  +0.000214] uvcvideo: uvc_v4l2_poll
[  +0.000045] uvcvideo: uvc_v4l2_poll
[  +0.010950] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +0.000061] uvcvideo: uvc_v4l2_poll
[  +0.000052] uvcvideo: uvc_v4l2_poll
[  +0.292277] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.000201] uvcvideo: uvc_v4l2_poll
[  +0.000055] uvcvideo: uvc_v4l2_poll
[  +0.022275] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.011100] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000329] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.010503] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.000311] uvcvideo: uvc_v4l2_poll
[  +0.000064] uvcvideo: uvc_v4l2_poll
[  +0.011045] uvcvideo: uvc_v4l2_poll
[  +0.000100] uvcvideo: uvc_v4l2_poll
[  +0.000284] uvcvideo: uvc_v4l2_poll
[  +0.000066] uvcvideo: uvc_v4l2_poll
[  +0.010698] uvcvideo: uvc_v4l2_poll
[  +0.000093] uvcvideo: uvc_v4l2_poll
[  +0.000219] uvcvideo: uvc_v4l2_poll
[  +0.000069] uvcvideo: uvc_v4l2_poll
[  +0.010726] uvcvideo: uvc_v4l2_poll
[  +0.000071] uvcvideo: uvc_v4l2_poll
[  +0.000196] uvcvideo: uvc_v4l2_poll
[  +0.000058] uvcvideo: uvc_v4l2_poll
[  +0.010943] uvcvideo: uvc_v4l2_poll
[  +0.000092] uvcvideo: uvc_v4l2_poll
[  +0.000238] uvcvideo: uvc_v4l2_poll
[  +0.000057] uvcvideo: uvc_v4l2_poll
[  +0.010888] uvcvideo: uvc_v4l2_poll
[  +0.000082] uvcvideo: uvc_v4l2_poll
[  +0.000103] uvcvideo: uvc_v4l2_poll
[  +0.000060] uvcvideo: uvc_v4l2_poll
[  +0.000051] uvcvideo: uvc_v4l2_poll
[  +0.000040] uvcvideo: uvc_v4l2_poll
[  +0.000291] uvcvideo: uvc_v4l2_poll
[  +0.000049] uvcvideo: uvc_v4l2_poll
[  +0.010599] uvcvideo: uvc_v4l2_poll
[  +0.000080] uvcvideo: uvc_v4l2_poll
[  +0.004236] uvcvideo: uvc_v4l2_poll
[  +0.000105] uvcvideo: uvc_v4l2_poll
[  +0.006823] uvcvideo: uvc_v4l2_poll
[  +0.000126] uvcvideo: uvc_v4l2_poll
[  +0.000219] uvcvideo: uvc_v4l2_poll
[  +0.000052] uvcvideo: uvc_v4l2_poll
[  +1.559554] uvcvideo: uvc_v4l2_poll
[  +0.000046] uvcvideo: uvc_v4l2_poll
[  +0.306973] uvcvideo: uvc_v4l2_poll
[  +0.000036] uvcvideo: uvc_v4l2_poll
[  +5.163613] uvcvideo: uvc_v4l2_poll
[  +0.000037] uvcvideo: uvc_v4l2_poll
[Aug22 11:24] uvcvideo: uvc_v4l2_poll
[  +0.000039] uvcvideo: uvc_v4l2_poll
[  +0.101519] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.826821] uvcvideo: uvc_v4l2_poll
[  +0.000102] uvcvideo: uvc_v4l2_poll
[  +2.694071] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.101316] uvcvideo: uvc_v4l2_poll
[  +0.000085] uvcvideo: uvc_v4l2_poll
[  +1.147398] uvcvideo: uvc_v4l2_poll
[  +0.000091] uvcvideo: uvc_v4l2_poll
[  +0.089559] uvcvideo: uvc_v4l2_poll
[  +0.000037] uvcvideo: uvc_v4l2_poll
[  +5.970260] uvcvideo: uvc_v4l2_poll
[  +0.000062] uvcvideo: uvc_v4l2_poll
[  +5.290630] uvcvideo: uvc_v4l2_poll
[  +0.000036] uvcvideo: uvc_v4l2_poll
[  +0.089974] uvcvideo: uvc_v4l2_poll
[  +0.000036] uvcvideo: uvc_v4l2_poll
[  +0.081393] uvcvideo: uvc_v4l2_poll
[  +0.000039] uvcvideo: uvc_v4l2_poll
[  +0.003282] uvcvideo: uvc_v4l2_poll
[  +0.000074] uvcvideo: uvc_v4l2_poll
[  +0.004377] uvcvideo: uvc_v4l2_poll
[  +0.000038] uvcvideo: uvc_v4l2_poll
[  +0.000402] uvcvideo: uvc_v4l2_poll
[  +0.000027] uvcvideo: uvc_v4l2_poll
[  +1.732716] uvcvideo: uvc_v4l2_poll
[  +0.000034] uvcvideo: uvc_v4l2_poll
[  +0.078889] uvcvideo: uvc_v4l2_poll
[  +0.000041] uvcvideo: uvc_v4l2_poll
[  +0.000016] uvcvideo: uvc_v4l2_poll
[  +0.000011] uvcvideo: uvc_v4l2_poll
[  +0.112314] uvcvideo: uvc_v4l2_poll
[  +0.000662] uvcvideo: uvc_v4l2_poll
[  +0.000027] uvcvideo: uvc_v4l2_poll
[  +0.010917] uvcvideo: uvc_v4l2_poll
[  +0.000075] uvcvideo: uvc_v4l2_poll
[  +0.000033] uvcvideo: uvc_v4l2_poll
[  +0.224882] uvcvideo: uvc_v4l2_poll
[  +0.000090] uvcvideo: uvc_v4l2_poll
[  +0.002206] uvcvideo: uvc_v4l2_poll
[  +0.000083] uvcvideo: uvc_v4l2_poll
[  +0.413798] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.101188] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +1.848801] uvcvideo: uvc_v4l2_poll
[  +0.000045] uvcvideo: uvc_v4l2_poll
[  +2.662337] uvcvideo: uvc_v4l2_poll
[  +0.000081] uvcvideo: uvc_v4l2_poll
[  +0.067422] uvcvideo: uvc_v4l2_poll
[  +0.000084] uvcvideo: uvc_v4l2_poll
[  +0.450351] uvcvideo: uvc_v4l2_poll
[  +0.000089] uvcvideo: uvc_v4l2_poll
[  +0.001550] uvcvideo: uvc_v4l2_poll
[  +0.000094] uvcvideo: uvc_v4l2_poll
[  +0.065238] uvcvideo: uvc_v4l2_poll
[  +0.000097] uvcvideo: uvc_v4l2_poll
[  +0.000864] uvcvideo: uvc_v4l2_poll
[  +0.000052] uvcvideo: uvc_v4l2_poll
[  +0.865232] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll
[  +0.067456] uvcvideo: uvc_v4l2_poll
[  +0.000095] uvcvideo: uvc_v4l2_poll


--------------89D5DA98652B134000DFE8DA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------89D5DA98652B134000DFE8DA
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--------------89D5DA98652B134000DFE8DA--

