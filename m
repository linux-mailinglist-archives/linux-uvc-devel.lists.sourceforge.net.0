Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAE91C463E
	for <lists+linux-uvc-devel@lfdr.de>; Mon,  4 May 2020 20:46:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1jVg6C-0003u9-3Y; Mon, 04 May 2020 18:45:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sukram_n@web.de>) id 1jVg6A-0003u1-9h
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 18:45:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:To:From:Message-ID:
 Subject:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6i8hSUMK37RkOD6HHzkglzzk212eCvtvQFy9OMkoWRo=; b=ediZcqV36SPGvbdwy77KuPvRvf
 bLVXEeqeOHlsdM0LQvz3SMdLPzLt2PmGjXrmaDnS8u+LI2UuHRfosa6urcqr/P8Ta4oBkm8lH5YYb
 Wd7P0tDbksCl9knWJZPOw+eBGsoD+u6ufwQcdv2CwEbMar8qavTt7jksByFsW0QdYTL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:To:From:Message-ID:Subject:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6i8hSUMK37RkOD6HHzkglzzk212eCvtvQFy9OMkoWRo=; b=U
 BIgPxZQgW7wCeJ3kCOj4tmAPiAIll6ti1Ma4EEQkJv+mff8wDFS7BUcM0pCR3Zn1UyoevzEY0B9MT
 rwT1fzLWGhBRZQnAmKiURywcH0ahBAOKgaFPsW7pSuDX+JwpCMnk76rlHgglkQOT9JUnXFMMhoFW7
 UOj81g76YY9OCexo=;
