Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8506A1A650F
	for <lists+linux-uvc-devel@lfdr.de>; Mon, 13 Apr 2020 12:13:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jNw5C-0002zL-OX; Mon, 13 Apr 2020 10:12:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <itf2@gmx.de>) id 1jNw5A-0002yk-JG
 for linux-uvc-devel@lists.sourceforge.net; Mon, 13 Apr 2020 10:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:
 From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZcuV8Shw9ZH8HCvPYm4dZc6LanrbdGROBRjL2JpLaz8=; b=flJ5u+1Pc8rYDeieqTNIqR1Dwn
 3A3jyViRpyK96/IlzW0oOM1PN0TRdWLzJbzbhlPjf0A05sLEcT9CXdRyxCdTrMu8o1MRxnd7dO34c
 b2RVITwg0fkOtgWGVnxVcBtk4SMzA8H8LjCXPoArjDeibu7dFxNLPeOtre/jkj2H7/94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZcuV8Shw9ZH8HCvPYm4dZc6LanrbdGROBRjL2JpLaz8=; b=U
 EOMumOWw7R19D0+v7tEC+T4XlM6NvHXkQ2h30iIncnxaeDbzA2zbKmwYJtx8NH41terOwF0j1KpSN
 PCmkzO1rJe5xULG29mEEe54CLM3B97YmbDhd4HFksZhD1a1icv8J4tueA3J1Vymwh5pi+rR1i3bJB
 0XkIdmYCDcXiYZQg=;
Received: from mout.gmx.net ([212.227.17.20])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNw51-00DVOq-Lx
 for linux-uvc-devel@lists.sourceforge.net; Mon, 13 Apr 2020 10:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586772753;
 bh=TN6lxCwEiUKILmTQVsS8AXoreFAY0b4enuqoijp/Szc=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=I6Bw/rRQZDSwkHruLHBV0ltcRkEdPUW6qkOT2Oq64Y2kxlBJdwCTNYQ0+n7lQaA0N
 J49v2VyyDZyOjIQTSUsDCyf2745tLDHmY2Z+7sWDGoYpxlPy857DoloNllGON5Zq7N
 9R/82qY5i1yUAToeONphz4xUA6AqYiH7I0KP9KVI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.108] ([84.132.112.63]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MLiCu-1jfbUG2im0-00Hgya for
 <linux-uvc-devel@lists.sourceforge.net>; Mon, 13 Apr 2020 12:12:32 +0200
To: linux-uvc-devel@lists.sourceforge.net
From: Dominik Notz <itf2@gmx.de>
Message-ID: <77f28b94-3681-128d-9670-ee40dec0116d@gmx.de>
Date: Mon, 13 Apr 2020 12:12:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------8AAC0324E2A5F2EE519CD886"
Content-Language: en-US
X-Provags-ID: V03:K1:WDo3Trt9+qsNSl7VVJerod2njCHuCHhjuXTbp+dVclT6qSSvik7
 kUmfN+DQlualO/0Vnp18NNNovLJg4yQQ54HO9ogF30npbGwt++AhkZVJZ1gDuNmOAVt1cxs
 ZHGuoby92n9hPb4X/jyjCJjwnVYGNeFHO3hLs/QW53sZvEHOKdP+L+SpzXneI8KE80SzwEj
 lCjMzVntoz/4DySSBwWqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DiDgoLi7UVQ=:BlwrX4TwHDRJKO6a2yfUav
 NZzX5Pt3ErSBhrpKbJcaOXPNl4MqpbVZFDwk80DPx0BeYvon9Iin5G/3IrXzcQVviD3XhaZBw
 wp2CXMjWqiz92oodWqK7OKlga4NHY9wtJg9sn2aEV3iVWMppzZroy4W1cyNcnWt/TeS1qWEb1
 +8+JQaAXzYHPBqzA2PcUHwPV0Jj2j1dximTObqnjU68PeBt24sOdjFtzmdrb8mCcTHIPfQvgI
 Aa2hJmgTZZN4wolLRMxztl5LCNgBnx27nl8hKyHkaEuG/IIWZ97cKK7NOBtvSDIvBlfYEBgt7
 eOCrfdSPBloqKIUD2gw02FF171z9LRtR/E9oipYzmaUKsE1ApgAvmS4r6O5G+Dxms0+QEn2BL
 UA5smslKglXaO2kYneblMLkZYKV+4cUV0RJM41Bh9hqovDiwLQXu5px+NGIB8rB5Qy9xlErWw
 EjqsKijCFwPQxOX/Jo0HpX4w3riV7X25L8GuZUO4AycSHdJg/I5En2mF90ifq/olnrXO7NE/V
 M/aqNzWR77Vqnl0y8A2pV24QSmZww96zHcJhefazP281EmEj/jNrGgYszmuWs2doe1FdQ4Na/
 8sURdF5aNSfX0BcLl9tTRXjqXgwu451lpHpCA/3r8YXSUzAdoRZJ+xeUJOuSlNit7137Ag2yD
 i2Wvy2R6BxXq6KUmy5v8eWNItcKjcJ+3N8sPJ+5zhdbm57meUFBrN8Y4jtKJ1l8QVVs1aucN1
 KUu7mOE5oBWAyq0i5ZelObavNQuFtatQ1lGhOQglq4zYSqj1UUN4VaII248qrbM697NkShjaD
 /8RnGNtlZ5RQn8qs4bpU9UHXztSZW4JaTw3KYgaCnj6N29b6VqjKZ+BCvdCq3oEwDdYMNa12v
 ccvXq5jmAXe7HnOnP1w2IiP+GqT6PlPe7OimtyFipqVctairjfxynyJ/W3DD2hPgkQ6Vk4cZI
 8wRaPkvLeX6M1bFAXYiTeyccHa8BkaemANZkflNGOm9Bsd4K/oDsi528G2CjNvrtjgVqMUzfD
 GUkJJ0hEu4vKmg9NFbiAl6meJnKLYFxaCwrU4sSuMSDjrckG+7zCyEdvxpqaqeF6/Kw+cy/cc
 yrSzt8mq4GVCx4KXuvj8kmQsTDwnjwR05m6y1pZXzfaxeBseKKom1h/H/DK1IZ8y6sjImmUV1
 QGhLfLR12Jdu5454mNZ4TJGMDyT207t5qCXi5spP6oG3bhZzXTEdyx0iFx/d7RhlkvJfQ=
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (itf2[at]gmx.de)
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (itf2[at]gmx.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jNw51-00DVOq-Lx
Subject: [linux-uvc-devel] Alcor Micro Webcam 058f:3821 doesn't work
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
--------------8AAC0324E2A5F2EE519CD886
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

because of Corona it is nearly impossible to buy a webcam. So I tried to
activate the integrated cam of my old Acer 5750G notebook (the cam was
never used, so I can't say if it had worked on Windows 7, which was
installed on the notebook until December 2019).

I installed Cheese and Guvcview on Kubuntu 19.10 (Linux 5.3.0-46-generic
#38-Ubuntu SMP Fri Mar 27 17:37:05 UTC 2020 x86_64 x86_64 x86_64
GNU/Linux). Cheese just shows a black screen, no output to console
(don't know if there is a log). Guvcview shows errors (for full output
see attachment):

V4L2_CORE: (UVCIOC_CTRL_MAP) Error: No such file or directory
V4L2_CORE: Could not grab image (select timeout): Resource temporarily
unavailable
V4L2_CORE: Could not grab image (select timeout): Invalid argument

v4l2-ctl --list-devices shows

USB 2.0 PC Camera: PC Camera (usb-0000:00:1a.0-1.3):
         /dev/video0
         /dev/video1

dmesg | grep uvc

[    4.903366] uvcvideo: Found UVC 1.00 device USB 2.0 PC Camera (058f:382=
1)
[    4.919143] uvcvideo 1-1.3:1.0: Entity type for entity Processing 2
was not initialized!
[    4.919146] uvcvideo 1-1.3:1.0: Entity type for entity Extension 6
was not initialized!
[    4.919148] uvcvideo 1-1.3:1.0: Entity type for entity Camera 1 was
not initialized!

I guess the camera is not initialized because it is not in the supported
devices list.

I also tried to set quirks values (1, 2, 4, 8, 16, 32, 64, 128, 256,
512, 566, 640), but without success, some values resulted in error on
buffer allocation.

sudo rmmod uvcvideo
sudo modprobe uvcvideo quirks=3D...
cheese

Is there a chance to get the cam working?

Best regards,

Dominik

--------------8AAC0324E2A5F2EE519CD886
Content-Type: text/x-log; charset=UTF-8;
 name="cheese_guvcview.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="cheese_guvcview.log"

Cheese:

Black screen in window, no output to console.



Guvcview:

GUVCVIEW: version 2.0.6
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden =
(No such file or directory)
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
V4L2_CORE: (UVCIOC_CTRL_MAP) Error: Datei oder Verzeichnis nicht gefunden
ALSA lib pcm.c:2564:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.rear
ALSA lib pcm.c:2564:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.center_l=
fe
ALSA lib pcm.c:2564:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.side
ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel m=
ap
ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel m=
ap
ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel m=
ap
ALSA lib pcm_route.c:869:(find_matching_chmap) Found no matching channel m=
ap
Cannot connect to server socket err =3D Datei oder Verzeichnis nicht gefun=
den
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping=
 unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping=
 unlock
Cannot connect to server socket err =3D Datei oder Verzeichnis nicht gefun=
den
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping=
 unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping=
 unlock
ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for =
card
ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for =
card
Cannot connect to server socket err =3D Datei oder Verzeichnis nicht gefun=
den
Cannot connect to server request channel
jack server is not running or cannot be started
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping=
 unlock
JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping=
 unlock
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar (Resource temporarily unavailable)
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Die Ressource ist zur Ze=
it nicht verf=C3=BCgbar
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig (Invalid argument)
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig
V4L2_CORE: Could not grab image (select timeout): Das Argument ist ung=C3=
=BCltig

--------------8AAC0324E2A5F2EE519CD886
Content-Type: text/x-log; charset=UTF-8;
 name="dmesg.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="dmesg.log"

[    0.000000] microcode: microcode updated early to revision 0x2f, date =
=3D 2019-02-17
[    0.000000] Linux version 5.3.0-46-generic (buildd@lgw01-amd64-003) (gc=
c version 9.2.1 20191008 (Ubuntu 9.2.1-9ubuntu2)) #38-Ubuntu SMP Fri Mar 2=
7 17:37:05 UTC 2020 (Ubuntu 5.3.0-46.38-generic 5.3.18)
[    0.000000] Command line: BOOT_IMAGE=3D/vmlinuz-5.3.0-46-generic root=
=3DUUID=3D2d048d9c-ea17-4f55-abaa-7ca5b8620ebe ro quiet splash vt.handoff=
=3D7
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   Hygon HygonGenuine
[    0.000000]   Centaur CentaurHauls
[    0.000000]   zhaoxin   Shanghai
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating poin=
t registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: Enabled xstate features 0x7, context size is 832 b=
ytes, using 'standard' format.
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009d7ff] usab=
le
[    0.000000] BIOS-e820: [mem 0x000000000009d800-0x000000000009ffff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000096e3efff] usab=
le
[    0.000000] BIOS-e820: [mem 0x0000000096e3f000-0x0000000096ebefff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x0000000096ebf000-0x0000000096fbefff] ACPI=
 NVS
[    0.000000] BIOS-e820: [mem 0x0000000096fbf000-0x0000000096ffefff] ACPI=
 data
[    0.000000] BIOS-e820: [mem 0x0000000096fff000-0x0000000096ffffff] usab=
le
[    0.000000] BIOS-e820: [mem 0x0000000097000000-0x000000009f9fffff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000e0000000-0x00000000efffffff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000feb00000-0x00000000feb03fff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec00fff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000fed10000-0x00000000fed19fff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000fed1c000-0x00000000fed1ffff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x00000000ffd80000-0x00000000ffffffff] rese=
rved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000045fdfffff] usab=
le
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.7 present.
[    0.000000] DMI: Acer Aspire 5750G/JE50_HR, BIOS V1.21 08/09/2012
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 2394.703 MHz processor
[    0.002630] e820: update [mem 0x00000000-0x00000fff] usable =3D=3D> res=
erved
[    0.002632] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.002638] last_pfn =3D 0x45fe00 max_arch_pfn =3D 0x400000000
[    0.002642] MTRR default type: uncachable
[    0.002643] MTRR fixed ranges enabled:
[    0.002645]   00000-9FFFF write-back
[    0.002645]   A0000-BFFFF uncachable
[    0.002646]   C0000-FFFFF write-protect
[    0.002647] MTRR variable ranges enabled:
[    0.002649]   0 base 000000000 mask F80000000 write-back
[    0.002650]   1 base 080000000 mask FE0000000 write-back
[    0.002651]   2 base 097000000 mask FFF000000 uncachable
[    0.002652]   3 base 098000000 mask FF8000000 uncachable
[    0.002653]   4 base 0FFC00000 mask FFFC00000 write-protect
[    0.002654]   5 base 100000000 mask F00000000 write-back
[    0.002654]   6 base 200000000 mask E00000000 write-back
[    0.002655]   7 base 400000000 mask FC0000000 write-back
[    0.002656]   8 base 440000000 mask FF0000000 write-back
[    0.002657]   9 base 450000000 mask FF0000000 write-back
[    0.003413] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- W=
T
[    0.003553] last_pfn =3D 0x97000 max_arch_pfn =3D 0x400000000
[    0.014460] found SMP MP-table at [mem 0x000fe1b0-0x000fe1bf]
[    0.014526] check: Scanning 1 areas for low memory corruption
[    0.014529] reserving inaccessible SNB gfx pages
[    0.014535] BRK [0x1c5401000, 0x1c5401fff] PGTABLE
[    0.014537] BRK [0x1c5402000, 0x1c5402fff] PGTABLE
[    0.014538] BRK [0x1c5403000, 0x1c5403fff] PGTABLE
[    0.014586] BRK [0x1c5404000, 0x1c5404fff] PGTABLE
[    0.014588] BRK [0x1c5405000, 0x1c5405fff] PGTABLE
[    0.014685] BRK [0x1c5406000, 0x1c5406fff] PGTABLE
[    0.014769] BRK [0x1c5407000, 0x1c5407fff] PGTABLE
[    0.014785] BRK [0x1c5408000, 0x1c5408fff] PGTABLE
[    0.014838] BRK [0x1c5409000, 0x1c5409fff] PGTABLE
[    0.015203] RAMDISK: [mem 0x2ed37000-0x33692fff]
[    0.015213] ACPI: Early table checksum verification disabled
[    0.015217] ACPI: RSDP 0x00000000000FE020 000024 (v02 ACRSYS)
[    0.015220] ACPI: XSDT 0x0000000096FFE120 000084 (v01 ACRSYS ACRPRDCT 0=
0000001      01000013)
[    0.015227] ACPI: FACP 0x0000000096FFC000 0000F4 (v04 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015233] ACPI: DSDT 0x0000000096FEF000 009039 (v01 ACRSYS ACRPRDCT 0=
0000000 1025 00040000)
[    0.015236] ACPI: FACS 0x0000000096F6D000 000040
[    0.015239] ACPI: FACS 0x0000000096F6D000 000040
[    0.015241] ACPI: ASF! 0x0000000096FFD000 0000A5 (v32 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015244] ACPI: HPET 0x0000000096FFB000 000038 (v01 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015247] ACPI: APIC 0x0000000096FFA000 00008C (v02 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015250] ACPI: MCFG 0x0000000096FF9000 00003C (v01 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015253] ACPI: SLIC 0x0000000096FEE000 000176 (v01 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015257] ACPI: SSDT 0x0000000096FED000 000BC2 (v01 ACRSYS ACRPRDCT 0=
0001000 1025 00040000)
[    0.015260] ACPI: BOOT 0x0000000096FEB000 000028 (v01 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015263] ACPI: ASPT 0x0000000096FE8000 000034 (v07 ACRSYS ACRPRDCT 0=
0000001 1025 00040000)
[    0.015266] ACPI: SSDT 0x0000000096FE7000 0007C2 (v01 ACRSYS ACRPRDCT 0=
0003000 1025 00040000)
[    0.015269] ACPI: SSDT 0x0000000096FE6000 000996 (v01 ACRSYS ACRPRDCT 0=
0003000 1025 00040000)
[    0.015272] ACPI: SSDT 0x0000000096FE1000 004F58 (v01 ACRSYS ACRPRDCT 0=
0001000 1025 00040000)
[    0.015281] ACPI: Local APIC address 0xfee00000
[    0.015394] No NUMA configuration found
[    0.015395] Faking a node at [mem 0x0000000000000000-0x000000045fdfffff=
]
[    0.015405] NODE_DATA(0) allocated [mem 0x45fdc9000-0x45fdf3fff]
[    0.015735] Zone ranges:
[    0.015736]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.015737]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.015738]   Normal   [mem 0x0000000100000000-0x000000045fdfffff]
[    0.015739]   Device   empty
[    0.015740] Movable zone start for each node
[    0.015744] Early memory node ranges
[    0.015745]   node   0: [mem 0x0000000000001000-0x000000000009cfff]
[    0.015746]   node   0: [mem 0x0000000000100000-0x0000000096e3efff]
[    0.015747]   node   0: [mem 0x0000000096fff000-0x0000000096ffffff]
[    0.015747]   node   0: [mem 0x0000000100000000-0x000000045fdfffff]
[    0.015806] Zeroed struct page in unavailable ranges: 5156 pages
[    0.015807] Initmem setup node 0 [mem 0x0000000000001000-0x000000045fdf=
ffff]
[    0.015809] On node 0 totalpages: 4156380
[    0.015810]   DMA zone: 64 pages used for memmap
[    0.015811]   DMA zone: 156 pages reserved
[    0.015812]   DMA zone: 3996 pages, LIFO batch:0
[    0.015871]   DMA32 zone: 9593 pages used for memmap
[    0.015872]   DMA32 zone: 613952 pages, LIFO batch:63
[    0.026889]   Normal zone: 55288 pages used for memmap
[    0.026891]   Normal zone: 3538432 pages, LIFO batch:63
[    0.076435] Reserving Intel graphics memory at [mem 0x97a00000-0x9f9fff=
ff]
[    0.076718] ACPI: PM-Timer IO Port: 0x408
[    0.076720] ACPI: Local APIC address 0xfee00000
[    0.076739] IOAPIC[0]: apic_id 0, version 32, address 0xfec00000, GSI 0=
-23
[    0.076742] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.076744] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.076745] ACPI: IRQ0 used by override.
[    0.076746] ACPI: IRQ9 used by override.
[    0.076748] Using ACPI (MADT) for SMP configuration information
[    0.076750] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.076755] smpboot: Allowing 8 CPUs, 4 hotplug CPUs
[    0.076775] PM: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.076777] PM: Registered nosave memory: [mem 0x0009d000-0x0009dfff]
[    0.076777] PM: Registered nosave memory: [mem 0x0009e000-0x0009ffff]
[    0.076778] PM: Registered nosave memory: [mem 0x000a0000-0x000dffff]
[    0.076779] PM: Registered nosave memory: [mem 0x000e0000-0x000fffff]
[    0.076780] PM: Registered nosave memory: [mem 0x96e3f000-0x96ebefff]
[    0.076781] PM: Registered nosave memory: [mem 0x96ebf000-0x96fbefff]
[    0.076781] PM: Registered nosave memory: [mem 0x96fbf000-0x96ffefff]
[    0.076783] PM: Registered nosave memory: [mem 0x97000000-0x9f9fffff]
[    0.076784] PM: Registered nosave memory: [mem 0x9fa00000-0xdfffffff]
[    0.076784] PM: Registered nosave memory: [mem 0xe0000000-0xefffffff]
[    0.076785] PM: Registered nosave memory: [mem 0xf0000000-0xfeafffff]
[    0.076785] PM: Registered nosave memory: [mem 0xfeb00000-0xfeb03fff]
[    0.076786] PM: Registered nosave memory: [mem 0xfeb04000-0xfebfffff]
[    0.076787] PM: Registered nosave memory: [mem 0xfec00000-0xfec00fff]
[    0.076787] PM: Registered nosave memory: [mem 0xfec01000-0xfed0ffff]
[    0.076788] PM: Registered nosave memory: [mem 0xfed10000-0xfed19fff]
[    0.076788] PM: Registered nosave memory: [mem 0xfed1a000-0xfed1bfff]
[    0.076789] PM: Registered nosave memory: [mem 0xfed1c000-0xfed1ffff]
[    0.076790] PM: Registered nosave memory: [mem 0xfed20000-0xfedfffff]
[    0.076790] PM: Registered nosave memory: [mem 0xfee00000-0xfee00fff]
[    0.076791] PM: Registered nosave memory: [mem 0xfee01000-0xffd7ffff]
[    0.076791] PM: Registered nosave memory: [mem 0xffd80000-0xffffffff]
[    0.076793] [mem 0x9fa00000-0xdfffffff] available for PCI devices
[    0.076794] Booting paravirtualized kernel on bare hardware
[    0.076797] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: =
0xffffffff, max_idle_ns: 7645519600211568 ns
[    0.076804] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:8 nr_cpu_ids:8 n=
r_node_ids:1
[    0.077033] percpu: Embedded 54 pages/cpu s184320 r8192 d28672 u262144
[    0.077040] pcpu-alloc: s184320 r8192 d28672 u262144 alloc=3D1*2097152
[    0.077041] pcpu-alloc: [0] 0 1 2 3 4 5 6 7
[    0.077073] Built 1 zonelists, mobility grouping on.  Total pages: 4091=
279
[    0.077074] Policy zone: Normal
[    0.077076] Kernel command line: BOOT_IMAGE=3D/vmlinuz-5.3.0-46-generic=
 root=3DUUID=3D2d048d9c-ea17-4f55-abaa-7ca5b8620ebe ro quiet splash vt.han=
