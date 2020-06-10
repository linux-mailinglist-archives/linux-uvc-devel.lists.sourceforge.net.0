Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 151A81F5780
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 10 Jun 2020 17:15:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jj2RU-0003so-I1; Wed, 10 Jun 2020 15:15:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dallarosa@gmail.com>) id 1jj2RS-0003sg-J6
 for linux-uvc-devel@lists.sourceforge.net; Wed, 10 Jun 2020 15:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rBbEniNeEnsL1TBT3bOA/7Ex3RoMuFAZ5Ooi82TPy94=; b=ci0jOLwN2jxAIt8fAIlJ0417Co
 IbffXXqrS4dRNik2FWF4wLNsSYMi4Ubve59gudsdazGAdFTg1tYWfAuv8T1XfAs6GDgxJxJZq0onW
 ROdP8gsH6g5ME/zv/bK8MonLDxOetp/JFD25yiYVW59A9Qp+3XxW3tIZtCHv8zqq4uwU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rBbEniNeEnsL1TBT3bOA/7Ex3RoMuFAZ5Ooi82TPy94=; b=X
 RSAcsowmHO6uQHaalpYrnglcbEHYzl4OHWJBubGnc3u9SRVBZWPs+L0lLCBrNbzu/rjjAPaD6I3K6
 fpi+DXc1TDxhUIFoq15iPydjtO/SZBIwKpGt5KgVvNOVqR96wWlB0E9s/IK7XSAo9LpYNDJ59qYyP
 5PkK8XgVCJq/FWqA=;
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jj2RP-00FkUn-AK
 for linux-uvc-devel@lists.sourceforge.net; Wed, 10 Jun 2020 15:15:02 +0000
Received: by mail-yb1-f194.google.com with SMTP id k18so1319355ybm.13
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 10 Jun 2020 08:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rBbEniNeEnsL1TBT3bOA/7Ex3RoMuFAZ5Ooi82TPy94=;
 b=Tp0qYEKETnCWQvaj3vqyB7hu1mXm/9hVCOynyuuQRyoUdKkF+/gO07o0MmGPyJwrZk
 5094/pgs4ebS1B3mEj6LrCVOJ2AdKQZAkXNx55D+CeFvm+YCB97g+4Hat2r7YlCfiKnm
 AbAupr+lVQuXhNlQnrIIjTSjltVwcoMGxeoViIgXT35Jw+VbEanLMdDqJ7f512kZKj4/
 mLE2p7eWfkfU8E31dF1d2tbQj4RHVVh67TrLodiFRG6PsgKOHQDFpsQWG6SAhANthzz/
 dDMZ/qPSpeE41D/7nOYoh5HpabKJBQdn4wXVmDpPe+gOoDPUZPYBNStfQ6S1NkU2TdRD
 k08g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rBbEniNeEnsL1TBT3bOA/7Ex3RoMuFAZ5Ooi82TPy94=;
 b=Ua3zHRbIW1SRh0eii5+BByu2ClK9LWjlWzfTbX3ClMxJIKWPyYbiYEsXJNjfBxpNdg
 MDVItxjI8yKjdiGmwto/+ibN1lsyOVQ4X3MizFmJ5u6QE8q9pPQAO4z1cyEWKBZ34qEP
 vivPt0sbTTXB+4nox+WD+7hcvv2AuTCF7/qObwXJEeMwarYDs+9Cp7vLpkCAyVNylFXI
 cyGhcDXlQmTdVJG7RDocHMUnFK1UQMlhaun4mqF+Aj+mNDfrcq2QdHGeHa84hUltCfdK
 67UeMqHYbNdiSTZIUTusrg0bUN84Hu8P9UVBGo426K7RetaVvitLk8HdP9zAc7C/qhN/
 wktw==
X-Gm-Message-State: AOAM531eVXEkh13C3vpW7qNUR+fS1OyZY6PCxNS4Me0KH0jLvi7uwElP
 2rKP/c8ZpxARrBuMQ1rPhH3jsSDPediHsujJbL8bmKKigZU=
