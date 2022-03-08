Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 335F44D15A6
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  8 Mar 2022 12:06:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1nRXfM-0000XW-Ro; Tue, 08 Mar 2022 11:06:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <massimo.b@gmx.net>) id 1nRXfL-0000XQ-7k
 for linux-uvc-devel@lists.sourceforge.net; Tue, 08 Mar 2022 11:06:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:
 Content-Type:References:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l1timcGvzmp188S9dt0j3HR3rVzgJ/t5UCfwhLbk0MM=; b=Kt7yRgv1RFnFHoPskVQ7+MfGh6
 1X1NsT8ORKnP5Z3Qcx8MXkJ6OnAF82ypc6BBL2raxc5Tdc7n1ASCqKLkOAwq+li9qtyb0OKN8qMir
 kGlKSM1Ros+4GVi9fJJ8FZ/Q/NwdU3cIzvPRwBAKZhBkv+H43w+0NVN99AMoXZKI+Mk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Date:Content-Type:References:To:
 From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l1timcGvzmp188S9dt0j3HR3rVzgJ/t5UCfwhLbk0MM=; b=l
 A3DhEu847zXniMZNYrNU+DNGOM12S3kbLGLwlSoJCDNnc3vyQq4Q25vMppVXezHljooVSJaZM+TQ1
 8/iabartwBls+Hix6fi1As1k78vP/G2ROE/mZl/pZNydAJE71J0bz6I4Hm6Ejs8PKwF+bURkw8jUz
 Ooa+3qgBE7H4zRJA=;
