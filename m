Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3998724EF4F
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 23 Aug 2020 20:40:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1k9utp-0008PO-Ly; Sun, 23 Aug 2020 18:39:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <coba@cobac.eu>) id 1k9uto-0008PH-IQ
 for linux-uvc-devel@lists.sourceforge.net; Sun, 23 Aug 2020 18:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:
 From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0XC1TkpRYvB9xymWyyvZVQOS8UKC+e7ZrWR0Iod8aTQ=; b=VlL89Jxv2BD1Aw7WL3ZFniZJRT
 Hp+wkJuYkqQYhhtitFdQQcP29uvVFgKUgcINq8FAb6/1ZxyPCFRQB87eospd+vaKSYpz96y5Eb0bL
 69il0Re3MFmsT7r2GYrxTXHaPd8D52oXyigVPjH3nMXdOBwXFpi3RCYVLb6o33rolOlw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0XC1TkpRYvB9xymWyyvZVQOS8UKC+e7ZrWR0Iod8aTQ=; b=H
 IJs8R+RIMrCnVV+yJY6KvM63AIWell6Ijt/21GzCf+DF6mq9jG4tge8TjwBf7efAL+kLyQ9m84yJy
 +uMzftUyDXiNn/UQi8QHMgPnkNUKFoSvFs8TPPl03q2/AoxtGW11sqZrMxPGjYk4He6TWLxJh/AaV
 VDvJVFU01baGsLps=;
Received: from www5.your-server.de ([213.133.104.5])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k9utX-001uXM-VI
 for linux-uvc-devel@lists.sourceforge.net; Sun, 23 Aug 2020 18:39:24 +0000
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www5.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <coba@cobac.eu>) id 1k9ud3-0002LA-85
 for linux-uvc-devel@lists.sourceforge.net; Sun, 23 Aug 2020 20:22:05 +0200
Received: from [80.112.166.110]
 by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <coba@cobac.eu>) id 1k9ud3-000TTj-17
 for linux-uvc-devel@lists.sourceforge.net; Sun, 23 Aug 2020 20:22:05 +0200
To: linux-uvc-devel@lists.sourceforge.net
From: Coba <coba@cobac.eu>
Message-ID: <8e1f2bd4-aff6-30af-f050-7d230d27eeea@cobac.eu>
Date: Sun, 23 Aug 2020 20:22:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------CF06069D7EE21FAEE285AA8B"
Content-Language: en-US
X-Authenticated-Sender: coba@cobac.eu
X-Virus-Scanned: Clear (ClamAV 0.102.4/25908/Sun Aug 23 15:11:59 2020)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [213.133.104.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1k9utX-001uXM-VI
Subject: [linux-uvc-devel] Sunplus Webcam 1bcf:248c (not supported) Failed
 to query UVC (1.10) probe control
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
--------------CF06069D7EE21FAEE285AA8B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm struggling to get to work a SunplusIT USB webcam. All other video 
devices work as expected. The camera is recognized but can't be loaded 
by the uvcvideo module. No video device is created. The integrated 
microphone of the device works fine.

The relevant dmesg output is:

usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 
4.17
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3 

usb 1-2: Product: USB Camera 

usb 1-2: Manufacturer: SunplusIT Inc 

usb 1-2: SerialNumber: 01.00.00 

uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c) 

uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling 
workaround.
uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34). 

uvcvideo: Failed to initialize the device (-5). 

usb 1-2: 3:1: cannot get freq at ep 0x86 

usb 1-2: 3:2: cannot set freq 11025 to ep 0x86 

usb 1-2: 3:3: cannot set freq 16000 to ep 0x86 

usb 1-2: 3:4: cannot get freq at ep 0x86 

usb 1-2: 3:5: cannot set freq 24000 to ep 0x86 

usb 1-2: 3:6: cannot set freq 32000 to ep 0x86 

usb 1-2: 3:7: cannot get freq at ep 0x86 

usb 1-2: 3:8: cannot set freq 48000 to ep 0x86 

usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is 
probably wrong.
usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1 


I've tried enabling all quirks module options except 0x8 and 0x20, but 
the problem persists. I'm attaching to this email a dmesg log without 
enabling any quirk, dmesg logs with quirks 0x2 and 0x100 and a lsusb dump.

Using the Zen kernel 5.8.3 in archlinux. As far as I know it doesn't 
modify any video devices related code.

Thanks in advance for any support.

Warm regards,

Coba.

--------------CF06069D7EE21FAEE285AA8B
Content-Type: text/x-log; charset=UTF-8;
 name="dmesg.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="dmesg.log"