X-Google-Smtp-Source: ABdhPJxwikXm7HvVD+KkEBHqH1IrdBA8C4Hxsa518ehwQMIrNyOb5MKsUjB6h+HwdLScYZMEUGmZWZEZL/4SVcoquso=
X-Received: by 2002:a25:694d:: with SMTP id e74mr6227788ybc.195.1591802092869; 
 Wed, 10 Jun 2020 08:14:52 -0700 (PDT)
MIME-Version: 1.0
From: Francisco Dalla Rosa Soares <dallarosa@gmail.com>
Date: Thu, 11 Jun 2020 00:14:42 +0900
Message-ID: <CADKBw2JwvMVrD5-Uxz7Nwf1iEwKSiHE8RgUJ9WzgA=rqTY12Gw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dallarosa[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jj2RP-00FkUn-AK
Subject: [linux-uvc-devel] Logitech StreamCam
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
Content-Type: multipart/mixed; boundary="===============1164027691809147384=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============1164027691809147384==
Content-Type: multipart/alternative; boundary="0000000000004c678305a7bc4e4e"

--0000000000004c678305a7bc4e4e
Content-Type: text/plain; charset="UTF-8"

Hi,

I found a different thread on this camera from a month ago (
https://sourceforge.net/p/linux-uvc/mailman/message/37001224/)
but here's my take on the problem. If you have any pointers on where I
should be looking at next, let me know

I've just received this camera today and I'm trying to use it on my Ubuntu
20.04 machine.
When I first tried to use it, it worked at 640x480 and 30fps.
However whenever I tried to raise the resolution (this cam is supposed to
work at FullHD at 60fps) I got a blank screen.
After a while the camera didn't seem to work at all so I rebooted my
machine and tried to do a video chat call.
People could see me. The camera seemed to be working at 640x480 but the mic
wasn't working. The other person could only hear noise.

If I keep the resolution low I can get the camera to work once. After it
works it spits out an error:

[10066.231871] usb 4-1: reset SuperSpeed Gen 1 USB device number 3 using
xhci_hcd
[10093.078665] xhci_hcd 0000:04:00.0: ERROR Transfer event for disabled
endpoint slot 2 ep 2
[10093.078676] xhci_hcd 0000:04:00.0: @0000000c355826a0 93cd6d80 0000000b
1b000000 02038000

and after that, unplugging and replugging the camera will return

[10496.912699] usb 4-1: reset SuperSpeed Gen 1 USB device number 3 using
xhci_hcd
[10502.158976] usb 4-1: device descriptor read/8, error -110
[10502.266732] usb 4-1: reset SuperSpeed Gen 1 USB device number 3 using
xhci_hcd
[10507.534871] usb 4-1: device descriptor read/8, error -110
[10507.851976] usb 4-1: reset SuperSpeed Gen 1 USB device number 3 using
xhci_hcd
[10512.910744] usb 4-1: device descriptor read/8, error -110
[10513.018558] usb 4-1: reset SuperSpeed Gen 1 USB device number 3 using
xhci_hcd

# errno 110
ETIMEDOUT 110 Connection timed out

This only gets fixed by rebooting the pc.

the modules being loaded by the camera are:

videobuf2_vmalloc
videobuf2_v4l2
tw5864
uvcvideo

It also seems to increase the "used" count for snd and snd_usb_audio


When I connect the device, this is what I'm getting from dmesg:

[   87.511959] usb 4-1: new SuperSpeed Gen 1 USB device number 2 using
xhci_hcd
[   87.539599] usb 4-1: New USB device found, idVendor=046d,
idProduct=0893, bcdDevice= 3.17
[   87.539601] usb 4-1: New USB device strings: Mfr=0, Product=2,
SerialNumber=3
[   87.539601] usb 4-1: Product: Logitech StreamCam
[   87.539602] usb 4-1: SerialNumber: 54A94715
[   87.561582] usb 4-1: current rate 16000 is different from the runtime
rate 24000
[   87.567091] usb 4-1: current rate 16000 is different from the runtime
rate 32000
[   87.572828] usb 4-1: current rate 16000 is different from the runtime
rate 48000
[   87.591484] hid-generic 0003:046D:0893.0008: hiddev3,hidraw5: USB HID
v1.11 Device [Logitech StreamCam] on usb-0000:04:00.0-1/input5
[   87.603920] uvcvideo: Found UVC 1.00 device Logitech StreamCam
(046d:0893)
[   87.620081] uvcvideo 4-1:1.0: Entity type for entity Processing 3 was
not initialized!
[   87.620083] uvcvideo 4-1:1.0: Entity type for entity Extension 14 was
not initialized!
[   87.620084] uvcvideo 4-1:1.0: Entity type for entity Extension 6 was not
initialized!
[   87.620085] uvcvideo 4-1:1.0: Entity type for entity Extension 8 was not
initialized!
[   87.620086] uvcvideo 4-1:1.0: Entity type for entity Extension 9 was not
initialized!
[   87.620087] uvcvideo 4-1:1.0: Entity type for entity Extension 10 was
not initialized!
[   87.620087] uvcvideo 4-1:1.0: Entity type for entity Extension 11 was
not initialized!
[   87.620089] uvcvideo 4-1:1.0: Entity type for entity Camera 1 was not
initialized!
[   87.620177] input: Logitech StreamCam as
/devices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1/4-1:1.0/input/input32
[   87.620320] usbcore: registered new interface driver uvcvideo
[   87.620321] USB Video Class driver (1.1.1)
[   87.646370] usb 4-1: current rate 16000 is different from the runtime
rate 48000
[   87.655590] usb 4-1: current rate 16000 is different from the runtime
rate 48000
[   87.667137] usb 4-1: current rate 16000 is different from the runtime
rate 48000
[   87.676428] retire_capture_urb: 6405 callbacks suppressed
[  117.027345] usb 4-1: reset SuperSpeed Gen 1 USB device number 2 using
xhci_hcd


And here's the output from /var/log/syslog

Jun 10 23:24:52 francisco-desktop kernel: [ 9631.381934] usb 4-1: new
SuperSpeed Gen 1 USB device number 3 using xhci_hcd
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.409430] usb 4-1: New USB
device found, idVendor=046d, idProduct=0893, bcdDevice= 3.17
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.409431] usb 4-1: New USB
device strings: Mfr=0, Product=2, SerialNumber=3
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.409432] usb 4-1: Product:
Logitech StreamCam
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.409433] usb 4-1:
SerialNumber: 54A94715
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.420437] uvcvideo: Found
UVC 1.00 device Logitech StreamCam (046d:0893)
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436559] uvcvideo 4-1:1.0:
Entity type for entity Processing 3 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436561] uvcvideo 4-1:1.0:
Entity type for entity Extension 14 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436562] uvcvideo 4-1:1.0:
Entity type for entity Extension 6 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436563] uvcvideo 4-1:1.0:
Entity type for entity Extension 8 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436564] uvcvideo 4-1:1.0:
Entity type for entity Extension 9 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436565] uvcvideo 4-1:1.0:
Entity type for entity Extension 10 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436566] uvcvideo 4-1:1.0:
Entity type for entity Extension 11 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436566] uvcvideo 4-1:1.0:
Entity type for entity Camera 1 was not initialized!
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436623] input: Logitech
StreamCam as
/devices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1/4-1:1.0/input/input33
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.447633] usb 4-1: current
rate 16000 is different from the runtime rate 24000
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.453391] usb 4-1: current
rate 16000 is different from the runtime rate 32000
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.459414] usb 4-1: current
rate 16000 is different from the runtime rate 48000
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.479222] hid-generic
0003:046D:0893.0009: hiddev1,hidraw2: USB HID v1.11 Device [Logitech
StreamCam] on usb-0000:04:00.0-1/input5
Jun 10 23:24:52 francisco-desktop mtp-probe: checking bus 4, device 3:
"/sys/devices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1"
Jun 10 23:24:52 francisco-desktop mtp-probe: bus: 4, device: 3 was not an
MTP device
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
config/udev: Adding input device Logitech StreamCam (/dev/input/event8)
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Logitech StreamCam: Applying InputClass "libinput keyboard catchall"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
Using input driver 'libinput' for 'Logitech StreamCam'
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (II)
config/udev: Adding input device Logitech StreamCam (/dev/input/event8)
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (**)
Logitech StreamCam: Applying InputClass "libinput keyboard catchall"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (II)
Using input driver 'libinput' for 'Logitech StreamCam'
Jun 10 23:24:52 francisco-desktop mtp-probe: checking bus 4, device 3:
"/sys/devices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1"
Jun 10 23:24:52 francisco-desktop mtp-probe: bus: 4, device: 3 was not an
MTP device
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.612150] usb 4-1: current
rate 16000 is different from the runtime rate 48000
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.621367] usb 4-1: current
rate 16000 is different from the runtime rate 48000
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.632922] usb 4-1: current
rate 16000 is different from the runtime rate 48000
Jun 10 23:24:52 francisco-desktop rtkit-daemon[1504]: Supervising 5 threads
of 2 processes of 2 users.
Jun 10 23:24:52 francisco-desktop rtkit-daemon[1504]: Successfully made
thread 21116 of process 2050 owned by '1000' RT at priority 5.
Jun 10 23:24:52 francisco-desktop rtkit-daemon[1504]: Supervising 6 threads
of 2 processes of 2 users.
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.655481]
retire_capture_urb: 1193 callbacks suppressed
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
systemd-logind: got fd for /dev/input/event8 13:72 fd 48 paused 0
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Logitech StreamCam: always reports core events
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Option "Device" "/dev/input/event8"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Option "_source" "server/udev"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (II)
systemd-logind: got fd for /dev/input/event8 13:72 fd 26 paused 1
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (II)
systemd-logind: releasing fd for 13:72
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
event8  - Logitech StreamCam: is tagged by udev as: Keyboard
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
event8  - Logitech StreamCam: device is a keyboard
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
event8  - Logitech StreamCam: device removed
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Option "config_info"
"udev:/sys/devices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1/4-1:1.0/input/input33/event8"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
XINPUT: Adding extended input device "Logitech StreamCam" (type: KEYBOARD,
id 9)
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Option "xkb_model" "pc105"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Option "xkb_layout" "jp"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**)
Option "xkb_variant" "OADG109A"
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (WW)
Option "xkb_options" requires a string value
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
event8  - Logitech StreamCam: is tagged by udev as: Keyboard
Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II)
event8  - Logitech StreamCam: device is a keyboard
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 31 with keysym 31 (keycode
a).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 32 with keysym 32 (keycode
b).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 33 with keysym 33 (keycode
c).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 34 with keysym 34 (keycode
d).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 35 with keysym 35 (keycode
e).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 38 with keysym 38 (keycode
11).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 39 with keysym 39 (keycode
12).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 36 with keysym 36 (keycode
f).
Jun 10 23:24:53 francisco-desktop gnome-shell[2325]: Window manager
warning: Overwriting existing binding of keysym 37 with keysym 37 (keycode
10).
Jun 10 23:24:55 francisco-desktop terminator[2563]: terminator has no
capability of surrounding-text feature

