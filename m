Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB221CA55E
	for <lists+linux-uvc-devel@lfdr.de>; Fri,  8 May 2020 09:43:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jWxfD-0007VS-Aw; Fri, 08 May 2020 07:43:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aleksandar.dakic@rt-rk.com>) id 1jWxfC-0007VM-EC
 for linux-uvc-devel@lists.sourceforge.net; Fri, 08 May 2020 07:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:
 From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D/xCCBxDl1IN12z3CN9ow9qnK1v4t499BYYe1RZB+Ho=; b=G816C+em1zY3/uCbnMnMf/Qi15
 epDOY2B4p1Kr+UB2h74yTR2YgtQuG/17a5j6Gm5Yd7jg9oeCHKglQegUmGFoJPgePansKFD9jdOdH
 4ZksyX1X16KZwZ8l7TVnF4cAqoY5shnS49ScHex4BkqpXWH57z6LzZKS5K3f8RRmAaHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=D/xCCBxDl1IN12z3CN9ow9qnK1v4t499BYYe1RZB+Ho=; b=h
 jEz8tTxGjR9kMJRqjWj9R16ySATSQ5Q0Pjg5qnAwo5JlZAs13vx6ydTQO1ISp8Vjf6fUK/AniwmEa
 SUtf2dObylu6yx0NbQAp7C1VmMMQc0PMUCZrOg/Fen+cCtrr2jt4p8/D9wj2Dc1p8Do2UPdbWp5pQ
 7GHRw1l+6+MM1Lpc=;