doff=3D7
[    0.078120] Dentry cache hash table entries: 2097152 (order: 12, 167772=
16 bytes, linear)
[    0.078593] Inode-cache hash table entries: 1048576 (order: 11, 8388608=
 bytes, linear)
[    0.078692] mem auto-init: stack:off, heap alloc:on, heap free:off
[    0.082405] Calgary: detecting Calgary via BIOS EBDA area
[    0.082407] Calgary: Unable to locate Rio Grande table in EBDA - bailin=
g!
[    0.128807] Memory: 16164092K/16625520K available (14339K kernel code, =
2387K rwdata, 4724K rodata, 2676K init, 5044K bss, 461428K reserved, 0K cm=
a-reserved)
[    0.128814] random: get_random_u64 called from kmem_cache_open+0x2d/0x4=
10 with crng_init=3D0
[    0.128965] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D8, =
Nodes=3D1
[    0.128977] Kernel/User page tables isolation: enabled
[    0.128993] ftrace: allocating 43582 entries in 171 pages
[    0.146925] rcu: Hierarchical RCU implementation.
[    0.146926] rcu: 	RCU restricting CPUs from NR_CPUS=3D8192 to nr_cpu_id=
s=3D8.
[    0.146927] 	Tasks RCU enabled.
[    0.146928] rcu: RCU calculated value of scheduler-enlistment delay is =
25 jiffies.
[    0.146929] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_id=
s=3D8
[    0.150707] NR_IRQS: 524544, nr_irqs: 488, preallocated irqs: 16
[    0.150968] vt handoff: transparent VT on vt#7
[    0.150976] Console: colour dummy device 80x25
[    0.150981] printk: console [tty0] enabled
[    0.150998] ACPI: Core revision 20190703
[    0.151140] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff,=
 max_idle_ns: 133484882848 ns
[    0.151155] APIC: Switch to symmetric I/O mode setup
[    0.151228] x2apic: IRQ remapping doesn't support X2APIC mode
[    0.151635] ..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D-1 pin2=
=3D-1
[    0.171155] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles=
: 0x2284abc7ac2, max_idle_ns: 440795277277 ns
[    0.171159] Calibrating delay loop (skipped), value calculated using ti=
mer frequency.. 4789.40 BogoMIPS (lpj=3D9578812)
[    0.171162] pid_max: default: 32768 minimum: 301
[    0.171193] LSM: Security Framework initializing
[    0.171204] Yama: becoming mindful.
[    0.171246] AppArmor: AppArmor initialized
[    0.171307] Mount-cache hash table entries: 32768 (order: 6, 262144 byt=
es, linear)
[    0.171334] Mountpoint-cache hash table entries: 32768 (order: 6, 26214=
4 bytes, linear)
[    0.171510] *** VALIDATE proc ***
[    0.171567] *** VALIDATE cgroup1 ***
[    0.171568] *** VALIDATE cgroup2 ***
[    0.171620] mce: CPU0: Thermal monitoring enabled (TM1)
[    0.171630] process: using mwait in idle threads
[    0.171633] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 8
[    0.171634] Last level dTLB entries: 4KB 512, 2MB 32, 4MB 32, 1GB 0
[    0.171637] Spectre V1 : Mitigation: usercopy/swapgs barriers and __use=
r pointer sanitization
[    0.171638] Spectre V2 : Mitigation: Full generic retpoline
[    0.171639] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RS=
B on context switch
[    0.171639] Spectre V2 : Enabling Restricted Speculation for firmware c=
alls
[    0.171641] Spectre V2 : mitigation: Enabling conditional Indirect Bran=
ch Prediction Barrier
[    0.171642] Spectre V2 : User space: Mitigation: STIBP via seccomp and =
prctl
[    0.171643] Speculative Store Bypass: Mitigation: Speculative Store Byp=
ass disabled via prctl and seccomp
[    0.171646] MDS: Mitigation: Clear CPU buffers
[    0.171806] Freeing SMP alternatives memory: 36K
[    0.179183] TSC deadline timer enabled
[    0.179186] smpboot: CPU0: Intel(R) Core(TM) i5-2430M CPU @ 2.40GHz (fa=
mily: 0x6, model: 0x2a, stepping: 0x7)
[    0.179300] Performance Events: PEBS fmt1+, SandyBridge events, 16-deep=
 LBR, full-width counters, Intel PMU driver.
