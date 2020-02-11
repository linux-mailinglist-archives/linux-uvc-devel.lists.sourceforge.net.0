Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DF31594FB
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 11 Feb 2020 17:32:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1j1YSa-0006Mj-9Y; Tue, 11 Feb 2020 16:32:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maximumsomething@gmail.com>) id 1j1YSY-0006MI-2X
 for linux-uvc-devel@lists.sourceforge.net; Tue, 11 Feb 2020 16:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Date:Message-Id:Subject:Mime-Version:
 Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=adfY6v4erXG+H9QK9akvmj9A4k3iwSl7j2/I0X3rMRI=; b=NRYyfXGrL2/3kxcZi218rmSwlp
 i7EtuvKIzO9Afst8sfDX32+aAB3HgI/y3zNBUFm6XsSxrDXm6zYnvmtDlhF9KAEyNx8mzFEYTAts9
 9BcEb1H1tMm8Mcu0PCeqngWh+QMYFleryVBv6O7FVniasHU6gnj0pZSPPvPtApWz68Io=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Date:Message-Id:Subject:Mime-Version:Content-Type:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=adfY6v4erXG+H9QK9akvmj9A4k3iwSl7j2/I0X3rMRI=; b=k
 j2j8gUVLMxLZeD4APdySdKGS5fUIcYtgv8MbEBTA4+LmI+3eGiQm1Sweu8h6Op2MgrhVJn524uxAd
 C9JDXg3zXkrQO05funy12dHb1RPZqdFjzRrX4zy+Oaq5nBiwHgHg0th/OCvkNXkpYKOLDouQxaKMa
 HjzwwRu26fP9AtTo=;
Received: from mail-yw1-f47.google.com ([209.85.161.47])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j1YSW-000c32-Ec
 for linux-uvc-devel@lists.sourceforge.net; Tue, 11 Feb 2020 16:32:26 +0000
Received: by mail-yw1-f47.google.com with SMTP id 10so5462663ywv.5
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 11 Feb 2020 08:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:mime-version:subject:message-id:date:to;
 bh=adfY6v4erXG+H9QK9akvmj9A4k3iwSl7j2/I0X3rMRI=;
 b=NnNoS6/+YbQ9/CA+9J8sNSuZqD/FqZ9KqtRadXtUsLrb9xkU4Y0P/abYRW3GJ83FuY
 goTu0GkzVUqqQT3Mcc5QJYR+aTCnwquH98sd22KLsa+dnqVl20epjcAVR2E4glWfJRVX
 vRqS5NDZnPMXoi8a8164VPASGC4uLx5umyzc/Masah7yBscG/V5tdC8lStNZRnit/cnk
 6mFKGhedl3VfgdOmf+M5eQ7hH8IRpvaqizojP1xbjAWT9c0tEU/R/+qm7PLhsVhHoD4k
 F2Vjgmb9klE+2Dt+KTknJG5OX9Qt199+ILQOZn62TSNG7FBod9iKmVYC7S75MFlvOwCs
 OWGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=adfY6v4erXG+H9QK9akvmj9A4k3iwSl7j2/I0X3rMRI=;
 b=oVYZWDjitSlmyO5yG5W7UCOJLeIy5RBbotXoutovPaUt0p9OIsfyvYMb5ruSjuKr0D
 cljbjsN4E/Z7lcymYXC19MEyczo+aM+jl+S2qTtI3tZRkk62UJRV905sD8OVNZB7CWT0
 /iWCXylDnIgYPELAg1sLZNQVJFVxRPfCaeKKsnMnXCMNmimaC2vihUx4hU+0eslkGso3
 WjJf3OLGCxNWB39M80r02tRFPf0mfpku0H5K8wO02IsoCNaOV9QIE7uZjks5t0WSZgr/
 t1hsjX8/DdsF5lSJ9OE8hX56B1+h2ut3jAAH8dxnO8PA0J1Q3L9k3V324UGRIoB3BR0P
 R1gA==
X-Gm-Message-State: APjAAAVqSMfqBWKrXjLbesJQKEUCZn0Hv1Npr+Mio9gXqBXCy1Brup07
 NJqjS7r+EqAQWqggrZmXrpCvenha
X-Google-Smtp-Source: APXvYqxJ93mDCyo6AXScZxZEQYFztaVdXQdob9XV247RGQM/nH3NOCcRgU0NiBHNwDIfJ7igWpVOIQ==
X-Received: by 2002:a81:6d17:: with SMTP id i23mr6485735ywc.58.1581438738244; 
 Tue, 11 Feb 2020 08:32:18 -0800 (PST)
Received: from [10.110.50.44] ([207.72.1.91])
 by smtp.gmail.com with ESMTPSA id s3sm2119530ywf.22.2020.02.11.08.32.17
 for <linux-uvc-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Feb 2020 08:32:17 -0800 (PST)
From: Max Mueggler <maximumsomething@gmail.com>
Content-Type: multipart/mixed;
 boundary="Apple-Mail=_D6B6473B-68FB-4F80-B26E-6EEA3C194957"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <B11FB739-B151-4532-8DEE-FBCA08825B89@gmail.com>