Received: from mout.web.de ([217.72.192.78])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVg67-00DBET-S8
 for linux-uvc-devel@lists.sourceforge.net; Mon, 04 May 2020 18:45:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588617940;
 bh=6i8hSUMK37RkOD6HHzkglzzk212eCvtvQFy9OMkoWRo=;
 h=X-UI-Sender-Class:Date:Subject:From:To;
 b=EIbypTGtos4c3jf6pWrP6hvZBrKw2YOPQw2uQLGcdjTMuCNnicbzioCkLd5DSSd43
 3YTDwxgNUKzHv6kdJ51i2SGoSkfAzp6lOGBWQHuNhGO5jV8W8phAFeg6c9li5R46BX
 Nn5Rn70CztmBP/cNSR2zI9owWa+/kIPzWY3yXdoI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.178.23] ([188.110.195.133]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MPYJJ-1jRZUQ3Mif-004j30 for
 <linux-uvc-devel@lists.sourceforge.net>; Mon, 04 May 2020 20:45:40 +0200
Date: Mon, 04 May 2020 20:45:38 +0200
Message-ID: <ra94ra1lg32r8sueo74c55vv.1588617937957@email.android.com>
From: sukram_n@web.de
To: linux-uvc-devel@lists.sourceforge.net
MIME-Version: 1.0
X-Provags-ID: V03:K1:NVi2Ygy4+UjnBBtQIJFQ3Aln3nBqdM3GdtrpgAUAZ2OeT6lGL2J
 KlqW/KktM+EWquDLZ5zbJw4l6Tj3tyYd+91TFyDQ+6SLWsEgZWCC0jlr0oQoXGSgkYJqlBo
 0iGYIbfGFmVPbfwwDkxEkcXHmfojFD4BqKKUbnOD/4js1NiW9e2AuDBVbABXNI5Ka58TAXz
 wLsFF7UIwzgKMLG2nSK1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Vc5fhOE5o7U=:pjbeXO6LDup9uEHGojGkqA
 dEube2UAMLXCuQLf8ECfH4afd+wJKCQ+Ir6ixecDhANCs4udrKOwhOCv9PQERwSCa2OG3bDmO
 CUQAdK8gRdLODqzNhXFucBYRERl+dhjN/758YSKxr9Yfo6bhdqPRhaYNQrm29p00VoomYjUGe
 eibnekygCZmXJ/uKfVdr2Nq+C12DVZkj9TFnR/NYtkNK25RGHaazYQE2Pd46oM/tQAMfqxVzl
 fN9LXeQtLoE9TaL6HsStN9t0CNVDclts7MAGRX2yb+qbasW9Ng3smyPKkphG2yxN5rWScv8Gz
 OG4R6njuzQeEf+2PDqJET4k8WU6+RReaOc7Et5K8u8q/HtANzhHxz707Xnw8JFyb3gVdg+ufS
 j3ir2F10uES77R9+vgj0aIhAIdkuCHRdSDEHqiCzEX/NDbVLjLGvjdxCdL1B20D0JCbIU5i5F
 xHB2I45hIXFDgDCvMXZHaMfF0ETe6gookHT3IEQzJ7Gmt683YMkIRt2uU/bBMICR+1iFgxvg6
 sDiIjYmZrMoYI1rDuLlR+GQEuBygOJNI4tctwk8LF6MTYdxLm4GlkT7CwNEkyLrzJRleuwLnb
 xFJUsGchQd+CCXWW3/vWLivTgJDH5bQLsDpXjItChkBW98KvO6Pk2BGHgyu3BLruogLZ8usWL
 Mk4NZxPEXzbshuJ8I3up0RZ9q+WQ3O81jbvCDxImKt7AyO4x4xV+GxmThgjVWWH+gobfl1TYO
 QOlzEYduyXyzaJJUpnwA75CgChV95KJNSte1o7s01ISpapTrR/Sy6Oh++e9whVXOjjDnwf4x+
 oG3WCludd1hYpe7l83HsQjcG+FvHoDgkrW0f0fmREa8UhAZEDZ4tSs+ZZ3fdRZuiyasWA/AMW
 w8vFDWebmqdzTAl6iurtDuC50yTyddOsjx0tr1Tp3zCczN1exw8RlmRQK5oVRqNyhIK57gDZJ
 dUesmSAE1KLfg2IWuASQJ1otg5mrJbGkRCBov75ejAf9WudouVg2JezVnBjpnRBVL47/3cfVc
 6e9kuqHNR7M7o4y49M7ka37Yy0SO/WqSszuz6UAaWk/1zvxXaNl0ODKlzWRmGzHgQEDCSBe3C
 4SaYmNJi8L9Cmm56RNo9i8jaMYVgjWdYmcZTB/YlSSYShUTaMSKtDK5UusfpzhLggN/NMg/jK
 RzyGaGoeDDS3fI88kVnhPjWvJmhLBMO2E2+RdtBVpHEnvgPhmXlGXsbBoTB219A1fz4i0cigJ
 N8VG7ikjCBjpRSnM4
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (sukram_n[at]web.de)
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jVg67-00DBET-S8
Subject: [linux-uvc-devel] SuYin camera not listed and stopped working
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
Content-Type: multipart/mixed; boundary="===============4249958348866724969=="
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

--===============4249958348866724969==
Content-Type: multipart/alternative; boundary=--_com.ninefolders.hd3.email_161506888375593_alt

----_com.ninefolders.hd3.email_161506888375593_alt
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

RGVhciBMaXN0LAoKdXNiIDEtNTogTmV3IFVTQiBkZXZpY2UgZm91bmQsIGlkVmVuZG9yPTA2NGUs
IGlkUHJvZHVjdD05NzAwLCBiY2REZXZpY2U9IDEuMDEKdXNiIDEtNTogTmV3IFVTQiBkZXZpY2Ug
c3RyaW5nczogTWZyPTMsIFByb2R1Y3Q9MSwgU2VyaWFsTnVtYmVyPTIKdXNiIDEtNTogUHJvZHVj
dDogVVNCMi4wIFVWQyBIRCBXZWJjYW0KdXNiIDEtNTogTWFudWZhY3R1cmVyOiBTdVlpbgp1c2Ig
MS01OiBTZXJpYWxOdW1iZXI6IEhGMTAxOS1UODM4LVNOMDMtUmV2MDEwMQoKVGhpcyBjYW1lcmEg
dXNlZCB0byB3b3JrIGluIG15IEFTVVMgVVgzMDVGIG5vdGVib29rLiBOb3cgaXQgd29ya3Mgb25s
eSBvY2Nhc2lvbmFseSBidXQgSSBzZWUgbm90IHNwZWNpZmljIHBhdHRlcm4gZm9yIHdvcmtpbmcv
bm90IHdvcmtpbmcuIEkgcmVja29uIHRoZSBwcm9ibGVtIGFmdGVyIHNvbWUgdXBkYXRlLiBJIGFt
IHVzaW5nIERlYmlhbiAxMC4zLgoKVGhhbmtzIGEgbG90IGluIGFkdmFuY2UgZm9yIGFueSBoZWxw
IQpCZXN0IHdpc2hlcwpNYXJrdXMKCgo=
----_com.ninefolders.hd3.email_161506888375593_alt
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+PGJvZHk+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaSwgQXJpYWwsIEhlbHZl
dGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOjEyLjBwdDsgbGluZS1oZWlnaHQ6MS4zOyBjb2xv
cjojMDAwMDAwIj48IS0tICMjIyMjIE5JTkUgQk9EWSBCRUdJTiAjIyMjIyAtLT5EZWFyIExpc3Qs
PGJyPjxicj48ZGl2IGRhdGEtZXZvLXBhcmFncmFwaD0iIiBjbGFzcz0iIiBzdHlsZT0id2lkdGg6
IDcxY2g7Ij51c2IgMS01OiBOZXcgVVNCIGRldmljZSBmb3VuZCwgaWRWZW5kb3I9MDY0ZSwgaWRQ
cm9kdWN0PTk3MDAsIGJjZERldmljZT0gMS4wMTxicj48L2Rpdj48ZGl2IGRhdGEtZXZvLXBhcmFn
cmFwaD0iIiBjbGFzcz0iIiBzdHlsZT0id2lkdGg6IDcxY2g7Ij51c2IgMS01OiBOZXcgVVNCIGRl
dmljZSBzdHJpbmdzOiBNZnI9MywgUHJvZHVjdD0xLCBTZXJpYWxOdW1iZXI9Mjxicj48L2Rpdj48
ZGl2IGRhdGEtZXZvLXBhcmFncmFwaD0iIiBjbGFzcz0iIiBzdHlsZT0id2lkdGg6IDcxY2g7Ij51
c2IgMS01OiBQcm9kdWN0OiBVU0IyLjAgVVZDIEhEIFdlYmNhbTxicj48L2Rpdj48ZGl2IGRhdGEt
ZXZvLXBhcmFncmFwaD0iIiBjbGFzcz0iIiBzdHlsZT0id2lkdGg6IDcxY2g7Ij51c2IgMS01OiBN
YW51ZmFjdHVyZXI6IFN1WWluPGJyPjwvZGl2PjxkaXYgZGF0YS1ldm8tcGFyYWdyYXBoPSIiIGNs
YXNzPSIiIHN0eWxlPSJ3aWR0aDogNzFjaDsiPnVzYiAxLTU6IFNlcmlhbE51bWJlcjogSEYxMDE5
LVQ4MzgtU04wMy1SZXYwMTAxPGJyPjwvZGl2PjxkaXYgZGF0YS1ldm8tcGFyYWdyYXBoPSIiIGNs
YXNzPSIiIHN0eWxlPSJ3aWR0aDogNzFjaDsiPjxicj48L2Rpdj48ZGl2IGRhdGEtZXZvLXBhcmFn
cmFwaD0iIiBjbGFzcz0iIiBzdHlsZT0id2lkdGg6IDcxY2g7Ij5UaGlzIGNhbWVyYSB1c2VkIHRv
IHdvcmsgaW4gbXkgQVNVUyBVWDMwNUYgbm90ZWJvb2suIE5vdyBpdCB3b3JrcyBvbmx5IG9jY2Fz
aW9uYWx5IGJ1dCBJIHNlZSBub3Qgc3BlY2lmaWMgcGF0dGVybiBmb3Igd29ya2luZy9ub3Qgd29y
a2luZy4gSSByZWNrb24gdGhlIHByb2JsZW0gYWZ0ZXIgc29tZSB1cGRhdGUuIEkgYW0gdXNpbmcg
RGViaWFuIDEwLjMuPGJyPjwvZGl2PjxkaXYgZGF0YS1ldm8tcGFyYWdyYXBoPSIiIGNsYXNzPSIi
IHN0eWxlPSJ3aWR0aDogNzFjaDsiPjxicj5UaGFua3MgYSBsb3QgaW4gYWR2YW5jZSBmb3IgYW55
IGhlbHAhPGJyPjwvZGl2PjxkaXYgZGF0YS1ldm8tcGFyYWdyYXBoPSIiIGNsYXNzPSIiIHN0eWxl
PSJ3aWR0aDogNzFjaDsiPkJlc3Qgd2lzaGVzPGJyPjwvZGl2PjxkaXYgZGF0YS1ldm8tcGFyYWdy
YXBoPSIiIGNsYXNzPSIiIHN0eWxlPSJ3aWR0aDogNzFjaDsiPk1hcmt1czxzcGFuIGRhdGEtYW5j
aG9yPSIiPjwvc3Bhbj48c3Bhbj48L3NwYW4+PGJyPjwvZGl2Pjxicj48IS0tICMjIyMjIE5JTkUg
Qk9EWSBFTkQgIyMjIyMgLS0+PC9kaXY+PGRpdiBjbGFzcz0icXVvdGVkX291dHB1dF9ib2R5Ij48
ZGl2IGlkPSJxdW90ZWRfaGVhZGVyIiBjbGFzcz0icXVvdGVkX2hlYWRlcl9lZGl0b3IiIHN0eWxl
PSJjbGVhcjpib3RoOyI+IDwvZGl2PjxiciB0eXBlPSdhdHRyaWJ1dGlvbic+PGRpdiBpZD0icXVv
dGVkX2JvZHkiIGNsYXNzPSJxdW90ZWRfYm9keV9lZGl0b3IiPjwvZGl2PjwvZGl2PjwvYm9keT48
L2h0bWw+
----_com.ninefolders.hd3.email_161506888375593_alt--



--===============4249958348866724969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4249958348866724969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel

--===============4249958348866724969==--


