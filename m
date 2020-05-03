Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A5E1C2B39
	for <lists+linux-uvc-devel@lfdr.de>; Sun,  3 May 2020 12:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	MIME-Version:Date:Message-ID:To:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=iK9YQ3L9ltoXuPQsl6Kj8c8G9BKhMWPgGm1Q33ZjIJw=; b=fL9GOzjsqf8ytoIOJEqdchYDIg
	+BrR/4nppJSUKQjFlsvseIyKZRrQymvsgkwZIyq3xs1YkyR0scOH5MSjF0qlts5qkXuEgXao2/J1z
	SD51Sx0LQx1tvowujn+lUsF9I8h/rfx7zqeIz6g9QB34L0LcLpNQtTjjnBjEI44xkcbc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jVBdQ-0005Ab-W1; Sun, 03 May 2020 10:14:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ulrichfuchs@yahoo.de>) id 1jVBdM-0005AC-44
 for linux-uvc-devel@lists.sourceforge.net; Sun, 03 May 2020 10:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KOLjK456EnH8/Y4ZfesvGxI0gX+jwf27mzVt40jYF7s=; b=eqfTvWilUmGSS6DxUzbALpwuCD
 WqfcxVngAJT/gy0Nj2WqXySaHZ4EtjsRecWnMYeHQM2gNmVC/SCaaZa1cdxKYcDP1jxrbuanJaRJY
 5JONb+KQFNwJ1Zb6z2TZXRZVkAtKW57E5n4LA+bsZS0n6vVSJRgENjDekOh1G3grgAoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KOLjK456EnH8/Y4ZfesvGxI0gX+jwf27mzVt40jYF7s=; b=D
 7qh2bW9kY5dB/nIR38A3ilyvFTRaHJLQ+VbrEkl5ZjL3KaDmtOhiB+3+TPdlFMiQiMHzu7TnHXisp
 XF7GbTtoyoNBHonjd4OVG4lkdEqoAq83JBHvN9O3WVdFxnXHpMLyfjbZUNdRfQH9qA7jb4PlscrMf
 129XYy5DXz5s1f3A=;
Received: from sonic310-57.consmr.mail.ir2.yahoo.com ([77.238.177.30])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVBdF-003nGn-G9
 for linux-uvc-devel@lists.sourceforge.net; Sun, 03 May 2020 10:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.de; s=s2048;
 t=1588500830; bh=KOLjK456EnH8/Y4ZfesvGxI0gX+jwf27mzVt40jYF7s=;
 h=To:From:Subject:Date:References:From:Subject;
 b=UT7mDVlUSLgaLBSVEG7lg9Wf9Bm8+4rGAvIEhSxqB9lJroTqrhceNjekZ+0Vi4iSWoxkFuYYxFQBew3jus0LnJCQWhaAafkRyTNZIxrgfKzQdmSXWpXErcgSo3l4oHNTLReyisiTN8FKugY2tp7poeaDpcB2S3F6IGXKOGiUXf1samQzQQIoatymtfHNt0BZb9qF/nHNGyG5/tqkl6oiqYImDC++MfQuosyy/zLn9RtwoMMSfsN3xk1X2ZLaTAGmgxt9TF7b8ZVyLWaXxdeak1hKtyj5/cphvEEqpBd0767AL8i1fcVQx4Ai+mmWx81CH9VuWyiXEvEHaF6J1meaRw==
X-YMail-OSG: NBgw6NMVM1lg0XlUeSFNdmX_uBDm4KKyckbz97cWq1NI54HjWz2CUBJiL1MsjpQ
 mAwzDEwpVmSItb4Q3ZmAIfAF.QIJB4DhMMqb1ysgwOtuJzplD2.jtzat7gSczEp6Nh7AdDgwecrw
 sAN17Mfeo7wXk2n5zdrX4gLvSnVJ7Y8WiOan0FaaBMm7Rp3vM21qOzC9FqY9V4udxvcnUt8iuM_.
 dFt3glGwKYHS4.8Z7NkZp1iM.kVdEpNi4mmnrNMQc9awSRtnl9tYaCkd1ELmBySI.kZYcZb61xer
 8jfXPALKlEkp51aGgCBRyBiJ0g3r_QKN9qlFpKzuTE.KhhMYcylTqB727lG7k3B_ERYjQO.sWdJk
 rT1k7YogljvajYokdZd96LeA.hTapThEyJVmSF_tycsVRew8PV.KWBahTvcmYVU_H7SfkFCwz.20
 7Sp2B3zMJAqbJ59Wv3GVRHYfI9mgIeTkRsy_xwLvEsiCZ_Xja58VO8U1fV1SyvRKXVkloeZHCy70
 tjrudcY5Q4SMqPRYHuMZ4zBcEOLjiJYUlmR1D.lU0tj0tIurSj8LC_RSK.cWVxORIJQo2VikwdAI
 BiA1_dZOHQCuiBcDiBIg5JNb7jtKIlJSq.q6D8mCELnWJ7ageWpQQiGdEhCmjwcKinWOHF51LH8v
 e1w_C05JdxF_FXMSURigrwgjuN5Bmmwjii9VCk0sW_J1.jPwLndnsf1iA5.NXwQi69BXRiOb9TLp
 frjZhurNAMagM2e2CUH.e0tkkC3V4.a0YI4e4uHCX0N5eeq6Wgj66SrugHTwP22hkgvOKbpievY0
 tg.FRLBqcJ1bcnbi6MZzPDjyF_BFVE78Pyv9NNQewaWeIqcy5T0SPUBN2J273ELF9eL5gtfXt7mi
 WI247sa2tbL9xFGzACXqcW09pyB5t.fYaQrATk6vgyn0acUg29Vz0tQKCiSVQVBj_bxeO1y5GFGp
 c3oQSRsnx7Sm.anf0vP6mJTZLaZuislUinl0NUn8mn6UrMIBhA55U5lsidJwtPuct1btvo7NdTrw
 Mb4HS.d7rW.jp4tU6WKuzo8nM6H0jauaJfUTSKI2NmPVDc0L.0GTP4fLGxRk8y7bBuwXsqQc6SXe
 PGRUspoSscqE8Vke_NW5i2wVCWIplA6vYMrFWK6Cyo_uuS1QyJoJStfQMkWuVMtcn6TjKPjr4zeT
 loiEFz00TJYGMCY.ctaypXWfIIMeqaJefe8spfor5DX1ei1Zc8QFE9aMNOJfTBGi3YmeCCi6KAWe
 5f6vwxDisbCasSDOxevSRXnS03kARLXNFp_NN692GBpTEmIDjgf9YtEv8KQka85BFebwp_rCSfp_
 zkWJ5LFm2GZhtt_9Gh06arTfCr9lr20O97.vQBQQmClUMrpORWNTaoojUp.0_Bzkc6VWSNSQVMDV
 w
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic310.consmr.mail.ir2.yahoo.com with HTTP; Sun, 3 May 2020 10:13:50 +0000
Received: by smtp419.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID f24c2bd07e74ce742f3e0c2b4b4d8917; 
 Sun, 03 May 2020 10:13:46 +0000 (UTC)