Date: Tue, 11 Feb 2020 11:32:15 -0500
To: linux-uvc-devel@lists.sourceforge.net
X-Mailer: Apple Mail (2.3445.104.11)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (maximumsomething[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.47 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1YSW-000c32-Ec
Subject: [linux-uvc-devel] With multiple cameras,
 any ioctl() that touches the cameras causes all cameras to behave
 erratically
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


--Apple-Mail=_D6B6473B-68FB-4F80-B26E-6EEA3C194957
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Steps to reproduce:
Saturate the USB bus. This can be achieved by streaming two USB  2.0 =
cameras uncompressed at 640x360 resolution on the same hub. I tested it =
with a Logitech C525 and a Logitech C920. The video will stream without =
errors.
Run a command that touches the cameras, such as v4l2-ctl --list-devices =
or --set-ctrl.
The video stream will start to stutter, or completely hang (on the =
VIDIOC_DQBUF call). They will never recover until the program which is =
streaming the cameras is closed.

I=E2=80=99ve attached a log from doing the above (with trace=3D0xffff). =
I ran v4l2-ctl --list-devices at line 368.

If it=E2=80=99s an issue with the v4l2-ctl call taking up USB bandwidth =
and causing USB packets to be dropped, I=E2=80=99d expect no more than a =
couple video frames to be dropped.

Note that the issue is most consistently a problem with 3+ cameras, but =
it=E2=80=99s reproducible with two.

Hardware: Raspberry Pi 4.
uname -a output: Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 =
13:21:14 GMT 2020 armv7l GNU/Linux

--Apple-Mail=_D6B6473B-68FB-4F80-B26E-6EEA3C194957
Content-Disposition: attachment;
	filename=uvcvideo-dmesg.log
Content-Type: application/octet-stream;
	x-unix-mode=0644;
	name="uvcvideo-dmesg.log"
Content-Transfer-Encoding: 7bit

[ 5839.361488] uvcvideo: uvc_v4l2_open
[ 5839.361745] uvcvideo: uvc_v4l2_open
[ 5839.599427] uvcvideo: Resuming interface 0
[ 5839.599433] uvcvideo: Resuming interface 1
[ 5839.599721] uvcvideo: Resuming interface 2
[ 5839.599726] uvcvideo: Resuming interface 3
[ 5839.600407] uvcvideo: Trying format 0x56595559 (YUYV): 640x360.
[ 5839.600412] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[ 5839.601008] uvcvideo: Trying format 0x56595559 (YUYV): 640x360.
[ 5839.601013] uvcvideo: Using default frame interval 33333.3 us (30.0 fps).
[ 5839.601869] uvcvideo: Setting frame interval to 1/1000 (10000).
[ 5839.604387] uvcvideo: uvc_v4l2_mmap
[ 5839.605094] uvcvideo: uvc_v4l2_mmap
[ 5839.605738] uvcvideo: uvc_v4l2_mmap
[ 5839.606420] uvcvideo: uvc_v4l2_mmap
[ 5839.607291] uvcvideo: Device requested 1984 B/frame bandwidth.
[ 5839.607299] uvcvideo: Selecting alternate setting 9 (1984 B/frame bandwidth).
[ 5839.620399] uvcvideo: Setting frame interval to 1/1000 (10000).
[ 5839.641556] uvcvideo: uvc_v4l2_mmap
[ 5839.642266] uvcvideo: uvc_v4l2_mmap
[ 5839.642924] uvcvideo: uvc_v4l2_mmap
[ 5839.643604] uvcvideo: uvc_v4l2_mmap
[ 5839.649041] uvcvideo: Device requested 3060 B/frame bandwidth.
[ 5839.649049] uvcvideo: Selecting alternate setting 11 (3060 B/frame bandwidth).
[ 5839.734130] uvcvideo: Allocated 5 URB buffers of 32x1984 bytes each.
[ 5839.734281] restoring control 00000000-0000-0000-0000-000000000001/1/2
[ 5839.734286] restoring control 00000000-0000-0000-0000-000000000001/3/4
[ 5839.734738] uvcvideo: Allocated 5 URB buffers of 32x3060 bytes each.
[ 5839.744756] uvcvideo: Control 1/4 value change len 9.
[ 5839.863122] uvcvideo: Frame complete (EOF found).
[ 5839.863127] uvcvideo: EOF in empty payload.
[ 5839.867048] uvcvideo: frame 1 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4062331224/4081216824/14376
[ 5839.895166] uvcvideo: Frame complete (EOF found).
[ 5839.895171] uvcvideo: EOF in empty payload.
[ 5839.899015] uvcvideo: frame 2 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4072422224/4091043424/14405
[ 5839.904817] uvcvideo: Control 1/4 value change len 9.
[ 5839.931074] uvcvideo: Frame complete (EOF found).
[ 5839.931079] uvcvideo: EOF in empty payload.
[ 5839.935057] uvcvideo: frame 3 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4082331824/4101169224/14434
[ 5839.963165] uvcvideo: Frame complete (EOF found).
[ 5839.963173] uvcvideo: EOF in empty payload.
[ 5839.967076] uvcvideo: frame 4 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4092418024/4111033024/14464
[ 5839.999069] uvcvideo: Frame complete (EOF found).
[ 5839.999078] uvcvideo: EOF in empty payload.
[ 5839.999100] uvcvideo: frame 5 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4102331624/4121159424/14493
[ 5840.031085] uvcvideo: Frame complete (EOF found).
[ 5840.031093] uvcvideo: EOF in empty payload.
[ 5840.035087] uvcvideo: frame 6 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4112417024/4131022824/14523
[ 5840.063186] uvcvideo: Frame complete (EOF found).
[ 5840.063194] uvcvideo: EOF in empty payload.
[ 5840.067092] uvcvideo: frame 7 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4122331424/4141149624/14552
[ 5840.095323] uvcvideo: Frame complete (EOF found).
[ 5840.095332] uvcvideo: EOF in empty payload.
[ 5840.103093] uvcvideo: frame 8 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4132419624/4151050824/14582
[ 5840.103791] uvcvideo: Frame complete (EOF found).
[ 5840.103820] uvcvideo: frame 1 stats: 1209/259/1468 packets, 1/941/1468 pts (early initial), 1467/1468 scr, last pts/stc/sof 3153179330/3156338469/1857
[ 5840.131125] uvcvideo: Frame complete (EOF found).
[ 5840.131133] uvcvideo: EOF in empty payload.
[ 5840.135099] uvcvideo: frame 9 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4142332224/4161177224/14611
[ 5840.163274] uvcvideo: Frame complete (EOF found).
[ 5840.163282] uvcvideo: EOF in empty payload.
[ 5840.167172] uvcvideo: frame 10 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4152414424/4171040824/14641
[ 5840.167887] uvcvideo: Frame complete (EOF found).
[ 5840.167893] uvcvideo: EOF in empty payload.
[ 5840.167921] uvcvideo: frame 2 stats: 272/258/531 packets, 1/4/531 pts (early initial), 530/531 scr, last pts/stc/sof 3156365630/3159524866/1923
[ 5840.199099] uvcvideo: Frame complete (EOF found).
[ 5840.199107] uvcvideo: EOF in empty payload.
[ 5840.199129] uvcvideo: frame 11 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4162331424/4181166624/14670
[ 5840.231190] uvcvideo: Frame complete (EOF found).
[ 5840.231198] uvcvideo: EOF in empty payload.
[ 5840.235113] uvcvideo: frame 12 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4172416024/4191030224/14699
[ 5840.235823] uvcvideo: Frame complete (EOF found).
[ 5840.235830] uvcvideo: EOF in empty payload.
[ 5840.235848] uvcvideo: frame 3 stats: 272/258/531 packets, 1/4/531 pts (early initial), 530/531 scr, last pts/stc/sof 3159551930/3162711262/1989
[ 5840.256889] uvcvideo: Control 2/10 value change len 7.
[ 5840.263227] uvcvideo: Frame complete (EOF found).
[ 5840.263235] uvcvideo: EOF in empty payload.
[ 5840.267116] uvcvideo: frame 13 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4182331624/4201156624/14729
[ 5840.295353] uvcvideo: Frame complete (EOF found).
[ 5840.295362] uvcvideo: EOF in empty payload.
[ 5840.299162] uvcvideo: frame 14 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4192416424/4211020224/14758
[ 5840.303758] uvcvideo: Frame complete (EOF found).
[ 5840.303764] uvcvideo: EOF in empty payload.
[ 5840.303782] uvcvideo: frame 4 stats: 272/258/531 packets, 1/4/531 pts (early initial), 530/531 scr, last pts/stc/sof 3162738230/3165897659/8
[ 5840.331151] uvcvideo: Frame complete (EOF found).
[ 5840.331159] uvcvideo: EOF in empty payload.
[ 5840.335129] uvcvideo: frame 15 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4202331824/4221147224/14788
[ 5840.363292] uvcvideo: Frame complete (EOF found).
[ 5840.363300] uvcvideo: EOF in empty payload.
[ 5840.367199] uvcvideo: frame 16 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4212419624/4231047624/14817
[ 5840.367877] uvcvideo: Frame complete (EOF found).
[ 5840.367883] uvcvideo: EOF in empty payload.
[ 5840.367902] uvcvideo: frame 5 stats: 272/258/531 packets, 1/4/531 pts (early initial), 530/531 scr, last pts/stc/sof 3165924530/3169084056/74
[ 5840.399128] uvcvideo: Frame complete (EOF found).
[ 5840.399135] uvcvideo: EOF in empty payload.
[ 5840.399158] uvcvideo: frame 17 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4222331424/4241174024/14847
[ 5840.431218] uvcvideo: Frame complete (EOF found).
[ 5840.431226] uvcvideo: EOF in empty payload.
[ 5840.435143] uvcvideo: frame 18 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4232414624/4251037824/14876
[ 5840.435812] uvcvideo: Frame complete (EOF found).
[ 5840.435818] uvcvideo: EOF in empty payload.
[ 5840.435836] uvcvideo: frame 6 stats: 272/258/531 packets, 1/4/531 pts (early initial), 530/531 scr, last pts/stc/sof 3169110830/3172270451/141
[ 5840.463261] uvcvideo: Frame complete (EOF found).
[ 5840.463268] uvcvideo: EOF in empty payload.
[ 5840.467147] uvcvideo: frame 19 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4242332424/4261164224/14906
[ 5840.495405] uvcvideo: Frame complete (EOF found).
[ 5840.495412] uvcvideo: EOF in empty payload.
[ 5840.499937] uvcvideo: Frame complete (EOF found).
[ 5840.499945] uvcvideo: EOF in empty payload.
[ 5840.499964] uvcvideo: frame 7 stats: 272/258/531 packets, 1/4/531 pts (early initial), 530/531 scr, last pts/stc/sof 3172297130/3175456848/207
[ 5840.503151] uvcvideo: frame 20 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4252417024/4271028024/14935
[ 5840.531184] uvcvideo: Frame complete (EOF found).
[ 5840.531192] uvcvideo: EOF in empty payload.
[ 5840.535155] uvcvideo: frame 21 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4262331624/4281154224/14965
[ 5840.563334] uvcvideo: Frame complete (EOF found).
[ 5840.563341] uvcvideo: EOF in empty payload.
[ 5840.567161] uvcvideo: frame 22 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4272414224/4291055424/14994
[ 5840.567863] uvcvideo: Frame complete (EOF found).
[ 5840.567882] uvcvideo: frame 8 stats: 272/258/530 packets, 1/4/530 pts (early initial), 529/530 scr, last pts/stc/sof 3175483430/3178637245/273
[ 5840.599157] uvcvideo: Frame complete (EOF found).
[ 5840.599165] uvcvideo: EOF in empty payload.
[ 5840.599187] uvcvideo: frame 23 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4282331624/6214328/15024
[ 5840.631244] uvcvideo: Frame complete (EOF found).
[ 5840.631251] uvcvideo: EOF in empty payload.
[ 5840.635170] uvcvideo: frame 24 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4292415424/16077928/15053
[ 5840.635800] uvcvideo: Frame complete (EOF found).
[ 5840.635819] uvcvideo: frame 9 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3178669730/3181823642/340
[ 5840.663269] uvcvideo: Frame complete (EOF found).
[ 5840.663277] uvcvideo: EOF in empty payload.
[ 5840.667257] uvcvideo: frame 25 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 7364128/26166928/15083
[ 5840.695353] uvcvideo: Frame complete (EOF found).
[ 5840.695361] uvcvideo: EOF in empty payload.
[ 5840.699928] uvcvideo: Frame complete (EOF found).
[ 5840.699949] uvcvideo: frame 10 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3181856030/3185010038/406
[ 5840.703176] uvcvideo: frame 26 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 17451328/36067928/15112
[ 5840.731214] uvcvideo: Frame complete (EOF found).
[ 5840.731222] uvcvideo: EOF in empty payload.
[ 5840.735257] uvcvideo: frame 27 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 27364328/46193928/15142
[ 5840.763347] uvcvideo: Frame complete (EOF found).
[ 5840.763355] uvcvideo: EOF in empty payload.
[ 5840.767190] uvcvideo: frame 28 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 37446928/56058328/15171
[ 5840.767850] uvcvideo: Frame complete (EOF found).
[ 5840.767870] uvcvideo: frame 11 stats: 273/258/531 packets, 1/6/531 pts (early initial), 530/531 scr, last pts/stc/sof 3185042330/3188196435/472
[ 5840.795372] uvcvideo: Frame complete (EOF found).
[ 5840.795379] uvcvideo: EOF in empty payload.
[ 5840.799200] uvcvideo: frame 29 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 47364328/66184128/15201
[ 5840.831276] uvcvideo: Frame complete (EOF found).
[ 5840.831283] uvcvideo: EOF in empty payload.
[ 5840.832048] uvcvideo: Frame complete (EOF found).
[ 5840.832084] uvcvideo: frame 12 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3188228630/3191382832/539
[ 5840.835199] uvcvideo: frame 30 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 57452728/76085528/15230
[ 5840.848977] uvcvideo: Control 2/10 value change len 7.
[ 5840.863299] uvcvideo: Frame complete (EOF found).
[ 5840.863307] uvcvideo: EOF in empty payload.
[ 5840.867279] uvcvideo: frame 31 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 67364328/86211528/15260
[ 5840.895360] uvcvideo: Frame complete (EOF found).
[ 5840.895368] uvcvideo: EOF in empty payload.
[ 5840.899178] uvcvideo: frame 32 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 77448328/96038128/15289
[ 5840.899907] uvcvideo: Frame complete (EOF found).
[ 5840.899925] uvcvideo: frame 13 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3191414930/3194569229/605
[ 5840.931241] uvcvideo: Frame complete (EOF found).
[ 5840.931248] uvcvideo: EOF in empty payload.
[ 5840.935291] uvcvideo: frame 33 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 87364328/106201928/15319
[ 5840.963385] uvcvideo: Frame complete (EOF found).
[ 5840.963393] uvcvideo: EOF in empty payload.
[ 5840.967222] uvcvideo: frame 34 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 97450728/116065928/15348
[ 5840.967843] uvcvideo: Frame complete (EOF found).
[ 5840.967862] uvcvideo: frame 14 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3194601230/3197755626/671
[ 5840.995413] uvcvideo: Frame complete (EOF found).
[ 5840.995421] uvcvideo: EOF in empty payload.
[ 5840.999307] uvcvideo: frame 35 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 107364328/126191728/15378
[ 5841.031225] uvcvideo: Frame complete (EOF found).
[ 5841.031233] uvcvideo: EOF in empty payload.
[ 5841.032025] uvcvideo: Frame complete (EOF found).
[ 5841.032061] uvcvideo: frame 15 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3197787530/3200942022/738
[ 5841.035228] uvcvideo: frame 36 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 117447928/136055528/15407
[ 5841.063324] uvcvideo: Frame complete (EOF found).
[ 5841.063333] uvcvideo: EOF in empty payload.
[ 5841.067309] uvcvideo: frame 37 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 127364328/146181528/15436
[ 5841.095471] uvcvideo: Frame complete (EOF found).
[ 5841.095479] uvcvideo: EOF in empty payload.
[ 5841.099209] uvcvideo: frame 38 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 137450728/156082928/15466
[ 5841.099896] uvcvideo: Frame complete (EOF found).
[ 5841.099914] uvcvideo: frame 16 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3200973830/3204128419/804
[ 5841.131259] uvcvideo: Frame complete (EOF found).
[ 5841.131267] uvcvideo: EOF in empty payload.
[ 5841.135315] uvcvideo: frame 39 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 147364528/166171328/15495
[ 5841.163408] uvcvideo: Frame complete (EOF found).
[ 5841.163415] uvcvideo: EOF in empty payload.
[ 5841.164057] uvcvideo: Frame complete (EOF found).
[ 5841.164090] uvcvideo: frame 17 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3204160130/3207314816/871
[ 5841.167251] uvcvideo: frame 40 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 157450928/176072928/15525
[ 5841.195456] uvcvideo: Frame complete (EOF found).
[ 5841.195464] uvcvideo: EOF in empty payload.
[ 5841.199337] uvcvideo: frame 41 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 167364328/186199128/15554
[ 5841.231259] uvcvideo: Frame complete (EOF found).
[ 5841.231268] uvcvideo: EOF in empty payload.
[ 5841.231967] uvcvideo: Frame complete (EOF found).
[ 5841.231998] uvcvideo: frame 18 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3207346430/3210501213/937
[ 5841.235264] uvcvideo: frame 42 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 177447528/196062928/15584
[ 5841.263353] uvcvideo: Frame complete (EOF found).
[ 5841.263361] uvcvideo: EOF in empty payload.
[ 5841.267264] uvcvideo: frame 43 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 187364528/206189328/15613
[ 5841.295484] uvcvideo: Frame complete (EOF found).
[ 5841.295492] uvcvideo: EOF in empty payload.
[ 5841.296197] uvcvideo: Frame complete (EOF found).
[ 5841.299235] uvcvideo: frame 44 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 197447128/216052728/15643
[ 5841.299898] uvcvideo: frame 19 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3210532730/3213687610/1003
[ 5841.331366] uvcvideo: Frame complete (EOF found).
[ 5841.331374] uvcvideo: EOF in empty payload.
[ 5841.335275] uvcvideo: frame 45 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 207364528/226179128/15672
[ 5841.363352] uvcvideo: Frame complete (EOF found).
[ 5841.363359] uvcvideo: EOF in empty payload.
[ 5841.364051] uvcvideo: Frame complete (EOF found).
[ 5841.364087] uvcvideo: frame 20 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3213719030/3216874006/1070
[ 5841.367277] uvcvideo: frame 46 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 217451128/236044128/15701
[ 5841.395497] uvcvideo: Frame complete (EOF found).
[ 5841.395505] uvcvideo: EOF in empty payload.
[ 5841.399367] uvcvideo: frame 47 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 227364328/246206728/15731
[ 5841.431294] uvcvideo: Frame complete (EOF found).
[ 5841.431301] uvcvideo: EOF in empty payload.
[ 5841.431942] uvcvideo: Frame complete (EOF found).
[ 5841.431970] uvcvideo: frame 21 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3216905330/3220060403/1136
[ 5841.435287] uvcvideo: frame 48 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 237447528/256070328/15761
[ 5841.463395] uvcvideo: Frame complete (EOF found).
[ 5841.463402] uvcvideo: EOF in empty payload.
[ 5841.467295] uvcvideo: frame 49 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 247364328/266196728/15790
[ 5841.495518] uvcvideo: Frame complete (EOF found).
[ 5841.495526] uvcvideo: EOF in empty payload.
[ 5841.496109] uvcvideo: Frame complete (EOF found).
[ 5841.496141] uvcvideo: frame 22 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3220091630/3223246800/1202
[ 5841.499304] uvcvideo: frame 50 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 257448328/276060128/15819
[ 5841.531397] uvcvideo: Frame complete (EOF found).
[ 5841.531405] uvcvideo: EOF in empty payload.
[ 5841.535304] uvcvideo: frame 51 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 267364328/286186528/15849
[ 5841.563395] uvcvideo: Frame complete (EOF found).
[ 5841.563403] uvcvideo: EOF in empty payload.
[ 5841.564012] uvcvideo: Frame complete (EOF found).
[ 5841.564044] uvcvideo: frame 23 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3223277930/3226433197/1269
[ 5841.567307] uvcvideo: frame 52 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 277447528/296087528/15878
[ 5841.595491] uvcvideo: Frame complete (EOF found).
[ 5841.595499] uvcvideo: EOF in empty payload.
[ 5841.599396] uvcvideo: frame 53 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 287364328/306213728/15908
[ 5841.628118] uvcvideo: Frame complete (EOF found).
[ 5841.628142] uvcvideo: frame 24 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3226464230/3229619594/1335
[ 5841.631317] uvcvideo: Frame complete (EOF found).
[ 5841.631325] uvcvideo: EOF in empty payload.
[ 5841.635320] uvcvideo: frame 54 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 297447928/316077528/15937
[ 5841.663505] uvcvideo: Frame complete (EOF found).
[ 5841.663513] uvcvideo: EOF in empty payload.
[ 5841.667397] uvcvideo: frame 55 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 307364328/326166528/15967
[ 5841.695478] uvcvideo: Frame complete (EOF found).
[ 5841.695486] uvcvideo: EOF in empty payload.
[ 5841.696078] uvcvideo: Frame complete (EOF found).
[ 5841.696115] uvcvideo: frame 25 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3229650530/3232805990/1402
[ 5841.699332] uvcvideo: frame 56 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 317451528/336067728/15996
[ 5841.731431] uvcvideo: Frame complete (EOF found).
[ 5841.731438] uvcvideo: EOF in empty payload.
[ 5841.735333] uvcvideo: frame 57 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 327364328/346193928/16026
[ 5841.763409] uvcvideo: Frame complete (EOF found).
[ 5841.763417] uvcvideo: EOF in empty payload.
[ 5841.763976] uvcvideo: Frame complete (EOF found).
[ 5841.764006] uvcvideo: frame 26 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3232836830/3235992387/1468
[ 5841.767335] uvcvideo: frame 58 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 337448128/356057928/16055
[ 5841.795509] uvcvideo: Frame complete (EOF found).
[ 5841.795517] uvcvideo: EOF in empty payload.
[ 5841.799422] uvcvideo: frame 59 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 347364528/366183928/16085
[ 5841.828100] uvcvideo: Frame complete (EOF found).
[ 5841.828123] uvcvideo: frame 27 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3236023130/3239178784/1534
[ 5841.831345] uvcvideo: Frame complete (EOF found).
[ 5841.831353] uvcvideo: EOF in empty payload.
[ 5841.835349] uvcvideo: frame 60 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 357447328/376085128/16114
[ 5841.863526] uvcvideo: Frame complete (EOF found).
[ 5841.863533] uvcvideo: EOF in empty payload.
[ 5841.867423] uvcvideo: frame 61 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 367364328/386173528/16144
[ 5841.895536] uvcvideo: Frame complete (EOF found).
[ 5841.895545] uvcvideo: EOF in empty payload.
[ 5841.896119] uvcvideo: Frame complete (EOF found).
[ 5841.896156] uvcvideo: frame 28 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3239209430/3242365181/1601
[ 5841.899366] uvcvideo: frame 62 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 377451728/396075128/16173
[ 5841.931474] uvcvideo: Frame complete (EOF found).
[ 5841.931483] uvcvideo: EOF in empty payload.
[ 5841.935432] uvcvideo: frame 63 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 387364328/406201128/16203
[ 5841.960157] uvcvideo: Frame complete (EOF found).
[ 5841.960183] uvcvideo: frame 29 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3242395730/3245551579/1667
[ 5841.963438] uvcvideo: Frame complete (EOF found).
[ 5841.963446] uvcvideo: EOF in empty payload.
[ 5841.967372] uvcvideo: frame 64 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 397448128/416064928/16232
[ 5841.995611] uvcvideo: Frame complete (EOF found).
[ 5841.995620] uvcvideo: EOF in empty payload.
[ 5841.999377] uvcvideo: frame 65 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 407364528/426191128/16262
[ 5842.028075] uvcvideo: Frame complete (EOF found).
[ 5842.028098] uvcvideo: frame 30 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3245582030/3248737976/1733
[ 5842.031373] uvcvideo: Frame complete (EOF found).
[ 5842.031381] uvcvideo: EOF in empty payload.
[ 5842.035383] uvcvideo: frame 66 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 417447928/436054928/16291
[ 5842.063557] uvcvideo: Frame complete (EOF found).
[ 5842.063566] uvcvideo: EOF in empty payload.
[ 5842.067453] uvcvideo: frame 67 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 427364128/446181528/16321
[ 5842.095560] uvcvideo: Frame complete (EOF found).
[ 5842.095569] uvcvideo: EOF in empty payload.
[ 5842.096062] uvcvideo: Frame complete (EOF found).
[ 5842.096095] uvcvideo: frame 31 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3248768330/3251924373/1800
[ 5842.099397] uvcvideo: frame 68 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 437446928/456082328/16350
[ 5842.131484] uvcvideo: Frame complete (EOF found).
[ 5842.131493] uvcvideo: EOF in empty payload.
[ 5842.135454] uvcvideo: frame 69 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 447364328/466171328/16380
[ 5842.160152] uvcvideo: Frame complete (EOF found).
[ 5842.160176] uvcvideo: frame 32 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3251954630/3255110770/1866
[ 5842.163475] uvcvideo: Frame complete (EOF found).
[ 5842.163483] uvcvideo: EOF in empty payload.
[ 5842.167402] uvcvideo: frame 70 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 457451728/476072328/16409
[ 5842.195650] uvcvideo: Frame complete (EOF found).
[ 5842.195658] uvcvideo: EOF in empty payload.
[ 5842.199480] uvcvideo: frame 71 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 467364328/486198928/16439
[ 5842.228067] uvcvideo: Frame complete (EOF found).
[ 5842.228093] uvcvideo: frame 33 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3255140930/3258297166/1933
[ 5842.231397] uvcvideo: Frame complete (EOF found).
[ 5842.231405] uvcvideo: EOF in empty payload.
[ 5842.235409] uvcvideo: frame 72 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 477447928/496062728/16468
[ 5842.263576] uvcvideo: Frame complete (EOF found).
[ 5842.263584] uvcvideo: EOF in empty payload.
[ 5842.267415] uvcvideo: frame 73 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 487364328/506188528/16498
[ 5842.292212] uvcvideo: Frame complete (EOF found).
[ 5842.292235] uvcvideo: frame 34 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3258327230/3261483563/1999
[ 5842.295559] uvcvideo: Frame complete (EOF found).
[ 5842.295565] uvcvideo: EOF in empty payload.
[ 5842.299421] uvcvideo: frame 74 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 497448128/516090128/16527
[ 5842.331507] uvcvideo: Frame complete (EOF found).
[ 5842.331515] uvcvideo: EOF in empty payload.
[ 5842.335490] uvcvideo: frame 75 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 507364328/526178528/16556
[ 5842.360133] uvcvideo: Frame complete (EOF found).
[ 5842.360157] uvcvideo: frame 35 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3261513530/3264669960/17
[ 5842.363501] uvcvideo: Frame complete (EOF found).
[ 5842.363508] uvcvideo: EOF in empty payload.
[ 5842.367426] uvcvideo: frame 76 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 517450728/536079728/16586
[ 5842.395688] uvcvideo: Frame complete (EOF found).
[ 5842.395696] uvcvideo: EOF in empty payload.
[ 5842.399507] uvcvideo: frame 77 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 527364128/546205928/16616
[ 5842.428055] uvcvideo: Frame complete (EOF found).
[ 5842.428078] uvcvideo: frame 36 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3264699830/3267856357/84
[ 5842.431429] uvcvideo: Frame complete (EOF found).
[ 5842.431437] uvcvideo: EOF in empty payload.
[ 5842.435437] uvcvideo: frame 78 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 537446728/556069728/16645
[ 5842.463609] uvcvideo: Frame complete (EOF found).
[ 5842.463616] uvcvideo: EOF in empty payload.
[ 5842.467442] uvcvideo: frame 79 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 547364328/566196328/16674
[ 5842.492188] uvcvideo: Frame complete (EOF found).
[ 5842.492214] uvcvideo: frame 37 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3267886130/3271042754/150
[ 5842.495583] uvcvideo: Frame complete (EOF found).
[ 5842.495590] uvcvideo: EOF in empty payload.
[ 5842.499451] uvcvideo: frame 80 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 557449928/576059928/16704
[ 5842.531537] uvcvideo: Frame complete (EOF found).
[ 5842.531544] uvcvideo: EOF in empty payload.
[ 5842.535520] uvcvideo: frame 81 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 567364128/586186328/16733
[ 5842.560114] uvcvideo: Frame complete (EOF found).
[ 5842.560138] uvcvideo: frame 38 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3271072430/3274229150/216
[ 5842.563527] uvcvideo: Frame complete (EOF found).
[ 5842.563533] uvcvideo: EOF in empty payload.
[ 5842.567455] uvcvideo: frame 82 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 577449928/596087128/16763
[ 5842.595658] uvcvideo: Frame complete (EOF found).
[ 5842.595666] uvcvideo: EOF in empty payload.
[ 5842.599537] uvcvideo: frame 83 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 587364328/606213728/16792
[ 5842.624252] uvcvideo: Frame complete (EOF found).
[ 5842.624278] uvcvideo: frame 39 stats: 273/258/531 packets, 1/5/531 pts (early initial), 530/531 scr, last pts/stc/sof 3274258730/3277415547/283
[ 5842.631468] uvcvideo: Frame complete (EOF found).
[ 5842.631478] uvcvideo: EOF in empty payload.
[ 5842.635386] uvcvideo: uvc_v4l2_open
[ 5842.635418] uvcvideo: uvc_v4l2_release
[ 5842.635469] uvcvideo: frame 84 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 597447528/616077528/16822
[ 5842.635493] uvcvideo: uvc_v4l2_open
[ 5842.635519] uvcvideo: uvc_v4l2_release
[ 5842.635592] uvcvideo: uvc_v4l2_open
[ 5842.719109] uvcvideo: Resuming interface 2
[ 5842.719118] uvcvideo: Resuming interface 3
[ 5842.719174] uvcvideo: uvc_v4l2_release
[ 5844.688569] uvcvideo: USB isochronous frame lost (-71).
[ 5844.688580] uvcvideo: USB isochronous frame lost (-18).
[ 5844.688590] uvcvideo: Marking buffer as bad (error bit set).
[ 5844.688603] uvcvideo: Frame complete (EOF found).
[ 5844.688611] uvcvideo: USB isochronous frame lost (-18).
[ 5844.688629] uvcvideo: frame 40 stats: 103/1/104 packets, 1/5/104 pts (early initial), 103/104 scr, last pts/stc/sof 3277445030/3376367877/296
[ 5844.711996] uvcvideo: Frame complete (EOF found).
[ 5844.712006] uvcvideo: EOF in empty payload.
[ 5844.716690] uvcvideo: USB isochronous frame lost (-71).
[ 5844.720769] uvcvideo: USB isochronous frame lost (-71).
[ 5844.720820] uvcvideo: USB isochronous frame lost (-71).
[ 5844.720881] uvcvideo: USB isochronous frame lost (-71).
[ 5845.068321] uvcvideo: Suspending interface 3
[ 5845.068332] uvcvideo: Suspending interface 2
[ 5846.772092] uvcvideo: frame 85 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 607364328/1240754328/18663
[ 5846.772964] uvcvideo: USB isochronous frame lost (-18).
[ 5846.772973] uvcvideo: USB isochronous frame lost (-18).
[ 5846.772981] uvcvideo: USB isochronous frame lost (-18).
[ 5846.773021] uvcvideo: Marking buffer as bad (error bit set).
[ 5846.773029] uvcvideo: Frame complete (EOF found).
[ 5846.773046] uvcvideo: frame 41 stats: 241/45/286 packets, 0/0/282 pts (early initial), 281/282 scr, last pts/stc/sof 3376220330/3476454346/333
[ 5846.780118] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780128] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780136] uvcvideo: USB isochronous frame lost (-71).
[ 5846.780143] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780151] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780158] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780165] uvcvideo: USB isochronous frame lost (-71).
[ 5846.780173] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780180] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780187] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780195] uvcvideo: USB isochronous frame lost (-71).
[ 5846.780202] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780210] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780217] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780225] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780232] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780239] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780247] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780254] uvcvideo: USB isochronous frame lost (-71).
[ 5846.780262] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780269] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780276] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780284] uvcvideo: USB isochronous frame lost (-71).
[ 5846.780291] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780299] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780306] uvcvideo: USB isochronous frame lost (-18).
[ 5846.780314] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784075] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784083] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784091] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784098] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784105] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784113] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784120] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784127] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784134] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784141] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784148] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784156] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784163] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784170] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784177] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784184] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784192] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784199] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784206] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784213] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784221] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784228] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784235] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784242] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784249] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784257] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784264] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784271] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784279] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784286] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784293] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784300] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784912] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784919] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784926] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784934] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784941] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784948] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784955] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784963] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784970] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784977] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784984] uvcvideo: USB isochronous frame lost (-18).
[ 5846.784991] uvcvideo: USB isochronous frame lost (-71).
[ 5846.784999] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785006] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785013] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785020] uvcvideo: USB isochronous frame lost (-71).
[ 5846.785027] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785035] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785042] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785049] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785057] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785064] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785071] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785079] uvcvideo: USB isochronous frame lost (-71).
[ 5846.785086] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785093] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785100] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785108] uvcvideo: USB isochronous frame lost (-71).
[ 5846.785115] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785122] uvcvideo: USB isochronous frame lost (-18).
[ 5846.785164] uvcvideo: Marking buffer as bad (error bit set).
[ 5846.785175] uvcvideo: Frame complete (EOF found).
[ 5846.785192] uvcvideo: frame 42 stats: 25/1/26 packets, 0/0/26 pts (early initial), 25/26 scr, last pts/stc/sof 3474995630/3477144432/347
[ 5846.800363] uvcvideo: Frame complete (EOF found).
[ 5846.800372] uvcvideo: EOF in empty payload.
[ 5846.836129] uvcvideo: frame 86 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1237448328/1867345928/20511
[ 5846.844185] uvcvideo: USB isochronous frame lost (-18).
[ 5846.844195] uvcvideo: USB isochronous frame lost (-71).
[ 5846.844203] uvcvideo: USB isochronous frame lost (-18).
[ 5846.844211] uvcvideo: USB isochronous frame lost (-18).
[ 5846.844218] uvcvideo: USB isochronous frame lost (-18).
[ 5846.844225] uvcvideo: USB isochronous frame lost (-18).
[ 5846.844233] uvcvideo: USB isochronous frame lost (-18).
[ 5846.844240] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848159] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848167] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848174] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848182] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848189] uvcvideo: USB isochronous frame lost (-71).
[ 5846.848197] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848204] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848211] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848219] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848226] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848233] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848240] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848247] uvcvideo: USB isochronous frame lost (-71).
[ 5846.848254] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848262] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848269] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848276] uvcvideo: USB isochronous frame lost (-71).
[ 5846.848283] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848291] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848298] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848305] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848312] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848319] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848326] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848334] uvcvideo: USB isochronous frame lost (-71).
[ 5846.848341] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848348] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848355] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848362] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848369] uvcvideo: USB isochronous frame lost (-18).
[ 5846.848376] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852129] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852140] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852147] uvcvideo: USB isochronous frame lost (-71).
[ 5846.852155] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852162] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852170] uvcvideo: USB isochronous frame lost (-71).
[ 5846.852177] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852184] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852192] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852199] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852206] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852214] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852221] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852229] uvcvideo: USB isochronous frame lost (-71).
[ 5846.852236] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852244] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852251] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852259] uvcvideo: USB isochronous frame lost (-71).
[ 5846.852266] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852273] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852281] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852288] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852295] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852303] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852310] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852318] uvcvideo: USB isochronous frame lost (-71).
[ 5846.852325] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852332] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852340] uvcvideo: USB isochronous frame lost (-71).
[ 5846.852347] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852354] uvcvideo: USB isochronous frame lost (-18).
[ 5846.852362] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853055] uvcvideo: USB isochronous frame lost (-71).
[ 5846.853063] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853070] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853078] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853085] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853092] uvcvideo: USB isochronous frame lost (-71).
[ 5846.853100] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853107] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853115] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853122] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853130] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853137] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853145] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853152] uvcvideo: USB isochronous frame lost (-71).
[ 5846.853159] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853167] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853174] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853182] uvcvideo: USB isochronous frame lost (-71).
[ 5846.853189] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853196] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853204] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853211] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853218] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853226] uvcvideo: USB isochronous frame lost (-18).
[ 5846.853266] uvcvideo: Marking buffer as bad (error bit set).
[ 5846.853274] uvcvideo: Frame complete (EOF found).
[ 5846.853291] uvcvideo: frame 43 stats: 441/2/443 packets, 1/173/443 pts (early initial), 442/443 scr, last pts/stc/sof 3478181930/3480372834/415
[ 5846.864269] uvcvideo: Frame complete (EOF found).
[ 5846.864279] uvcvideo: EOF in empty payload.
[ 5846.868138] uvcvideo: frame 87 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1867364528/1886209328/20567
[ 5846.896259] uvcvideo: Frame complete (EOF found).
[ 5846.896263] uvcvideo: EOF in empty payload.
[ 5846.900122] uvcvideo: frame 88 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1877448328/1896035328/20596
[ 5846.912134] uvcvideo: USB isochronous frame lost (-71).
[ 5846.912138] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912141] uvcvideo: USB isochronous frame lost (-71).
[ 5846.912144] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912147] uvcvideo: USB isochronous frame lost (-71).
[ 5846.912150] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912153] uvcvideo: USB isochronous frame lost (-71).
[ 5846.912156] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912159] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912162] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912165] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912168] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912171] uvcvideo: USB isochronous frame lost (-71).
[ 5846.912174] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912177] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912180] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912183] uvcvideo: USB isochronous frame lost (-71).
[ 5846.912186] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912189] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912192] uvcvideo: USB isochronous frame lost (-18).
[ 5846.912195] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964018] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964028] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964036] uvcvideo: USB isochronous frame lost (-71).
[ 5848.964044] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964051] uvcvideo: USB isochronous frame lost (-71).
[ 5848.964059] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964066] uvcvideo: USB isochronous frame lost (-71).
[ 5848.964074] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964081] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964089] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964096] uvcvideo: USB isochronous frame lost (-71).
[ 5848.964104] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964111] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964119] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964126] uvcvideo: USB isochronous frame lost (-71).
[ 5848.964134] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964141] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964149] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964156] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964164] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964171] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964178] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964186] uvcvideo: USB isochronous frame lost (-71).
[ 5848.964193] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964201] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964208] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964216] uvcvideo: USB isochronous frame lost (-71).
[ 5848.964223] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964266] uvcvideo: USB isochronous frame lost (-18).
[ 5848.964273] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968430] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968440] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968448] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968455] uvcvideo: USB isochronous frame lost (-71).
[ 5848.968462] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968470] uvcvideo: USB isochronous frame lost (-71).
[ 5848.968477] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968484] uvcvideo: USB isochronous frame lost (-71).
[ 5848.968492] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968499] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968513] uvcvideo: Marking buffer as bad (error bit set).
[ 5848.968524] uvcvideo: Frame complete (EOF found).
[ 5848.968540] uvcvideo: frame 44 stats: 434/3/437 packets, 1/166/437 pts (early initial), 436/437 scr, last pts/stc/sof 3481368230/3581677453/477
[ 5848.968565] uvcvideo: USB isochronous frame lost (-71).
[ 5848.968573] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968580] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968588] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968595] uvcvideo: USB isochronous frame lost (-71).
[ 5848.968602] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968609] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968616] uvcvideo: USB isochronous frame lost (-18).
[ 5848.968623] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972433] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972441] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972448] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972455] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972462] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972469] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972477] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972484] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972491] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972498] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972505] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972513] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972520] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972527] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972534] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972542] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972549] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972556] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972564] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972571] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972578] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972585] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972593] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972600] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972607] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972615] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972622] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972629] uvcvideo: USB isochronous frame lost (-71).
[ 5848.972636] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972643] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972651] uvcvideo: USB isochronous frame lost (-18).
[ 5848.972658] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976451] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976459] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976466] uvcvideo: USB isochronous frame lost (-71).
[ 5848.976473] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976481] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976488] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976495] uvcvideo: USB isochronous frame lost (-71).
[ 5848.976502] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976509] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976517] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976524] uvcvideo: USB isochronous frame lost (-71).
[ 5848.976531] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976538] uvcvideo: USB isochronous frame lost (-71).
[ 5848.976546] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976553] uvcvideo: USB isochronous frame lost (-71).
[ 5848.976560] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976567] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976575] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976582] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976589] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976596] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976603] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976611] uvcvideo: USB isochronous frame lost (-71).
[ 5848.976618] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976625] uvcvideo: USB isochronous frame lost (-71).
[ 5848.976632] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976640] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976647] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976654] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976661] uvcvideo: USB isochronous frame lost (-18).
[ 5848.976668] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977303] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977310] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977317] uvcvideo: USB isochronous frame lost (-71).
[ 5848.977325] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977332] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977340] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977347] uvcvideo: USB isochronous frame lost (-71).
[ 5848.977355] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977362] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977370] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977377] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977384] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977392] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977399] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977407] uvcvideo: USB isochronous frame lost (-71).
[ 5848.977414] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977421] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977429] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977436] uvcvideo: USB isochronous frame lost (-71).
[ 5848.977444] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977451] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977459] uvcvideo: USB isochronous frame lost (-18).
[ 5848.977484] uvcvideo: Marking buffer as bad (error bit set).
[ 5848.977495] uvcvideo: Frame complete (EOF found).
[ 5848.977511] uvcvideo: frame 45 stats: 12/2/14 packets, 0/0/14 pts (early initial), 13/14 scr, last pts/stc/sof 3580143530/3582325533/490
[ 5848.980465] uvcvideo: Frame complete (EOF found).
[ 5848.980474] uvcvideo: EOF in empty payload.
[ 5849.000423] uvcvideo: frame 89 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1887364328/2520759128/22438
[ 5849.013312] uvcvideo: USB isochronous frame lost (-18).
[ 5849.021201] uvcvideo: USB isochronous frame lost (-18).
[ 5849.025308] uvcvideo: USB isochronous frame lost (-18).
[ 5849.028741] uvcvideo: Frame complete (EOF found).
[ 5849.028750] uvcvideo: EOF in empty payload.
[ 5849.036468] uvcvideo: USB isochronous frame lost (-71).
[ 5849.036486] uvcvideo: frame 46 stats: 431/2/433 packets, 1/166/433 pts (early initial), 432/433 scr, last pts/stc/sof 3583329830/3584947859/545
[ 5849.036495] uvcvideo: Frame complete (FID bit toggled).
[ 5849.036509] uvcvideo: frame 47 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.036528] uvcvideo: frame 48 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.036537] uvcvideo: Frame complete (FID bit toggled).
[ 5849.036551] uvcvideo: frame 49 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3583329830/3584965862/545
[ 5849.036607] uvcvideo: USB isochronous frame lost (-71).
[ 5849.036621] uvcvideo: frame 50 stats: 0/8/8 packets, 0/0/8 pts (!early initial), 7/8 scr, last pts/stc/sof 3583329830/3585007867/546
[ 5849.036629] uvcvideo: Frame complete (FID bit toggled).
[ 5849.036642] uvcvideo: frame 51 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.036660] uvcvideo: frame 52 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.036691] uvcvideo: Frame complete (FID bit toggled).
[ 5849.036704] uvcvideo: frame 53 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3583329830/3585025869/547
[ 5849.036737] uvcvideo: USB isochronous frame lost (-18).
[ 5849.036745] uvcvideo: USB isochronous frame lost (-18).
[ 5849.036752] uvcvideo: USB isochronous frame lost (-18).
[ 5849.036759] uvcvideo: USB isochronous frame lost (-18).
[ 5849.036953] uvcvideo: frame 90 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2517448328/2536051928/22483
[ 5849.040491] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040501] uvcvideo: USB isochronous frame lost (-71).
[ 5849.040508] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040516] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040523] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040530] uvcvideo: USB isochronous frame lost (-71).
[ 5849.040538] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040545] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040553] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040560] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040567] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040575] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040582] uvcvideo: USB isochronous frame lost (-71).
[ 5849.040590] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040597] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040605] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040612] uvcvideo: USB isochronous frame lost (-71).
[ 5849.040619] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040627] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040634] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040642] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040649] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040656] uvcvideo: USB isochronous frame lost (-71).
[ 5849.040664] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040671] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040679] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040686] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040693] uvcvideo: USB isochronous frame lost (-71).
[ 5849.040701] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040708] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040715] uvcvideo: USB isochronous frame lost (-18).
[ 5849.040723] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044424] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044432] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044439] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044447] uvcvideo: USB isochronous frame lost (-71).
[ 5849.044454] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044461] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044469] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044476] uvcvideo: USB isochronous frame lost (-71).
[ 5849.044483] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044491] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044498] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044505] uvcvideo: USB isochronous frame lost (-71).
[ 5849.044512] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044520] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044527] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044534] uvcvideo: USB isochronous frame lost (-71).
[ 5849.044541] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044548] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044555] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044563] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044570] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044577] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044585] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044592] uvcvideo: USB isochronous frame lost (-71).
[ 5849.044599] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044606] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044614] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044621] uvcvideo: USB isochronous frame lost (-71).
[ 5849.044628] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044636] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044643] uvcvideo: USB isochronous frame lost (-18).
[ 5849.044650] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045319] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045327] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045334] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045341] uvcvideo: USB isochronous frame lost (-71).
[ 5849.045349] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045356] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045363] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045371] uvcvideo: USB isochronous frame lost (-71).
[ 5849.045378] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045385] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045393] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045400] uvcvideo: USB isochronous frame lost (-71).
[ 5849.045408] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045415] uvcvideo: USB isochronous frame lost (-71).
[ 5849.045422] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045430] uvcvideo: USB isochronous frame lost (-71).
[ 5849.045437] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045444] uvcvideo: USB isochronous frame lost (-71).
[ 5849.045452] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045459] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045467] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045474] uvcvideo: USB isochronous frame lost (-18).
[ 5849.045514] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.045522] uvcvideo: Frame complete (EOF found).
[ 5849.045538] uvcvideo: frame 54 stats: 0/5/5 packets, 0/0/5 pts (!early initial), 4/5 scr, last pts/stc/sof 3583329830/3585595941/558
[ 5849.064557] uvcvideo: Frame complete (EOF found).
[ 5849.064568] uvcvideo: EOF in empty payload.
[ 5849.068416] uvcvideo: frame 91 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2527364328/2546187128/22513
[ 5849.089384] uvcvideo: USB isochronous frame lost (-18).
[ 5849.096530] uvcvideo: Frame complete (EOF found).
[ 5849.096534] uvcvideo: EOF in empty payload.
[ 5849.100480] uvcvideo: frame 92 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2537447728/2556088128/22542
[ 5849.104474] uvcvideo: USB isochronous frame lost (-71).
[ 5849.104478] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104481] uvcvideo: USB isochronous frame lost (-71).
[ 5849.104484] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104487] uvcvideo: USB isochronous frame lost (-71).
[ 5849.104490] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104493] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104496] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104499] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104502] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104505] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104507] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104510] uvcvideo: USB isochronous frame lost (-71).
[ 5849.104513] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104516] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104519] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104522] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104525] uvcvideo: USB isochronous frame lost (-18).
[ 5849.104528] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108459] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108463] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108465] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108468] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108471] uvcvideo: USB isochronous frame lost (-71).
[ 5849.108474] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108477] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108480] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108483] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108486] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108489] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108492] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108495] uvcvideo: USB isochronous frame lost (-71).
[ 5849.108498] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108500] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108503] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108506] uvcvideo: USB isochronous frame lost (-71).
[ 5849.108509] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108512] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108515] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108518] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108521] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108524] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108526] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108529] uvcvideo: USB isochronous frame lost (-71).
[ 5849.108532] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108535] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108538] uvcvideo: USB isochronous frame lost (-71).
[ 5849.108541] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108544] uvcvideo: USB isochronous frame lost (-18).
[ 5849.108547] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112079] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112083] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112086] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112089] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112092] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112095] uvcvideo: USB isochronous frame lost (-71).
[ 5849.112098] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112101] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112104] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112107] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112110] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112113] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112116] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112119] uvcvideo: USB isochronous frame lost (-71).
[ 5849.112122] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112125] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112129] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112132] uvcvideo: USB isochronous frame lost (-71).
[ 5849.112135] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112139] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112142] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112144] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112147] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112150] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112153] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112156] uvcvideo: USB isochronous frame lost (-71).
[ 5849.112159] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112162] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112165] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112167] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112170] uvcvideo: USB isochronous frame lost (-18).
[ 5849.112173] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113380] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113384] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113387] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113390] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113393] uvcvideo: USB isochronous frame lost (-71).
[ 5849.113396] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113399] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113402] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113405] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113407] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113410] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113413] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113416] uvcvideo: USB isochronous frame lost (-71).
[ 5849.113419] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113422] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113425] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113427] uvcvideo: USB isochronous frame lost (-71).
[ 5849.113430] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113433] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113467] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.113470] uvcvideo: Frame complete (EOF found).
[ 5849.113477] uvcvideo: frame 55 stats: 420/20/440 packets, 1/153/440 pts (early initial), 439/440 scr, last pts/stc/sof 3586516130/3588848346/626
[ 5849.113483] uvcvideo: USB isochronous frame lost (-18).
[ 5849.113521] uvcvideo: USB isochronous frame lost (-18).
[ 5849.117339] uvcvideo: USB isochronous frame lost (-18).
[ 5849.117398] uvcvideo: USB isochronous frame lost (-18).
[ 5849.121365] uvcvideo: USB isochronous frame lost (-18).
[ 5849.125360] uvcvideo: USB isochronous frame lost (-18).
[ 5849.132478] uvcvideo: Frame complete (EOF found).
[ 5849.132482] uvcvideo: EOF in empty payload.
[ 5849.132494] uvcvideo: frame 93 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2547364128/2566168128/22572
[ 5849.133374] uvcvideo: USB isochronous frame lost (-18).
[ 5849.137302] uvcvideo: USB isochronous frame lost (-18).
[ 5849.137357] uvcvideo: USB isochronous frame lost (-18).
[ 5849.141305] uvcvideo: USB isochronous frame lost (-18).
[ 5849.145304] uvcvideo: USB isochronous frame lost (-18).
[ 5849.149305] uvcvideo: USB isochronous frame lost (-18).
[ 5849.153306] uvcvideo: USB isochronous frame lost (-18).
[ 5849.161307] uvcvideo: USB isochronous frame lost (-18).
[ 5849.164451] uvcvideo: Frame complete (EOF found).
[ 5849.164455] uvcvideo: EOF in empty payload.
[ 5849.165500] uvcvideo: USB isochronous frame lost (-71).
[ 5849.165509] uvcvideo: frame 56 stats: 396/2/398 packets, 1/136/398 pts (early initial), 397/398 scr, last pts/stc/sof 3589702430/3591320653/678
[ 5849.165513] uvcvideo: Frame complete (FID bit toggled).
[ 5849.165519] uvcvideo: frame 57 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.165528] uvcvideo: frame 58 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.165531] uvcvideo: Frame complete (FID bit toggled).
[ 5849.165537] uvcvideo: frame 59 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3589702430/3591338656/678
[ 5849.168553] uvcvideo: frame 94 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2557452128/2576031928/22601
[ 5849.172501] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172505] uvcvideo: USB isochronous frame lost (-71).
[ 5849.172508] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172511] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172514] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172518] uvcvideo: USB isochronous frame lost (-71).
[ 5849.172520] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172523] uvcvideo: USB isochronous frame lost (-71).
[ 5849.172526] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172529] uvcvideo: USB isochronous frame lost (-71).
[ 5849.172532] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172535] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172538] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172541] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172545] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172548] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172550] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172553] uvcvideo: USB isochronous frame lost (-71).
[ 5849.172556] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172559] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172562] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172565] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172568] uvcvideo: USB isochronous frame lost (-71).
[ 5849.172571] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172574] uvcvideo: USB isochronous frame lost (-18).
[ 5849.172576] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176469] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176473] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176476] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176479] uvcvideo: USB isochronous frame lost (-71).
[ 5849.176482] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176484] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176487] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176490] uvcvideo: USB isochronous frame lost (-71).
[ 5849.176493] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176496] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176499] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176502] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176505] uvcvideo: USB isochronous frame lost (-71).
[ 5849.176507] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176510] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176513] uvcvideo: USB isochronous frame lost (-71).
[ 5849.176516] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176519] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176522] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176525] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176528] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176531] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176534] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176537] uvcvideo: USB isochronous frame lost (-71).
[ 5849.176540] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176543] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176546] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176549] uvcvideo: USB isochronous frame lost (-71).
[ 5849.176551] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176554] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176557] uvcvideo: USB isochronous frame lost (-18).
[ 5849.176560] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177371] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177374] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177376] uvcvideo: USB isochronous frame lost (-71).
[ 5849.177379] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177382] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177385] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177388] uvcvideo: USB isochronous frame lost (-71).
[ 5849.177391] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177394] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177397] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177400] uvcvideo: USB isochronous frame lost (-71).
[ 5849.177403] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177405] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177408] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177411] uvcvideo: USB isochronous frame lost (-71).
[ 5849.177414] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177417] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177420] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177423] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177425] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177428] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177431] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177434] uvcvideo: USB isochronous frame lost (-71).
[ 5849.177437] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177440] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177443] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177446] uvcvideo: USB isochronous frame lost (-71).
[ 5849.177449] uvcvideo: USB isochronous frame lost (-71).
[ 5849.177452] uvcvideo: USB isochronous frame lost (-18).
[ 5849.177486] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.177489] uvcvideo: Frame complete (EOF found).
[ 5849.177497] uvcvideo: frame 60 stats: 0/21/21 packets, 0/0/21 pts (!early initial), 20/21 scr, last pts/stc/sof 3589702430/3591980736/691
[ 5849.196591] uvcvideo: Frame complete (EOF found).
[ 5849.196596] uvcvideo: EOF in empty payload.
[ 5849.200430] uvcvideo: frame 95 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2567364328/2586195328/22631
[ 5849.228656] uvcvideo: Frame complete (EOF found).
[ 5849.228661] uvcvideo: EOF in empty payload.
[ 5849.236439] uvcvideo: USB isochronous frame lost (-71).
[ 5849.236524] uvcvideo: USB isochronous frame lost (-71).
[ 5849.236574] uvcvideo: USB isochronous frame lost (-18).
[ 5849.236590] uvcvideo: USB isochronous frame lost (-18).
[ 5849.236593] uvcvideo: USB isochronous frame lost (-18).
[ 5849.236596] uvcvideo: USB isochronous frame lost (-18).
[ 5849.236599] uvcvideo: USB isochronous frame lost (-18).
[ 5849.236602] uvcvideo: USB isochronous frame lost (-18).
[ 5849.236710] uvcvideo: frame 96 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2577446928/2596068328/22660
[ 5849.240498] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240502] uvcvideo: USB isochronous frame lost (-71).
[ 5849.240506] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240509] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240511] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240514] uvcvideo: USB isochronous frame lost (-71).
[ 5849.240517] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240520] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240523] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240526] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240529] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240532] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240535] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240538] uvcvideo: USB isochronous frame lost (-71).
[ 5849.240541] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240544] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240547] uvcvideo: USB isochronous frame lost (-71).
[ 5849.240550] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240553] uvcvideo: USB isochronous frame lost (-71).
[ 5849.240556] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240559] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240562] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240565] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240568] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240571] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240574] uvcvideo: USB isochronous frame lost (-71).
[ 5849.240577] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240580] uvcvideo: USB isochronous frame lost (-71).
[ 5849.240583] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240586] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240589] uvcvideo: USB isochronous frame lost (-18).
[ 5849.240592] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244103] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244108] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244111] uvcvideo: USB isochronous frame lost (-71).
[ 5849.244114] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244117] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244120] uvcvideo: USB isochronous frame lost (-71).
[ 5849.244123] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244126] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244129] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244132] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244135] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244139] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244142] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244145] uvcvideo: USB isochronous frame lost (-71).
[ 5849.244148] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244151] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244154] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244157] uvcvideo: USB isochronous frame lost (-71).
[ 5849.244160] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244163] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244166] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244168] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244171] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244174] uvcvideo: USB isochronous frame lost (-71).
[ 5849.244177] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244180] uvcvideo: USB isochronous frame lost (-71).
[ 5849.244183] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244186] uvcvideo: USB isochronous frame lost (-71).
[ 5849.244188] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244191] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244194] uvcvideo: USB isochronous frame lost (-18).
[ 5849.244197] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245325] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245330] uvcvideo: USB isochronous frame lost (-71).
[ 5849.245333] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245336] uvcvideo: USB isochronous frame lost (-71).
[ 5849.245339] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245343] uvcvideo: USB isochronous frame lost (-71).
[ 5849.245346] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245351] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245354] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245357] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245359] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245363] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245366] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245368] uvcvideo: USB isochronous frame lost (-71).
[ 5849.245371] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245374] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245377] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245380] uvcvideo: USB isochronous frame lost (-71).
[ 5849.245383] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245387] uvcvideo: USB isochronous frame lost (-18).
[ 5849.245416] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.245420] uvcvideo: Frame complete (EOF found).
[ 5849.245427] uvcvideo: frame 61 stats: 419/23/442 packets, 1/151/440 pts (early initial), 439/440 scr, last pts/stc/sof 3592888730/3595185134/758
[ 5849.264525] uvcvideo: Frame complete (EOF found).
[ 5849.264530] uvcvideo: EOF in empty payload.
[ 5849.268468] uvcvideo: frame 97 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2587364328/2606185528/22690
[ 5849.296594] uvcvideo: Frame complete (EOF found).
[ 5849.296598] uvcvideo: EOF in empty payload.
[ 5849.300563] uvcvideo: frame 98 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2597446728/2616095928/22719
[ 5849.304613] uvcvideo: USB isochronous frame lost (-71).
[ 5849.304617] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304620] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304624] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304627] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304630] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304633] uvcvideo: USB isochronous frame lost (-71).
[ 5849.304636] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304638] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304642] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304645] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304647] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304651] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304654] uvcvideo: USB isochronous frame lost (-18).
[ 5849.304657] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308538] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308542] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308545] uvcvideo: USB isochronous frame lost (-71).
[ 5849.308548] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308551] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308554] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308557] uvcvideo: USB isochronous frame lost (-71).
[ 5849.308560] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308563] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308566] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308569] uvcvideo: USB isochronous frame lost (-71).
[ 5849.308572] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308575] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308578] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308581] uvcvideo: USB isochronous frame lost (-71).
[ 5849.308584] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308587] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308590] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308593] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308596] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308599] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308602] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308605] uvcvideo: USB isochronous frame lost (-71).
[ 5849.308608] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308611] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308614] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308617] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308620] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308623] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308626] uvcvideo: USB isochronous frame lost (-18).
[ 5849.308629] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312110] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312115] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312118] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312121] uvcvideo: USB isochronous frame lost (-71).
[ 5849.312124] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312127] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312130] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312133] uvcvideo: USB isochronous frame lost (-71).
[ 5849.312136] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312138] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312141] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312144] uvcvideo: USB isochronous frame lost (-71).
[ 5849.312147] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312150] uvcvideo: USB isochronous frame lost (-71).
[ 5849.312153] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312157] uvcvideo: USB isochronous frame lost (-71).
[ 5849.312160] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312163] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312166] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312169] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312172] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312175] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312177] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312180] uvcvideo: USB isochronous frame lost (-71).
[ 5849.312183] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312186] uvcvideo: USB isochronous frame lost (-71).
[ 5849.312189] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312192] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312195] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312198] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312200] uvcvideo: USB isochronous frame lost (-18).
[ 5849.312203] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313394] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313398] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313401] uvcvideo: USB isochronous frame lost (-71).
[ 5849.313404] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313407] uvcvideo: USB isochronous frame lost (-71).
[ 5849.313410] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313413] uvcvideo: USB isochronous frame lost (-71).
[ 5849.313416] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313419] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313421] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313424] uvcvideo: USB isochronous frame lost (-71).
[ 5849.313428] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313431] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313433] uvcvideo: USB isochronous frame lost (-18).
[ 5849.313441] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.313446] uvcvideo: Frame complete (EOF found).
[ 5849.313453] uvcvideo: frame 62 stats: 416/31/447 packets, 1/148/447 pts (early initial), 446/447 scr, last pts/stc/sof 3596075030/3598419538/826
[ 5849.332515] uvcvideo: Frame complete (EOF found).
[ 5849.332522] uvcvideo: EOF in empty payload.
[ 5849.332537] uvcvideo: frame 99 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2607364328/2626213128/22749
[ 5849.353337] uvcvideo: USB isochronous frame lost (-18).
[ 5849.364549] uvcvideo: Frame complete (EOF found).
[ 5849.364554] uvcvideo: EOF in empty payload.
[ 5849.365435] uvcvideo: USB isochronous frame lost (-71).
[ 5849.368532] uvcvideo: frame 100 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2617447328/2636077128/22778
[ 5849.372466] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372483] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372487] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372490] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372493] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372496] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372499] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372502] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372505] uvcvideo: USB isochronous frame lost (-71).
[ 5849.372508] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372511] uvcvideo: USB isochronous frame lost (-71).
[ 5849.372514] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372517] uvcvideo: USB isochronous frame lost (-71).
[ 5849.372520] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372523] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372526] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372529] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372532] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372535] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372538] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372541] uvcvideo: USB isochronous frame lost (-71).
[ 5849.372544] uvcvideo: USB isochronous frame lost (-71).
[ 5849.372547] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372550] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372553] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372556] uvcvideo: USB isochronous frame lost (-18).
[ 5849.372559] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376497] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376500] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376503] uvcvideo: USB isochronous frame lost (-71).
[ 5849.376506] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376509] uvcvideo: USB isochronous frame lost (-71).
[ 5849.376512] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376515] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376518] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376521] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376524] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376527] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376530] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376533] uvcvideo: USB isochronous frame lost (-71).
[ 5849.376536] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376539] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376542] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376544] uvcvideo: USB isochronous frame lost (-71).
[ 5849.376547] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376550] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376553] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376556] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376559] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376562] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376564] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376567] uvcvideo: USB isochronous frame lost (-71).
[ 5849.376570] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376573] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376576] uvcvideo: USB isochronous frame lost (-71).
[ 5849.376579] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376581] uvcvideo: USB isochronous frame lost (-18).
[ 5849.376584] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380228] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380232] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380235] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380238] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380242] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380245] uvcvideo: USB isochronous frame lost (-71).
[ 5849.380248] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380251] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380254] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380257] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380260] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380263] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380266] uvcvideo: USB isochronous frame lost (-71).
[ 5849.380269] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380272] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380275] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380278] uvcvideo: USB isochronous frame lost (-71).
[ 5849.380281] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380283] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380287] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380290] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380293] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380295] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380298] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380301] uvcvideo: USB isochronous frame lost (-71).
[ 5849.380304] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380307] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380310] uvcvideo: USB isochronous frame lost (-71).
[ 5849.380313] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380315] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380318] uvcvideo: USB isochronous frame lost (-18).
[ 5849.380321] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381488] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381492] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381496] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381499] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381502] uvcvideo: USB isochronous frame lost (-71).
[ 5849.381505] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381508] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381511] uvcvideo: USB isochronous frame lost (-18).
[ 5849.381541] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.381546] uvcvideo: Frame complete (EOF found).
[ 5849.381553] uvcvideo: frame 63 stats: 406/30/436 packets, 1/139/435 pts (early initial), 434/435 scr, last pts/stc/sof 3599261330/3601647941/893
[ 5849.396620] uvcvideo: Frame complete (EOF found).
[ 5849.396625] uvcvideo: EOF in empty payload.
[ 5849.400490] uvcvideo: frame 101 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2627364128/2646203128/22808
[ 5849.428682] uvcvideo: Frame complete (EOF found).
[ 5849.428687] uvcvideo: EOF in empty payload.
[ 5849.436529] uvcvideo: USB isochronous frame lost (-71).
[ 5849.436538] uvcvideo: frame 64 stats: 401/9/410 packets, 1/133/410 pts (early initial), 409/410 scr, last pts/stc/sof 3602447630/3604108246/944
[ 5849.436542] uvcvideo: Frame complete (FID bit toggled).
[ 5849.436548] uvcvideo: frame 65 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.436557] uvcvideo: frame 66 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.436560] uvcvideo: Frame complete (FID bit toggled).
[ 5849.436566] uvcvideo: frame 67 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3602447630/3604126248/944
[ 5849.436677] uvcvideo: USB isochronous frame lost (-71).
[ 5849.436680] uvcvideo: USB isochronous frame lost (-18).
[ 5849.436683] uvcvideo: USB isochronous frame lost (-18).
[ 5849.436686] uvcvideo: USB isochronous frame lost (-18).
[ 5849.436689] uvcvideo: USB isochronous frame lost (-18).
[ 5849.436692] uvcvideo: USB isochronous frame lost (-18).
[ 5849.436799] uvcvideo: frame 102 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2637447328/2656066928/22837
[ 5849.440523] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440528] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440531] uvcvideo: USB isochronous frame lost (-71).
[ 5849.440534] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440537] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440540] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440543] uvcvideo: USB isochronous frame lost (-71).
[ 5849.440546] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440549] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440552] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440555] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440558] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440561] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440564] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440567] uvcvideo: USB isochronous frame lost (-71).
[ 5849.440570] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440573] uvcvideo: USB isochronous frame lost (-71).
[ 5849.440576] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440579] uvcvideo: USB isochronous frame lost (-71).
[ 5849.440582] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440585] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440588] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440591] uvcvideo: USB isochronous frame lost (-71).
[ 5849.440594] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440597] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440600] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440603] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440605] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440608] uvcvideo: USB isochronous frame lost (-71).
[ 5849.440611] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440614] uvcvideo: USB isochronous frame lost (-18).
[ 5849.440617] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444221] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444226] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444229] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444232] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444235] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444238] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444241] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444245] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444248] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444251] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444254] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444257] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444259] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444262] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444265] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444268] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444271] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444273] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444276] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444279] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444282] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444285] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444288] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444291] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444293] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444296] uvcvideo: USB isochronous frame lost (-71).
[ 5849.444299] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444302] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444305] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444307] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444310] uvcvideo: USB isochronous frame lost (-18).
[ 5849.444313] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445524] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445529] uvcvideo: USB isochronous frame lost (-71).
[ 5849.445532] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445535] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445538] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445540] uvcvideo: USB isochronous frame lost (-71).
[ 5849.445543] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445546] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445549] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445553] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445556] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445559] uvcvideo: USB isochronous frame lost (-71).
[ 5849.445562] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445564] uvcvideo: USB isochronous frame lost (-71).
[ 5849.445567] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445570] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445573] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445576] uvcvideo: USB isochronous frame lost (-71).
[ 5849.445579] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445582] uvcvideo: USB isochronous frame lost (-18).
[ 5849.445587] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.445591] uvcvideo: Frame complete (EOF found).
[ 5849.445598] uvcvideo: frame 68 stats: 0/23/23 packets, 0/0/23 pts (!early initial), 22/23 scr, last pts/stc/sof 3602447630/3604798333/958
[ 5849.464533] uvcvideo: Frame complete (EOF found).
[ 5849.464537] uvcvideo: EOF in empty payload.
[ 5849.468471] uvcvideo: frame 103 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2647364128/2666193328/22866
[ 5849.496616] uvcvideo: Frame complete (EOF found).
[ 5849.496621] uvcvideo: EOF in empty payload.
[ 5849.497606] uvcvideo: USB isochronous frame lost (-71).
[ 5849.500540] uvcvideo: frame 104 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2657448328/2676056928/22896
[ 5849.504547] uvcvideo: USB isochronous frame lost (-71).
[ 5849.504570] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504573] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504576] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504579] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504582] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504585] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504588] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504591] uvcvideo: USB isochronous frame lost (-71).
[ 5849.504594] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504597] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504600] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504603] uvcvideo: USB isochronous frame lost (-71).
[ 5849.504607] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504610] uvcvideo: USB isochronous frame lost (-18).
[ 5849.504613] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508479] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508483] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508486] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508489] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508492] uvcvideo: USB isochronous frame lost (-71).
[ 5849.508495] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508498] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508502] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508505] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508508] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508511] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508514] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508517] uvcvideo: USB isochronous frame lost (-71).
[ 5849.508520] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508523] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508526] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508529] uvcvideo: USB isochronous frame lost (-71).
[ 5849.508532] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508535] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508538] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508541] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508544] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508547] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508550] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508553] uvcvideo: USB isochronous frame lost (-71).
[ 5849.508556] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508559] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508562] uvcvideo: USB isochronous frame lost (-71).
[ 5849.508565] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508568] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508571] uvcvideo: USB isochronous frame lost (-18).
[ 5849.508574] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512243] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512248] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512251] uvcvideo: USB isochronous frame lost (-71).
[ 5849.512254] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512257] uvcvideo: USB isochronous frame lost (-71).
[ 5849.512260] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512263] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512266] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512269] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512272] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512275] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512278] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512281] uvcvideo: USB isochronous frame lost (-71).
[ 5849.512284] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512287] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512290] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512295] uvcvideo: USB isochronous frame lost (-71).
[ 5849.512298] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512301] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512304] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512307] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512310] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512313] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512316] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512319] uvcvideo: USB isochronous frame lost (-71).
[ 5849.512321] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512324] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512327] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512330] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512333] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512336] uvcvideo: USB isochronous frame lost (-18).
[ 5849.512339] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513495] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513501] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513504] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513507] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513510] uvcvideo: USB isochronous frame lost (-71).
[ 5849.513513] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513516] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513520] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513523] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513525] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513528] uvcvideo: USB isochronous frame lost (-18).
[ 5849.513561] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.513565] uvcvideo: Frame complete (EOF found).
[ 5849.513572] uvcvideo: frame 69 stats: 407/35/442 packets, 1/139/440 pts (early initial), 439/440 scr, last pts/stc/sof 3605633930/3608002731/1025
[ 5849.532505] uvcvideo: Frame complete (EOF found).
[ 5849.532509] uvcvideo: EOF in empty payload.
[ 5849.532524] uvcvideo: frame 105 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2667364328/2686192128/22925
[ 5849.564567] uvcvideo: Frame complete (EOF found).
[ 5849.564572] uvcvideo: EOF in empty payload.
[ 5849.565572] uvcvideo: USB isochronous frame lost (-71).
[ 5849.565581] uvcvideo: frame 70 stats: 404/4/408 packets, 1/136/408 pts (early initial), 407/408 scr, last pts/stc/sof 3608820230/3610451037/1076
[ 5849.565585] uvcvideo: Frame complete (FID bit toggled).
[ 5849.565590] uvcvideo: frame 71 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.565600] uvcvideo: frame 72 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.565623] uvcvideo: Frame complete (FID bit toggled).
[ 5849.565629] uvcvideo: frame 73 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3608820230/3610469038/1077
[ 5849.565750] uvcvideo: USB isochronous frame lost (-18).
[ 5849.568623] uvcvideo: frame 106 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2677451128/2696084128/22955
[ 5849.572546] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572558] uvcvideo: USB isochronous frame lost (-71).
[ 5849.572561] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572564] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572567] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572570] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572573] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572576] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572579] uvcvideo: USB isochronous frame lost (-71).
[ 5849.572582] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572585] uvcvideo: USB isochronous frame lost (-71).
[ 5849.572588] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572591] uvcvideo: USB isochronous frame lost (-71).
[ 5849.572594] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572597] uvcvideo: USB isochronous frame lost (-71).
[ 5849.572600] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572603] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572606] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572609] uvcvideo: USB isochronous frame lost (-71).
[ 5849.572612] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572615] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572618] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572621] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572624] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572627] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572630] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572633] uvcvideo: USB isochronous frame lost (-18).
[ 5849.572636] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576537] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576541] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576546] uvcvideo: USB isochronous frame lost (-71).
[ 5849.576549] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576551] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576554] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576557] uvcvideo: USB isochronous frame lost (-71).
[ 5849.576561] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576564] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576567] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576569] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576573] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576576] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576579] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576582] uvcvideo: USB isochronous frame lost (-71).
[ 5849.576585] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576588] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576591] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576594] uvcvideo: USB isochronous frame lost (-71).
[ 5849.576597] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576600] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576603] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576606] uvcvideo: USB isochronous frame lost (-71).
[ 5849.576608] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576611] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576614] uvcvideo: USB isochronous frame lost (-71).
[ 5849.576617] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576620] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576623] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576626] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576629] uvcvideo: USB isochronous frame lost (-18).
[ 5849.576632] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580319] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580323] uvcvideo: USB isochronous frame lost (-71).
[ 5849.580327] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580329] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580333] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580335] uvcvideo: USB isochronous frame lost (-71).
[ 5849.580339] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580342] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580345] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580348] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580351] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580355] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580358] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580361] uvcvideo: USB isochronous frame lost (-71).
[ 5849.580364] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580367] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580370] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580373] uvcvideo: USB isochronous frame lost (-71).
[ 5849.580376] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580379] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580382] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580384] uvcvideo: USB isochronous frame lost (-71).
[ 5849.580387] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580390] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580393] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580396] uvcvideo: USB isochronous frame lost (-71).
[ 5849.580399] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580402] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580405] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580408] uvcvideo: USB isochronous frame lost (-18).
[ 5849.580410] uvcvideo: USB isochronous frame lost (-18).
[ 5849.581502] uvcvideo: USB isochronous frame lost (-18).
[ 5849.581538] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.581542] uvcvideo: Frame complete (EOF found).
[ 5849.581550] uvcvideo: frame 74 stats: 0/31/31 packets, 0/0/31 pts (!early initial), 30/31 scr, last pts/stc/sof 3608820230/3611207130/1092
[ 5849.596610] uvcvideo: Frame complete (EOF found).
[ 5849.596615] uvcvideo: EOF in empty payload.
[ 5849.600493] uvcvideo: frame 107 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2687364128/2706181728/22984
[ 5849.628686] uvcvideo: Frame complete (EOF found).
[ 5849.628690] uvcvideo: EOF in empty payload.
[ 5849.629595] uvcvideo: USB isochronous frame lost (-18).
[ 5849.629600] uvcvideo: USB isochronous frame lost (-18).
[ 5849.636493] uvcvideo: USB isochronous frame lost (-71).
[ 5849.636557] uvcvideo: USB isochronous frame lost (-71).
[ 5849.636645] uvcvideo: USB isochronous frame lost (-18).
[ 5849.636648] uvcvideo: USB isochronous frame lost (-71).
[ 5849.636651] uvcvideo: USB isochronous frame lost (-18).
[ 5849.636654] uvcvideo: USB isochronous frame lost (-18).
[ 5849.636657] uvcvideo: USB isochronous frame lost (-18).
[ 5849.636660] uvcvideo: USB isochronous frame lost (-18).
[ 5849.636766] uvcvideo: frame 108 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2697450728/2716083528/23014
[ 5849.640562] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640567] uvcvideo: USB isochronous frame lost (-71).
[ 5849.640570] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640573] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640576] uvcvideo: USB isochronous frame lost (-71).
[ 5849.640579] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640582] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640585] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640588] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640591] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640594] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640597] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640600] uvcvideo: USB isochronous frame lost (-71).
[ 5849.640603] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640606] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640609] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640612] uvcvideo: USB isochronous frame lost (-71).
[ 5849.640615] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640618] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640621] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640624] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640627] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640630] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640633] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640636] uvcvideo: USB isochronous frame lost (-71).
[ 5849.640639] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640642] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640645] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640648] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640651] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640654] uvcvideo: USB isochronous frame lost (-18).
[ 5849.640657] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644250] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644254] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644258] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644261] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644264] uvcvideo: USB isochronous frame lost (-71).
[ 5849.644267] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644270] uvcvideo: USB isochronous frame lost (-71).
[ 5849.644273] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644276] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644279] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644282] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644285] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644288] uvcvideo: USB isochronous frame lost (-71).
[ 5849.644291] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644295] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644298] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644301] uvcvideo: USB isochronous frame lost (-71).
[ 5849.644304] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644307] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644310] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644313] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644316] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644319] uvcvideo: USB isochronous frame lost (-71).
[ 5849.644322] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644325] uvcvideo: USB isochronous frame lost (-71).
[ 5849.644328] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644331] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644334] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644337] uvcvideo: USB isochronous frame lost (-71).
[ 5849.644340] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644342] uvcvideo: USB isochronous frame lost (-18).
[ 5849.644345] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645536] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645541] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645544] uvcvideo: USB isochronous frame lost (-71).
[ 5849.645547] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645550] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645553] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645556] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645558] uvcvideo: USB isochronous frame lost (-71).
[ 5849.645561] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645564] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645567] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645570] uvcvideo: USB isochronous frame lost (-71).
[ 5849.645573] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645576] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645579] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645583] uvcvideo: USB isochronous frame lost (-71).
[ 5849.645586] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645589] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645592] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645595] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645598] uvcvideo: USB isochronous frame lost (-18).
[ 5849.645604] uvcvideo: Marking buffer as bad (error bit set).
[ 5849.645608] uvcvideo: Frame complete (EOF found).
[ 5849.645615] uvcvideo: frame 75 stats: 401/36/437 packets, 1/133/435 pts (early initial), 434/435 scr, last pts/stc/sof 3612006530/3614399528/1158
[ 5849.664563] uvcvideo: Frame complete (EOF found).
[ 5849.664568] uvcvideo: EOF in empty payload.
[ 5849.668529] uvcvideo: frame 109 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2707364128/2726200528/23043
[ 5849.696592] uvcvideo: Frame complete (EOF found).
[ 5849.696597] uvcvideo: EOF in empty payload.
[ 5849.697561] uvcvideo: USB isochronous frame lost (-71).
[ 5849.697566] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697569] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697572] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697575] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697578] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697581] uvcvideo: USB isochronous frame lost (-71).
[ 5849.697584] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697587] uvcvideo: USB isochronous frame lost (-71).
[ 5849.697590] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697604] uvcvideo: USB isochronous frame lost (-18).
[ 5849.697656] uvcvideo: USB isochronous frame lost (-71).
[ 5849.697662] uvcvideo: frame 76 stats: 400/8/408 packets, 1/132/408 pts (early initial), 407/408 scr, last pts/stc/sof 3615192830/3616913842/1211
[ 5849.697666] uvcvideo: Frame complete (FID bit toggled).
[ 5849.697672] uvcvideo: frame 77 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.697681] uvcvideo: frame 78 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5849.697685] uvcvideo: Frame complete (FID bit toggled).
[ 5849.697690] uvcvideo: frame 79 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3615192830/3616931843/1211
[ 5851.748821] uvcvideo: frame 110 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2717449128/2736064328/23073
[ 5851.749859] uvcvideo: USB isochronous frame lost (-71).
[ 5851.749876] uvcvideo: frame 80 stats: 0/8/8 packets, 0/0/8 pts (!early initial), 7/8 scr, last pts/stc/sof 3615192830/3616973848/1212
[ 5851.749885] uvcvideo: Frame complete (FID bit toggled).
[ 5851.749898] uvcvideo: frame 81 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5851.749919] uvcvideo: frame 82 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5851.749927] uvcvideo: Frame complete (FID bit toggled).
[ 5851.749940] uvcvideo: frame 83 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3615192830/3616991851/1212
[ 5851.749955] uvcvideo: USB isochronous frame lost (-71).
[ 5851.749963] uvcvideo: USB isochronous frame lost (-18).
[ 5851.749970] uvcvideo: USB isochronous frame lost (-18).
[ 5851.749977] uvcvideo: USB isochronous frame lost (-18).
[ 5851.750019] uvcvideo: Marking buffer as bad (error bit set).
[ 5851.750028] uvcvideo: Frame complete (EOF found).
[ 5851.750041] uvcvideo: frame 84 stats: 0/2/2 packets, 0/0/2 pts (!early initial), 1/2 scr, last pts/stc/sof 3615192830/3715338104/1213
[ 5851.756876] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756885] uvcvideo: USB isochronous frame lost (-71).
[ 5851.756893] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756900] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756907] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756915] uvcvideo: USB isochronous frame lost (-71).
[ 5851.756922] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756929] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756937] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756944] uvcvideo: USB isochronous frame lost (-18).
[ 5851.756951] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760861] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760871] uvcvideo: USB isochronous frame lost (-71).
[ 5851.760879] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760886] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760893] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760900] uvcvideo: USB isochronous frame lost (-71).
[ 5851.760908] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760915] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760923] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760930] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760937] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760945] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760952] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760959] uvcvideo: USB isochronous frame lost (-71).
[ 5851.760966] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760974] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760981] uvcvideo: USB isochronous frame lost (-18).
[ 5851.760988] uvcvideo: USB isochronous frame lost (-71).
[ 5851.760995] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761003] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761010] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761018] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761025] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761032] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761039] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761046] uvcvideo: USB isochronous frame lost (-71).
[ 5851.761054] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761062] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761069] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761076] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761084] uvcvideo: USB isochronous frame lost (-18).
[ 5851.761091] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813163] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813172] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813180] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813187] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813195] uvcvideo: USB isochronous frame lost (-71).
[ 5853.813202] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813210] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813217] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813224] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813232] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813240] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813247] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813255] uvcvideo: USB isochronous frame lost (-71).
[ 5853.813262] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813270] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813277] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813285] uvcvideo: USB isochronous frame lost (-71).
[ 5853.813292] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813299] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813307] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813314] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813321] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813329] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813336] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813343] uvcvideo: USB isochronous frame lost (-71).
[ 5853.813350] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813358] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813365] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813373] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813380] uvcvideo: USB isochronous frame lost (-18).
[ 5853.813387] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817159] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817169] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817176] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817183] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817191] uvcvideo: USB isochronous frame lost (-71).
[ 5853.817198] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817206] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817213] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817220] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817232] uvcvideo: Marking buffer as bad (error bit set).
[ 5853.817240] uvcvideo: Frame complete (EOF found).
[ 5853.817249] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817258] uvcvideo: USB isochronous frame lost (-71).
[ 5853.817265] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817272] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817279] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817287] uvcvideo: USB isochronous frame lost (-71).
[ 5853.817294] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817301] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817309] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817316] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817323] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817330] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817337] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817344] uvcvideo: USB isochronous frame lost (-71).
[ 5853.817351] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817359] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817366] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817373] uvcvideo: USB isochronous frame lost (-71).
[ 5853.817380] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817388] uvcvideo: USB isochronous frame lost (-18).
[ 5853.817395] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818247] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818256] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818263] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818270] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818282] uvcvideo: USB isochronous frame lost (-71).
[ 5853.818289] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818296] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818304] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818311] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818318] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818330] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818338] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818345] uvcvideo: USB isochronous frame lost (-71).
[ 5853.818352] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818360] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818367] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818374] uvcvideo: USB isochronous frame lost (-71).
[ 5853.818381] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818389] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818396] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818403] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818411] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818418] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818426] uvcvideo: USB isochronous frame lost (-18).
[ 5853.818441] uvcvideo: frame 85 stats: 39/6/45 packets, 0/0/45 pts (early initial), 44/45 scr, last pts/stc/sof 3713968130/3814428446/1229
[ 5853.818469] uvcvideo: Marking buffer as bad (error bit set).
[ 5853.818483] uvcvideo: Frame complete (EOF found).
[ 5853.818497] uvcvideo: frame 86 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 3812743430/3814704482/1235
[ 5853.822378] uvcvideo: USB isochronous frame lost (-18).
[ 5853.825330] uvcvideo: Frame complete (EOF found).
[ 5853.825339] uvcvideo: EOF in empty payload.
[ 5853.833127] uvcvideo: frame 111 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2727364328/3974813728/26725
[ 5853.838409] uvcvideo: USB isochronous frame lost (-18).
[ 5853.842401] uvcvideo: USB isochronous frame lost (-18).
[ 5853.846400] uvcvideo: USB isochronous frame lost (-18).
[ 5853.854403] uvcvideo: USB isochronous frame lost (-18).
[ 5853.865186] uvcvideo: Frame complete (EOF found).
[ 5853.865195] uvcvideo: EOF in empty payload.
[ 5853.869160] uvcvideo: frame 112 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 3957439328/3986168728/26759
[ 5853.874279] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881199] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881204] uvcvideo: USB isochronous frame lost (-71).
[ 5853.881209] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881213] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881217] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881222] uvcvideo: USB isochronous frame lost (-71).
[ 5853.881226] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881230] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881235] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881239] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881244] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881248] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881252] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881257] uvcvideo: USB isochronous frame lost (-18).
[ 5853.881261] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885152] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885157] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885161] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885166] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885170] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885175] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885179] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885183] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885188] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885192] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885196] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885201] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885205] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885210] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885214] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885218] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885223] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885227] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885232] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885236] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885240] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885245] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885249] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885254] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885258] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885262] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885267] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885271] uvcvideo: USB isochronous frame lost (-71).
[ 5853.885276] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885280] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885284] uvcvideo: USB isochronous frame lost (-18).
[ 5853.885289] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889041] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889047] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889051] uvcvideo: USB isochronous frame lost (-71).
[ 5853.889056] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889060] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889064] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889071] uvcvideo: USB isochronous frame lost (-71).
[ 5853.889075] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889079] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889084] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889088] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889094] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889098] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889103] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889107] uvcvideo: USB isochronous frame lost (-71).
[ 5853.889111] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889116] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889120] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889127] uvcvideo: USB isochronous frame lost (-71).
[ 5853.889131] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889136] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889140] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889146] uvcvideo: USB isochronous frame lost (-71).
[ 5853.889151] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889155] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889159] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889163] uvcvideo: USB isochronous frame lost (-71).
[ 5853.889168] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889174] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889178] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889182] uvcvideo: USB isochronous frame lost (-18).
[ 5853.889187] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890291] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890297] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890301] uvcvideo: USB isochronous frame lost (-71).
[ 5853.890307] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890312] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890316] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890320] uvcvideo: USB isochronous frame lost (-71).
[ 5853.890325] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890329] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890334] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890339] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890343] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890347] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890352] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890358] uvcvideo: USB isochronous frame lost (-71).
[ 5853.890362] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890367] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890371] uvcvideo: USB isochronous frame lost (-18).
[ 5853.890382] uvcvideo: Marking buffer as bad (error bit set).
[ 5853.890391] uvcvideo: Frame complete (EOF found).
[ 5853.890402] uvcvideo: frame 87 stats: 465/1/466 packets, 1/200/466 pts (early initial), 465/466 scr, last pts/stc/sof 3815929730/3818124907/1306
[ 5853.897234] uvcvideo: Frame complete (EOF found).
[ 5853.897241] uvcvideo: EOF in empty payload.
[ 5853.901125] uvcvideo: frame 113 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 3967364128/3996078728/26788
[ 5853.926338] uvcvideo: USB isochronous frame lost (-18).
[ 5853.929361] uvcvideo: Frame complete (EOF found).
[ 5853.929366] uvcvideo: EOF in empty payload.
[ 5853.933118] uvcvideo: frame 114 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 3977449928/4006167528/26818
[ 5853.949175] uvcvideo: USB isochronous frame lost (-71).
[ 5853.949182] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949186] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949191] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949195] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949200] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949204] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949208] uvcvideo: USB isochronous frame lost (-71).
[ 5853.949213] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949217] uvcvideo: USB isochronous frame lost (-71).
[ 5853.949222] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949226] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949230] uvcvideo: USB isochronous frame lost (-71).
[ 5853.949235] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949239] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949244] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949248] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949253] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949257] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949262] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949266] uvcvideo: USB isochronous frame lost (-71).
[ 5853.949270] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949274] uvcvideo: USB isochronous frame lost (-71).
[ 5853.949279] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949283] uvcvideo: USB isochronous frame lost (-71).
[ 5853.949288] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949292] uvcvideo: USB isochronous frame lost (-18).
[ 5853.949296] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953140] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953144] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953149] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953153] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953158] uvcvideo: USB isochronous frame lost (-71).
[ 5853.953162] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953166] uvcvideo: USB isochronous frame lost (-71).
[ 5853.953170] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953174] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953179] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953183] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953187] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953191] uvcvideo: USB isochronous frame lost (-71).
[ 5853.953196] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953200] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953205] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953209] uvcvideo: USB isochronous frame lost (-71).
[ 5853.953213] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953217] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953222] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953226] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953230] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953234] uvcvideo: USB isochronous frame lost (-71).
[ 5853.953238] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953243] uvcvideo: USB isochronous frame lost (-71).
[ 5853.953247] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953251] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953255] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953260] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953264] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953268] uvcvideo: USB isochronous frame lost (-18).
[ 5853.953272] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954269] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954274] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954278] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954282] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954287] uvcvideo: USB isochronous frame lost (-71).
[ 5853.954291] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954295] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954300] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954304] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954309] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954313] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954317] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954322] uvcvideo: USB isochronous frame lost (-71).
[ 5853.954326] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954330] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954335] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954339] uvcvideo: USB isochronous frame lost (-71).
[ 5853.954344] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954348] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954352] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954357] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954361] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954366] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954370] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954374] uvcvideo: USB isochronous frame lost (-71).
[ 5853.954379] uvcvideo: USB isochronous frame lost (-71).
[ 5853.954383] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954388] uvcvideo: USB isochronous frame lost (-18).
[ 5853.954395] uvcvideo: Marking buffer as bad (error bit set).
[ 5853.954400] uvcvideo: Frame complete (EOF found).
[ 5853.954410] uvcvideo: frame 88 stats: 431/1/432 packets, 1/164/432 pts (early initial), 431/432 scr, last pts/stc/sof 3819116030/3821257298/1371
[ 5853.962327] uvcvideo: USB isochronous frame lost (-18).
[ 5853.965149] uvcvideo: Frame complete (EOF found).
[ 5853.965156] uvcvideo: EOF in empty payload.
[ 5853.969165] uvcvideo: frame 115 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 3987364128/4016070928/26847
[ 5853.990359] uvcvideo: USB isochronous frame lost (-18).
[ 5853.994331] uvcvideo: USB isochronous frame lost (-18).
[ 5853.997223] uvcvideo: Frame complete (EOF found).
[ 5853.997227] uvcvideo: EOF in empty payload.
[ 5854.001163] uvcvideo: frame 116 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 3997450528/4026157528/26877
[ 5854.013225] uvcvideo: USB isochronous frame lost (-18).
[ 5854.013229] uvcvideo: USB isochronous frame lost (-71).
[ 5854.013232] uvcvideo: USB isochronous frame lost (-18).
[ 5854.013235] uvcvideo: USB isochronous frame lost (-71).
[ 5854.013238] uvcvideo: USB isochronous frame lost (-18).
[ 5854.013241] uvcvideo: USB isochronous frame lost (-18).
[ 5854.013244] uvcvideo: USB isochronous frame lost (-18).
[ 5854.013247] uvcvideo: USB isochronous frame lost (-18).
[ 5854.013250] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017174] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017178] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017181] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017184] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017187] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017190] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017193] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017196] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017199] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017202] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017205] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017208] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017211] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017214] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017217] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017220] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017223] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017226] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017229] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017232] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017235] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017238] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017241] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017244] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017247] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017250] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017253] uvcvideo: USB isochronous frame lost (-71).
[ 5854.017256] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017259] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017261] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017264] uvcvideo: USB isochronous frame lost (-18).
[ 5854.017267] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021025] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021030] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021033] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021037] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021039] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021042] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021045] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021048] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021051] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021054] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021057] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021060] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021063] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021066] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021069] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021072] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021075] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021077] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021080] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021083] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021086] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021089] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021092] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021094] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021097] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021100] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021103] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021106] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021109] uvcvideo: USB isochronous frame lost (-71).
[ 5854.021111] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021114] uvcvideo: USB isochronous frame lost (-18).
[ 5854.021117] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022279] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022282] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022286] uvcvideo: USB isochronous frame lost (-71).
[ 5854.022289] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022291] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022294] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022298] uvcvideo: USB isochronous frame lost (-71).
[ 5854.022301] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022304] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022307] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022310] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022313] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022315] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022318] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022321] uvcvideo: USB isochronous frame lost (-71).
[ 5854.022324] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022327] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022330] uvcvideo: USB isochronous frame lost (-18).
[ 5854.022366] uvcvideo: Marking buffer as bad (error bit set).
[ 5854.022372] uvcvideo: Frame complete (EOF found).
[ 5854.022379] uvcvideo: frame 89 stats: 439/1/440 packets, 1/173/440 pts (early initial), 439/440 scr, last pts/stc/sof 3822302330/3824461696/1438
[ 5854.026335] uvcvideo: USB isochronous frame lost (-18).
[ 5854.029331] uvcvideo: Frame complete (EOF found).
[ 5854.029336] uvcvideo: EOF in empty payload.
[ 5854.033170] uvcvideo: frame 117 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4007364528/4036049928/26906
[ 5854.042373] uvcvideo: USB isochronous frame lost (-18).
[ 5854.046285] uvcvideo: USB isochronous frame lost (-18).
[ 5854.046341] uvcvideo: USB isochronous frame lost (-18).
[ 5854.050340] uvcvideo: USB isochronous frame lost (-18).
[ 5854.054339] uvcvideo: USB isochronous frame lost (-18).
[ 5854.058340] uvcvideo: USB isochronous frame lost (-18).
[ 5854.062268] uvcvideo: USB isochronous frame lost (-18).
[ 5854.062325] uvcvideo: USB isochronous frame lost (-18).
[ 5854.065158] uvcvideo: Frame complete (EOF found).
[ 5854.065161] uvcvideo: EOF in empty payload.
[ 5854.069134] uvcvideo: frame 118 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4017451128/4046184728/26936
[ 5854.070292] uvcvideo: USB isochronous frame lost (-18).
[ 5854.070348] uvcvideo: USB isochronous frame lost (-18).
[ 5854.074289] uvcvideo: USB isochronous frame lost (-18).
[ 5854.074343] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081154] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081191] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081194] uvcvideo: USB isochronous frame lost (-71).
[ 5854.081197] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081200] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081203] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081206] uvcvideo: USB isochronous frame lost (-71).
[ 5854.081209] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081211] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081214] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081217] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081220] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081223] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081226] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081229] uvcvideo: USB isochronous frame lost (-71).
[ 5854.081232] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081235] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081237] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081240] uvcvideo: USB isochronous frame lost (-71).
[ 5854.081243] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081246] uvcvideo: USB isochronous frame lost (-18).
[ 5854.081249] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133445] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133455] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133463] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133470] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133477] uvcvideo: USB isochronous frame lost (-71).
[ 5856.133485] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133492] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133500] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133507] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133514] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133522] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133529] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133537] uvcvideo: USB isochronous frame lost (-71).
[ 5856.133544] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133551] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133559] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133566] uvcvideo: USB isochronous frame lost (-71).
[ 5856.133573] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133581] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133588] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133596] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133603] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133610] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133618] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133625] uvcvideo: USB isochronous frame lost (-71).
[ 5856.133632] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133640] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133647] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133654] uvcvideo: USB isochronous frame lost (-71).
[ 5856.133662] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133669] uvcvideo: USB isochronous frame lost (-18).
[ 5856.133676] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137509] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137518] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137526] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137533] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137541] uvcvideo: USB isochronous frame lost (-71).
[ 5856.137548] uvcvideo: USB isochronous frame lost (-71).
[ 5856.137556] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137564] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137571] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137614] uvcvideo: Marking buffer as bad (error bit set).
[ 5856.137625] uvcvideo: Frame complete (EOF found).
[ 5856.137641] uvcvideo: frame 90 stats: 424/2/426 packets, 1/168/426 pts (early initial), 425/426 scr, last pts/stc/sof 3825488630/3925796317/1501
[ 5856.137698] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137706] uvcvideo: USB isochronous frame lost (-71).
[ 5856.137713] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137720] uvcvideo: USB isochronous frame lost (-71).
[ 5856.137727] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137734] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137742] uvcvideo: USB isochronous frame lost (-71).
[ 5856.137749] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137756] uvcvideo: USB isochronous frame lost (-18).
[ 5856.137763] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141469] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141479] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141486] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141494] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141501] uvcvideo: USB isochronous frame lost (-71).
[ 5856.141508] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141516] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141523] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141530] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141538] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141545] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141552] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141560] uvcvideo: USB isochronous frame lost (-71).
[ 5856.141567] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141574] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141582] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141589] uvcvideo: USB isochronous frame lost (-71).
[ 5856.141596] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141604] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141611] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141618] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141625] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141633] uvcvideo: USB isochronous frame lost (-71).
[ 5856.141640] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141647] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141656] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141664] uvcvideo: USB isochronous frame lost (-71).
[ 5856.141671] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141678] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141685] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141693] uvcvideo: USB isochronous frame lost (-18).
[ 5856.141700] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145421] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145430] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145437] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145445] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145452] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145459] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145467] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145474] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145481] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145489] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145496] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145504] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145511] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145518] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145526] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145533] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145540] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145548] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145555] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145562] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145570] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145577] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145585] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145592] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145600] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145607] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145614] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145622] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145629] uvcvideo: USB isochronous frame lost (-71).
[ 5856.145640] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145648] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145655] uvcvideo: USB isochronous frame lost (-18).
[ 5856.145961] uvcvideo: Frame complete (EOF found).
[ 5856.145968] uvcvideo: EOF in empty payload.
[ 5856.146849] uvcvideo: USB isochronous frame lost (-18).
[ 5856.146858] uvcvideo: USB isochronous frame lost (-71).
[ 5856.146867] uvcvideo: USB isochronous frame lost (-18).
[ 5856.146874] uvcvideo: USB isochronous frame lost (-71).
[ 5856.146882] uvcvideo: USB isochronous frame lost (-18).
[ 5856.146889] uvcvideo: USB isochronous frame lost (-71).
[ 5856.146896] uvcvideo: USB isochronous frame lost (-18).
[ 5856.146906] uvcvideo: USB isochronous frame lost (-71).
[ 5856.146980] uvcvideo: USB isochronous frame lost (-71).
[ 5856.146987] uvcvideo: USB isochronous frame lost (-18).
[ 5856.146997] uvcvideo: USB isochronous frame lost (-71).
[ 5856.147004] uvcvideo: USB isochronous frame lost (-18).
[ 5856.147012] uvcvideo: USB isochronous frame lost (-71).
[ 5856.147019] uvcvideo: USB isochronous frame lost (-18).
[ 5856.147027] uvcvideo: USB isochronous frame lost (-71).
[ 5856.147036] uvcvideo: USB isochronous frame lost (-18).
[ 5856.147128] uvcvideo: USB isochronous frame lost (-71).
[ 5856.147135] uvcvideo: USB isochronous frame lost (-18).
[ 5856.147146] uvcvideo: USB isochronous frame lost (-71).
[ 5856.147153] uvcvideo: USB isochronous frame lost (-18).
[ 5856.147160] uvcvideo: USB isochronous frame lost (-18).
[ 5856.147167] uvcvideo: USB isochronous frame lost (-18).
[ 5856.147174] uvcvideo: USB isochronous frame lost (-71).
[ 5856.150835] uvcvideo: USB isochronous frame lost (-18).
[ 5856.150845] uvcvideo: USB isochronous frame lost (-71).
[ 5856.150853] uvcvideo: USB isochronous frame lost (-18).
[ 5856.150860] uvcvideo: USB isochronous frame lost (-18).
[ 5856.150868] uvcvideo: USB isochronous frame lost (-18).
[ 5856.150875] uvcvideo: USB isochronous frame lost (-71).
[ 5856.150882] uvcvideo: USB isochronous frame lost (-18).
[ 5856.150965] uvcvideo: USB isochronous frame lost (-71).
[ 5856.150972] uvcvideo: USB isochronous frame lost (-18).
[ 5856.150979] uvcvideo: USB isochronous frame lost (-71).
[ 5856.150991] uvcvideo: USB isochronous frame lost (-18).
[ 5856.150998] uvcvideo: USB isochronous frame lost (-71).
[ 5856.151005] uvcvideo: USB isochronous frame lost (-18).
[ 5856.151013] uvcvideo: USB isochronous frame lost (-71).
[ 5856.151020] uvcvideo: USB isochronous frame lost (-18).
[ 5856.151098] uvcvideo: USB isochronous frame lost (-71).
[ 5856.151106] uvcvideo: USB isochronous frame lost (-18).
[ 5856.151113] uvcvideo: USB isochronous frame lost (-71).
[ 5856.151120] uvcvideo: USB isochronous frame lost (-18).
[ 5856.151127] uvcvideo: USB isochronous frame lost (-71).
[ 5856.151134] uvcvideo: USB isochronous frame lost (-18).
[ 5856.151141] uvcvideo: USB isochronous frame lost (-71).
[ 5858.201923] uvcvideo: frame 119 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 4027364128/375594832/28777
[ 5858.203107] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203117] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203124] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203132] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203140] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203147] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203155] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203234] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203241] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203249] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203256] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203263] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203271] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203278] uvcvideo: USB isochronous frame lost (-71).
[ 5858.203285] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203338] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203345] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203375] uvcvideo: Marking buffer as bad (error bit set).
[ 5858.203393] uvcvideo: Frame complete (EOF found).
[ 5858.203400] uvcvideo: USB isochronous frame lost (-18).
[ 5858.203416] uvcvideo: frame 91 stats: 12/25/37 packets, 0/0/33 pts (early !initial), 32/33 scr, last pts/stc/sof 3924263930/4025156691/1523
[ 5858.233952] uvcvideo: Frame complete (EOF found).
[ 5858.233962] uvcvideo: EOF in empty payload.
[ 5858.233996] uvcvideo: frame 120 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 362471432/1001800632/30624
[ 5858.261887] uvcvideo: USB isochronous frame lost (-18).
[ 5858.261898] uvcvideo: USB isochronous frame lost (-71).
[ 5858.261906] uvcvideo: USB isochronous frame lost (-18).
[ 5858.261913] uvcvideo: USB isochronous frame lost (-18).
[ 5858.261921] uvcvideo: USB isochronous frame lost (-18).
[ 5858.261928] uvcvideo: USB isochronous frame lost (-71).
[ 5858.261935] uvcvideo: USB isochronous frame lost (-18).
[ 5858.261942] uvcvideo: USB isochronous frame lost (-18).
[ 5858.261950] uvcvideo: USB isochronous frame lost (-18).
[ 5858.261957] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263255] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263264] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263272] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263279] uvcvideo: USB isochronous frame lost (-71).
[ 5858.263286] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263294] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263303] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263310] uvcvideo: USB isochronous frame lost (-71).
[ 5858.263318] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263325] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263333] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263343] uvcvideo: USB isochronous frame lost (-71).
[ 5858.263351] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263358] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263365] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263373] uvcvideo: USB isochronous frame lost (-71).
[ 5858.263383] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263391] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263398] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263405] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263413] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263465] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263472] uvcvideo: USB isochronous frame lost (-71).
[ 5858.263482] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263489] uvcvideo: USB isochronous frame lost (-71).
[ 5858.263496] uvcvideo: USB isochronous frame lost (-18).
[ 5858.263505] uvcvideo: USB isochronous frame lost (-71).
[ 5858.263512] uvcvideo: USB isochronous frame lost (-18).
[ 5858.265868] uvcvideo: Frame complete (EOF found).
[ 5858.265877] uvcvideo: EOF in empty payload.
[ 5858.269824] uvcvideo: USB isochronous frame lost (-71).
[ 5858.269834] uvcvideo: USB isochronous frame lost (-18).
[ 5858.269842] uvcvideo: USB isochronous frame lost (-71).
[ 5858.269849] uvcvideo: USB isochronous frame lost (-18).
[ 5858.269857] uvcvideo: USB isochronous frame lost (-71).
[ 5858.269864] uvcvideo: USB isochronous frame lost (-18).
[ 5858.269871] uvcvideo: USB isochronous frame lost (-71).
[ 5858.269887] uvcvideo: frame 92 stats: 444/7/451 packets, 1/176/451 pts (early initial), 450/451 scr, last pts/stc/sof 4026225530/4028103058/1584
[ 5858.269898] uvcvideo: Frame complete (FID bit toggled).
[ 5858.269913] uvcvideo: frame 93 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5858.269937] uvcvideo: frame 94 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5858.269978] uvcvideo: Frame complete (FID bit toggled).
[ 5858.269992] uvcvideo: frame 95 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 4026225530/4028157064/1585
[ 5858.270035] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270042] uvcvideo: USB isochronous frame lost (-71).
[ 5858.270049] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270056] uvcvideo: USB isochronous frame lost (-71).
[ 5858.270063] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270070] uvcvideo: USB isochronous frame lost (-71).
[ 5858.270078] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270085] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270150] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270158] uvcvideo: USB isochronous frame lost (-71).
[ 5858.270165] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270172] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270179] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270186] uvcvideo: USB isochronous frame lost (-71).
[ 5858.270194] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270201] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270212] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270219] uvcvideo: USB isochronous frame lost (-18).
[ 5858.270383] uvcvideo: frame 121 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 992396832/1011219632/30651
[ 5858.273804] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273814] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273821] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273828] uvcvideo: USB isochronous frame lost (-71).
[ 5858.273836] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273843] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273858] uvcvideo: USB isochronous frame lost (-71).
[ 5858.273865] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273873] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273880] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273887] uvcvideo: USB isochronous frame lost (-71).
[ 5858.273897] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273904] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273911] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273919] uvcvideo: USB isochronous frame lost (-71).
[ 5858.273926] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273933] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273940] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273947] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273955] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273962] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273970] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273977] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273984] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273992] uvcvideo: USB isochronous frame lost (-18).
[ 5858.273999] uvcvideo: USB isochronous frame lost (-18).
[ 5858.274006] uvcvideo: USB isochronous frame lost (-71).
[ 5858.274013] uvcvideo: USB isochronous frame lost (-18).
[ 5858.274021] uvcvideo: USB isochronous frame lost (-18).
[ 5858.274028] uvcvideo: USB isochronous frame lost (-18).
[ 5858.274035] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277810] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277820] uvcvideo: USB isochronous frame lost (-71).
[ 5858.277828] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277835] uvcvideo: USB isochronous frame lost (-71).
[ 5858.277842] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277849] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277857] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277864] uvcvideo: USB isochronous frame lost (-71).
[ 5858.277872] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277879] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277886] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277894] uvcvideo: USB isochronous frame lost (-71).
[ 5858.277901] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277909] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277916] uvcvideo: USB isochronous frame lost (-71).
[ 5858.277923] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277930] uvcvideo: USB isochronous frame lost (-71).
[ 5858.277938] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277945] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277952] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277960] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277967] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277974] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277981] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277988] uvcvideo: USB isochronous frame lost (-18).
[ 5858.277996] uvcvideo: USB isochronous frame lost (-18).
[ 5858.278003] uvcvideo: USB isochronous frame lost (-18).
[ 5858.278010] uvcvideo: USB isochronous frame lost (-18).
[ 5858.278018] uvcvideo: USB isochronous frame lost (-18).
[ 5858.278025] uvcvideo: USB isochronous frame lost (-18).
[ 5858.278032] uvcvideo: USB isochronous frame lost (-18).
[ 5858.278039] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279198] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279207] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279214] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279228] uvcvideo: USB isochronous frame lost (-71).
[ 5858.279235] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279242] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279249] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279256] uvcvideo: USB isochronous frame lost (-71).
[ 5858.279263] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279272] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279279] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279286] uvcvideo: USB isochronous frame lost (-71).
[ 5858.279293] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279300] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279310] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279317] uvcvideo: USB isochronous frame lost (-71).
[ 5858.279325] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279332] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279339] uvcvideo: USB isochronous frame lost (-18).
[ 5858.279378] uvcvideo: Marking buffer as bad (error bit set).
[ 5858.279387] uvcvideo: Frame complete (EOF found).
[ 5858.279402] uvcvideo: frame 96 stats: 0/6/6 packets, 0/0/6 pts (!early initial), 5/6 scr, last pts/stc/sof 4026225530/4028793144/1599
[ 5858.297967] uvcvideo: Frame complete (EOF found).
[ 5858.297978] uvcvideo: EOF in empty payload.
[ 5858.301899] uvcvideo: frame 122 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1002480232/1021124232/30681
[ 5858.329778] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329784] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329789] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329794] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329798] uvcvideo: USB isochronous frame lost (-71).
[ 5858.329803] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329807] uvcvideo: USB isochronous frame lost (-71).
[ 5858.329812] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329816] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329820] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329825] uvcvideo: USB isochronous frame lost (-71).
[ 5858.329829] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329834] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329838] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329843] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329847] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329856] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329860] uvcvideo: USB isochronous frame lost (-71).
[ 5858.329865] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329873] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329878] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329882] uvcvideo: USB isochronous frame lost (-18).
[ 5858.329887] uvcvideo: USB isochronous frame lost (-18).
[ 5858.330198] uvcvideo: Frame complete (EOF found).
[ 5858.330202] uvcvideo: EOF in empty payload.
[ 5858.331283] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331289] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331293] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331298] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331302] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331306] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331311] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331315] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331319] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331324] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331328] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331333] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331337] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331341] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331346] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331350] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331355] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331359] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331363] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331394] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331399] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331403] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331408] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331412] uvcvideo: USB isochronous frame lost (-18).
[ 5858.331419] uvcvideo: USB isochronous frame lost (-71).
[ 5858.331423] uvcvideo: USB isochronous frame lost (-18).
[ 5858.333857] uvcvideo: frame 123 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1012397232/1031242032/30710
[ 5858.337791] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337796] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337801] uvcvideo: USB isochronous frame lost (-71).
[ 5858.337805] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337809] uvcvideo: USB isochronous frame lost (-71).
[ 5858.337814] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337818] uvcvideo: USB isochronous frame lost (-71).
[ 5858.337845] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337849] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337853] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337858] uvcvideo: USB isochronous frame lost (-71).
[ 5858.337862] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337867] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337871] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337876] uvcvideo: USB isochronous frame lost (-71).
[ 5858.337880] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337884] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337889] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337893] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337898] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337902] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337907] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337911] uvcvideo: USB isochronous frame lost (-71).
[ 5858.337915] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337922] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337927] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337931] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337936] uvcvideo: USB isochronous frame lost (-18).
[ 5858.337940] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341798] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341805] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341809] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341814] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341818] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341822] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341827] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341831] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341838] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341842] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341847] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341856] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341860] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341865] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341874] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341878] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341882] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341887] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341891] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341896] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341900] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341904] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341909] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341913] uvcvideo: USB isochronous frame lost (-71).
[ 5858.341918] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341922] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341926] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341931] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341935] uvcvideo: USB isochronous frame lost (-18).
[ 5858.341939] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343217] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343223] uvcvideo: USB isochronous frame lost (-71).
[ 5858.343227] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343233] uvcvideo: USB isochronous frame lost (-71).
[ 5858.343238] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343244] uvcvideo: USB isochronous frame lost (-71).
[ 5858.343248] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343253] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343257] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343262] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343268] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343272] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343277] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343281] uvcvideo: USB isochronous frame lost (-71).
[ 5858.343286] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343291] uvcvideo: USB isochronous frame lost (-71).
[ 5858.343296] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343300] uvcvideo: USB isochronous frame lost (-71).
[ 5858.343305] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343309] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343315] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343319] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343324] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343328] uvcvideo: USB isochronous frame lost (-71).
[ 5858.343333] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343338] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343343] uvcvideo: USB isochronous frame lost (-18).
[ 5858.343366] uvcvideo: Marking buffer as bad (error bit set).
[ 5858.343372] uvcvideo: Frame complete (EOF found).
[ 5858.343382] uvcvideo: frame 97 stats: 371/10/381 packets, 1/103/380 pts (early initial), 379/380 scr, last pts/stc/sof 4029411830/4031913533/1664
[ 5858.362049] uvcvideo: Frame complete (EOF found).
[ 5858.362056] uvcvideo: EOF in empty payload.
[ 5858.369869] uvcvideo: frame 124 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1022480232/1041068032/30739
[ 5858.393858] uvcvideo: USB isochronous frame lost (-18).
[ 5858.393865] uvcvideo: USB isochronous frame lost (-71).
[ 5858.393869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.393874] uvcvideo: USB isochronous frame lost (-18).
[ 5858.393878] uvcvideo: USB isochronous frame lost (-18).
[ 5858.393883] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397761] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397768] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397772] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397776] uvcvideo: USB isochronous frame lost (-71).
[ 5858.397781] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397786] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397790] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397794] uvcvideo: USB isochronous frame lost (-71).
[ 5858.397799] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397803] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397807] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397812] uvcvideo: USB isochronous frame lost (-71).
[ 5858.397816] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397820] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397825] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397829] uvcvideo: USB isochronous frame lost (-71).
[ 5858.397833] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397838] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397842] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397847] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397855] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397860] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397864] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397868] uvcvideo: USB isochronous frame lost (-71).
[ 5858.397873] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397877] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397882] uvcvideo: USB isochronous frame lost (-71).
[ 5858.397886] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397890] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397895] uvcvideo: USB isochronous frame lost (-18).
[ 5858.397899] uvcvideo: USB isochronous frame lost (-18).
[ 5858.398106] uvcvideo: Frame complete (EOF found).
[ 5858.398111] uvcvideo: EOF in empty payload.
[ 5858.399279] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399286] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399291] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399295] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399299] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399304] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399309] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399313] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399324] uvcvideo: frame 98 stats: 0/0/382 packets, 1/114/382 pts (early !initial), 381/382 scr, last pts/stc/sof 4032598130/4034205818/1711
[ 5858.399341] uvcvideo: frame 99 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5858.399380] uvcvideo: Frame complete (FID bit toggled).
[ 5858.399389] uvcvideo: frame 100 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 4032598130/4034493854/1717
[ 5858.399415] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399420] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399424] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399428] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399433] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399437] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399442] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399446] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399473] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399479] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399483] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399488] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399492] uvcvideo: USB isochronous frame lost (-18).
[ 5858.399496] uvcvideo: USB isochronous frame lost (-71).
[ 5858.399504] uvcvideo: USB isochronous frame lost (-18).
[ 5858.401877] uvcvideo: frame 125 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1032396832/1051231832/30769
[ 5858.405805] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405811] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405815] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405820] uvcvideo: USB isochronous frame lost (-71).
[ 5858.405824] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405829] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405833] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405838] uvcvideo: USB isochronous frame lost (-71).
[ 5858.405842] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405846] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405855] uvcvideo: USB isochronous frame lost (-71).
[ 5858.405860] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405864] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405873] uvcvideo: USB isochronous frame lost (-71).
[ 5858.405877] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405882] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405886] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405891] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405895] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405900] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405904] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405909] uvcvideo: USB isochronous frame lost (-71).
[ 5858.405913] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405917] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405922] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405926] uvcvideo: USB isochronous frame lost (-71).
[ 5858.405930] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405935] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405939] uvcvideo: USB isochronous frame lost (-18).
[ 5858.405943] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409811] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409818] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409826] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409831] uvcvideo: USB isochronous frame lost (-71).
[ 5858.409835] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409839] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409844] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409848] uvcvideo: USB isochronous frame lost (-71).
[ 5858.409853] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409857] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409863] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409868] uvcvideo: USB isochronous frame lost (-71).
[ 5858.409872] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409876] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409881] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409886] uvcvideo: USB isochronous frame lost (-71).
[ 5858.409891] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409895] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409899] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409904] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409908] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409913] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409918] uvcvideo: USB isochronous frame lost (-71).
[ 5858.409923] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409927] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409931] uvcvideo: USB isochronous frame lost (-71).
[ 5858.409938] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409942] uvcvideo: USB isochronous frame lost (-71).
[ 5858.409946] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409950] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409954] uvcvideo: USB isochronous frame lost (-18).
[ 5858.409960] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411189] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411194] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411199] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411203] uvcvideo: USB isochronous frame lost (-71).
[ 5858.411208] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411212] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411216] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411221] uvcvideo: USB isochronous frame lost (-71).
[ 5858.411225] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411230] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411234] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411239] uvcvideo: USB isochronous frame lost (-71).
[ 5858.411243] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411248] uvcvideo: USB isochronous frame lost (-71).
[ 5858.411253] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411257] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411261] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411266] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411270] uvcvideo: USB isochronous frame lost (-71).
[ 5858.411275] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411279] uvcvideo: USB isochronous frame lost (-18).
[ 5858.411320] uvcvideo: Marking buffer as bad (error bit set).
[ 5858.411329] uvcvideo: Frame complete (EOF found).
[ 5858.411339] uvcvideo: frame 101 stats: 0/9/9 packets, 0/0/9 pts (!early initial), 8/9 scr, last pts/stc/sof 4032598130/4035141934/1731
[ 5858.430003] uvcvideo: Frame complete (EOF found).
[ 5858.430009] uvcvideo: EOF in empty payload.
[ 5858.433859] uvcvideo: frame 126 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1042480032/1061095432/30798
[ 5858.461848] uvcvideo: USB isochronous frame lost (-71).
[ 5858.461855] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461859] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461864] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461868] uvcvideo: USB isochronous frame lost (-71).
[ 5858.461873] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461877] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461882] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461886] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461890] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461895] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461899] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461903] uvcvideo: USB isochronous frame lost (-71).
[ 5858.461908] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461912] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461917] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461921] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461925] uvcvideo: USB isochronous frame lost (-18).
[ 5858.461930] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463301] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463308] uvcvideo: USB isochronous frame lost (-71).
[ 5858.463312] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463317] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463321] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463326] uvcvideo: USB isochronous frame lost (-71).
[ 5858.463330] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463337] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463341] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463346] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463350] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463354] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463359] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463363] uvcvideo: USB isochronous frame lost (-71).
[ 5858.463368] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463372] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463376] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463381] uvcvideo: USB isochronous frame lost (-71).
[ 5858.463385] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463389] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463394] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463398] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463402] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463406] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463411] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463415] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463419] uvcvideo: USB isochronous frame lost (-71).
[ 5858.463424] uvcvideo: USB isochronous frame lost (-18).
[ 5858.463428] uvcvideo: USB isochronous frame lost (-71).
[ 5858.465865] uvcvideo: Frame complete (EOF found).
[ 5858.465872] uvcvideo: EOF in empty payload.
[ 5858.469842] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469848] uvcvideo: USB isochronous frame lost (-71).
[ 5858.469852] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469857] uvcvideo: USB isochronous frame lost (-71).
[ 5858.469861] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469865] uvcvideo: USB isochronous frame lost (-71).
[ 5858.469870] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469917] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469922] uvcvideo: USB isochronous frame lost (-71).
[ 5858.469926] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469931] uvcvideo: USB isochronous frame lost (-71).
[ 5858.469935] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469939] uvcvideo: USB isochronous frame lost (-71).
[ 5858.469944] uvcvideo: USB isochronous frame lost (-18).
[ 5858.469948] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470008] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470013] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470019] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470023] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470028] uvcvideo: USB isochronous frame lost (-71).
[ 5858.470032] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470037] uvcvideo: USB isochronous frame lost (-71).
[ 5858.470041] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470045] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470050] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470054] uvcvideo: USB isochronous frame lost (-18).
[ 5858.470178] uvcvideo: frame 127 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1052397032/1071221832/30828
[ 5858.473849] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473856] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473860] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473865] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473873] uvcvideo: USB isochronous frame lost (-71).
[ 5858.473877] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473882] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473886] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473891] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473895] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473900] uvcvideo: USB isochronous frame lost (-71).
[ 5858.473904] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473908] uvcvideo: USB isochronous frame lost (-71).
[ 5858.473913] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473917] uvcvideo: USB isochronous frame lost (-71).
[ 5858.473922] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473926] uvcvideo: USB isochronous frame lost (-71).
[ 5858.473930] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473935] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473939] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473943] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473948] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473952] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473957] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473961] uvcvideo: USB isochronous frame lost (-71).
[ 5858.473965] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473970] uvcvideo: USB isochronous frame lost (-71).
[ 5858.473974] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473978] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473982] uvcvideo: USB isochronous frame lost (-18).
[ 5858.473987] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477837] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477844] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477848] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477852] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477857] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477861] uvcvideo: USB isochronous frame lost (-71).
[ 5858.477865] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477870] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477874] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477879] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477883] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477888] uvcvideo: USB isochronous frame lost (-71).
[ 5858.477892] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477896] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477901] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477905] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477909] uvcvideo: USB isochronous frame lost (-71).
[ 5858.477914] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477918] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477922] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477927] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477931] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477936] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477940] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477944] uvcvideo: USB isochronous frame lost (-71).
[ 5858.477948] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477955] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477959] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477963] uvcvideo: USB isochronous frame lost (-71).
[ 5858.477968] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477972] uvcvideo: USB isochronous frame lost (-18).
[ 5858.477976] uvcvideo: USB isochronous frame lost (-18).
[ 5858.479204] uvcvideo: USB isochronous frame lost (-18).
[ 5858.479243] uvcvideo: Marking buffer as bad (error bit set).
[ 5858.479249] uvcvideo: Frame complete (EOF found).
[ 5858.479260] uvcvideo: frame 102 stats: 375/10/385 packets, 1/107/384 pts (early !initial), 383/384 scr, last pts/stc/sof 4035784430/4038286326/1796
[ 5858.497924] uvcvideo: Frame complete (EOF found).
[ 5858.497931] uvcvideo: EOF in empty payload.
[ 5858.501895] uvcvideo: frame 128 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1062480832/1081085232/30857
[ 5858.529777] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529782] uvcvideo: USB isochronous frame lost (-71).
[ 5858.529785] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529788] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529791] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529794] uvcvideo: USB isochronous frame lost (-71).
[ 5858.529797] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529800] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529803] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529806] uvcvideo: USB isochronous frame lost (-71).
[ 5858.529809] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529812] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529815] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529818] uvcvideo: USB isochronous frame lost (-71).
[ 5858.529821] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529824] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529827] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529830] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529833] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529836] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529839] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529842] uvcvideo: USB isochronous frame lost (-71).
[ 5858.529845] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529848] uvcvideo: USB isochronous frame lost (-71).
[ 5858.529851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529855] uvcvideo: USB isochronous frame lost (-71).
[ 5858.529857] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529860] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529863] uvcvideo: USB isochronous frame lost (-18).
[ 5858.529866] uvcvideo: USB isochronous frame lost (-18).
[ 5858.530112] uvcvideo: Frame complete (EOF found).
[ 5858.530115] uvcvideo: EOF in empty payload.
[ 5858.531314] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531319] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531322] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531325] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531328] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531331] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531334] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531337] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531340] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531342] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531345] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531348] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531351] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531356] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531359] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531362] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531364] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531367] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531409] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531412] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531415] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531418] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531421] uvcvideo: USB isochronous frame lost (-18).
[ 5858.531424] uvcvideo: USB isochronous frame lost (-71).
[ 5858.531427] uvcvideo: USB isochronous frame lost (-18).
[ 5858.533879] uvcvideo: frame 129 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1072397232/1091220432/30887
[ 5858.537848] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537854] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537857] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537860] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537863] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537866] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537872] uvcvideo: frame 103 stats: 382/10/392 packets, 1/114/392 pts (early initial), 391/392 scr, last pts/stc/sof 4038970730/4040968661/1852
[ 5858.537876] uvcvideo: Frame complete (FID bit toggled).
[ 5858.537882] uvcvideo: frame 104 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5858.537894] uvcvideo: frame 105 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5858.537922] uvcvideo: Frame complete (FID bit toggled).
[ 5858.537928] uvcvideo: frame 106 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 4038970730/4041022667/1853
[ 5858.537944] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537946] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537951] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537954] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537957] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537959] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537962] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537965] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537968] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537971] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537974] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537977] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537980] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537983] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537986] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537989] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537992] uvcvideo: USB isochronous frame lost (-71).
[ 5858.537995] uvcvideo: USB isochronous frame lost (-18).
[ 5858.537997] uvcvideo: USB isochronous frame lost (-18).
[ 5858.538000] uvcvideo: USB isochronous frame lost (-18).
[ 5858.538003] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541843] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541848] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541851] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541854] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541857] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541860] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541863] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541866] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541872] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541875] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541878] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541881] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541884] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541887] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541890] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541893] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541896] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541899] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541902] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541905] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541908] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541911] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541914] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541917] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541920] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541923] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541926] uvcvideo: USB isochronous frame lost (-71).
[ 5858.541928] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541931] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541934] uvcvideo: USB isochronous frame lost (-18).
[ 5858.541937] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543207] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543212] uvcvideo: USB isochronous frame lost (-71).
[ 5858.543215] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543218] uvcvideo: USB isochronous frame lost (-71).
[ 5858.543221] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543224] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543226] uvcvideo: USB isochronous frame lost (-71).
[ 5858.543230] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543233] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543236] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543239] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543242] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543246] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543249] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543252] uvcvideo: USB isochronous frame lost (-71).
[ 5858.543255] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543258] uvcvideo: USB isochronous frame lost (-71).
[ 5858.543262] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543265] uvcvideo: USB isochronous frame lost (-71).
[ 5858.543268] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543271] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543274] uvcvideo: USB isochronous frame lost (-18).
[ 5858.543290] uvcvideo: Marking buffer as bad (error bit set).
[ 5858.543295] uvcvideo: Frame complete (EOF found).
[ 5858.543301] uvcvideo: frame 107 stats: 0/3/3 packets, 0/0/3 pts (!early initial), 2/3 scr, last pts/stc/sof 4038970730/4041484725/1863
[ 5858.559206] uvcvideo: USB isochronous frame lost (-18).
[ 5858.565829] uvcvideo: Frame complete (EOF found).
[ 5858.565834] uvcvideo: EOF in empty payload.
[ 5858.569858] uvcvideo: frame 130 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1082482232/1101112832/30916
[ 5858.593884] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593889] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593892] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593895] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593898] uvcvideo: USB isochronous frame lost (-71).
[ 5858.593901] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593904] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593907] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593910] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593913] uvcvideo: USB isochronous frame lost (-18).
[ 5858.593916] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597780] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597785] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597788] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597791] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597794] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597797] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597800] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597803] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597806] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597809] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597812] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597815] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597818] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597821] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597824] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597827] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597830] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597833] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597836] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597839] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597842] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597845] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597848] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597851] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597854] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597857] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597860] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597863] uvcvideo: USB isochronous frame lost (-71).
[ 5858.597866] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597872] uvcvideo: USB isochronous frame lost (-18).
[ 5858.597875] uvcvideo: USB isochronous frame lost (-18).
[ 5858.598080] uvcvideo: Frame complete (EOF found).
[ 5858.598084] uvcvideo: EOF in empty payload.
[ 5858.601850] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601855] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601859] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601862] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601866] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601869] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601872] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601875] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601909] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601912] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601915] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601918] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601921] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601924] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601926] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601929] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601970] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601973] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601976] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601979] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601982] uvcvideo: USB isochronous frame lost (-18).
[ 5858.601985] uvcvideo: USB isochronous frame lost (-71).
[ 5858.601988] uvcvideo: USB isochronous frame lost (-18).
[ 5858.602015] uvcvideo: USB isochronous frame lost (-18).
[ 5858.602131] uvcvideo: frame 131 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1092396832/1111248232/30946
[ 5858.605869] uvcvideo: USB isochronous frame lost (-71).
[ 5858.605875] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605878] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605881] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605884] uvcvideo: USB isochronous frame lost (-71).
[ 5858.605887] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605890] uvcvideo: USB isochronous frame lost (-71).
[ 5858.605893] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605896] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605899] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605903] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605906] uvcvideo: USB isochronous frame lost (-71).
[ 5858.605909] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605911] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605914] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605917] uvcvideo: USB isochronous frame lost (-71).
[ 5858.605920] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605923] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605927] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605930] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605933] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605936] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605939] uvcvideo: USB isochronous frame lost (-71).
[ 5858.605941] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605944] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605947] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605950] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605953] uvcvideo: USB isochronous frame lost (-71).
[ 5858.605956] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605959] uvcvideo: USB isochronous frame lost (-18).
[ 5858.605962] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609859] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609863] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609866] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609869] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609872] uvcvideo: USB isochronous frame lost (-71).
[ 5858.609875] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609878] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609881] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609884] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609887] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609890] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609893] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609896] uvcvideo: USB isochronous frame lost (-71).
[ 5858.609899] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609902] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609905] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609908] uvcvideo: USB isochronous frame lost (-71).
[ 5858.609911] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609914] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609917] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609920] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609923] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609926] uvcvideo: USB isochronous frame lost (-71).
[ 5858.609929] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609932] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609935] uvcvideo: USB isochronous frame lost (-71).
[ 5858.609938] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609942] uvcvideo: USB isochronous frame lost (-71).
[ 5858.609945] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609948] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609951] uvcvideo: USB isochronous frame lost (-18).
[ 5858.609954] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611251] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611255] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611258] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611261] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611264] uvcvideo: USB isochronous frame lost (-71).
[ 5858.611267] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611271] uvcvideo: USB isochronous frame lost (-71).
[ 5858.611274] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611277] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611280] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611283] uvcvideo: USB isochronous frame lost (-18).
[ 5858.611325] uvcvideo: Marking buffer as bad (error bit set).
[ 5858.611329] uvcvideo: Frame complete (EOF found).
[ 5858.611336] uvcvideo: frame 108 stats: 379/12/391 packets, 1/111/390 pts (early initial), 389/390 scr, last pts/stc/sof 4042157030/4044683123/1930
[ 5858.630011] uvcvideo: Frame complete (EOF found).
[ 5858.630016] uvcvideo: EOF in empty payload.
[ 5858.633866] uvcvideo: frame 132 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1102479432/1121111632/30975
[ 5858.661871] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661876] uvcvideo: USB isochronous frame lost (-71).
[ 5858.661879] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661882] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661885] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661888] uvcvideo: USB isochronous frame lost (-71).
[ 5858.661891] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661894] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661897] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661900] uvcvideo: USB isochronous frame lost (-71).
[ 5858.661903] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661906] uvcvideo: USB isochronous frame lost (-71).
[ 5858.661909] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661912] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661915] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661918] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661921] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661924] uvcvideo: USB isochronous frame lost (-71).
[ 5858.661927] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661930] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661933] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661936] uvcvideo: USB isochronous frame lost (-71).
[ 5858.661939] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661942] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661945] uvcvideo: USB isochronous frame lost (-18).
[ 5858.661948] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663314] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663318] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663321] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663324] uvcvideo: USB isochronous frame lost (-71).
[ 5858.663327] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663330] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663333] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663338] uvcvideo: USB isochronous frame lost (-71).
[ 5858.663341] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663344] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663347] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663350] uvcvideo: USB isochronous frame lost (-71).
[ 5858.663353] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663355] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663358] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663361] uvcvideo: USB isochronous frame lost (-71).
[ 5858.663364] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663367] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663370] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663373] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663376] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663379] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663382] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663385] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663388] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663390] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663393] uvcvideo: USB isochronous frame lost (-18).
[ 5858.663396] uvcvideo: USB isochronous frame lost (-71).
[ 5858.663399] uvcvideo: USB isochronous frame lost (-18).
[ 5858.665856] uvcvideo: Frame complete (EOF found).
[ 5858.665861] uvcvideo: EOF in empty payload.
[ 5860.718189] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718200] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718208] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718215] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718223] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718230] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718237] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718254] uvcvideo: frame 109 stats: 378/4/382 packets, 1/110/382 pts (early initial), 381/382 scr, last pts/stc/sof 4045343330/4047305450/1984
[ 5860.718263] uvcvideo: Frame complete (FID bit toggled).
[ 5860.718276] uvcvideo: frame 110 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5860.718300] uvcvideo: frame 111 stats: 0/1/1 packets, 0/0/0 pts (!early !initial), 0/0 scr, last pts/stc/sof 0/0/0
[ 5860.718311] uvcvideo: Frame complete (FID bit toggled).
[ 5860.718324] uvcvideo: frame 112 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 4045343330/4047359456/1985
[ 5860.718357] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718365] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718372] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718379] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718387] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718394] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718401] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718408] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718437] uvcvideo: Marking buffer as bad (error bit set).
[ 5860.718453] uvcvideo: Marking buffer as bad (error bit set).
[ 5860.718466] uvcvideo: Frame complete (EOF found).
[ 5860.718474] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718481] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718488] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718495] uvcvideo: USB isochronous frame lost (-71).
[ 5860.718503] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718510] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718517] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718523] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718530] uvcvideo: USB isochronous frame lost (-18).
[ 5860.718684] uvcvideo: frame 133 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1112397032/1131229232/31005
[ 5860.722200] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722210] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722218] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722225] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722232] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722240] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722247] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722254] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722262] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722269] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722276] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722284] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722292] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722299] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722306] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722313] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722321] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722328] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722339] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722346] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722353] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722360] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722368] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722375] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722382] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722390] uvcvideo: USB isochronous frame lost (-71).
[ 5860.722397] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722404] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722411] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722418] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722425] uvcvideo: USB isochronous frame lost (-18).
[ 5860.722432] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723722] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723730] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723738] uvcvideo: USB isochronous frame lost (-71).
[ 5860.723745] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723753] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723760] uvcvideo: USB isochronous frame lost (-71).
[ 5860.723767] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723775] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723782] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723789] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723796] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723804] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723811] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723818] uvcvideo: USB isochronous frame lost (-71).
[ 5860.723825] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723833] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723840] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723847] uvcvideo: USB isochronous frame lost (-71).
[ 5860.723855] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723862] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723869] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723876] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723884] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723891] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723898] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723905] uvcvideo: USB isochronous frame lost (-71).
[ 5860.723913] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723920] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723927] uvcvideo: USB isochronous frame lost (-71).
[ 5860.723934] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723941] uvcvideo: USB isochronous frame lost (-18).
[ 5860.723956] uvcvideo: frame 113 stats: 0/6/6 packets, 0/0/6 pts (!early initial), 5/6 scr, last pts/stc/sof 4045343330/4145753712/1987
[ 5860.723989] uvcvideo: Marking buffer as bad (error bit set).
[ 5860.724000] uvcvideo: Frame complete (EOF found).
[ 5860.727705] uvcvideo: frame 114 stats: 0/1/1 packets, 0/0/1 pts (!early initial), 0/1 scr, last pts/stc/sof 4144118630/4146197768/1996
[ 5860.746292] uvcvideo: Frame complete (EOF found).
[ 5860.746302] uvcvideo: EOF in empty payload.
[ 5860.770215] uvcvideo: frame 134 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1122482032/1755568632/32846
[ 5860.786215] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786226] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786233] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786241] uvcvideo: USB isochronous frame lost (-71).
[ 5860.786248] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786256] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786263] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786271] uvcvideo: USB isochronous frame lost (-71).
[ 5860.786278] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786285] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786293] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786300] uvcvideo: USB isochronous frame lost (-71).
[ 5860.786307] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786315] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786322] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786329] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786337] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786344] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786351] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786359] uvcvideo: USB isochronous frame lost (-71).
[ 5860.786366] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786373] uvcvideo: USB isochronous frame lost (-71).
[ 5860.786381] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786388] uvcvideo: USB isochronous frame lost (-71).
[ 5860.786395] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786402] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786410] uvcvideo: USB isochronous frame lost (-18).
[ 5860.786417] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790224] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790234] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790241] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790248] uvcvideo: USB isochronous frame lost (-71).
[ 5860.790256] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790265] uvcvideo: USB isochronous frame lost (-71).
[ 5860.790273] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790280] uvcvideo: USB isochronous frame lost (-71).
[ 5860.790287] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790294] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790302] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790309] uvcvideo: USB isochronous frame lost (-71).
[ 5860.790316] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790324] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790331] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790338] uvcvideo: USB isochronous frame lost (-71).
[ 5860.790346] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790353] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790360] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790367] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790375] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790382] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790389] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790397] uvcvideo: USB isochronous frame lost (-71).
[ 5860.790404] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790411] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790419] uvcvideo: USB isochronous frame lost (-71).
[ 5860.790426] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790433] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790440] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790447] uvcvideo: USB isochronous frame lost (-18).
[ 5860.790455] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791870] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791880] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791887] uvcvideo: USB isochronous frame lost (-71).
[ 5860.791894] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791901] uvcvideo: USB isochronous frame lost (-71).
[ 5860.791909] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791919] uvcvideo: USB isochronous frame lost (-71).
[ 5860.791926] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791933] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791941] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791948] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791957] uvcvideo: USB isochronous frame lost (-71).
[ 5860.791964] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791971] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791978] uvcvideo: USB isochronous frame lost (-18).
[ 5860.791986] uvcvideo: USB isochronous frame lost (-71).
[ 5860.791995] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792002] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792009] uvcvideo: USB isochronous frame lost (-71).
[ 5860.792016] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792024] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792031] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792039] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792046] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792053] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792060] uvcvideo: USB isochronous frame lost (-71).
[ 5860.792100] uvcvideo: Marking buffer as bad (error bit set).
[ 5860.792115] uvcvideo: Frame complete (EOF found).
[ 5860.792122] uvcvideo: USB isochronous frame lost (-18).
[ 5860.792138] uvcvideo: frame 115 stats: 452/1/453 packets, 1/184/453 pts (early initial), 452/453 scr, last pts/stc/sof 4147304930/4149438171/16
[ 5860.798304] uvcvideo: Frame complete (EOF found).
[ 5860.798313] uvcvideo: EOF in empty payload.
[ 5860.802264] uvcvideo: frame 135 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1752396832/1771208032/32892
[ 5860.830404] uvcvideo: Frame complete (EOF found).
[ 5860.830414] uvcvideo: EOF in empty payload.
[ 5860.834190] uvcvideo: frame 136 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1762479432/1781109232/32921
[ 5860.850205] uvcvideo: USB isochronous frame lost (-18).
[ 5860.850210] uvcvideo: USB isochronous frame lost (-18).
[ 5860.850213] uvcvideo: USB isochronous frame lost (-71).
[ 5860.850216] uvcvideo: USB isochronous frame lost (-18).
[ 5860.850219] uvcvideo: USB isochronous frame lost (-18).
[ 5860.850222] uvcvideo: USB isochronous frame lost (-18).
[ 5860.850225] uvcvideo: USB isochronous frame lost (-71).
[ 5860.850228] uvcvideo: USB isochronous frame lost (-18).
[ 5860.850231] uvcvideo: USB isochronous frame lost (-18).
[ 5860.850234] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854153] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854157] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854161] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854164] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854167] uvcvideo: USB isochronous frame lost (-71).
[ 5860.854170] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854173] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854176] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854179] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854182] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854185] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854188] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854191] uvcvideo: USB isochronous frame lost (-71).
[ 5860.854194] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854197] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854200] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854203] uvcvideo: USB isochronous frame lost (-71).
[ 5860.854206] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854209] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854212] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854215] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854217] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854220] uvcvideo: USB isochronous frame lost (-71).
[ 5860.854223] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854226] uvcvideo: USB isochronous frame lost (-71).
[ 5860.854229] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854232] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854234] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854237] uvcvideo: USB isochronous frame lost (-71).
[ 5860.854240] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854243] uvcvideo: USB isochronous frame lost (-18).
[ 5860.854246] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858155] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858159] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858162] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858165] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858168] uvcvideo: USB isochronous frame lost (-71).
[ 5860.858171] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858174] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858177] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858180] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858183] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858186] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858189] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858192] uvcvideo: USB isochronous frame lost (-71).
[ 5860.858195] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858198] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858201] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858204] uvcvideo: USB isochronous frame lost (-71).
[ 5860.858207] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858209] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858212] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858215] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858218] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858221] uvcvideo: USB isochronous frame lost (-71).
[ 5860.858224] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858227] uvcvideo: USB isochronous frame lost (-71).
[ 5860.858230] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858234] uvcvideo: USB isochronous frame lost (-71).
[ 5860.858237] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858240] uvcvideo: USB isochronous frame lost (-71).
[ 5860.858243] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858246] uvcvideo: USB isochronous frame lost (-18).
[ 5860.858248] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859807] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859812] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859816] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859819] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859822] uvcvideo: USB isochronous frame lost (-71).
[ 5860.859825] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859828] uvcvideo: USB isochronous frame lost (-71).
[ 5860.859831] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859834] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859838] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859841] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859844] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859847] uvcvideo: USB isochronous frame lost (-71).
[ 5860.859850] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859853] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859856] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859860] uvcvideo: USB isochronous frame lost (-71).
[ 5860.859863] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859866] uvcvideo: USB isochronous frame lost (-18).
[ 5860.859907] uvcvideo: Marking buffer as bad (error bit set).
[ 5860.859911] uvcvideo: Frame complete (EOF found).
[ 5860.859918] uvcvideo: frame 116 stats: 442/1/443 packets, 1/174/443 pts (early initial), 442/443 scr, last pts/stc/sof 4150491230/4152660573/83
[ 5860.866221] uvcvideo: Frame complete (EOF found).
[ 5860.866226] uvcvideo: EOF in empty payload.
[ 5860.866240] uvcvideo: frame 137 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1772397032/1791235632/32951
[ 5860.898241] uvcvideo: Frame complete (EOF found).
[ 5860.898246] uvcvideo: EOF in empty payload.
[ 5860.902195] uvcvideo: frame 138 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1782480432/1801108432/32980
[ 5860.918260] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918265] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918268] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918271] uvcvideo: USB isochronous frame lost (-71).
[ 5860.918274] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918277] uvcvideo: USB isochronous frame lost (-71).
[ 5860.918280] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918283] uvcvideo: USB isochronous frame lost (-71).
[ 5860.918285] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918288] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918300] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918303] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918306] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918309] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918311] uvcvideo: USB isochronous frame lost (-71).
[ 5860.918314] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918317] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918320] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918323] uvcvideo: USB isochronous frame lost (-18).
[ 5860.918326] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922191] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922196] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922199] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922202] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922205] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922208] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922211] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922214] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922217] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922220] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922223] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922226] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922229] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922232] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922235] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922238] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922241] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922244] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922247] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922250] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922253] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922255] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922258] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922261] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922264] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922267] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922270] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922273] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922276] uvcvideo: USB isochronous frame lost (-71).
[ 5860.922279] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922282] uvcvideo: USB isochronous frame lost (-18).
[ 5860.922285] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926191] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926196] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926199] uvcvideo: USB isochronous frame lost (-71).
[ 5860.926202] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926205] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926208] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926211] uvcvideo: USB isochronous frame lost (-71).
[ 5860.926214] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926217] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926220] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926223] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926226] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926229] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926232] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926235] uvcvideo: USB isochronous frame lost (-71).
[ 5860.926238] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926241] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926244] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926247] uvcvideo: USB isochronous frame lost (-71).
[ 5860.926250] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926274] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926277] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926280] uvcvideo: USB isochronous frame lost (-71).
[ 5860.926282] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926285] uvcvideo: USB isochronous frame lost (-71).
[ 5860.926288] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926291] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926294] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926297] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926299] uvcvideo: USB isochronous frame lost (-18).
[ 5860.926302] uvcvideo: USB isochronous frame lost (-18).
[ 5860.927841] uvcvideo: Marking buffer as bad (error bit set).
[ 5860.927847] uvcvideo: Frame complete (EOF found).
[ 5860.927854] uvcvideo: frame 117 stats: 437/5/442 packets, 1/169/442 pts (early initial), 441/442 scr, last pts/stc/sof 4153677530/4155810965/148
[ 5860.930381] uvcvideo: Frame complete (EOF found).
[ 5860.930385] uvcvideo: EOF in empty payload.
[ 5860.934230] uvcvideo: frame 139 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1792397032/1811225632/33010
[ 5860.962398] uvcvideo: Frame complete (EOF found).
[ 5860.962402] uvcvideo: EOF in empty payload.
[ 5860.970204] uvcvideo: frame 140 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1802480032/1821098632/33039
[ 5860.982232] uvcvideo: USB isochronous frame lost (-71).
[ 5860.982236] uvcvideo: USB isochronous frame lost (-18).
[ 5860.982239] uvcvideo: USB isochronous frame lost (-18).
[ 5860.982243] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986172] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986177] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986179] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986183] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986186] uvcvideo: USB isochronous frame lost (-71).
[ 5860.986189] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986192] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986195] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986198] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986201] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986204] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986207] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986210] uvcvideo: USB isochronous frame lost (-71).
[ 5860.986213] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986216] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986219] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986222] uvcvideo: USB isochronous frame lost (-71).
[ 5860.986225] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986228] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986231] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986234] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986237] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986240] uvcvideo: USB isochronous frame lost (-71).
[ 5860.986242] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986246] uvcvideo: USB isochronous frame lost (-71).
[ 5860.986248] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986251] uvcvideo: USB isochronous frame lost (-71).
[ 5860.986254] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986257] uvcvideo: USB isochronous frame lost (-71).
[ 5860.986260] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986263] uvcvideo: USB isochronous frame lost (-18).
[ 5860.986266] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990166] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990170] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990173] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990176] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990179] uvcvideo: USB isochronous frame lost (-71).
[ 5860.990182] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990185] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990188] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990191] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990194] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990197] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990200] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990203] uvcvideo: USB isochronous frame lost (-71).
[ 5860.990206] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990209] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990212] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990215] uvcvideo: USB isochronous frame lost (-71).
[ 5860.990217] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990220] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990223] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990226] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990229] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990232] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990235] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990238] uvcvideo: USB isochronous frame lost (-71).
[ 5860.990241] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990244] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990247] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990250] uvcvideo: USB isochronous frame lost (-71).
[ 5860.990253] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990256] uvcvideo: USB isochronous frame lost (-18).
[ 5860.990259] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991823] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991827] uvcvideo: USB isochronous frame lost (-71).
[ 5860.991831] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991834] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991837] uvcvideo: USB isochronous frame lost (-71).
[ 5860.991839] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991842] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991846] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991849] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991852] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991854] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991858] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991860] uvcvideo: USB isochronous frame lost (-71).
[ 5860.991863] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991866] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991869] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991872] uvcvideo: USB isochronous frame lost (-71).
[ 5860.991875] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991878] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991881] uvcvideo: USB isochronous frame lost (-18).
[ 5860.991889] uvcvideo: Marking buffer as bad (error bit set).
[ 5860.991893] uvcvideo: Frame complete (EOF found).
[ 5860.991900] uvcvideo: frame 118 stats: 443/1/444 packets, 1/175/444 pts (early initial), 443/444 scr, last pts/stc/sof 4156863830/4159003362/215
[ 5860.998275] uvcvideo: Frame complete (EOF found).
[ 5860.998280] uvcvideo: EOF in empty payload.
[ 5861.002207] uvcvideo: frame 141 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1812397032/1831224232/33069
[ 5861.030358] uvcvideo: Frame complete (EOF found).
[ 5861.030362] uvcvideo: EOF in empty payload.
[ 5861.034243] uvcvideo: frame 142 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1822480432/1841088032/33098
[ 5861.050257] uvcvideo: USB isochronous frame lost (-71).
[ 5861.050262] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050265] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050268] uvcvideo: USB isochronous frame lost (-71).
[ 5861.050271] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050274] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050277] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050280] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050283] uvcvideo: USB isochronous frame lost (-71).
[ 5861.050286] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050289] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050292] uvcvideo: USB isochronous frame lost (-71).
[ 5861.050295] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050298] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050301] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050304] uvcvideo: USB isochronous frame lost (-18).
[ 5861.050307] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054215] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054220] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054223] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054226] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054229] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054232] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054235] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054238] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054241] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054244] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054247] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054250] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054253] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054256] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054259] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054262] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054265] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054268] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054271] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054274] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054277] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054280] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054283] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054287] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054289] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054292] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054295] uvcvideo: USB isochronous frame lost (-71).
[ 5861.054298] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054301] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054304] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054307] uvcvideo: USB isochronous frame lost (-18).
[ 5861.054310] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058216] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058221] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058224] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058227] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058230] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058233] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058236] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058239] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058242] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058245] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058248] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058251] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058254] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058256] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058259] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058262] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058265] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058268] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058271] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058274] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058276] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058279] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058282] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058285] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058288] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058291] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058294] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058297] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058300] uvcvideo: USB isochronous frame lost (-71).
[ 5861.058302] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058305] uvcvideo: USB isochronous frame lost (-18).
[ 5861.058308] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059829] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059833] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059836] uvcvideo: USB isochronous frame lost (-71).
[ 5861.059839] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059842] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059845] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059848] uvcvideo: USB isochronous frame lost (-71).
[ 5861.059851] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059854] uvcvideo: USB isochronous frame lost (-18).
[ 5861.059892] uvcvideo: Marking buffer as bad (error bit set).
[ 5861.059895] uvcvideo: Frame complete (EOF found).
[ 5861.059902] uvcvideo: frame 119 stats: 442/1/443 packets, 1/174/443 pts (early initial), 442/443 scr, last pts/stc/sof 4160050130/4162201760/282
[ 5861.066244] uvcvideo: Frame complete (EOF found).
[ 5861.066248] uvcvideo: EOF in empty payload.
[ 5861.066260] uvcvideo: frame 143 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1832397032/1851205632/33128
[ 5861.071895] uvcvideo: USB isochronous frame lost (-18).
[ 5861.098270] uvcvideo: Frame complete (EOF found).
[ 5861.098275] uvcvideo: EOF in empty payload.
[ 5861.102229] uvcvideo: frame 144 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1842484432/1861106832/33157
[ 5861.118226] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118230] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118233] uvcvideo: USB isochronous frame lost (-71).
[ 5861.118236] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118240] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118243] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118246] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118249] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118251] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118254] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118258] uvcvideo: USB isochronous frame lost (-71).
[ 5861.118261] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118264] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118267] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118270] uvcvideo: USB isochronous frame lost (-71).
[ 5861.118273] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118276] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118279] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118282] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118285] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118288] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118290] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118293] uvcvideo: USB isochronous frame lost (-71).
[ 5861.118296] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118299] uvcvideo: USB isochronous frame lost (-71).
[ 5861.118302] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118305] uvcvideo: USB isochronous frame lost (-71).
[ 5861.118308] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118311] uvcvideo: USB isochronous frame lost (-18).
[ 5861.118314] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122189] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122194] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122197] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122200] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122203] uvcvideo: USB isochronous frame lost (-71).
[ 5861.122206] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122209] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122212] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122215] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122218] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122221] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122224] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122227] uvcvideo: USB isochronous frame lost (-71).
[ 5861.122230] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122233] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122236] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122239] uvcvideo: USB isochronous frame lost (-71).
[ 5861.122242] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122245] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122248] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122251] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122254] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122257] uvcvideo: USB isochronous frame lost (-71).
[ 5861.122260] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122263] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122266] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122269] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122273] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122276] uvcvideo: USB isochronous frame lost (-71).
[ 5861.122279] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122282] uvcvideo: USB isochronous frame lost (-18).
[ 5861.122285] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123843] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123847] uvcvideo: USB isochronous frame lost (-71).
[ 5861.123850] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123853] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123856] uvcvideo: USB isochronous frame lost (-71).
[ 5861.123859] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123862] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123865] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123868] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123871] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123874] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123877] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123880] uvcvideo: USB isochronous frame lost (-71).
[ 5861.123883] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123886] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123888] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123891] uvcvideo: USB isochronous frame lost (-71).
[ 5861.123894] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123897] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123900] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123903] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123906] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123909] uvcvideo: USB isochronous frame lost (-71).
[ 5861.123912] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123915] uvcvideo: USB isochronous frame lost (-71).
[ 5861.123918] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123921] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123924] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123927] uvcvideo: USB isochronous frame lost (-71).
[ 5861.123930] uvcvideo: USB isochronous frame lost (-18).
[ 5861.123951] uvcvideo: Marking buffer as bad (error bit set).
[ 5861.123956] uvcvideo: Frame complete (EOF found).
[ 5861.123964] uvcvideo: frame 120 stats: 439/1/440 packets, 1/171/440 pts (early initial), 439/440 scr, last pts/stc/sof 4163236430/4165400158/348
[ 5861.130407] uvcvideo: Frame complete (EOF found).
[ 5861.130411] uvcvideo: EOF in empty payload.
[ 5861.134233] uvcvideo: frame 145 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1852396832/1871242032/33187
[ 5863.196296] uvcvideo: USB isochronous frame lost (-71).
[ 5863.196306] uvcvideo: USB isochronous frame lost (-18).
[ 5863.196348] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.196362] uvcvideo: Frame complete (EOF found).
[ 5863.196371] uvcvideo: USB isochronous frame lost (-18).
[ 5863.196388] uvcvideo: frame 121 stats: 162/1/163 packets, 1/162/163 pts (early initial), 162/163 scr, last pts/stc/sof 4166422730/4264706528/369
[ 5863.208421] uvcvideo: USB isochronous frame lost (-18).
[ 5863.210870] uvcvideo: Frame complete (EOF found).
[ 5863.210879] uvcvideo: EOF in empty payload.
[ 5863.234604] uvcvideo: frame 146 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 1862480432/2495581632/35028
[ 5863.242616] uvcvideo: USB isochronous frame lost (-71).
[ 5863.242626] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242634] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242649] uvcvideo: USB isochronous frame lost (-71).
[ 5863.242657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242664] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242679] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242686] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242694] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242701] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242709] uvcvideo: USB isochronous frame lost (-71).
[ 5863.242716] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242723] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242730] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242738] uvcvideo: USB isochronous frame lost (-71).
[ 5863.242745] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242752] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242759] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242766] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242774] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242781] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242788] uvcvideo: USB isochronous frame lost (-71).
[ 5863.242795] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242802] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242809] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242816] uvcvideo: USB isochronous frame lost (-71).
[ 5863.242824] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242831] uvcvideo: USB isochronous frame lost (-18).
[ 5863.242838] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246573] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246581] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246588] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246595] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246602] uvcvideo: USB isochronous frame lost (-71).
[ 5863.246609] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246616] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246638] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246645] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246652] uvcvideo: USB isochronous frame lost (-71).
[ 5863.246659] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246666] uvcvideo: USB isochronous frame lost (-71).
[ 5863.246674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246681] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246688] uvcvideo: USB isochronous frame lost (-71).
[ 5863.246695] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246702] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246709] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246717] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246724] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246731] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246738] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246745] uvcvideo: USB isochronous frame lost (-71).
[ 5863.246752] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246759] uvcvideo: USB isochronous frame lost (-71).
[ 5863.246766] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246773] uvcvideo: USB isochronous frame lost (-71).
[ 5863.246780] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246787] uvcvideo: USB isochronous frame lost (-18).
[ 5863.246795] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248286] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248293] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248301] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248308] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248315] uvcvideo: USB isochronous frame lost (-71).
[ 5863.248322] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248329] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248336] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248344] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248351] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248358] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248365] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248373] uvcvideo: USB isochronous frame lost (-71).
[ 5863.248380] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248387] uvcvideo: USB isochronous frame lost (-71).
[ 5863.248395] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248402] uvcvideo: USB isochronous frame lost (-71).
[ 5863.248409] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248417] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248424] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248431] uvcvideo: USB isochronous frame lost (-18).
[ 5863.248473] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.248486] uvcvideo: Frame complete (EOF found).
[ 5863.248502] uvcvideo: frame 122 stats: 347/1/348 packets, 1/80/348 pts (early initial), 347/348 scr, last pts/stc/sof 4265198030/4267316854/423
[ 5863.262909] uvcvideo: Frame complete (EOF found).
[ 5863.262918] uvcvideo: EOF in empty payload.
[ 5863.266580] uvcvideo: frame 147 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2492396832/2511211832/35074
[ 5863.298633] uvcvideo: Frame complete (EOF found).
[ 5863.298642] uvcvideo: EOF in empty payload.
[ 5863.302576] uvcvideo: frame 148 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2502480232/2521113232/35103
[ 5863.306572] uvcvideo: USB isochronous frame lost (-71).
[ 5863.306576] uvcvideo: USB isochronous frame lost (-18).
[ 5863.306579] uvcvideo: USB isochronous frame lost (-18).
[ 5863.306582] uvcvideo: USB isochronous frame lost (-71).
[ 5863.306585] uvcvideo: USB isochronous frame lost (-18).
[ 5863.306588] uvcvideo: USB isochronous frame lost (-18).
[ 5863.306591] uvcvideo: USB isochronous frame lost (-18).
[ 5863.306594] uvcvideo: USB isochronous frame lost (-18).
[ 5863.306597] uvcvideo: USB isochronous frame lost (-18).
[ 5863.306600] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310525] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310530] uvcvideo: USB isochronous frame lost (-71).
[ 5863.310533] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310536] uvcvideo: USB isochronous frame lost (-71).
[ 5863.310539] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310542] uvcvideo: USB isochronous frame lost (-71).
[ 5863.310545] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310548] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310551] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310554] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310557] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310560] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310563] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310566] uvcvideo: USB isochronous frame lost (-71).
[ 5863.310569] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310572] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310575] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310578] uvcvideo: USB isochronous frame lost (-71).
[ 5863.310581] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310584] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310587] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310590] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310593] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310596] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310599] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310602] uvcvideo: USB isochronous frame lost (-71).
[ 5863.310605] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310608] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310611] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310614] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310617] uvcvideo: USB isochronous frame lost (-18).
[ 5863.310620] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314561] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314564] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314567] uvcvideo: USB isochronous frame lost (-71).
[ 5863.314570] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314573] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314576] uvcvideo: USB isochronous frame lost (-71).
[ 5863.314579] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314582] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314585] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314588] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314591] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314594] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314597] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314600] uvcvideo: USB isochronous frame lost (-71).
[ 5863.314603] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314606] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314609] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314612] uvcvideo: USB isochronous frame lost (-71).
[ 5863.314615] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314618] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314621] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314627] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314633] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314636] uvcvideo: USB isochronous frame lost (-71).
[ 5863.314639] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314645] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314650] uvcvideo: USB isochronous frame lost (-18).
[ 5863.314653] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316436] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316440] uvcvideo: USB isochronous frame lost (-71).
[ 5863.316442] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316445] uvcvideo: USB isochronous frame lost (-71).
[ 5863.316449] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316451] uvcvideo: USB isochronous frame lost (-71).
[ 5863.316455] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316458] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316461] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316464] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316467] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316470] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316473] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316476] uvcvideo: USB isochronous frame lost (-71).
[ 5863.316479] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316482] uvcvideo: USB isochronous frame lost (-71).
[ 5863.316485] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316521] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.316526] uvcvideo: Frame complete (EOF found).
[ 5863.316529] uvcvideo: USB isochronous frame lost (-18).
[ 5863.316536] uvcvideo: frame 123 stats: 446/3/449 packets, 1/178/449 pts (early initial), 448/449 scr, last pts/stc/sof 4268384330/4270563258/491
[ 5863.330689] uvcvideo: Frame complete (EOF found).
[ 5863.330694] uvcvideo: EOF in empty payload.
[ 5863.332402] uvcvideo: USB isochronous frame lost (-18).
[ 5863.334580] uvcvideo: frame 149 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2512396832/2531201832/35133
[ 5863.362761] uvcvideo: Frame complete (EOF found).
[ 5863.362766] uvcvideo: EOF in empty payload.
[ 5863.364399] uvcvideo: USB isochronous frame lost (-18).
[ 5863.366584] uvcvideo: frame 150 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2522482232/2541103232/35162
[ 5863.374578] uvcvideo: USB isochronous frame lost (-71).
[ 5863.374582] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374585] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374588] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374591] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374594] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374597] uvcvideo: USB isochronous frame lost (-71).
[ 5863.374600] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374603] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374606] uvcvideo: USB isochronous frame lost (-71).
[ 5863.374609] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374612] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374615] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374618] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374621] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374627] uvcvideo: USB isochronous frame lost (-71).
[ 5863.374630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374633] uvcvideo: USB isochronous frame lost (-71).
[ 5863.374635] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374638] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374641] uvcvideo: USB isochronous frame lost (-71).
[ 5863.374644] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374647] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374649] uvcvideo: USB isochronous frame lost (-18).
[ 5863.374652] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378576] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378579] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378584] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378589] uvcvideo: USB isochronous frame lost (-71).
[ 5863.378594] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378600] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378605] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378610] uvcvideo: USB isochronous frame lost (-71).
[ 5863.378615] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378621] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378625] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378630] uvcvideo: USB isochronous frame lost (-71).
[ 5863.378636] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378641] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378646] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378651] uvcvideo: USB isochronous frame lost (-71).
[ 5863.378655] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378658] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378667] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378670] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378675] uvcvideo: USB isochronous frame lost (-71).
[ 5863.378678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378682] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378685] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378687] uvcvideo: USB isochronous frame lost (-71).
[ 5863.378690] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378693] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378696] uvcvideo: USB isochronous frame lost (-18).
[ 5863.378699] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380472] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380477] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380480] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380483] uvcvideo: USB isochronous frame lost (-71).
[ 5863.380486] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380489] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380492] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380495] uvcvideo: USB isochronous frame lost (-71).
[ 5863.380498] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380501] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380504] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380507] uvcvideo: USB isochronous frame lost (-71).
[ 5863.380510] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380513] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380516] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380519] uvcvideo: USB isochronous frame lost (-71).
[ 5863.380522] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380525] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380528] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380531] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380534] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380537] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380540] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380543] uvcvideo: USB isochronous frame lost (-71).
[ 5863.380546] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380549] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380552] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380555] uvcvideo: USB isochronous frame lost (-71).
[ 5863.380558] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380560] uvcvideo: USB isochronous frame lost (-18).
[ 5863.380595] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.380601] uvcvideo: Frame complete (EOF found).
[ 5863.380608] uvcvideo: frame 124 stats: 433/1/434 packets, 1/165/434 pts (early initial), 433/434 scr, last pts/stc/sof 4271570630/4273713650/556
[ 5863.398616] uvcvideo: Frame complete (EOF found).
[ 5863.398621] uvcvideo: EOF in empty payload.
[ 5863.402559] uvcvideo: frame 151 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2532397032/2551229232/35192
[ 5863.430681] uvcvideo: Frame complete (EOF found).
[ 5863.430686] uvcvideo: EOF in empty payload.
[ 5863.434572] uvcvideo: frame 152 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2542480232/2561093232/35221
[ 5863.438582] uvcvideo: USB isochronous frame lost (-71).
[ 5863.438585] uvcvideo: USB isochronous frame lost (-18).
[ 5863.438589] uvcvideo: USB isochronous frame lost (-18).
[ 5863.438591] uvcvideo: USB isochronous frame lost (-18).
[ 5863.438594] uvcvideo: USB isochronous frame lost (-18).
[ 5863.438597] uvcvideo: USB isochronous frame lost (-18).
[ 5863.438600] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442582] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442587] uvcvideo: USB isochronous frame lost (-71).
[ 5863.442590] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442593] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442596] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442599] uvcvideo: USB isochronous frame lost (-71).
[ 5863.442602] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442605] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442608] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442611] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442614] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442617] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442621] uvcvideo: USB isochronous frame lost (-71).
[ 5863.442624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442627] uvcvideo: USB isochronous frame lost (-71).
[ 5863.442630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442633] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442636] uvcvideo: USB isochronous frame lost (-71).
[ 5863.442639] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442645] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442651] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442660] uvcvideo: USB isochronous frame lost (-71).
[ 5863.442663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442666] uvcvideo: USB isochronous frame lost (-71).
[ 5863.442669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.442678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446532] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446535] uvcvideo: USB isochronous frame lost (-71).
[ 5863.446538] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446541] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446544] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446547] uvcvideo: USB isochronous frame lost (-71).
[ 5863.446550] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446553] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446556] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446559] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446562] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446565] uvcvideo: USB isochronous frame lost (-71).
[ 5863.446568] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446571] uvcvideo: USB isochronous frame lost (-71).
[ 5863.446574] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446577] uvcvideo: USB isochronous frame lost (-71).
[ 5863.446580] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446582] uvcvideo: USB isochronous frame lost (-71).
[ 5863.446585] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446588] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446591] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446594] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446597] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446600] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446603] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446606] uvcvideo: USB isochronous frame lost (-71).
[ 5863.446609] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446612] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446615] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446618] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446621] uvcvideo: USB isochronous frame lost (-18).
[ 5863.446624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448426] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448429] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448432] uvcvideo: USB isochronous frame lost (-71).
[ 5863.448434] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448437] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448440] uvcvideo: USB isochronous frame lost (-71).
[ 5863.448443] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448446] uvcvideo: USB isochronous frame lost (-71).
[ 5863.448449] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448452] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448455] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448458] uvcvideo: USB isochronous frame lost (-71).
[ 5863.448461] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448463] uvcvideo: USB isochronous frame lost (-71).
[ 5863.448466] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448469] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448472] uvcvideo: USB isochronous frame lost (-18).
[ 5863.448508] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.448513] uvcvideo: Frame complete (EOF found).
[ 5863.448521] uvcvideo: frame 125 stats: 442/1/443 packets, 1/174/443 pts (early initial), 442/443 scr, last pts/stc/sof 4274756930/4276900046/623
[ 5863.462836] uvcvideo: Frame complete (EOF found).
[ 5863.462841] uvcvideo: EOF in empty payload.
[ 5863.466598] uvcvideo: frame 153 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2552396832/2571219632/35251
[ 5863.476432] uvcvideo: USB isochronous frame lost (-18).
[ 5863.498605] uvcvideo: Frame complete (EOF found).
[ 5863.498610] uvcvideo: EOF in empty payload.
[ 5863.502634] uvcvideo: frame 154 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2562481432/2581092232/35280
[ 5863.506632] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506636] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506639] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506642] uvcvideo: USB isochronous frame lost (-71).
[ 5863.506645] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506651] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506666] uvcvideo: USB isochronous frame lost (-71).
[ 5863.506669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506678] uvcvideo: USB isochronous frame lost (-71).
[ 5863.506681] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506684] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506687] uvcvideo: USB isochronous frame lost (-18).
[ 5863.506690] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510611] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510615] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510618] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510621] uvcvideo: USB isochronous frame lost (-71).
[ 5863.510624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510627] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510633] uvcvideo: USB isochronous frame lost (-71).
[ 5863.510636] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510639] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510645] uvcvideo: USB isochronous frame lost (-71).
[ 5863.510647] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510650] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510653] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510656] uvcvideo: USB isochronous frame lost (-71).
[ 5863.510659] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510662] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510668] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510671] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510676] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510679] uvcvideo: USB isochronous frame lost (-71).
[ 5863.510682] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510685] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510688] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510691] uvcvideo: USB isochronous frame lost (-71).
[ 5863.510694] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510696] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510699] uvcvideo: USB isochronous frame lost (-18).
[ 5863.510702] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514541] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514545] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514547] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514550] uvcvideo: USB isochronous frame lost (-71).
[ 5863.514553] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514556] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514559] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514562] uvcvideo: USB isochronous frame lost (-71).
[ 5863.514565] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514568] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514571] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514574] uvcvideo: USB isochronous frame lost (-71).
[ 5863.514577] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514580] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514583] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514586] uvcvideo: USB isochronous frame lost (-71).
[ 5863.514589] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514592] uvcvideo: USB isochronous frame lost (-71).
[ 5863.514595] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514598] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514601] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514604] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514606] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514609] uvcvideo: USB isochronous frame lost (-71).
[ 5863.514612] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514615] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514618] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514621] uvcvideo: USB isochronous frame lost (-71).
[ 5863.514624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514627] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.514632] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516468] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516471] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516474] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516477] uvcvideo: USB isochronous frame lost (-71).
[ 5863.516479] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516482] uvcvideo: USB isochronous frame lost (-71).
[ 5863.516485] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516488] uvcvideo: USB isochronous frame lost (-71).
[ 5863.516491] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516494] uvcvideo: USB isochronous frame lost (-18).
[ 5863.516524] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.516528] uvcvideo: Frame complete (EOF found).
[ 5863.516535] uvcvideo: frame 126 stats: 440/1/441 packets, 1/173/441 pts (early initial), 440/441 scr, last pts/stc/sof 4277943230/4280122448/690
[ 5863.530747] uvcvideo: Frame complete (EOF found).
[ 5863.530752] uvcvideo: EOF in empty payload.
[ 5863.534582] uvcvideo: frame 155 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2572396832/2591218032/35310
[ 5863.562785] uvcvideo: Frame complete (EOF found).
[ 5863.562789] uvcvideo: EOF in empty payload.
[ 5863.566612] uvcvideo: frame 156 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2582482432/2601110632/35339
[ 5863.570661] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574593] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574596] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574599] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574602] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574605] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574608] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574610] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574613] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574616] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574622] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574625] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574628] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574634] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574637] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574640] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574643] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574646] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574649] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574652] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574655] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574663] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574666] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574669] uvcvideo: USB isochronous frame lost (-71).
[ 5863.574672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.574681] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578547] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578550] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578553] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578556] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578559] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578562] uvcvideo: USB isochronous frame lost (-71).
[ 5863.578565] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578567] uvcvideo: USB isochronous frame lost (-71).
[ 5863.578570] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578573] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578576] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578579] uvcvideo: USB isochronous frame lost (-71).
[ 5863.578582] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578585] uvcvideo: USB isochronous frame lost (-71).
[ 5863.578588] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578590] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578593] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578596] uvcvideo: USB isochronous frame lost (-71).
[ 5863.578599] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578602] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578605] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578608] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578611] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578614] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578617] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578620] uvcvideo: USB isochronous frame lost (-71).
[ 5863.578622] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578625] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578628] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578634] uvcvideo: USB isochronous frame lost (-18).
[ 5863.578637] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580468] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580472] uvcvideo: USB isochronous frame lost (-71).
[ 5863.580475] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580479] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580482] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580484] uvcvideo: USB isochronous frame lost (-71).
[ 5863.580487] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580492] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580495] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580498] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580501] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580504] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580507] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580510] uvcvideo: USB isochronous frame lost (-71).
[ 5863.580513] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580516] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580519] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580522] uvcvideo: USB isochronous frame lost (-71).
[ 5863.580525] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580527] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580530] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580533] uvcvideo: USB isochronous frame lost (-18).
[ 5863.580542] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.580546] uvcvideo: Frame complete (EOF found).
[ 5863.580552] uvcvideo: frame 127 stats: 436/2/438 packets, 1/167/438 pts (early initial), 437/438 scr, last pts/stc/sof 4281129530/4283266840/755
[ 5863.598641] uvcvideo: Frame complete (EOF found).
[ 5863.598646] uvcvideo: EOF in empty payload.
[ 5863.602618] uvcvideo: frame 157 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2592397032/2611245632/35369
[ 5863.630716] uvcvideo: Frame complete (EOF found).
[ 5863.630720] uvcvideo: EOF in empty payload.
[ 5863.634592] uvcvideo: frame 158 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2602480232/2621109632/35398
[ 5863.638661] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638676] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638679] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638682] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638685] uvcvideo: USB isochronous frame lost (-71).
[ 5863.638688] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638691] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638693] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638696] uvcvideo: USB isochronous frame lost (-71).
[ 5863.638699] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638702] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638706] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638709] uvcvideo: USB isochronous frame lost (-18).
[ 5863.638831] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642615] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642622] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642625] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642628] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642634] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642637] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642640] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642643] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642646] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642649] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642652] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642655] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642658] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642661] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642664] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642666] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642702] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642710] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642713] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642715] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642718] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642721] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642724] uvcvideo: USB isochronous frame lost (-71).
[ 5863.642727] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642730] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642733] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642736] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642860] uvcvideo: USB isochronous frame lost (-18).
[ 5863.642868] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646556] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646559] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646562] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646564] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646567] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646570] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646573] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646576] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646578] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646581] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646584] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646587] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646590] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646593] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646596] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646599] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646602] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646605] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646608] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646660] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646666] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646672] uvcvideo: USB isochronous frame lost (-71).
[ 5863.646674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646680] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646683] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646766] uvcvideo: USB isochronous frame lost (-18).
[ 5863.646775] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648486] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648490] uvcvideo: USB isochronous frame lost (-71).
[ 5863.648492] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648495] uvcvideo: USB isochronous frame lost (-71).
[ 5863.648498] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648501] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648504] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648507] uvcvideo: USB isochronous frame lost (-71).
[ 5863.648509] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648512] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648515] uvcvideo: USB isochronous frame lost (-18).
[ 5863.648544] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.648549] uvcvideo: Frame complete (EOF found).
[ 5863.648556] uvcvideo: frame 128 stats: 440/7/447 packets, 1/175/447 pts (early initial), 446/447 scr, last pts/stc/sof 4284315830/4286465238/822
[ 5863.660539] uvcvideo: USB isochronous frame lost (-18).
[ 5863.666610] uvcvideo: Frame complete (EOF found).
[ 5863.666614] uvcvideo: EOF in empty payload.
[ 5863.666622] uvcvideo: frame 159 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2612397032/2631418432/35428
[ 5863.668536] uvcvideo: USB isochronous frame lost (-18).
[ 5863.672538] uvcvideo: USB isochronous frame lost (-18).
[ 5863.680466] uvcvideo: USB isochronous frame lost (-18).
[ 5863.692495] uvcvideo: USB isochronous frame lost (-18).
[ 5863.696446] uvcvideo: USB isochronous frame lost (-18).
[ 5863.698633] uvcvideo: Frame complete (EOF found).
[ 5863.698636] uvcvideo: EOF in empty payload.
[ 5863.702616] uvcvideo: frame 160 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2622480832/2641090632/35457
[ 5863.706567] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706575] uvcvideo: USB isochronous frame lost (-71).
[ 5863.706578] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706581] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706584] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706587] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706590] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706593] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706596] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706599] uvcvideo: USB isochronous frame lost (-71).
[ 5863.706602] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706605] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706608] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706610] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706613] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706616] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706622] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706625] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706628] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706634] uvcvideo: USB isochronous frame lost (-71).
[ 5863.706637] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706640] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706643] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706646] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.706651] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710585] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710590] uvcvideo: USB isochronous frame lost (-71).
[ 5863.710593] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710596] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710599] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710602] uvcvideo: USB isochronous frame lost (-71).
[ 5863.710605] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710608] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710611] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710614] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710617] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710620] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710623] uvcvideo: USB isochronous frame lost (-71).
[ 5863.710626] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710629] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710632] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710634] uvcvideo: USB isochronous frame lost (-71).
[ 5863.710637] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710640] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710643] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710646] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710649] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710652] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710655] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710658] uvcvideo: USB isochronous frame lost (-71).
[ 5863.710660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710666] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710669] uvcvideo: USB isochronous frame lost (-71).
[ 5863.710672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.710678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712604] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712607] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712610] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712613] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712616] uvcvideo: USB isochronous frame lost (-71).
[ 5863.712619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712622] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712625] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712628] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712633] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712636] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712639] uvcvideo: USB isochronous frame lost (-71).
[ 5863.712642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712645] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712651] uvcvideo: USB isochronous frame lost (-71).
[ 5863.712654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712657] uvcvideo: USB isochronous frame lost (-71).
[ 5863.712660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712666] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712675] uvcvideo: USB isochronous frame lost (-71).
[ 5863.712678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712681] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712684] uvcvideo: USB isochronous frame lost (-18).
[ 5863.712708] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.712714] uvcvideo: Frame complete (EOF found).
[ 5863.712721] uvcvideo: frame 129 stats: 431/2/433 packets, 1/168/433 pts (early initial), 432/433 scr, last pts/stc/sof 4287502130/4289645635/888
[ 5863.720628] uvcvideo: USB isochronous frame lost (-18).
[ 5863.720679] uvcvideo: USB isochronous frame lost (-18).
[ 5863.724670] uvcvideo: USB isochronous frame lost (-18).
[ 5863.728677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.730757] uvcvideo: Frame complete (EOF found).
[ 5863.730761] uvcvideo: EOF in empty payload.
[ 5863.734646] uvcvideo: frame 161 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2632397032/2651216632/35487
[ 5863.736626] uvcvideo: USB isochronous frame lost (-18).
[ 5863.740674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.744626] uvcvideo: USB isochronous frame lost (-18).
[ 5863.744675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.760675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.762804] uvcvideo: Frame complete (EOF found).
[ 5863.762807] uvcvideo: EOF in empty payload.
[ 5863.764586] uvcvideo: USB isochronous frame lost (-18).
[ 5863.766609] uvcvideo: frame 162 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2642483632/2661118032/35516
[ 5863.770689] uvcvideo: USB isochronous frame lost (-18).
[ 5863.770693] uvcvideo: USB isochronous frame lost (-18).
[ 5863.770696] uvcvideo: USB isochronous frame lost (-18).
[ 5863.770699] uvcvideo: USB isochronous frame lost (-71).
[ 5863.770702] uvcvideo: USB isochronous frame lost (-18).
[ 5863.770705] uvcvideo: USB isochronous frame lost (-71).
[ 5863.770708] uvcvideo: USB isochronous frame lost (-18).
[ 5863.770711] uvcvideo: USB isochronous frame lost (-18).
[ 5863.770714] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774628] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774632] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774635] uvcvideo: USB isochronous frame lost (-71).
[ 5863.774637] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774640] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774643] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774646] uvcvideo: USB isochronous frame lost (-71).
[ 5863.774649] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774651] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774663] uvcvideo: USB isochronous frame lost (-71).
[ 5863.774665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774668] uvcvideo: USB isochronous frame lost (-71).
[ 5863.774671] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774680] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774683] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774685] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774688] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774691] uvcvideo: USB isochronous frame lost (-71).
[ 5863.774694] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774697] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774700] uvcvideo: USB isochronous frame lost (-71).
[ 5863.774703] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774705] uvcvideo: USB isochronous frame lost (-71).
[ 5863.774708] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774711] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774714] uvcvideo: USB isochronous frame lost (-18).
[ 5863.774717] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778580] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778586] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778591] uvcvideo: USB isochronous frame lost (-71).
[ 5863.778596] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778601] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778606] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778611] uvcvideo: USB isochronous frame lost (-71).
[ 5863.778616] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778621] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778624] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778633] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778639] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778644] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778649] uvcvideo: USB isochronous frame lost (-71).
[ 5863.778654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778659] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778664] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778681] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778683] uvcvideo: USB isochronous frame lost (-71).
[ 5863.778687] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778690] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778693] uvcvideo: USB isochronous frame lost (-71).
[ 5863.778696] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778698] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778701] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778704] uvcvideo: USB isochronous frame lost (-18).
[ 5863.778707] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780638] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780645] uvcvideo: USB isochronous frame lost (-71).
[ 5863.780648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780651] uvcvideo: USB isochronous frame lost (-71).
[ 5863.780654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780657] uvcvideo: USB isochronous frame lost (-71).
[ 5863.780660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780666] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780670] uvcvideo: USB isochronous frame lost (-18).
[ 5863.780678] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.780682] uvcvideo: Frame complete (EOF found).
[ 5863.780689] uvcvideo: frame 130 stats: 430/2/432 packets, 1/168/432 pts (early initial), 431/432 scr, last pts/stc/sof 4290688430/4292808029/954
[ 5863.796591] uvcvideo: USB isochronous frame lost (-18).
[ 5863.796641] uvcvideo: USB isochronous frame lost (-18).
[ 5863.798739] uvcvideo: Frame complete (EOF found).
[ 5863.798743] uvcvideo: EOF in empty payload.
[ 5863.802648] uvcvideo: frame 163 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2652397032/2671207232/35546
[ 5863.816609] uvcvideo: USB isochronous frame lost (-18).
[ 5863.830735] uvcvideo: Frame complete (EOF found).
[ 5863.830739] uvcvideo: EOF in empty payload.
[ 5863.834632] uvcvideo: frame 164 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2662480432/2681070432/35575
[ 5863.838659] uvcvideo: USB isochronous frame lost (-71).
[ 5863.838663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838666] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838681] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838684] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838687] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838690] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838693] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838696] uvcvideo: USB isochronous frame lost (-71).
[ 5863.838699] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838702] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838706] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838709] uvcvideo: USB isochronous frame lost (-71).
[ 5863.838711] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838714] uvcvideo: USB isochronous frame lost (-18).
[ 5863.838717] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842597] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842601] uvcvideo: USB isochronous frame lost (-71).
[ 5863.842604] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842607] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842610] uvcvideo: USB isochronous frame lost (-71).
[ 5863.842613] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842616] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842622] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842625] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842628] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842634] uvcvideo: USB isochronous frame lost (-71).
[ 5863.842638] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842641] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842644] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842647] uvcvideo: USB isochronous frame lost (-71).
[ 5863.842650] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842653] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842656] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842659] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842662] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842667] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842670] uvcvideo: USB isochronous frame lost (-71).
[ 5863.842673] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842676] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842679] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842682] uvcvideo: USB isochronous frame lost (-71).
[ 5863.842685] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842688] uvcvideo: USB isochronous frame lost (-18).
[ 5863.842691] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846616] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846622] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846625] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846628] uvcvideo: USB isochronous frame lost (-71).
[ 5863.846631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846634] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846637] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846639] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846645] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846651] uvcvideo: USB isochronous frame lost (-71).
[ 5863.846654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846662] uvcvideo: USB isochronous frame lost (-71).
[ 5863.846665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846668] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846671] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846680] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846683] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846686] uvcvideo: USB isochronous frame lost (-71).
[ 5863.846689] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846692] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846694] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846697] uvcvideo: USB isochronous frame lost (-71).
[ 5863.846700] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846703] uvcvideo: USB isochronous frame lost (-18).
[ 5863.846706] uvcvideo: USB isochronous frame lost (-18).
[ 5863.848648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.848685] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.848689] uvcvideo: Frame complete (EOF found).
[ 5863.848697] uvcvideo: frame 131 stats: 442/4/446 packets, 1/175/446 pts (early initial), 445/446 scr, last pts/stc/sof 4293874730/1045131/1021
[ 5863.862880] uvcvideo: Frame complete (EOF found).
[ 5863.862884] uvcvideo: EOF in empty payload.
[ 5863.864601] uvcvideo: USB isochronous frame lost (-18).
[ 5863.866654] uvcvideo: frame 165 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2672397032/2691205232/35605
[ 5863.876618] uvcvideo: USB isochronous frame lost (-18).
[ 5863.888649] uvcvideo: USB isochronous frame lost (-18).
[ 5863.898668] uvcvideo: Frame complete (EOF found).
[ 5863.898673] uvcvideo: EOF in empty payload.
[ 5863.902714] uvcvideo: USB isochronous frame lost (-18).
[ 5863.902754] uvcvideo: USB isochronous frame lost (-18).
[ 5863.902862] uvcvideo: frame 166 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2682483232/2701097832/35634
[ 5863.906649] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906653] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906656] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906659] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906662] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906668] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906671] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906680] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906683] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906686] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906689] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906692] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906695] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906698] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906701] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906704] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906707] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906710] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906713] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906716] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906719] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906722] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906725] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906727] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906730] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906733] uvcvideo: USB isochronous frame lost (-71).
[ 5863.906736] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906739] uvcvideo: USB isochronous frame lost (-18).
[ 5863.906742] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910638] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910643] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910646] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910649] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910652] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910655] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910658] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910661] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910666] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910669] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910672] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910675] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910678] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910681] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910684] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910687] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910690] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910693] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910696] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910699] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910702] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910705] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910708] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910711] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910713] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910716] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910719] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910722] uvcvideo: USB isochronous frame lost (-71).
[ 5863.910725] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910728] uvcvideo: USB isochronous frame lost (-18).
[ 5863.910730] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912633] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912639] uvcvideo: USB isochronous frame lost (-71).
[ 5863.912642] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912645] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912648] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912651] uvcvideo: USB isochronous frame lost (-71).
[ 5863.912654] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912657] uvcvideo: USB isochronous frame lost (-71).
[ 5863.912660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912663] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912668] uvcvideo: USB isochronous frame lost (-71).
[ 5863.912671] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912674] uvcvideo: USB isochronous frame lost (-71).
[ 5863.912677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912680] uvcvideo: USB isochronous frame lost (-71).
[ 5863.912683] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912686] uvcvideo: USB isochronous frame lost (-71).
[ 5863.912689] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912692] uvcvideo: USB isochronous frame lost (-18).
[ 5863.912709] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.912713] uvcvideo: Frame complete (EOF found).
[ 5863.912720] uvcvideo: frame 132 stats: 439/3/442 packets, 1/174/442 pts (early initial), 441/442 scr, last pts/stc/sof 2093734/4231528/1087
[ 5863.916658] uvcvideo: USB isochronous frame lost (-18).
[ 5863.916708] uvcvideo: USB isochronous frame lost (-18).
[ 5863.920660] uvcvideo: USB isochronous frame lost (-18).
[ 5863.924627] uvcvideo: USB isochronous frame lost (-18).
[ 5863.924675] uvcvideo: USB isochronous frame lost (-18).
[ 5863.928674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.930812] uvcvideo: Frame complete (EOF found).
[ 5863.930817] uvcvideo: EOF in empty payload.
[ 5863.932619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.934645] uvcvideo: frame 167 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2692397032/2711232032/35664
[ 5863.936674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.940629] uvcvideo: USB isochronous frame lost (-18).
[ 5863.940677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.944626] uvcvideo: USB isochronous frame lost (-18).
[ 5863.948627] uvcvideo: USB isochronous frame lost (-18).
[ 5863.948676] uvcvideo: USB isochronous frame lost (-18).
[ 5863.952631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.952680] uvcvideo: USB isochronous frame lost (-18).
[ 5863.956630] uvcvideo: USB isochronous frame lost (-18).
[ 5863.960631] uvcvideo: USB isochronous frame lost (-18).
[ 5863.962825] uvcvideo: Frame complete (EOF found).
[ 5863.962829] uvcvideo: EOF in empty payload.
[ 5863.964619] uvcvideo: USB isochronous frame lost (-18).
[ 5863.966673] uvcvideo: frame 168 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2702480032/2721096832/35693
[ 5863.970660] uvcvideo: USB isochronous frame lost (-71).
[ 5863.970664] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970667] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970670] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970673] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970676] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970679] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970682] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970685] uvcvideo: USB isochronous frame lost (-71).
[ 5863.970688] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970691] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970694] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970697] uvcvideo: USB isochronous frame lost (-71).
[ 5863.970700] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970703] uvcvideo: USB isochronous frame lost (-18).
[ 5863.970706] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974646] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974650] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974654] uvcvideo: USB isochronous frame lost (-71).
[ 5863.974656] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974659] uvcvideo: USB isochronous frame lost (-71).
[ 5863.974662] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974668] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974671] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974674] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974677] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974680] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974683] uvcvideo: USB isochronous frame lost (-71).
[ 5863.974686] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974689] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974692] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974695] uvcvideo: USB isochronous frame lost (-71).
[ 5863.974698] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974701] uvcvideo: USB isochronous frame lost (-71).
[ 5863.974704] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974707] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974709] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974712] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974715] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974718] uvcvideo: USB isochronous frame lost (-71).
[ 5863.974721] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974724] uvcvideo: USB isochronous frame lost (-71).
[ 5863.974727] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974730] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974733] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974735] uvcvideo: USB isochronous frame lost (-18).
[ 5863.974738] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978653] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978657] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978661] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978664] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978667] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978670] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978673] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978677] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978680] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978683] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978686] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978689] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978692] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978695] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978698] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978701] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978704] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978707] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978710] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978713] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978716] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978719] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978722] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978725] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978728] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978730] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978733] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978736] uvcvideo: USB isochronous frame lost (-71).
[ 5863.978739] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978742] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978745] uvcvideo: USB isochronous frame lost (-18).
[ 5863.978748] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980668] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980673] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980676] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980679] uvcvideo: USB isochronous frame lost (-71).
[ 5863.980682] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980685] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980688] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980691] uvcvideo: USB isochronous frame lost (-71).
[ 5863.980694] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980697] uvcvideo: USB isochronous frame lost (-18).
[ 5863.980719] uvcvideo: Marking buffer as bad (error bit set).
[ 5863.980725] uvcvideo: Frame complete (EOF found).
[ 5863.980732] uvcvideo: frame 133 stats: 424/2/426 packets, 1/167/426 pts (early initial), 425/426 scr, last pts/stc/sof 5280034/7435928/1154
[ 5863.996616] uvcvideo: USB isochronous frame lost (-18).
[ 5863.996665] uvcvideo: USB isochronous frame lost (-18).
[ 5863.998701] uvcvideo: Frame complete (EOF found).
[ 5863.998705] uvcvideo: EOF in empty payload.
[ 5864.002678] uvcvideo: frame 169 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2712396832/2731214032/35722
[ 5864.030785] uvcvideo: Frame complete (EOF found).
[ 5864.030792] uvcvideo: EOF in empty payload.
[ 5864.034731] uvcvideo: frame 170 stats: 0/234/235 packets, 0/0/235 pts (!early initial), 234/235 scr, last pts/stc/sof 2722482432/2741086632/35752
[ 5866.086977] uvcvideo: USB isochronous frame lost (-71).
[ 5866.086987] uvcvideo: USB isochronous frame lost (-18).
[ 5866.086995] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087002] uvcvideo: USB isochronous frame lost (-71).
[ 5866.087009] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087017] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087024] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087031] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087039] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087046] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087054] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087061] uvcvideo: USB isochronous frame lost (-71).
[ 5866.087068] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087075] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087083] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087090] uvcvideo: USB isochronous frame lost (-71).
[ 5866.087097] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087105] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087112] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087119] uvcvideo: USB isochronous frame lost (-71).
[ 5866.087127] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087134] uvcvideo: USB isochronous frame lost (-71).
[ 5866.087141] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087149] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087156] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087163] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087171] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087178] uvcvideo: USB isochronous frame lost (-18).
[ 5866.087185] uvcvideo: USB isochronous frame lost (-18).
[ 5866.088983] uvcvideo: USB isochronous frame lost (-18).
[ 5866.089029] uvcvideo: Marking buffer as bad (error bit set).
[ 5866.089038] uvcvideo: Frame complete (EOF found).
[ 5866.089054] uvcvideo: frame 134 stats: 437/2/439 packets, 1/169/439 pts (early initial), 438/439 scr, last pts/stc/sof 8466334/108578525/1213
[ 5866.095005] uvcvideo: USB isochronous frame lost (-71).
[ 5866.095014] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095022] uvcvideo: USB isochronous frame lost (-71).
[ 5866.095029] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095045] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095052] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095060] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095067] uvcvideo: USB isochronous frame lost (-71).
[ 5866.095075] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095082] uvcvideo: USB isochronous frame lost (-71).
[ 5866.095092] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095100] uvcvideo: USB isochronous frame lost (-71).
[ 5866.095107] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095114] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095122] uvcvideo: USB isochronous frame lost (-18).
[ 5866.095129] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145404] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145414] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145422] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145429] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145436] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145443] uvcvideo: USB isochronous frame lost (-71).
[ 5868.145451] uvcvideo: USB isochronous frame lost (-71).
[ 5868.145458] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145466] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145473] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145480] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145488] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145495] uvcvideo: USB isochronous frame lost (-71).
[ 5868.145502] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145510] uvcvideo: USB isochronous frame lost (-71).
[ 5868.145517] uvcvideo: USB isochronous frame lost (-71).
[ 5868.145525] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145532] uvcvideo: USB isochronous frame lost (-71).
[ 5868.145539] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145547] uvcvideo: USB isochronous frame lost (-18).
[ 5868.145586] uvcvideo: Marking buffer as bad (error bit set).
[ 5868.145595] uvcvideo: Frame complete (EOF found).
[ 5868.145613] uvcvideo: frame 135 stats: 45/2/47 packets, 0/0/47 pts (early initial), 46/47 scr, last pts/stc/sof 107241634/207398827/1223

--Apple-Mail=_D6B6473B-68FB-4F80-B26E-6EEA3C194957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--Apple-Mail=_D6B6473B-68FB-4F80-B26E-6EEA3C194957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--Apple-Mail=_D6B6473B-68FB-4F80-B26E-6EEA3C194957--