Received: from mx2.rt-rk.com ([89.216.37.149] helo=mail.rt-rk.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWxfA-00CCVr-0t
 for linux-uvc-devel@lists.sourceforge.net; Fri, 08 May 2020 07:43:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.rt-rk.com (Postfix) with ESMTP id C44341A1E4B
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri,  8 May 2020 09:24:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at rt-rk.com
Received: from [192.168.1.101] (unknown [87.116.178.251])
 by mail.rt-rk.com (Postfix) with ESMTPSA id A48F81A1E09
 for <linux-uvc-devel@lists.sourceforge.net>;
 Fri,  8 May 2020 09:24:41 +0200 (CEST)
To: linux-uvc-devel@lists.sourceforge.net
From: adakic <aleksandar.dakic@rt-rk.com>
Message-ID: <0f558850-1883-b35d-50a1-0ef3a6cfb6ee@rt-rk.com>
Date: Fri, 8 May 2020 09:24:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1jWxfA-00CCVr-0t
Subject: [linux-uvc-devel]  Switch to bulk interface
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
Content-Type: multipart/mixed; boundary="===============6759256265342486478=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============6759256265342486478==
Content-Type: multipart/alternative;
 boundary="------------DD6DBA38B85E0B8BD9F3F273"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DD6DBA38B85E0B8BD9F3F273
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,

The device is recognized as:

/[33569.792403] usb 2-5: new SuperSpeed USB device number 2 using xhci_hc=
d//
//[33569.812921] usb 2-5: LPM exit latency is zeroed, disabling LPM.//
//[33569.813123] usb 2-5: config 1 has an invalid interface number: 9=20
but max is 4//
//[33569.813127] usb 2-5: config 1 has no interface number 4//
//[33569.813384] usb 2-5: New USB device found, idVendor=3D2935,=20
idProduct=3D0006//
//[33569.813388] usb 2-5: New USB device strings: Mfr=3D1, Product=3D2,=20
SerialNumber=3D3//
//[33569.813391] usb 2-5: Product: USB Capture HDMI//
//[33569.813394] usb 2-5: Manufacturer: Magewell//
//[33569.813396] usb 2-5: SerialNumber: D206191227261//
//[33569.814694] uvcvideo: Found UVC 1.10 device USB Capture HDMI=20
(2935:0006)//
//[33569.815446] uvcvideo 2-5:1.0: Entity type for entity Extension 3=20
was not initialized!//
//[33569.815451] uvcvideo 2-5:1.0: Entity type for entity Processing 2=20
was not initialized!//
//[33569.815455] uvcvideo 2-5:1.0: Entity type for entity Camera 1 was=20
not initialized!/


Type and max packet size of///2-5:1.0/ interface are

/cat /sys/bus/usb/devices/2-5:1.0/ep_82/type
Interrupt

cat /sys/bus/usb/devices/2-5:1.0/ep_82/wMaxPacketSize
0040
/

This//device also has /2-5:1.1 /interface where type and max packet size =
are

cat /sys/bus/usb/devices/2-5:1.1/ep_83/wMaxPacketSize
0400
cat /sys/bus/usb/devices/2-5:1.1/ep_83/type
Bulk


Is it possible to register /2-5:1.1 /interface as v4l2 device?
//

/
/

Best regards,/
/

--=20
Aleksandar Daki=C4=87, MSc.
Software Engineer.

Phone: +381-(0)21 483 1475
E-mail: aleksandar.dakic@rt-rk.com

RT-RK Automotive
Narodnog Fronta 23 D-E
21000 Novi Sad Serbia
http://www.rt-rk.com


--------------DD6DBA38B85E0B8BD9F3F273
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello,</p>
    <p>The device is recognized as:</p>
    <p><i>[33569.792403] usb 2-5: new SuperSpeed USB device number 2
        using xhci_hcd</i><i><br>
      </i><i>[33569.812921] usb 2-5: LPM exit latency is zeroed,
        disabling LPM.</i><i><br>
      </i><i>[33569.813123] usb 2-5: config 1 has an invalid interface
        number: 9 but max is 4</i><i><br>
      </i><i>[33569.813127] usb 2-5: config 1 has no interface number 4</=
i><i><br>
      </i><i>[33569.813384] usb 2-5: New USB device found,
        idVendor=3D2935, idProduct=3D0006</i><i><br>
      </i><i>[33569.813388] usb 2-5: New USB device strings: Mfr=3D1,
        Product=3D2, SerialNumber=3D3</i><i><br>
      </i><i>[33569.813391] usb 2-5: Product: USB Capture HDMI</i><i><br>
      </i><i>[33569.813394] usb 2-5: Manufacturer: Magewell</i><i><br>
      </i><i>[33569.813396] usb 2-5: SerialNumber: D206191227261</i><i><b=
r>
      </i><i>[33569.814694] uvcvideo: Found UVC 1.10 device USB Capture
        HDMI (2935:0006)</i><i><br>
      </i><i>[33569.815446] uvcvideo 2-5:1.0: Entity type for entity
        Extension 3 was not initialized!</i><i><br>
      </i><i>[33569.815451] uvcvideo 2-5:1.0: Entity type for entity
        Processing 2 was not initialized!</i><i><br>
      </i><i>[33569.815455] uvcvideo 2-5:1.0: Entity type for entity
        Camera 1 was not initialized!</i></p>
    <p><br>
    </p>
    <p>Type and max packet size of<i> </i><i>2-5:1.0</i> interface are</p=
>
    <p><i>cat /sys/bus/usb/devices/2-5:1.0/ep_82/type<br>
        Interrupt<br>
        <br>
        cat /sys/bus/usb/devices/2-5:1.0/ep_82/wMaxPacketSize<br>
        0040<br>
      </i></p>
    <p>This<i> </i>device also has <i>2-5:1.1 </i>interface where
      type and max packet size are</p>
    <p>cat /sys/bus/usb/devices/2-5:1.1/ep_83/wMaxPacketSize<br>
      0400<br>
      cat /sys/bus/usb/devices/2-5:1.1/ep_83/type<br>
      Bulk</p>
    <p><br>
    </p>
    <p>Is it possible to register <i>2-5:1.1 </i>interface as v4l2
      device?<br>
      <i></i></p>
    <p><i><br>
      </i></p>
    <p>Best regards,<i><br>
      </i></p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Aleksandar Daki=C4=87, MSc.=20
Software Engineer.=20

Phone: +381-(0)21 483 1475=20
E-mail: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:aleksandar.d=
akic@rt-rk.com">aleksandar.dakic@rt-rk.com</a>=20

RT-RK Automotive=20
Narodnog Fronta 23 D-E=20
21000 Novi Sad Serbia=20
<a class=3D"moz-txt-link-freetext" href=3D"http://www.rt-rk.com">http://w=
ww.rt-rk.com</a></pre>
  </body>
</html>

--------------DD6DBA38B85E0B8BD9F3F273--


--===============6759256265342486478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6759256265342486478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6759256265342486478==--

