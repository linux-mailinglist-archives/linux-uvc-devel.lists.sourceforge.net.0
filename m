Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 507B71D461E
	for <lists+linux-uvc-devel@lfdr.de>; Fri, 15 May 2020 08:49:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jZU9t-0006Vh-3T; Fri, 15 May 2020 06:49:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xavier.bestel@free.fr>) id 1jZU9q-0006VO-FG
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 06:49:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:References:In-Reply-To:
 Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eGhb8blhwRvOg3ZqOcJhdzK8TOHJa6HDkuYZr25oG9M=; b=AWAbldK4pxIjWr/+K43mrebtQ1
 gemf+AGwWOwx8CxuBifK34z7qt+ZSPYNgJJ3uY/uqJc4GfJLtoUTzGblylAcyilOUjkKCEgbzsqaV
 i1FNL08n2DoWhIRuUbcWcdE410m44KJcOTtBvJoY8/iBg/a5BRY/aEkoTmRQJASGcW6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eGhb8blhwRvOg3ZqOcJhdzK8TOHJa6HDkuYZr25oG9M=; b=ij4L9+0YTx4KLC/i0MmseJ+BH3
 lHSb+5qzMBvkrpKS+gnTevfgqLKe+eNqxuQANWBw+51dC2qYZeofA/68p0hkwAWrYikJxVJ+EhmG4
 Z5i8aTvnrMajsimRNbkNxKNnOMY7ZVNOocvurL+WnWXck4HAY4EtzOTMYv254bMcFfPY=;
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZU9o-00BGyw-2K
 for linux-uvc-devel@lists.sourceforge.net; Fri, 15 May 2020 06:49:22 +0000
Received: from awak.mobi (unknown [78.207.29.31])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 9A66F5FFCA;
 Fri, 15 May 2020 08:49:06 +0200 (CEST)
Received: from xav13.bestouff.prv (xav13.bestouff.prv [10.2.228.109])
 by awak.mobi (Postfix) with ESMTPSA id 6BA8E3603BF;
 Fri, 15 May 2020 08:49:06 +0200 (CEST)
Message-ID: <15da6edcd463a56ee8961737eb418e61d4cd3cec.camel@free.fr>
From: Xavier Bestel <xavier.bestel@free.fr>
To: Ulrich Fuchs <ulrichfuchs@yahoo.de>
Date: Fri, 15 May 2020 08:49:06 +0200
In-Reply-To: <fba5e5b3-1b53-7710-cf7f-3f35b4b3ef88@yahoo.de>
References: <4d25b857d4c5392d25214adcf4f540a38f5c4475.camel@free.fr>
 <fba5e5b3-1b53-7710-cf7f-3f35b4b3ef88@yahoo.de>
User-Agent: Evolution 3.36.2-1 
MIME-Version: 1.0
X-Spam-Score: 1.5 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (xavier.bestel[at]free.fr)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.27.42.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jZU9o-00BGyw-2K
Subject: Re: [linux-uvc-devel] gspca_z3cxx: Failed to query (GET_CUR) UVC
 control 11 on unit 2
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
Cc: linux-uvc-devel@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============4575279274842081221=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net


--===============4575279274842081221==
Content-Type: multipart/alternative; boundary="=-XapskRo8eD0VrTUlNif7"


--=-XapskRo8eD0VrTUlNif7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Ulrich,
Strange, I have blacklisted gspca_zc3xx and now nothing loads when I
plug the webcam:[jeu. mai 14 03:50:59 2020] usb 5-3.3: new full-speed
USB device number 23 using xhci_hcd[jeu. mai 14 03:50:59 2020] usb 5-
3.3: New USB device found, idVendor=046d, idProduct=08d7, bcdDevice=
1.00[jeu. mai 14 03:50:59 2020] usb 5-3.3: New USB device strings:
Mfr=0, Product=0, SerialNumber=0
I suspect we don't have quite the same webcam ...
	Xav