--0000000000004c678305a7bc4e4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I found a different thread on this =
camera from a month ago (<a href=3D"https://sourceforge.net/p/linux-uvc/mai=
lman/message/37001224/">https://sourceforge.net/p/linux-uvc/mailman/message=
/37001224/</a>)</div><div>but here&#39;s my take on the problem. If you hav=
e any pointers on where I should be looking at next, let=C2=A0me know</div>=
<div><br></div><div>I&#39;ve just received this camera today and I&#39;m tr=
ying to use it on my Ubuntu 20.04 machine.</div><div>When I first tried to =
use it, it worked at 640x480 and 30fps.</div><div>However whenever I tried =
to raise the resolution (this cam is supposed to work at FullHD at 60fps) I=
 got a blank screen.</div><div>After a while the camera didn&#39;t seem to =
work at all so I rebooted my machine and tried to do a video chat call.</di=
v><div>People could see me. The camera seemed to be working at 640x480 but =
the mic wasn&#39;t working. The other person could only hear noise.</div><d=
iv><br></div><div>If I keep the resolution low I can get the camera to work=
 once. After it works it spits out an error:</div><div><br></div><div>[1006=
6.231871] usb 4-1: reset SuperSpeed Gen 1 USB device number 3 using xhci_hc=
d<br>[10093.078665] xhci_hcd 0000:04:00.0: ERROR Transfer event for disable=
d endpoint slot 2 ep 2<br>[10093.078676] xhci_hcd 0000:04:00.0: @0000000c35=
5826a0 93cd6d80 0000000b 1b000000 02038000<br></div><div><br></div><div>and=
 after that, unplugging and replugging the camera will return</div><div><br=