To: linux-uvc-devel@lists.sourceforge.net
Message-ID: <b9cd75a6-2a86-ed7b-ae7e-c22e3d2aefcf@yahoo.de>
Date: Sun, 3 May 2020 12:13:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: de-DE
References: <b9cd75a6-2a86-ed7b-ae7e-c22e3d2aefcf.ref@yahoo.de>
X-Mailer: WebService/1.1.15756 hermes Apache-HttpAsyncClient/4.1.4
 (Java/11.0.6)
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ulrichfuchs[at]yahoo.de)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [77.238.177.30 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [77.238.177.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVBdF-003nGn-G9
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
Content-Type: multipart/mixed; boundary="===============6099082638552840770=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============6099082638552840770==
Content-Type: multipart/alternative;
 boundary="------------C70F7F5C6194B7CE4340D3A4"
Content-Language: de-DE
Content-Length: 4600

This is a multi-part message in MIME format.
--------------C70F7F5C6194B7CE4340D3A4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Hello,

Webcam

UVC 1.00 Device HP Webcam 04ca:707d Lite-On Technology Corp.  in 
notebook hp 14-ck2110ng

is not in the list.

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


Kind regards

Ulrich



--------------C70F7F5C6194B7CE4340D3A4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <p>Hello,</p>
    <p>Webcam </p>
    <p style="margin-bottom: 0cm; line-height: 100%">
      <font style="font-size: 11pt" size="2">UVC 1.00 Device HP Webcam
        04ca:707d Lite-On Technology Corp.  in notebook hp 14-ck2110ng<br>
      </font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2">is not in the list.</font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2">The Webcam is a HD-Webcam, but
        only low-resolution  640x360, 176x144, 320x240, 352x288 and
        640x480 are recognized by uvcvideo and can be used.</font></p>
    <br>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2">DMSG says:</font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2">[    4.575836] uvcvideo: Found
        UVC 1.00 device HP Webcam (04ca:707d)<br>
        [    4.599955] intel_telemetry_core Init<br>
        [    4.607579] uvcvideo 1-7:1.0: Entity type for entity
        Extension 7 was not initialized!<br>
        [    4.607583] uvcvideo 1-7:1.0: Entity type for entity
        Processing 2 was not initialized!<br>
        [    4.607584] uvcvideo 1-7:1.0: Entity type for entity Camera 1
        was not initialized!<br>
        [    4.607586] uvcvideo 1-7:1.0: Entity type for entity
        Extension 4 was not initialized!<br>
        [    4.607669] input: HP Webcam: HP Webcam as
        /devices/pci0000:00/0000:00:15.0/usb1/1-7/1-7:1.0/input/input9<br>
        [    4.607752] usbcore: registered new interface driver uvcvideo<br>
        [    4.607753] USB Video Class driver (1.1.1)<br>
        [    4.636732] Invalid pltconfig, ensure IPC1 device is enabled
        in BIOS<br>
        [    4.638493] rtl8821ce: loading out-of-tree module taints
        kernel.<br>
        [    4.640891] rtl8821ce: module verification failed: signature
        and/or required key missing - tainting kernel</font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2"><br>
      </font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2">Kind regards</font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2">Ulrich</font></p>
    <p style="margin-bottom: 0cm; line-height: 100%"><font
        style="font-size: 11pt" size="2"><br>
      </font></p>
    <p>
      <style type="text/css">
		p { margin-bottom: 0.25cm; line-height: 115%; background: transparent }
		a:visited { color: #800000; so-language: zxx; text-decoration: underline }
		a:link { color: #000080; so-language: zxx; text-decoration: underline }</style></p>
  </body>
</html>

--------------C70F7F5C6194B7CE4340D3A4--


--===============6099082638552840770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6099082638552840770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6099082638552840770==--

