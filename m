Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE921C2B75
	for <lists+linux-uvc-devel@lfdr.de>; Sun,  3 May 2020 12:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	MIME-Version:Date:Message-ID:To:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=gdAw4+fbrjFP4Yd1c/skWUmWVKCJ5RHjllfrLJeATE0=; b=IY5p5oB9Zwx4BmsIsuJqw+axDk
	2JWLYlmntPSacVNPCYjnCbkxmLVZ1JSnyMZHm1hTAiP0aOSP3sOWhIABIJ0NvTUKFo7/Q70McyEms
	4/JcTy7j2oJ10UZyO+XOZ6gwZAUvmTQg5q7vJQ1EF+LLzJ/VBun4TAQHxKnKjIMdwuwI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jVCEr-0006sw-Io; Sun, 03 May 2020 10:52:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ulrichfuchs@yahoo.de>) id 1jVCEq-0006sp-DR
 for linux-uvc-devel@lists.sourceforge.net; Sun, 03 May 2020 10:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bBBrmlQeN8HDVm3i3Is4IG9u7w4IJsqN1+4evwaGjvg=; b=KUzaN625/6jiWkDOmraZMwXDvZ
 uVpWC7t07I+0tgQN2n1cvkTaKWBI3HFNJ5XYHd/l4hJxQzXgWMEQ46CgeOKDGT7ZzSh9QYQxvhsWg
 TZJIg5hZ/HUels7OIuZ+bd/qw0UcZ0+DTr0JNciPihQNuACH4yx9C5KqMeXD5ilo2m6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bBBrmlQeN8HDVm3i3Is4IG9u7w4IJsqN1+4evwaGjvg=; b=U
 YG0AUxQPxpG4mCAcyW7m2oYRUfJhy/Qa0t5T55I/oyS4Kr2c/DGOp99SJcs0S6uKCekGLmB2r879b
 MgPK38i3vOyG3J67orcqtS0QCg4CXfucAefbObFPbjEX0PqjOIFU7qENDUio3qOi7xxEbyiqU3mF8
 7t4/xwjHFwuCASwE=;
Received: from sonic311-30.consmr.mail.ir2.yahoo.com ([77.238.176.162])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVCEo-003pvZ-1T
 for linux-uvc-devel@lists.sourceforge.net; Sun, 03 May 2020 10:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.de; s=s2048;
 t=1588503159; bh=bBBrmlQeN8HDVm3i3Is4IG9u7w4IJsqN1+4evwaGjvg=;
 h=To:From:Subject:Date:References:From:Subject;
 b=UlOHLfHil8k4DmF5gUGrndRW9NDVnIX/QpTSpMPeeVkO0P4RNDCH7bYTi4tHfeDUFei0nH/nVcqFP66b5OZnINbqStyOk5XL2V3oZBbIak55Li6kT3br5ZN6VdHG3CKSbAOg8ezPx/aa+IC66F5qs1xFY7ayS7PVPT6Y9bLNIygov6QSMJ+BKAN8RtWwLKCT5UcFaGdq7bq+qIoSX/cAqFohfje6KpK8SYbDuJE2KFOIc0pWi6WSF0BlXULkgDQXmeMXAjtRMcer6iDcmESV6gvv9ipZNfFDBZf7IIN6r8WfIgMSLXx0VvgM7YLxHTA9r1B1Am2o4R3EsTYcNkTTGQ==