Le jeudi 14 mai 2020 à 20:19 +0200, Ulrich Fuchs a écrit :
>     Hello,
>     I use
>           the same webcam. Works with uvcvideo driver not with gspca.
>           uvcvideo is build-in kernelmodule. probably helps removing
>           gspca. 
> 
>         
>     Stay
>           healthy,
>     Ulrich
>     
> 
>         
>     My
>           dmsg:
>     [
>           4811.906343] usb 2-5: new high-speed USB device number 2
> using
>           ehci-pci
> 
>           [ 4812.268900] usb 2-5: New USB device found,
> idVendor=046d,
>           idProduct=0825, bcdDevice= 0.10
> 
>           [ 4812.268905] usb 2-5: New USB device strings: Mfr=0,
>           Product=0, SerialNumber=2
> 
>           [ 4812.268908] usb 2-5: SerialNumber: 33E742F0
> 
>           [ 4813.454769] mc: Linux media interface: v0.10
> 
>           [ 4813.546389] videodev: Linux video capture interface:
> v2.00
> 
>           [ 4814.838796] usb 2-5: set resolution quirk: cval->res =
>           384
> 
>           [ 4814.839781] usbcore: registered new interface driver
>           snd-usb-audio
> 
>           [ 4814.852417] uvcvideo: Found UVC 1.00 device <unnamed>
>           (046d:0825)
> 
>           [ 4814.889836] uvcvideo 2-5:1.0: Entity type for entity
>           Extension 4 was not initialized!
> 
>           [ 4814.889840] uvcvideo 2-5:1.0: Entity type for entity
>           Extension 6 was not initialized!
> 
>           [ 4814.889843] uvcvideo 2-5:1.0: Entity type for entity
>           Extension 7 was not initialized!
> 
>           [ 4814.889846] uvcvideo 2-5:1.0: Entity type for entity
>           Processing 2 was not initialized!
> 
>           [ 4814.889849] uvcvideo 2-5:1.0: Entity type for entity
>           Extension 3 was not initialized!
> 
>           [ 4814.889851] uvcvideo 2-5:1.0: Entity type for entity
> Camera
>           1 was not initialized!
> 
>           [ 4814.890343] input: UVC Camera (046d:0825) as
>           /devices/pci0000:00/0000:00:1d.7/usb2/2-5/2-
> 5:1.0/input/input23
> 
>           [ 4814.898615] usbcore: registered new interface driver
>           uvcvideo
> 
>           [ 4814.898619] USB Video Class driver (1.1.1)
> 
>           
> 
>         
>     
> 
>         
>     Am 14.05.20 um 18:01 schrieb Xavier
>       Bestel:
> 
>     
>     
> >       Hi,
> > I have a webcam identified by:Bus 001 Device 005: ID 046d:0825
> > Logitech, Inc. Webcam C270
> > My kernel (Debian sid 5.6.0-1-amd64) loads the gspca_zc3xx driver:
> > [jeu. mai 14 01:46:40 2020] usb 5-3.3: new full-speed USB device
> > number 13 using xhci_hcd[jeu. mai 14 01:46:40 2020] usb 5-3.3: New
> > USB device found, idVendor=046d, idProduct=08d7, bcdDevice=
> > 1.00[jeu. mai 14 01:46:40 2020] usb 5-3.3: New USB device strings:
> > Mfr=0, Product=0, SerialNumber=0[jeu. mai 14 01:46:40 2020]
> > gspca_main: gspca_zc3xx-2.14.0 probing 046d:08d7[jeu. mai 14
> > 01:46:41 2020] input: gspca_zc3xx as
> > /devices/pci0000:00/0000:00:1c.0/0000:01:00.0/0000:02:01.0/0000:04:
> > 00.0/0000:05:01.0/0000:07:00.0/usb5/5-3/5-3.3/input/input52
> > but when I try to open it with "cheese" (the GNOME webcam app) it's
> > notselectable, and I see these errors:
> > [jeu. mai 14 01:46:51 2020] uvcvideo: Failed to query (GET_CUR) UVC
> > control 11 on unit 2: -110 (exp. 1).[jeu. mai 14 01:46:51 2020]
> > uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: -32
> > (exp. 1).
> > Does anyone know what goes wrong, and what can I do to help/debug ?
> > Cheers,
> > 	Xav
> > 
> > 
> > _______________________________________________Linux-uvc-devel
> > mailing listLinux-uvc-devel@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
> > 
> >     
> 
>   
> 

--=-XapskRo8eD0VrTUlNif7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body style=3D"text-align:left; direction:ltr;"><div>Hi Ulrich,</div><div=
><br></div><div>Strange, I have blacklisted gspca_zc3xx and now nothing loa=
ds when I plug the webcam:</div><pre>[jeu. mai 14 03:50:59 2020] usb 5-3.3:=
 new full-speed USB device number 23 using xhci_hcd</pre><pre>[jeu. mai 14 =
03:50:59 2020] usb 5-3.3: New USB device found, idVendor=3D046d, idProduct=
=3D08d7, bcdDevice=3D 1.00</pre><pre>[jeu. mai 14 03:50:59 2020] usb 5-3.3:=
 New USB device strings: Mfr=3D0, Product=3D0, SerialNumber=3D0</pre><pre><=