[  651.166706] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[  651.173850] usb 1-2: 3:4: cannot get freq at ep 0x86
[  651.176737] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[  651.178344] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[  651.179725] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[  651.186467] usb 1-2: 3:8: cannot get freq at ep 0x86
[  651.223503] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[  651.223509] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[  768.972075] audit: type=1100 audit(1598200873.783:259): pid=4650 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  768.972951] audit: type=1101 audit(1598200873.784:260): pid=4650 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  768.973104] audit: type=1110 audit(1598200873.784:261): pid=4650 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  768.974634] audit: type=1105 audit(1598200873.785:262): pid=4650 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  768.975993] usbcore: deregistering interface driver uvcvideo
[  769.140831] audit: type=1106 audit(1598200873.951:263): pid=4650 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  769.141019] audit: type=1104 audit(1598200873.952:264): pid=4650 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  792.228974] i915 0000:00:02.0: [drm] *ERROR* Atomic update failure on pipe C (start=92719 end=92720) time 11877 us, min 1066, max 1079, scanline start 475, end 962
[  792.808560] audit: type=1100 audit(1598200897.619:265): pid=4700 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  792.809477] audit: type=1101 audit(1598200897.620:266): pid=4700 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  792.809684] audit: type=1110 audit(1598200897.621:267): pid=4700 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  792.811865] audit: type=1105 audit(1598200897.623:268): pid=4700 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  792.928734] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[  792.928737] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[  792.928738] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[  793.296785] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[  793.296790] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[  793.296793] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[  793.296796] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[  793.296952] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input41
[  793.300893] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[  793.300898] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[  793.300900] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[  793.358295] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  793.363721] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  793.363728] uvcvideo: Failed to initialize the device (-5).
[  793.363871] usbcore: registered new interface driver uvcvideo
[  793.363873] USB Video Class driver (1.1.1)
[  793.365447] audit: type=1106 audit(1598200898.176:269): pid=4700 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  793.365806] audit: type=1104 audit(1598200898.177:270): pid=4700 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  798.205371] usb 1-2: USB disconnect, device number 9
[  799.429785] usb 1-2: new high-speed USB device number 10 using xhci_hcd
[  799.631766] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[  799.631772] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[  799.631776] usb 1-2: Product: USB Camera
[  799.631779] usb 1-2: Manufacturer: SunplusIT Inc
[  799.631782] usb 1-2: SerialNumber: 01.00.00
[  799.646673] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[  799.646676] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[  799.646678] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[  799.704157] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  799.709595] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  799.709603] uvcvideo: Failed to initialize the device (-5).
[  799.726139] usb 1-2: 3:1: cannot get freq at ep 0x86
[  799.728766] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[  799.730594] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[  799.737764] usb 1-2: 3:4: cannot get freq at ep 0x86
[  799.740761] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[  799.742400] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[  799.743684] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[  799.750375] usb 1-2: 3:8: cannot get freq at ep 0x86
[  799.787504] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[  799.787510] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[  818.642775] audit: type=1100 audit(1598200923.454:271): pid=4815 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.645581] audit: type=1101 audit(1598200923.457:272): pid=4815 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.646075] audit: type=1110 audit(1598200923.457:273): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.651683] audit: type=1105 audit(1598200923.463:274): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.656142] usbcore: deregistering interface driver uvcvideo
[  818.832684] audit: type=1106 audit(1598200923.644:275): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.832898] audit: type=1104 audit(1598200923.644:276): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  822.145595] usb 1-2: USB disconnect, device number 10
[  823.621657] usb 1-2: new high-speed USB device number 11 using xhci_hcd
[  823.824285] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[  823.824293] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[  823.824298] usb 1-2: Product: USB Camera
[  823.824302] usb 1-2: Manufacturer: SunplusIT Inc
[  823.824306] usb 1-2: SerialNumber: 01.00.00
[  823.851292] usb 1-2: 3:1: cannot get freq at ep 0x86
[  823.854001] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[  823.855871] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[  823.862995] usb 1-2: 3:4: cannot get freq at ep 0x86
[  823.865926] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[  823.867616] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[  823.868901] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[  823.875588] usb 1-2: 3:8: cannot get freq at ep 0x86
[  823.912774] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[  823.912780] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[  824.057414] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[  824.427323] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[  824.427329] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[  824.427332] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[  824.427335] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[  824.427569] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input42
[  824.431901] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[  824.489283] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  824.494749] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  824.494756] uvcvideo: Failed to initialize the device (-5).
[  824.494900] usbcore: registered new interface driver uvcvideo
[  824.494902] USB Video Class driver (1.1.1)
[  908.325138] audit: type=1130 audit(1598201013.137:277): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-clean comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[  908.325167] audit: type=1131 audit(1598201013.137:278): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-clean comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[  922.443450] audit: type=1100 audit(1598201027.255:279): pid=5152 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  922.446032] audit: type=1101 audit(1598201027.258:280): pid=5152 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.522894] audit: type=1100 audit(1598201051.335:281): pid=5201 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.525901] audit: type=1101 audit(1598201051.338:282): pid=5201 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.526628] audit: type=1110 audit(1598201051.339:283): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.535594] audit: type=1105 audit(1598201051.348:284): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.539269] audit: type=1106 audit(1598201051.351:285): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.539419] audit: type=1104 audit(1598201051.351:286): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  997.375766] audit: type=1100 audit(1598201102.187:287): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[  998.248852] i915 0000:00:02.0: [drm] *ERROR* Atomic update failure on pipe A (start=59711 end=59712) time 12640 us, min 1073, max 1079, scanline start 1063, end 791
[ 1002.658616] audit: type=1100 audit(1598201107.470:288): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.660322] audit: type=1101 audit(1598201107.472:289): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.660881] audit: type=1110 audit(1598201107.472:290): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.666171] audit: type=1105 audit(1598201107.478:291): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.670723] usbcore: deregistering interface driver uvcvideo
[ 1002.851220] audit: type=1106 audit(1598201107.663:292): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.851453] audit: type=1104 audit(1598201107.663:293): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.088751] audit: type=1100 audit(1598201122.902:294): pid=5421 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.089697] audit: type=1101 audit(1598201122.903:295): pid=5421 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.089842] audit: type=1110 audit(1598201122.903:296): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.091346] audit: type=1105 audit(1598201122.904:297): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.206636] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1018.206637] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1018.206638] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1018.557874] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1018.557880] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1018.557883] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1018.557887] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1018.558211] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input43
[ 1018.562124] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1018.562129] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1018.562131] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1018.619498] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1018.619504] uvcvideo: Failed to initialize the device (-5).
[ 1018.619624] usbcore: registered new interface driver uvcvideo
[ 1018.619626] USB Video Class driver (1.1.1)
[ 1018.620796] audit: type=1106 audit(1598201123.434:298): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.621114] audit: type=1104 audit(1598201123.434:299): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1022.033789] usb 1-2: USB disconnect, device number 11
[ 1023.851823] usb 1-2: new high-speed USB device number 12 using xhci_hcd
[ 1024.054451] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1024.054458] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1024.054462] usb 1-2: Product: USB Camera
[ 1024.054465] usb 1-2: Manufacturer: SunplusIT Inc
[ 1024.054468] usb 1-2: SerialNumber: 01.00.00
[ 1024.069395] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1024.069399] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1024.069400] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1024.126832] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1024.126839] uvcvideo: Failed to initialize the device (-5).
[ 1024.143170] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1024.145982] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1024.147936] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1024.155285] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1024.158145] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1024.159784] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1024.161073] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1024.167847] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1024.204959] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1024.204965] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1256.806191] audit: type=1100 audit(1598201361.623:300): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[ 1260.297018] audit: type=1100 audit(1598201365.114:301): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.297646] audit: type=1101 audit(1598201365.114:302): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.297844] audit: type=1110 audit(1598201365.115:303): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.299252] audit: type=1105 audit(1598201365.116:304): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.300603] usbcore: deregistering interface driver uvcvideo
[ 1260.467019] audit: type=1106 audit(1598201365.284:305): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.467231] audit: type=1104 audit(1598201365.284:306): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.406370] audit: type=1101 audit(1598201376.223:307): pid=6252 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.406506] audit: type=1110 audit(1598201376.223:308): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.408127] audit: type=1105 audit(1598201376.225:309): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.521836] uvcvideo: Probing generic UVC device 12
[ 1271.523653] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1271.523657] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1271.523659] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1271.866212] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1271.866225] uvcvideo: Found a valid video chain (1 -> 5).
[ 1271.876591] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1271.876596] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1271.876599] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1271.876602] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1271.876875] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input44
[ 1271.877092] uvcvideo: UVC device initialized.
[ 1271.877193] uvcvideo: Probing generic UVC device 2
[ 1271.881123] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1271.881127] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1271.881129] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1271.932439] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1271.932449] uvcvideo: Found a valid video chain (1 -> 5).
[ 1271.938403] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1271.938410] uvcvideo: Failed to initialize the device (-5).
[ 1271.938633] usbcore: registered new interface driver uvcvideo
[ 1271.938636] USB Video Class driver (1.1.1)
[ 1271.940021] audit: type=1106 audit(1598201376.757:310): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.940319] audit: type=1104 audit(1598201376.757:311): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1276.199409] usb 1-2: USB disconnect, device number 12
[ 1277.871739] usb 1-2: new high-speed USB device number 13 using xhci_hcd
[ 1278.073992] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1278.073998] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1278.074002] usb 1-2: Product: USB Camera
[ 1278.074005] usb 1-2: Manufacturer: SunplusIT Inc
[ 1278.074008] usb 1-2: SerialNumber: 01.00.00
[ 1278.085102] uvcvideo: Probing generic UVC device 2
[ 1278.089325] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1278.089328] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1278.089330] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1278.140788] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1278.140800] uvcvideo: Found a valid video chain (1 -> 5).
[ 1278.146860] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1278.146868] uvcvideo: Failed to initialize the device (-5).
[ 1278.163286] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1278.166086] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1278.167998] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1278.175120] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1278.178048] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1278.179805] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1278.186878] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 1278.189680] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 1278.228987] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1278.228993] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1415.310252] audit: type=1100 audit(1598201520.129:312): pid=6664 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[ 1425.852323] audit: type=1100 audit(1598201530.671:313): pid=6681 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.853228] audit: type=1101 audit(1598201530.672:314): pid=6681 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.853373] audit: type=1110 audit(1598201530.672:315): pid=6681 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.854956] audit: type=1105 audit(1598201530.674:316): pid=6681 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1428.496822] audit: type=1334 audit(1598201533.316:317): prog-id=4 op=UNLOAD
[ 1428.496828] audit: type=1334 audit(1598201533.316:318): prog-id=3 op=UNLOAD
[ 1428.499501] audit: type=1334 audit(1598201533.318:319): prog-id=8 op=UNLOAD
[ 1428.499507] audit: type=1334 audit(1598201533.318:320): prog-id=7 op=UNLOAD
[ 1428.501424] audit: type=1334 audit(1598201533.320:321): prog-id=6 op=UNLOAD
[ 1428.501429] audit: type=1334 audit(1598201533.320:322): prog-id=5 op=UNLOAD
[ 1462.743824] usb 1-2: USB disconnect, device number 13
[ 1464.069284] usb 1-2: new high-speed USB device number 14 using xhci_hcd
[ 1464.272322] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1464.272328] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1464.272331] usb 1-2: Product: USB Camera
[ 1464.272334] usb 1-2: Manufacturer: SunplusIT Inc
[ 1464.272337] usb 1-2: SerialNumber: 01.00.00
[ 1464.299939] uvcvideo: Probing generic UVC device 2
[ 1464.303483] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1464.303484] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1464.303485] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1464.355582] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1464.355589] uvcvideo: Found a valid video chain (1 -> 5).
[ 1464.361499] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1464.361504] uvcvideo: Failed to initialize the device (-5).
[ 1464.378264] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1464.380978] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1464.382640] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1464.389752] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1464.392440] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1464.394309] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1464.395633] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1464.402426] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1464.439571] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1464.439578] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1503.534626] kauditd_printk_skb: 12 callbacks suppressed
[ 1503.534629] audit: type=1100 audit(1598201608.354:335): pid=7040 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.537349] audit: type=1101 audit(1598201608.357:336): pid=7040 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.537871] audit: type=1110 audit(1598201608.358:337): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.542361] audit: type=1105 audit(1598201608.362:338): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.543677] usbcore: deregistering interface driver uvcvideo
[ 1503.711631] audit: type=1106 audit(1598201608.531:339): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.711711] audit: type=1104 audit(1598201608.531:340): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.621971] audit: type=1101 audit(1598201636.442:341): pid=7139 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.622506] audit: type=1110 audit(1598201636.442:342): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.625779] audit: type=1105 audit(1598201636.446:343): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.738651] uvcvideo: Probing generic UVC device 12
[ 1531.740531] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1531.740535] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1531.740537] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1532.083397] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1532.083409] uvcvideo: Found a valid video chain (1 -> 5).
[ 1532.110342] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1532.110347] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1532.110350] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1532.110353] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1532.110726] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input45
[ 1532.110926] uvcvideo: UVC device initialized.
[ 1532.111048] uvcvideo: Probing generic UVC device 2
[ 1532.115229] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1532.115233] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1532.115236] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1532.166580] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1532.166594] uvcvideo: Found a valid video chain (1 -> 5).
[ 1532.172577] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1532.178040] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1532.178048] uvcvideo: Failed to initialize the device (-5).
[ 1532.178190] usbcore: registered new interface driver uvcvideo
[ 1532.178192] USB Video Class driver (1.1.1)
[ 1532.179368] audit: type=1106 audit(1598201636.999:344): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1532.179640] audit: type=1104 audit(1598201637.000:345): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1535.293415] usb 1-2: USB disconnect, device number 14
[ 1536.180517] usb 1-2: new high-speed USB device number 15 using xhci_hcd
[ 1536.394462] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1536.394467] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1536.394471] usb 1-2: Product: USB Camera
[ 1536.394474] usb 1-2: Manufacturer: SunplusIT Inc
[ 1536.394477] usb 1-2: SerialNumber: 01.00.00
[ 1536.405113] uvcvideo: Probing generic UVC device 2
[ 1536.409297] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1536.409301] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1536.409302] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1536.461035] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1536.461048] uvcvideo: Found a valid video chain (1 -> 5).
[ 1536.466927] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1536.472246] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1536.472253] uvcvideo: Failed to initialize the device (-5).
[ 1536.488871] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1536.491643] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1536.493330] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1536.494550] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 1536.501488] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 1536.504209] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1536.506088] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1536.513412] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1536.552379] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1536.552386] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1568.797516] audit: type=1101 audit(1598201673.617:346): pid=7277 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.797650] audit: type=1110 audit(1598201673.617:347): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.799168] audit: type=1105 audit(1598201673.619:348): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.800506] audit: type=1106 audit(1598201673.620:349): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.800547] audit: type=1104 audit(1598201673.620:350): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.444601] audit: type=1101 audit(1598201678.264:351): pid=7285 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.444740] audit: type=1110 audit(1598201678.264:352): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.446796] audit: type=1105 audit(1598201678.266:353): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.448179] usbcore: deregistering interface driver uvcvideo
[ 1573.603290] audit: type=1106 audit(1598201678.423:354): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.603624] audit: type=1104 audit(1598201678.423:355): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.670049] audit: type=1101 audit(1598201693.491:356): pid=7338 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.670568] audit: type=1110 audit(1598201693.491:357): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.676235] audit: type=1105 audit(1598201693.497:358): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.819108] uvcvideo: Probing generic UVC device 12
[ 1588.820960] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1588.820963] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1588.820965] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1589.163369] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1589.163381] uvcvideo: Found a valid video chain (1 -> 5).
[ 1589.173737] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1589.173744] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1589.173747] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1589.173750] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1589.174044] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input46
[ 1589.174160] uvcvideo: UVC device initialized.
[ 1589.174259] uvcvideo: Probing generic UVC device 2
[ 1589.178177] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1589.178182] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1589.178184] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1589.229823] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1589.229836] uvcvideo: Found a valid video chain (1 -> 5).
[ 1589.235692] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1589.235699] uvcvideo: Failed to initialize the device (-5).
[ 1589.235851] usbcore: registered new interface driver uvcvideo
[ 1589.235853] USB Video Class driver (1.1.1)
[ 1589.237371] audit: type=1106 audit(1598201694.058:359): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1589.237713] audit: type=1104 audit(1598201694.058:360): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1592.550613] usb 1-2: USB disconnect, device number 15
[ 1594.708118] usb 1-2: new high-speed USB device number 16 using xhci_hcd
[ 1594.911245] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1594.911252] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1594.911256] usb 1-2: Product: USB Camera
[ 1594.911259] usb 1-2: Manufacturer: SunplusIT Inc
[ 1594.911262] usb 1-2: SerialNumber: 01.00.00
[ 1594.922029] uvcvideo: Probing generic UVC device 2
[ 1594.926207] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1594.926211] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1594.926212] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1594.977899] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1594.977913] uvcvideo: Found a valid video chain (1 -> 5).
[ 1594.983852] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1594.983860] uvcvideo: Failed to initialize the device (-5).
[ 1595.000229] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1595.003045] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1595.004866] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1595.006113] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 1595.013012] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 1595.015619] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1595.017535] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1595.024920] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1595.062050] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1595.062057] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1779.555636] audit: type=1100 audit(1598201884.377:361): pid=7905 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.556537] audit: type=1101 audit(1598201884.378:362): pid=7905 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.556714] audit: type=1110 audit(1598201884.378:363): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.558312] audit: type=1105 audit(1598201884.380:364): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.559653] usbcore: deregistering interface driver uvcvideo
[ 1779.757491] audit: type=1106 audit(1598201884.579:365): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.757712] audit: type=1104 audit(1598201884.579:366): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.716334] audit: type=1101 audit(1598201896.538:367): pid=7932 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.716503] audit: type=1110 audit(1598201896.538:368): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.718038] audit: type=1105 audit(1598201896.539:369): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.734289] uvcvideo: `0x100,0x4' invalid for parameter `quirks'
[ 1791.756948] audit: type=1106 audit(1598201896.578:370): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.756996] audit: type=1104 audit(1598201896.578:371): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.453448] audit: type=1101 audit(1598201912.275:372): pid=7989 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.454229] audit: type=1110 audit(1598201912.276:373): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.457971] audit: type=1105 audit(1598201912.279:374): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.466199] uvcvideo: unknown parameter 'quircks' ignored
[ 1807.565129] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1807.565133] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1807.565135] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1807.916572] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1807.916577] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1807.916580] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1807.916584] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1807.916891] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input47
[ 1807.921314] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1807.921319] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1807.921321] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1807.978937] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1807.978944] uvcvideo: Failed to initialize the device (-5).
[ 1807.979100] usbcore: registered new interface driver uvcvideo
[ 1807.979102] USB Video Class driver (1.1.1)
[ 1807.980254] audit: type=1106 audit(1598201912.802:375): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.980544] audit: type=1104 audit(1598201912.802:376): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1811.469404] usb 1-2: USB disconnect, device number 16
[ 1813.082144] usb 1-2: new high-speed USB device number 17 using xhci_hcd
[ 1813.285092] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1813.285098] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1813.285102] usb 1-2: Product: USB Camera
[ 1813.285105] usb 1-2: Manufacturer: SunplusIT Inc
[ 1813.285107] usb 1-2: SerialNumber: 01.00.00
[ 1813.299735] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1813.299738] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1813.299740] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1813.357188] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1813.357195] uvcvideo: Failed to initialize the device (-5).
[ 1813.373760] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1813.376681] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1813.378497] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1813.385622] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1813.388573] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1813.390178] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1813.397190] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 1813.400158] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 1813.442570] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1813.442576] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1886.986525] audit: type=1100 audit(1598201991.809:377): pid=8245 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.987716] audit: type=1101 audit(1598201991.810:378): pid=8245 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.987903] audit: type=1110 audit(1598201991.810:379): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.989514] audit: type=1105 audit(1598201991.812:380): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.990895] usbcore: deregistering interface driver uvcvideo
[ 1887.144227] audit: type=1106 audit(1598201991.967:381): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1887.144302] audit: type=1104 audit(1598201991.967:382): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.380425] audit: type=1101 audit(1598202016.203:383): pid=8321 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.381115] audit: type=1110 audit(1598202016.203:384): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.390221] audit: type=1105 audit(1598202016.212:385): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.507439] uvcvideo: Probing generic UVC device 12
[ 1911.509207] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1911.509210] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1911.509212] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1911.851581] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1911.851594] uvcvideo: Found a valid video chain (1 -> 5).
[ 1911.878667] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1911.878675] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1911.878679] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1911.878684] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1911.878983] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input48
[ 1911.879250] uvcvideo: UVC device initialized.
[ 1911.879364] uvcvideo: Probing generic UVC device 2
[ 1911.883294] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1911.883298] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1911.883299] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1911.934970] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1911.934980] uvcvideo: Found a valid video chain (1 -> 5).
[ 1911.941088] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1911.946351] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1911.946359] uvcvideo: Failed to initialize the device (-5).
[ 1911.946491] usbcore: registered new interface driver uvcvideo
[ 1911.946493] USB Video Class driver (1.1.1)
[ 1911.947335] audit: type=1106 audit(1598202016.770:386): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.947428] audit: type=1104 audit(1598202016.770:387): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1917.596335] usb 1-2: USB disconnect, device number 17
[ 1919.265286] usb 1-2: new high-speed USB device number 18 using xhci_hcd
[ 1919.467318] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1919.467324] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1919.467328] usb 1-2: Product: USB Camera
[ 1919.467331] usb 1-2: Manufacturer: SunplusIT Inc
[ 1919.467334] usb 1-2: SerialNumber: 01.00.00
[ 1919.477951] uvcvideo: Probing generic UVC device 2
[ 1919.482209] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1919.482212] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1919.482214] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1919.533784] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1919.533797] uvcvideo: Found a valid video chain (1 -> 5).
[ 1919.539663] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1919.545096] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1919.545103] uvcvideo: Failed to initialize the device (-5).
[ 1919.561702] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1919.564346] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1919.566075] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1919.573348] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1919.576343] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1919.577931] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1919.579211] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1919.585924] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1919.623116] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1919.623139] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1942.548261] audit: type=1101 audit(1598202047.371:388): pid=8452 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.548783] audit: type=1110 audit(1598202047.371:389): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.554436] audit: type=1105 audit(1598202047.377:390): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.558742] usbcore: deregistering interface driver uvcvideo
[ 1942.724229] audit: type=1106 audit(1598202047.547:391): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.724475] audit: type=1104 audit(1598202047.547:392): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1944.441166] usb 1-2: USB disconnect, device number 18
[ 1953.002003] i915 0000:00:02.0: HDMI-A-1: EDID is invalid:
[ 1953.002009] 	[00] BAD  00 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff
[ 1953.002011] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002013] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002015] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002016] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002018] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002019] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002021] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1956.591480] audit: type=1130 audit(1598202061.415:393): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=autorandr comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[ 1956.591488] audit: type=1131 audit(1598202061.415:394): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=autorandr comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[ 2206.525105] audit: type=1100 audit(1598202311.351:395): pid=9410 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.528077] audit: type=1101 audit(1598202311.354:396): pid=9410 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.528819] audit: type=1110 audit(1598202311.355:397): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.536972] audit: type=1105 audit(1598202311.363:398): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.540645] audit: type=1106 audit(1598202311.366:399): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.540732] audit: type=1104 audit(1598202311.366:400): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2226.944678] audit: type=1100 audit(1598202331.771:401): pid=9455 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.945690] audit: type=1101 audit(1598202331.772:402): pid=9455 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.945865] audit: type=1110 audit(1598202331.772:403): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.947455] audit: type=1105 audit(1598202331.773:404): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2227.060438] uvcvideo: Probing generic UVC device 12
[ 2227.062326] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2227.062329] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 2227.062331] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2227.405072] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2227.405076] uvcvideo: Found a valid video chain (1 -> 5).
[ 2227.431511] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2227.431513] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2227.431515] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2227.431517] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2227.431696] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input49
[ 2227.431788] uvcvideo: UVC device initialized.
[ 2227.431848] usbcore: registered new interface driver uvcvideo
[ 2227.431849] USB Video Class driver (1.1.1)
[ 2227.432590] audit: type=1106 audit(1598202332.259:405): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2227.432692] audit: type=1104 audit(1598202332.259:406): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2232.566673] usb 1-2: new high-speed USB device number 19 using xhci_hcd
[ 2232.769926] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2232.769932] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2232.769936] usb 1-2: Product: USB Camera
[ 2232.769939] usb 1-2: Manufacturer: SunplusIT Inc
[ 2232.769941] usb 1-2: SerialNumber: 01.00.00
[ 2232.780344] uvcvideo: Probing generic UVC device 2
[ 2232.784715] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2232.784718] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 2232.784719] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2232.836370] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2232.836382] uvcvideo: Found a valid video chain (1 -> 5).
[ 2232.842469] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2232.847757] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2232.847766] uvcvideo: Failed to initialize the device (-5).
[ 2232.864234] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2232.871764] usb 1-2: 3:2: cannot get freq at ep 0x86
[ 2232.874701] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2232.876254] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 2232.877720] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2232.884414] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2232.887436] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2232.889232] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2232.927085] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2232.927092] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2254.153930] audit: type=1101 audit(1598202358.979:407): pid=9555 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.154220] audit: type=1110 audit(1598202358.979:408): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.156222] audit: type=1105 audit(1598202358.981:409): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.157629] usbcore: deregistering interface driver uvcvideo
[ 2254.316540] audit: type=1106 audit(1598202359.142:410): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.316788] audit: type=1104 audit(1598202359.142:411): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.358529] audit: type=1100 audit(1598202640.185:412): pid=10377 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.359464] audit: type=1101 audit(1598202640.186:413): pid=10377 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.359686] audit: type=1110 audit(1598202640.187:414): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.362008] audit: type=1105 audit(1598202640.189:415): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.478733] uvcvideo: Probing generic UVC device 12
[ 2535.480442] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2535.480443] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2535.480444] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2535.823144] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2535.823150] uvcvideo: Found a valid video chain (1 -> 5).
[ 2535.850009] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2535.850015] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2535.850019] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2535.850022] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2535.850350] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input50
[ 2535.850610] uvcvideo: UVC device initialized.
[ 2535.850749] uvcvideo: Probing generic UVC device 2
[ 2535.854807] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2535.854812] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2535.854815] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2535.906307] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2535.906319] uvcvideo: Found a valid video chain (1 -> 5).
[ 2535.912143] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2535.917528] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2535.917536] uvcvideo: Failed to initialize the device (-5).
[ 2535.917661] usbcore: registered new interface driver uvcvideo
[ 2535.917663] USB Video Class driver (1.1.1)
[ 2535.918967] audit: type=1106 audit(1598202640.746:416): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.919295] audit: type=1104 audit(1598202640.746:417): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2538.314345] usb 1-2: USB disconnect, device number 19
[ 2540.573750] usb 1-2: new high-speed USB device number 20 using xhci_hcd
[ 2540.776734] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2540.776737] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2540.776739] usb 1-2: Product: USB Camera
[ 2540.776741] usb 1-2: Manufacturer: SunplusIT Inc
[ 2540.776742] usb 1-2: SerialNumber: 01.00.00
[ 2540.788485] uvcvideo: Probing generic UVC device 2
[ 2540.792707] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2540.792710] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2540.792712] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2540.844386] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2540.844398] uvcvideo: Found a valid video chain (1 -> 5).
[ 2540.850330] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2540.855590] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2540.855597] uvcvideo: Failed to initialize the device (-5).
[ 2540.872044] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2540.879686] usb 1-2: 3:2: cannot get freq at ep 0x86
[ 2540.882688] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2540.884322] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 2540.885816] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2540.892519] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2540.895504] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2540.897132] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2540.934715] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2540.934721] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2551.288523] audit: type=1101 audit(1598202656.116:418): pid=10448 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.288718] audit: type=1110 audit(1598202656.116:419): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.291110] audit: type=1105 audit(1598202656.118:420): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.292404] usbcore: deregistering interface driver uvcvideo
[ 2551.452626] audit: type=1106 audit(1598202656.280:421): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.452827] audit: type=1104 audit(1598202656.280:422): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2553.234834] usb 1-2: USB disconnect, device number 20
[ 2565.800203] audit: type=1101 audit(1598202670.626:423): pid=10510 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.800432] audit: type=1110 audit(1598202670.627:424): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.802958] audit: type=1105 audit(1598202670.629:425): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.916480] uvcvideo: Probing generic UVC device 12
[ 2565.918500] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2565.918503] uvcvideo: Forcing device quirks to 0xa by module parameter for testing purpose.
[ 2565.918504] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2566.261358] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2566.261397] uvcvideo: Found a valid video chain (1 -> 5).
[ 2566.287932] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2566.287937] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2566.287940] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2566.287943] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2566.288035] uvcvideo: UVC device initialized.
[ 2566.288136] usbcore: registered new interface driver uvcvideo
[ 2566.288138] USB Video Class driver (1.1.1)
[ 2566.289388] audit: type=1106 audit(1598202671.115:426): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2566.289629] audit: type=1104 audit(1598202671.116:427): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2573.869401] usb 1-2: new high-speed USB device number 21 using xhci_hcd
[ 2574.071272] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2574.071278] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2574.071282] usb 1-2: Product: USB Camera
[ 2574.071285] usb 1-2: Manufacturer: SunplusIT Inc
[ 2574.071287] usb 1-2: SerialNumber: 01.00.00
[ 2574.082035] uvcvideo: Probing generic UVC device 2
[ 2574.086230] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2574.086234] uvcvideo: Forcing device quirks to 0xa by module parameter for testing purpose.
[ 2574.086235] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2574.137669] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2574.137682] uvcvideo: Found a valid video chain (1 -> 5).
[ 2574.143752] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2574.149230] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2574.149238] uvcvideo: Failed to initialize the device (-5).
[ 2574.165755] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2574.168543] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2574.170443] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2574.177508] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2574.180258] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2574.181962] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2574.189040] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 2574.191818] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2574.231053] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2574.231059] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2585.096121] audit: type=1101 audit(1598202689.922:428): pid=10598 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.096247] audit: type=1110 audit(1598202689.922:429): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.097778] audit: type=1105 audit(1598202689.924:430): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.099147] usbcore: deregistering interface driver uvcvideo
[ 2585.260619] audit: type=1106 audit(1598202690.087:431): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.260843] audit: type=1104 audit(1598202690.087:432): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2586.580680] usb 1-2: USB disconnect, device number 21
[ 2600.904230] audit: type=1101 audit(1598202705.731:433): pid=10644 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2600.904393] audit: type=1110 audit(1598202705.731:434): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2600.905868] audit: type=1105 audit(1598202705.732:435): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2601.019526] uvcvideo: Probing generic UVC device 12
[ 2601.021424] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2601.021427] uvcvideo: Forcing device quirks to 0x50 by module parameter for testing purpose.
[ 2601.021429] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2601.364242] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2601.364255] uvcvideo: Found a valid video chain (1 -> 5).
[ 2601.390855] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2601.390861] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2601.390864] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2601.390867] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2601.391284] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input51
[ 2601.391475] uvcvideo: UVC device initialized.
[ 2601.391607] usbcore: registered new interface driver uvcvideo
[ 2601.391609] USB Video Class driver (1.1.1)
[ 2601.393118] audit: type=1106 audit(1598202706.219:436): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2601.393512] audit: type=1104 audit(1598202706.220:437): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2604.077476] usb 1-2: new high-speed USB device number 22 using xhci_hcd
[ 2604.278935] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2604.278941] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2604.278945] usb 1-2: Product: USB Camera
[ 2604.278948] usb 1-2: Manufacturer: SunplusIT Inc
[ 2604.278950] usb 1-2: SerialNumber: 01.00.00
[ 2604.289717] uvcvideo: Probing generic UVC device 2
[ 2604.294071] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2604.294075] uvcvideo: Forcing device quirks to 0x50 by module parameter for testing purpose.
[ 2604.294076] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2604.345749] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2604.345761] uvcvideo: Found a valid video chain (1 -> 5).
[ 2604.351693] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2604.357004] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2604.357011] uvcvideo: Failed to initialize the device (-5).
[ 2604.373679] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2604.376409] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2604.378247] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2604.385441] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2604.388299] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2604.415678] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2604.464250] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2604.464254] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2611.448079] audit: type=1101 audit(1598202716.274:438): pid=10691 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.448287] audit: type=1110 audit(1598202716.275:439): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.449859] audit: type=1105 audit(1598202716.276:440): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.451219] usbcore: deregistering interface driver uvcvideo
[ 2611.612099] audit: type=1106 audit(1598202716.438:441): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.612273] audit: type=1104 audit(1598202716.439:442): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2614.633781] usb 1-2: USB disconnect, device number 22
[ 2625.528598] audit: type=1101 audit(1598202730.355:443): pid=10757 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.528808] audit: type=1110 audit(1598202730.355:444): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.530760] audit: type=1105 audit(1598202730.357:445): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.644318] uvcvideo: Probing generic UVC device 12
[ 2625.646296] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2625.646299] uvcvideo: Forcing device quirks to 0xc8 by module parameter for testing purpose.
[ 2625.646300] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2625.987507] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2625.987521] uvcvideo: Found a valid video chain (1 -> 5).
[ 2626.014606] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2626.014612] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2626.014615] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2626.014618] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2626.014833] uvcvideo: UVC device initialized.
[ 2626.014952] usbcore: registered new interface driver uvcvideo
[ 2626.014955] USB Video Class driver (1.1.1)
[ 2626.016249] audit: type=1106 audit(1598202730.843:446): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2626.016590] audit: type=1104 audit(1598202730.843:447): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2629.597254] usb 1-2: new high-speed USB device number 23 using xhci_hcd
[ 2629.800245] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2629.800252] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2629.800255] usb 1-2: Product: USB Camera
[ 2629.800259] usb 1-2: Manufacturer: SunplusIT Inc
[ 2629.800261] usb 1-2: SerialNumber: 01.00.00
[ 2629.811053] uvcvideo: Probing generic UVC device 2
[ 2629.815210] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2629.815213] uvcvideo: Forcing device quirks to 0xc8 by module parameter for testing purpose.
[ 2629.815215] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2629.866980] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2629.866992] uvcvideo: Found a valid video chain (1 -> 5).
[ 2629.872948] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2629.878170] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2629.878178] uvcvideo: Failed to initialize the device (-5).
[ 2629.894823] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2629.897476] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2629.899440] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2629.906502] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2629.909306] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2629.911138] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2629.918374] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 2629.921284] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2629.960766] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2629.960773] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2640.040598] usb 1-2: USB disconnect, device number 23
[ 2642.426789] audit: type=1101 audit(1598202747.253:448): pid=10830 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.426942] audit: type=1110 audit(1598202747.253:449): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.428593] audit: type=1105 audit(1598202747.255:450): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.430067] usbcore: deregistering interface driver uvcvideo
[ 2642.572310] audit: type=1106 audit(1598202747.399:451): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.572562] audit: type=1104 audit(1598202747.399:452): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.023952] audit: type=1101 audit(1598202754.850:453): pid=10875 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.024134] audit: type=1110 audit(1598202754.851:454): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.025748] audit: type=1105 audit(1598202754.852:455): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.139148] uvcvideo: Probing generic UVC device 12
[ 2650.141153] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2650.141157] uvcvideo: Forcing device quirks to 0x64 by module parameter for testing purpose.
[ 2650.141159] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2650.483999] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2650.484006] uvcvideo: Found a valid video chain (1 -> 5).
[ 2650.511038] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2650.511044] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2650.511047] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2650.511050] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2650.511389] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input52
[ 2650.511590] uvcvideo: UVC device initialized.
[ 2650.511703] usbcore: registered new interface driver uvcvideo
[ 2650.511706] USB Video Class driver (1.1.1)
[ 2650.513484] audit: type=1106 audit(1598202755.340:456): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.513831] audit: type=1104 audit(1598202755.340:457): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2654.637171] usb 1-2: new high-speed USB device number 24 using xhci_hcd
[ 2654.840318] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2654.840325] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2654.840329] usb 1-2: Product: USB Camera
[ 2654.840332] usb 1-2: Manufacturer: SunplusIT Inc
[ 2654.840335] usb 1-2: SerialNumber: 01.00.00
[ 2654.851173] uvcvideo: Probing generic UVC device 2
[ 2654.855434] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2654.855438] uvcvideo: Forcing device quirks to 0x64 by module parameter for testing purpose.
[ 2654.855439] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2654.907078] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2654.907091] uvcvideo: Found a valid video chain (1 -> 5).
[ 2654.912989] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2654.918271] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2654.918279] uvcvideo: Failed to initialize the device (-5).
[ 2654.935019] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2654.937759] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2654.939442] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2654.946577] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2654.949424] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2654.951120] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2654.952372] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2654.959153] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 2654.996452] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2654.996458] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 3462.270622] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 3462.270635] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 3462.270641] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 3462.270646] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 3462.270653] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 3462.270657] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000001/0000e000
[ 3462.270660] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 3462.270664] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 3679.772164] audit: type=1100 audit(1598203784.606:458): pid=14495 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.773206] audit: type=1101 audit(1598203784.607:459): pid=14495 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.773440] audit: type=1110 audit(1598203784.607:460): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.775843] audit: type=1105 audit(1598203784.610:461): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.777229] usbcore: deregistering interface driver uvcvideo
[ 3679.949054] audit: type=1106 audit(1598203784.783:462): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.949141] audit: type=1104 audit(1598203784.783:463): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.876694] audit: type=1101 audit(1598203789.711:464): pid=14515 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.876843] audit: type=1110 audit(1598203789.711:465): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.878417] audit: type=1105 audit(1598203789.712:466): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.992970] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 3685.361606] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 3685.361607] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 3685.361608] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 3685.361609] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 3685.361722] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input53
[ 3685.365279] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 3685.422765] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 3685.428178] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 3685.428180] uvcvideo: Failed to initialize the device (-5).
[ 3685.428226] usbcore: registered new interface driver uvcvideo
[ 3685.428226] USB Video Class driver (1.1.1)
[ 3685.428710] audit: type=1106 audit(1598203790.263:467): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3685.428830] audit: type=1104 audit(1598203790.263:468): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3943.426606] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 3943.426612] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 3943.426614] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 3943.426624] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 3943.426629] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 3943.426631] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 3943.426633] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 3943.426634] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 3943.426636] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 3957.618799] audit: type=1100 audit(1598204062.455:469): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=failed'
[ 3961.569642] audit: type=1100 audit(1598204066.405:470): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.570288] audit: type=1101 audit(1598204066.406:471): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.570520] audit: type=1110 audit(1598204066.406:472): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.572856] audit: type=1105 audit(1598204066.409:473): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.574253] usbcore: deregistering interface driver uvcvideo
[ 3961.731155] audit: type=1106 audit(1598204066.567:474): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.731275] audit: type=1104 audit(1598204066.567:475): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.842264] audit: type=1101 audit(1598204083.678:476): pid=15484 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.842465] audit: type=1110 audit(1598204083.678:477): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.845014] audit: type=1105 audit(1598204083.681:478): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.958278] uvcvideo: Probing generic UVC device 12
[ 3978.960038] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 3979.301679] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 3979.301683] uvcvideo: Found a valid video chain (1 -> 5).
[ 3979.328145] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 3979.328147] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 3979.328148] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 3979.328149] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 3979.328290] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input54
[ 3979.328355] uvcvideo: UVC device initialized.
[ 3979.328412] uvcvideo: Probing generic UVC device 2
[ 3979.332246] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 3979.383646] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 3979.383650] uvcvideo: Found a valid video chain (1 -> 5).
[ 3979.389706] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 3979.395099] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 3979.395101] uvcvideo: Failed to initialize the device (-5).
[ 3979.395167] usbcore: registered new interface driver uvcvideo
[ 3979.395168] USB Video Class driver (1.1.1)
[ 3979.395675] audit: type=1106 audit(1598204084.232:479): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3979.395741] audit: type=1104 audit(1598204084.232:480): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4012.811522] audit: type=1100 audit(1598204117.647:481): pid=15537 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4027.211803] audit: type=1100 audit(1598204132.047:482): pid=15622 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4042.947651] audit: type=1100 audit(1598204147.783:483): pid=15645 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4086.097120] audit: type=1100 audit(1598204190.934:484): pid=15836 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.098185] audit: type=1101 audit(1598204190.935:485): pid=15836 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.098412] audit: type=1110 audit(1598204190.935:486): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.100854] audit: type=1105 audit(1598204190.938:487): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4114.050265] audit: type=1108 audit(1598204218.887:488): pid=15840 uid=0 auid=1000 ses=1 msg='op=PAM:chauthtok grantors=pam_unix acct="root" exe="/usr/bin/passwd" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4114.050795] audit: type=1106 audit(1598204218.888:489): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4114.050877] audit: type=1104 audit(1598204218.888:490): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4121.860939] audit: type=1100 audit(1598204226.698:491): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.860998] audit: type=1101 audit(1598204226.698:492): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.861301] audit: type=1103 audit(1598204226.698:493): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.861369] audit: type=1105 audit(1598204226.698:494): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4152.952122] usb 1-2: USB disconnect, device number 24
[ 4154.859298] usb 1-2: new high-speed USB device number 25 using xhci_hcd
[ 4155.060874] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4155.060875] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4155.060876] usb 1-2: Product: USB Camera
[ 4155.060877] usb 1-2: Manufacturer: SunplusIT Inc
[ 4155.060878] usb 1-2: SerialNumber: 01.00.00
[ 4155.075781] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4155.133226] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4155.138629] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4155.138631] uvcvideo: Failed to initialize the device (-5).
[ 4155.155061] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4155.157932] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4155.159735] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4155.161151] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4155.167952] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4155.170747] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4155.172419] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4155.173833] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 4155.213817] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4155.213818] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4155.261874] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 4177.308443] usbcore: deregistering interface driver uvcvideo
[ 4191.981410] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4191.981411] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4191.981412] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4192.331444] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4192.331445] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4192.331446] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4192.331447] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4192.331556] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input55
[ 4192.335131] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4192.335132] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4192.335132] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4192.392561] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4192.392564] uvcvideo: Failed to initialize the device (-5).
[ 4192.392632] usbcore: registered new interface driver uvcvideo
[ 4192.392633] USB Video Class driver (1.1.1)
[ 4195.971015] usb 1-2: USB disconnect, device number 25
[ 4197.466994] usb 1-2: new high-speed USB device number 26 using xhci_hcd
[ 4197.668618] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4197.668620] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4197.668620] usb 1-2: Product: USB Camera
[ 4197.668621] usb 1-2: Manufacturer: SunplusIT Inc
[ 4197.668622] usb 1-2: SerialNumber: 01.00.00
[ 4197.683645] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4197.683646] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4197.683665] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4197.741033] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4197.741035] uvcvideo: Failed to initialize the device (-5).
[ 4197.757452] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4197.760303] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4197.762081] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4197.763499] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4197.770188] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4197.773089] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4197.774830] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4197.781874] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4197.819063] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4197.819065] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4199.033242] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 4199.033249] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 4199.033251] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 4199.033252] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 4199.033257] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 4199.033258] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 4199.033259] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 4199.033260] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 4199.033261] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 4218.876218] usbcore: deregistering interface driver uvcvideo
[ 4222.572656] usb 1-2: USB disconnect, device number 26
[ 4249.843486] uvcvideo: unknown parameter 'quircks' ignored
[ 4249.942141] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4250.308695] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4250.308697] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4250.308698] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4250.308698] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4250.308838] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input56
[ 4250.308987] usbcore: registered new interface driver uvcvideo
[ 4250.308988] USB Video Class driver (1.1.1)
[ 4254.840857] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 4254.840863] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 4254.840865] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 4254.840867] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 4254.840870] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 4254.840871] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 4254.840872] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 4254.840873] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 4254.840874] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 4258.090558] usb 1-2: new high-speed USB device number 27 using xhci_hcd
[ 4258.291872] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4258.291873] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4258.291874] usb 1-2: Product: USB Camera
[ 4258.291875] usb 1-2: Manufacturer: SunplusIT Inc
[ 4258.291876] usb 1-2: SerialNumber: 01.00.00
[ 4258.306735] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4258.364188] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4258.369638] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4258.369640] uvcvideo: Failed to initialize the device (-5).
[ 4258.386045] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4258.388909] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4258.390732] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4258.392135] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4258.398835] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4258.401569] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4258.403352] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4258.410364] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4258.447541] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4258.447542] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4373.688400] usb 1-2: USB disconnect, device number 27
[ 4389.377875] usb 1-2: new high-speed USB device number 28 using xhci_hcd
[ 4389.581226] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4389.581232] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4389.581235] usb 1-2: Product: USB Camera
[ 4389.581237] usb 1-2: Manufacturer: SunplusIT Inc
[ 4389.581240] usb 1-2: SerialNumber: 01.00.00
[ 4389.594370] uvcvideo: Probing generic UVC device 2
[ 4389.598536] uvcvideo: Found format MJPEG.
[ 4389.598540] uvcvideo: - 1920x1080 (30.0 fps)
[ 4389.598543] uvcvideo: - 640x480 (30.0 fps)
[ 4389.598545] uvcvideo: - 320x240 (30.0 fps)
[ 4389.598546] uvcvideo: - 800x600 (30.0 fps)
[ 4389.598548] uvcvideo: - 1280x720 (30.0 fps)
[ 4389.598551] uvcvideo: Found format YUV 4:2:2 (YUYV).
[ 4389.598553] uvcvideo: - 1920x1080 (4.0 fps)
[ 4389.598555] uvcvideo: - 640x480 (15.0 fps)
[ 4389.598556] uvcvideo: - 320x240 (30.0 fps)
[ 4389.598558] uvcvideo: - 800x600 (20.0 fps)
[ 4389.598560] uvcvideo: - 1280x720 (10.0 fps)
[ 4389.598568] uvcvideo: Found a Status endpoint (addr 87).
[ 4389.598570] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4389.602696] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/2 to device 2 entity 1
[ 4389.602703] uvcvideo: Adding mapping 'Exposure, Auto' to control 00000000-0000-0000-0000-000000000001/2.
[ 4389.607070] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/4 to device 2 entity 1
[ 4389.607076] uvcvideo: Adding mapping 'Exposure (Absolute)' to control 00000000-0000-0000-0000-000000000001/4.
[ 4389.611508] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/2 to device 2 entity 2
[ 4389.611514] uvcvideo: Adding mapping 'Brightness' to control 00000000-0000-0000-0000-000000000101/2.
[ 4389.615798] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/3 to device 2 entity 2
[ 4389.615804] uvcvideo: Adding mapping 'Contrast' to control 00000000-0000-0000-0000-000000000101/3.
[ 4389.619902] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/6 to device 2 entity 2
[ 4389.619908] uvcvideo: Adding mapping 'Hue' to control 00000000-0000-0000-0000-000000000101/6.
[ 4389.624255] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/7 to device 2 entity 2
[ 4389.624262] uvcvideo: Adding mapping 'Saturation' to control 00000000-0000-0000-0000-000000000101/7.
[ 4389.628617] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/8 to device 2 entity 2
[ 4389.628623] uvcvideo: Adding mapping 'Sharpness' to control 00000000-0000-0000-0000-000000000101/8.
[ 4389.632999] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/9 to device 2 entity 2
[ 4389.633006] uvcvideo: Adding mapping 'Gamma' to control 00000000-0000-0000-0000-000000000101/9.
[ 4389.637270] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/10 to device 2 entity 2
[ 4389.637277] uvcvideo: Adding mapping 'White Balance Temperature' to control 00000000-0000-0000-0000-000000000101/10.
[ 4389.641605] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/1 to device 2 entity 2
[ 4389.641610] uvcvideo: Adding mapping 'Backlight Compensation' to control 00000000-0000-0000-0000-000000000101/1.
[ 4389.645797] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/5 to device 2 entity 2
[ 4389.645803] uvcvideo: Adding mapping 'Power Line Frequency' to control 00000000-0000-0000-0000-000000000101/5.
[ 4389.650069] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/11 to device 2 entity 2
[ 4389.650076] uvcvideo: Adding mapping 'White Balance Temperature, Auto' to control 00000000-0000-0000-0000-000000000101/11.
[ 4389.650083] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 4389.650092] uvcvideo: Found a valid video chain (1 -> 5).
[ 4389.656219] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4389.661652] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4389.661659] uvcvideo: Failed to initialize the device (-5).
[ 4389.678205] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4389.680720] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4389.682510] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4389.684022] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4389.690784] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4389.693716] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4389.695331] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4389.702366] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4389.739633] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4389.739639] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1

