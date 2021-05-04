Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 862D7373045
	for <lists+linux-uvc-devel@lfdr.de>; Tue,  4 May 2021 21:04:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1le0Kl-0007Pm-GG; Tue, 04 May 2021 19:03:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <logans@cottsay.net>) id 1le0Kf-0007Pa-K4
 for linux-uvc-devel@lists.sourceforge.net; Tue, 04 May 2021 19:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jSvkQZ7rCRsqh1TBkHD7WYZQrZTxHhQtzOhJjKEqC7A=; b=Z0G4KoxIVrX+vvD4sdmuBW+yru
 wHuihmAy8HmbzEjDCOYRQbUCunO+qm65RO9ZFK2gMHsgqw3iWPgVxjyxfn2xa/bTElqT1GPPqocVw
 7Oetej2zUtT4HuWU6lB3pmYe0wPVXIpjvRyzxM79JiYM9NsXnUQWDB7o+I3J8HqWDN9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jSvkQZ7rCRsqh1TBkHD7WYZQrZTxHhQtzOhJjKEqC7A=; b=boNe25aNsMZGYM8GNOMzXOHZ3X
 Ob8hunKZRabLLGy+G2Xrz6tztYXVqSiNP1BgzjrlDAbOUJ7lRbBrueK4IYPyO6u49tyRlbGyFVbUV
 d1UasCcx1wN7Udi8+G6qvYvneJPyHWiBmk3HW8PEQ++s/nmMBmxYoVDuxUHCkNg0Iscw=;