X-YMail-OSG: OcWI9PwVM1kE4VPrN0VnbHvd8kqCtprx7VEiC1EMWC5N7A_usEXAbx4WhkN.mcr
 TwDQRB85wNz0.tTWwFMQO6dpmiyiBh58qZFSGO1r4eW63AZhl3YzaxHoIEh9LTgrvD.AlSRXot5e
 ehBbXOdwDTcl50S222u3.KhMRwvnqcuQ02rfo_KAt.xt3r5rYC7NxweDWiA3PpiU215kztviNIC_
 LbS25T5gpeHPioo4Nw_NhS7FEiLg3m4VUFzLbdN9aaHuRUBhXciGukQ9kLwnwY__2tdZ8gF843vX
 aAg4o33zqKHVPsoesr25_ohPjAPWwoQ9Z1mrrPhN6cFsfendnlcm1TLJ0LSx0W83.NFvVz5X7ref
 E4IUT5cIT9Z6gIAA4lWGRn2UX6JVEkVYwihe6eK3wBqXlGUvsc1rS5HDhGc9kra1qKQfPpk4mkyq
 5Y3IwswCk0RFk2Ad0qbsgi6z9gKhnfvxkAecYDsRDTjvxhf2KksfHB529HrHquff1AoSc0jRVX9M
 bRBaEwPPYAo2tyaiSvNIdGw.JDAKZxwgbTv7Hve2bhGAnFBN_0waWvfBKXKN.cyU8mwI_vmiYf07
 8Fa3jxU1gucF4g3GGNeXsZvH1uePDZ8JIy0odBw4U7VQn3dvrlJHiQFXbLjRmQfbBFG5lZ1AY1rV
 h7PuKMZDa1CuQLhxh4_hrSXF08.anmdv2fD8CP82VElJJF.iLyVpRAtq8i_0TFxEt64kmcPiIudf
 1VBL2mXt7IRDM.TDoI9KBtuuUTZ5s.5Z6Ta3KKGh8IPRBYFY7hfFFfZnOb4uNZXOa7ezkZ5ky7g8
 59LqXjMCcshfzd_gOg33QEIrMOm9BkKIKzAExexg81WzlUM2ZC7VW8ivhRMTHqGn37aKRrRSFZU6
 Wn7KVmoIzQpVMpTxxKvqSxGvJdAefpyqHPXfKDoa7L9edd13WZ_RsTAMXsiaEKKlsPTwVhnDNTOp
 gfH0mowIJ2f1b93krncT5XRp9XvAWSVjiWvHs5LkuKOoJ4ozOmlB1txSatep.Wnsd5t5Qegph.3q
 Jk1tKFbjRTevnRNQ2eoccAHVCuypeLai5SRjSr203.Zzv1uKdysOj8TY2UftgH_cNaqa8PTWdD2N
 4D9Fd4fJvtk_JQtGrYhvFOrIOBBAWcUwWP9VY6sbVvGWwf_L8fCeGh7MJCreNzJGi8Ye_qfbnYmY
 hesNO3ugp8z97cqe0CBDYEKZ7v.DjzmPzCQOHoK_QoZSMEmbMCx4G7_VunGNXrpJfsfrNpv6JUUI
 0fHMabzwoqUOc.oN1OEdchROJjgwyIP77O1uFiNiTw7E6P44deJyMZe7zqGtEI5yZUpuzeN2PufY
 pOQplkAivHT8Aio8G16YdGWplSuOhpI6aL8ktbGhJRGejjXRpBi0191i1q75QTA44hlOAUsMCtQ-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.ir2.yahoo.com with HTTP; Sun, 3 May 2020 10:52:39 +0000