[    0.179307] ... version:                3
[    0.179308] ... bit width:              48
[    0.179309] ... generic registers:      4
[    0.179309] ... value mask:             0000ffffffffffff
[    0.179310] ... max period:             00007fffffffffff
[    0.179311] ... fixed-purpose events:   3
[    0.179311] ... event mask:             000000070000000f
[    0.179351] rcu: Hierarchical SRCU implementation.
[    0.180414] NMI watchdog: Enabled. Permanently consumes one hw-PMU coun=
ter.
[    0.180514] smp: Bringing up secondary CPUs ...
[    0.180629] x86: Booting SMP configuration:
[    0.180630] .... node  #0, CPUs:      #1
[    0.183263] MDS CPU bug present and SMT on, data leak possible. See htt=
ps://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/mds.html for more =
details.
[    0.183328]  #2 #3
[    0.189564] smp: Brought up 1 node, 4 CPUs
[    0.189564] smpboot: Max logical packages: 2
[    0.189564] smpboot: Total of 4 processors activated (19157.62 BogoMIPS=
)
[    0.191660] devtmpfs: initialized
[    0.191660] x86/mm: Memory block size: 128MB
[    0.193015] PM: Registering ACPI NVS region [mem 0x96ebf000-0x96fbefff]=
 (1048576 bytes)
[    0.193015] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffff=
ff, max_idle_ns: 7645041785100000 ns
[    0.193015] futex hash table entries: 2048 (order: 5, 131072 bytes, lin=
ear)
[    0.193015] pinctrl core: initialized pinctrl subsystem
[    0.193015] PM: RTC time: 07:23:16, date: 2020-04-13
[    0.193015] NET: Registered protocol family 16
[    0.193015] audit: initializing netlink subsys (disabled)
[    0.193015] audit: type=3D2000 audit(1586762596.040:1): state=3Dinitial=
ized audit_enabled=3D0 res=3D1
[    0.193015] EISA bus registered
[    0.193015] cpuidle: using governor ladder
[    0.193015] cpuidle: using governor menu
[    0.193015] Simple Boot Flag at 0x44 set to 0x1
[    0.193015] ACPI FADT declares the system doesn't support PCIe ASPM, so=
 disable it
[    0.193015] ACPI: bus type PCI registered
[    0.193015] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.193015] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem 0xe000000=
0-0xefffffff] (base 0xe0000000)
[    0.193015] PCI: MMCONFIG at [mem 0xe0000000-0xefffffff] reserved in E8=
20
[    0.193015] PCI: Using configuration type 1 for base access
[    0.193015] core: PMU erratum BJ122, BV98, HSD29 worked around, HT is o=
n
[    0.195394] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    0.196696] HugeTLB registered 2.00 MiB page size, pre-allocated 0 page=
s
[    0.199272] ACPI: Added _OSI(Module Device)
[    0.199274] ACPI: Added _OSI(Processor Device)
[    0.199274] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.199275] ACPI: Added _OSI(Processor Aggregator Device)
[    0.199276] ACPI: Added _OSI(Linux-Dell-Video)
[    0.199277] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    0.199278] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    0.210545] ACPI: 5 ACPI AML tables successfully acquired and loaded
[    0.210545] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    0.210545] ACPI: Dynamic OEM Table Load:
[    0.210545] ACPI: SSDT 0xFFFF96314D43A800 00067C (v01 PmRef  Cpu0Cst  0=
0003001 INTL 20100121)
[    0.210545] ACPI: Dynamic OEM Table Load:
[    0.210545] ACPI: SSDT 0xFFFF96314D488000 000303 (v01 PmRef  ApIst    0=
0003000 INTL 20100121)
[    0.211330] ACPI: Dynamic OEM Table Load:
[    0.211334] ACPI: SSDT 0xFFFF96314D776800 000119 (v01 PmRef  ApCst    0=
0003000 INTL 20100121)
[    0.212912] ACPI: EC: EC started
[    0.212913] ACPI: EC: interrupt blocked
[    0.231314] ACPI: \_SB_.PCI0.LPCB.EC0_: Used as first EC
[    0.231317] ACPI: \_SB_.PCI0.LPCB.EC0_: GPE=3D0x17, EC_CMD/EC_SC=3D0x66=
, EC_DATA=3D0x62
[    0.231318] ACPI: \_SB_.PCI0.LPCB.EC0_: Boot DSDT EC used to handle tra=
nsactions
[    0.231319] ACPI: Interpreter enabled
[    0.231346] ACPI: (supports S0 S3 S4 S5)
[    0.231347] ACPI: Using IOAPIC for interrupt routing
[    0.231382] PCI: Using host bridge windows from ACPI; if necessary, use=
 "pci=3Dnocrs" and report a bug
[    0.231672] ACPI: Enabled 12 GPEs in block 00 to 3F
[    0.239394] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-fe])
[    0.239400] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM Clo=
ckPM Segments MSI HPX-Type3]
[    0.239461] acpi PNP0A08:00: _OSC failed (AE_ERROR); disabling ASPM
[    0.240220] PCI host bridge to bus 0000:00
[    0.240223] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 windo=
w]
[    0.240224] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff windo=
w]
[    0.240225] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bff=
ff window]
[    0.240226] pci_bus 0000:00: root bus resource [mem 0x9fa00000-0xfeafff=
ff window]
[    0.240228] pci_bus 0000:00: root bus resource [bus 00-fe]
[    0.240238] pci 0000:00:00.0: [8086:0104] type 00 class 0x060000
[    0.240352] pci 0000:00:01.0: [8086:0101] type 01 class 0x060400
[    0.240394] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    0.240503] pci 0000:00:02.0: [8086:0116] type 00 class 0x030000
[    0.240514] pci 0000:00:02.0: reg 0x10: [mem 0xd1400000-0xd17fffff 64bi=
t]
[    0.240520] pci 0000:00:02.0: reg 0x18: [mem 0xc0000000-0xcfffffff 64bi=
t pref]
[    0.240523] pci 0000:00:02.0: reg 0x20: [io  0x3000-0x303f]
[    0.240706] pci 0000:00:16.0: [8086:1c3a] type 00 class 0x078000
[    0.240744] pci 0000:00:16.0: reg 0x10: [mem 0xd1a04000-0xd1a0400f 64bi=
t]
[    0.240857] pci 0000:00:16.0: PME# supported from D0 D3hot D3cold
[    0.240979] pci 0000:00:1a.0: [8086:1c2d] type 00 class 0x0c0320
[    0.241759] pci 0000:00:1a.0: reg 0x10: [mem 0xd1a0a000-0xd1a0a3ff]
[    0.247984] pci 0000:00:1a.0: PME# supported from D0 D3hot D3cold
[    0.248105] pci 0000:00:1b.0: [8086:1c20] type 00 class 0x040300
[    0.248142] pci 0000:00:1b.0: reg 0x10: [mem 0xd1a00000-0xd1a03fff 64bi=
t]
[    0.248275] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.248388] pci 0000:00:1c.0: [8086:1c10] type 01 class 0x060400
[    0.248544] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.248671] pci 0000:00:1c.1: [8086:1c12] type 01 class 0x060400
[    0.248824] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.248959] pci 0000:00:1d.0: [8086:1c26] type 00 class 0x0c0320
[    0.249737] pci 0000:00:1d.0: reg 0x10: [mem 0xd1a09000-0xd1a093ff]
[    0.251990] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    0.252107] pci 0000:00:1f.0: [8086:1c49] type 00 class 0x060100
[    0.252355] pci 0000:00:1f.2: [8086:1c03] type 00 class 0x010601
[    0.252389] pci 0000:00:1f.2: reg 0x10: [io  0x3088-0x308f]
[    0.252402] pci 0000:00:1f.2: reg 0x14: [io  0x309c-0x309f]
[    0.252415] pci 0000:00:1f.2: reg 0x18: [io  0x3080-0x3087]
[    0.252428] pci 0000:00:1f.2: reg 0x1c: [io  0x3098-0x309b]
[    0.252441] pci 0000:00:1f.2: reg 0x20: [io  0x3060-0x307f]
[    0.252454] pci 0000:00:1f.2: reg 0x24: [mem 0xd1a08000-0xd1a087ff]
[    0.252532] pci 0000:00:1f.2: PME# supported from D3hot
[    0.252641] pci 0000:00:1f.3: [8086:1c22] type 00 class 0x0c0500
[    0.252673] pci 0000:00:1f.3: reg 0x10: [mem 0xd1a06000-0xd1a060ff 64bi=
t]
[    0.252709] pci 0000:00:1f.3: reg 0x20: [io  0x3040-0x305f]
[    0.252882] pci 0000:01:00.0: [10de:0df7] type 00 class 0x030000
[    0.252904] pci 0000:01:00.0: reg 0x10: [mem 0xd0000000-0xd0ffffff]
[    0.252916] pci 0000:01:00.0: reg 0x14: [mem 0xa0000000-0xafffffff 64bi=
t pref]
[    0.252928] pci 0000:01:00.0: reg 0x1c: [mem 0xb0000000-0xb1ffffff 64bi=
t pref]
[    0.252936] pci 0000:01:00.0: reg 0x24: [io  0x2000-0x207f]
[    0.252944] pci 0000:01:00.0: reg 0x30: [mem 0xfff80000-0xffffffff pref=
]
[    0.252951] pci 0000:01:00.0: enabling Extended Tags
[    0.252963] pci 0000:01:00.0: Enabling HDA controller
[    0.253122] pci 0000:01:00.1: [10de:0bea] type 00 class 0x040300
[    0.253141] pci 0000:01:00.1: reg 0x10: [mem 0xd1000000-0xd1003fff]
[    0.253188] pci 0000:01:00.1: enabling Extended Tags
[    0.253306] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.253308] pci 0000:00:01.0:   bridge window [io  0x2000-0x2fff]
[    0.253310] pci 0000:00:01.0:   bridge window [mem 0xd0000000-0xd10ffff=
f]
[    0.253313] pci 0000:00:01.0:   bridge window [mem 0xa0000000-0xb1fffff=
f 64bit pref]
[    0.253439] pci 0000:02:00.0: [14e4:16b5] type 00 class 0x020000
[    0.253499] pci 0000:02:00.0: reg 0x10: [mem 0xd1830000-0xd183ffff 64bi=
t pref]
[    0.253528] pci 0000:02:00.0: reg 0x18: [mem 0xd1840000-0xd184ffff 64bi=
t pref]
[    0.253581] pci 0000:02:00.0: reg 0x30: [mem 0xfffff800-0xffffffff pref=
]
[    0.253744] pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
[    0.253933] pci 0000:02:00.1: [14e4:16bc] type 00 class 0x080501
[    0.253990] pci 0000:02:00.1: reg 0x10: [mem 0xd1800000-0xd180ffff 64bi=
t pref]
[    0.254215] pci 0000:02:00.1: PME# supported from D0 D3hot D3cold
[    0.254370] pci 0000:02:00.2: [14e4:16be] type 00 class 0x088000
[    0.254426] pci 0000:02:00.2: reg 0x10: [mem 0xd1810000-0xd181ffff 64bi=
t pref]
[    0.254647] pci 0000:02:00.2: PME# supported from D0 D3hot D3cold
[    0.254799] pci 0000:02:00.3: [14e4:16bf] type 00 class 0x088000
[    0.254855] pci 0000:02:00.3: reg 0x10: [mem 0xd1820000-0xd182ffff 64bi=
t pref]
[    0.255077] pci 0000:02:00.3: PME# supported from D0 D3hot D3cold
[    0.255304] pci 0000:00:1c.0: PCI bridge to [bus 02]
[    0.255319] pci 0000:00:1c.0:   bridge window [mem 0xd1800000-0xd18ffff=
f 64bit pref]
[    0.255414] pci 0000:03:00.0: [168c:002e] type 00 class 0x028000
[    0.255468] pci 0000:03:00.0: reg 0x10: [mem 0xd1900000-0xd190ffff 64bi=
t]
[    0.255674] pci 0000:03:00.0: supports D1
[    0.255675] pci 0000:03:00.0: PME# supported from D0 D1 D3hot
[    0.255831] pci 0000:00:1c.1: PCI bridge to [bus 03]
[    0.255839] pci 0000:00:1c.1:   bridge window [mem 0xd1900000-0xd19ffff=
f]
[    0.315666] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 *10 11 12 1=
4 15)
[    0.315757] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 10 11 12 14=
 15) *7
[    0.315844] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 10 11 12 14=
 15) *0, disabled.
[    0.315933] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 10 11 12 14=
 15) *7
[    0.316021] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 10 11 12 14=
 15) *0, disabled.
[    0.316109] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 *10 11 12 1=
4 15)
[    0.316197] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 10 *11 12 1=
4 15)
[    0.316286] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 5 6 10 *11 12 1=
4 15)
[    0.319163] ACPI: EC: interrupt unblocked
[    0.319163] ACPI: EC: event unblocked
[    0.319163] ACPI: \_SB_.PCI0.LPCB.EC0_: GPE=3D0x17, EC_CMD/EC_SC=3D0x66=
, EC_DATA=3D0x62
[    0.319163] ACPI: \_SB_.PCI0.LPCB.EC0_: Boot DSDT EC used to handle tra=
nsactions and events
[    0.319367] SCSI subsystem initialized
[    0.319381] libata version 3.00 loaded.
[    0.319381] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    0.319381] pci 0000:00:02.0: vgaarb: VGA device added: decodes=3Dio+me=
m,owns=3Dio+mem,locks=3Dnone
[    0.319381] pci 0000:01:00.0: vgaarb: VGA device added: decodes=3Dio+me=
m,owns=3Dnone,locks=3Dnone
[    0.319381] pci 0000:00:02.0: vgaarb: no bridge control possible
[    0.319381] pci 0000:01:00.0: vgaarb: bridge control possible
[    0.319381] vgaarb: loaded
[    0.319381] ACPI: bus type USB registered
[    0.319381] usbcore: registered new interface driver usbfs
[    0.319381] usbcore: registered new interface driver hub
[    0.319381] usbcore: registered new device driver usb
[    0.319381] pps_core: LinuxPPS API ver. 1 registered
[    0.319381] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo=
 Giometti <giometti@linux.it>