Received: from mout.gmx.net ([212.227.17.22])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nRXfF-008Srp-4h
 for linux-uvc-devel@lists.sourceforge.net; Tue, 08 Mar 2022 11:06:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646737548;
 bh=l1timcGvzmp188S9dt0j3HR3rVzgJ/t5UCfwhLbk0MM=;
 h=X-UI-Sender-Class:Subject:From:To:References:Date;
 b=EpTXgHyX0JG4I6YAtS89hunn58DJx6+9BD8QycJlkVgwZwBJWGxXtuiKOL0MPEXTo
 XcTLYeEhxyNOFQ9Ob+46gWFJGNSeTJBOwTvnepuJzKjYfGMsJyaSWPaqOz4nnZflkc
 Ou/5OJtrTTuOJNX1nHRszWDSfWUpOTmXGmV/fjl0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mobalindesk.lan.lan ([77.0.34.24]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MEFzx-1nHL3u3nIT-00ADOy; Tue, 08
 Mar 2022 12:05:47 +0100
Message-ID: <5d96629dcd246591fcf2fe1edf34a440f5bd1c5f.camel@gmx.net>
From: "Massimo B." <massimo.b@gmx.net>
To: linux-uvc-devel@lists.sourceforge.net
References: <3f2fae6f28d60c89e718fb21ce70277526170115.camel@gmx.net>
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwAQMAAABtzGvEAAAAA3NCSVQICAjb4U/gAAAABlBMVEX///8AAABVwtN+AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABGUlEQVQYlUWQsUoDQRCGv71LjB7KSSBwwZCTgFhY2EYIHmJnZRMLo5AXUMRCBMHcE6iPoGBlINpoZXGVeQTFKqSxMgYtTBFcZw7EKfZn2Z2Z7//hr2ysZ+5tqFLmWKVaKKs0vWd9TJx2AibmoQcupj6CCZirqTgzA5hmsdtQWe5/xAREX7uJ3MLP9x4lyieNO5mcOxyM8HH79y/4Cdn9R3JDsts/uGO82yOMJf/ah1Y8tfQEIQt7Z7rCawtNiUpHFgYUdgTxgI1NAW6SvxoqWabbw0Bd5jpQibTNBC1F4nIMk2TWhTqIs+fSVpzfCsVR9eaiJf5W6mtWXK7O+vKR4nWkSYSuFbP4No3Ht6dpSN9pSMYmaXI1/usXT0FM3SoTKAAAAAAASUVORK5CYII=
Date: Tue, 08 Mar 2022 12:05:43 +0100
MIME-Version: 1.0
User-Agent: Evolution 3.40.4 
X-Provags-ID: V03:K1:buZZ1zNBnlBsyTHCqGyoMDWg0rIyodOxiHW6aWOCb3gDqoKhedt
 LN7quWH8fRNie9lcSh4l9O/uuQ4kEAixqTDrLbhxMrfZC+ZtTp+FYd3r5sDtHYpCYA+oh7j
 yD2qU0+h+9keD5R8J0xGfWdELo9qVie6ygUWO7ydjM14dZ7z+XK8r90p88jjUbWduzuqAGn
 +Ra5kD81VQ3sAL4SPJb9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wy1Ipm9F8Kw=:vyrK7vkZXWqJGwdFcuVXX5
 q/VNa6m29Qu4Id63Tq0kMiTNzAZPJm6MoPVy2OhtSbuYmFsM8Ow9GAVFWdOOwMDItMmoLR4L5
 G/937tE+lv6IEsqmzgZjKIBFCT8L1BtP3uSfLgVrUBvSrivFjjLpMsDZlHWVSSxNcJVJ7VgKE
 BBgEehcy2iPpZRHQtEdgeo4J4z2eqy3bI1H5NrH4wrU1kGXeNFNrzDpGVlbbVBq70Dt1JS/iR
 AphR567kHcRzAh4inM8PRqScZbLS46YqWPndG340sQwq5BtX3PnG91DjAiuy6cal/ElIGhY+z
 0VnJmK7QjOC7XJQgNBZUpTURyvOiukzTTjUEtCDxhdXMhzVKakmrww96ER679c3SdJyOJZNjZ
 Y9ywxR8lX0VvZ7EXavxTOiK6P3FhJoqY4FLGruiPiBzAxaT2P6eNDUyJb7uzHR+CxYXuh/ZB7
 2GmDXi8zQ0UatmVPe7HM/E6/Gcz8Bfep7HWTgmgn+882tNhB5zSpp6j9+2cVM8mYhWP3IfHaB
 snktVscz4DCxFeLcfXrq+1KFo5ZgLLo4zSvCsspaAnSRlFBAzyIEDe0hnvuM/9SoPctyWsvyB
 bFw2FOIZhLE0J8leAUzFmMakSUfa5FYnI3xzSzTV5u+ThEFiHNTXCXXAaBw8rKdhusQupjPg8
 fJsL0jNnATNSf2RGJStCZKUJtahAiq7U8YzQs/L7tXcRrbgfgFAtsQBvYp4NTIJga0t5OvGzk
 JGgn8Ihm88IC3XR/Th0aAXOeE7b64jZpQvzkbspQgELeSt9Acpp5SY6lxXiXnfoicb/Dx0aP/
 Sp9CAfqXtM2yGMTUpO6697cZQzfzIBK0E4A/lxnYntwZropn1gUNT5pXASaq+YEwIWKe+L0rs
 y/FBGWyFnZj44dwxFdD/XvME33Dr07D/AECg1ojmCdX4VOLCo6GFVowvCNYBq65qUgjfIEVwg
 yf1iX5hgUq/WzUhCQAk+HuxJqcBzt8psSEs3kQqj2Aag8foKdZU4s/n8BesXitgrbrgao6DcW
 YJ+MnhMBo4JZt736z9TPbuAdb1GekSM+Hu88Tw6x2CIPaYPI1H2nXlWs/aqa637Mw6cTs1aaC
 o/bKdwPIrbByzE=
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Please update
 https://www.kernel.org/doc/html/v5.17-rc7/userspace-api/media/drivers/uvcvideo.html
 for the new mail-adress: linux-uvc-devel@lists.sourceforge.net --------
 Forwarded
 Message -------- From: Massimo B. To: Quanta Computer Inc. Astro HD Cam,
 not initializing Date: Tue, 08 Mar 2022 10:59:50 +0100 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [massimo.b[at]gmx.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nRXfF-008Srp-4h
Subject: [linux-uvc-devel] Quanta Computer Inc. Astro HD Cam,
 not initializing
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

UGxlYXNlIHVwZGF0ZQpodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjE3LXJjNy91
c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvdXZjdmlkZW8uaHRtbApmb3IgdGhlIG5ldyBtYWls
LWFkcmVzczoKbGludXgtdXZjLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAoKLS0tLS0tLS0g
Rm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0KRnJvbTogTWFzc2ltbyBCLiA8bWFzc2ltby5iQGdt
eC5uZXQ+ClRvOiBsaW51eC11dmMtZGV2ZWxAbGlzdHMuYmVybGlvcy5kZQpTdWJqZWN0OiBRdWFu
dGEgQ29tcHV0ZXIgSW5jLiBBc3RybyBIRCBDYW0sIG5vdCBpbml0aWFsaXppbmcKRGF0ZTogVHVl
LCAwOCBNYXIgMjAyMiAxMDo1OTo1MCArMDEwMAoKSGVsbG8sCgpJIGhhdmUgYWxyZWFkeSBzZW50
IHRoaXMgbWVzc2FnZSB0byBsaW51eC11dmMtZGV2ZWxAbGlzdHMuYmVybGlvcy5kZcKgd2l0aG91
dApiZWluZyBzdWJjcmliZWQsIGdvdCBubyBub3RpZmljYXRpb24gaWYgdGhhdCB3YXMgcmVjZWl2
ZWQgYW5kIGFyY2hpdmUgZGlkbid0CnJlY2VpdmUgaXQgYWZ0ZXIgc2V2ZXJhbCBkYXlzLgpodHRw
czovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjE3LXJjNy91c2Vyc3BhY2UtYXBpL21lZGlh
L2RyaXZlcnMvdXZjdmlkZW8uaHRtbApkb2VzIG5vdCB0ZWxsIHNvbWV0aGluZyBhYm91dCBzdWJj
cmlwdGlvbiBpcyByZXF1aXJlZCBvciBub3QuCgpBbnl3YXksIHRyeWluZyBhZ2FpbiBiZWluZyBz
dWJzY3JpYmVkIG5vdzoKCgpJIGhhdmUgYSBjb21iaW5lZCBVU0IgQ2FtZXJhIHdpdGggbWljcm9w
aG9uZS4KClNvbWUgd2hpbGUgYWdvIEkgaGFkIHRoZSBjYW1lcmEgd29ya2luZywganVzdCBuZWVk
ZWQgdG8gZGlzYWJsZSB0aGUgbWljcm9waG9uZQpiZWNhdXNlIGlmIGlzc3VlcyB3aXRoIHB1bHNl
YXVkaW8uIE5vdyB3aXRoIDUuMTUuMjMtZ2VudG9vLCBub3RoaW5nIHdvcmtzCmFueW1vcmUgd2l0
aCB0aGF0IGNhbWVyYSwgbm8gdmlkZW8gYW5kIG5vIGF1ZGlvIGlucHV0OgoKaHR0cHM6Ly9mb3J1
bXMuZ2VudG9vLm9yZy92aWV3dG9waWMtcC04NjkzNTMzLmh0bWwKCklzIHRoaXMgdGhlIHJpZ2h0
IHBsYWNlIHRvIGRpc2N1c3MgdGhpcyBoYXJkd2FyZT8KCgpJJ20gdGVzdGluZyB3aXRoIGd1dmN2
aWV3LCBhbmQgaXQgZG9lcyBub3Qgc3RhcnQgYW55bW9yZToKCk1hciAwMiAxMDo0MTo0OSBba2Vy
bmVsXSB1c2IgMy0xMi4yOiBVU0IgZGlzY29ubmVjdCwgZGV2aWNlIG51bWJlciAxMgpNYXIgMDIg
MTA6NDE6NTcgW2tlcm5lbF0gdXNiIDMtMTIuMjogbmV3IGhpZ2gtc3BlZWQgVVNCIGRldmljZSBu
dW1iZXIgMTQgdXNpbmcKeGhjaV9oY2QKTWFyIDAyIDEwOjQxOjU3IFtrZXJuZWxdIHVzYiAzLTEy
LjI6IE5ldyBVU0IgZGV2aWNlIGZvdW5kLCBpZFZlbmRvcj0wNDA4LAppZFByb2R1Y3Q9MjA5MCwg
YmNkRGV2aWNlPTIxLjE3Ck1hciAwMiAxMDo0MTo1NyBba2VybmVsXSB1c2IgMy0xMi4yOiBOZXcg
VVNCIGRldmljZSBzdHJpbmdzOiBNZnI9MSwgUHJvZHVjdD0yLApTZXJpYWxOdW1iZXI9MApNYXIg
MDIgMTA6NDE6NTcgW2tlcm5lbF0gdXNiIDMtMTIuMjogUHJvZHVjdDogQXN0cm8gSEQgQ2FtZXJh
Ck1hciAwMiAxMDo0MTo1NyBba2VybmVsXSB1c2IgMy0xMi4yOiBNYW51ZmFjdHVyZXI6IFFDTQpN
YXIgMDIgMTA6NDE6NTcgW2tlcm5lbF0gdXNiIDMtMTIuMjogRm91bmQgVVZDIDEuMDAgZGV2aWNl
IEFzdHJvIEhEIENhbWVyYQooMDQwODoyMDkwKQpNYXIgMDIgMTA6NDE6NTcgW2tlcm5lbF0gdXNi
IDMtMTIuMjogTm8gc3RyZWFtaW5nIGludGVyZmFjZSBmb3VuZCBmb3IgdGVybWluYWwKOS4KTWFy
IDAyIDEwOjQxOjU3IFtrZXJuZWxdIGlucHV0OiBBc3RybyBIRCBDYW1lcmE6IEFzdHJvIEhEIENh
bWVyIGFzCi9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDoxNC4wL3VzYjMvMy0xMi8zLTEyLjIv
My0xMi4yOjEuMC9pbnB1dC9pbnB1dDIyCk1hciAwMiAxMDo0MjowMiBba2VybmVsXSB1c2IgMy0x
Mi4yOiA0OjE6IGNhbm5vdCBzZXQgZnJlcSA0ODAwMCB0byBlcCAweDg0Ck1hciAwMiAxMDo0Mjow
OCBba2VybmVsXSB1c2IgMy0xMi4yOiAxMDozOiBjYW5ub3QgZ2V0IG1pbi9tYXggdmFsdWVzIGZv
ciBjb250cm9sCjIgKGlkIDEwKQpNYXIgMDIgMTA6NDI6MDggW210cC1wcm9iZV0gY2hlY2tpbmcg
YnVzIDMsIGRldmljZSAxNDoKIi9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MTQuMC91
c2IzLzMtMTIvMy0xMi4yIl8KTWFyIDAyIDEwOjQyOjA4IFttdHAtcHJvYmVdIGJ1czogMywgZGV2
aWNlOiAxNCB3YXMgbm90IGFuIE1UUCBkZXZpY2VfCk1hciAwMiAxMDo0MjowOCBbbXRwLXByb2Jl
XSBjaGVja2luZyBidXMgMywgZGV2aWNlIDE0OgoiL3N5cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAw
MDowMDoxNC4wL3VzYjMvMy0xMi8zLTEyLjIiXwpNYXIgMDIgMTA6NDI6MDggW210cC1wcm9iZV0g
YnVzOiAzLCBkZXZpY2U6IDE0IHdhcyBub3QgYW4gTVRQIGRldmljZV8KTWFyIDAyIDEwOjQyOjEz
IFtrZXJuZWxdIHVzYiAzLTEyLjI6IEZhaWxlZCB0byBxdWVyeSAoR0VUX0RFRikgVVZDIGNvbnRy
b2wgMTMgb24KdW5pdCAxOiAtMTEwIChleHAuIDgpLgpNYXIgMDIgMTA6NDI6MTggW2tlcm5lbF0g
dXNiIDMtMTIuMjogRmFpbGVkIHRvIHF1ZXJ5IChHRVRfREVGKSBVVkMgY29udHJvbCAyIG9uCnVu
aXQgMjogLTExMCAoZXhwLiAyKS4KTWFyIDAyIDEwOjQyOjIzIFtrZXJuZWxdIHVzYiAzLTEyLjI6
IEZhaWxlZCB0byBxdWVyeSAoR0VUX0RFRikgVVZDIGNvbnRyb2wgMTMgb24KdW5pdCAxOiAtMTEw
IChleHAuIDgpLgpNYXIgMDIgMTA6NDI6MjggW2tlcm5lbF0gdXNiIDMtMTIuMjogRmFpbGVkIHRv
IHF1ZXJ5IChHRVRfREVGKSBVVkMgY29udHJvbCAyIG9uCnVuaXQgMjogLTExMCAoZXhwLiAyKS4K
TWFyIDAyIDEwOjQyOjMzIFtrZXJuZWxdIHVzYiAzLTEyLjI6IEZhaWxlZCB0byBxdWVyeSAoR0VU
X0RFRikgVVZDIGNvbnRyb2wgMTEgb24KdW5pdCAxOiAtMTEwIChleHAuIDIpLgpNYXIgMDIgMTA6
NDI6MzggW2tlcm5lbF0gdXNiIDMtMTIuMjogRmFpbGVkIHRvIHF1ZXJ5IChHRVRfREVGKSBVVkMg
Y29udHJvbCAxMyBvbgp1bml0IDE6IC0xMTAgKGV4cC4gOCkuCsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIExhc3Qgb3V0cHV0IHJlcGVhdGVkIHR3aWNlIC0KTWFyIDAyIDEwOjQyOjQ5
IFtrZXJuZWxdIHVzYiAzLTEyLjI6IEZhaWxlZCB0byBxdWVyeSAoR0VUX0RFRikgVVZDIGNvbnRy
b2wgMTEgb24KdW5pdCAxOiAtMTEwIChleHAuIDIpLgpNYXIgMDIgMTA6NDI6NTQgW2tlcm5lbF0g
dXNiIDMtMTIuMjogRmFpbGVkIHRvIHF1ZXJ5IChHRVRfREVGKSBVVkMgY29udHJvbCAxMyBvbgp1
bml0IDE6IC0xMTAgKGV4cC4gOCkuCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIExh
c3Qgb3V0cHV0IHJlcGVhdGVkIHR3aWNlIC0KTWFyIDAyIDEwOjQzOjA0IFtrZXJuZWxdIHVzYiAz
LTEyLjI6IEZhaWxlZCB0byBxdWVyeSAoR0VUX0RFRikgVVZDIGNvbnRyb2wgMTEgb24KdW5pdCAx
OiAtMTEwIChleHAuIDIpLsKgCgpCb290aW5nIHRoZSBtYWNoaW5lIHdpdGggdGhlIGRldmljZSBj
b25uZWN0ZWQgSSBzZWUgbWFueSByZXBlYXRpbmcgbGluZXMgbGlrZQp0aGlzIGluIHRoZSBsb2cg
dW50aWwgdW5wbHVnZ2luZyB0aGUgZGV2aWNlOgoKTWFyIDA4IDEwOjQ0OjU5IFtrZXJuZWxdIHVz
YiAzLTEyLjI6IDQ6MTogdXNiX3NldF9pbnRlcmZhY2UgZmFpbGVkICgtNzEpCk1hciAwOCAxMDo0
NDo1OSBba2VybmVsXSB1c2IgMy0xMi4yOiA0OjA6IHVzYl9zZXRfaW50ZXJmYWNlIGZhaWxlZCAo
LTcxKQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBMYXN0IG91dHB1dCByZXBlYXRl
ZCB0d2ljZSAtCk1hciAwOCAxMDo0NDo1OSBba2VybmVsXSB1c2IgMy0xMi4yOiA0OjE6IHVzYl9z
ZXRfaW50ZXJmYWNlIGZhaWxlZCAoLTcxKQpNYXIgMDggMTA6NDQ6NTkgW2tlcm5lbF0gdXNiIDMt
MTIuMjogNDowOiB1c2Jfc2V0X2ludGVyZmFjZSBmYWlsZWQgKC03MSkKCgpCZXN0IHJlZ2FyZHMs
Ck1hc3NpbW8KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXV2Yy1kZXZlbCBtYWlsaW5nIGxpc3QKTGludXgtdXZjLWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9saW51eC11dmMtZGV2ZWwK
