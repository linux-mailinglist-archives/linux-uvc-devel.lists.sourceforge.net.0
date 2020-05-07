Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B671C9B7E
	for <lists+linux-uvc-devel@lfdr.de>; Thu,  7 May 2020 21:58:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jWmev-0003P3-4D; Thu, 07 May 2020 19:58:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <adrien.cordonnier@gmail.com>) id 1jWmeu-0003Ox-15
 for linux-uvc-devel@lists.sourceforge.net; Thu, 07 May 2020 19:58:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K9JHLTCMXc/wPiaLgcJ6rQJo6OvuYRLiiP9UbTku1pA=; b=AJNktWZeVkfOLXJTPfvSUEvIhc
 QCfnN4VQ6okqSPZddEPhIAlmiYv2aKOs43KmK6LRZOKeGJZQZifXhxXzz2WvwjCa4u4srzELeCzN6
 FDHUL/Vxrn1L5vVl5i6geJnro7FwViGFOHWnl12qWSK5Xr7SJ2Z3l6uF+tXjY7zJCcBU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=K9JHLTCMXc/wPiaLgcJ6rQJo6OvuYRLiiP9UbTku1pA=; b=C
 7WmLl9CJgBo/nYz5Y7J0IooWEQ7mjWthSzdJhTlIdcN0gFnkCG22MofcWWu+jct16/7Sk8ukZxZla
 0yIUiYps+lICVrDhCURe14lLzjm4R2MjFUFfANk+LXHU5BlaxgKR7Xtr71Qbe6KhTvFVKbma6vWOJ
 h5BO0kCIkxjNZPHc=;
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jWmes-000ggj-57
 for linux-uvc-devel@lists.sourceforge.net; Thu, 07 May 2020 19:58:15 +0000
Received: by mail-qk1-f180.google.com with SMTP id c64so7493088qkf.12
 for <linux-uvc-devel@lists.sourceforge.net>;
 Thu, 07 May 2020 12:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=K9JHLTCMXc/wPiaLgcJ6rQJo6OvuYRLiiP9UbTku1pA=;
 b=bwWxWwKj4idlkDCmcQ0u0rsntlYEy0GzfHWQryCn+6ijiMHmO+2zPk902guIYNfwit
 lMWSv8t5zMVedZMNkx/eNtp/u3dbZYqG0G4C2g1OQLxOTqE9+yhNG0+NNgw8n4VmEtjF
 bxGL9CDsPAL9O9PO9JvkA3m2awrgxCN+HLobmaugYX2/fu+hGC1NBFD63QkKK6vmX4Rb
 clX1Th+zkTM4+r5hvVlg498lXtIZnzJqTjD2FNB5G6Z6IV9FxZyxHFa3Vu/bbN/8/V0D
 umJk6tmeXKv+H00i+0H5DTTnN6rPj3TX9at5k4+GQbb+1jC3PUWmOBZ0EdRVHbYKSen6
 6EUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=K9JHLTCMXc/wPiaLgcJ6rQJo6OvuYRLiiP9UbTku1pA=;
 b=KEo8wrwVMOXtJt210yz9gx8L4akyJEvKM+Xq9fDPgZCMzFXrax8R1dOhvlyxoto95w
 GCBJbAAMnIzwJenYv6nrYshYT8HJ76pbOHlsfkQiV1ffHvzFZmm3dit+zaa4vhKqGL6i
 McDyMP/bx2LoBekZ+VZcfpxyd6RBu+M04lSVuh/l7rIS0rQveLe8pLvqmBA9UUwsUWpO
 AjZQxNWbJtuTScJ7LsL3qp3WOWGGc+Hq4zcuSNWHKLknzlkpnTjOAZdo91BGZDPyMILI
 UFVIro7vc9pmvM5ai3zl4W6sFVbl4pBoav2qxARvA1o22/vEe0HCXIdR1mMsUvlqxTd7
 JgLA==
X-Gm-Message-State: AGi0PuYZQ1H/rKT9LJfXgjnrvSgkcHsfdgHibcGHJ9Pm/iF7hdxLJWSG
 0Tz55sXaQEKZXM4xbFr3a+hXjDtbwGXjyjc/AMpFRjSIpmU=
X-Google-Smtp-Source: APiQypJrPjLogxq6Bsv7QFQXLG5kt/3Md1RE+TW/V6MMgUG19vdrfSY20MLwKs4lF8TZlBM2ZGj+JbIzgL5Ry3+6XXM=
X-Received: by 2002:a37:e20c:: with SMTP id g12mr15435547qki.56.1588881487624; 
 Thu, 07 May 2020 12:58:07 -0700 (PDT)
MIME-Version: 1.0
From: Adrien Cordonnier <adrien.cordonnier@gmail.com>
Date: Thu, 7 May 2020 22:57:56 +0300
Message-ID: <CAA24Jk3ivmbHa+kU0qqthJY3GXf0T7VMfXC5gB7xztqpzZM0CQ@mail.gmail.com>
To: linux-uvc-devel@lists.sourceforge.net
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (adrien.cordonnier[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.180 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jWmes-000ggj-57
Subject: [linux-uvc-devel] Device reporting an incorrect image format
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

SGVsbG8sCgpJIGhhdmUgYSBVU0IgZmlsbSBzY2FubmVyIDBjNDU6NjM1MyB3aGljaCByZXBvcnRz
IHR3byBjYXB0dXJlIG1vZGVzOgotIDU5MsOXMzkyIEAgMzAgZnBzIGluIChjb3JyZWN0KSBZVVlW
IDQ6MjoyCi0gMTE4NMOXMTU3NiBAIDUgZnBzIGluIChpbmNvcnJlY3QpIFlVWVYgNDoyOjIKQSBy
YXcgZnJhbWUgc2hvd3MgdGhhdCB0aGUgc2Vjb25kIG1vZGUgYWN0dWFsbHkgb3V0cHV0cyBSR0dC
IEJheWVyCmZvcm1hdCAocHJvYmFibHkgVjRMMl9QSVhfRk1UX1NSR0dCOCkuCgpJcyB0aGVyZSBh
IHF1aXJrIHRvIGNoYW5nZSB0aGUgaW1hZ2UgZm9ybWF0IHJlcG9ydGVkIGJ5IHRoZSBkZXZpY2Ug
ZGVzY3JpcHRvcj8KCkhlcmUgaXMgdGhlIGRlc2NyaXB0b3IgZm9yIHRoaXMgZGV2aWNlOgpodHRw
czovL3NvdXJjZWZvcmdlLm5ldC9wL2xpbnV4LXV2Yy9tYWlsbWFuL21lc3NhZ2UvMzI4NTExODYv
CgpDaGVlcnMsCgpBZHJpZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC11dmMtZGV2ZWwgbWFpbGluZyBsaXN0CkxpbnV4LXV2Yy1kZXZlbEBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vbGludXgtdXZjLWRldmVsCg==