[    0.319381] PTP clock support registered
[    0.319381] EDAC MC: Ver: 3.0.0
[    0.319381] PCI: Using ACPI for IRQ routing
[    0.334621] PCI: pci_cache_line_size set to 64 bytes
[    0.334750] e820: reserve RAM buffer [mem 0x0009d800-0x0009ffff]
[    0.334752] e820: reserve RAM buffer [mem 0x96e3f000-0x97ffffff]
[    0.334753] e820: reserve RAM buffer [mem 0x97000000-0x97ffffff]
[    0.334754] e820: reserve RAM buffer [mem 0x45fe00000-0x45fffffff]
[    0.334868] NetLabel: Initializing
[    0.334869] NetLabel:  domain hash size =3D 128
[    0.334869] NetLabel:  protocols =3D UNLABELED CIPSOv4 CALIPSO
[    0.334890] NetLabel:  unlabeled traffic allowed by default
[    0.335697] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    0.335702] hpet0: 8 comparators, 64-bit 14.318180 MHz counter
[    0.337735] clocksource: Switched to clocksource tsc-early
[    0.349012] VFS: Disk quotas dquot_6.6.0
[    0.349032] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byt=
es)
[    0.349063] *** VALIDATE hugetlbfs ***
[    0.349151] AppArmor: AppArmor Filesystem Enabled
[    0.349182] pnp: PnP ACPI init
[    0.349366] system 00:00: [io  0x0680-0x069f] has been reserved
[    0.349368] system 00:00: [io  0xff2c-0xff2f] has been reserved
[    0.349372] system 00:00: [io  0x1000-0x100f] has been reserved
[    0.349373] system 00:00: [io  0xffff] has been reserved
[    0.349374] system 00:00: [io  0xffff] has been reserved
[    0.349376] system 00:00: [io  0x0400-0x047f] has been reserved
[    0.349377] system 00:00: [io  0x0500-0x057f] has been reserved
[    0.349379] system 00:00: [io  0x164e-0x164f] has been reserved
[    0.349385] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (activ=
e)
[    0.349413] pnp 00:01: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.349471] system 00:02: [io  0x0454-0x0457] has been reserved
[    0.349475] system 00:02: Plug and Play ACPI device, IDs INT3f0d PNP0c0=
2 (active)
[    0.349515] pnp 00:03: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.349569] pnp 00:04: Plug and Play ACPI device, IDs ETD0500 PNP0f13 (=
active)
[    0.403472] system 00:05: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    0.403474] system 00:05: [mem 0xfed10000-0xfed17fff] has been reserved
[    0.403475] system 00:05: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.403477] system 00:05: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.403478] system 00:05: [mem 0xe0000000-0xefffffff] has been reserved
[    0.403480] system 00:05: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.403481] system 00:05: [mem 0xfed90000-0xfed93fff] has been reserved
[    0.403483] system 00:05: [mem 0xff000000-0xffffffff] could not be rese=
rved
[    0.403484] system 00:05: [mem 0xfee00000-0xfeefffff] could not be rese=
rved
[    0.403485] system 00:05: [mem 0x9fa00000-0x9fa00fff] has been reserved
[    0.403490] system 00:05: Plug and Play ACPI device, IDs PNP0c02 (activ=
e)
[    0.403793] system 00:06: [mem 0x20000000-0x201fffff] could not be rese=
rved
[    0.403794] system 00:06: [mem 0x40000000-0x401fffff] could not be rese=
rved
[    0.403799] system 00:06: Plug and Play ACPI device, IDs PNP0c01 (activ=
e)
[    0.403821] pnp: PnP ACPI: found 7 devices
[    0.405482] thermal_sys: Registered thermal governor 'fair_share'
[    0.405483] thermal_sys: Registered thermal governor 'bang_bang'
[    0.405484] thermal_sys: Registered thermal governor 'step_wise'
[    0.405485] thermal_sys: Registered thermal governor 'user_space'
[    0.405486] thermal_sys: Registered thermal governor 'power_allocator'
[    0.409987] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, =
max_idle_ns: 2085701024 ns
[    0.410021] pci 0000:01:00.0: can't claim BAR 6 [mem 0xfff80000-0xfffff=
fff pref]: no compatible bridge window
[    0.410023] pci 0000:02:00.0: can't claim BAR 6 [mem 0xfffff800-0xfffff=
fff pref]: no compatible bridge window
[    0.410034] pci 0000:00:1c.0: BAR 14: assigned [mem 0x9fb00000-0x9fbfff=
ff]
[    0.410037] pci 0000:01:00.0: BAR 6: assigned [mem 0xd1080000-0xd10ffff=
f pref]
[    0.410039] pci 0000:00:01.0: PCI bridge to [bus 01]
[    0.410041] pci 0000:00:01.0:   bridge window [io  0x2000-0x2fff]
[    0.410044] pci 0000:00:01.0:   bridge window [mem 0xd0000000-0xd10ffff=
f]
[    0.410046] pci 0000:00:01.0:   bridge window [mem 0xa0000000-0xb1fffff=
f 64bit pref]
[    0.410050] pci 0000:02:00.0: BAR 6: assigned [mem 0x9fb00000-0x9fb007f=
f pref]
[    0.410051] pci 0000:00:1c.0: PCI bridge to [bus 02]
[    0.410057] pci 0000:00:1c.0:   bridge window [mem 0x9fb00000-0x9fbffff=
f]
[    0.410061] pci 0000:00:1c.0:   bridge window [mem 0xd1800000-0xd18ffff=
f 64bit pref]
[    0.410069] pci 0000:00:1c.1: PCI bridge to [bus 03]
[    0.410076] pci 0000:00:1c.1:   bridge window [mem 0xd1900000-0xd19ffff=
f]
[    0.410088] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    0.410089] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    0.410091] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff wind=
ow]
[    0.410092] pci_bus 0000:00: resource 7 [mem 0x9fa00000-0xfeafffff wind=
ow]
[    0.410093] pci_bus 0000:01: resource 0 [io  0x2000-0x2fff]
[    0.410094] pci_bus 0000:01: resource 1 [mem 0xd0000000-0xd10fffff]
[    0.410095] pci_bus 0000:01: resource 2 [mem 0xa0000000-0xb1ffffff 64bi=
t pref]
[    0.410097] pci_bus 0000:02: resource 1 [mem 0x9fb00000-0x9fbfffff]
[    0.410098] pci_bus 0000:02: resource 2 [mem 0xd1800000-0xd18fffff 64bi=
t pref]
[    0.410099] pci_bus 0000:03: resource 1 [mem 0xd1900000-0xd19fffff]
[    0.410220] NET: Registered protocol family 2
[    0.410377] tcp_listen_portaddr_hash hash table entries: 8192 (order: 5=
, 131072 bytes, linear)
[    0.410494] TCP established hash table entries: 131072 (order: 8, 10485=
76 bytes, linear)
[    0.410780] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes=
, linear)
[    0.410891] TCP: Hash tables configured (established 131072 bind 65536)
[    0.410961] UDP hash table entries: 8192 (order: 6, 262144 bytes, linea=
r)
[    0.411022] UDP-Lite hash table entries: 8192 (order: 6, 262144 bytes, =
linear)
[    0.411154] NET: Registered protocol family 1
[    0.411176] NET: Registered protocol family 44
[    0.411191] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x=
000c0000-0x000dffff]
[    0.431370] pci 0000:00:1a.0: quirk_usb_early_handoff+0x0/0x662 took 19=
694 usecs
[    0.451357] pci 0000:00:1d.0: quirk_usb_early_handoff+0x0/0x662 took 19=
502 usecs
[    0.451391] pci 0000:01:00.1: D0 power state depends on 0000:01:00.0
[    0.451445] PCI: CLS 64 bytes, default 64
[    0.451539] Trying to unpack rootfs image as initramfs...
[    0.664256] Freeing initrd memory: 75120K
[    0.664290] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    0.664292] software IO TLB: mapped [mem 0x92e3f000-0x96e3f000] (64MB)
[    0.664529] check: Scanning for low memory corruption every 60 seconds
[    0.666780] Initialise system trusted keyrings
[    0.666792] Key type blacklist registered
[    0.666834] workingset: timestamp_bits=3D36 max_order=3D22 bucket_order=
=3D0
[    0.668409] zbud: loaded
[    0.668813] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.668983] fuse: init (API version 7.31)
[    0.669108] Platform Keyring initialized
[    0.674989] Key type asymmetric registered
[    0.674990] Asymmetric key parser 'x509' registered
[    0.675003] Block layer SCSI generic (bsg) driver version 0.4 loaded (m=
ajor 244)
[    0.675055] io scheduler mq-deadline registered
[    0.675849] shpchp: Standard Hot Plug PCI Controller Driver version: 0.=
4
[    0.675915] vesafb: mode is 1920x1080x32, linelength=3D7680, pages=3D0
[    0.675915] vesafb: scrolling: redraw
[    0.675917] vesafb: Truecolor: size=3D8:8:8:8, shift=3D24:16:8:0
[    0.675941] vesafb: framebuffer at 0xc0000000, mapped to 0x(____ptrval_=
___), using 8128k, total 8128k
[    0.675994] fbcon: Deferring console take-over
[    0.675995] fb0: VESA VGA frame buffer device
[    0.676014] intel_idle: MWAIT substates: 0x21120
[    0.676015] intel_idle: v0.4.1 model 0x2A
[    0.676239] intel_idle: lapic_timer_reliable_states 0xffffffff
[    0.891415] ACPI: AC Adapter [ACAD] (on-line)
[    0.891509] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP=
0A08:00/device:01/PNP0C0C:00/input/input0
[    0.891517] ACPI: Power Button [PWRB]
[    0.891554] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A=
08:00/device:01/PNP0C0D:00/input/input1
[    0.891559] ACPI: Lid Switch [LID0]
[    0.891589] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP=
0A08:00/device:01/PNP0C0E:00/input/input2
[    0.891595] ACPI: Sleep Button [SLPB]
[    0.891633] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/inp=
ut/input3
[    0.891690] ACPI: Power Button [PWRF]
[    0.892634] Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
[    0.894838] Linux agpgart interface v0.103
[    0.897017] loop: module loaded
[    0.897246] libphy: Fixed MDIO Bus: probed
[    0.897247] tun: Universal TUN/TAP device driver, 1.6
[    0.897310] PPP generic driver version 2.4.2
[    0.897391] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.897394] ehci-pci: EHCI PCI platform driver
[    0.897566] ehci-pci 0000:00:1a.0: EHCI Host Controller
[    0.897573] ehci-pci 0000:00:1a.0: new USB bus registered, assigned bus=
 number 1
[    0.897589] ehci-pci 0000:00:1a.0: debug port 2
[    0.901512] ehci-pci 0000:00:1a.0: cache line size of 64 is not support=
ed
[    0.901528] ehci-pci 0000:00:1a.0: irq 16, io mem 0xd1a0a000
[    0.915271] ehci-pci 0000:00:1a.0: USB 2.0 started, EHCI 1.00
[    0.915402] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 5.03
[    0.915404] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Ser=
ialNumber=3D1
[    0.915406] usb usb1: Product: EHCI Host Controller
[    0.915407] usb usb1: Manufacturer: Linux 5.3.0-46-generic ehci_hcd
[    0.915408] usb usb1: SerialNumber: 0000:00:1a.0
[    0.915658] hub 1-0:1.0: USB hub found
[    0.915667] hub 1-0:1.0: 2 ports detected
[    0.915951] ehci-pci 0000:00:1d.0: EHCI Host Controller
[    0.915956] ehci-pci 0000:00:1d.0: new USB bus registered, assigned bus=
 number 2
