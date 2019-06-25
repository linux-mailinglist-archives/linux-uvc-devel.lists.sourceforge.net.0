Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 003A854F68
	for <lists+linux-uvc-devel@lfdr.de>; Tue, 25 Jun 2019 14:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To
	:MIME-Version:Date:Message-ID:To:References:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1K23hy22uAP2tz+uwxXL1T7erkDhhX/9tA0RfnZzs3w=; b=ZKvrdAbAc8hV3mJLsg8h78RhA
	1Ue+HmyNZebfGFjhdaSHOmpx0m9lCyd6XdbnYdYeamStWsEg18yWu1bwCyahS3ReB/qjtfll3jXMr
	tOeughGoC6GSR+hqMmnOI9k1xfFSV7Hkw2rhX/EVTFxb1SpyOpwZgFIoKX+l+lVP+KMeU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1hfkz0-00038S-7I; Tue, 25 Jun 2019 12:55:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jerinho@yahoo.com>) id 1hfkyy-00038K-JP
 for linux-uvc-devel@lists.sourceforge.net; Tue, 25 Jun 2019 12:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r5wJ3GXaIJwiXXReKUl+GIjgZVUqKNjldQMKm34TTYY=; b=SWAJ7zWIucRpxoCRi40utiu7m
 2Fajx5NaNkFGmcsbyRl1GKNe9cJV66pnhDO891MdnmnxGIyVLZOtLMeY+XsnAFv59+bB7HgPX3nb4
 2KN91Z3IQQLcOJfmEvwxjSYtIu5reXm62ToTDXJppSV2RVex7jGhbF/puBWnwheOIptsQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:To:References:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r5wJ3GXaIJwiXXReKUl+GIjgZVUqKNjldQMKm34TTYY=; b=NLekxznXO5ITPMjP4MqQmbgsOp
 UXWstqMYOo7DzI23FakrIboXzgXkY+jtYkI7C6866OnARDoHl3gyWd759cq29qgKCyzSiVdT8Cyq1
 fU8Cp9K3nXOMbJUyPeCp4zPzu10OIYRckTzdN3+pCQsnh38v80eohSXetQAMfxKMW8DQ=;
Received: from sonic312-19.consmr.mail.sg3.yahoo.com ([106.10.244.209])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfkyz-009Smf-2B
 for linux-uvc-devel@lists.sourceforge.net; Tue, 25 Jun 2019 12:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1561467326; bh=r5wJ3GXaIJwiXXReKUl+GIjgZVUqKNjldQMKm34TTYY=;
 h=Subject:References:To:From:Date:In-Reply-To:From:Subject;
 b=YKi+aq7O+APEeL4IiykwsNXC88Uy10AZ7Mc+lwoE9m+g95bCOug5sLD5eb2VnKeD5VI45MPKa2JITL/hml2QiKeEvf6gO9IvXfC8R0f1Eg4jJHxV/ZOSin7nDVA/MvN0WMZBCzuSs/1xDz+KvzdaeC3uIwrrWzfv8Q7mRMl5xgeKCu48zeThD59EqJmNnq2Da9UiDx7dJsktvP8WxegrTz7cf1hIiatofnFosqDagiUcDWTDNO5JE22ZUWVFksqEE6YWJZhcQH4GNK5Geyvopw/6X3uLy/64AC7L1D4Y6H4iMcndrUkBG2XSLDHuLDnsomS7/DRDCta/6Rb7Ha+qMQ==
X-YMail-OSG: qMNdGokVM1lVA_xnFIpbnyFq3hwrjoLZay4VJTaf75GzrT_VREJPglBvp5ABsOe
 _ovyunLZqkaugs.JuNYDDGVFFznSL3MpFdw5G7lL25l.Tae7PKLiX6kYJ1FU1tey8tazWE5zYmET
 SHBmiLwW62.hcXGHoCUbHp8.LZitu1sv4OFuILwEMPt2PlOTUjz2JPDAJEuf1Ujf68JQirkuDdJ7
 IdTEbns1JY3pW8.jPwT.DmB6B1_N4CFaZqFXSZzhqajq12pJzxyhoC7L78NRnN0aTxT6hLDh6v7f
 3_ZoIrAr1wIX_awcUNcSuaBquRfwpUkEgjPtEgaWtkKRGcvzNxWfNqq2lea.WtuCLC1OEH41TtsY
 cNLSxgIc7ST.p18G6MuOtcnvvStWnLE9wMEqtgqrzWS0RxdYI7hjnYPqQe2j4_MmV4fr3Xw7qfy5
 DvMBNR6wxkmApL1h7O5Sq0BBDpSAwXYBnSGegLO58L6D9oT7PHBgMip6TltaEhJwnuIwVusa_BBG
 WpPJs97xF1rEIjP1JDxPPt8ou3SWY9xqOi_VCdNAyOIBn4gaJ2N9Nfisa2YlukBg5W0QBWrT_Zis
 6jBfSxiCVZnPTPRD_RaHcCmsta8Y3a3N63H4hqlxtYXd5qLsphgn1ZpAVWOwiINNu.s0BDUQmmh4
 uRet6_4YL_zTY35sCySmf6J0rbgeIGFAZLOR8SYPpuPAC237pHtrlUo0y5h.ZewJphTwK7onefDP
 M.QASeBfYZ6EZLH6hI8s5d07cTbMAjSa36Fyhl2WI8PKUyLwiIfPkCED61puHxZe8bIX4tKHs2uh
 KQyQRmuLpywcnjvvqEh8vK2ILxzyInychEQWx8BWJXPrhXqOlyRmtHoklWngG9N7OiM6Os6mrCa3
 JPJMQd5lv9vbgbC5X6TLrEuTsw1NjR8PjjiaqtwtxehBuHHPl8r4UQv4d_glbUXJWbQy7HWtjH4A
 nZ0Qqu4TJZHYI6K6_rlIv2_6Y9vlf29ft6Kk0D1tY3rmsGqiKDLwd2lg5F10WQNiOthlHPVZYARO
 vqVlgLoSmxjaDgm1ktLo73FPdUlRN3L9ChQ6q4GdiCz6.BmdU0YD5DPPpTPE8lRAxU7L8snJ5y0k
 yClWR6MzI5GFJQ1aLhriChAB1Gj413KdtoTmUh6BNSwi3UfX_TX0iehyVhWUYcQSj0iryW3HCYWi
 JbH2x0Q5UbKayoh1.EGKwipLI.4nrzD3IPnXJ1ghBY93nAHv_N57OVz2_sis6U_FY0OXtQALFnZ3
 cViP51gYNWF.o6GgdaVzOJnnbyHaj9Vpceg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.sg3.yahoo.com with HTTP; Tue, 25 Jun 2019 12:55:26 +0000