--------------CF06069D7EE21FAEE285AA8B
Content-Type: text/x-log; charset=UTF-8;
 name="dmesg_q2.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="dmesg_q2.log"

[  799.704157] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  799.709595] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  799.709603] uvcvideo: Failed to initialize the device (-5).
[  799.726139] usb 1-2: 3:1: cannot get freq at ep 0x86
[  799.728766] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[  799.730594] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[  799.737764] usb 1-2: 3:4: cannot get freq at ep 0x86
[  799.740761] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[  799.742400] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[  799.743684] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[  799.750375] usb 1-2: 3:8: cannot get freq at ep 0x86
[  799.787504] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[  799.787510] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[  818.642775] audit: type=1100 audit(1598200923.454:271): pid=4815 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.645581] audit: type=1101 audit(1598200923.457:272): pid=4815 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.646075] audit: type=1110 audit(1598200923.457:273): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.651683] audit: type=1105 audit(1598200923.463:274): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.656142] usbcore: deregistering interface driver uvcvideo
[  818.832684] audit: type=1106 audit(1598200923.644:275): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.832898] audit: type=1104 audit(1598200923.644:276): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  822.145595] usb 1-2: USB disconnect, device number 10
[  823.621657] usb 1-2: new high-speed USB device number 11 using xhci_hcd
[  823.824285] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[  823.824293] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[  823.824298] usb 1-2: Product: USB Camera
[  823.824302] usb 1-2: Manufacturer: SunplusIT Inc
[  823.824306] usb 1-2: SerialNumber: 01.00.00
[  823.851292] usb 1-2: 3:1: cannot get freq at ep 0x86
[  823.854001] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[  823.855871] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[  823.862995] usb 1-2: 3:4: cannot get freq at ep 0x86
[  823.865926] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[  823.867616] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[  823.868901] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[  823.875588] usb 1-2: 3:8: cannot get freq at ep 0x86
[  823.912774] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[  823.912780] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[  824.057414] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[  824.427323] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[  824.427329] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[  824.427332] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[  824.427335] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[  824.427569] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input42
[  824.431901] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[  824.489283] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  824.494749] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  824.494756] uvcvideo: Failed to initialize the device (-5).
[  824.494900] usbcore: registered new interface driver uvcvideo
[  824.494902] USB Video Class driver (1.1.1)
[  908.325138] audit: type=1130 audit(1598201013.137:277): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-clean comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[  908.325167] audit: type=1131 audit(1598201013.137:278): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-clean comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[  922.443450] audit: type=1100 audit(1598201027.255:279): pid=5152 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  922.446032] audit: type=1101 audit(1598201027.258:280): pid=5152 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.522894] audit: type=1100 audit(1598201051.335:281): pid=5201 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.525901] audit: type=1101 audit(1598201051.338:282): pid=5201 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.526628] audit: type=1110 audit(1598201051.339:283): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.535594] audit: type=1105 audit(1598201051.348:284): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.539269] audit: type=1106 audit(1598201051.351:285): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.539419] audit: type=1104 audit(1598201051.351:286): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  997.375766] audit: type=1100 audit(1598201102.187:287): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[  998.248852] i915 0000:00:02.0: [drm] *ERROR* Atomic update failure on pipe A (start=59711 end=59712) time 12640 us, min 1073, max 1079, scanline start 1063, end 791
[ 1002.658616] audit: type=1100 audit(1598201107.470:288): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.660322] audit: type=1101 audit(1598201107.472:289): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.660881] audit: type=1110 audit(1598201107.472:290): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.666171] audit: type=1105 audit(1598201107.478:291): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.670723] usbcore: deregistering interface driver uvcvideo
[ 1002.851220] audit: type=1106 audit(1598201107.663:292): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.851453] audit: type=1104 audit(1598201107.663:293): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.088751] audit: type=1100 audit(1598201122.902:294): pid=5421 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.089697] audit: type=1101 audit(1598201122.903:295): pid=5421 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.089842] audit: type=1110 audit(1598201122.903:296): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.091346] audit: type=1105 audit(1598201122.904:297): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.206636] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1018.206637] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1018.206638] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1018.557874] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1018.557880] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1018.557883] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1018.557887] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1018.558211] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input43
[ 1018.562124] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1018.562129] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1018.562131] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1018.619498] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1018.619504] uvcvideo: Failed to initialize the device (-5).
[ 1018.619624] usbcore: registered new interface driver uvcvideo
[ 1018.619626] USB Video Class driver (1.1.1)
[ 1018.620796] audit: type=1106 audit(1598201123.434:298): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.621114] audit: type=1104 audit(1598201123.434:299): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1022.033789] usb 1-2: USB disconnect, device number 11
[ 1023.851823] usb 1-2: new high-speed USB device number 12 using xhci_hcd
[ 1024.054451] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1024.054458] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1024.054462] usb 1-2: Product: USB Camera
[ 1024.054465] usb 1-2: Manufacturer: SunplusIT Inc
[ 1024.054468] usb 1-2: SerialNumber: 01.00.00
[ 1024.069395] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1024.069399] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1024.069400] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1024.126832] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1024.126839] uvcvideo: Failed to initialize the device (-5).
[ 1024.143170] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1024.145982] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1024.147936] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1024.155285] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1024.158145] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1024.159784] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1024.161073] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1024.167847] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1024.204959] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1024.204965] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1256.806191] audit: type=1100 audit(1598201361.623:300): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[ 1260.297018] audit: type=1100 audit(1598201365.114:301): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.297646] audit: type=1101 audit(1598201365.114:302): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.297844] audit: type=1110 audit(1598201365.115:303): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.299252] audit: type=1105 audit(1598201365.116:304): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.300603] usbcore: deregistering interface driver uvcvideo
[ 1260.467019] audit: type=1106 audit(1598201365.284:305): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.467231] audit: type=1104 audit(1598201365.284:306): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.406370] audit: type=1101 audit(1598201376.223:307): pid=6252 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.406506] audit: type=1110 audit(1598201376.223:308): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.408127] audit: type=1105 audit(1598201376.225:309): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.521836] uvcvideo: Probing generic UVC device 12
[ 1271.523653] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1271.523657] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1271.523659] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1271.866212] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1271.866225] uvcvideo: Found a valid video chain (1 -> 5).
[ 1271.876591] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1271.876596] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1271.876599] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1271.876602] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1271.876875] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input44
[ 1271.877092] uvcvideo: UVC device initialized.
[ 1271.877193] uvcvideo: Probing generic UVC device 2
[ 1271.881123] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1271.881127] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1271.881129] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1271.932439] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1271.932449] uvcvideo: Found a valid video chain (1 -> 5).
[ 1271.938403] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1271.938410] uvcvideo: Failed to initialize the device (-5).
[ 1271.938633] usbcore: registered new interface driver uvcvideo
[ 1271.938636] USB Video Class driver (1.1.1)
[ 1271.940021] audit: type=1106 audit(1598201376.757:310): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.940319] audit: type=1104 audit(1598201376.757:311): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1276.199409] usb 1-2: USB disconnect, device number 12
[ 1277.871739] usb 1-2: new high-speed USB device number 13 using xhci_hcd
[ 1278.073992] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1278.073998] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1278.074002] usb 1-2: Product: USB Camera
[ 1278.074005] usb 1-2: Manufacturer: SunplusIT Inc
[ 1278.074008] usb 1-2: SerialNumber: 01.00.00
[ 1278.085102] uvcvideo: Probing generic UVC device 2
[ 1278.089325] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1278.089328] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1278.089330] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1278.140788] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1278.140800] uvcvideo: Found a valid video chain (1 -> 5).
[ 1278.146860] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1278.146868] uvcvideo: Failed to initialize the device (-5).
[ 1278.163286] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1278.166086] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1278.167998] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1278.175120] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1278.178048] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1278.179805] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1278.186878] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 1278.189680] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 1278.228987] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1278.228993] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1415.310252] audit: type=1100 audit(1598201520.129:312): pid=6664 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[ 1425.852323] audit: type=1100 audit(1598201530.671:313): pid=6681 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.853228] audit: type=1101 audit(1598201530.672:314): pid=6681 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.853373] audit: type=1110 audit(1598201530.672:315): pid=6681 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.854956] audit: type=1105 audit(1598201530.674:316): pid=6681 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1428.496822] audit: type=1334 audit(1598201533.316:317): prog-id=4 op=UNLOAD
[ 1428.496828] audit: type=1334 audit(1598201533.316:318): prog-id=3 op=UNLOAD
[ 1428.499501] audit: type=1334 audit(1598201533.318:319): prog-id=8 op=UNLOAD
[ 1428.499507] audit: type=1334 audit(1598201533.318:320): prog-id=7 op=UNLOAD
[ 1428.501424] audit: type=1334 audit(1598201533.320:321): prog-id=6 op=UNLOAD
[ 1428.501429] audit: type=1334 audit(1598201533.320:322): prog-id=5 op=UNLOAD
[ 1462.743824] usb 1-2: USB disconnect, device number 13
[ 1464.069284] usb 1-2: new high-speed USB device number 14 using xhci_hcd
[ 1464.272322] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1464.272328] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1464.272331] usb 1-2: Product: USB Camera
[ 1464.272334] usb 1-2: Manufacturer: SunplusIT Inc
[ 1464.272337] usb 1-2: SerialNumber: 01.00.00
[ 1464.299939] uvcvideo: Probing generic UVC device 2
[ 1464.303483] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1464.303484] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1464.303485] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1464.355582] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1464.355589] uvcvideo: Found a valid video chain (1 -> 5).
[ 1464.361499] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1464.361504] uvcvideo: Failed to initialize the device (-5).
[ 1464.378264] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1464.380978] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1464.382640] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1464.389752] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1464.392440] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1464.394309] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1464.395633] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1464.402426] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1464.439571] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1464.439578] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1503.534626] kauditd_printk_skb: 12 callbacks suppressed
[ 1503.534629] audit: type=1100 audit(1598201608.354:335): pid=7040 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.537349] audit: type=1101 audit(1598201608.357:336): pid=7040 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.537871] audit: type=1110 audit(1598201608.358:337): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.542361] audit: type=1105 audit(1598201608.362:338): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.543677] usbcore: deregistering interface driver uvcvideo
[ 1503.711631] audit: type=1106 audit(1598201608.531:339): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.711711] audit: type=1104 audit(1598201608.531:340): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.621971] audit: type=1101 audit(1598201636.442:341): pid=7139 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.622506] audit: type=1110 audit(1598201636.442:342): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.625779] audit: type=1105 audit(1598201636.446:343): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.738651] uvcvideo: Probing generic UVC device 12
[ 1531.740531] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1531.740535] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1531.740537] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1532.083397] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1532.083409] uvcvideo: Found a valid video chain (1 -> 5).
[ 1532.110342] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1532.110347] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1532.110350] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1532.110353] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1532.110726] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input45
[ 1532.110926] uvcvideo: UVC device initialized.
[ 1532.111048] uvcvideo: Probing generic UVC device 2
[ 1532.115229] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1532.115233] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1532.115236] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1532.166580] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1532.166594] uvcvideo: Found a valid video chain (1 -> 5).
[ 1532.172577] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1532.178040] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1532.178048] uvcvideo: Failed to initialize the device (-5).
[ 1532.178190] usbcore: registered new interface driver uvcvideo
[ 1532.178192] USB Video Class driver (1.1.1)
[ 1532.179368] audit: type=1106 audit(1598201636.999:344): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1532.179640] audit: type=1104 audit(1598201637.000:345): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1535.293415] usb 1-2: USB disconnect, device number 14
[ 1536.180517] usb 1-2: new high-speed USB device number 15 using xhci_hcd
[ 1536.394462] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1536.394467] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1536.394471] usb 1-2: Product: USB Camera
[ 1536.394474] usb 1-2: Manufacturer: SunplusIT Inc
[ 1536.394477] usb 1-2: SerialNumber: 01.00.00
[ 1536.405113] uvcvideo: Probing generic UVC device 2
[ 1536.409297] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1536.409301] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1536.409302] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1536.461035] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1536.461048] uvcvideo: Found a valid video chain (1 -> 5).
[ 1536.466927] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1536.472246] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1536.472253] uvcvideo: Failed to initialize the device (-5).
[ 1536.488871] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1536.491643] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1536.493330] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1536.494550] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 1536.501488] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 1536.504209] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1536.506088] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1536.513412] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1536.552379] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1536.552386] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1568.797516] audit: type=1101 audit(1598201673.617:346): pid=7277 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.797650] audit: type=1110 audit(1598201673.617:347): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.799168] audit: type=1105 audit(1598201673.619:348): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.800506] audit: type=1106 audit(1598201673.620:349): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.800547] audit: type=1104 audit(1598201673.620:350): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.444601] audit: type=1101 audit(1598201678.264:351): pid=7285 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.444740] audit: type=1110 audit(1598201678.264:352): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.446796] audit: type=1105 audit(1598201678.266:353): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.448179] usbcore: deregistering interface driver uvcvideo
[ 1573.603290] audit: type=1106 audit(1598201678.423:354): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.603624] audit: type=1104 audit(1598201678.423:355): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.670049] audit: type=1101 audit(1598201693.491:356): pid=7338 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.670568] audit: type=1110 audit(1598201693.491:357): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.676235] audit: type=1105 audit(1598201693.497:358): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.819108] uvcvideo: Probing generic UVC device 12
[ 1588.820960] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1588.820963] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1588.820965] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1589.163369] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1589.163381] uvcvideo: Found a valid video chain (1 -> 5).
[ 1589.173737] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1589.173744] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1589.173747] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1589.173750] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1589.174044] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input46
[ 1589.174160] uvcvideo: UVC device initialized.
[ 1589.174259] uvcvideo: Probing generic UVC device 2
[ 1589.178177] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1589.178182] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1589.178184] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1589.229823] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1589.229836] uvcvideo: Found a valid video chain (1 -> 5).
[ 1589.235692] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1589.235699] uvcvideo: Failed to initialize the device (-5).
[ 1589.235851] usbcore: registered new interface driver uvcvideo
[ 1589.235853] USB Video Class driver (1.1.1)
[ 1589.237371] audit: type=1106 audit(1598201694.058:359): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1589.237713] audit: type=1104 audit(1598201694.058:360): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1592.550613] usb 1-2: USB disconnect, device number 15
[ 1594.708118] usb 1-2: new high-speed USB device number 16 using xhci_hcd
[ 1594.911245] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1594.911252] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1594.911256] usb 1-2: Product: USB Camera
[ 1594.911259] usb 1-2: Manufacturer: SunplusIT Inc
[ 1594.911262] usb 1-2: SerialNumber: 01.00.00
[ 1594.922029] uvcvideo: Probing generic UVC device 2
[ 1594.926207] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1594.926211] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1594.926212] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1594.977899] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1594.977913] uvcvideo: Found a valid video chain (1 -> 5).
[ 1594.983852] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1594.983860] uvcvideo: Failed to initialize the device (-5).
[ 1595.000229] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1595.003045] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1595.004866] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1595.006113] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 1595.013012] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 1595.015619] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1595.017535] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1595.024920] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1595.062050] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1595.062057] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1779.555636] audit: type=1100 audit(1598201884.377:361): pid=7905 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.556537] audit: type=1101 audit(1598201884.378:362): pid=7905 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.556714] audit: type=1110 audit(1598201884.378:363): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.558312] audit: type=1105 audit(1598201884.380:364): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.559653] usbcore: deregistering interface driver uvcvideo
[ 1779.757491] audit: type=1106 audit(1598201884.579:365): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.757712] audit: type=1104 audit(1598201884.579:366): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.716334] audit: type=1101 audit(1598201896.538:367): pid=7932 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.716503] audit: type=1110 audit(1598201896.538:368): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.718038] audit: type=1105 audit(1598201896.539:369): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.734289] uvcvideo: `0x100,0x4' invalid for parameter `quirks'
[ 1791.756948] audit: type=1106 audit(1598201896.578:370): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.756996] audit: type=1104 audit(1598201896.578:371): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.453448] audit: type=1101 audit(1598201912.275:372): pid=7989 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.454229] audit: type=1110 audit(1598201912.276:373): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.457971] audit: type=1105 audit(1598201912.279:374): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.466199] uvcvideo: unknown parameter 'quircks' ignored
[ 1807.565129] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1807.565133] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1807.565135] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1807.916572] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1807.916577] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1807.916580] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1807.916584] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1807.916891] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input47
[ 1807.921314] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1807.921319] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1807.921321] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1807.978937] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1807.978944] uvcvideo: Failed to initialize the device (-5).
[ 1807.979100] usbcore: registered new interface driver uvcvideo
[ 1807.979102] USB Video Class driver (1.1.1)
[ 1807.980254] audit: type=1106 audit(1598201912.802:375): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.980544] audit: type=1104 audit(1598201912.802:376): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1811.469404] usb 1-2: USB disconnect, device number 16
[ 1813.082144] usb 1-2: new high-speed USB device number 17 using xhci_hcd
[ 1813.285092] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1813.285098] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1813.285102] usb 1-2: Product: USB Camera
[ 1813.285105] usb 1-2: Manufacturer: SunplusIT Inc
[ 1813.285107] usb 1-2: SerialNumber: 01.00.00
[ 1813.299735] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1813.299738] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1813.299740] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1813.357188] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1813.357195] uvcvideo: Failed to initialize the device (-5).
[ 1813.373760] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1813.376681] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1813.378497] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1813.385622] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1813.388573] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1813.390178] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1813.397190] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 1813.400158] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 1813.442570] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1813.442576] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1886.986525] audit: type=1100 audit(1598201991.809:377): pid=8245 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.987716] audit: type=1101 audit(1598201991.810:378): pid=8245 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.987903] audit: type=1110 audit(1598201991.810:379): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.989514] audit: type=1105 audit(1598201991.812:380): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.990895] usbcore: deregistering interface driver uvcvideo
[ 1887.144227] audit: type=1106 audit(1598201991.967:381): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1887.144302] audit: type=1104 audit(1598201991.967:382): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.380425] audit: type=1101 audit(1598202016.203:383): pid=8321 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.381115] audit: type=1110 audit(1598202016.203:384): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.390221] audit: type=1105 audit(1598202016.212:385): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.507439] uvcvideo: Probing generic UVC device 12
[ 1911.509207] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1911.509210] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1911.509212] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1911.851581] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1911.851594] uvcvideo: Found a valid video chain (1 -> 5).
[ 1911.878667] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1911.878675] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1911.878679] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1911.878684] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1911.878983] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input48
[ 1911.879250] uvcvideo: UVC device initialized.
[ 1911.879364] uvcvideo: Probing generic UVC device 2
[ 1911.883294] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1911.883298] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1911.883299] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1911.934970] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1911.934980] uvcvideo: Found a valid video chain (1 -> 5).
[ 1911.941088] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1911.946351] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1911.946359] uvcvideo: Failed to initialize the device (-5).
[ 1911.946491] usbcore: registered new interface driver uvcvideo
[ 1911.946493] USB Video Class driver (1.1.1)
[ 1911.947335] audit: type=1106 audit(1598202016.770:386): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.947428] audit: type=1104 audit(1598202016.770:387): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1917.596335] usb 1-2: USB disconnect, device number 17
[ 1919.265286] usb 1-2: new high-speed USB device number 18 using xhci_hcd
[ 1919.467318] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1919.467324] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1919.467328] usb 1-2: Product: USB Camera
[ 1919.467331] usb 1-2: Manufacturer: SunplusIT Inc
[ 1919.467334] usb 1-2: SerialNumber: 01.00.00
[ 1919.477951] uvcvideo: Probing generic UVC device 2
[ 1919.482209] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1919.482212] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1919.482214] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1919.533784] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1919.533797] uvcvideo: Found a valid video chain (1 -> 5).
[ 1919.539663] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1919.545096] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1919.545103] uvcvideo: Failed to initialize the device (-5).
[ 1919.561702] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1919.564346] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1919.566075] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1919.573348] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1919.576343] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1919.577931] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1919.579211] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1919.585924] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1919.623116] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1919.623139] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1942.548261] audit: type=1101 audit(1598202047.371:388): pid=8452 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.548783] audit: type=1110 audit(1598202047.371:389): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.554436] audit: type=1105 audit(1598202047.377:390): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.558742] usbcore: deregistering interface driver uvcvideo
[ 1942.724229] audit: type=1106 audit(1598202047.547:391): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.724475] audit: type=1104 audit(1598202047.547:392): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1944.441166] usb 1-2: USB disconnect, device number 18
[ 1953.002003] i915 0000:00:02.0: HDMI-A-1: EDID is invalid:
[ 1953.002009] 	[00] BAD  00 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff
[ 1953.002011] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002013] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002015] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002016] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002018] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002019] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002021] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1956.591480] audit: type=1130 audit(1598202061.415:393): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=autorandr comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[ 1956.591488] audit: type=1131 audit(1598202061.415:394): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=autorandr comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[ 2206.525105] audit: type=1100 audit(1598202311.351:395): pid=9410 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.528077] audit: type=1101 audit(1598202311.354:396): pid=9410 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.528819] audit: type=1110 audit(1598202311.355:397): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.536972] audit: type=1105 audit(1598202311.363:398): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.540645] audit: type=1106 audit(1598202311.366:399): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.540732] audit: type=1104 audit(1598202311.366:400): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2226.944678] audit: type=1100 audit(1598202331.771:401): pid=9455 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.945690] audit: type=1101 audit(1598202331.772:402): pid=9455 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.945865] audit: type=1110 audit(1598202331.772:403): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.947455] audit: type=1105 audit(1598202331.773:404): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2227.060438] uvcvideo: Probing generic UVC device 12
[ 2227.062326] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2227.062329] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 2227.062331] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2227.405072] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2227.405076] uvcvideo: Found a valid video chain (1 -> 5).
[ 2227.431511] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2227.431513] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2227.431515] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2227.431517] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2227.431696] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input49
[ 2227.431788] uvcvideo: UVC device initialized.
[ 2227.431848] usbcore: registered new interface driver uvcvideo
[ 2227.431849] USB Video Class driver (1.1.1)
[ 2227.432590] audit: type=1106 audit(1598202332.259:405): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2227.432692] audit: type=1104 audit(1598202332.259:406): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2232.566673] usb 1-2: new high-speed USB device number 19 using xhci_hcd
[ 2232.769926] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2232.769932] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2232.769936] usb 1-2: Product: USB Camera
[ 2232.769939] usb 1-2: Manufacturer: SunplusIT Inc
[ 2232.769941] usb 1-2: SerialNumber: 01.00.00
[ 2232.780344] uvcvideo: Probing generic UVC device 2
[ 2232.784715] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2232.784718] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 2232.784719] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2232.836370] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2232.836382] uvcvideo: Found a valid video chain (1 -> 5).
[ 2232.842469] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2232.847757] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2232.847766] uvcvideo: Failed to initialize the device (-5).
[ 2232.864234] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2232.871764] usb 1-2: 3:2: cannot get freq at ep 0x86
[ 2232.874701] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2232.876254] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 2232.877720] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2232.884414] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2232.887436] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2232.889232] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2232.927085] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2232.927092] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2254.153930] audit: type=1101 audit(1598202358.979:407): pid=9555 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.154220] audit: type=1110 audit(1598202358.979:408): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.156222] audit: type=1105 audit(1598202358.981:409): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.157629] usbcore: deregistering interface driver uvcvideo
[ 2254.316540] audit: type=1106 audit(1598202359.142:410): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.316788] audit: type=1104 audit(1598202359.142:411): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.358529] audit: type=1100 audit(1598202640.185:412): pid=10377 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.359464] audit: type=1101 audit(1598202640.186:413): pid=10377 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.359686] audit: type=1110 audit(1598202640.187:414): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.362008] audit: type=1105 audit(1598202640.189:415): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.478733] uvcvideo: Probing generic UVC device 12
[ 2535.480442] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2535.480443] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2535.480444] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2535.823144] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2535.823150] uvcvideo: Found a valid video chain (1 -> 5).
[ 2535.850009] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2535.850015] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2535.850019] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2535.850022] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2535.850350] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input50
[ 2535.850610] uvcvideo: UVC device initialized.
[ 2535.850749] uvcvideo: Probing generic UVC device 2
[ 2535.854807] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2535.854812] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2535.854815] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2535.906307] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2535.906319] uvcvideo: Found a valid video chain (1 -> 5).
[ 2535.912143] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2535.917528] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2535.917536] uvcvideo: Failed to initialize the device (-5).
[ 2535.917661] usbcore: registered new interface driver uvcvideo
[ 2535.917663] USB Video Class driver (1.1.1)
[ 2535.918967] audit: type=1106 audit(1598202640.746:416): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.919295] audit: type=1104 audit(1598202640.746:417): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2538.314345] usb 1-2: USB disconnect, device number 19
[ 2540.573750] usb 1-2: new high-speed USB device number 20 using xhci_hcd
[ 2540.776734] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2540.776737] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2540.776739] usb 1-2: Product: USB Camera
[ 2540.776741] usb 1-2: Manufacturer: SunplusIT Inc
[ 2540.776742] usb 1-2: SerialNumber: 01.00.00
[ 2540.788485] uvcvideo: Probing generic UVC device 2
[ 2540.792707] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2540.792710] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2540.792712] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2540.844386] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2540.844398] uvcvideo: Found a valid video chain (1 -> 5).
[ 2540.850330] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2540.855590] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2540.855597] uvcvideo: Failed to initialize the device (-5).
[ 2540.872044] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2540.879686] usb 1-2: 3:2: cannot get freq at ep 0x86
[ 2540.882688] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2540.884322] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 2540.885816] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2540.892519] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2540.895504] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2540.897132] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2540.934715] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2540.934721] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2551.288523] audit: type=1101 audit(1598202656.116:418): pid=10448 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.288718] audit: type=1110 audit(1598202656.116:419): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.291110] audit: type=1105 audit(1598202656.118:420): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.292404] usbcore: deregistering interface driver uvcvideo
[ 2551.452626] audit: type=1106 audit(1598202656.280:421): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.452827] audit: type=1104 audit(1598202656.280:422): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2553.234834] usb 1-2: USB disconnect, device number 20
[ 2565.800203] audit: type=1101 audit(1598202670.626:423): pid=10510 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.800432] audit: type=1110 audit(1598202670.627:424): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.802958] audit: type=1105 audit(1598202670.629:425): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.916480] uvcvideo: Probing generic UVC device 12
[ 2565.918500] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2565.918503] uvcvideo: Forcing device quirks to 0xa by module parameter for testing purpose.
[ 2565.918504] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2566.261358] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2566.261397] uvcvideo: Found a valid video chain (1 -> 5).
[ 2566.287932] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2566.287937] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2566.287940] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2566.287943] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2566.288035] uvcvideo: UVC device initialized.
[ 2566.288136] usbcore: registered new interface driver uvcvideo
[ 2566.288138] USB Video Class driver (1.1.1)
[ 2566.289388] audit: type=1106 audit(1598202671.115:426): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2566.289629] audit: type=1104 audit(1598202671.116:427): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2573.869401] usb 1-2: new high-speed USB device number 21 using xhci_hcd
[ 2574.071272] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2574.071278] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2574.071282] usb 1-2: Product: USB Camera
[ 2574.071285] usb 1-2: Manufacturer: SunplusIT Inc
[ 2574.071287] usb 1-2: SerialNumber: 01.00.00
[ 2574.082035] uvcvideo: Probing generic UVC device 2
[ 2574.086230] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2574.086234] uvcvideo: Forcing device quirks to 0xa by module parameter for testing purpose.
[ 2574.086235] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2574.137669] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2574.137682] uvcvideo: Found a valid video chain (1 -> 5).
[ 2574.143752] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2574.149230] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2574.149238] uvcvideo: Failed to initialize the device (-5).
[ 2574.165755] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2574.168543] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2574.170443] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2574.177508] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2574.180258] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2574.181962] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2574.189040] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 2574.191818] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2574.231053] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2574.231059] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2585.096121] audit: type=1101 audit(1598202689.922:428): pid=10598 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.096247] audit: type=1110 audit(1598202689.922:429): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.097778] audit: type=1105 audit(1598202689.924:430): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.099147] usbcore: deregistering interface driver uvcvideo
[ 2585.260619] audit: type=1106 audit(1598202690.087:431): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.260843] audit: type=1104 audit(1598202690.087:432): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2586.580680] usb 1-2: USB disconnect, device number 21
[ 2600.904230] audit: type=1101 audit(1598202705.731:433): pid=10644 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2600.904393] audit: type=1110 audit(1598202705.731:434): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2600.905868] audit: type=1105 audit(1598202705.732:435): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2601.019526] uvcvideo: Probing generic UVC device 12
[ 2601.021424] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2601.021427] uvcvideo: Forcing device quirks to 0x50 by module parameter for testing purpose.
[ 2601.021429] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2601.364242] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2601.364255] uvcvideo: Found a valid video chain (1 -> 5).
[ 2601.390855] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2601.390861] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2601.390864] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2601.390867] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2601.391284] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input51
[ 2601.391475] uvcvideo: UVC device initialized.
[ 2601.391607] usbcore: registered new interface driver uvcvideo
[ 2601.391609] USB Video Class driver (1.1.1)
[ 2601.393118] audit: type=1106 audit(1598202706.219:436): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2601.393512] audit: type=1104 audit(1598202706.220:437): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2604.077476] usb 1-2: new high-speed USB device number 22 using xhci_hcd
[ 2604.278935] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2604.278941] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2604.278945] usb 1-2: Product: USB Camera
[ 2604.278948] usb 1-2: Manufacturer: SunplusIT Inc
[ 2604.278950] usb 1-2: SerialNumber: 01.00.00
[ 2604.289717] uvcvideo: Probing generic UVC device 2
[ 2604.294071] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2604.294075] uvcvideo: Forcing device quirks to 0x50 by module parameter for testing purpose.
[ 2604.294076] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2604.345749] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2604.345761] uvcvideo: Found a valid video chain (1 -> 5).
[ 2604.351693] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2604.357004] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2604.357011] uvcvideo: Failed to initialize the device (-5).
[ 2604.373679] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2604.376409] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2604.378247] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2604.385441] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2604.388299] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2604.415678] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2604.464250] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2604.464254] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2611.448079] audit: type=1101 audit(1598202716.274:438): pid=10691 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.448287] audit: type=1110 audit(1598202716.275:439): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.449859] audit: type=1105 audit(1598202716.276:440): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.451219] usbcore: deregistering interface driver uvcvideo
[ 2611.612099] audit: type=1106 audit(1598202716.438:441): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.612273] audit: type=1104 audit(1598202716.439:442): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2614.633781] usb 1-2: USB disconnect, device number 22
[ 2625.528598] audit: type=1101 audit(1598202730.355:443): pid=10757 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.528808] audit: type=1110 audit(1598202730.355:444): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.530760] audit: type=1105 audit(1598202730.357:445): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.644318] uvcvideo: Probing generic UVC device 12
[ 2625.646296] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2625.646299] uvcvideo: Forcing device quirks to 0xc8 by module parameter for testing purpose.
[ 2625.646300] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2625.987507] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2625.987521] uvcvideo: Found a valid video chain (1 -> 5).
[ 2626.014606] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2626.014612] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2626.014615] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2626.014618] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2626.014833] uvcvideo: UVC device initialized.
[ 2626.014952] usbcore: registered new interface driver uvcvideo
[ 2626.014955] USB Video Class driver (1.1.1)
[ 2626.016249] audit: type=1106 audit(1598202730.843:446): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2626.016590] audit: type=1104 audit(1598202730.843:447): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2629.597254] usb 1-2: new high-speed USB device number 23 using xhci_hcd
[ 2629.800245] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2629.800252] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2629.800255] usb 1-2: Product: USB Camera
[ 2629.800259] usb 1-2: Manufacturer: SunplusIT Inc
[ 2629.800261] usb 1-2: SerialNumber: 01.00.00
[ 2629.811053] uvcvideo: Probing generic UVC device 2
[ 2629.815210] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2629.815213] uvcvideo: Forcing device quirks to 0xc8 by module parameter for testing purpose.
[ 2629.815215] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2629.866980] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2629.866992] uvcvideo: Found a valid video chain (1 -> 5).
[ 2629.872948] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2629.878170] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2629.878178] uvcvideo: Failed to initialize the device (-5).
[ 2629.894823] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2629.897476] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2629.899440] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2629.906502] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2629.909306] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2629.911138] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2629.918374] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 2629.921284] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2629.960766] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2629.960773] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2640.040598] usb 1-2: USB disconnect, device number 23
[ 2642.426789] audit: type=1101 audit(1598202747.253:448): pid=10830 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.426942] audit: type=1110 audit(1598202747.253:449): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.428593] audit: type=1105 audit(1598202747.255:450): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.430067] usbcore: deregistering interface driver uvcvideo
[ 2642.572310] audit: type=1106 audit(1598202747.399:451): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.572562] audit: type=1104 audit(1598202747.399:452): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.023952] audit: type=1101 audit(1598202754.850:453): pid=10875 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.024134] audit: type=1110 audit(1598202754.851:454): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.025748] audit: type=1105 audit(1598202754.852:455): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.139148] uvcvideo: Probing generic UVC device 12
[ 2650.141153] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2650.141157] uvcvideo: Forcing device quirks to 0x64 by module parameter for testing purpose.
[ 2650.141159] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2650.483999] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2650.484006] uvcvideo: Found a valid video chain (1 -> 5).
[ 2650.511038] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2650.511044] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2650.511047] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2650.511050] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2650.511389] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input52
[ 2650.511590] uvcvideo: UVC device initialized.
[ 2650.511703] usbcore: registered new interface driver uvcvideo
[ 2650.511706] USB Video Class driver (1.1.1)
[ 2650.513484] audit: type=1106 audit(1598202755.340:456): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.513831] audit: type=1104 audit(1598202755.340:457): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2654.637171] usb 1-2: new high-speed USB device number 24 using xhci_hcd
[ 2654.840318] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2654.840325] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2654.840329] usb 1-2: Product: USB Camera
[ 2654.840332] usb 1-2: Manufacturer: SunplusIT Inc
[ 2654.840335] usb 1-2: SerialNumber: 01.00.00
[ 2654.851173] uvcvideo: Probing generic UVC device 2
[ 2654.855434] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2654.855438] uvcvideo: Forcing device quirks to 0x64 by module parameter for testing purpose.
[ 2654.855439] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2654.907078] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2654.907091] uvcvideo: Found a valid video chain (1 -> 5).
[ 2654.912989] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2654.918271] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2654.918279] uvcvideo: Failed to initialize the device (-5).
[ 2654.935019] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2654.937759] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2654.939442] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2654.946577] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2654.949424] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2654.951120] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2654.952372] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2654.959153] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 2654.996452] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2654.996458] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 3462.270622] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 3462.270635] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 3462.270641] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 3462.270646] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 3462.270653] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 3462.270657] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000001/0000e000
[ 3462.270660] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 3462.270664] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 3679.772164] audit: type=1100 audit(1598203784.606:458): pid=14495 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.773206] audit: type=1101 audit(1598203784.607:459): pid=14495 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.773440] audit: type=1110 audit(1598203784.607:460): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.775843] audit: type=1105 audit(1598203784.610:461): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.777229] usbcore: deregistering interface driver uvcvideo
[ 3679.949054] audit: type=1106 audit(1598203784.783:462): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.949141] audit: type=1104 audit(1598203784.783:463): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.876694] audit: type=1101 audit(1598203789.711:464): pid=14515 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.876843] audit: type=1110 audit(1598203789.711:465): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.878417] audit: type=1105 audit(1598203789.712:466): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.992970] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 3685.361606] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 3685.361607] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 3685.361608] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 3685.361609] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 3685.361722] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input53
[ 3685.365279] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 3685.422765] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 3685.428178] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 3685.428180] uvcvideo: Failed to initialize the device (-5).
[ 3685.428226] usbcore: registered new interface driver uvcvideo
[ 3685.428226] USB Video Class driver (1.1.1)
[ 3685.428710] audit: type=1106 audit(1598203790.263:467): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3685.428830] audit: type=1104 audit(1598203790.263:468): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3943.426606] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 3943.426612] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 3943.426614] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 3943.426624] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 3943.426629] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 3943.426631] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 3943.426633] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 3943.426634] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 3943.426636] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 3957.618799] audit: type=1100 audit(1598204062.455:469): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=failed'
[ 3961.569642] audit: type=1100 audit(1598204066.405:470): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.570288] audit: type=1101 audit(1598204066.406:471): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.570520] audit: type=1110 audit(1598204066.406:472): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.572856] audit: type=1105 audit(1598204066.409:473): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.574253] usbcore: deregistering interface driver uvcvideo
[ 3961.731155] audit: type=1106 audit(1598204066.567:474): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.731275] audit: type=1104 audit(1598204066.567:475): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.842264] audit: type=1101 audit(1598204083.678:476): pid=15484 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.842465] audit: type=1110 audit(1598204083.678:477): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.845014] audit: type=1105 audit(1598204083.681:478): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.958278] uvcvideo: Probing generic UVC device 12
[ 3978.960038] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 3979.301679] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 3979.301683] uvcvideo: Found a valid video chain (1 -> 5).
[ 3979.328145] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 3979.328147] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 3979.328148] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 3979.328149] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 3979.328290] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input54
[ 3979.328355] uvcvideo: UVC device initialized.
[ 3979.328412] uvcvideo: Probing generic UVC device 2
[ 3979.332246] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 3979.383646] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 3979.383650] uvcvideo: Found a valid video chain (1 -> 5).
[ 3979.389706] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 3979.395099] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 3979.395101] uvcvideo: Failed to initialize the device (-5).
[ 3979.395167] usbcore: registered new interface driver uvcvideo
[ 3979.395168] USB Video Class driver (1.1.1)
[ 3979.395675] audit: type=1106 audit(1598204084.232:479): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3979.395741] audit: type=1104 audit(1598204084.232:480): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4012.811522] audit: type=1100 audit(1598204117.647:481): pid=15537 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4027.211803] audit: type=1100 audit(1598204132.047:482): pid=15622 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4042.947651] audit: type=1100 audit(1598204147.783:483): pid=15645 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4086.097120] audit: type=1100 audit(1598204190.934:484): pid=15836 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.098185] audit: type=1101 audit(1598204190.935:485): pid=15836 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.098412] audit: type=1110 audit(1598204190.935:486): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.100854] audit: type=1105 audit(1598204190.938:487): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4114.050265] audit: type=1108 audit(1598204218.887:488): pid=15840 uid=0 auid=1000 ses=1 msg='op=PAM:chauthtok grantors=pam_unix acct="root" exe="/usr/bin/passwd" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4114.050795] audit: type=1106 audit(1598204218.888:489): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4114.050877] audit: type=1104 audit(1598204218.888:490): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4121.860939] audit: type=1100 audit(1598204226.698:491): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.860998] audit: type=1101 audit(1598204226.698:492): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.861301] audit: type=1103 audit(1598204226.698:493): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.861369] audit: type=1105 audit(1598204226.698:494): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4152.952122] usb 1-2: USB disconnect, device number 24
[ 4154.859298] usb 1-2: new high-speed USB device number 25 using xhci_hcd
[ 4155.060874] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4155.060875] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4155.060876] usb 1-2: Product: USB Camera
[ 4155.060877] usb 1-2: Manufacturer: SunplusIT Inc
[ 4155.060878] usb 1-2: SerialNumber: 01.00.00
[ 4155.075781] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4155.133226] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4155.138629] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4155.138631] uvcvideo: Failed to initialize the device (-5).
[ 4155.155061] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4155.157932] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4155.159735] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4155.161151] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4155.167952] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4155.170747] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4155.172419] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4155.173833] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 4155.213817] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4155.213818] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4155.261874] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 4177.308443] usbcore: deregistering interface driver uvcvideo
[ 4191.981410] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4191.981411] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4191.981412] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4192.331444] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4192.331445] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4192.331446] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4192.331447] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4192.331556] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input55
[ 4192.335131] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4192.335132] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4192.335132] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4192.392561] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4192.392564] uvcvideo: Failed to initialize the device (-5).
[ 4192.392632] usbcore: registered new interface driver uvcvideo
[ 4192.392633] USB Video Class driver (1.1.1)
[ 4195.971015] usb 1-2: USB disconnect, device number 25
[ 4197.466994] usb 1-2: new high-speed USB device number 26 using xhci_hcd
[ 4197.668618] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4197.668620] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4197.668620] usb 1-2: Product: USB Camera
[ 4197.668621] usb 1-2: Manufacturer: SunplusIT Inc
[ 4197.668622] usb 1-2: SerialNumber: 01.00.00
[ 4197.683645] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4197.683646] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4197.683665] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4197.741033] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4197.741035] uvcvideo: Failed to initialize the device (-5).
[ 4197.757452] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4197.760303] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4197.762081] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4197.763499] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4197.770188] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4197.773089] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4197.774830] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4197.781874] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4197.819063] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4197.819065] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4199.033242] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 4199.033249] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 4199.033251] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 4199.033252] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 4199.033257] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 4199.033258] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 4199.033259] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 4199.033260] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 4199.033261] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 4218.876218] usbcore: deregistering interface driver uvcvideo
[ 4222.572656] usb 1-2: USB disconnect, device number 26
[ 4249.843486] uvcvideo: unknown parameter 'quircks' ignored
[ 4249.942141] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4250.308695] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4250.308697] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4250.308698] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4250.308698] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4250.308838] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input56
[ 4250.308987] usbcore: registered new interface driver uvcvideo
[ 4250.308988] USB Video Class driver (1.1.1)
[ 4254.840857] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 4254.840863] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 4254.840865] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 4254.840867] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 4254.840870] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 4254.840871] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 4254.840872] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 4254.840873] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 4254.840874] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 4258.090558] usb 1-2: new high-speed USB device number 27 using xhci_hcd
[ 4258.291872] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4258.291873] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4258.291874] usb 1-2: Product: USB Camera
[ 4258.291875] usb 1-2: Manufacturer: SunplusIT Inc
[ 4258.291876] usb 1-2: SerialNumber: 01.00.00
[ 4258.306735] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4258.364188] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4258.369638] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4258.369640] uvcvideo: Failed to initialize the device (-5).
[ 4258.386045] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4258.388909] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4258.390732] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4258.392135] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4258.398835] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4258.401569] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4258.403352] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4258.410364] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4258.447541] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4258.447542] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4373.688400] usb 1-2: USB disconnect, device number 27
[ 4389.377875] usb 1-2: new high-speed USB device number 28 using xhci_hcd
[ 4389.581226] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4389.581232] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4389.581235] usb 1-2: Product: USB Camera
[ 4389.581237] usb 1-2: Manufacturer: SunplusIT Inc
[ 4389.581240] usb 1-2: SerialNumber: 01.00.00
[ 4389.594370] uvcvideo: Probing generic UVC device 2
[ 4389.598536] uvcvideo: Found format MJPEG.
[ 4389.598540] uvcvideo: - 1920x1080 (30.0 fps)
[ 4389.598543] uvcvideo: - 640x480 (30.0 fps)
[ 4389.598545] uvcvideo: - 320x240 (30.0 fps)
[ 4389.598546] uvcvideo: - 800x600 (30.0 fps)
[ 4389.598548] uvcvideo: - 1280x720 (30.0 fps)
[ 4389.598551] uvcvideo: Found format YUV 4:2:2 (YUYV).
[ 4389.598553] uvcvideo: - 1920x1080 (4.0 fps)
[ 4389.598555] uvcvideo: - 640x480 (15.0 fps)
[ 4389.598556] uvcvideo: - 320x240 (30.0 fps)
[ 4389.598558] uvcvideo: - 800x600 (20.0 fps)
[ 4389.598560] uvcvideo: - 1280x720 (10.0 fps)
[ 4389.598568] uvcvideo: Found a Status endpoint (addr 87).
[ 4389.598570] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4389.602696] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/2 to device 2 entity 1
[ 4389.602703] uvcvideo: Adding mapping 'Exposure, Auto' to control 00000000-0000-0000-0000-000000000001/2.
[ 4389.607070] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/4 to device 2 entity 1
[ 4389.607076] uvcvideo: Adding mapping 'Exposure (Absolute)' to control 00000000-0000-0000-0000-000000000001/4.
[ 4389.611508] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/2 to device 2 entity 2
[ 4389.611514] uvcvideo: Adding mapping 'Brightness' to control 00000000-0000-0000-0000-000000000101/2.
[ 4389.615798] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/3 to device 2 entity 2
[ 4389.615804] uvcvideo: Adding mapping 'Contrast' to control 00000000-0000-0000-0000-000000000101/3.
[ 4389.619902] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/6 to device 2 entity 2
[ 4389.619908] uvcvideo: Adding mapping 'Hue' to control 00000000-0000-0000-0000-000000000101/6.
[ 4389.624255] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/7 to device 2 entity 2
[ 4389.624262] uvcvideo: Adding mapping 'Saturation' to control 00000000-0000-0000-0000-000000000101/7.
[ 4389.628617] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/8 to device 2 entity 2
[ 4389.628623] uvcvideo: Adding mapping 'Sharpness' to control 00000000-0000-0000-0000-000000000101/8.
[ 4389.632999] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/9 to device 2 entity 2
[ 4389.633006] uvcvideo: Adding mapping 'Gamma' to control 00000000-0000-0000-0000-000000000101/9.
[ 4389.637270] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/10 to device 2 entity 2
[ 4389.637277] uvcvideo: Adding mapping 'White Balance Temperature' to control 00000000-0000-0000-0000-000000000101/10.
[ 4389.641605] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/1 to device 2 entity 2
[ 4389.641610] uvcvideo: Adding mapping 'Backlight Compensation' to control 00000000-0000-0000-0000-000000000101/1.
[ 4389.645797] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/5 to device 2 entity 2
[ 4389.645803] uvcvideo: Adding mapping 'Power Line Frequency' to control 00000000-0000-0000-0000-000000000101/5.
[ 4389.650069] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/11 to device 2 entity 2
[ 4389.650076] uvcvideo: Adding mapping 'White Balance Temperature, Auto' to control 00000000-0000-0000-0000-000000000101/11.
[ 4389.650083] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 4389.650092] uvcvideo: Found a valid video chain (1 -> 5).
[ 4389.656219] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4389.661652] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4389.661659] uvcvideo: Failed to initialize the device (-5).
[ 4389.678205] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4389.680720] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4389.682510] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4389.684022] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4389.690784] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4389.693716] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4389.695331] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4389.702366] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4389.739633] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4389.739639] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4450.627809] usbcore: deregistering interface driver uvcvideo
[ 4450.724448] uvcvideo: Resuming interface 0
[ 4450.724452] uvcvideo: Resuming interface 1
[ 4452.633009] usb 1-2: USB disconnect, device number 28
[ 4473.945122] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4473.945125] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4473.945127] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4474.298209] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4474.298216] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4474.298220] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4474.298224] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4474.298521] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input57
[ 4474.298849] usbcore: registered new interface driver uvcvideo
[ 4474.298851] USB Video Class driver (1.1.1)
[ 4479.729225] usb 1-2: new high-speed USB device number 29 using xhci_hcd
[ 4479.932141] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4479.932144] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4479.932147] usb 1-2: Product: USB Camera
[ 4479.932149] usb 1-2: Manufacturer: SunplusIT Inc
[ 4479.932150] usb 1-2: SerialNumber: 01.00.00
[ 4479.947198] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4479.947201] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4479.947203] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4480.004749] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4480.004756] uvcvideo: Failed to initialize the device (-5).
[ 4480.021209] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4480.023956] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4480.025640] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4480.027003] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4480.033809] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4480.036706] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4480.038511] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4480.045706] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4480.082957] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4480.082964] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4564.517800] usbcore: deregistering interface driver uvcvideo
[ 4567.419943] usb 1-2: USB disconnect, device number 29
[ 4582.996453] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4582.996457] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 4582.996458] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4583.365588] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4583.365595] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4583.365601] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4583.365607] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4583.365940] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input58
[ 4583.366276] usbcore: registered new interface driver uvcvideo
[ 4583.366279] USB Video Class driver (1.1.1)
[ 4589.304369] usb 1-2: new high-speed USB device number 30 using xhci_hcd
[ 4589.507317] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4589.507323] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4589.507326] usb 1-2: Product: USB Camera
[ 4589.507329] usb 1-2: Manufacturer: SunplusIT Inc
[ 4589.507331] usb 1-2: SerialNumber: 01.00.00
[ 4589.522062] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4589.522066] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 4589.522067] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4589.579521] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4589.584906] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4589.584913] uvcvideo: Failed to initialize the device (-5).
[ 4589.601605] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4589.604451] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4589.606306] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4589.613370] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 4589.616302] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 4589.617907] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4589.624908] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 4589.627891] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 4589.667287] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4589.667294] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1