[    0.915971] ehci-pci 0000:00:1d.0: debug port 2
[    0.919883] ehci-pci 0000:00:1d.0: cache line size of 64 is not support=
ed
[    0.919897] ehci-pci 0000:00:1d.0: irq 23, io mem 0xd1a09000
[    0.935270] ehci-pci 0000:00:1d.0: USB 2.0 started, EHCI 1.00
[    0.935399] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 5.03
[    0.935400] usb usb2: New USB device strings: Mfr=3D3, Product=3D2, Ser=
ialNumber=3D1
[    0.935402] usb usb2: Product: EHCI Host Controller
[    0.935403] usb usb2: Manufacturer: Linux 5.3.0-46-generic ehci_hcd
[    0.935404] usb usb2: SerialNumber: 0000:00:1d.0
[    0.935632] hub 2-0:1.0: USB hub found
[    0.935641] hub 2-0:1.0: 2 ports detected
[    0.935784] ehci-platform: EHCI generic platform driver
[    0.935805] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.935809] ohci-pci: OHCI PCI platform driver
[    0.935820] ohci-platform: OHCI generic platform driver
[    0.935829] uhci_hcd: USB Universal Host Controller Interface driver
[    0.935889] i8042: PNP: PS/2 Controller [PNP0303:KBC0,PNP0f13:MSE0] at =
0x60,0x64 irq 1,12
[    0.993425] serio: i8042 KBD port at 0x60,0x64 irq 1
[    0.993429] serio: i8042 AUX port at 0x60,0x64 irq 12
[    0.993680] mousedev: PS/2 mouse device common for all mice
[    0.995254] rtc_cmos 00:01: RTC can wake from S4
[    0.995450] rtc_cmos 00:01: registered as rtc0
[    0.995469] rtc_cmos 00:01: alarms up to one year, y3k, 242 bytes nvram=
, hpet irqs
[    0.995477] i2c /dev entries driver
[    0.995530] device-mapper: uevent: version 1.0.3
[    0.995602] device-mapper: ioctl: 4.40.0-ioctl (2019-01-18) initialised=
: dm-devel@redhat.com
[    0.995623] platform eisa.0: Probing EISA bus 0
[    0.995625] platform eisa.0: EISA: Cannot allocate resource for mainboa=
rd
[    0.995626] platform eisa.0: Cannot allocate resource for EISA slot 1
[    0.995628] platform eisa.0: Cannot allocate resource for EISA slot 2
[    0.995629] platform eisa.0: Cannot allocate resource for EISA slot 3
[    0.995630] platform eisa.0: Cannot allocate resource for EISA slot 4
[    0.995631] platform eisa.0: Cannot allocate resource for EISA slot 5
[    0.995632] platform eisa.0: Cannot allocate resource for EISA slot 6
[    0.995633] platform eisa.0: Cannot allocate resource for EISA slot 7
[    0.995634] platform eisa.0: Cannot allocate resource for EISA slot 8
[    0.995636] platform eisa.0: EISA: Detected 0 cards
[    0.995641] intel_pstate: Intel P-state driver initializing
[    0.997512] ledtrig-cpu: registered to indicate activity on CPUs
[    0.997724] NET: Registered protocol family 10
[    1.006690] Segment Routing with IPv6
[    1.006716] NET: Registered protocol family 17
[    1.006759] Key type dns_resolver registered
[    1.006985] RAS: Correctable Errors collector initialized.
[    1.007018] microcode: sig=3D0x206a7, pf=3D0x10, revision=3D0x2f
[    1.007067] microcode: Microcode Update Driver: v2.2.
[    1.007077] sched_clock: Marking stable (1006817447, 245984)->(10443042=
73, -37240842)
[    1.007203] registered taskstats version 1
[    1.007215] Loading compiled-in X.509 certificates
[    1.009478] Loaded X.509 cert 'Build time autogenerated kernel key: 58c=
c9974d2170f3c76d2e16eeb21349faa3b1809'
[    1.009513] zswap: loaded using pool lzo/zbud
[    1.017644] Key type big_key registered
[    1.022044] Key type encrypted registered
[    1.022048] AppArmor: AppArmor sha1 policy hashing enabled
[    1.022054] ima: No TPM chip found, activating TPM-bypass!
[    1.022060] ima: Allocated hash algorithm: sha1
[    1.022067] No architecture policies found
[    1.022074] evm: Initialising EVM extended attributes:
[    1.022074] evm: security.selinux
[    1.022075] evm: security.SMACK64
[    1.022075] evm: security.SMACK64EXEC
[    1.022076] evm: security.SMACK64TRANSMUTE
[    1.022076] evm: security.SMACK64MMAP
[    1.022077] evm: security.apparmor
[    1.022077] evm: security.ima
[    1.022078] evm: security.capability
[    1.022078] evm: HMAC attrs: 0x1
[    1.022511] PM:   Magic number: 0:527:369
[    1.022614] rtc_cmos 00:01: setting system clock to 2020-04-13T07:23:17=
 UTC (1586762597)
[    1.063616] input: AT Translated Set 2 keyboard as /devices/platform/i8=
042/serio0/input/input4
[    1.251278] usb 1-1: new high-speed USB device number 2 using ehci-pci
[    1.271279] usb 2-1: new high-speed USB device number 2 using ehci-pci
[    1.280304] usb 1-1: New USB device found, idVendor=3D8087, idProduct=
=3D0024, bcdDevice=3D 0.00
[    1.280306] usb 1-1: New USB device strings: Mfr=3D0, Product=3D0, Seri=
alNumber=3D0
[    1.280787] hub 1-1:1.0: USB hub found
[    1.281107] hub 1-1:1.0: 6 ports detected
[    1.299827] usb 2-1: New USB device found, idVendor=3D8087, idProduct=
=3D0024, bcdDevice=3D 0.00
[    1.299834] usb 2-1: New USB device strings: Mfr=3D0, Product=3D0, Seri=
alNumber=3D0
[    1.300111] hub 2-1:1.0: USB hub found
[    1.300215] hub 2-1:1.0: 6 ports detected
[    1.327460] battery: ACPI: Battery Slot [BAT0] (battery present)
[    1.328969] Freeing unused decrypted memory: 2040K
[    1.329413] Freeing unused kernel image memory: 2676K
[    1.329480] Write protecting the kernel read-only data: 22528k
[    1.329929] Freeing unused kernel image memory: 2008K
[    1.330230] Freeing unused kernel image memory: 1420K
[    1.340117] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    1.340119] x86/mm: Checking user space page tables
[    1.349547] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    1.349549] Run /init as init process
[    1.567276] usb 1-1.3: new high-speed USB device number 3 using ehci-pc=
i
[    1.587268] usb 2-1.1: new high-speed USB device number 3 using ehci-pc=
i
[    1.617761] usb 2-1.1: New USB device found, idVendor=3D05e3, idProduct=
=3D0608, bcdDevice=3D88.32
[    1.617768] usb 2-1.1: New USB device strings: Mfr=3D0, Product=3D1, Se=
rialNumber=3D0
[    1.617772] usb 2-1.1: Product: USB2.0 Hub
[    1.618325] hub 2-1.1:1.0: USB hub found
[    1.618667] hub 2-1.1:1.0: 4 ports detected
[    1.649492] acpi PNP0C14:02: duplicate WMI GUID 05901221-D566-11D1-B2F0=
-00A0C9062910 (first instance was on PNP0C14:00)
[    1.658518] usb 1-1.3: New USB device found, idVendor=3D058f, idProduct=
=3D3821, bcdDevice=3D 1.00
[    1.658520] usb 1-1.3: New USB device strings: Mfr=3D1, Product=3D2, Se=
rialNumber=3D0
[    1.658521] usb 1-1.3: Product: USB 2.0 PC Camera
[    1.658522] usb 1-1.3: Manufacturer: Alcor Micro, Corp.
[    1.687278] tsc: Refined TSC clocksource calibration: 2394.564 MHz
[    1.687312] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x22=
84284d7d9, max_idle_ns: 440795247978 ns
[    1.687364] clocksource: Switched to clocksource tsc
[    1.876713] ACPI Warning: SystemIO range 0x0000000000000428-0x000000000=
000042F conflicts with OpRegion 0x0000000000000400-0x000000000000047F (\PM=
IO) (20190703/utaddress-204)
[    1.876718] ACPI: If an ACPI driver is available for this device, you s=
hould use it instead of the native driver
[    1.876722] ACPI Warning: SystemIO range 0x0000000000000540-0x000000000=
000054F conflicts with OpRegion 0x0000000000000500-0x000000000000055F (\_S=
B.PCI0.PEG0.PEGP.GPIO) (20190703/utaddress-204)
[    1.876725] ACPI Warning: SystemIO range 0x0000000000000540-0x000000000=
000054F conflicts with OpRegion 0x0000000000000500-0x0000000000000563 (\GP=
IO) (20190703/utaddress-204)
[    1.876727] ACPI: If an ACPI driver is available for this device, you s=
hould use it instead of the native driver
[    1.876728] ACPI Warning: SystemIO range 0x0000000000000530-0x000000000=
000053F conflicts with OpRegion 0x0000000000000500-0x000000000000055F (\_S=
B.PCI0.PEG0.PEGP.GPIO) (20190703/utaddress-204)
[    1.876730] ACPI Warning: SystemIO range 0x0000000000000530-0x000000000=
000053F conflicts with OpRegion 0x0000000000000500-0x0000000000000563 (\GP=
IO) (20190703/utaddress-204)
[    1.876733] ACPI: If an ACPI driver is available for this device, you s=
hould use it instead of the native driver
[    1.876734] ACPI Warning: SystemIO range 0x0000000000000500-0x000000000=
000052F conflicts with OpRegion 0x0000000000000500-0x000000000000055F (\_S=
B.PCI0.PEG0.PEGP.GPIO) (20190703/utaddress-204)
[    1.876736] ACPI Warning: SystemIO range 0x0000000000000500-0x000000000=
000052F conflicts with OpRegion 0x0000000000000500-0x0000000000000563 (\GP=
IO) (20190703/utaddress-204)
[    1.876738] ACPI: If an ACPI driver is available for this device, you s=
hould use it instead of the native driver
[    1.876739] lpc_ich: Resource conflict(s) found affecting gpio_ich
[    1.886653] ahci 0000:00:1f.2: version 3.0
[    1.886796] sdhci: Secure Digital Host Controller Interface driver
[    1.886797] sdhci: Copyright(c) Pierre Ossman
[    1.886940] ahci 0000:00:1f.2: SSS flag set, parallel bus scan disabled
[    1.886973] ahci 0000:00:1f.2: AHCI 0001.0300 32 slots 6 ports 6 Gbps 0=
x3 impl SATA mode
[    1.886977] ahci 0000:00:1f.2: flags: 64bit ncq sntf stag pm led clo pi=
o slum part ems apst
[    1.893461] tg3.c:v3.137 (May 11, 2014)
[    1.897686] sdhci-pci 0000:02:00.1: SDHCI controller found [14e4:16bc] =
(rev 10)
[    1.900341] scsi host0: ahci
[    1.900719] mmc0: SDHCI controller on PCI [0000:02:00.1] using ADMA 64-=
bit
[    1.903387] scsi host1: ahci
[    1.904015] scsi host2: ahci
[    1.909645] scsi host3: ahci
[    1.911171] usb 2-1.1.2: new full-speed USB device number 4 using ehci-=
pci
[    1.912029] scsi host4: ahci
[    1.912803] scsi host5: ahci
[    1.912909] ata1: SATA max UDMA/133 abar m2048@0xd1a08000 port 0xd1a081=
00 irq 27
[    1.912912] ata2: SATA max UDMA/133 abar m2048@0xd1a08000 port 0xd1a081=
80 irq 27
[    1.912913] ata3: DUMMY
[    1.912914] ata4: DUMMY
[    1.912915] ata5: DUMMY
[    1.912916] ata6: DUMMY
[    1.915353] tg3 0000:02:00.0 eth0: Tigon3 [partno(BCM57785) rev 5778510=
0] (PCI Express) MAC address b8:70:f4:ef:05:27
[    1.915356] tg3 0000:02:00.0 eth0: attached PHY is 57765 (10/100/1000Ba=
se-T Ethernet) (WireSpeed[1], EEE[1])
[    1.915359] tg3 0000:02:00.0 eth0: RXcsums[1] LinkChgREG[0] MIirq[0] AS=
F[0] TSOcap[1]
[    1.915361] tg3 0000:02:00.0 eth0: dma_rwctrl[00000001] dma_mask[64-bit=
]
[    1.915723] i801_smbus 0000:00:1f.3: SMBus using PCI interrupt
[    1.929036] cryptd: max_cpu_qlen set to 1000
[    1.937561] tg3 0000:02:00.0 enp2s0f0: renamed from eth0
[    1.963616] AVX version of gcm_enc/dec engaged.
[    1.963617] AES CTR mode by8 optimization enabled
[    1.994374] MXM: GUID detected in BIOS
[    1.994479] ACPI Warning: \_SB.PCI0.GFX0._DSM: Argument #4 type mismatc=
h - Found [Buffer], ACPI requires [Package] (20190703/nsarguments-59)
[    1.994535] ACPI: \_SB_.PCI0.GFX0: failed to evaluate _DSM
[    1.994593] ACPI Warning: \_SB.PCI0.PEG0.PEGP._DSM: Argument #4 type mi=
smatch - Found [Buffer], ACPI requires [Package] (20190703/nsarguments-59)
[    1.994978] pci 0000:01:00.0: optimus capabilities: enabled, status dyn=
amic power, hda bios codec supported
[    1.994988] VGA switcheroo: detected Optimus DSM method \_SB_.PCI0.PEG0=
.PEGP handle
[    1.995021] nouveau 0000:01:00.0: enabling device (0006 -> 0007)
[    1.995151] checking generic (c0000000 7f0000) vs hw (a0000000 10000000=
)
[    1.995152] checking generic (c0000000 7f0000) vs hw (b0000000 2000000)
[    1.995220] nouveau 0000:01:00.0: NVIDIA GF108 (0c1b80a1)
[    2.010664] checking generic (c0000000 7f0000) vs hw (c0000000 10000000=
)
[    2.010666] fb0: switching to inteldrmfb from VESA VGA
[    2.010737] i915 0000:00:02.0: vgaarb: deactivate vga console
[    2.029304] usb 2-1.1.2: New USB device found, idVendor=3D045e, idProdu=
ct=3D07b2, bcdDevice=3D 7.43
[    2.029306] usb 2-1.1.2: New USB device strings: Mfr=3D1, Product=3D2, =
SerialNumber=3D0
[    2.029308] usb 2-1.1.2: Product: Microsoft=C2=AE 2.4GHz Transceiver v7=
.0
[    2.029309] usb 2-1.1.2: Manufacturer: Microsoft
[    2.037242] hidraw: raw HID events driver (C) Jiri Kosina
[    2.050913] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    2.050914] [drm] Driver supports precise vblank timestamp query.
[    2.053082] usbcore: registered new interface driver usbhid
[    2.053083] usbhid: USB HID core driver
[    2.055828] input: Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0 as=
 /devices/pci0000:00/0000:00:1d.0/usb2/2-1/2-1.1/2-1.1.2/2-1.1.2:1.0/0003:=