></div><div>[10496.912699] usb 4-1: reset SuperSpeed Gen 1 USB device numbe=
r 3 using xhci_hcd<br>[10502.158976] usb 4-1: device descriptor read/8, err=
or -110<br>[10502.266732] usb 4-1: reset SuperSpeed Gen 1 USB device number=
 3 using xhci_hcd<br>[10507.534871] usb 4-1: device descriptor read/8, erro=
r -110<br>[10507.851976] usb 4-1: reset SuperSpeed Gen 1 USB device number =
3 using xhci_hcd<br>[10512.910744] usb 4-1: device descriptor read/8, error=
 -110<br>[10513.018558] usb 4-1: reset SuperSpeed Gen 1 USB device number 3=
 using xhci_hcd<br></div><div><br></div><div># errno 110<br>ETIMEDOUT 110 C=
onnection timed out<br></div><div><br></div><div>This only gets fixed by re=
booting the pc.</div><div><br></div><div>the modules being loaded by the ca=
mera are:</div><div><br></div><div>videobuf2_vmalloc<br></div><div>videobuf=
2_v4l2<br></div><div>tw5864</div><div>uvcvideo<br></div><div><br></div><div=
>It also seems to increase the &quot;used&quot; count for snd and snd_usb_a=
udio</div><div><br></div><div><br></div><div>When I connect the device, thi=
s is what I&#39;m getting from dmesg:</div><div><br></div><div>[ =C2=A0 87.=
511959] usb 4-1: new SuperSpeed Gen 1 USB device number 2 using xhci_hcd<br=
>[ =C2=A0 87.539599] usb 4-1: New USB device found, idVendor=3D046d, idProd=
uct=3D0893, bcdDevice=3D 3.17<br>[ =C2=A0 87.539601] usb 4-1: New USB devic=
e strings: Mfr=3D0, Product=3D2, SerialNumber=3D3<br>[ =C2=A0 87.539601] us=
b 4-1: Product: Logitech StreamCam<br>[ =C2=A0 87.539602] usb 4-1: SerialNu=
mber: 54A94715<br>[ =C2=A0 87.561582] usb 4-1: current rate 16000 is differ=
ent from the runtime rate 24000<br>[ =C2=A0 87.567091] usb 4-1: current rat=
e 16000 is different from the runtime rate 32000<br>[ =C2=A0 87.572828] usb=
 4-1: current rate 16000 is different from the runtime rate 48000<br>[ =C2=
=A0 87.591484] hid-generic 0003:046D:0893.0008: hiddev3,hidraw5: USB HID v1=
.11 Device [Logitech StreamCam] on usb-0000:04:00.0-1/input5<br>[ =C2=A0 87=
.603920] uvcvideo: Found UVC 1.00 device Logitech StreamCam (046d:0893)<br>=
[ =C2=A0 87.620081] uvcvideo 4-1:1.0: Entity type for entity Processing 3 w=
as not initialized!<br>[ =C2=A0 87.620083] uvcvideo 4-1:1.0: Entity type fo=
r entity Extension 14 was not initialized!<br>[ =C2=A0 87.620084] uvcvideo =
4-1:1.0: Entity type for entity Extension 6 was not initialized!<br>[ =C2=
=A0 87.620085] uvcvideo 4-1:1.0: Entity type for entity Extension 8 was not=
 initialized!<br>[ =C2=A0 87.620086] uvcvideo 4-1:1.0: Entity type for enti=