--------------CF06069D7EE21FAEE285AA8B
Content-Type: text/x-log; charset=UTF-8;
 name="dmesg_q100.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="dmesg_q100.log"

[  792.811865] audit: type=1105 audit(1598200897.623:268): pid=4700 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  792.928734] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[  792.928737] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[  792.928738] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[  793.296785] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[  793.296790] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[  793.296793] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[  793.296796] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[  793.296952] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input41
[  793.300893] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[  793.300898] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[  793.300900] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[  793.358295] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  793.363721] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  793.363728] uvcvideo: Failed to initialize the device (-5).
[  793.363871] usbcore: registered new interface driver uvcvideo
[  793.363873] USB Video Class driver (1.1.1)
[  793.365447] audit: type=1106 audit(1598200898.176:269): pid=4700 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  793.365806] audit: type=1104 audit(1598200898.177:270): pid=4700 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  798.205371] usb 1-2: USB disconnect, device number 9
[  799.429785] usb 1-2: new high-speed USB device number 10 using xhci_hcd
[  799.631766] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[  799.631772] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[  799.631776] usb 1-2: Product: USB Camera
[  799.631779] usb 1-2: Manufacturer: SunplusIT Inc
[  799.631782] usb 1-2: SerialNumber: 01.00.00
[  799.646673] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[  799.646676] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[  799.646678] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[  799.704157] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  799.709595] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  799.709603] uvcvideo: Failed to initialize the device (-5).
[  799.726139] usb 1-2: 3:1: cannot get freq at ep 0x86
[  799.728766] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[  799.730594] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[  799.737764] usb 1-2: 3:4: cannot get freq at ep 0x86
[  799.740761] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[  799.742400] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[  799.743684] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[  799.750375] usb 1-2: 3:8: cannot get freq at ep 0x86
[  799.787504] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[  799.787510] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[  818.642775] audit: type=1100 audit(1598200923.454:271): pid=4815 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.645581] audit: type=1101 audit(1598200923.457:272): pid=4815 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.646075] audit: type=1110 audit(1598200923.457:273): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.651683] audit: type=1105 audit(1598200923.463:274): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.656142] usbcore: deregistering interface driver uvcvideo
[  818.832684] audit: type=1106 audit(1598200923.644:275): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  818.832898] audit: type=1104 audit(1598200923.644:276): pid=4815 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  822.145595] usb 1-2: USB disconnect, device number 10
[  823.621657] usb 1-2: new high-speed USB device number 11 using xhci_hcd
[  823.824285] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[  823.824293] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[  823.824298] usb 1-2: Product: USB Camera
[  823.824302] usb 1-2: Manufacturer: SunplusIT Inc
[  823.824306] usb 1-2: SerialNumber: 01.00.00
[  823.851292] usb 1-2: 3:1: cannot get freq at ep 0x86
[  823.854001] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[  823.855871] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[  823.862995] usb 1-2: 3:4: cannot get freq at ep 0x86
[  823.865926] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[  823.867616] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[  823.868901] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[  823.875588] usb 1-2: 3:8: cannot get freq at ep 0x86
[  823.912774] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[  823.912780] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[  824.057414] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[  824.427323] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[  824.427329] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[  824.427332] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[  824.427335] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[  824.427569] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input42
[  824.431901] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[  824.489283] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[  824.494749] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[  824.494756] uvcvideo: Failed to initialize the device (-5).
[  824.494900] usbcore: registered new interface driver uvcvideo
[  824.494902] USB Video Class driver (1.1.1)
[  908.325138] audit: type=1130 audit(1598201013.137:277): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-clean comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[  908.325167] audit: type=1131 audit(1598201013.137:278): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-clean comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[  922.443450] audit: type=1100 audit(1598201027.255:279): pid=5152 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  922.446032] audit: type=1101 audit(1598201027.258:280): pid=5152 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.522894] audit: type=1100 audit(1598201051.335:281): pid=5201 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.525901] audit: type=1101 audit(1598201051.338:282): pid=5201 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.526628] audit: type=1110 audit(1598201051.339:283): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.535594] audit: type=1105 audit(1598201051.348:284): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.539269] audit: type=1106 audit(1598201051.351:285): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  946.539419] audit: type=1104 audit(1598201051.351:286): pid=5201 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[  997.375766] audit: type=1100 audit(1598201102.187:287): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[  998.248852] i915 0000:00:02.0: [drm] *ERROR* Atomic update failure on pipe A (start=59711 end=59712) time 12640 us, min 1073, max 1079, scanline start 1063, end 791
[ 1002.658616] audit: type=1100 audit(1598201107.470:288): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.660322] audit: type=1101 audit(1598201107.472:289): pid=5350 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.660881] audit: type=1110 audit(1598201107.472:290): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.666171] audit: type=1105 audit(1598201107.478:291): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.670723] usbcore: deregistering interface driver uvcvideo
[ 1002.851220] audit: type=1106 audit(1598201107.663:292): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1002.851453] audit: type=1104 audit(1598201107.663:293): pid=5350 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.088751] audit: type=1100 audit(1598201122.902:294): pid=5421 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.089697] audit: type=1101 audit(1598201122.903:295): pid=5421 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.089842] audit: type=1110 audit(1598201122.903:296): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.091346] audit: type=1105 audit(1598201122.904:297): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.206636] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1018.206637] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1018.206638] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1018.557874] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1018.557880] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1018.557883] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1018.557887] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1018.558211] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input43
[ 1018.562124] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1018.562129] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1018.562131] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1018.619498] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1018.619504] uvcvideo: Failed to initialize the device (-5).
[ 1018.619624] usbcore: registered new interface driver uvcvideo
[ 1018.619626] USB Video Class driver (1.1.1)
[ 1018.620796] audit: type=1106 audit(1598201123.434:298): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1018.621114] audit: type=1104 audit(1598201123.434:299): pid=5421 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1022.033789] usb 1-2: USB disconnect, device number 11
[ 1023.851823] usb 1-2: new high-speed USB device number 12 using xhci_hcd
[ 1024.054451] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1024.054458] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1024.054462] usb 1-2: Product: USB Camera
[ 1024.054465] usb 1-2: Manufacturer: SunplusIT Inc
[ 1024.054468] usb 1-2: SerialNumber: 01.00.00
[ 1024.069395] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1024.069399] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1024.069400] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1024.126832] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1024.126839] uvcvideo: Failed to initialize the device (-5).
[ 1024.143170] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1024.145982] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1024.147936] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1024.155285] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1024.158145] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1024.159784] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1024.161073] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1024.167847] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1024.204959] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1024.204965] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1256.806191] audit: type=1100 audit(1598201361.623:300): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[ 1260.297018] audit: type=1100 audit(1598201365.114:301): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.297646] audit: type=1101 audit(1598201365.114:302): pid=6183 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.297844] audit: type=1110 audit(1598201365.115:303): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.299252] audit: type=1105 audit(1598201365.116:304): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.300603] usbcore: deregistering interface driver uvcvideo
[ 1260.467019] audit: type=1106 audit(1598201365.284:305): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1260.467231] audit: type=1104 audit(1598201365.284:306): pid=6183 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.406370] audit: type=1101 audit(1598201376.223:307): pid=6252 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.406506] audit: type=1110 audit(1598201376.223:308): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.408127] audit: type=1105 audit(1598201376.225:309): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.521836] uvcvideo: Probing generic UVC device 12
[ 1271.523653] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1271.523657] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1271.523659] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1271.866212] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1271.866225] uvcvideo: Found a valid video chain (1 -> 5).
[ 1271.876591] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1271.876596] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1271.876599] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1271.876602] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1271.876875] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input44
[ 1271.877092] uvcvideo: UVC device initialized.
[ 1271.877193] uvcvideo: Probing generic UVC device 2
[ 1271.881123] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1271.881127] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1271.881129] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1271.932439] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1271.932449] uvcvideo: Found a valid video chain (1 -> 5).
[ 1271.938403] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1271.938410] uvcvideo: Failed to initialize the device (-5).
[ 1271.938633] usbcore: registered new interface driver uvcvideo
[ 1271.938636] USB Video Class driver (1.1.1)
[ 1271.940021] audit: type=1106 audit(1598201376.757:310): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1271.940319] audit: type=1104 audit(1598201376.757:311): pid=6252 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1276.199409] usb 1-2: USB disconnect, device number 12
[ 1277.871739] usb 1-2: new high-speed USB device number 13 using xhci_hcd
[ 1278.073992] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1278.073998] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1278.074002] usb 1-2: Product: USB Camera
[ 1278.074005] usb 1-2: Manufacturer: SunplusIT Inc
[ 1278.074008] usb 1-2: SerialNumber: 01.00.00
[ 1278.085102] uvcvideo: Probing generic UVC device 2
[ 1278.089325] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1278.089328] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1278.089330] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1278.140788] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1278.140800] uvcvideo: Found a valid video chain (1 -> 5).
[ 1278.146860] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1278.146868] uvcvideo: Failed to initialize the device (-5).
[ 1278.163286] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1278.166086] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1278.167998] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1278.175120] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1278.178048] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1278.179805] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1278.186878] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 1278.189680] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 1278.228987] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1278.228993] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1415.310252] audit: type=1100 audit(1598201520.129:312): pid=6664 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=failed'
[ 1425.852323] audit: type=1100 audit(1598201530.671:313): pid=6681 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.853228] audit: type=1101 audit(1598201530.672:314): pid=6681 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.853373] audit: type=1110 audit(1598201530.672:315): pid=6681 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1425.854956] audit: type=1105 audit(1598201530.674:316): pid=6681 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/1 res=success'
[ 1428.496822] audit: type=1334 audit(1598201533.316:317): prog-id=4 op=UNLOAD
[ 1428.496828] audit: type=1334 audit(1598201533.316:318): prog-id=3 op=UNLOAD
[ 1428.499501] audit: type=1334 audit(1598201533.318:319): prog-id=8 op=UNLOAD
[ 1428.499507] audit: type=1334 audit(1598201533.318:320): prog-id=7 op=UNLOAD
[ 1428.501424] audit: type=1334 audit(1598201533.320:321): prog-id=6 op=UNLOAD
[ 1428.501429] audit: type=1334 audit(1598201533.320:322): prog-id=5 op=UNLOAD
[ 1462.743824] usb 1-2: USB disconnect, device number 13
[ 1464.069284] usb 1-2: new high-speed USB device number 14 using xhci_hcd
[ 1464.272322] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1464.272328] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1464.272331] usb 1-2: Product: USB Camera
[ 1464.272334] usb 1-2: Manufacturer: SunplusIT Inc
[ 1464.272337] usb 1-2: SerialNumber: 01.00.00
[ 1464.299939] uvcvideo: Probing generic UVC device 2
[ 1464.303483] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1464.303484] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1464.303485] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1464.355582] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1464.355589] uvcvideo: Found a valid video chain (1 -> 5).
[ 1464.361499] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1464.361504] uvcvideo: Failed to initialize the device (-5).
[ 1464.378264] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1464.380978] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1464.382640] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1464.389752] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1464.392440] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1464.394309] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1464.395633] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1464.402426] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1464.439571] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1464.439578] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1503.534626] kauditd_printk_skb: 12 callbacks suppressed
[ 1503.534629] audit: type=1100 audit(1598201608.354:335): pid=7040 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.537349] audit: type=1101 audit(1598201608.357:336): pid=7040 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.537871] audit: type=1110 audit(1598201608.358:337): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.542361] audit: type=1105 audit(1598201608.362:338): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.543677] usbcore: deregistering interface driver uvcvideo
[ 1503.711631] audit: type=1106 audit(1598201608.531:339): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1503.711711] audit: type=1104 audit(1598201608.531:340): pid=7040 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.621971] audit: type=1101 audit(1598201636.442:341): pid=7139 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.622506] audit: type=1110 audit(1598201636.442:342): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.625779] audit: type=1105 audit(1598201636.446:343): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1531.738651] uvcvideo: Probing generic UVC device 12
[ 1531.740531] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1531.740535] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1531.740537] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1532.083397] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1532.083409] uvcvideo: Found a valid video chain (1 -> 5).
[ 1532.110342] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1532.110347] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1532.110350] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1532.110353] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1532.110726] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input45
[ 1532.110926] uvcvideo: UVC device initialized.
[ 1532.111048] uvcvideo: Probing generic UVC device 2
[ 1532.115229] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1532.115233] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1532.115236] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1532.166580] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1532.166594] uvcvideo: Found a valid video chain (1 -> 5).
[ 1532.172577] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1532.178040] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1532.178048] uvcvideo: Failed to initialize the device (-5).
[ 1532.178190] usbcore: registered new interface driver uvcvideo
[ 1532.178192] USB Video Class driver (1.1.1)
[ 1532.179368] audit: type=1106 audit(1598201636.999:344): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1532.179640] audit: type=1104 audit(1598201637.000:345): pid=7139 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1535.293415] usb 1-2: USB disconnect, device number 14
[ 1536.180517] usb 1-2: new high-speed USB device number 15 using xhci_hcd
[ 1536.394462] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1536.394467] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1536.394471] usb 1-2: Product: USB Camera
[ 1536.394474] usb 1-2: Manufacturer: SunplusIT Inc
[ 1536.394477] usb 1-2: SerialNumber: 01.00.00
[ 1536.405113] uvcvideo: Probing generic UVC device 2
[ 1536.409297] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1536.409301] uvcvideo: Forcing device quirks to 0x4 by module parameter for testing purpose.
[ 1536.409302] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1536.461035] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1536.461048] uvcvideo: Found a valid video chain (1 -> 5).
[ 1536.466927] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1536.472246] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1536.472253] uvcvideo: Failed to initialize the device (-5).
[ 1536.488871] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1536.491643] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1536.493330] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1536.494550] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 1536.501488] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 1536.504209] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1536.506088] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1536.513412] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1536.552379] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1536.552386] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1568.797516] audit: type=1101 audit(1598201673.617:346): pid=7277 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.797650] audit: type=1110 audit(1598201673.617:347): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.799168] audit: type=1105 audit(1598201673.619:348): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.800506] audit: type=1106 audit(1598201673.620:349): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1568.800547] audit: type=1104 audit(1598201673.620:350): pid=7277 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.444601] audit: type=1101 audit(1598201678.264:351): pid=7285 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.444740] audit: type=1110 audit(1598201678.264:352): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.446796] audit: type=1105 audit(1598201678.266:353): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.448179] usbcore: deregistering interface driver uvcvideo
[ 1573.603290] audit: type=1106 audit(1598201678.423:354): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1573.603624] audit: type=1104 audit(1598201678.423:355): pid=7285 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.670049] audit: type=1101 audit(1598201693.491:356): pid=7338 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.670568] audit: type=1110 audit(1598201693.491:357): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.676235] audit: type=1105 audit(1598201693.497:358): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1588.819108] uvcvideo: Probing generic UVC device 12
[ 1588.820960] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1588.820963] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1588.820965] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1589.163369] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1589.163381] uvcvideo: Found a valid video chain (1 -> 5).
[ 1589.173737] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1589.173744] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1589.173747] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1589.173750] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1589.174044] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input46
[ 1589.174160] uvcvideo: UVC device initialized.
[ 1589.174259] uvcvideo: Probing generic UVC device 2
[ 1589.178177] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1589.178182] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1589.178184] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1589.229823] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1589.229836] uvcvideo: Found a valid video chain (1 -> 5).
[ 1589.235692] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1589.235699] uvcvideo: Failed to initialize the device (-5).
[ 1589.235851] usbcore: registered new interface driver uvcvideo
[ 1589.235853] USB Video Class driver (1.1.1)
[ 1589.237371] audit: type=1106 audit(1598201694.058:359): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1589.237713] audit: type=1104 audit(1598201694.058:360): pid=7338 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 1592.550613] usb 1-2: USB disconnect, device number 15
[ 1594.708118] usb 1-2: new high-speed USB device number 16 using xhci_hcd
[ 1594.911245] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1594.911252] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1594.911256] usb 1-2: Product: USB Camera
[ 1594.911259] usb 1-2: Manufacturer: SunplusIT Inc
[ 1594.911262] usb 1-2: SerialNumber: 01.00.00
[ 1594.922029] uvcvideo: Probing generic UVC device 2
[ 1594.926207] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1594.926211] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1594.926212] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1594.977899] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1594.977913] uvcvideo: Found a valid video chain (1 -> 5).
[ 1594.983852] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1594.983860] uvcvideo: Failed to initialize the device (-5).
[ 1595.000229] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1595.003045] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1595.004866] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1595.006113] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 1595.013012] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 1595.015619] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1595.017535] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1595.024920] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1595.062050] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1595.062057] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1779.555636] audit: type=1100 audit(1598201884.377:361): pid=7905 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.556537] audit: type=1101 audit(1598201884.378:362): pid=7905 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.556714] audit: type=1110 audit(1598201884.378:363): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.558312] audit: type=1105 audit(1598201884.380:364): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.559653] usbcore: deregistering interface driver uvcvideo
[ 1779.757491] audit: type=1106 audit(1598201884.579:365): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1779.757712] audit: type=1104 audit(1598201884.579:366): pid=7905 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.716334] audit: type=1101 audit(1598201896.538:367): pid=7932 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.716503] audit: type=1110 audit(1598201896.538:368): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.718038] audit: type=1105 audit(1598201896.539:369): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.734289] uvcvideo: `0x100,0x4' invalid for parameter `quirks'
[ 1791.756948] audit: type=1106 audit(1598201896.578:370): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1791.756996] audit: type=1104 audit(1598201896.578:371): pid=7932 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.453448] audit: type=1101 audit(1598201912.275:372): pid=7989 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.454229] audit: type=1110 audit(1598201912.276:373): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.457971] audit: type=1105 audit(1598201912.279:374): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.466199] uvcvideo: unknown parameter 'quircks' ignored
[ 1807.565129] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1807.565133] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1807.565135] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1807.916572] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1807.916577] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1807.916580] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1807.916584] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1807.916891] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input47
[ 1807.921314] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1807.921319] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1807.921321] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1807.978937] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1807.978944] uvcvideo: Failed to initialize the device (-5).
[ 1807.979100] usbcore: registered new interface driver uvcvideo
[ 1807.979102] USB Video Class driver (1.1.1)
[ 1807.980254] audit: type=1106 audit(1598201912.802:375): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1807.980544] audit: type=1104 audit(1598201912.802:376): pid=7989 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1811.469404] usb 1-2: USB disconnect, device number 16
[ 1813.082144] usb 1-2: new high-speed USB device number 17 using xhci_hcd
[ 1813.285092] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1813.285098] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1813.285102] usb 1-2: Product: USB Camera
[ 1813.285105] usb 1-2: Manufacturer: SunplusIT Inc
[ 1813.285107] usb 1-2: SerialNumber: 01.00.00
[ 1813.299735] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1813.299738] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 1813.299740] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1813.357188] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1813.357195] uvcvideo: Failed to initialize the device (-5).
[ 1813.373760] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1813.376681] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1813.378497] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1813.385622] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1813.388573] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1813.390178] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1813.397190] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 1813.400158] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 1813.442570] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1813.442576] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1886.986525] audit: type=1100 audit(1598201991.809:377): pid=8245 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.987716] audit: type=1101 audit(1598201991.810:378): pid=8245 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.987903] audit: type=1110 audit(1598201991.810:379): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.989514] audit: type=1105 audit(1598201991.812:380): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1886.990895] usbcore: deregistering interface driver uvcvideo
[ 1887.144227] audit: type=1106 audit(1598201991.967:381): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1887.144302] audit: type=1104 audit(1598201991.967:382): pid=8245 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.380425] audit: type=1101 audit(1598202016.203:383): pid=8321 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.381115] audit: type=1110 audit(1598202016.203:384): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.390221] audit: type=1105 audit(1598202016.212:385): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.507439] uvcvideo: Probing generic UVC device 12
[ 1911.509207] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 1911.509210] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1911.509212] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1911.851581] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1911.851594] uvcvideo: Found a valid video chain (1 -> 5).
[ 1911.878667] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 1911.878675] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 1911.878679] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 1911.878684] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 1911.878983] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input48
[ 1911.879250] uvcvideo: UVC device initialized.
[ 1911.879364] uvcvideo: Probing generic UVC device 2
[ 1911.883294] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1911.883298] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1911.883299] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1911.934970] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1911.934980] uvcvideo: Found a valid video chain (1 -> 5).
[ 1911.941088] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1911.946351] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1911.946359] uvcvideo: Failed to initialize the device (-5).
[ 1911.946491] usbcore: registered new interface driver uvcvideo
[ 1911.946493] USB Video Class driver (1.1.1)
[ 1911.947335] audit: type=1106 audit(1598202016.770:386): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1911.947428] audit: type=1104 audit(1598202016.770:387): pid=8321 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1917.596335] usb 1-2: USB disconnect, device number 17
[ 1919.265286] usb 1-2: new high-speed USB device number 18 using xhci_hcd
[ 1919.467318] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 1919.467324] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 1919.467328] usb 1-2: Product: USB Camera
[ 1919.467331] usb 1-2: Manufacturer: SunplusIT Inc
[ 1919.467334] usb 1-2: SerialNumber: 01.00.00
[ 1919.477951] uvcvideo: Probing generic UVC device 2
[ 1919.482209] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 1919.482212] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 1919.482214] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 1919.533784] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 1919.533797] uvcvideo: Found a valid video chain (1 -> 5).
[ 1919.539663] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 1919.545096] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 1919.545103] uvcvideo: Failed to initialize the device (-5).
[ 1919.561702] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 1919.564346] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 1919.566075] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 1919.573348] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 1919.576343] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 1919.577931] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 1919.579211] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 1919.585924] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 1919.623116] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 1919.623139] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 1942.548261] audit: type=1101 audit(1598202047.371:388): pid=8452 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.548783] audit: type=1110 audit(1598202047.371:389): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.554436] audit: type=1105 audit(1598202047.377:390): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.558742] usbcore: deregistering interface driver uvcvideo
[ 1942.724229] audit: type=1106 audit(1598202047.547:391): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1942.724475] audit: type=1104 audit(1598202047.547:392): pid=8452 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 1944.441166] usb 1-2: USB disconnect, device number 18
[ 1953.002003] i915 0000:00:02.0: HDMI-A-1: EDID is invalid:
[ 1953.002009] 	[00] BAD  00 ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff
[ 1953.002011] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002013] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002015] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002016] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002018] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002019] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1953.002021] 	[00] BAD  ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
[ 1956.591480] audit: type=1130 audit(1598202061.415:393): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=autorandr comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[ 1956.591488] audit: type=1131 audit(1598202061.415:394): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=autorandr comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[ 2206.525105] audit: type=1100 audit(1598202311.351:395): pid=9410 uid=1000 auid=1000 ses=2 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.528077] audit: type=1101 audit(1598202311.354:396): pid=9410 uid=1000 auid=1000 ses=2 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.528819] audit: type=1110 audit(1598202311.355:397): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.536972] audit: type=1105 audit(1598202311.363:398): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.540645] audit: type=1106 audit(1598202311.366:399): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2206.540732] audit: type=1104 audit(1598202311.366:400): pid=9410 uid=0 auid=1000 ses=2 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/2 res=success'
[ 2226.944678] audit: type=1100 audit(1598202331.771:401): pid=9455 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.945690] audit: type=1101 audit(1598202331.772:402): pid=9455 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.945865] audit: type=1110 audit(1598202331.772:403): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2226.947455] audit: type=1105 audit(1598202331.773:404): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2227.060438] uvcvideo: Probing generic UVC device 12
[ 2227.062326] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2227.062329] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 2227.062331] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2227.405072] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2227.405076] uvcvideo: Found a valid video chain (1 -> 5).
[ 2227.431511] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2227.431513] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2227.431515] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2227.431517] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2227.431696] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input49
[ 2227.431788] uvcvideo: UVC device initialized.
[ 2227.431848] usbcore: registered new interface driver uvcvideo
[ 2227.431849] USB Video Class driver (1.1.1)
[ 2227.432590] audit: type=1106 audit(1598202332.259:405): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2227.432692] audit: type=1104 audit(1598202332.259:406): pid=9455 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2232.566673] usb 1-2: new high-speed USB device number 19 using xhci_hcd
[ 2232.769926] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2232.769932] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2232.769936] usb 1-2: Product: USB Camera
[ 2232.769939] usb 1-2: Manufacturer: SunplusIT Inc
[ 2232.769941] usb 1-2: SerialNumber: 01.00.00
[ 2232.780344] uvcvideo: Probing generic UVC device 2
[ 2232.784715] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2232.784718] uvcvideo: Forcing device quirks to 0x2 by module parameter for testing purpose.
[ 2232.784719] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2232.836370] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2232.836382] uvcvideo: Found a valid video chain (1 -> 5).
[ 2232.842469] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2232.847757] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2232.847766] uvcvideo: Failed to initialize the device (-5).
[ 2232.864234] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2232.871764] usb 1-2: 3:2: cannot get freq at ep 0x86
[ 2232.874701] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2232.876254] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 2232.877720] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2232.884414] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2232.887436] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2232.889232] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2232.927085] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2232.927092] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2254.153930] audit: type=1101 audit(1598202358.979:407): pid=9555 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.154220] audit: type=1110 audit(1598202358.979:408): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.156222] audit: type=1105 audit(1598202358.981:409): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.157629] usbcore: deregistering interface driver uvcvideo
[ 2254.316540] audit: type=1106 audit(1598202359.142:410): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2254.316788] audit: type=1104 audit(1598202359.142:411): pid=9555 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.358529] audit: type=1100 audit(1598202640.185:412): pid=10377 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.359464] audit: type=1101 audit(1598202640.186:413): pid=10377 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.359686] audit: type=1110 audit(1598202640.187:414): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.362008] audit: type=1105 audit(1598202640.189:415): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.478733] uvcvideo: Probing generic UVC device 12
[ 2535.480442] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2535.480443] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2535.480444] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2535.823144] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2535.823150] uvcvideo: Found a valid video chain (1 -> 5).
[ 2535.850009] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2535.850015] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2535.850019] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2535.850022] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2535.850350] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input50
[ 2535.850610] uvcvideo: UVC device initialized.
[ 2535.850749] uvcvideo: Probing generic UVC device 2
[ 2535.854807] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2535.854812] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2535.854815] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2535.906307] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2535.906319] uvcvideo: Found a valid video chain (1 -> 5).
[ 2535.912143] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2535.917528] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2535.917536] uvcvideo: Failed to initialize the device (-5).
[ 2535.917661] usbcore: registered new interface driver uvcvideo
[ 2535.917663] USB Video Class driver (1.1.1)
[ 2535.918967] audit: type=1106 audit(1598202640.746:416): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2535.919295] audit: type=1104 audit(1598202640.746:417): pid=10377 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2538.314345] usb 1-2: USB disconnect, device number 19
[ 2540.573750] usb 1-2: new high-speed USB device number 20 using xhci_hcd
[ 2540.776734] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2540.776737] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2540.776739] usb 1-2: Product: USB Camera
[ 2540.776741] usb 1-2: Manufacturer: SunplusIT Inc
[ 2540.776742] usb 1-2: SerialNumber: 01.00.00
[ 2540.788485] uvcvideo: Probing generic UVC device 2
[ 2540.792707] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2540.792710] uvcvideo: Forcing device quirks to 0x1 by module parameter for testing purpose.
[ 2540.792712] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2540.844386] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2540.844398] uvcvideo: Found a valid video chain (1 -> 5).
[ 2540.850330] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2540.855590] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2540.855597] uvcvideo: Failed to initialize the device (-5).
[ 2540.872044] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2540.879686] usb 1-2: 3:2: cannot get freq at ep 0x86
[ 2540.882688] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2540.884322] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 2540.885816] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2540.892519] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2540.895504] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2540.897132] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2540.934715] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2540.934721] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2551.288523] audit: type=1101 audit(1598202656.116:418): pid=10448 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.288718] audit: type=1110 audit(1598202656.116:419): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.291110] audit: type=1105 audit(1598202656.118:420): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.292404] usbcore: deregistering interface driver uvcvideo
[ 2551.452626] audit: type=1106 audit(1598202656.280:421): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2551.452827] audit: type=1104 audit(1598202656.280:422): pid=10448 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2553.234834] usb 1-2: USB disconnect, device number 20
[ 2565.800203] audit: type=1101 audit(1598202670.626:423): pid=10510 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.800432] audit: type=1110 audit(1598202670.627:424): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.802958] audit: type=1105 audit(1598202670.629:425): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2565.916480] uvcvideo: Probing generic UVC device 12
[ 2565.918500] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2565.918503] uvcvideo: Forcing device quirks to 0xa by module parameter for testing purpose.
[ 2565.918504] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2566.261358] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2566.261397] uvcvideo: Found a valid video chain (1 -> 5).
[ 2566.287932] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2566.287937] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2566.287940] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2566.287943] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2566.288035] uvcvideo: UVC device initialized.
[ 2566.288136] usbcore: registered new interface driver uvcvideo
[ 2566.288138] USB Video Class driver (1.1.1)
[ 2566.289388] audit: type=1106 audit(1598202671.115:426): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2566.289629] audit: type=1104 audit(1598202671.116:427): pid=10510 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2573.869401] usb 1-2: new high-speed USB device number 21 using xhci_hcd
[ 2574.071272] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2574.071278] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2574.071282] usb 1-2: Product: USB Camera
[ 2574.071285] usb 1-2: Manufacturer: SunplusIT Inc
[ 2574.071287] usb 1-2: SerialNumber: 01.00.00
[ 2574.082035] uvcvideo: Probing generic UVC device 2
[ 2574.086230] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2574.086234] uvcvideo: Forcing device quirks to 0xa by module parameter for testing purpose.
[ 2574.086235] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2574.137669] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2574.137682] uvcvideo: Found a valid video chain (1 -> 5).
[ 2574.143752] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2574.149230] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2574.149238] uvcvideo: Failed to initialize the device (-5).
[ 2574.165755] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2574.168543] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2574.170443] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2574.177508] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2574.180258] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2574.181962] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2574.189040] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 2574.191818] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2574.231053] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2574.231059] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2585.096121] audit: type=1101 audit(1598202689.922:428): pid=10598 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.096247] audit: type=1110 audit(1598202689.922:429): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.097778] audit: type=1105 audit(1598202689.924:430): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.099147] usbcore: deregistering interface driver uvcvideo
[ 2585.260619] audit: type=1106 audit(1598202690.087:431): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2585.260843] audit: type=1104 audit(1598202690.087:432): pid=10598 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2586.580680] usb 1-2: USB disconnect, device number 21
[ 2600.904230] audit: type=1101 audit(1598202705.731:433): pid=10644 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2600.904393] audit: type=1110 audit(1598202705.731:434): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2600.905868] audit: type=1105 audit(1598202705.732:435): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2601.019526] uvcvideo: Probing generic UVC device 12
[ 2601.021424] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2601.021427] uvcvideo: Forcing device quirks to 0x50 by module parameter for testing purpose.
[ 2601.021429] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2601.364242] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2601.364255] uvcvideo: Found a valid video chain (1 -> 5).
[ 2601.390855] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2601.390861] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2601.390864] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2601.390867] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2601.391284] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input51
[ 2601.391475] uvcvideo: UVC device initialized.
[ 2601.391607] usbcore: registered new interface driver uvcvideo
[ 2601.391609] USB Video Class driver (1.1.1)
[ 2601.393118] audit: type=1106 audit(1598202706.219:436): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2601.393512] audit: type=1104 audit(1598202706.220:437): pid=10644 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2604.077476] usb 1-2: new high-speed USB device number 22 using xhci_hcd
[ 2604.278935] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2604.278941] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2604.278945] usb 1-2: Product: USB Camera
[ 2604.278948] usb 1-2: Manufacturer: SunplusIT Inc
[ 2604.278950] usb 1-2: SerialNumber: 01.00.00
[ 2604.289717] uvcvideo: Probing generic UVC device 2
[ 2604.294071] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2604.294075] uvcvideo: Forcing device quirks to 0x50 by module parameter for testing purpose.
[ 2604.294076] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2604.345749] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2604.345761] uvcvideo: Found a valid video chain (1 -> 5).
[ 2604.351693] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2604.357004] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2604.357011] uvcvideo: Failed to initialize the device (-5).
[ 2604.373679] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2604.376409] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2604.378247] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2604.385441] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2604.388299] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2604.415678] usb 1-2: 3:6: cannot get freq at ep 0x86
[ 2604.464250] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2604.464254] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2611.448079] audit: type=1101 audit(1598202716.274:438): pid=10691 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.448287] audit: type=1110 audit(1598202716.275:439): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.449859] audit: type=1105 audit(1598202716.276:440): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.451219] usbcore: deregistering interface driver uvcvideo
[ 2611.612099] audit: type=1106 audit(1598202716.438:441): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2611.612273] audit: type=1104 audit(1598202716.439:442): pid=10691 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2614.633781] usb 1-2: USB disconnect, device number 22
[ 2625.528598] audit: type=1101 audit(1598202730.355:443): pid=10757 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.528808] audit: type=1110 audit(1598202730.355:444): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.530760] audit: type=1105 audit(1598202730.357:445): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2625.644318] uvcvideo: Probing generic UVC device 12
[ 2625.646296] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2625.646299] uvcvideo: Forcing device quirks to 0xc8 by module parameter for testing purpose.
[ 2625.646300] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2625.987507] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2625.987521] uvcvideo: Found a valid video chain (1 -> 5).
[ 2626.014606] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2626.014612] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2626.014615] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2626.014618] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2626.014833] uvcvideo: UVC device initialized.
[ 2626.014952] usbcore: registered new interface driver uvcvideo
[ 2626.014955] USB Video Class driver (1.1.1)
[ 2626.016249] audit: type=1106 audit(1598202730.843:446): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2626.016590] audit: type=1104 audit(1598202730.843:447): pid=10757 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2629.597254] usb 1-2: new high-speed USB device number 23 using xhci_hcd
[ 2629.800245] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2629.800252] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2629.800255] usb 1-2: Product: USB Camera
[ 2629.800259] usb 1-2: Manufacturer: SunplusIT Inc
[ 2629.800261] usb 1-2: SerialNumber: 01.00.00
[ 2629.811053] uvcvideo: Probing generic UVC device 2
[ 2629.815210] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2629.815213] uvcvideo: Forcing device quirks to 0xc8 by module parameter for testing purpose.
[ 2629.815215] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2629.866980] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2629.866992] uvcvideo: Found a valid video chain (1 -> 5).
[ 2629.872948] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2629.878170] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2629.878178] uvcvideo: Failed to initialize the device (-5).
[ 2629.894823] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2629.897476] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2629.899440] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2629.906502] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2629.909306] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2629.911138] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2629.918374] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 2629.921284] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 2629.960766] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2629.960773] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 2640.040598] usb 1-2: USB disconnect, device number 23
[ 2642.426789] audit: type=1101 audit(1598202747.253:448): pid=10830 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.426942] audit: type=1110 audit(1598202747.253:449): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.428593] audit: type=1105 audit(1598202747.255:450): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.430067] usbcore: deregistering interface driver uvcvideo
[ 2642.572310] audit: type=1106 audit(1598202747.399:451): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2642.572562] audit: type=1104 audit(1598202747.399:452): pid=10830 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.023952] audit: type=1101 audit(1598202754.850:453): pid=10875 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.024134] audit: type=1110 audit(1598202754.851:454): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.025748] audit: type=1105 audit(1598202754.852:455): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.139148] uvcvideo: Probing generic UVC device 12
[ 2650.141153] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 2650.141157] uvcvideo: Forcing device quirks to 0x64 by module parameter for testing purpose.
[ 2650.141159] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2650.483999] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2650.484006] uvcvideo: Found a valid video chain (1 -> 5).
[ 2650.511038] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 2650.511044] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 2650.511047] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 2650.511050] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 2650.511389] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input52
[ 2650.511590] uvcvideo: UVC device initialized.
[ 2650.511703] usbcore: registered new interface driver uvcvideo
[ 2650.511706] USB Video Class driver (1.1.1)
[ 2650.513484] audit: type=1106 audit(1598202755.340:456): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2650.513831] audit: type=1104 audit(1598202755.340:457): pid=10875 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 2654.637171] usb 1-2: new high-speed USB device number 24 using xhci_hcd
[ 2654.840318] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 2654.840325] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 2654.840329] usb 1-2: Product: USB Camera
[ 2654.840332] usb 1-2: Manufacturer: SunplusIT Inc
[ 2654.840335] usb 1-2: SerialNumber: 01.00.00
[ 2654.851173] uvcvideo: Probing generic UVC device 2
[ 2654.855434] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 2654.855438] uvcvideo: Forcing device quirks to 0x64 by module parameter for testing purpose.
[ 2654.855439] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 2654.907078] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 2654.907091] uvcvideo: Found a valid video chain (1 -> 5).
[ 2654.912989] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 2654.918271] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 2654.918279] uvcvideo: Failed to initialize the device (-5).
[ 2654.935019] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 2654.937759] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 2654.939442] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 2654.946577] usb 1-2: 3:4: cannot get freq at ep 0x86
[ 2654.949424] usb 1-2: 3:5: cannot set freq 24000 to ep 0x86
[ 2654.951120] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 2654.952372] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 2654.959153] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 2654.996452] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 2654.996458] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 3462.270622] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 3462.270635] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 3462.270641] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 3462.270646] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 3462.270653] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 3462.270657] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000001/0000e000
[ 3462.270660] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 3462.270664] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 3679.772164] audit: type=1100 audit(1598203784.606:458): pid=14495 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.773206] audit: type=1101 audit(1598203784.607:459): pid=14495 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.773440] audit: type=1110 audit(1598203784.607:460): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.775843] audit: type=1105 audit(1598203784.610:461): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.777229] usbcore: deregistering interface driver uvcvideo
[ 3679.949054] audit: type=1106 audit(1598203784.783:462): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3679.949141] audit: type=1104 audit(1598203784.783:463): pid=14495 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.876694] audit: type=1101 audit(1598203789.711:464): pid=14515 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.876843] audit: type=1110 audit(1598203789.711:465): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.878417] audit: type=1105 audit(1598203789.712:466): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3684.992970] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 3685.361606] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 3685.361607] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 3685.361608] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 3685.361609] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 3685.361722] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input53
[ 3685.365279] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 3685.422765] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 3685.428178] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 3685.428180] uvcvideo: Failed to initialize the device (-5).
[ 3685.428226] usbcore: registered new interface driver uvcvideo
[ 3685.428226] USB Video Class driver (1.1.1)
[ 3685.428710] audit: type=1106 audit(1598203790.263:467): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3685.428830] audit: type=1104 audit(1598203790.263:468): pid=14515 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3943.426606] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 3943.426612] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 3943.426614] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 3943.426624] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 3943.426629] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 3943.426631] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 3943.426633] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 3943.426634] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 3943.426636] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 3957.618799] audit: type=1100 audit(1598204062.455:469): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=failed'
[ 3961.569642] audit: type=1100 audit(1598204066.405:470): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.570288] audit: type=1101 audit(1598204066.406:471): pid=15431 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.570520] audit: type=1110 audit(1598204066.406:472): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.572856] audit: type=1105 audit(1598204066.409:473): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.574253] usbcore: deregistering interface driver uvcvideo
[ 3961.731155] audit: type=1106 audit(1598204066.567:474): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3961.731275] audit: type=1104 audit(1598204066.567:475): pid=15431 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.842264] audit: type=1101 audit(1598204083.678:476): pid=15484 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.842465] audit: type=1110 audit(1598204083.678:477): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.845014] audit: type=1105 audit(1598204083.681:478): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3978.958278] uvcvideo: Probing generic UVC device 12
[ 3978.960038] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 3979.301679] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 3979.301683] uvcvideo: Found a valid video chain (1 -> 5).
[ 3979.328145] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 3979.328147] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 3979.328148] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 3979.328149] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 3979.328290] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input54
[ 3979.328355] uvcvideo: UVC device initialized.
[ 3979.328412] uvcvideo: Probing generic UVC device 2
[ 3979.332246] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 3979.383646] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 3979.383650] uvcvideo: Found a valid video chain (1 -> 5).
[ 3979.389706] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 3979.395099] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 3979.395101] uvcvideo: Failed to initialize the device (-5).
[ 3979.395167] usbcore: registered new interface driver uvcvideo
[ 3979.395168] USB Video Class driver (1.1.1)
[ 3979.395675] audit: type=1106 audit(1598204084.232:479): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 3979.395741] audit: type=1104 audit(1598204084.232:480): pid=15484 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_env,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4012.811522] audit: type=1100 audit(1598204117.647:481): pid=15537 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4027.211803] audit: type=1100 audit(1598204132.047:482): pid=15622 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4042.947651] audit: type=1100 audit(1598204147.783:483): pid=15645 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=? acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=failed'
[ 4086.097120] audit: type=1100 audit(1598204190.934:484): pid=15836 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_faillock,pam_permit,pam_faillock acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.098185] audit: type=1101 audit(1598204190.935:485): pid=15836 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix,pam_permit,pam_time acct="coba" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.098412] audit: type=1110 audit(1598204190.935:486): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4086.100854] audit: type=1105 audit(1598204190.938:487): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4114.050265] audit: type=1108 audit(1598204218.887:488): pid=15840 uid=0 auid=1000 ses=1 msg='op=PAM:chauthtok grantors=pam_unix acct="root" exe="/usr/bin/passwd" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4114.050795] audit: type=1106 audit(1598204218.888:489): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:session_close grantors=pam_limits,pam_unix,pam_permit acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4114.050877] audit: type=1104 audit(1598204218.888:490): pid=15836 uid=0 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_faillock,pam_permit,pam_faillock acct="root" exe="/usr/bin/sudo" hostname=? addr=? terminal=/dev/pts/0 res=success'
[ 4121.860939] audit: type=1100 audit(1598204226.698:491): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:authentication grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.860998] audit: type=1101 audit(1598204226.698:492): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:accounting grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.861301] audit: type=1103 audit(1598204226.698:493): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:setcred grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4121.861369] audit: type=1105 audit(1598204226.698:494): pid=15926 uid=1000 auid=1000 ses=1 msg='op=PAM:session_open grantors=pam_unix acct="root" exe="/usr/bin/su" hostname=XPS addr=? terminal=pts/0 res=success'
[ 4152.952122] usb 1-2: USB disconnect, device number 24
[ 4154.859298] usb 1-2: new high-speed USB device number 25 using xhci_hcd
[ 4155.060874] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4155.060875] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4155.060876] usb 1-2: Product: USB Camera
[ 4155.060877] usb 1-2: Manufacturer: SunplusIT Inc
[ 4155.060878] usb 1-2: SerialNumber: 01.00.00
[ 4155.075781] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4155.133226] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4155.138629] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4155.138631] uvcvideo: Failed to initialize the device (-5).
[ 4155.155061] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4155.157932] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4155.159735] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4155.161151] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4155.167952] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4155.170747] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4155.172419] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4155.173833] usb 1-2: 3:8: cannot set freq 48000 to ep 0x86
[ 4155.213817] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4155.213818] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4155.261874] usb 1-2: 3:7: cannot get freq at ep 0x86
[ 4177.308443] usbcore: deregistering interface driver uvcvideo
[ 4191.981410] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4191.981411] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4191.981412] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4192.331444] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4192.331445] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4192.331446] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4192.331447] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4192.331556] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input55
[ 4192.335131] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4192.335132] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4192.335132] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4192.392561] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4192.392564] uvcvideo: Failed to initialize the device (-5).
[ 4192.392632] usbcore: registered new interface driver uvcvideo
[ 4192.392633] USB Video Class driver (1.1.1)
[ 4195.971015] usb 1-2: USB disconnect, device number 25
[ 4197.466994] usb 1-2: new high-speed USB device number 26 using xhci_hcd
[ 4197.668618] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4197.668620] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4197.668620] usb 1-2: Product: USB Camera
[ 4197.668621] usb 1-2: Manufacturer: SunplusIT Inc
[ 4197.668622] usb 1-2: SerialNumber: 01.00.00
[ 4197.683645] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4197.683646] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4197.683665] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4197.741033] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4197.741035] uvcvideo: Failed to initialize the device (-5).
[ 4197.757452] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4197.760303] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4197.762081] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4197.763499] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4197.770188] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4197.773089] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4197.774830] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4197.781874] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4197.819063] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4197.819065] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4199.033242] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 4199.033249] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 4199.033251] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 4199.033252] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 4199.033257] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 4199.033258] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 4199.033259] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 4199.033260] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 4199.033261] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 4218.876218] usbcore: deregistering interface driver uvcvideo
[ 4222.572656] usb 1-2: USB disconnect, device number 26
[ 4249.843486] uvcvideo: unknown parameter 'quircks' ignored
[ 4249.942141] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4250.308695] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4250.308697] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4250.308698] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4250.308698] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4250.308838] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input56
[ 4250.308987] usbcore: registered new interface driver uvcvideo
[ 4250.308988] USB Video Class driver (1.1.1)
[ 4254.840857] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:04:00.0
[ 4254.840863] pcieport 0000:00:1d.0: AER: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 4254.840865] pcieport 0000:00:1d.0: AER:   device [8086:a118] error status/mask=00001000/00002000
[ 4254.840867] pcieport 0000:00:1d.0: AER:    [12] Timeout               
[ 4254.840870] nvme 0000:04:00.0: AER: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 4254.840871] nvme 0000:04:00.0: AER:   device [1c5c:1284] error status/mask=00000081/0000e000
[ 4254.840872] nvme 0000:04:00.0: AER:    [ 0] RxErr                  (First)
[ 4254.840873] nvme 0000:04:00.0: AER:    [ 7] BadDLLP               
[ 4254.840874] nvme 0000:04:00.0: AER:   Error of this Agent is reported first
[ 4258.090558] usb 1-2: new high-speed USB device number 27 using xhci_hcd
[ 4258.291872] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4258.291873] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4258.291874] usb 1-2: Product: USB Camera
[ 4258.291875] usb 1-2: Manufacturer: SunplusIT Inc
[ 4258.291876] usb 1-2: SerialNumber: 01.00.00
[ 4258.306735] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4258.364188] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4258.369638] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4258.369640] uvcvideo: Failed to initialize the device (-5).
[ 4258.386045] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4258.388909] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4258.390732] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4258.392135] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4258.398835] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4258.401569] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4258.403352] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4258.410364] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4258.447541] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4258.447542] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4373.688400] usb 1-2: USB disconnect, device number 27
[ 4389.377875] usb 1-2: new high-speed USB device number 28 using xhci_hcd
[ 4389.581226] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4389.581232] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4389.581235] usb 1-2: Product: USB Camera
[ 4389.581237] usb 1-2: Manufacturer: SunplusIT Inc
[ 4389.581240] usb 1-2: SerialNumber: 01.00.00
[ 4389.594370] uvcvideo: Probing generic UVC device 2
[ 4389.598536] uvcvideo: Found format MJPEG.
[ 4389.598540] uvcvideo: - 1920x1080 (30.0 fps)
[ 4389.598543] uvcvideo: - 640x480 (30.0 fps)
[ 4389.598545] uvcvideo: - 320x240 (30.0 fps)
[ 4389.598546] uvcvideo: - 800x600 (30.0 fps)
[ 4389.598548] uvcvideo: - 1280x720 (30.0 fps)
[ 4389.598551] uvcvideo: Found format YUV 4:2:2 (YUYV).
[ 4389.598553] uvcvideo: - 1920x1080 (4.0 fps)
[ 4389.598555] uvcvideo: - 640x480 (15.0 fps)
[ 4389.598556] uvcvideo: - 320x240 (30.0 fps)
[ 4389.598558] uvcvideo: - 800x600 (20.0 fps)
[ 4389.598560] uvcvideo: - 1280x720 (10.0 fps)
[ 4389.598568] uvcvideo: Found a Status endpoint (addr 87).
[ 4389.598570] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4389.602696] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/2 to device 2 entity 1
[ 4389.602703] uvcvideo: Adding mapping 'Exposure, Auto' to control 00000000-0000-0000-0000-000000000001/2.
[ 4389.607070] uvcvideo: Added control 00000000-0000-0000-0000-000000000001/4 to device 2 entity 1
[ 4389.607076] uvcvideo: Adding mapping 'Exposure (Absolute)' to control 00000000-0000-0000-0000-000000000001/4.
[ 4389.611508] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/2 to device 2 entity 2
[ 4389.611514] uvcvideo: Adding mapping 'Brightness' to control 00000000-0000-0000-0000-000000000101/2.
[ 4389.615798] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/3 to device 2 entity 2
[ 4389.615804] uvcvideo: Adding mapping 'Contrast' to control 00000000-0000-0000-0000-000000000101/3.
[ 4389.619902] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/6 to device 2 entity 2
[ 4389.619908] uvcvideo: Adding mapping 'Hue' to control 00000000-0000-0000-0000-000000000101/6.
[ 4389.624255] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/7 to device 2 entity 2
[ 4389.624262] uvcvideo: Adding mapping 'Saturation' to control 00000000-0000-0000-0000-000000000101/7.
[ 4389.628617] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/8 to device 2 entity 2
[ 4389.628623] uvcvideo: Adding mapping 'Sharpness' to control 00000000-0000-0000-0000-000000000101/8.
[ 4389.632999] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/9 to device 2 entity 2
[ 4389.633006] uvcvideo: Adding mapping 'Gamma' to control 00000000-0000-0000-0000-000000000101/9.
[ 4389.637270] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/10 to device 2 entity 2
[ 4389.637277] uvcvideo: Adding mapping 'White Balance Temperature' to control 00000000-0000-0000-0000-000000000101/10.
[ 4389.641605] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/1 to device 2 entity 2
[ 4389.641610] uvcvideo: Adding mapping 'Backlight Compensation' to control 00000000-0000-0000-0000-000000000101/1.
[ 4389.645797] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/5 to device 2 entity 2
[ 4389.645803] uvcvideo: Adding mapping 'Power Line Frequency' to control 00000000-0000-0000-0000-000000000101/5.
[ 4389.650069] uvcvideo: Added control 00000000-0000-0000-0000-000000000101/11 to device 2 entity 2
[ 4389.650076] uvcvideo: Adding mapping 'White Balance Temperature, Auto' to control 00000000-0000-0000-0000-000000000101/11.
[ 4389.650083] uvcvideo: Scanning UVC chain: OT 5 <- XU 4 <- XU 3 <- PU 2 <- IT 1
[ 4389.650092] uvcvideo: Found a valid video chain (1 -> 5).
[ 4389.656219] uvcvideo: UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.
[ 4389.661652] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4389.661659] uvcvideo: Failed to initialize the device (-5).
[ 4389.678205] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4389.680720] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4389.682510] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4389.684022] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4389.690784] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4389.693716] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4389.695331] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4389.702366] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4389.739633] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4389.739639] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1
[ 4450.627809] usbcore: deregistering interface driver uvcvideo
[ 4450.724448] uvcvideo: Resuming interface 0
[ 4450.724452] uvcvideo: Resuming interface 1
[ 4452.633009] usb 1-2: USB disconnect, device number 28
[ 4473.945122] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD (0c45:6713)
[ 4473.945125] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4473.945127] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4474.298209] uvcvideo 1-12:1.0: Entity type for entity Extension 4 was not initialized!
[ 4474.298216] uvcvideo 1-12:1.0: Entity type for entity Extension 3 was not initialized!
[ 4474.298220] uvcvideo 1-12:1.0: Entity type for entity Processing 2 was not initialized!
[ 4474.298224] uvcvideo 1-12:1.0: Entity type for entity Camera 1 was not initialized!
[ 4474.298521] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb1/1-12/1-12:1.0/input/input57
[ 4474.298849] usbcore: registered new interface driver uvcvideo
[ 4474.298851] USB Video Class driver (1.1.1)
[ 4479.729225] usb 1-2: new high-speed USB device number 29 using xhci_hcd
[ 4479.932141] usb 1-2: New USB device found, idVendor=1bcf, idProduct=248c, bcdDevice= 4.17
[ 4479.932144] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[ 4479.932147] usb 1-2: Product: USB Camera
[ 4479.932149] usb 1-2: Manufacturer: SunplusIT Inc
[ 4479.932150] usb 1-2: SerialNumber: 01.00.00
[ 4479.947198] uvcvideo: Found UVC 1.10 device USB Camera (1bcf:248c)
[ 4479.947201] uvcvideo: Forcing device quirks to 0x100 by module parameter for testing purpose.
[ 4479.947203] uvcvideo: Please report required quirks to the linux-uvc-devel mailing list.
[ 4480.004749] uvcvideo: Failed to query (129) UVC probe control : 26 (exp. 34).
[ 4480.004756] uvcvideo: Failed to initialize the device (-5).
[ 4480.021209] usb 1-2: 3:1: cannot get freq at ep 0x86
[ 4480.023956] usb 1-2: 3:2: cannot set freq 11025 to ep 0x86
[ 4480.025640] usb 1-2: 3:3: cannot set freq 16000 to ep 0x86
[ 4480.027003] usb 1-2: 3:4: cannot set freq 22050 to ep 0x86
[ 4480.033809] usb 1-2: 3:5: cannot get freq at ep 0x86
[ 4480.036706] usb 1-2: 3:6: cannot set freq 32000 to ep 0x86
[ 4480.038511] usb 1-2: 3:7: cannot set freq 44100 to ep 0x86
[ 4480.045706] usb 1-2: 3:8: cannot get freq at ep 0x86
[ 4480.082957] usb 1-2: Warning! Unlikely big volume range (=4096), cval->res is probably wrong.
[ 4480.082964] usb 1-2: [7] FU [Mic Capture Volume] ch = 1, val = 0/4096/1