045E:07B2.0001/input/input7
[    2.115276] hid-generic 0003:045E:07B2.0001: input,hidraw0: USB HID v1.=
11 Keyboard [Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0] on usb-000=
0:00:1d.0-1.1.2/input0
[    2.117045] input: Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0 Mo=
use as /devices/pci0000:00/0000:00:1d.0/usb2/2-1/2-1.1/2-1.1.2/2-1.1.2:1.1=
/0003:045E:07B2.0002/input/input8
[    2.117157] input: Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0 Co=
nsumer Control as /devices/pci0000:00/0000:00:1d.0/usb2/2-1/2-1.1/2-1.1.2/=
2-1.1.2:1.1/0003:045E:07B2.0002/input/input9
[    2.117231] hid-generic 0003:045E:07B2.0002: input,hidraw1: USB HID v1.=
11 Mouse [Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0] on usb-0000:0=
0:1d.0-1.1.2/input1
[    2.117662] input: Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0 Co=
nsumer Control as /devices/pci0000:00/0000:00:1d.0/usb2/2-1/2-1.1/2-1.1.2/=
2-1.1.2:1.2/0003:045E:07B2.0003/input/input10
[    2.134761] nouveau 0000:01:00.0: bios: version 70.08.72.00.a8
[    2.135124] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=
=3Dio+mem,decodes=3Dnone:owns=3Dio+mem
[    2.140781] random: fast init done
[    2.148736] random: systemd-udevd: uninitialized urandom read (16 bytes=
 read)
[    2.148754] random: systemd-udevd: uninitialized urandom read (16 bytes=
 read)
[    2.148812] random: systemd-udevd: uninitialized urandom read (16 bytes=
 read)
[    2.156977] [drm] Initialized i915 1.6.0 20190619 for 0000:00:02.0 on m=
inor 0
[    2.157731] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: =
no)
[    2.157999] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A0=
8:00/LNXVIDEO:00/input/input13
[    2.175288] input: Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0 Sy=
stem Control as /devices/pci0000:00/0000:00:1d.0/usb2/2-1/2-1.1/2-1.1.2/2-=
1.1.2:1.2/0003:045E:07B2.0003/input/input12
[    2.175654] ACPI: Video Device [PEGP] (multi-head: no  rom: yes  post: =
no)
[    2.175663] ACPI BIOS Error (bug): Could not resolve symbol [\_SB.PCI0.=
GFX0.DD02._BCL], AE_NOT_FOUND (20190703/psargs-330)
[    2.175674] No Local Variables are initialized for Method [_BCL]
[    2.175675] No Arguments are initialized for method [_BCL]
[    2.175677] ACPI Error: Aborting method \_SB.PCI0.PEG0.PEGP.DD02._BCL d=
ue to previous error (AE_NOT_FOUND) (20190703/psparse-529)
[    2.175735] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A0=
8:00/device:34/LNXVIDEO:01/input/input14
[    2.176364] hid-generic 0003:045E:07B2.0003: input,hiddev0,hidraw2: USB=
 HID v1.11 Device [Microsoft Microsoft=C2=AE 2.4GHz Transceiver v7.0] on u=
sb-0000:00:1d.0-1.1.2/input2
[    2.230913] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    2.231152] ata1.00: supports DRM functions and may not be fully access=
ible
[    2.231597] ata1.00: ATA-11: Samsung SSD 860 EVO 1TB, RVT03B6Q, max UDM=
A/133
[    2.231599] ata1.00: 1953525168 sectors, multi 1: LBA48 NCQ (depth 32),=
 AA
[    2.233396] ata1.00: supports DRM functions and may not be fully access=
ible
[    2.235303] ata1.00: configured for UDMA/133
[    2.245557] scsi 0:0:0:0: Direct-Access     ATA      Samsung SSD 860  3=
B6Q PQ: 0 ANSI: 5
[    2.245785] scsi 0:0:0:0: Attached scsi generic sg0 type 0
[    2.245921] ata1.00: Enabling discard_zeroes_data
[    2.245999] sd 0:0:0:0: [sda] 1953525168 512-byte logical blocks: (1.00=
 TB/932 GiB)
[    2.246014] sd 0:0:0:0: [sda] Write Protect is off
[    2.246016] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    2.246043] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled=
, doesn't support DPO or FUA
[    2.246185] ata1.00: Enabling discard_zeroes_data
[    2.247133]  sda: sda1 sda2 < sda5 sda6 sda7 >
[    2.247585] ata1.00: Enabling discard_zeroes_data
[    2.248670] sd 0:0:0:0: [sda] supports TCG Opal
[    2.248672] sd 0:0:0:0: [sda] Attached SCSI disk
[    2.251311] nouveau 0000:01:00.0: fb: 1024 MiB DDR3
[    2.293687] fbcon: i915drmfb (fb0) is primary device
[    2.293688] fbcon: Deferring console take-over
[    2.293691] i915 0000:00:02.0: fb0: i915drmfb frame buffer device
[    2.314440] vga_switcheroo: enabled
[    2.314574] [TTM] Zone  kernel: Available graphics memory: 8123696 KiB
[    2.314575] [TTM] Zone   dma32: Available graphics memory: 2097152 KiB
[    2.314575] [TTM] Initializing pool allocator
[    2.314579] [TTM] Initializing DMA pool allocator
[    2.314593] nouveau 0000:01:00.0: DRM: VRAM: 1024 MiB
[    2.314594] nouveau 0000:01:00.0: DRM: GART: 1048576 MiB
[    2.314597] nouveau 0000:01:00.0: DRM: TMDS table version 2.0
[    2.314598] nouveau 0000:01:00.0: DRM: DCB version 4.0
[    2.314599] nouveau 0000:01:00.0: DRM: DCB outp 00: 02000300 00000000
[    2.314601] nouveau 0000:01:00.0: DRM: DCB conn 00: 00000000
[    2.315398] nouveau 0000:01:00.0: DRM: MM: using COPY0 for buffer copie=
s
[    2.315946] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    2.315946] [drm] Driver supports precise vblank timestamp query.
[    2.348493] nouveau 0000:01:00.0: DRM: allocated 1024x768 fb: 0x60000, =
bo (____ptrval____)
[    2.348604] fbcon: Deferring console take-over
[    2.348606] nouveau 0000:01:00.0: fb1: nouveaudrmfb frame buffer device
[    2.348761] [drm] Initialized nouveau 1.3.1 20120801 for 0000:01:00.0 o=
n minor 1
[    2.559226] ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    2.561203] ata2.00: ATAPI: MATSHITADVD-RAM UJ8B0AW, 1.00, max UDMA/100
[    2.563699] ata2.00: configured for UDMA/100
[    2.569268] scsi 1:0:0:0: CD-ROM            MATSHITA DVD-RAM UJ8B0AW  1=
.00 PQ: 0 ANSI: 5
[    2.625128] sr 1:0:0:0: [sr0] scsi3-mmc drive: 24x/24x writer dvd-ram c=
d/rw xa/form2 cdda tray
[    2.625133] cdrom: Uniform CD-ROM driver Revision: 3.20
[    2.625567] sr 1:0:0:0: Attached scsi CD-ROM sr0
[    2.625663] sr 1:0:0:0: Attached scsi generic sg1 type 5
[    3.297737] EXT4-fs (sda6): mounted filesystem with ordered data mode. =
Opts: (null)
[    3.444896] systemd[1]: Inserted module 'autofs4'
[    3.458660] systemd[1]: systemd 242 running in system mode. (+PAM +AUDI=
T +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +G=
NUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 -IDN +PCRE2 defa=
ult-hierarchy=3Dhybrid)
[    3.475341] systemd[1]: Detected architecture x86-64.
[    3.475680] psmouse serio1: elantech: assuming hardware version 3 (with=
 firmware version 0x450f01)
[    3.480002] systemd[1]: Set hostname to <BlueGene>.
[    3.480523] systemd[1]: Failed to bump fs.file-max, ignoring: Invalid a=
rgument
[    3.527321] psmouse serio1: elantech: Synaptics capabilities query resu=
lt 0x68, 0x15, 0x0a.
[    3.544743] systemd[1]: /lib/systemd/system/dbus.socket:4: ListenStream=
=3D references a path below legacy directory /var/run/, updating /var/run/=
dbus/system_bus_socket =E2=86=92 /run/dbus/system_bus_socket; please updat=
e the unit file accordingly.
[    3.579180] psmouse serio1: elantech: Elan sample query result 04, 0b, =
00
[    3.587915] systemd[1]: Listening on initctl Compatibility Named Pipe.
[    3.588074] systemd[1]: Listening on udev Control Socket.
[    3.588091] systemd[1]: Reached target Remote File Systems.
[    3.588163] systemd[1]: Listening on fsck to fsckd communication Socket=
.
[    3.588346] systemd[1]: Set up automount Arbitrary Executable File Form=
ats File System Automount Point.
[    3.607355] EXT4-fs (sda6): re-mounted. Opts: errors=3Dremount-ro
[    3.629084] lp: driver loaded but no devices found
[    3.649185] ppdev: user-space parallel port driver
[    3.840712] input: ETPS/2 Elantech Touchpad as /devices/platform/i8042/=
serio1/input/input6
[    4.061621] systemd-journald[426]: Received request to flush runtime jo=
urnal from PID 1
[    4.479504] acer_wmi: Acer Laptop ACPI-WMI Extras
[    4.479529] acer_wmi: Function bitmap for Communication Button: 0x1
[    4.479534] acer_wmi: Brightness must be controlled by generic video dr=
iver
[    4.482475] input: Acer WMI hotkeys as /devices/virtual/input/input15
[    4.482749] cfg80211: Loading compiled-in X.509 certificates for regula=
tory database
[    4.494129] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    4.546642] RAPL PMU: API unit is 2^-32 Joules, 3 fixed counters, 16384=
0 ms ovfl timer
[    4.546644] RAPL PMU: hw unit of domain pp0-core 2^-16 Joules
[    4.546645] RAPL PMU: hw unit of domain package 2^-16 Joules
[    4.546646] RAPL PMU: hw unit of domain pp1-gpu 2^-16 Joules
[    4.815936] intel_rapl_common: Found RAPL domain package
[    4.815938] intel_rapl_common: Found RAPL domain core
[    4.815939] intel_rapl_common: Found RAPL domain uncore
[    4.815944] intel_rapl_common: RAPL package-0 domain package locked by =
BIOS
[    4.833135] ath: phy0: ASPM enabled: 0x42
[    4.833139] ath: EEPROM regdomain: 0x65
[    4.833139] ath: EEPROM indicates we should expect a direct regpair map
[    4.833141] ath: Country alpha2 being used: 00
[    4.833142] ath: Regpair used: 0x65
[    4.833856] mc: Linux media interface: v0.10
[    4.847037] ieee80211 phy0: Selected rate control algorithm 'minstrel_h=
t'
[    4.847881] ieee80211 phy0: Atheros AR9287 Rev:2 mem=3D0xffffb15b80cc00=
00, irq=3D17
[    4.864737] videodev: Linux video capture interface: v2.00
[    4.903366] uvcvideo: Found UVC 1.00 device USB 2.0 PC Camera (058f:382=
1)
[    4.907789] ath9k 0000:03:00.0 wlp3s0: renamed from wlan0
[    4.909691] snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_au=
dio_component_bind_ops [i915])
[    4.910969] snd_hda_intel 0000:01:00.1: Disabling MSI
[    4.910976] snd_hda_intel 0000:01:00.1: Handle vga_switcheroo audio cli=
ent
[    4.919143] uvcvideo 1-1.3:1.0: Entity type for entity Processing 2 was=
 not initialized!
[    4.919146] uvcvideo 1-1.3:1.0: Entity type for entity Extension 6 was =
not initialized!
[    4.919148] uvcvideo 1-1.3:1.0: Entity type for entity Camera 1 was not=
 initialized!
[    4.920384] input: USB 2.0 PC Camera: PC Camera as /devices/pci0000:00/=
0000:00:1a.0/usb1/1-1/1-1.3/1-1.3:1.0/input/input16
[    4.920898] usbcore: registered new interface driver uvcvideo
[    4.920900] USB Video Class driver (1.1.1)
[    4.933629] snd_hda_codec_realtek hdaudioC0D0: ALC269VB: SKU not ready =
0x598301f0
[    4.933895] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC269VB:=
 line_outs=3D1 (0x14/0x0/0x0/0x0/0x0) type:speaker