ty Extension 9 was not initialized!<br>[ =C2=A0 87.620087] uvcvideo 4-1:1.0=
: Entity type for entity Extension 10 was not initialized!<br>[ =C2=A0 87.6=
20087] uvcvideo 4-1:1.0: Entity type for entity Extension 11 was not initia=
lized!<br>[ =C2=A0 87.620089] uvcvideo 4-1:1.0: Entity type for entity Came=
ra 1 was not initialized!<br>[ =C2=A0 87.620177] input: Logitech StreamCam =
as /devices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1/4-1:1.0/input/inp=
ut32<br>[ =C2=A0 87.620320] usbcore: registered new interface driver uvcvid=
eo<br>[ =C2=A0 87.620321] USB Video Class driver (1.1.1)<br>[ =C2=A0 87.646=
370] usb 4-1: current rate 16000 is different from the runtime rate 48000<b=
r>[ =C2=A0 87.655590] usb 4-1: current rate 16000 is different from the run=
time rate 48000<br>[ =C2=A0 87.667137] usb 4-1: current rate 16000 is diffe=
rent from the runtime rate 48000<br>[ =C2=A0 87.676428] retire_capture_urb:=
 6405 callbacks suppressed<br>[ =C2=A0117.027345] usb 4-1: reset SuperSpeed=
 Gen 1 USB device number 2 using xhci_hcd<br></div><div><br></div><div><br>=
