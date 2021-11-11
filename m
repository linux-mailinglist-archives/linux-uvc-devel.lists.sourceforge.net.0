Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D10044DD39
	for <lists+linux-uvc-devel@lfdr.de>; Thu, 11 Nov 2021 22:41:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mlHom-0002R2-Vp; Thu, 11 Nov 2021 21:41:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <michal2992@gmail.com>) id 1mlHol-0002Qs-DQ
 for linux-uvc-devel@lists.sourceforge.net; Thu, 11 Nov 2021 21:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7onXD5vgL8a+PCpHKkmHgXFpnjEDEKVIvn1ediBHS/A=; b=Pm1UwNFAM5muiaoTOMi4TSBKoA
 0ERJMfREsMfb5oYZbNPHMX9bIeVItdZlXiBYNkLdqX/6V8OwrN6o5pyGpgAwUoyocpGf/Fg/3C/Q8
 aB9cFLGUyRNAuqPPD2V5UGeJ3CLg/2wRX/IJFJ3peEGxQZFOgb3CuzAWXAk/ztJ0wwtg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7onXD5vgL8a+PCpHKkmHgXFpnjEDEKVIvn1ediBHS/A=; b=j
 FQWl99dyvBzbL9aBU+suzP1xMdW8+pQTRRWpj302Yp0mItmq4skoiskvIAvSTABtIZzOYtTZHjtMF
 /QP4Glg9WdX8spK2cOqj3Y3P9EfoKXinK2QPVkdvUjSrKI716kti0SU3Yz2h9jUtPPCzqHlkNoARW
 adqAD83JdBO4Snh8=;