[    4.933898] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=3D0 (0x0=
/0x0/0x0/0x0/0x0)
[    4.933900] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=3D1 (0x21/0x0=
/0x0/0x0/0x0)
[    4.933902] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=3D0x0
[    4.933903] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[    4.933906] snd_hda_codec_realtek hdaudioC0D0:      Internal Mic=3D0x1b
[    4.933907] snd_hda_codec_realtek hdaudioC0D0:      Mic=3D0x18
[    4.952119] input: HDA Intel PCH Mic as /devices/pci0000:00/0000:00:1b.=
0/sound/card0/input17
[    4.952195] input: HDA Intel PCH Headphone as /devices/pci0000:00/0000:=
00:1b.0/sound/card0/input18
[    4.952263] input: HDA Intel PCH HDMI/DP,pcm=3D3 as /devices/pci0000:00=
/0000:00:1b.0/sound/card0/input19
[    5.487221] Adding 15998972k swap on /dev/sda5.  Priority:-2 extents:1 =
across:15998972k SSFS
[    5.514359] EXT4-fs (sda1): mounting ext2 file system using the ext4 su=
bsystem
[    5.517945] EXT4-fs (sda1): mounted filesystem without journal. Opts: (=
null)
[    5.538911] EXT4-fs (sda7): mounted filesystem with ordered data mode. =
Opts: (null)
[    5.577271] audit: type=3D1400 audit(1586762602.048:2): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"firejail-de=
fault" pid=3D808 comm=3D"apparmor_parser"
[    5.581701] audit: type=3D1400 audit(1586762602.052:3): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffice=
-xpdfimport" pid=3D803 comm=3D"apparmor_parser"
[    5.583760] audit: type=3D1400 audit(1586762602.056:4): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/sbin/m=
ysqld-akonadi" pid=3D806 comm=3D"apparmor_parser"
[    5.583765] audit: type=3D1400 audit(1586762602.056:5): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/sbin/m=
ysqld-akonadi///usr/sbin/mysqld" pid=3D806 comm=3D"apparmor_parser"
[    5.589683] audit: type=3D1400 audit(1586762602.060:6): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffice=
-oopslash" pid=3D809 comm=3D"apparmor_parser"
[    5.591876] audit: type=3D1400 audit(1586762602.064:7): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/bin/ma=
n" pid=3D810 comm=3D"apparmor_parser"
[    5.591882] audit: type=3D1400 audit(1586762602.064:8): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_filter"=
 pid=3D810 comm=3D"apparmor_parser"
[    5.591885] audit: type=3D1400 audit(1586762602.064:9): apparmor=3D"STA=
TUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_groff" =
pid=3D810 comm=3D"apparmor_parser"
[    5.602271] audit: type=3D1400 audit(1586762602.072:10): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/sbin/dhcl=
ient" pid=3D812 comm=3D"apparmor_parser"
[    5.602276] audit: type=3D1400 audit(1586762602.072:11): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/lib/N=
etworkManager/nm-dhcp-client.action" pid=3D812 comm=3D"apparmor_parser"
[    5.993632] random: crng init done
[    5.993634] random: 7 urandom warning(s) missed due to ratelimiting
[    8.175896] input: HDA NVidia HDMI/DP,pcm=3D3 as /devices/pci0000:00/00=
00:00:01.0/0000:01:00.1/sound/card1/input20
[    8.176065] input: HDA NVidia HDMI/DP,pcm=3D7 as /devices/pci0000:00/00=
00:00:01.0/0000:01:00.1/sound/card1/input21
[    8.176199] input: HDA NVidia HDMI/DP,pcm=3D8 as /devices/pci0000:00/00=
00:00:01.0/0000:01:00.1/sound/card1/input22
[    8.176329] input: HDA NVidia HDMI/DP,pcm=3D9 as /devices/pci0000:00/00=
00:00:01.0/0000:01:00.1/sound/card1/input23
[    8.536637] wlp3s0: authenticate with a4:99:47:5b:b2:1e
[    8.553750] wlp3s0: send auth to a4:99:47:5b:b2:1e (try 1/3)
[    8.555604] wlp3s0: authenticated
[    8.559239] wlp3s0: associate with a4:99:47:5b:b2:1e (try 1/3)
[    8.563367] wlp3s0: RX AssocResp from a4:99:47:5b:b2:1e (capab=3D0x1411=
 status=3D0 aid=3D2)
[    8.563538] wlp3s0: associated
[    8.606587] IPv6: ADDRCONF(NETDEV_CHANGE): wlp3s0: link becomes ready
[   13.487568] vboxdrv: loading out-of-tree module taints kernel.
[   13.487849] vboxdrv: module verification failed: signature and/or requi=
red key missing - tainting kernel
[   13.497566] vboxdrv: Found 4 processor cores
[   13.519569] vboxdrv: TSC mode is Invariant, tentative frequency 2394485=
179 Hz
[   13.519571] vboxdrv: Successfully loaded version 6.0.14_Ubuntu (interfa=
ce 0x00290008)
[   13.530374] VBoxNetFlt: Successfully started.
[   13.538011] VBoxNetAdp: Successfully started.
[   13.546686] VBoxPciLinuxInit
[   13.550849] vboxpci: IOMMU not found (not registered)
[   31.071906] ACPI: \_SB_.PCI0.PEG0.PEGP: failed to evaluate _DSM
[ 3656.178426] uvcvideo: uvc_v4l2_open
[ 3656.313765] uvcvideo: Resuming interface 0
[ 3656.313770] uvcvideo: Resuming interface 1
[ 3656.316861] uvcvideo: uvc_v4l2_release
[ 3656.322871] uvcvideo: uvc_v4l2_open
[ 3656.976971] nouveau 0000:01:00.0: Enabling HDA controller
[ 3657.431653] uvcvideo: Trying format 0x47504a4d (MJPG): 640x480.
[ 3657.431656] uvcvideo: Using default frame interval 33333.3 us (30.0 fps=
).
[ 3657.436326] uvcvideo: Trying format 0x47504a4d (MJPG): 640x480.
[ 3657.436330] uvcvideo: Using default frame interval 33333.3 us (30.0 fps=
).
[ 3657.444587] uvcvideo: uvc_v4l2_mmap
[ 3657.444673] uvcvideo: uvc_v4l2_mmap
[ 3657.444959] uvcvideo: uvc_v4l2_mmap
[ 3657.445043] uvcvideo: uvc_v4l2_mmap
[ 3657.445150] uvcvideo: Setting frame interval to 1/10 (1000000).
[ 3657.647397] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 3657.647401] uvcvideo: Selecting alternate setting 1 (3072 B/frame bandw=
idth).
[ 3657.649034] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 3657.649120] uvcvideo: uvc_v4l2_poll
[ 3657.654752] uvcvideo: Button (intf 1) pressed len 4
[ 3658.650188] uvcvideo: uvc_v4l2_poll
[ 3658.670574] uvcvideo: Setting frame interval to 1/10 (1000000).
[ 3658.674887] uvcvideo: uvc_v4l2_mmap
[ 3658.674976] uvcvideo: uvc_v4l2_mmap
[ 3658.675050] uvcvideo: uvc_v4l2_mmap
[ 3658.675109] uvcvideo: uvc_v4l2_mmap
[ 3658.676026] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 3658.676040] uvcvideo: Selecting alternate setting 1 (3072 B/frame bandw=
idth).
[ 3658.676886] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 3658.676931] uvcvideo: uvc_v4l2_poll
[ 3659.677987] uvcvideo: uvc_v4l2_poll
[ 3659.678101] uvcvideo: uvc_v4l2_poll
[ 3660.679154] uvcvideo: uvc_v4l2_poll
[ 3660.679255] uvcvideo: uvc_v4l2_poll
[ 3661.680303] uvcvideo: uvc_v4l2_poll
[ 3661.680396] uvcvideo: uvc_v4l2_poll
[ 3662.680619] uvcvideo: uvc_v4l2_poll
[ 3662.680710] uvcvideo: uvc_v4l2_poll
[ 3663.681754] uvcvideo: uvc_v4l2_poll
[ 3663.681854] uvcvideo: uvc_v4l2_poll
[ 3664.682862] uvcvideo: uvc_v4l2_poll
[ 3664.682953] uvcvideo: uvc_v4l2_poll
[ 3664.965620] ACPI: \_SB_.PCI0.PEG0.PEGP: failed to evaluate _DSM
[ 3665.684003] uvcvideo: uvc_v4l2_poll
[ 3665.684093] uvcvideo: uvc_v4l2_poll
[ 3666.685184] uvcvideo: uvc_v4l2_poll
[ 3666.685306] uvcvideo: uvc_v4l2_poll
[ 3667.686322] uvcvideo: uvc_v4l2_poll
[ 3667.726732] uvcvideo: uvc_v4l2_release
[ 3670.228562] uvcvideo: Suspending interface 1
[ 3670.228567] uvcvideo: Suspending interface 0
[ 4358.456094] uvcvideo: uvc_v4l2_open
[ 4358.591590] uvcvideo: Resuming interface 0
[ 4358.591596] uvcvideo: Resuming interface 1
[ 4358.592933] uvcvideo: uvc_v4l2_release
[ 4358.599282] uvcvideo: uvc_v4l2_open
[ 4359.258989] nouveau 0000:01:00.0: Enabling HDA controller
[ 4359.707246] uvcvideo: Trying format 0x47504a4d (MJPG): 640x480.
[ 4359.707249] uvcvideo: Using default frame interval 33333.3 us (30.0 fps=
).
[ 4359.712077] uvcvideo: Trying format 0x47504a4d (MJPG): 640x480.
[ 4359.712080] uvcvideo: Using default frame interval 33333.3 us (30.0 fps=
).
[ 4359.718711] uvcvideo: uvc_v4l2_mmap
[ 4359.718808] uvcvideo: uvc_v4l2_mmap
[ 4359.718883] uvcvideo: uvc_v4l2_mmap
[ 4359.718942] uvcvideo: uvc_v4l2_mmap
[ 4359.719043] uvcvideo: Setting frame interval to 1/25 (400000).
[ 4359.853551] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 4359.853554] uvcvideo: Selecting alternate setting 1 (3072 B/frame bandw=
idth).
[ 4359.854301] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 4359.854357] uvcvideo: uvc_v4l2_poll
[ 4360.854752] uvcvideo: uvc_v4l2_poll
[ 4360.875565] uvcvideo: Setting frame interval to 1/25 (400000).
[ 4360.880082] uvcvideo: uvc_v4l2_mmap
[ 4360.880175] uvcvideo: uvc_v4l2_mmap
[ 4360.880239] uvcvideo: uvc_v4l2_mmap
[ 4360.880301] uvcvideo: uvc_v4l2_mmap
[ 4360.881254] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 4360.881256] uvcvideo: Selecting alternate setting 1 (3072 B/frame bandw=
idth).
[ 4360.882142] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 4360.882214] uvcvideo: uvc_v4l2_poll
[ 4361.883247] uvcvideo: uvc_v4l2_poll
[ 4361.883344] uvcvideo: uvc_v4l2_poll
[ 4362.884395] uvcvideo: uvc_v4l2_poll
[ 4362.884489] uvcvideo: uvc_v4l2_poll
[ 4363.885555] uvcvideo: uvc_v4l2_poll
[ 4363.885651] uvcvideo: uvc_v4l2_poll
[ 4364.886718] uvcvideo: uvc_v4l2_poll
[ 4364.886817] uvcvideo: uvc_v4l2_poll
[ 4365.887843] uvcvideo: uvc_v4l2_poll
[ 4365.887930] uvcvideo: uvc_v4l2_poll
[ 4366.888988] uvcvideo: uvc_v4l2_poll
[ 4366.889085] uvcvideo: uvc_v4l2_poll
[ 4367.183342] ACPI: \_SB_.PCI0.PEG0.PEGP: failed to evaluate _DSM
[ 4367.890134] uvcvideo: uvc_v4l2_poll
[ 4367.890232] uvcvideo: uvc_v4l2_poll
[ 4368.890534] uvcvideo: uvc_v4l2_poll
[ 4368.890632] uvcvideo: uvc_v4l2_poll
[ 4369.891687] uvcvideo: uvc_v4l2_poll
[ 4369.891787] uvcvideo: uvc_v4l2_poll
[ 4370.892812] uvcvideo: uvc_v4l2_poll
[ 4370.892894] uvcvideo: uvc_v4l2_poll
[ 4371.893920] uvcvideo: uvc_v4l2_poll
[ 4371.933215] uvcvideo: uvc_v4l2_release
[ 4374.434288] uvcvideo: Suspending interface 1
[ 4374.434294] uvcvideo: Suspending interface 0
[ 4505.147584] nouveau 0000:01:00.0: Enabling HDA controller
[ 4505.371226] uvcvideo: uvc_v4l2_open
[ 4505.504173] uvcvideo: Resuming interface 0
[ 4505.504207] uvcvideo: Resuming interface 1
[ 4505.504835] uvcvideo: uvc_v4l2_release
[ 4505.949824] uvcvideo: uvc_v4l2_open
[ 4505.949939] uvcvideo: uvc_v4l2_release
[ 4505.953166] uvcvideo: uvc_v4l2_open
[ 4505.953823] uvcvideo: uvc_v4l2_release
[ 4506.040027] uvcvideo: uvc_v4l2_open
[ 4506.071800] uvcvideo: Trying format 0x56595559 (YUYV): 1024x768.
[ 4506.071802] uvcvideo: Using default frame interval 66666.6 us (15.0 fps=
).
[ 4506.100688] uvcvideo: Trying format 0x56595559 (YUYV): 1024x768.
[ 4506.100690] uvcvideo: Using default frame interval 66666.6 us (15.0 fps=
).
[ 4506.105107] uvcvideo: Setting frame interval to 1/15 (666666).
[ 4506.109588] uvcvideo: Control 0x00980927 not found.
[ 4506.109914] uvcvideo: Control 0x00980927 not found.
[ 4506.111808] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 4506.111810] uvcvideo: Selecting alternate setting 1 (3072 B/frame bandw=
idth).
[ 4506.112528] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 4506.138865] uvcvideo: uvc_v4l2_release
[ 4506.144590] uvcvideo: uvc_v4l2_open
[ 4506.164252] uvcvideo: Trying format 0x56595559 (YUYV): 1024x768.
[ 4506.164255] uvcvideo: Using default frame interval 66666.6 us (15.0 fps=
).
[ 4506.221716] uvcvideo: Trying format 0x56595559 (YUYV): 1024x768.
[ 4506.221719] uvcvideo: Using default frame interval 66666.6 us (15.0 fps=
).
[ 4506.226107] uvcvideo: Setting frame interval to 1/15 (666666).
[ 4506.230607] uvcvideo: Control 0x00980927 not found.
[ 4506.230802] uvcvideo: Control 0x00980927 not found.
[ 4506.232495] uvcvideo: Device requested 3072 B/frame bandwidth.
[ 4506.232497] uvcvideo: Selecting alternate setting 1 (3072 B/frame bandw=
idth).
[ 4506.233371] uvcvideo: Allocated 5 URB buffers of 32x3072 bytes each.
[ 4506.233425] uvcvideo: uvc_v4l2_poll
[ 4511.140585] ACPI: \_SB_.PCI0.PEG0.PEGP: failed to evaluate _DSM
[ 4511.716729] uvcvideo: uvc_v4l2_poll
[ 4511.721786] uvcvideo: uvc_v4l2_release
[ 4514.252560] uvcvideo: Suspending interface 1
[ 4514.252565] uvcvideo: Suspending interface 0