--------------CF06069D7EE21FAEE285AA8B
Content-Type: text/x-log; charset=UTF-8;
 name="lsusb.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="lsusb.log"


Bus 001 Device 031: ID 1bcf:248c Sunplus Innovation Technology Inc. USB Camera
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               2.00
  bDeviceClass          239 Miscellaneous Device
  bDeviceSubClass         2 
  bDeviceProtocol         1 Interface Association
  bMaxPacketSize0        64
  idVendor           0x1bcf Sunplus Innovation Technology Inc.
  idProduct          0x248c 
  bcdDevice            4.17
  iManufacturer           1 SunplusIT Inc
  iProduct                2 USB Camera
  iSerial                 3 01.00.00
  bNumConfigurations      1
  Configuration Descriptor:
    bLength                 9
    bDescriptorType         2
    wTotalLength       0x0452
    bNumInterfaces          4
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
      iFunction               4 USB Camera
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        0
      bAlternateSetting       0
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      1 Video Control
      bInterfaceProtocol      0 
      iInterface              4 USB Camera
      VideoControl Interface Descriptor:
        bLength                13
        bDescriptorType        36
        bDescriptorSubtype      1 (HEADER)
        bcdUVC               1.10
        wTotalLength       0x006e
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
        bLength                12
        bDescriptorType        36
        bDescriptorSubtype      5 (PROCESSING_UNIT)
        bUnitID                 2
        bSourceID               1
        wMaxMultiplier      16384
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
        bmVideoStandards     0x00
      VideoControl Interface Descriptor:
        bLength                29
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 3
        guidExtensionCode         {d5c2f42c-1808-4d9f-be56-753e271c9244}
        bNumControl             3
        bNrPins                 1
        baSourceID( 0)          2
        bControlSize            4
        bmControls( 0)       0x07
        bmControls( 1)       0x00
        bmControls( 2)       0x00
        bmControls( 3)       0x00
        iExtension              0 
      VideoControl Interface Descriptor:
        bLength                29
        bDescriptorType        36
        bDescriptorSubtype      6 (EXTENSION_UNIT)
        bUnitID                 4
        guidExtensionCode         {63610682-5070-49ab-b8cc-b3855e8d221d}
        bNumControl            25
        bNrPins                 1
        baSourceID( 0)          3
        bControlSize            4
        bmControls( 0)       0xff
        bmControls( 1)       0xff
        bmControls( 2)       0x77
        bmControls( 3)       0x07
        iExtension              0 
      VideoControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             5
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          0
        bSourceID               4
        iTerminal               0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x87  EP 7 IN
        bmAttributes            3
          Transfer Type            Interrupt
          Synch Type               None
          Usage Type               Data
        wMaxPacketSize     0x0010  1x 16 bytes
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
        bLength                            15
        bDescriptorType                    36
        bDescriptorSubtype                  1 (INPUT_HEADER)
        bNumFormats                         2
        wTotalLength                   0x016d
        bEndPointAddress                  129
        bmInfo                              0
        bTerminalLink                       5
        bStillCaptureMethod                 1
        bTriggerSupport                     0
        bTriggerUsage                       0
        bControlSize                        1
        bmaControls( 0)                     4
        bmaControls( 1)                     0
      VideoStreaming Interface Descriptor:
        bLength                            11
        bDescriptorType                    36
        bDescriptorSubtype                  6 (FORMAT_MJPEG)
        bFormatIndex                        1
        bNumFrameDescriptors                5
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
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         1
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                995328000
        dwMaxBitRate                995328000
        dwMaxVideoFrameBufferSize     4147200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         2
        bmCapabilities                   0x01
          Still image supported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                147456000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         3
        bmCapabilities                   0x01
          Still image supported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                 36864000
        dwMaxBitRate                 36864000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         4
        bmCapabilities                   0x01
          Still image supported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                230400000
        dwMaxBitRate                230400000
        dwMaxVideoFrameBufferSize      960000
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  7 (FRAME_MJPEG)
        bFrameIndex                         5
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                442368000
        dwMaxBitRate                442368000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                             6
        bDescriptorType                    36
        bDescriptorSubtype                 13 (COLORFORMAT)
        bColorPrimaries                     1 (BT.709,sRGB)
        bTransferCharacteristics            1 (BT.709)
        bMatrixCoefficients                 4 (SMPTE 170M (BT.601))
      VideoStreaming Interface Descriptor:
        bLength                            27
        bDescriptorType                    36
        bDescriptorSubtype                  4 (FORMAT_UNCOMPRESSED)
        bFormatIndex                        2
        bNumFrameDescriptors                5
        guidFormat                            {32595559-0000-0010-8000-00aa00389b71}
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
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         1
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1920
        wHeight                          1080
        dwMinBitRate                132710400
        dwMaxBitRate                132710400
        dwMaxVideoFrameBufferSize     4147200
        dwDefaultFrameInterval        2500000
        bFrameIntervalType                  1
        dwFrameInterval( 0)           2500000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         2
        bmCapabilities                   0x01
          Still image supported
        wWidth                            640
        wHeight                           480
        dwMinBitRate                 73728000
        dwMaxBitRate                 73728000
        dwMaxVideoFrameBufferSize      614400
        dwDefaultFrameInterval         666666
        bFrameIntervalType                  1
        dwFrameInterval( 0)            666666
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         3
        bmCapabilities                   0x01
          Still image supported
        wWidth                            320
        wHeight                           240
        dwMinBitRate                 36864000
        dwMaxBitRate                 36864000
        dwMaxVideoFrameBufferSize      153600
        dwDefaultFrameInterval         333333
        bFrameIntervalType                  1
        dwFrameInterval( 0)            333333
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         4
        bmCapabilities                   0x01
          Still image supported
        wWidth                            800
        wHeight                           600
        dwMinBitRate                153600000
        dwMaxBitRate                153600000
        dwMaxVideoFrameBufferSize      960000
        dwDefaultFrameInterval         500000
        bFrameIntervalType                  1
        dwFrameInterval( 0)            500000
      VideoStreaming Interface Descriptor:
        bLength                            30
        bDescriptorType                    36
        bDescriptorSubtype                  5 (FRAME_UNCOMPRESSED)
        bFrameIndex                         5
        bmCapabilities                   0x01
          Still image supported
        wWidth                           1280
        wHeight                           720
        dwMinBitRate                147456000
        dwMaxBitRate                147456000
        dwMaxVideoFrameBufferSize     1843200
        dwDefaultFrameInterval        1000000
        bFrameIntervalType                  1
        dwFrameInterval( 0)           1000000
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
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x00c0  1x 192 bytes
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
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0180  1x 384 bytes
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
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0200  1x 512 bytes
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
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0280  1x 640 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       5
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0320  1x 800 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       6
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x03b0  1x 944 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       7
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0a80  2x 640 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       8
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0b20  2x 800 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting       9
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0be0  2x 992 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting      10
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x13c0  3x 960 bytes
        bInterval               1
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        1
      bAlternateSetting      11
      bNumEndpoints           1
      bInterfaceClass        14 Video
      bInterfaceSubClass      2 Video Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      Endpoint Descriptor:
        bLength                 7
        bDescriptorType         5
        bEndpointAddress     0x81  EP 1 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x13fc  3x 1020 bytes
        bInterval               1
    Interface Association:
      bLength                 8
      bDescriptorType        11
      bFirstInterface         2
      bInterfaceCount         2
      bFunctionClass          1 Audio
      bFunctionSubClass       2 Streaming
      bFunctionProtocol       0 
      iFunction               0 
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
        bTerminalID             6
        wTerminalType      0x0201 Microphone
        bAssocTerminal          0
        bNrChannels             1
        wChannelConfig     0x0003
          Left Front (L)
          Right Front (R)
        iChannelNames           0 
        iTerminal               0 
      AudioControl Interface Descriptor:
        bLength                 8
        bDescriptorType        36
        bDescriptorSubtype      6 (FEATURE_UNIT)
        bUnitID                 7
        bSourceID               6
        bControlSize            1
        bmaControls(0)       0x03
          Mute Control
          Volume Control
        iFeature                0 
      AudioControl Interface Descriptor:
        bLength                 9
        bDescriptorType        36
        bDescriptorSubtype      3 (OUTPUT_TERMINAL)
        bTerminalID             8
        wTerminalType      0x0101 USB Streaming
        bAssocTerminal          6
        bSourceID               7
        iTerminal               0 
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
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]         8000
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0018  1x 24 bytes
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       2
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]        11025
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x001c  1x 28 bytes
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       3
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]        16000
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0028  1x 40 bytes
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       4
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]        22050
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0030  1x 48 bytes
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       5
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]        24000
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0038  1x 56 bytes
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       6
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]        32000
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0048  1x 72 bytes
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       7
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]        44100
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x005c  1x 92 bytes
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
    Interface Descriptor:
      bLength                 9
      bDescriptorType         4
      bInterfaceNumber        3
      bAlternateSetting       8
      bNumEndpoints           1
      bInterfaceClass         1 Audio
      bInterfaceSubClass      2 Streaming
      bInterfaceProtocol      0 
      iInterface              0 
      AudioStreaming Interface Descriptor:
        bLength                 7
        bDescriptorType        36
        bDescriptorSubtype      1 (AS_GENERAL)
        bTerminalLink           8
        bDelay                  1 frames
        wFormatTag         0x0001 PCM
      AudioStreaming Interface Descriptor:
        bLength                11
        bDescriptorType        36
        bDescriptorSubtype      2 (FORMAT_TYPE)
        bFormatType             1 (FORMAT_TYPE_I)
        bNrChannels             1
        bSubframeSize           2
        bBitResolution         16
        bSamFreqType            1 Discrete
        tSamFreq[ 0]        48000
      Endpoint Descriptor:
        bLength                 9
        bDescriptorType         5
        bEndpointAddress     0x86  EP 6 IN
        bmAttributes            5
          Transfer Type            Isochronous
          Synch Type               Asynchronous
          Usage Type               Data
        wMaxPacketSize     0x0068  1x 104 bytes
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

--------------CF06069D7EE21FAEE285AA8B
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--------------CF06069D7EE21FAEE285AA8B
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--------------CF06069D7EE21FAEE285AA8B--