</div><div>And here&#39;s the output from /var/log/syslog</div><div><br></d=
iv><div>Jun 10 23:24:52 francisco-desktop kernel: [ 9631.381934] usb 4-1: n=
ew SuperSpeed Gen 1 USB device number 3 using xhci_hcd<br>Jun 10 23:24:52 f=
rancisco-desktop kernel: [ 9631.409430] usb 4-1: New USB device found, idVe=
ndor=3D046d, idProduct=3D0893, bcdDevice=3D 3.17<br>Jun 10 23:24:52 francis=
co-desktop kernel: [ 9631.409431] usb 4-1: New USB device strings: Mfr=3D0,=
 Product=3D2, SerialNumber=3D3<br>Jun 10 23:24:52 francisco-desktop kernel:=
 [ 9631.409432] usb 4-1: Product: Logitech StreamCam<br>Jun 10 23:24:52 fra=
ncisco-desktop kernel: [ 9631.409433] usb 4-1: SerialNumber: 54A94715<br>Ju=
n 10 23:24:52 francisco-desktop kernel: [ 9631.420437] uvcvideo: Found UVC =
1.00 device Logitech StreamCam (046d:0893)<br>Jun 10 23:24:52 francisco-des=
ktop kernel: [ 9631.436559] uvcvideo 4-1:1.0: Entity type for entity Proces=
sing 3 was not initialized!<br>Jun 10 23:24:52 francisco-desktop kernel: [ =
9631.436561] uvcvideo 4-1:1.0: Entity type for entity Extension 14 was not =
initialized!<br>Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436562] uv=
cvideo 4-1:1.0: Entity type for entity Extension 6 was not initialized!<br>=
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436563] uvcvideo 4-1:1.0: =
Entity type for entity Extension 8 was not initialized!<br>Jun 10 23:24:52 =
francisco-desktop kernel: [ 9631.436564] uvcvideo 4-1:1.0: Entity type for =
entity Extension 9 was not initialized!<br>Jun 10 23:24:52 francisco-deskto=
p kernel: [ 9631.436565] uvcvideo 4-1:1.0: Entity type for entity Extension=
 10 was not initialized!<br>Jun 10 23:24:52 francisco-desktop kernel: [ 963=
1.436566] uvcvideo 4-1:1.0: Entity type for entity Extension 11 was not ini=
tialized!<br>Jun 10 23:24:52 francisco-desktop kernel: [ 9631.436566] uvcvi=
deo 4-1:1.0: Entity type for entity Camera 1 was not initialized!<br>Jun 10=
 23:24:52 francisco-desktop kernel: [ 9631.436623] input: Logitech StreamCa=