--------------8AAC0324E2A5F2EE519CD886
Content-Type: text/x-log; charset=UTF-8;
 name="lsusb.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="lsusb.log"

Bus 001 Device 003: ID 058f:3821 Alcor Micro Corp.
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x058f Alcor Micro Corp.
  idProduct          0x3821
  bcdDevice            1.00
  iManufacturer           1 Alcor Micro, Corp.
  iProduct                2 USB 2.0 PC Camera
  iSerial                 0
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x0593
    bNumInterfaces          2
    bConfigurationValue     1
    iConfiguration          0
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
      iFunction               4 PC Camera
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0
      iInterface              4 PC Camera
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.00
        wTotalLength       0x004f
        dwClockFrequency       30.000000MHz
        bInCollection           1
        baInterfaceNr( 0)       1
      VideoControl Interface Descriptor:
        bLength                28
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 6
        guidExtensionCode         {68bbd0b0-61a4-4b83-90b7-a6215f3c4f70}
        bNumControl            24
        bNrPins                 1
        baSourceID( 0)          2
        bControlSize            3
        bmControls( 0)       0xff
        bmControls( 1)       0xff
        bmControls( 2)       0xff
        iExtension              0
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
        bmControls           0x00000000
      VideoControl Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      5 (PROCESSING_UNIT)
      Warning: Descriptor too short
        bUnitID                 2
        bSourceID               1
        wMaxMultiplier          0
        bControlSize            2
        bmControls     0x0000157f
          Brightness
          Contrast
          Hue
          Saturation
          Sharpness
          Gamma
          White Balance Temperature
          Backlight Compensation
          Power Line Frequency
          White Balance Temperature, Auto
        iProcessing             0
        bmVideoStandards     0x09
          None
          SECAM - 625/50
      VideoControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             3
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               2
        iTerminal               0
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0010  1x 16 bytes
        bInterval               7
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       0
      bNumEndpoints           0
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0
      iInterface              4 PC Camera
      VideoStreaming Interface Descriptor:
        bLength                            15
        bDescriptorType                    36
        bDescriptorSubtype                  1 (INPUT_HEADER)
        bNumFormats                         2
        wTotalLength                   0x04d5
        bEndPointAddress                  130
        bmInfo                              0
        bTerminalLink                       3
        bStillCaptureMethod                 2
        bTriggerSupport                     1
        bTriggerUsage                       0
        bControlSize                        1
        bmaControls( 0)                     0
        bmaControls( 1)                     0
      VideoStreaming Interface Descriptor:
        bLength                            27
        bDescriptorType                    36
        bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
        bFormatIndex                        1
        bNumFrameDescriptors               12
        guidFormat                            {32595559-0000-0010-8000-00a=
a00389b71}
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
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         1
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 24576000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            46
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                 38400000
        dwMaxBitRate                192000000
        dwMaxVideoFrameBufferSize      960000
        dwDefaultFrameInterval         400000
        bFrameIntervalType                  5
        dwFrameInterval( 0)            400000
        dwFrameInterval( 1)            500000
        dwFrameInterval( 2)            666666
        dwFrameInterval( 3)           1000000
        dwFrameInterval( 4)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            38
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1024
        wHeight                           768
        dwMinBitRate                 62914560
        dwMaxBitRate                188743680
        dwMaxVideoFrameBufferSize     1572864
        dwDefaultFrameInterval         666666
        bFrameIntervalType                  3
        dwFrameInterval( 0)            666666
        dwFrameInterval( 1)           1000000
        dwFrameInterval( 2)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            38
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1152
        wHeight                           864
        dwMinBitRate                 79626240
        dwMaxBitRate                191102976
        dwMaxVideoFrameBufferSize     1990656
        dwDefaultFrameInterval         833333
        bFrameIntervalType                  3
        dwFrameInterval( 0)            833333
        dwFrameInterval( 1)           1000000
        dwFrameInterval( 2)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                          1024
        dwMinBitRate                104857600
        dwMaxBitRate                188743680
        dwMaxVideoFrameBufferSize     2621440
        dwDefaultFrameInterval        1111111
        bFrameIntervalType                  2
        dwFrameInterval( 0)           1111111
        dwFrameInterval( 1)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1400
        wHeight                          1050
        dwMinBitRate                117600000
        dwMaxBitRate                188160000
        dwMaxVideoFrameBufferSize     2940000
        dwDefaultFrameInterval        1250000
        bFrameIntervalType                  2
        dwFrameInterval( 0)           1250000
        dwFrameInterval( 1)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            34
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         7
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1600
        wHeight                          1200
        dwMinBitRate                153600000
        dwMaxBitRate                184320000
        dwMaxVideoFrameBufferSize     3840000
        dwDefaultFrameInterval        1666666
        bFrameIntervalType                  2
        dwFrameInterval( 0)           1666666
        dwFrameInterval( 1)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         8
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           2048
        wHeight                          1536
        dwMinBitRate                150994944
        dwMaxBitRate                150994944
        dwMaxVideoFrameBufferSize     6291456
        dwDefaultFrameInterval        3333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)           3333333
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         9
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            160
        wHeight                           120
        dwMinBitRate                  1536000
        dwMaxBitRate                  9216000
        dwMaxVideoFrameBufferSize       38400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                        10
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            176
        wHeight                           144
        dwMinBitRate                  2027520
        dwMaxBitRate                 12165120
        dwMaxVideoFrameBufferSize       50688
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                        11
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                  6144000
        dwMaxBitRate                 36864000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                        12
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            352
        wHeight                           288
        dwMinBitRate                  8110080
        dwMaxBitRate                 48660480
        dwMaxVideoFrameBufferSize      202752
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            38
        bDescriptorType                    36
        bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)
        bEndpointAddress                    0
        bNumImageSizePatterns               8
        wWidth( 0)                        640
        wHeight( 0)                       480
        wWidth( 1)                        800
        wHeight( 1)                       600
        wWidth( 2)                       1024
        wHeight( 2)                       768
        wWidth( 3)                       1152
        wHeight( 3)                       864
        wWidth( 4)                       1280
        wHeight( 4)                      1024
        wWidth( 5)                       1400
        wHeight( 5)                      1050
        wWidth( 6)                       1600
        wHeight( 6)                      1200
        wWidth( 7)                       2048
        wHeight( 7)                      1536
        bNumCompressionPatterns             0
      VideoStreaming Interface Descriptor:
        bLength                             6
        bDescriptorType                    36
        bDescriptorSubtype                 13 (COLORFORMAT)
        bColorPrimaries                     1 (BT.709,sRGB)
        bTransferCharacteristics            1 (BT.709)
        bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
      VideoStreaming Interface Descriptor:
        bLength                            11
        bDescriptorType                    36
        bDescriptorSubtype                  6 (FORMAT_MJPEG)
        bFormatIndex                        2
        bNumFrameDescriptors               12
        bFlags                              1
          Fixed-size samples: Yes
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
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         1
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 36864000
        dwMaxBitRate                221184000
        dwMaxVideoFrameBufferSize      921600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         2
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                 57600000
        dwMaxBitRate                345600000
        dwMaxVideoFrameBufferSize     1440000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         3
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1024
        wHeight                           768
        dwMinBitRate                 94371840
        dwMaxBitRate                566231040
        dwMaxVideoFrameBufferSize     2359296
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         4
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1152
        wHeight                           864
        dwMinBitRate                119439360
        dwMaxBitRate                716636160
        dwMaxVideoFrameBufferSize     2985984
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         5
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1280
        wHeight                          1024
        dwMinBitRate                157286400
        dwMaxBitRate                943718400
        dwMaxVideoFrameBufferSize     3932160
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         6
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1400
        wHeight                          1050
        dwMinBitRate                176400000
        dwMaxBitRate                1058400000
        dwMaxVideoFrameBufferSize     4410000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         7
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           1600
        wHeight                          1200
        dwMinBitRate                230400000
        dwMaxBitRate                1382400000
        dwMaxVideoFrameBufferSize     5760000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            42
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         8
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                           2048
        wHeight                          1536
        dwMinBitRate                377487360
        dwMaxBitRate                1509949440
        dwMaxVideoFrameBufferSize     9437184
        dwDefaultFrameInterval         500000
        bFrameIntervalType                  4
        dwFrameInterval( 0)            500000
        dwFrameInterval( 1)            666666
        dwFrameInterval( 2)           1000000
        dwFrameInterval( 3)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         9
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            160
        wHeight                           120
        dwMinBitRate                  2304000
        dwMaxBitRate                 13824000
        dwMaxVideoFrameBufferSize       57600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                        10
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            176
        wHeight                           144
        dwMinBitRate                  3041280
        dwMaxBitRate                 18247680
        dwMaxVideoFrameBufferSize       76032
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                        11
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                  9216000
        dwMaxBitRate                 55296000
        dwMaxVideoFrameBufferSize      230400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            50
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                        12
        bmCapabilities                   0x00
          Still image unsupported
        wWidth                            352
        wHeight                           288
        dwMinBitRate                 12165120
        dwMaxBitRate                 72990720
        dwMaxVideoFrameBufferSize      304128
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  6
        dwFrameInterval( 0)            333333
        dwFrameInterval( 1)            400000
        dwFrameInterval( 2)            500000
        dwFrameInterval( 3)            666666
        dwFrameInterval( 4)           1000000
        dwFrameInterval( 5)           2000000
      VideoStreaming Interface Descriptor:
        bLength                            38
        bDescriptorType                    36
        bDescriptorSubtype                  3 (STILL_IMAGE_FRAME)
        bEndpointAddress                    0
        bNumImageSizePatterns               8
        wWidth( 0)                        640
        wHeight( 0)                       480
        wWidth( 1)                        800
        wHeight( 1)                       600
        wWidth( 2)                       1024
        wHeight( 2)                       768
        wWidth( 3)                       1152
        wHeight( 3)                       864
        wWidth( 4)                       1280
        wHeight( 4)                      1024
        wWidth( 5)                       1400
        wHeight( 5)                      1050
        wWidth( 6)                       1600
        wHeight( 6)                      1200
        wWidth( 7)                       2048
        wHeight( 7)                      1536
        bNumCompressionPatterns             0
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
      iInterface              4 PC Camera
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x82  EP 2 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x1400  3x 1024 bytes
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
      iInterface              4 PC Camera
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x82  EP 2 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0c00  2x 1024 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       3
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0
      iInterface              4 PC Camera
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x82  EP 2 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0400  1x 1024 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       4
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0
      iInterface              4 PC Camera
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x82  EP 2 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
        bInterval               1
Device Qualifier (for other device speed):
  bLength                10
  bDescriptorType         6
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  bNumConfigurations      1
Device Status:     0x0000
  (Bus Powered)
can't get debug descriptor: Resource temporarily unavailable

--------------8AAC0324E2A5F2EE519CD886
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------8AAC0324E2A5F2EE519CD886
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--------------8AAC0324E2A5F2EE519CD886--

