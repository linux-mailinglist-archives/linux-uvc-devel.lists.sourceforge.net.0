Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF34D45B114
	for <lists+linux-uvc-devel@lfdr.de>; Wed, 24 Nov 2021 02:18:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mpgux-0005xs-Ak; Wed, 24 Nov 2021 01:17:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <logans@cottsay.net>) id 1mpguw-0005xm-A5
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Nov 2021 01:17:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RB7nXO+KUWphDBWj6Y1fU+hvnEYvNqNMauNTavDrtD4=; b=e1r1UzfVZH+qiITTtnOWfAXV4h
 MDvOh8pJ6cHBjIn4DIvzdctsdqF437JU5wYmzVF1F75RXPiPN1tZrof318SUN+9salEEo1mDAavHP
 MQFhFnOygMkWwRBbR8HVRA5UYLFGwPq7fh2WyKMYZ1eGrM8INKr4g5HIyu0/bl4Qj8p4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RB7nXO+KUWphDBWj6Y1fU+hvnEYvNqNMauNTavDrtD4=; b=CAw4yyFCV1pwXaUJAL1U0hjcy1
 e3kAFeIDpfxLXAZzsaOTiRO6s76qguA7mcmkIQmw5FJfReXTxgXWgs/HKJP/4rZ6er/jruTs6Tt29
 N4Bqa00lojDJLzx1kjSoBlNP2kgHBi2DEYDKJqI3SFKhXQ86jw9W4wOxAo/L/34hXthM=;
