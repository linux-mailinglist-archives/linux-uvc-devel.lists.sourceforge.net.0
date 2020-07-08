Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE8B218639
	for <lists+linux-uvc-devel@lfdr.de>; Wed,  8 Jul 2020 13:34:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jt8Kh-0004le-Ga; Wed, 08 Jul 2020 11:33:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <massimo.b@gmx.net>) id 1jt8Kf-0004lT-Hj
 for linux-uvc-devel@lists.sourceforge.net; Wed, 08 Jul 2020 11:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:
 Content-Type:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=doW52NVWpchUGEsJeZvZPaoZLW0sOm3l/ABnzKvCP/g=; b=bGOyJNSpbtnLQIzLBuQokNl43H
 SgCAKaI1qekYsWE4QTKjVHZYqtaG0Ak16yKI1fIvbWpOgAz4xCAO7EWgt7UZOFfoq6wtw6GGasKuz
 wq6aZvA4WAlqf1XgGefhqcqDO6t38JtlA8j/h+Uzg0G9bnKbP5jheeUciratWQ0+22Ec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Date:Content-Type:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=doW52NVWpchUGEsJeZvZPaoZLW0sOm3l/ABnzKvCP/g=; b=K
 jMKyhyjKn2+TgxxvtCf6CYN8SY6nJkmao5UyHKPzNGVCy2uZRH0vIDY1EvQOGULGzoYFPvs0CNDCv
 ZtXaGsRWENY0GCOmMWp5mlMX0i5pxzGJ7YkCwPv4YiBeRWeufCvJQJKzUhSKSafxheK4Q4PAe1aXj
 z6Gl6kGKxyVIoOBw=;