Received: by smtp413.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 9208a11e72ff47f48669f4b4fa99aa2d; 
 Sun, 03 May 2020 10:42:28 +0000 (UTC)
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <e24ae566-4e11-2bc3-b653-d66d26d2965a@yahoo.de>
Date: Sun, 3 May 2020 12:42:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: de-DE
References: <e24ae566-4e11-2bc3-b653-d66d26d2965a.ref@yahoo.de>
X-Mailer: WebService/1.1.15756 hermes Apache-HttpAsyncClient/4.1.4
 (Java/11.0.6)
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [77.238.176.162 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ulrichfuchs[at]yahoo.de)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [77.238.176.162 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVCEo-003pvZ-1T
Subject: [linux-uvc-devel] HP Webcam 04ca:707d in Notebook hp 14-ck2110
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
From: Ulrich Fuchs via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: Ulrich Fuchs <ulrichfuchs@yahoo.de>
Content-Type: multipart/mixed; boundary="===============1128604165420691335=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============1128604165420691335==
Content-Type: multipart/alternative;
 boundary="------------C143CDA4C6785D363DAEF2EA"
Content-Language: de-DE
Content-Length: 10694

This is a multi-part message in MIME format.
--------------C143CDA4C6785D363DAEF2EA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

Webcam UVC 1.00 Device HP Webcam 04ca:707d Lite-On Technology Corp.  in 
notebook hp 14-ck2110ng is not in the list.

The Webcam is a HD-Webcam, but only low-resolution  640x360, 176x144, 
320x240, 352x288 and 640x480 are recognized by uvcvideo and can be used.

DMSG says:

[    4.575836] uvcvideo: Found UVC 1.00 device HP Webcam (04ca:707d)
[    4.599955] intel_telemetry_core Init
[    4.607579] uvcvideo 1-7:1.0: Entity type for entity Extension 7 was 
not initialized!
[    4.607583] uvcvideo 1-7:1.0: Entity type for entity Processing 2 was 
not initialized!
[    4.607584] uvcvideo 1-7:1.0: Entity type for entity Camera 1 was not 
initialized!
[    4.607586] uvcvideo 1-7:1.0: Entity type for entity Extension 4 was 
not initialized!
[    4.607669] input: HP Webcam: HP Webcam as 
/devices/pci0000:00/0000:00:15.0/usb1/1-7/1-7:1.0/input/input9
[    4.607752] usbcore: registered new interface driver uvcvideo
[    4.607753] USB Video Class driver (1.1.1)
[    4.636732] Invalid pltconfig, ensure IPC1 device is enabled in BIOS
[    4.638493] rtl8821ce: loading out-of-tree module taints kernel.
[    4.640891] rtl8821ce: module verification failed: signature and/or 
required key missing - tainting kernel

Systeminformation:

Betriebssystem: Kubuntu 20.04 KDE-Plasma-Version: 5.18.4 
KDE-Frameworks-Version: 5.68.0 Qt-Version: 5.12.8 Kernel-Version: 
5.4.0-28-generic Art des Betriebssystems: 64-bit Prozessoren: 2 × Intel® 
Celeron® N4020 CPU @ 1.10GHz Speicher: 7,5 GiB Arbeitsspeicher

HP Webcam Hersteller: DHKQBA19ID1MTD Seriennummer: 200901010001

Klasse

	

239

	

(Miscellaneous Device)

Unterklasse

	

2

	

(?)

Protokoll

	

0

	

USB-Version

	

2.00

	

	
	

Anbieter-Kennung

	

0x4ca

	

(Lite-On Technology Corp.)

Produkt-Kennung

	

0x707d

	

Revision

	

0.00

	

	
	

Geschwindigkeit

	

480 Mbit/s

	

Kanäle

	

0

	

Max. Paketgröße

	

64

	

	
	


--------------C143CDA4C6785D363DAEF2EA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello,</p>
    <p style="margin-bottom: 0cm; line-height: 100%">Webcam  <font style="font-size: 11pt" size="2">UVC 1.00 Device HP Webcam 04ca:707d Lite-On Technology Corp.  in notebook hp 14-ck2110ng
</font><font style="font-size: 11pt" size="2">is not in the list.</font>
    </p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font style="font-size: 11pt" size="2">The Webcam is a HD-Webcam, but  only low-resolution  640x360, 176x144, 320x240, 352x288 and 640x480 are recognized by uvcvideo and can be used.</font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font style="font-size: 11pt" size="2">
</font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font style="font-size: 11pt" size="2">DMSG says:</font></p>
    <font size="2">[    4.575836] uvcvideo: Found UVC 1.00 device HP
      Webcam (04ca:707d)<br>
      [    4.599955] intel_telemetry_core Init<br>
      [    4.607579] uvcvideo 1-7:1.0: Entity type for entity Extension
      7 was not initialized!<br>
      [    4.607583] uvcvideo 1-7:1.0: Entity type for entity Processing
      2 was not initialized!<br>
      [    4.607584] uvcvideo 1-7:1.0: Entity type for entity Camera 1
      was not initialized!<br>
      [    4.607586] uvcvideo 1-7:1.0: Entity type for entity Extension
      4 was not initialized!<br>
      [    4.607669] input: HP Webcam: HP Webcam as
      /devices/pci0000:00/0000:00:15.0/usb1/1-7/1-7:1.0/input/input9<br>
      [    4.607752] usbcore: registered new interface driver uvcvideo<br>
      [    4.607753] USB Video Class driver (1.1.1)<br>
      [    4.636732] Invalid pltconfig, ensure IPC1 device is enabled in
      BIOS<br>
      [    4.638493] rtl8821ce: loading out-of-tree module taints
      kernel.<br>
      [    4.640891] rtl8821ce: module verification failed: signature
      and/or required key missing - tainting kernel</font><br>
    <p style="margin-bottom: 0cm; line-height: 100%"><font style="font-size: 11pt" size="2">
Systeminformation:      </font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font style="font-size: 11pt" size="2">Betriebssystem: Kubuntu 20.04
KDE-Plasma-Version: 5.18.4
KDE-Frameworks-Version: 5.68.0
Qt-Version: 5.12.8
Kernel-Version: 5.4.0-28-generic
Art des Betriebssystems: 64-bit
Prozessoren: 2 × Intel® Celeron® N4020 CPU @ 1.10GHz
Speicher: 7,5 GiB Arbeitsspeicher
 </font></p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">HP Webcam

<span style=" font-weight:600;">Hersteller:</span> DHKQBA19ID1MTD
<span style=" font-weight:600;">Seriennummer:</span> 200901010001

</p>
    <table style=" margin-top:0px; margin-bottom:0px; margin-left:0px;
      margin-right:0px;" cellspacing="2" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Klasse</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">239</p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">(Miscellaneous Device)</p>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Unterklasse</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">2</p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">(?)</p>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Protokoll</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">0</p>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">USB-Version</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">2.00</p>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td><br>
          </td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Anbieter-Kennung</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">0x4ca</p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">(Lite-On Technology Corp.)</p>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Produkt-Kennung</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">0x707d</p>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Revision</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">0.00</p>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td><br>
          </td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Geschwindigkeit</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">480 Mbit/s</p>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Kanäle</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">0</p>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;"><span style=" font-style:italic;">Max. Paketgröße</span></p>
          </td>
          <td>
            <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">64</p>
          </td>
          <td><br>
          </td>
        </tr>
        <tr>
          <td><br>
          </td>
          <td><br>
          </td>
          <td><br>
          </td>
        </tr>
      </tbody>
    </table>
    <style type="text/css">
p, li { white-space: pre-wrap; }</style>
  </body>
</html>

--------------C143CDA4C6785D363DAEF2EA--


--===============1128604165420691335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1128604165420691335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============1128604165420691335==--