br></pre><div>I suspect we don't have quite the same webcam ...</div><div><=
br></div><div>	Xav</div><div><br></div><div>Le jeudi 14 mai 2020 =C3=A0 20:=
19 +0200, Ulrich Fuchs a =C3=A9crit&nbsp;:</div><blockquote type=3D"cite" s=
tyle=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex">
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif">Hello,=
</font></font></p>
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif">I use
          the same webcam. Works with uvcvideo driver not with gspca.
          uvcvideo is build-in kernelmodule. probably helps removing
          gspca. <br>
        </font></font></p>
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif">Stay
          healthy,</font></font></p>
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif">Ulrich=
</font></font></p>
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif"><br>
        </font></font></p>
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif">My
          dmsg:</font></font></p>
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif">[
          4811.906343] usb 2-5: new high-speed USB device number 2 using
          ehci-pci<br>
          [ 4812.268900] usb 2-5: New USB device found, idVendor=3D046d,
          idProduct=3D0825, bcdDevice=3D 0.10<br>
          [ 4812.268905] usb 2-5: New USB device strings: Mfr=3D0,
          Product=3D0, SerialNumber=3D2<br>
          [ 4812.268908] usb 2-5: SerialNumber: 33E742F0<br>
          [ 4813.454769] mc: Linux media interface: v0.10<br>
          [ 4813.546389] videodev: Linux video capture interface: v2.00<br>
          [ 4814.838796] usb 2-5: set resolution quirk: cval-&gt;res =3D
          384<br>
          [ 4814.839781] usbcore: registered new interface driver
          snd-usb-audio<br>
          [ 4814.852417] uvcvideo: Found UVC 1.00 device &lt;unnamed&gt;
          (046d:0825)<br>
          [ 4814.889836] uvcvideo 2-5:1.0: Entity type for entity
          Extension 4 was not initialized!<br>
          [ 4814.889840] uvcvideo 2-5:1.0: Entity type for entity
          Extension 6 was not initialized!<br>
          [ 4814.889843] uvcvideo 2-5:1.0: Entity type for entity
          Extension 7 was not initialized!<br>
          [ 4814.889846] uvcvideo 2-5:1.0: Entity type for entity
          Processing 2 was not initialized!<br>
          [ 4814.889849] uvcvideo 2-5:1.0: Entity type for entity
          Extension 3 was not initialized!<br>
          [ 4814.889851] uvcvideo 2-5:1.0: Entity type for entity Camera
          1 was not initialized!<br>
          [ 4814.890343] input: UVC Camera (046d:0825) as
          /devices/pci0000:00/0000:00:1d.7/usb2/2-5/2-5:1.0/input/input23<b=
r>
          [ 4814.898615] usbcore: registered new interface driver
          uvcvideo<br>
          [ 4814.898619] USB Video Class driver (1.1.1)<br>
          <br>
        </font></font></p>
    <p><font size=3D"+1"><font face=3D"Helvetica, Arial, sans-serif"><br>
        </font></font></p>
    <div class=3D"moz-cite-prefix">Am 14.05.20 um 18:01 schrieb Xavier
      Bestel:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:4d25b857d4c5392d25214adcf4f540a38=
f5c4475.camel@free.fr" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf =
solid;padding-left:1ex">
      <pre>Hi,</pre><pre><br></pre><pre>I have a webcam identified by:</pre=
><pre>Bus 001 Device 005: ID 046d:0825 Logitech, Inc. Webcam C270</pre><pre=
><br></pre><pre>My kernel (Debian sid 5.6.0-1-amd64) loads the gspca_zc3xx =
driver:</pre><pre><br></pre><pre>[jeu. mai 14 01:46:40 2020] usb 5-3.3: new=
 full-speed USB device number 13 using xhci_hcd</pre><pre>[jeu. mai 14 01:4=
6:40 2020] usb 5-3.3: New USB device found, idVendor=3D046d, idProduct=3D08=
d7, bcdDevice=3D 1.00</pre><pre>[jeu. mai 14 01:46:40 2020] usb 5-3.3: New =
USB device strings: Mfr=3D0, Product=3D0, SerialNumber=3D0</pre><pre>[jeu. =
mai 14 01:46:40 2020] gspca_main: gspca_zc3xx-2.14.0 probing 046d:08d7</pre=
><pre>[jeu. mai 14 01:46:41 2020] input: gspca_zc3xx as /devices/pci0000:00=
/0000:00:1c.0/0000:01:00.0/0000:02:01.0/0000:04:00.0/0000:05:01.0/0000:07:0=
0.0/usb5/5-3/5-3.3/input/input52</pre><pre><br></pre><pre>but when I try to=
 open it with "cheese" (the GNOME webcam app) it's not</pre><pre>selectable=
, and I see these errors:</pre><pre><br></pre><pre>[jeu. mai 14 01:46:51 20=
20] uvcvideo: Failed to query (GET_CUR) UVC control 11 on unit 2: -110 (exp=
. 1).</pre><pre>[jeu. mai 14 01:46:51 2020] uvcvideo: Failed to query (GET_=
CUR) UVC control 11 on unit 2: -32 (exp. 1).</pre><pre><br></pre><pre>Does =
anyone know what goes wrong, and what can I do to help/debug ?</pre><pre><b=
r></pre><pre>Cheers,</pre><pre><br></pre><pre>	Xav</pre><pre><br></pre><pre=
><br></pre><pre><br></pre><pre>____________________________________________=
___</pre><pre>Linux-uvc-devel mailing list</pre><a class=3D"moz-txt-link-ab=
breviated" href=3D"mailto:Linux-uvc-devel@lists.sourceforge.net"><pre>Linux=
-uvc-devel@lists.sourceforge.net</pre></a><pre><br></pre><a class=3D"moz-tx=
t-link-freetext" href=3D"https://lists.sourceforge.net/lists/listinfo/linux=
-uvc-devel"><pre>https://lists.sourceforge.net/lists/listinfo/linux-uvc-dev=
el</pre></a><pre><br></pre>
    </blockquote>
 =20

</blockquote></body></html>

--=-XapskRo8eD0VrTUlNif7--



--===============4575279274842081221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4575279274842081221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============4575279274842081221==--