Received: from azure2.cottsay.net ([104.41.151.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1le0Ke-0001lV-3e
 for linux-uvc-devel@lists.sourceforge.net; Tue, 04 May 2021 19:03:45 +0000
Received: from cottsay-server.delphi.cottsay.net (unknown [24.19.54.182])
 by azure2.cottsay.net (Postfix) with ESMTPS id BC42619F7FF
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue,  4 May 2021 19:03:31 +0000 (UTC)
Received: from cottsay-lenovo.delphi.cottsay.net (unknown [172.16.8.33])
 by cottsay-server.delphi.cottsay.net (Postfix) with ESMTPSA id CA9A33C007D
 for <linux-uvc-devel@lists.sourceforge.net>;
 Tue,  4 May 2021 12:03:30 -0700 (PDT)
Message-ID: <4e009fb4129acee7228f2c896c01191b6bee7aa9.camel@cottsay.net>
From: Scott K Logan <logans@cottsay.net>
To: linux-uvc-devel@lists.sourceforge.net
Date: Tue, 04 May 2021 12:03:29 -0700
In-Reply-To: <1b124e46eb7524f26bec11e6d3545fda61143802.camel@cottsay.net>
References: <1b124e46eb7524f26bec11e6d3545fda61143802.camel@cottsay.net>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1le0Ke-0001lV-3e
Subject: [linux-uvc-devel] [PATCH 1/1] media: uvcvideo: Add quirk for
 exponential exposure
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

At least some of the Microsoft LifeCam series of webcams exhibit a
behavior which requires a 'quirk' to be handled properly. When
configuring he absolute exposure value of the image, there are only a
handful of values which will result in a consistent change to the image
exposure, while all other values appear to result in a maximum
exposure.
The valid values appear to follow an exponential pattern from the
maximum value (10000) down to the minimum, yielding less than 15
possible values depending on the device's reported minimum.

Signed-off-by: Scott K Logan <logans@cottsay.net>
---
 drivers/media/usb/uvc/uvc_ctrl.c   | 42 ++++++++++++++++++++++++++++++
 drivers/media/usb/uvc/uvc_driver.c | 18 +++++++++++++
 drivers/media/usb/uvc/uvcvideo.h   |  1 +
 3 files changed, 61 insertions(+)

diff --git a/drivers/media/usb/uvc/uvc_ctrl.c
b/drivers/media/usb/uvc/uvc_ctrl.c
index 011e69427b7c..767c4032c35a 100644
--- a/drivers/media/usb/uvc/uvc_ctrl.c
+++ b/drivers/media/usb/uvc/uvc_ctrl.c
@@ -2010,6 +2010,40 @@ int uvc_ctrl_restore_values(struct uvc_device
*dev)
 	return 0;
 }
 
+/* -------------------------------------------------------------------
-------
+ * Quirks
+ */
+
+static s32 uvc_ctrl_get_abs_exposure_exponential(
+	struct uvc_control_mapping *mapping, u8 query, const u8 *data)
+{
+	s32 i;
+	s32 value = uvc_get_le_value(mapping, query, data);
+
+	switch (query) {
+	case UVC_GET_CUR:
+	case UVC_GET_MIN:
+	case UVC_GET_MAX:
+	case UVC_GET_DEF:
+		for (i = 0; i < 14; ++i) {
+			if (10000 >> i <= value)
+				break;
+		}
+		return 14 - i;
+	case UVC_GET_RES:
+		return 1;
+	default:
+		return value;
+	}
+}
+
+static void uvc_ctrl_set_abs_exposure_exponential(
+	struct uvc_control_mapping *mapping, s32 value, u8 *data)
+{
+	value = 10000 >> (14 - value);
+	uvc_set_le_value(mapping, value, data);
+}
+
 /* -------------------------------------------------------------------
-------
  * Control and mapping handling
  */
@@ -2069,6 +2103,14 @@ static int __uvc_ctrl_add_mapping(struct
uvc_device *dev,
 	if (map->set == NULL)
 		map->set = uvc_set_le_value;
 
+	if ((dev->quirks & UVC_QUIRK_EXPONENTIAL_EXPOSURE) &&
+	    ctrl->info.selector ==
UVC_CT_EXPOSURE_TIME_ABSOLUTE_CONTROL) {
+		uvc_trace(UVC_TRACE_CONTROL,
+			"Applying exponential exposure quirk\n");
+		map->get = uvc_ctrl_get_abs_exposure_exponential;
+		map->set = uvc_ctrl_set_abs_exposure_exponential;
+	}
+
 	list_add_tail(&map->list, &ctrl->info.mappings);
 	uvc_trace(UVC_TRACE_CONTROL,
 		"Adding mapping '%s' to control %pUl/%u.\n",
diff --git a/drivers/media/usb/uvc/uvc_driver.c
b/drivers/media/usb/uvc/uvc_driver.c
index ddb9eaa11be7..f823b201395a 100644
--- a/drivers/media/usb/uvc/uvc_driver.c
+++ b/drivers/media/usb/uvc/uvc_driver.c
@@ -2530,6 +2530,24 @@ static const struct usb_device_id uvc_ids[] = {
 	  .bInterfaceSubClass	= 1,
 	  .bInterfaceProtocol	= 0,
 	  .driver_info		=
(kernel_ulong_t)&uvc_quirk_probe_minmax },
+	/* Microsoft Lifecam HD-5000 */
+	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
+				| USB_DEVICE_ID_MATCH_INT_INFO,
+	  .idVendor		= 0x045e,
+	  .idProduct		= 0x076d,
+	  .bInterfaceClass	= USB_CLASS_VIDEO,
+	  .bInterfaceSubClass	= 1,
+	  .bInterfaceProtocol	= 0,
+	  .driver_info		=
UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },
+	/* Microsoft Lifecam Studio */
+	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
+				| USB_DEVICE_ID_MATCH_INT_INFO,
+	  .idVendor		= 0x045e,
+	  .idProduct		= 0x0772,
+	  .bInterfaceClass	= USB_CLASS_VIDEO,
+	  .bInterfaceSubClass	= 1,
+	  .bInterfaceProtocol	= 0,
+	  .driver_info		=
UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },
 	/* Logitech Quickcam Fusion */
 	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
 				| USB_DEVICE_ID_MATCH_INT_INFO,
diff --git a/drivers/media/usb/uvc/uvcvideo.h
b/drivers/media/usb/uvc/uvcvideo.h
index a3dfacf069c4..16e9ecbb2946 100644
--- a/drivers/media/usb/uvc/uvcvideo.h
+++ b/drivers/media/usb/uvc/uvcvideo.h
@@ -203,6 +203,7 @@
 #define UVC_QUIRK_RESTORE_CTRLS_ON_INIT	0x00000400
 #define UVC_QUIRK_FORCE_Y8		0x00000800
 #define UVC_QUIRK_FORCE_BPP		0x00001000
+#define UVC_QUIRK_EXPONENTIAL_EXPOSURE	0x00002000
 
 /* Format flags */
 #define UVC_FMT_FLAG_COMPRESSED		0x00000001
-- 
2.30.2



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
