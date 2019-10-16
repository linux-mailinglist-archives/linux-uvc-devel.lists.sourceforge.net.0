Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B49D93CC
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 16 Oct 2019 16:26:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1iKkG7-0000ac-1F; Wed, 16 Oct 2019 14:26:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <manojtiwary22@gmail.com>) id 1iKkG5-0000aF-PZ
 for linux-uvc-devel@lists.sourceforge.net; Wed, 16 Oct 2019 14:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lsmmlQpQgKCC+8drJztaKP5GDnDsyVIRWfqKcpPzGvI=; b=hOjhmSJbUC9uHXfKWLZT9BjziY
 zsIUTSzZQ4z43/kq5XoUwi+QglWuxP9yBZiZjE1iyh7ycL1iS5VoTlp4KvI0r7emszlQv4EP3wecU
 yzfTSsnVVPRA4aCLXuyNzZQWHN5Zy8KGGbd/XCg2xkTG9+J7W6XFxSDeW+U7jh1BtxV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lsmmlQpQgKCC+8drJztaKP5GDnDsyVIRWfqKcpPzGvI=; b=V
 D3vz8OUxJpz3VCDpfbZwdqpmSJfOXz8hwLPxZ9TTIcDHW+JNfCppQlmsdf6JfOv7/KdfjeGFwlB2e
 +/pmyZ7K9FFlpwW37UlWJ7d0aUXlJ/JudqDyJq/i+AROMyjAixoS2TStutqqgraDIjkANk+SpMSn4
 K0ZRKLbn2pWVTXA4=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iKkG4-00BTZk-GV
 for linux-uvc-devel@lists.sourceforge.net; Wed, 16 Oct 2019 14:26:37 +0000
Received: by mail-lj1-f176.google.com with SMTP id f5so24255472ljg.8
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 16 Oct 2019 07:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=lsmmlQpQgKCC+8drJztaKP5GDnDsyVIRWfqKcpPzGvI=;
 b=e2k1Nwoelqn5rA96wsFs63YgyTf0GzM0J4rkgXtWuZO6HLzGv9ckKPT07HOJ34X77j
 XT0Wqoxhrt6mHj2+MZjqofFXbuuSdD7YdusVJZ0OzGo9KCZF+WfFdjMxPwqPlojbCZGI
 X84B/2ByEgnj9ss8rS3olrfyn1RlnLtjNFhYYu4YZoskqry36L0DSD+fmUqBQUKJ4YSt
 s8LNAEC5m1g4pAWytkEcQvRS+FeTddiDUd0BkmRLFs38Z1BCkk+kT3RMM4kCHd3KfvJA
 uEFDgicgdKQaji0tmhkMbQSEinr5RTFN18+1G0oXLpKoMCF9lgVGFxTDkaqQPT0jjigl
 BChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lsmmlQpQgKCC+8drJztaKP5GDnDsyVIRWfqKcpPzGvI=;
 b=Pf6j3Dwh7p8dEL26d12/8Bd0M5TnJY0iVyzVt7mtEdkv/pYObf33Wrjx8s5c2u45Fd
 eUX3hVVbk1JX/qDMfbT8e5pl0/5ea1DN3VkNPsFd9qJ1dJ83Ka5YQ5VHkCHOqhYUtI64
 YDf8yy5ETEHyHCzmhBuIEUznDiQcQp9vAEaU7XzyKh41BtMpfuRBO65QCLpgnBXF0D4j
 8fnSTrc9olqCoVnAw/PFgbXgvoS6CFL5vPh6JXEv7c/FZB00a47tN4eIfsZN8jlcO75D
 rjk6hDP8Cd9jBa9L0UqGxO1HGXfZCZSJE/9JgSncG/aH/TL/AM5S27E4kPmxn3bGhtbq
 K2RQ==
X-Gm-Message-State: APjAAAV92WtYbOOWtzktOD0dbnbkUQCv1nPM0Mao3zNduwde14E82mnf
 zKtCRHKJNUrZdN4jU6OH2zPIrGL9C2CTCCcHdmOHWdpy
X-Google-Smtp-Source: APXvYqy+6I/1uuf2xZhsMElmQfO3Nqnxc6DR0XDPW1dmZljZ2oAVkQZQtOyh2L52qorkZ7Uw3ASKLba41/BKmu9ny3E=
X-Received: by 2002:a2e:5354:: with SMTP id t20mr23468738ljd.44.1571235988975; 
 Wed, 16 Oct 2019 07:26:28 -0700 (PDT)
MIME-Version: 1.0
From: Manoj Tiwary <manojtiwary22@gmail.com>
Date: Wed, 16 Oct 2019 19:56:18 +0530
Message-ID: <CAM-QqPB7uivKnsntrh8bUGB-xOBh3AjDYT-XX_Tuk3Cg10DJTw@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (manojtiwary22[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.176 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (manojtiwary22[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iKkG4-00BTZk-GV
Subject: [linux-uvc-devel] Failed to query (GET_LEN) UVC control 11 on unit
 3: -71 (exp. 2).
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
Content-Type: multipart/mixed; boundary="===============6323679327870832700=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============6323679327870832700==
Content-Type: multipart/alternative; boundary="000000000000fb341e059507e2c5"

--000000000000fb341e059507e2c5
Content-Type: text/plain; charset="UTF-8"

Hi all,

Can anyone please help me in the understanding the above error -71. what
can be the reason to
it? When I'm trying to query the Xu control of my camera sometimes I am
getting above error.


Thank you.

--000000000000fb341e059507e2c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>Can anyone please help me in th=
e understanding the above error -71. what can be the reason to=C2=A0</div><=
div>it? When I&#39;m trying=C2=A0to query the Xu control of my camera somet=
imes I am getting above error.</div><div><br></div><div><br></div><div>Than=
k you.</div></div>

--000000000000fb341e059507e2c5--


--===============6323679327870832700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6323679327870832700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============6323679327870832700==--