Received: from azure2.cottsay.net ([104.41.151.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mpgut-0005u7-T5
 for linux-uvc-devel@lists.sourceforge.net; Wed, 24 Nov 2021 01:17:47 +0000
Received: from cottsay-server.delphi.cottsay.net (unknown [24.19.54.182])
 by azure2.cottsay.net (Postfix) with ESMTPS id F0C7019F57B
 for <linux-uvc-devel@lists.sourceforge.net>;
 Wed, 24 Nov 2021 00:59:05 +0000 (UTC)
Received: from cottsay-lenovo.delphi.cottsay.net
 (cottsay-lenovo.delphi.cottsay.net [172.16.8.31])
 by cottsay-server.delphi.cottsay.net (Postfix) with ESMTPSA id 316DD1E0C97;
 Tue, 23 Nov 2021 16:59:04 -0800 (PST)
From: Scott K Logan <logans@cottsay.net>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-uvc-devel@lists.sourceforge.net, linux-media@vger.kernel.org,
 Yuriy M Kaminskiy <yumkam@gmail.com>
Date: Tue, 23 Nov 2021 16:58:34 -0800
Message-Id: <20211124005834.556428-1-logans@cottsay.net>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211003023554.885815-2-logans@cottsay.net>
References: <20211003023554.885815-2-logans@cottsay.net>
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: At least some of the Microsoft LifeCam series of webcams
 exhibit
 a behavior which requires a 'quirk' to be handled properly. When configuring
 the absolute exposure value of the image, there are only a [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [104.41.151.152 listed in list.dnswl.org]
X-Headers-End: 1mpgut-0005u7-T5
Subject: [linux-uvc-devel] [PATCH v2 1/1] media: uvcvideo: Add quirk for
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
Cc: Scott K Logan <logans@cottsay.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

At least some of the Microsoft LifeCam series of webcams exhibit a
behavior which requires a 'quirk' to be handled properly. When
configuring the absolute exposure value of the image, there are only a
handful of values which will result in a consistent change to the image
exposure, while all other values appear to result in a maximum
exposure.
The valid values appear to follow an exponential pattern from the
maximum value (10000) down to the minimum, yielding less than 15
possible values depending on the device's reported minimum.

Signed-off-by: Scott K Logan <logans@cottsay.net>
---
 drivers/media/usb/uvc/uvc_ctrl.c   | 41 ++++++++++++++++++++++++++++++
 drivers/media/usb/uvc/uvc_driver.c | 27 ++++++++++++++++++++
 drivers/media/usb/uvc/uvcvideo.h   |  1 +
 3 files changed, 69 insertions(+)

diff --git a/drivers/media/usb/uvc/uvc_ctrl.c b/drivers/media/usb/uvc/uvc_ctrl.c
index 30bfe9069a1f..2dfc70597858 100644
--- a/drivers/media/usb/uvc/uvc_ctrl.c
+++ b/drivers/media/usb/uvc/uvc_ctrl.c
@@ -2142,6 +2142,40 @@ int uvc_ctrl_restore_values(struct uvc_device *dev)
 	return 0;
 }
 
+/* --------------------------------------------------------------------------
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
 /* --------------------------------------------------------------------------
  * Control and mapping handling
  */
@@ -2210,6 +2244,13 @@ static int __uvc_ctrl_add_mapping(struct uvc_video_chain *chain,
 		}
 	}
 
+	if ((chain->dev->quirks & UVC_QUIRK_EXPONENTIAL_EXPOSURE) &&
+	    ctrl->info.selector == UVC_CT_EXPOSURE_TIME_ABSOLUTE_CONTROL) {
+		uvc_dbg(chain->dev, CONTROL, "Applying exponential exposure quirk\n");
+		map->get = uvc_ctrl_get_abs_exposure_exponential;
+		map->set = uvc_ctrl_set_abs_exposure_exponential;
+	}
+
 	list_add_tail(&map->list, &ctrl->info.mappings);
 	uvc_dbg(chain->dev, CONTROL, "Adding mapping '%s' to control %pUl/%u\n",
 		uvc_map_get_name(map), ctrl->info.entity,
diff --git a/drivers/media/usb/uvc/uvc_driver.c b/drivers/media/usb/uvc/uvc_driver.c
index 7c007426e082..9edf77ee30e6 100644
--- a/drivers/media/usb/uvc/uvc_driver.c
+++ b/drivers/media/usb/uvc/uvc_driver.c
@@ -2718,6 +2718,33 @@ static const struct usb_device_id uvc_ids[] = {
 	  .bInterfaceSubClass	= 1,
 	  .bInterfaceProtocol	= 0,
 	  .driver_info		= (kernel_ulong_t)&uvc_quirk_probe_minmax },
+	/* Microsoft Lifecam HD-5000 */
+	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
+				| USB_DEVICE_ID_MATCH_INT_INFO,
+	  .idVendor		= 0x045e,
+	  .idProduct		= 0x076d,
+	  .bInterfaceClass	= USB_CLASS_VIDEO,
+	  .bInterfaceSubClass	= 1,
+	  .bInterfaceProtocol	= 0,
+	  .driver_info		= UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },
+	/* Microsoft Lifecam Studio */
+	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
+				| USB_DEVICE_ID_MATCH_INT_INFO,
+	  .idVendor		= 0x045e,
+	  .idProduct		= 0x0772,
+	  .bInterfaceClass	= USB_CLASS_VIDEO,
+	  .bInterfaceSubClass	= 1,
+	  .bInterfaceProtocol	= 0,
+	  .driver_info		= UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },
+	/* Microsoft Lifecam HD-3000 */
+	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
+				| USB_DEVICE_ID_MATCH_INT_INFO,
+	  .idVendor		= 0x045e,
+	  .idProduct		= 0x0810,
+	  .bInterfaceClass	= USB_CLASS_VIDEO,
+	  .bInterfaceSubClass	= 1,
+	  .bInterfaceProtocol	= 0,
+	  .driver_info		= UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },
 	/* Logitech Quickcam Fusion */
 	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
 				| USB_DEVICE_ID_MATCH_INT_INFO,
diff --git a/drivers/media/usb/uvc/uvcvideo.h b/drivers/media/usb/uvc/uvcvideo.h
index 2e5366143b81..b6d5ae0b1c90 100644
--- a/drivers/media/usb/uvc/uvcvideo.h
+++ b/drivers/media/usb/uvc/uvcvideo.h
@@ -209,6 +209,7 @@
 #define UVC_QUIRK_RESTORE_CTRLS_ON_INIT	0x00000400
 #define UVC_QUIRK_FORCE_Y8		0x00000800
 #define UVC_QUIRK_FORCE_BPP		0x00001000
+#define UVC_QUIRK_EXPONENTIAL_EXPOSURE	0x00002000
 
 /* Format flags */
 #define UVC_FMT_FLAG_COMPRESSED		0x00000001
-- 
2.33.1



_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