Received: from mail-yb1-f174.google.com ([209.85.219.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mlHoj-00A3Ah-JR
 for linux-uvc-devel@lists.sourceforge.net; Thu, 11 Nov 2021 21:41:11 +0000
Received: by mail-yb1-f174.google.com with SMTP id u60so18448332ybi.9
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 11 Nov 2021 13:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7onXD5vgL8a+PCpHKkmHgXFpnjEDEKVIvn1ediBHS/A=;
 b=NHCC8Wst5dIc9GAGLqdrWevdG1kKIYe68YTI7qJxY9ct5a3P5ScHfHNXty8YSEMso2
 u/kK1AC7qPuIb+GvXXMrlEiafWglqK/n3OjW/niyTvbrw+WYoy48k6VQlQetkM/6D2BG
 04/2y/dlhJAmsqXbjI5iMPKAcwDzviN9Xwh6ElP/CJ4emAffiMIMxeR8i85X9oI+dRlI
 E70qG943FjOvuwykfoFJHSymXMZRe44OiqAzrA0N+QVsoGjsI+an9ARPcXFM2GbnjnfH
 kGAGtvj5x+hCyzUfTviLL0w64ZmkxwhRx9jrqekCTs49NqyjeBaxVMmPw5cSl3uSMBgB
 Bd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7onXD5vgL8a+PCpHKkmHgXFpnjEDEKVIvn1ediBHS/A=;
 b=xGsy/yt1UniyF2on4XPW3lsQYmlWncCIS/DvYaCJDSmJkbzAp3Q+7ASyodhasoFwWW
 0eyASqmchTiJLkwN8VbIKDb13ywuyJzabOw/42rEBlnG98va22EohPZJEiuQWIeVOsh1
 2m2YnElQqcYJYtLH8VqBOIMfS5Ku3hqJ8wWZgS0OoKbIWbpm2yH4j9j1XCf45ZePak7U
 y2U2I9FTbbpH9DD2vRt8VxPI+X+Zc2pcmD3yl7rXrjuT6UYUdSefrHLqnQmpelJaojDb
 8Cs7YbYYtcfbhaBzd3/p0lc2ULb+JY08eiEq4Vl0jw/p9jWA1wy2/oYdxEMy4CjpM6qv
 41hg==
X-Gm-Message-State: AOAM531ZEmp4aMnbbbADWnXUNycRbkJCIvC6URoLfS/mvdQaug8ZikjI
 AS3MUTbEPjZzog9WxVzgkz9J7m2X5s7ruMV9TDY1YoF9BxA=
X-Google-Smtp-Source: ABdhPJzxthTNRN+00/fyR7oDYNX5NdPM0Lx9MHcYr3WQr/k6/ELGaldBXdQk5gLG/+bYOutySduEveQwCCilq2Ul4cU=
X-Received: by 2002:a25:3b54:: with SMTP id i81mr10821198yba.541.1636666862721; 
 Thu, 11 Nov 2021 13:41:02 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Micha=C5=82_Bojanowski?= <michal2992@gmail.com>
Date: Thu, 11 Nov 2021 22:40:51 +0100
Message-ID: <CAByPayF_GasCtQapLOMQrwsNwtYiW5TgB1JBy+CPhLrggVANiA@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi! I have a HP ProBook 6450b laptop running xubuntu 20.04.3
 LTS and cannot get the built-in camera (0bda:5801) to work. When I run
 `cheese`
 or `guvcview` the LED over the screen lights-up but both progra [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.174 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal2992[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.174 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [michal2992[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FILL_THIS_FORM         Fill in a form with personal information
X-Headers-End: 1mlHoj-00A3Ah-JR
Subject: [linux-uvc-devel] Trouble with 0bda:5801 - blank screen
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

Hi!

I have a HP ProBook 6450b laptop running xubuntu 20.04.3 LTS and cannot
get the built-in camera (0bda:5801) to work. When I run `cheese` or
`guvcview` the LED over the screen lights-up but both programs show a
blank screen.

I have surfed the internet looking for solution and tried few things
without success.

I'm writing you to rule-out that the driver is the problem and perhaps
also to get some help how to further debug this problem. Please see
below for various diagnostic output. Any help will be greatly
appreciated! Thank you in advance.

``` {.bash}
uname -a
```

    Linux chapek 5.11.0-40-generic #44~20.04.2-Ubuntu SMP Tue Oct 26
18:07:44 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux

``` {.bash}
lsusb -tvd 0bda:5801
```

    /:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
        ID 1d6b:0002 Linux Foundation 2.0 root hub
        |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/8p, 480M
            ID 8087:0020 Intel Corp. Integrated Rate Matching Hub
            |__ Port 2: Dev 4, If 0, Class=Imaging, Driver=, 480M
                ID 0a9d:ff40
    /:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=ehci-pci/2p, 480M
        ID 1d6b:0002 Linux Foundation 2.0 root hub
        |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/6p, 480M
            ID 8087:0020 Intel Corp. Integrated Rate Matching Hub
            |__ Port 3: Dev 5, If 0, Class=Vendor Specific Class, Driver=, 12M
                ID 138a:0007 Validity Sensors, Inc. VFS451 Fingerprint Reader
            |__ Port 5: Dev 4, If 0, Class=Video, Driver=uvcvideo, 480M
                ID 0bda:5801 Realtek Semiconductor Corp.
            |__ Port 5: Dev 4, If 1, Class=Video, Driver=uvcvideo, 480M
                ID 0bda:5801 Realtek Semiconductor Corp.

Switch-on `uvcvideo` tracing:

``` {.bash}
cat /sys/module/uvcvideo/parameters/trace
```

    65535

Log from `guvcview -w5`:

    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
    GUVCVIEW: version 2.0.7
    GUVCVIEW: language catalog=> dir:/usr/share/locale
type:LC_CTYPE=en_US.UTF-8;LC_NUMERIC=pl_PL.UTF-8;LC_TIME=pl_PL.UTF-8;LC_COLLATE=en_US.UTF-8;LC_MONETARY=pl_PL.UTF-8;LC_MESSAGES=en_US.UTF-8;LC_PAPER=pl_PL.UTF-8;LC_NAME=pl_PL.UTF-8;LC_ADDRESS=pl_PL.UTF-8;LC_TELEPHONE=pl_PL.UTF-8;LC_MEASUREMENT=pl_PL.UTF-8;LC_IDENTIFICATION=pl_PL.UTF-8
cat:guvcview.mo
    Guvcview: using GUI 1 for option gtk
    GUVCVIEW: main thread (tid: 35028)
    V4L2_CORE: language catalog=> dir:/usr/share/locale
type:LC_CTYPE=en_US.UTF-8;LC_NUMERIC=pl_PL.UTF-8;LC_TIME=pl_PL.UTF-8;LC_COLLATE=en_US.UTF-8;LC_MONETARY=pl_PL.UTF-8;LC_MESSAGES=en_US.UTF-8;LC_PAPER=pl_PL.UTF-8;LC_NAME=pl_PL.UTF-8;LC_ADDRESS=pl_PL.UTF-8;LC_TELEPHONE=pl_PL.UTF-8;LC_MEASUREMENT=pl_PL.UTF-8;LC_IDENTIFICATION=pl_PL.UTF-8
cat:gview_v4l2core.mo
    V4L2_CORE: capture method mmap (1)
    V4L2_CORE: video device: /dev/video0
    V4L2_CORE: mapping control for Pan (relative)
    V4L2_CORE: mapping control for Tilt (relative)
    V4L2_CORE: mapping control for Pan Reset
    V4L2_CORE: mapping control for Tilt Reset
    V4L2_CORE: mapping control for Focus
    V4L2_CORE: mapping control for LED1 Mode
    V4L2_CORE: mapping control for LED1 Frequency
    V4L2_CORE: mapping control for Disable video processing
    V4L2_CORE: mapping control for Raw bits per pixel
    V4L2_CORE: Init. USB2.0-Camera: USB2.0-Camera (location:
usb-0000:00:1a.0-1.5)
    { pixelformat = 'YUYV', description = 'YUYV 4:2:2' }
    { discrete: width = 640, height = 480 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 160, height = 120 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 176, height = 144 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 320, height = 240 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 352, height = 288 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 800, height = 600 }
        Time interval between frame: 1/15, 1/10, 1/5,
    { discrete: width = 1024, height = 768 }
        Time interval between frame: 1/10, 1/5,
    { discrete: width = 1280, height = 720 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 800 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 1024 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1600, height = 1200 }
        Time interval between frame: 1/5,
    { pixelformat = 'RGB3', description = 'RGB3' }
    { discrete: width = 640, height = 480 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 160, height = 120 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 176, height = 144 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 320, height = 240 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 352, height = 288 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 800, height = 600 }
        Time interval between frame: 1/15, 1/10, 1/5,
    { discrete: width = 1024, height = 768 }
        Time interval between frame: 1/10, 1/5,
    { discrete: width = 1280, height = 720 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 800 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 1024 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1600, height = 1200 }
        Time interval between frame: 1/5,
    { pixelformat = 'BGR3', description = 'BGR3' }
    { discrete: width = 640, height = 480 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 160, height = 120 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 176, height = 144 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 320, height = 240 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 352, height = 288 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 800, height = 600 }
        Time interval between frame: 1/15, 1/10, 1/5,
    { discrete: width = 1024, height = 768 }
        Time interval between frame: 1/10, 1/5,
    { discrete: width = 1280, height = 720 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 800 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 1024 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1600, height = 1200 }
        Time interval between frame: 1/5,
    { pixelformat = 'YU12', description = 'YU12' }
    { discrete: width = 640, height = 480 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 160, height = 120 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 176, height = 144 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 320, height = 240 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 352, height = 288 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 800, height = 600 }
        Time interval between frame: 1/15, 1/10, 1/5,
    { discrete: width = 1024, height = 768 }
        Time interval between frame: 1/10, 1/5,
    { discrete: width = 1280, height = 720 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 800 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 1024 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1600, height = 1200 }
        Time interval between frame: 1/5,
    { pixelformat = 'YV12', description = 'YV12' }
    { discrete: width = 640, height = 480 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 160, height = 120 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 176, height = 144 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 320, height = 240 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 352, height = 288 }
        Time interval between frame: 1/30, 1/25, 1/20, 1/15,
    { discrete: width = 800, height = 600 }
        Time interval between frame: 1/15, 1/10, 1/5,
    { discrete: width = 1024, height = 768 }
        Time interval between frame: 1/10, 1/5,
    { discrete: width = 1280, height = 720 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 800 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1280, height = 1024 }
        Time interval between frame: 1/9, 1/5,
    { discrete: width = 1600, height = 1200 }
        Time interval between frame: 1/5,
    V4L2_CORE: checking muxed H264 format support
    V4L2_CORE: checking for UVCX_H264 unit id
    V4L2_CORE: not a logitech device (vendor_id=0x bda): skiping
peripheral V3 unit id check
    control[0]:(int) 0x980900 'Brightness'
        min:-127 max:127 step:1 def:0 curr:0
    control[1]:(int) 0x980901 'Contrast'
        min:0 max:64 step:1 def:32 curr:0
    control[2]:(int) 0x980902 'Saturation'
        min:0 max:100 step:1 def:50 curr:0
    control[3]:(int) 0x980903 'Hue'
        min:-180 max:180 step:1 def:0 curr:0
    control[4]:(bool) 0x98090c 'White Balance Temperature, Auto'
        def:1 curr:0
    control[5]:(int) 0x980910 'Gamma'
        min:100 max:500 step:1 def:220 curr:0
    control[6]:(int) 0x980913 'Gain'
        min:0 max:100 step:1 def:0 curr:0
    control[7]:(menu) 0x980918 'Power Line Frequency'
        min:0 max:2 def:1 curr:0
        menu[0]: [0] -> 'Disabled'
        menu[1]: [1] -> '50 Hz'
        menu[2]: [2] -> '60 Hz'
    control[8]:(int) 0x98091a 'White Balance Temperature'
        min:2800 max:6500 step:10 def:4650 curr:0
    control[9]:(int) 0x98091b 'Sharpness'
        min:0 max:8 step:1 def:4 curr:0
    control[10]:(int) 0x98091c 'Backlight Compensation'
        min:0 max:1 step:1 def:0 curr:0
    control[11]:(menu) 0x9a0901 'Exposure, Auto'
        min:0 max:3 def:3 curr:0
        menu[0]: [1] -> 'Manual Mode'
        menu[1]: [3] -> 'Aperture Priority Mode'
    control[12]:(int) 0x9a0902 'Exposure (Absolute)'
        min:50 max:10000 step:1 def:166 curr:0
    V4L2_CORE: fps configured to 1/15
    GUVCVIEW: setting video codec to 'dx50'
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec lALSA lib pcm.c:2642:(snd_pcm_open_noupdate)
Unknown PCM cards.pcm.rear
    ALSA lib pcm.c:2642:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.center_lfe
    ALSA lib pcm.c:2642:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.side
    ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel map
    ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel map
    ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel map
    ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel map
    Cannot connect to server socket err = No such file or directory
    Cannot connect to server request channel
    jack server is not running or cannot be started
    JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1,
skipping unlock
    JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1,
skipping unlock
    Cannot connect to server socket err = No such file or directory
    Cannot connect to server request channel
    jack server is not running or cannot be started
    JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1,
skipping unlock
    JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1,
skipping unlock
    ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
    ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
    ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid
type for card
    ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid
type for card
    Cannot connect to server socket err = No such file or directory
    Cannot connect to server request channel
    jack server is not running or cannot be started
    JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1,
skipping unlock
    JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1,
skipping unlock
    ist size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    GUVCVIEW: setting audio codec to 'mp2'
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    GUVCVIEW: basename for my_video.mkv is my_video.mkv
    GUVCVIEW: extension for my_video.mkv is mkv
    GUVCVIEW: basename for my_photo.jpg is my_photo.jpg
    GUVCVIEW: extension for my_photo.jpg is jpg
    --------------------------------------- device #0
    Name                     = HDA Intel MID: 92HD75B3X5 Analog (hw:0,0)
    Host API                 = ALSA
    Max inputs = 2, Max outputs = 4
    Def. low input latency   =    0,006
    Def. low output latency  =    0,006
    Def. high input latency  =    0,035
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #1
    Name                     = HDA Intel MID: 92HD75B3X5 Alt Analog (hw:0,2)
    Host API                 = ALSA
    Max inputs = 2, Max outputs = 0
    Def. low input latency   =    0,006
    Def. low output latency  =   -1,000
    Def. high input latency  =    0,035
    Def. high output latency =   -1,000
    Def. sample rate         = 44100,00
    --------------------------------------- device #2
    Name                     = HDA Intel MID: HDMI 0 (hw:0,3)
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 8
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #3
    Name                     = HDA Intel MID: HDMI 1 (hw:0,7)
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 8
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #4
    Name                     = HDA Intel MID: HDMI 2 (hw:0,8)
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 8
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #5
    Name                     = sysdefault
    Host API                 = ALSA
    Max inputs = 128, Max outputs = 128
    Def. low input latency   =    0,021
    Def. low output latency  =    0,021
    Def. high input latency  =    0,021
    Def. high output latency =    0,021
    Def. sample rate         = 48000,00
    --------------------------------------- device #6
    Name                     = front
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 4
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #7
    Name                     = surround40
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 4
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #8
    Name                     = surround51
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 4
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #9
    Name                     = surround71
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 4
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #10
    Name                     = hdmi
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 8
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,006
    Def. high input latency  =   -1,000
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #11
    Name                     = samplerate
    Host API                 = ALSA
    Max inputs = 128, Max outputs = 128
    Def. low input latency   =    0,008
    Def. low output latency  =    0,008
    Def. high input latency  =    0,023
    Def. high output latency =    0,023
    Def. sample rate         = 44100,00
    --------------------------------------- device #12
    Name                     = speexrate
    Host API                 = ALSA
    Max inputs = 128, Max outputs = 128
    Def. low input latency   =    0,008
    Def. low output latency  =    0,008
    Def. high input latency  =    0,023
    Def. high output latency =    0,023
    Def. sample rate         = 44100,00
    --------------------------------------- device #13
    Name                     = pulse
    Host API                 = ALSA
    Max inputs = 32, Max outputs = 32
    Def. low input latency   =    0,009
    Def. low output latency  =    0,009
    Def. high input latency  =    0,035
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #14
    Name                     = upmix
    Host API                 = ALSA
    Max inputs = 8, Max outputs = 8
    Def. low input latency   =    0,006
    Def. low output latency  =    0,006
    Def. high input latency  =    0,035
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #15
    Name                     = vdownmix
    Host API                 = ALSA
    Max inputs = 6, Max outputs = 6
    Def. low input latency   =    0,006
    Def. low output latency  =    0,006
    Def. high input latency  =    0,035
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    --------------------------------------- device #16
    Name                     = dmix
    Host API                 = ALSA
    Max inputs = 0, Max outputs = 2
    Def. low input latency   =   -1,000
    Def. low output latency  =    0,021
    Def. high input latency  =   -1,000
    Def. high output latency =    0,021
    Def. sample rate         = 48000,00
    --------------------------------------- device #17
    [ Default Input, Default Output ]
    Name                     = default
    Host API                 = ALSA
    Max inputs = 32, Max outputs = 32
    Def. low input latency   =    0,009
    Def. low output latency  =    0,009
    Def. high input latency  =    0,035
    Def. high output latency =    0,035
    Def. sample rate         = 44100,00
    ----------------------------------------------
    AUDIO: Portaudio device changed to 8
    V4L2_CORE: checking format: YU12
    V4L2_CORE: allocating frame buffers
    V4L2_CORE: query v4l2 buffers
    V4L2_CORE: mapping v4l2 buffers
    V4L2_CORE: mapped buffer[0] with length 462848 to pos 0x7f27482bb000
    V4L2_CORE: mapped buffer[1] with length 462848 to pos 0x7f274832c000
    V4L2_CORE: mapped buffer[2] with length 462848 to pos 0x7f274839d000
    V4L2_CORE: mapped buffer[3] with length 462848 to pos 0x7f274840e000
    V4L2_CORE: queue v4l2 buffers
    V4L2_CORE: trying to change fps to 1/15
    GUVCVIEW: created capture thread with tid: 1073739520
    GUVCVIEW: capture thread (tid: 35037)
    RENDER: Initializing SDL2 render
    RENDER: video display 0 ->  1600x900px @ 60hz
    RENDER: setting window size to 640x480

    RENDER: Available SDL2 rendering drivers:
      0: opengl
        SDL_RENDERER_TARGETTEXTURE [X]
        SDL_RENDERER_SOFTWARE      [ ]
        SDL_RENDERER_ACCELERATED   [X]
        SDL_RENDERER_PRESENTVSYNC  [X]
      1: opengles2
        SDL_RENDERER_TARGETTEXTURE [X]
        SDL_RENDERER_SOFTWARE      [ ]
        SDL_RENDERER_ACCELERATED   [X]
        SDL_RENDERER_PRESENTVSYNC  [X]
      2: software
        SDL_RENDERER_TARGETTEXTURE [X]
        SDL_RENDERER_SOFTWARE      [X]
        SDL_RENDERER_ACCELERATED   [ ]
        SDL_RENDERER_PRESENTVSYNC  [ ]
    RENDER: rendering driver in use: opengl
        SDL_RENDERER_TARGETTEXTURE [X]
        SDL_RENDERER_SOFTWARE      [ ]
        SDL_RENDERER_ACCELERATED   [X]
        SDL_RENDERER_PRESENTVSYNC  [
    (guvcview:35028): Gtk-WARNING **: 22:28:11.783: Theme parsing
error: gtk.css:1162:116: Not a valid image
    ]
    V4L2_CORE: (VIDIOC_STREAMON) stream_status = STRM_OK
    GUVCVIEW: (GUI) Screen resolution is (1600 x 900)
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: video codec list size:13
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list size:6
    ENCODER: audio codec list V4L2_CORE: Could not grab image (select
timeout): Resource temporarily unavailable
    V4L2_CORE: Could not grab image (select timeout): Resource
temporarily unavailable
    V4L2_CORE: Could not grab image (select timeout): Resource
temporarily unavailable
    V4L2_CORE: Could not grab image (select timeout): Resource
temporarily unavailable

Filtered `dmesg`:

``` {.bash}
dmesg | grep video
```

    [   16.483063] videodev: Linux video capture interface: v2.00
    [   17.551175] uvcvideo: Found UVC 1.00 device USB2.0-Camera (0bda:5801)
    [   17.562763] usbcore: registered new interface driver uvcvideo
    [25050.092919] usbcore: deregistering interface driver uvcvideo
    [25059.031471] videodev: Linux video capture interface: v2.00
    [25059.152211] uvcvideo: Found UVC 1.00 device USB2.0-Camera (0bda:5801)
    [25059.165409] usbcore: registered new interface driver uvcvideo
    [25641.572491] usbcore: deregistering interface driver uvcvideo
    [25646.334944] videodev: Linux video capture interface: v2.00
    [25646.418251] uvcvideo: Found UVC 1.00 device USB2.0-Camera (0bda:5801)
    [25646.428584] usbcore: registered new interface driver uvcvideo
    [25679.508505] usbcore: deregistering interface driver uvcvideo
    [25683.409733] videodev: Linux video capture interface: v2.00
    [25683.498671] uvcvideo: Found UVC 1.00 device USB2.0-Camera (0bda:5801)
    [25683.518130] usbcore: registered new interface driver uvcvideo
    [25903.112963] uvcvideo: uvc_v4l2_open
    [25903.180737] uvcvideo: Resuming interface 0
    [25903.180747] uvcvideo: Resuming interface 1
    [25903.181661] uvcvideo: uvc_v4l2_release
    [25903.186119] uvcvideo: uvc_v4l2_open
    [25903.719483] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
    [25903.719497] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
    [25903.723692] uvcvideo: uvc_v4l2_mmap
    [25903.723743] uvcvideo: uvc_v4l2_mmap
    [25903.723769] uvcvideo: uvc_v4l2_mmap
    [25903.723792] uvcvideo: uvc_v4l2_mmap
    [25903.723935] uvcvideo: Setting frame interval to 1/15 (666666).
    [25904.067082] uvcvideo: Device requested 3072 B/frame bandwidth.
    [25904.067096] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [25904.067465] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [25904.067533] uvcvideo: uvc_v4l2_poll
    [25905.068518] uvcvideo: uvc_v4l2_poll
    [25905.093792] uvcvideo: Setting frame interval to 1/15 (666666).
    [25905.096657] uvcvideo: uvc_v4l2_mmap
    [25905.096734] uvcvideo: uvc_v4l2_mmap
    [25905.096774] uvcvideo: uvc_v4l2_mmap
    [25905.096812] uvcvideo: uvc_v4l2_mmap
    [25905.097550] uvcvideo: Device requested 3072 B/frame bandwidth.
    [25905.097558] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [25905.098058] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [25905.098107] uvcvideo: uvc_v4l2_poll
    [25906.099208] uvcvideo: uvc_v4l2_poll
    [25906.099393] uvcvideo: uvc_v4l2_poll
    [25907.100455] uvcvideo: uvc_v4l2_poll
    [25907.100575] uvcvideo: uvc_v4l2_poll
    [25908.101652] uvcvideo: uvc_v4l2_poll
    [25908.101776] uvcvideo: uvc_v4l2_poll
    [25909.102897] uvcvideo: uvc_v4l2_poll
    [25909.102966] uvcvideo: uvc_v4l2_poll
    [25910.104040] uvcvideo: uvc_v4l2_poll
    [25910.161417] uvcvideo: uvc_v4l2_release
    [25912.660677] uvcvideo: Suspending interface 1
    [25912.660689] uvcvideo: Suspending interface 0
    [26474.110986] uvcvideo: uvc_v4l2_open
    [26474.179153] uvcvideo: Resuming interface 0
    [26474.179163] uvcvideo: Resuming interface 1
    [26474.180110] uvcvideo: uvc_v4l2_release
    [26474.184299] uvcvideo: uvc_v4l2_open
    [26474.703971] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
    [26474.703985] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
    [26474.708510] uvcvideo: uvc_v4l2_mmap
    [26474.708563] uvcvideo: uvc_v4l2_mmap
    [26474.708596] uvcvideo: uvc_v4l2_mmap
    [26474.708630] uvcvideo: uvc_v4l2_mmap
    [26474.708761] uvcvideo: Setting frame interval to 1/15 (666666).
    [26474.960376] uvcvideo: Device requested 3072 B/frame bandwidth.
    [26474.960386] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [26474.960763] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [26474.960817] uvcvideo: uvc_v4l2_poll
    [26475.961973] uvcvideo: uvc_v4l2_poll
    [26475.988295] uvcvideo: Setting frame interval to 1/15 (666666).
    [26475.991602] uvcvideo: uvc_v4l2_mmap
    [26475.991668] uvcvideo: uvc_v4l2_mmap
    [26475.991719] uvcvideo: uvc_v4l2_mmap
    [26475.991767] uvcvideo: uvc_v4l2_mmap
    [26475.992638] uvcvideo: Device requested 3072 B/frame bandwidth.
    [26475.992645] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [26475.993071] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [26475.993117] uvcvideo: uvc_v4l2_poll
    [26476.994249] uvcvideo: uvc_v4l2_poll
    [26476.994364] uvcvideo: uvc_v4l2_poll
    [26477.995420] uvcvideo: uvc_v4l2_poll
    [26477.995486] uvcvideo: uvc_v4l2_poll
    [26478.996544] uvcvideo: uvc_v4l2_poll
    [26478.996609] uvcvideo: uvc_v4l2_poll
    [26479.997737] uvcvideo: uvc_v4l2_poll
    [26480.031835] uvcvideo: uvc_v4l2_release
    [26482.066455] uvcvideo: Suspending interface 1
    [26482.066465] uvcvideo: Suspending interface 0
    [31003.349264] uvcvideo: uvc_v4l2_open
    [31003.415535] uvcvideo: Resuming interface 0
    [31003.415544] uvcvideo: Resuming interface 1
    [31003.440886] uvcvideo: uvc_v4l2_release
    [31003.484511] uvcvideo: uvc_v4l2_open
    [31004.244924] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
    [31004.244933] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
    [31004.249325] uvcvideo: uvc_v4l2_mmap
    [31004.249364] uvcvideo: uvc_v4l2_mmap
    [31004.249387] uvcvideo: uvc_v4l2_mmap
    [31004.249407] uvcvideo: uvc_v4l2_mmap
    [31004.249540] uvcvideo: Setting frame interval to 1/15 (666666).
    [31005.373932] uvcvideo: Device requested 3072 B/frame bandwidth.
    [31005.373943] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [31005.374384] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [31005.374438] uvcvideo: uvc_v4l2_poll
    [31006.375235] uvcvideo: uvc_v4l2_poll
    [31006.401176] uvcvideo: Setting frame interval to 1/15 (666666).
    [31006.403790] uvcvideo: uvc_v4l2_mmap
    [31006.403845] uvcvideo: uvc_v4l2_mmap
    [31006.403895] uvcvideo: uvc_v4l2_mmap
    [31006.403940] uvcvideo: uvc_v4l2_mmap
    [31006.404836] uvcvideo: Device requested 3072 B/frame bandwidth.
    [31006.404843] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [31006.405264] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [31006.405310] uvcvideo: uvc_v4l2_poll
    [31007.406422] uvcvideo: uvc_v4l2_poll
    [31007.406484] uvcvideo: uvc_v4l2_poll
    [31008.407165] uvcvideo: uvc_v4l2_poll
    [31008.407231] uvcvideo: uvc_v4l2_poll
    [31009.408287] uvcvideo: uvc_v4l2_poll
    [31009.408349] uvcvideo: uvc_v4l2_poll
    [31010.409439] uvcvideo: uvc_v4l2_poll
    [31010.409498] uvcvideo: uvc_v4l2_poll
    [31011.410593] uvcvideo: uvc_v4l2_poll
    [31011.465239] uvcvideo: uvc_v4l2_release
    [31013.936261] uvcvideo: Suspending interface 1
    [31013.936271] uvcvideo: Suspending interface 0
    [31346.174129] uvcvideo: uvc_v4l2_open
    [31346.242621] uvcvideo: Resuming interface 0
    [31346.242629] uvcvideo: Resuming interface 1
    [31346.243478] uvcvideo: uvc_v4l2_release
    [31346.247664] uvcvideo: uvc_v4l2_open
    [31346.772098] uvcvideo: Trying format 0x56595559 (YUYV): 640x480.
    [31346.772109] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
    [31346.776596] uvcvideo: uvc_v4l2_mmap
    [31346.776658] uvcvideo: uvc_v4l2_mmap
    [31346.776699] uvcvideo: uvc_v4l2_mmap
    [31346.776736] uvcvideo: uvc_v4l2_mmap
    [31346.776925] uvcvideo: Setting frame interval to 1/15 (666666).
    [31347.039420] uvcvideo: Device requested 3072 B/frame bandwidth.
    [31347.039434] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [31347.039839] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [31347.039914] uvcvideo: uvc_v4l2_poll
    [31348.040998] uvcvideo: uvc_v4l2_poll
    [31348.066307] uvcvideo: Setting frame interval to 1/15 (666666).
    [31348.068856] uvcvideo: uvc_v4l2_mmap
    [31348.068926] uvcvideo: uvc_v4l2_mmap
    [31348.068971] uvcvideo: uvc_v4l2_mmap
    [31348.069032] uvcvideo: uvc_v4l2_mmap
    [31348.069927] uvcvideo: Device requested 3072 B/frame bandwidth.
    [31348.069935] uvcvideo: Selecting alternate setting 7 (3072
B/frame bandwidth).
    [31348.070352] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
    [31348.070405] uvcvideo: uvc_v4l2_poll
    [31349.071461] uvcvideo: uvc_v4l2_poll
    [31349.071525] uvcvideo: uvc_v4l2_poll
    [31350.072250] uvcvideo: uvc_v4l2_poll
    [31350.072316] uvcvideo: uvc_v4l2_poll
    [31351.073457] uvcvideo: uvc_v4l2_poll
    [31351.073517] uvcvideo: uvc_v4l2_poll
    [31352.074607] uvcvideo: uvc_v4l2_poll
    [31352.074660] uvcvideo: uvc_v4l2_poll
    [31353.075802] uvcvideo: uvc_v4l2_poll
    [31353.075862] uvcvideo: uvc_v4l2_poll
    [31354.076917] uvcvideo: uvc_v4l2_poll
    [31354.076971] uvcvideo: uvc_v4l2_poll
    [31355.078138] uvcvideo: uvc_v4l2_poll
    [31355.078189] uvcvideo: uvc_v4l2_poll
    [31356.079344] uvcvideo: uvc_v4l2_poll
    [31356.131807] uvcvideo: uvc_v4l2_release
    [31358.628342] uvcvideo: Suspending interface 1
    [31358.628352] uvcvideo: Suspending interface 0


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