m as /devices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1/4-1:1.0/input/i=
nput33<br>Jun 10 23:24:52 francisco-desktop kernel: [ 9631.447633] usb 4-1:=
 current rate 16000 is different from the runtime rate 24000<br>Jun 10 23:2=
4:52 francisco-desktop kernel: [ 9631.453391] usb 4-1: current rate 16000 i=
s different from the runtime rate 32000<br>Jun 10 23:24:52 francisco-deskto=
p kernel: [ 9631.459414] usb 4-1: current rate 16000 is different from the =
runtime rate 48000<br>Jun 10 23:24:52 francisco-desktop kernel: [ 9631.4792=
22] hid-generic 0003:046D:0893.0009: hiddev1,hidraw2: USB HID v1.11 Device =
[Logitech StreamCam] on usb-0000:04:00.0-1/input5<br>Jun 10 23:24:52 franci=
sco-desktop mtp-probe: checking bus 4, device 3: &quot;/sys/devices/pci0000=
:00/0000:00:1c.4/0000:04:00.0/usb4/4-1&quot;<br>Jun 10 23:24:52 francisco-d=
esktop mtp-probe: bus: 4, device: 3 was not an MTP device<br>Jun 10 23:24:5=
2 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II) config/udev: Ad=
ding input device Logitech StreamCam (/dev/input/event8)<br>Jun 10 23:24:52=
 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**) Logitech StreamC=
am: Applying InputClass &quot;libinput keyboard catchall&quot;<br>Jun 10 23=
:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II) Using inpu=
t driver &#39;libinput&#39; for &#39;Logitech StreamCam&#39;<br>Jun 10 23:2=
4:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (II) config/udev:=
 Adding input device Logitech StreamCam (/dev/input/event8)<br>Jun 10 23:24=
:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (**) Logitech Stre=
amCam: Applying InputClass &quot;libinput keyboard catchall&quot;<br>Jun 10=
 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[1453]: (II) Using i=
nput driver &#39;libinput&#39; for &#39;Logitech StreamCam&#39;<br>Jun 10 2=
3:24:52 francisco-desktop mtp-probe: checking bus 4, device 3: &quot;/sys/d=
evices/pci0000:00/0000:00:1c.4/0000:04:00.0/usb4/4-1&quot;<br>Jun 10 23:24:=
52 francisco-desktop mtp-probe: bus: 4, device: 3 was not an MTP device<br>=
Jun 10 23:24:52 francisco-desktop kernel: [ 9631.612150] usb 4-1: current r=
ate 16000 is different from the runtime rate 48000<br>Jun 10 23:24:52 franc=
isco-desktop kernel: [ 9631.621367] usb 4-1: current rate 16000 is differen=
t from the runtime rate 48000<br>Jun 10 23:24:52 francisco-desktop kernel: =
[ 9631.632922] usb 4-1: current rate 16000 is different from the runtime ra=
te 48000<br>Jun 10 23:24:52 francisco-desktop rtkit-daemon[1504]: Supervisi=
ng 5 threads of 2 processes of 2 users.<br>Jun 10 23:24:52 francisco-deskto=
p rtkit-daemon[1504]: Successfully made thread 21116 of process 2050 owned =
by &#39;1000&#39; RT at priority 5.<br>Jun 10 23:24:52 francisco-desktop rt=
kit-daemon[1504]: Supervising 6 threads of 2 processes of 2 users.<br>Jun 1=
0 23:24:52 francisco-desktop kernel: [ 9631.655481] retire_capture_urb: 119=
3 callbacks suppressed<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/g=
dm-x-session[2142]: (II) systemd-logind: got fd for /dev/input/event8 13:72=
 fd 48 paused 0<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-se=