Received: from 115.133.222.251 (EHLO [192.168.1.100]) ([115.133.222.251])
 by smtp429.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 797c032b550821d3b0a69fea079a0964
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue, 25 Jun 2019 12:55:25 +0000 (UTC)
References: <f55aba87-63ac-8404-62dd-4c8d1bc0ff4f@yahoo.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Forwarded-Message-Id: <f55aba87-63ac-8404-62dd-4c8d1bc0ff4f@yahoo.com>
Message-ID: <73a76e45-b06a-90ad-12b4-78ed67d9992a@yahoo.com>
Date: Tue, 25 Jun 2019 20:55:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f55aba87-63ac-8404-62dd-4c8d1bc0ff4f@yahoo.com>
Content-Language: en-US
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ubuntu.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jerinho[at]yahoo.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [106.10.244.209 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hfkyz-009Smf-2B
Subject: [linux-uvc-devel] Supported device missing. Realtek Integrated
 Webcam. 0bda:5751
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
From: jerinho via Linux-uvc-devel <linux-uvc-devel@lists.sourceforge.net>
Reply-To: jerinho <jerinho@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0413458192392509637=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.
--===============0413458192392509637==
Content-Type: multipart/alternative;
 boundary="------------F580E844F666C7548D0E66DD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F580E844F666C7548D0E66DD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi. I just want to report on a missing device for support by USB Video 
Class driver. Details is as below

Device details

 1. Vendor Id / Device Id : 0bda / 5751
 2. Device name : Realtek Integrated Webcam
    <https://devicehunt.com/view/type/usb/vendor/0BDA/device/5751>
 3. Vendor : Realtek Semiconductor Inc.

My workstation details

 1. Dell Venue 11 Pro 7140
 2. Linux kernel where the last the device was known working : 4.4.0
 3. Linux kernel where the device was known failed : 4.15.0-52-generic
 4. My operating system where the device failed :


          Ubuntu 18.10 (Cosmic Cuttlefish)

    <http://releases.ubuntu.com/18.10/>

I hope your team can please fix the issue and include the device into 
the supported list. Please let me know if your team need any extra 
information regarding this. And thank you for your concern and support 
for this. Looking forward to cooperate.


--------------F580E844F666C7548D0E66DD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi. I just want to report on a missing device for support by USB
    Video Class driver. Details is as below
    <div class="moz-forward-container">
      <p>Device details<br>
      </p>
      <ol>
        <li>Vendor Id / Device Id : 0bda / 5751</li>
        <li>Device name : <a
            href="https://devicehunt.com/view/type/usb/vendor/0BDA/device/5751"
            moz-do-not-send="true">Realtek Integrated Webcam</a></li>
        <li>Vendor : Realtek Semiconductor Inc.<br>
        </li>
      </ol>
      <p>My workstation details<br>
      </p>
      <ol>
        <li>Dell Venue 11 Pro 7140</li>
        <li>Linux kernel where the last the device was known working :
          4.4.0</li>
        <li>Linux kernel where the device was known failed :
          4.15.0-52-generic<br>
        </li>
        <li>My operating system where the device failed : <a
            href="http://releases.ubuntu.com/18.10/" style="color:
            rgb(102, 0, 153); cursor: pointer; text-decoration:
            underline; font-family: arial, sans-serif; font-size: small;
            font-style: normal; font-variant-ligatures: normal;
            font-variant-caps: normal; font-weight: 400; letter-spacing:
            normal; orphans: 2; text-align: left; text-indent: 0px;
            text-transform: none; white-space: normal; widows: 2;
            word-spacing: 0px; -webkit-text-stroke-width: 0px;
            background-color: rgb(255, 255, 255);"
            moz-do-not-send="true">
            <h3 class="LC20lb" style="font-size: 18px; font-weight:
              normal; margin: 0px; padding: 0px; display: inline-block;
              line-height: 1.33; text-decoration: underline;">Ubuntu
              18.10 (Cosmic Cuttlefish)</h3>
          </a></li>
      </ol>
      <p>I hope your team can please fix the issue and include the
        device into the supported list. Please let me know if your team
        need any extra information regarding this. And thank you for
        your concern and support for this. Looking forward to cooperate.
      </p>
    </div>
  </body>
</html>

--------------F580E844F666C7548D0E66DD--


--===============0413458192392509637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0413458192392509637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============0413458192392509637==--

