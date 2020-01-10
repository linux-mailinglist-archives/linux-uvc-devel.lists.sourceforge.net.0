Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1308A1370C5
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 10 Jan 2020 16:10:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1ipvvW-0004OK-Uh; Fri, 10 Jan 2020 15:10:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <d.jacobi@solpeg.de>) id 1ipvvU-0004OC-UU
 for linux-uvc-devel@lists.sourceforge.net; Fri, 10 Jan 2020 15:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:
 From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BZg2E8HTaa4e36kA+Yqd7R0QGvv+wWwOhR0Gi3KGaJE=; b=BwGfYXnFrzUjFzKh++A8v/8IMH
 D9V+gyNGLvyg7qfi2uinVKDaKN3sMPAPErSP7uwkTyGyBpZ6mMPwWrbr3p7px18/rncVdJZBzeJrm
 rYdd5fYHcaBe4ILEdE4USkdVaTzjK1ZVFhFi1iheRUA1LA2WUQTfqGDbgjNuDbYU/vsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BZg2E8HTaa4e36kA+Yqd7R0QGvv+wWwOhR0Gi3KGaJE=; b=k
 vonyBPa+iF+kOGa7uGWCi99e1FhLoEvp6TMrVhVts5nA46STLLeBPIHtpnIUxB9sYqbhmMJ6r78tz
 9yRCofX19gSQXlp3o3ua2N/AxqdtahhvbV6MtO/TFWUe5Ar97bw623FLM9f42sBWJiFSznKMfdTPq
 PnH7Qx9b2Cyw+XgM=;
Received: from dsp1.rb-host.de ([91.211.112.206])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipvvS-00H1mJ-SP
 for linux-uvc-devel@lists.sourceforge.net; Fri, 10 Jan 2020 15:10:16 +0000
Received: from dsp1.rb-host.de (localhost.localdomain [127.0.0.1])
 by dsp1.rb-host.de (Proxmox) with ESMTP id C36E0C2279
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri, 10 Jan 2020 15:51:04 +0100 (CET)
To: linux-uvc-devel@lists.sourceforge.net
From: Dieko Jacobi <d.jacobi@solpeg.de>
Message-ID: <f97bf8f1-f878-7879-63cc-ef0f20510c84@solpeg.de>
Date: Fri, 10 Jan 2020 15:51:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.101.4 at mail-s3.rb-host.de
X-Virus-Status: Clean
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [91.211.112.206 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1ipvvS-00H1mJ-SP
Subject: [linux-uvc-devel] Support for Samsung VG-STC4000 Webcam
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
Content-Type: multipart/mixed; boundary="===============3623812555481961002=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============3623812555481961002==
Content-Type: multipart/alternative;
 boundary="------------A4FAAF65AF77BFE32CC1CF3A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A4FAAF65AF77BFE32CC1CF3A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hallo,

I have a Samsung VG-STC4000 Webcam and it seems the device is not 
supported. How can I get it to work?

4 years ago or so Samsung produced this camera for their smart TVs in 
order to support video conferencing with Microsoft skype.
Since Microsoft ended the support for skype on samsung TVs, the skype 
app is no longer available and the webcam device ist useless.

I try to avoid sending the device into trash...

When I plug the device I get this info with lsusb:

ID 04e8:2061 Samsung Electronics Co., Ltd

dmesg:

[Fr Jan 10 15:41:12 2020] usb 1-7: new high-speed USB device number 9 
using ehci-pci
[Fr Jan 10 15:41:12 2020] usb 1-7: New USB device found, idVendor=04e8, 
idProduct=2061
[Fr Jan 10 15:41:12 2020] usb 1-7: New USB device strings: Mfr=1, 
Product=2, SerialNumber=0
[Fr Jan 10 15:41:12 2020] usb 1-7: Product: USB2.0 UVC HQ WebCam
[Fr Jan 10 15:41:12 2020] usb 1-7: Manufacturer: Alpha Imaging Tech. Corp.
[Fr Jan 10 15:41:12 2020] uvcvideo: Found UVC 1.00 device USB2.0 UVC HQ 
WebCam (04e8:2061)
[Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
Extension 2 was not initialized!
[Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
Extension 6 was not initialized!
[Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
Extension 5 was not initialized!
[Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
Processing 3 was not initialized!
[Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity 
Camera 1 was not initialized!
[Fr Jan 10 15:41:12 2020] input: USB2.0 UVC HQ WebCam as 
/devices/pci0000:00/0000:00:04.1/usb1/1-7/1-7:1.0/input/input19

Thanks for your support !


--------------A4FAAF65AF77BFE32CC1CF3A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <font face="Helvetica, Arial, sans-serif">Hallo,<br>
      <br>
      I have a Samsung VG-STC4000 Webcam and it seems the device is not
      supported. How can I get it to work?<br>
      <br>
      4 years ago or so Samsung produced this camera for their smart TVs
      in order to support video conferencing with Microsoft skype.<br>
      Since Microsoft ended the support for skype on samsung TVs, the
      skype app is no longer available and the webcam device ist
      useless.<br>
      <br>
      I try to avoid sending the device into trash...<br>
      <br>
      When I plug the device I get this info with lsusb:<br>
      <br>
      ID 04e8:2061 Samsung Electronics Co., Ltd<br>
      <br>
      dmesg:<br>
      <br>
      [Fr Jan 10 15:41:12 2020] usb 1-7: new high-speed USB device
      number 9 using ehci-pci<br>
      [Fr Jan 10 15:41:12 2020] usb 1-7: New USB device found,
      idVendor=04e8, idProduct=2061<br>
      [Fr Jan 10 15:41:12 2020] usb 1-7: New USB device strings: Mfr=1,
      Product=2, SerialNumber=0<br>
      [Fr Jan 10 15:41:12 2020] usb 1-7: Product: USB2.0 UVC HQ WebCam<br>
      [Fr Jan 10 15:41:12 2020] usb 1-7: Manufacturer: Alpha Imaging
      Tech. Corp.<br>
      [Fr Jan 10 15:41:12 2020] uvcvideo: Found UVC 1.00 device USB2.0
      UVC HQ WebCam (04e8:2061)<br>
      [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity
      Extension 2 was not initialized!<br>
      [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity
      Extension 6 was not initialized!<br>
      [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity
      Extension 5 was not initialized!<br>
      [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity
      Processing 3 was not initialized!<br>
      [Fr Jan 10 15:41:12 2020] uvcvideo 1-7:1.0: Entity type for entity
      Camera 1 was not initialized!<br>
      [Fr Jan 10 15:41:12 2020] input: USB2.0 UVC HQ WebCam as
      /devices/pci0000:00/0000:00:04.1/usb1/1-7/1-7:1.0/input/input19<br>
      <br>
      Thanks for your support !</font><br>
    <div class="moz-signature">
      <div style="font-size: 12.0pt; font-family: Garamond,Times,serif"><br>
      </div>
    </div>
  </body>
</html>

--------------A4FAAF65AF77BFE32CC1CF3A--



--===============3623812555481961002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3623812555481961002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============3623812555481961002==--