ssion[2142]: (**) Logitech StreamCam: always reports core events<br>Jun 10 =
23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**) Option &=
quot;Device&quot; &quot;/dev/input/event8&quot;<br>Jun 10 23:24:52 francisc=
o-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**) Option &quot;_source&quot=
; &quot;server/udev&quot;<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm=
3/gdm-x-session[1453]: (II) systemd-logind: got fd for /dev/input/event8 13=
:72 fd 26 paused 1<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x=
-session[1453]: (II) systemd-logind: releasing fd for 13:72<br>Jun 10 23:24=
:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II) event8 =C2=A0=
- Logitech StreamCam: is tagged by udev as: Keyboard<br>Jun 10 23:24:52 fra=
ncisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II) event8 =C2=A0- Logit=
ech StreamCam: device is a keyboard<br>Jun 10 23:24:52 francisco-desktop /u=
sr/lib/gdm3/gdm-x-session[2142]: (II) event8 =C2=A0- Logitech StreamCam: de=
vice removed<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-sessi=
on[2142]: (**) Option &quot;config_info&quot; &quot;udev:/sys/devices/pci00=
00:00/0000:00:1c.4/0000:04:00.0/usb4/4-1/4-1:1.0/input/input33/event8&quot;=
<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (I=
I) XINPUT: Adding extended input device &quot;Logitech StreamCam&quot; (typ=
e: KEYBOARD, id 9)<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x=
-session[2142]: (**) Option &quot;xkb_model&quot; &quot;pc105&quot;<br>Jun =
10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (**) Optio=
n &quot;xkb_layout&quot; &quot;jp&quot;<br>Jun 10 23:24:52 francisco-deskto=
p /usr/lib/gdm3/gdm-x-session[2142]: (**) Option &quot;xkb_variant&quot; &q=
uot;OADG109A&quot;<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x=
-session[2142]: (WW) Option &quot;xkb_options&quot; requires a string value=
<br>Jun 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (I=
I) event8 =C2=A0- Logitech StreamCam: is tagged by udev as: Keyboard<br>Jun=
 10 23:24:52 francisco-desktop /usr/lib/gdm3/gdm-x-session[2142]: (II) even=
t8 =C2=A0- Logitech StreamCam: device is a keyboard<br>Jun 10 23:24:53 fran=
cisco-desktop gnome-shell[2325]: Window manager warning: Overwriting existi=
ng binding of keysym 31 with keysym 31 (keycode a).<br>Jun 10 23:24:53 fran=
cisco-desktop gnome-shell[2325]: Window manager warning: Overwriting existi=
ng binding of keysym 32 with keysym 32 (keycode b).<br>Jun 10 23:24:53 fran=
cisco-desktop gnome-shell[2325]: Window manager warning: Overwriting existi=
ng binding of keysym 33 with keysym 33 (keycode c).<br>Jun 10 23:24:53 fran=
cisco-desktop gnome-shell[2325]: Window manager warning: Overwriting existi=
ng binding of keysym 34 with keysym 34 (keycode d).<br>Jun 10 23:24:53 fran=
cisco-desktop gnome-shell[2325]: Window manager warning: Overwriting existi=
ng binding of keysym 35 with keysym 35 (keycode e).<br>Jun 10 23:24:53 fran=
cisco-desktop gnome-shell[2325]: Window manager warning: Overwriting existi=
ng binding of keysym 38 with keysym 38 (keycode 11).<br>Jun 10 23:24:53 fra=
ncisco-desktop gnome-shell[2325]: Window manager warning: Overwriting exist=
ing binding of keysym 39 with keysym 39 (keycode 12).<br>Jun 10 23:24:53 fr=
ancisco-desktop gnome-shell[2325]: Window manager warning: Overwriting exis=
ting binding of keysym 36 with keysym 36 (keycode f).<br>Jun 10 23:24:53 fr=
ancisco-desktop gnome-shell[2325]: Window manager warning: Overwriting exis=
ting binding of keysym 37 with keysym 37 (keycode 10).<br>Jun 10 23:24:55 f=
rancisco-desktop terminator[2563]: terminator has no capability of surround=
ing-text feature</div><div><br></div></div>

--0000000000004c678305a7bc4e4e--


--===============1164027691809147384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1164027691809147384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============1164027691809147384==--