Received: from mout.gmx.net ([212.227.15.19])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jt8Kb-00E6yU-Ub
 for linux-uvc-devel@lists.sourceforge.net; Wed, 08 Jul 2020 11:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1594208011;
 bh=Rk7WOeAsNAhNg4T+WLfziurnnNPYL9x+XDtvDmP6bog=;
 h=X-UI-Sender-Class:Subject:From:To:Date;
 b=MX4LpuMfHW4GdU15l03yFd/htFikJnDOoVT5CoRUIL3wS8VRRzXOzGhTullJBSnDo
 GAz5j0miGHFrdMFR0+5nVu9Raf8GQnMVhs9dEsfOHeoDwu06C8VJI1Woh9qtOXrFF0
 8O4wYuNk0nEOYsfdfJC/GqCygKn2h3tHqTWSkxyU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mobalindesk.lan.lan ([77.10.170.165]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MpDJd-1kgjdU29F9-00ql1s; Wed, 08
 Jul 2020 13:33:31 +0200
Message-ID: <6b5bb1913060f3582b57d6ea1311ade80ef2bb3f.camel@gmx.net>
From: "Massimo B." <massimo.b@gmx.net>
To: linux-uvc-devel@lists.sourceforge.net
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwAQMAAABtzGvEAAAAA3NCSVQICAjb4U/gAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABGUlEQVQYlUWQsUoDQRCGv71LjB7KSSBwwZCTgFhY2EYIHmJnZRMLo5AXUMRCBMHcE6iPoGBlINpoZXGVeQTFKqSxMgYtTBFcZw7EKfZn2Z2Z7//hr2ysZ+5tqFLmWKVaKKs0vWd9TJx2AibmoQcupj6CCZirqTgzA5hmsdtQWe5/xAREX7uJ3MLP9x4lyieNO5mcOxyM8HH79y/4Cdn9R3JDsts/uGO82yOMJf/ah1Y8tfQEIQt7Z7rCawtNiUpHFgYUdgTxgI1NAW6SvxoqWabbw0Bd5jpQibTNBC1F4nIMk2TWhTqIs+fSVpzfCsVR9eaiJf5W6mtWXK7O+vKR4nWkSYSuFbP4No3Ht6dpSN9pSMYmaXI1/usXT0FM3SoTKAAAAAAASUVORK5CYII=
Date: Wed, 08 Jul 2020 13:28:30 +0200
MIME-Version: 1.0
User-Agent: Evolution 3.36.2 
X-Provags-ID: V03:K1:nxg3Gf9NKcY4WAkqzLX9zwGPR+ur2FQqcp7zmwdO8FT2zVwymxq
 W7XPfsMHv5y/a2uu2g0FzQPgdbjqaiF/9Iqbtt+jciZ7G61V6vLi3r82MDTzpOhhDtouVrG
 uBVXutIXTUIirYCkKkYKvAwS0LsPuz+zIoDzr99h7+DlmttNB1grfpGP9sj8F2YVJUvEutw
 2GooWquRFBDS0zJ60VfBg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:w4yms/gOA6o=:iFYXxwCp6qK0UOAisxirne
 Ry9hFXfOHYVlLEEJlqgokIwi5nUMLFGxa0NjELn0284GsoiJ4RYvqEQfvDT1pnpWOeS2M1QWx
 2P++mMImBRmMUkFfholqRnpnBhehNRqMkN+jbktGsO3A5rA1vawYTCLtE1zovfLEeP0aWdX3D
 QBgTjVhapvcqGHWK2IBIAzcS8+KCrWRFnEUJZL+2Dp5BRXlSP3OJIFK/Coj+Rtw74j7WGo336
 ufo/dPiKmTFhQwapwtoqKCgaKfGYmqimXIaP7l6YE8ZQikqnvFvZF2Cvqqk4zkFj7aYWBzMA7
 j36H8FEavJVgpUWyuO02KFhN4dQ2HtwmPpumt7iT7lG8+nx9OdwNGVCRW+37tlDt1i1orRASN
 VEIrApu5t7gw0Ygoo2k50MXOazmisAk53gPiiXkgB8kxPoezPeMqs6Zy3J22DtwN1VXzF4JVv
 umz4+9fmBhxQYDKM/J5vUnpI7Ea5F+1gd9IXhQ7EjL00XVL0niwmHVv3A0Lxmew101R6Nr8eD
 hahgjxoNzHjgz51qjsWaB5dvSlxh8i8VlJ7JDbkNK9XwbEU8iNtV80+TLgf+utYkG8/Y9eOpN
 QFRBGS9v3jJaxah5PpeNWOHbqOozs2cy8CQNXLb+/ZBJfoi3KBM1SIA71Q/hoNKmpL6XyEI4x
 hdu0VT0OlIz7U9oQ96e0CBHfCXRZy7hZQxQZ81SaO9xb8IPKS3Ns+npljRX55vWZi/s+F60ua
 LFSOQIsLvvcZA2lVHvKVudGBoDsImmdaB8N+L1SkLCQzHM6c2G3Vw0fXyM71WWdIykAPLEyty
 dX2r20Oqz6xOFEFf+eHLFGhtjMa2QFafsJXtxkn5/91jdQqovhLYUCPG7hWPeTGHtpTC403wl
 ZLviZc4ybjqEVP+7SQkAoG0J7QEi9kEc+UywC68W7I9yK+5uq41Puzw9M/jVs5CjeDuuSeUr0
 zUT7eNV3wuMs1Cx0455QcyJsrQYUpKEezMdJYPNJb4gF/MH/QhCqcPP9Y7/8K4v6Z6FXjTgzJ
 SKJ4RSSoGsu5EaeeXT7V2LtMZ+PUN7VR4AmqGh67+JMaqoLyCxQxznRcb5tHoBDrKwXCdNN/Z
 tT8JpPGliqqHE0zDhbP5LZjJU+a3+9FgaSbuAczsubs2PGtNjkZMNwxjiwac6Lz/8DYgV+89p
 s/6bYUpirUlS6V+NXHRNyemd+yQx8UupInHBQezqHd7sdN2z6INh3qGyRdUFtE9poInK3y8n7
 YBhXFAEn+ZHr52ATR
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: product.name]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (massimo.b[at]gmx.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jt8Kb-00E6yU-Ub
Subject: [linux-uvc-devel] Quanta Computer Inc. Astro HD Cam,
 not initializing at boot
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

Hello everybody,

I previously posted to linux-uvc-devel@lists.berlios.de which seems to be dead.

This chinese camera does not initialize correctly at boot:

Bus 003 Device 004: ID 0408:2090 Quanta Computer, Inc. Astro HD Camera

After replugging it works fine.

I'd like to forward you a copy of my report on Gentoo:
https://forums.gentoo.org/viewtopic-t-1114442.html


When booting with this device plugged, it is not usable and blocking other audio
devices:

$ pacmd list-sources
Daemon not responding.

The syslog has continuously repeating this line:

[kernel] usb 3-7: 4:1: cannot set freq 44100 to ep 0x84
[kernel] usb 3-7: 4:1: cannot set freq 44100 to ep 0x84

rmmod and modprob'ing uvcvideo again shows:

[pulseaudio] [pulseaudio] module-alsa-card.c: Failed to find a working profile.
[pulseaudio] [pulseaudio] module.c: Failed to load module "module-alsa-card" (argument: "device_id="0" name="usb-QCM_Astro_HD_Camera-03" card_name="alsa_card.usb-QCM_Astro_HD_Camera-03" namereg_fail=false tsched=yes fixed_latency_range=no ignore_dB=no deferred_volume=yes use_ucm=yes avoid_resampling=no card_properties="module-udev-detect.discovered=1""): initialization failed.
[pulseaudio] [pulseaudio] module-udev-detect.c: Failed to open /proc/asound/card0: No such file or directory
[kernel] uvcvideo: Failed to query (129) UVC probe control : -110 (exp. 26).
[kernel] usb 3-7: 4:1: cannot set freq 44100 to ep 0x84
[kernel] uvcvideo: Failed to initialize the device (-5).
[kernel] usbcore: registered new interface driver uvcvideo
[kernel] USB Video Class driver (1.1.1)

Unplugging the usb cam, restarting pulseaudio and replugging the cam again makes
it work:

[kernel] usb 3-7: new high-speed USB device number 11 using xhci_hcd
[kernel] usb 3-7: New USB device found, idVendor=0408, idProduct=2090, bcdDevice=21.17
[kernel] usb 3-7: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[kernel] usb 3-7: Product: Astro HD Camera
[kernel] usb 3-7: Manufacturer: QCM
[kernel] uvcvideo: Found UVC 1.00 device Astro HD Camera (0408:2090)
[kernel] uvcvideo: Unable to create debugfs 3-11-1 directory.
[kernel] uvcvideo: No streaming interface found for terminal 9.
[kernel] input: Astro HD Camera: Astro HD Camer as /devices/pci0000:00/0000:00:14.0/usb3/3-7/3-7:1.0/input/input21
[mtp-probe] checking bus 3, device 11: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-7"_
[mtp-probe] bus: 3, device: 11 was not an MTP device_
[laptop-mode] Laptop Mode Tools disabled in config file\n
[laptop-mode] Laptop Mode Tools disabled in config file\n
[laptop-mode] Laptop Mode Tools disabled in config file\n
[mtp-probe] checking bus 3, device 11: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-7"_
[mtp-probe] bus: 3, device: 11 was not an MTP device_
[pulseaudio] [pulseaudio] module-udev-detect.c: Failed to open /proc/asound/card0: No such file or directory
[pulseaudio] [pulseaudio] utils.c: could not open configuration file /usr/share/alsa/ucm2/Astro HD Camera/Astro HD Camera.conf
[pulseaudio] [pulseaudio] parser.c: error: could not parse configuration for card Astro HD Camera
[pulseaudio] [pulseaudio] main.c: error: failed to import Astro HD Camera use case configuration -2
[pulseaudio] [pulseaudio] alsa-ucm.c: UCM not available for card Astro HD Camera
[pulseaudio] [pulseaudio] control.c: Invalid CTL front:0
[pulseaudio] [pulseaudio] alsa-util.c: Unable to attach to mixer front:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Successfully attached to mixer 'hw:0'
[pulseaudio] [pulseaudio] control.c: Invalid CTL iec958:0
[pulseaudio] [pulseaudio] alsa-util.c: Unable to attach to mixer iec958:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Successfully attached to mixer 'hw:0'
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device front:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device surround21:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device surround40:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device surround41:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device surround50:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device surround51:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device surround71:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device iec958:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device a52:0: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dca:0
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dca:0: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.0:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.0:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.0:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.1:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,1
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,1: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.1:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,1
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,1: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.1:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,1
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,1: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0,1
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0,1: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.2:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,2
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,2: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.2:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,2
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,2: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.2:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,2
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,2: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0,2
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0,2: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.3:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,3
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,3: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.3:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,3
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,3: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.3:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,3
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,3: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0,3
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0,3: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.4:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,4
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,4: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.4:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,4
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,4: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.4:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,4
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,4: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0,4
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0,4: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.5:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,5
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,5: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.5:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,5
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,5: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.5:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,5
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,5: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0,5
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0,5: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.6:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,6
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,6: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.6:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,6
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,6: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.6:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,6
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,6: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0,6
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0,6: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.7:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,7
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,7: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.7:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,7
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,7: No such file or directory
[pulseaudio] [pulseaudio] confmisc.c: Unable to find definition 'cards.USB-Audio.pcm.hdmi.7:CARD=0,AES0=4,AES1=130,AES2=0,AES3=2'
[pulseaudio] [pulseaudio] conf.c: function snd_func_refer returned error: No such file or directory
[pulseaudio] [pulseaudio] conf.c: Evaluate error: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM hdmi:0,7
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hdmi:0,7: No such file or directory
[pulseaudio] [pulseaudio] pcm.c: Unknown PCM dcahdmi:0,7
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device dcahdmi:0,7: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Error opening PCM device hw:0: No such file or directory
[pulseaudio] [pulseaudio] module-card-restore.c: Restoring port latency offsets for card alsa_card.usb-QCM_Astro_HD_Camera-03.
[pulseaudio] [pulseaudio] card.c: alsa_card.usb-QCM_Astro_HD_Camera-03: active_profile: input:analog-stereo
[pulseaudio] [pulseaudio] card.c: Created 3 "alsa_card.usb-QCM_Astro_HD_Camera-03"
[pulseaudio] [pulseaudio] alsa-util.c: Cannot disable ALSA period wakeups
[pulseaudio] [pulseaudio] alsa-util.c: ALSA period wakeups were not disabled
[pulseaudio] [pulseaudio] alsa-source.c: Successfully opened device front:0.
[pulseaudio] [pulseaudio] alsa-source.c: Selected mapping 'Analog Stereo' (analog-stereo).
[pulseaudio] [pulseaudio] alsa-source.c: Successfully enabled mmap() mode.
[pulseaudio] [pulseaudio] alsa-source.c: Successfully enabled timer-based scheduling mode.
[pulseaudio] [pulseaudio] control.c: Invalid CTL front:0
[pulseaudio] [pulseaudio] alsa-util.c: Unable to attach to mixer front:0: No such file or directory
[pulseaudio] [pulseaudio] alsa-util.c: Successfully attached to mixer 'hw:0'
[pulseaudio] [pulseaudio] module-device-restore.c: Restoring port for source source:alsa_input.usb-QCM_Astro_HD_Camera-03.analog-stereo.
[pulseaudio] [pulseaudio] module-device-restore.c: Restoring volume for source alsa_input.usb-QCM_Astro_HD_Camera-03.analog-stereo: front-left: 41481 /  63%,   front-right: 41481 /  63%
[pulseaudio] [pulseaudio] module-device-restore.c: Restoring mute state for source alsa_input.usb-QCM_Astro_HD_Camera-03.analog-stereo: muted
[pulseaudio] [pulseaudio] source.c: Created source 3 "alsa_input.usb-QCM_Astro_HD_Camera-03.analog-stereo" with sample spec s16le 2ch 44100Hz and channel map front-left,front-right
[pulseaudio] [pulseaudio] source.c:     alsa.resolution_bits = "16"
[pulseaudio] [pulseaudio] source.c:     device.api = "alsa"
[pulseaudio] [pulseaudio] source.c:     device.class = "sound"
[pulseaudio] [pulseaudio] source.c:     alsa.class = "generic"
[pulseaudio] [pulseaudio] source.c:     alsa.subclass = "generic-mix"
[pulseaudio] [pulseaudio] source.c:     alsa.name = "USB Audio"
[pulseaudio] [pulseaudio] source.c:     alsa.id = "USB Audio"
[pulseaudio] [pulseaudio] source.c:     alsa.subdevice = "0"
[pulseaudio] [pulseaudio] source.c:     alsa.subdevice_name = "subdevice #0"
[pulseaudio] [pulseaudio] source.c:     alsa.device = "0"
[pulseaudio] [pulseaudio] source.c:     alsa.card = "0"
[pulseaudio] [pulseaudio] source.c:     alsa.card_name = "Astro HD Camera"
[pulseaudio] [pulseaudio] source.c:     alsa.long_card_name = "QCM Astro HD Camera at usb-0000:00:14.0-7, high speed"
[pulseaudio] [pulseaudio] source.c:     alsa.driver_name = "snd_usb_audio"
[pulseaudio] [pulseaudio] source.c:     device.bus_path = "pci-0000:00:14.0-usb-0:7:1.3"
[pulseaudio] [pulseaudio] source.c:     sysfs.path = "/devices/pci0000:00/0000:00:14.0/usb3/3-7/3-7:1.3/sound/card0"
[pulseaudio] [pulseaudio] source.c:     udev.id = "usb-QCM_Astro_HD_Camera-03"
[pulseaudio] [pulseaudio] source.c:     device.bus = "usb"
[pulseaudio] [pulseaudio] source.c:     device.vendor.id = "0408"
[pulseaudio] [pulseaudio] source.c:     device.vendor.name = "Quanta Computer, Inc."
[pulseaudio] [pulseaudio] source.c:     device.product.id = "2090"
[pulseaudio] [pulseaudio] source.c:     device.product.name = "Astro HD Camera"
[pulseaudio] [pulseaudio] source.c:     device.serial = "QCM_Astro_HD_Camera"
[pulseaudio] [pulseaudio] source.c:     device.form_factor = "webcam"
[pulseaudio] [pulseaudio] source.c:     device.string = "front:0"
[pulseaudio] [pulseaudio] source.c:     device.buffering.buffer_size = "352800"
[pulseaudio] [pulseaudio] source.c:     device.buffering.fragment_size = "176400"
[pulseaudio] [pulseaudio] source.c:     device.access_mode = "mmap+timer"
[pulseaudio] [pulseaudio] source.c:     device.profile.name = "analog-stereo"
[pulseaudio] [pulseaudio] source.c:     device.profile.description = "Analog Stereo"
[pulseaudio] [pulseaudio] source.c:     device.description = "Astro HD Camera Analog Stereo"
[pulseaudio] [pulseaudio] source.c:     alsa.mixer_name = "USB Mixer"
[pulseaudio] [pulseaudio] source.c:     alsa.components = "USB0408:2090"
[pulseaudio] [pulseaudio] source.c:     module-udev-detect.discovered = "1"
[pulseaudio] [pulseaudio] source.c:     device.icon_name = "camera-web-usb"
[pulseaudio] [pulseaudio] alsa-source.c: Using 2,0 fragments of size 176400 bytes (1000,00ms), buffer size is 352800 bytes (2000,00ms)
[pulseaudio] [pulseaudio] alsa-source.c: Time scheduling watermark is 20,00ms
[pulseaudio] [pulseaudio] alsa-source.c: Successfully enabled deferred volume.
[pulseaudio] [pulseaudio] alsa-source.c: Hardware volume ranges from -8,00 dB to 22,50 dB.
[pulseaudio] [pulseaudio] alsa-source.c: Fixing base volume to -22,50 dB
[pulseaudio] [pulseaudio] alsa-source.c: Using hardware volume control. Hardware dB scale supported.
[pulseaudio] [pulseaudio] alsa-source.c: Using hardware mute control.
[rtkit-daemon] Successfully made thread 27026 of process 26844 owned by '4728' RT at priority 5._
[pulseaudio] [alsa-source-USB Audio] util.c: Successfully enabled SCHED_RR scheduling for thread, with priority 5.
[pulseaudio] [alsa-source-USB Audio] alsa-source.c: Starting capture.
[pulseaudio] [pulseaudio] module.c: Loaded "module-alsa-card" (index: #25; argument: "device_id="0" name="usb-QCM_Astro_HD_Camera-03" card_name="alsa_card.usb-QCM_Astro_HD_Camera-03" namereg_fail=false tsched=yes fixed_latency_range=no ignore_dB=no deferred_volume=yes use_ucm=yes avoid_resampling=no card_properties="module-udev-detect.discovered=1"").
[pulseaudio] [pulseaudio] module-udev-detect.c: Card /devices/pci0000:00/0000:00:14.0/usb3/3-7/3-7:1.3/sound/card0 (alsa_card.usb-QCM_Astro_HD_Camera-03) module loaded.
[pulseaudio] [pulseaudio] module-suspend-on-idle.c: Source alsa_input.usb-QCM_Astro_HD_Camera-03.analog-stereo idle for too long, suspending ...
[pulseaudio] [alsa-source-USB Audio] alsa-source.c: Device suspended...

# uname -r
5.6.12-gentoo

Same on 5.7.4-gentoo.

What can I do to solve it at boot without re-plugging the hardware?

Just trying to rmmod and modrobe again does not solve the issue if not re-
plugging the hardware:

[kernel] uvcvideo: Found UVC 1.00 device Astro HD Camera (0408:2090)
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 2 on unit 1: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 3 on unit 1: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 4 on unit 1: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 6 on unit 1: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 11 on unit 1: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 13 on unit 1: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 8 on unit 1: -110 (exp. 1).
[pulseaudio] [pulseaudio] alsa-util.c: snd_pcm_hw_params failed: Connection timed out
[kernel] usb 3-7: 4:1: cannot set freq 44100 to ep 0x84
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 2 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 3 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 6 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 7 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 8 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 9 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 10 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 1 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 5 on unit 2: -110 (exp. 1).
[kernel] uvcvideo: Failed to query (GET_INFO) UVC control 11 on unit 2: -110 (exp. 1).
[kernel] usb 3-7: 4:1: cannot set freq 44100 to ep 0x84
[kernel] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[kernel] usb 3-7: 4:1: cannot set freq 44100 to ep 0x84


Best regards,
Massimo



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
