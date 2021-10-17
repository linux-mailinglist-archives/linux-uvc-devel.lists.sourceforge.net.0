Return-Path: <linux-uvc-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-uvc-devel@lfdr.de
Delivered-To: lists+linux-uvc-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16522430A09
	for <lists+linux-uvc-devel@lfdr.de>; Sun, 17 Oct 2021 17:28:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-uvc-devel-bounces@lists.sourceforge.net>)
	id 1mc84h-0007Zt-AP; Sun, 17 Oct 2021 15:27:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <yumkam@gmail.com>) id 1mc84g-0007Zl-C5
 for linux-uvc-devel@lists.sourceforge.net; Sun, 17 Oct 2021 15:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4iOXAxtnBdxbtfsJPAKFyIDN8OvVdv96f8g6hJyajEI=; b=cGmtMxry3dWiimeULT0U65PPwJ
 7oIsbvXj6J5tVFg+cXUpUW7oGM4zC5dBf/Raaye+zwR5gmPloRJDeAeU/XHhuxRF04a1wKCGsNNgw
 LnRxxtp6CkBpD98NzsTDw/fMlLI83gMeaCEu94k5Jj8IOaDjp+M4MePF5uQGRZZMUosA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4iOXAxtnBdxbtfsJPAKFyIDN8OvVdv96f8g6hJyajEI=; b=lmcg8YbCvm0zls84nixNv0Clp9
 KUZTWzBmDcMKqwOwjU539cAjcbsgV1/66NSScjUSRZJhucqtchdelK6ftQQjx1qiGjsMzIW+OQuyg
 AX0Yd8LfYZyNn9dqDyd5ESw4XwFw9g/qif+vH5hGHAhC4j2ZijubHwgIs/wAxH8aG1lc=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mc84e-002rsu-Ln
 for linux-uvc-devel@lists.sourceforge.net; Sun, 17 Oct 2021 15:27:46 +0000
Received: by mail-lf1-f45.google.com with SMTP id g36so44832828lfv.3
 for <linux-uvc-devel@lists.sourceforge.net>;
 Sun, 17 Oct 2021 08:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4iOXAxtnBdxbtfsJPAKFyIDN8OvVdv96f8g6hJyajEI=;
 b=piSxSl/VZ6Z92btBz20q79WxnckIKoANm1BVgHCB9GQ4JkbaI0Lou8NBNC4456ZQYH
 vTn6uxQcJs4NfETziSp+24THlHF53jjp6EtNWaHisnRn+jSXfMCKVpBDff7gn0ok5T7x
 NhDDVxO3Vm/pwHt0dOy2vWuhhTWsRyzHPIN2vjI5MkzA5AhFpLSeBQkAIaV2kAsLQOMe
 heNWg/vz4XNYJCs8q2OfqE5u9+C34Aom8Is5rjhr1puJroi12VCNHUO+5kv8NkGSTcVC
 bqftjWnStZxrBa+uRwrNa5xowTCDnaKnI3LQESQAtg2nrJbk3z9bmD2hLRHTJcqpzbAD
 kWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4iOXAxtnBdxbtfsJPAKFyIDN8OvVdv96f8g6hJyajEI=;
 b=CcnQbvzBHynnbpsul4WTJuD9r5hyHfwQmHpXoCjKCk/LzXbqm5P2qlBhBI19M0HKDo
 1NIef/ryQ7woS+0sHFhQBtfWvK7RJgNQ5vCXtRHb50EiwaSzM2OQu9cAej0sU/428i7t
 Eju3/eE9/1NrKfYEhXxqF5LuKoRj1ILV51NSNoXpI8dybx1Z78OpafuAnv05IJ5zDbad
 oH60Bcks4dxVS+fvlXZwYBdBtzfHoqMwKK6hvcAqH3wyPfRUcG0nTdgDah5m//Qq2FqZ
 VuWuqGYNZAhs4t/s0d7yvSD65KhBkB6NGC5Twxgf41R1lsu/7P3hMeNLK0PDauXBNYIF
 9b6w==
X-Gm-Message-State: AOAM532qUDf34+C251FLq8SO52uWuep53/XxgWLCw1xBNZjjryTWRy3s
 uaAHb+SHvIQeD6ZN9gqjtf8=
X-Google-Smtp-Source: ABdhPJydzma5Ye9hrF/UTugrBnmwxKYpnN0hTyPnkuRcpl9lvcNEeCrNfH1118HVyy3r6AioeTv7GQ==
X-Received: by 2002:a05:6512:3d88:: with SMTP id
 k8mr24337774lfv.137.1634484458115; 
 Sun, 17 Oct 2021 08:27:38 -0700 (PDT)
Received: from ?IPv6:2a00:1370:8125:c9ee:24d8:26d5:4ca6:4b98?
 ([2a00:1370:8125:c9ee:24d8:26d5:4ca6:4b98])
 by smtp.googlemail.com with ESMTPSA id d17sm1130835lfg.190.2021.10.17.08.27.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 Oct 2021 08:27:37 -0700 (PDT)
From: "Yuriy M. Kaminskiy" <yumkam@gmail.com>
To: Scott K Logan <logans@cottsay.net>
References: <20211003023554.885815-1-logans@cottsay.net>
 <20211003023554.885815-2-logans@cottsay.net>
Message-ID: <04052599-3fd8-1a36-d0b9-f82fd16cce26@gmail.com>
Date: Sun, 17 Oct 2021 15:27:36 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0
MIME-Version: 1.0
In-Reply-To: <20211003023554.885815-2-logans@cottsay.net>
Content-Language: en-US
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/03/21 02:37 , Scott K Logan wrote: > At least some of
 the Microsoft LifeCam series of webcams exhibit a > behavior which requires
 a 'quirk' to be handled properly. When > configuring the absolut [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yumkam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mc84e-002rsu-Ln
Subject: Re: [linux-uvc-devel] [PATCH 1/1] media: uvcvideo: Add quirk for
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
Cc: subscribers-only <linux-uvc-devel@lists.sourceforge.net>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-uvc-devel-bounces@lists.sourceforge.net

On 10/03/21 02:37 , Scott K Logan wrote:
> At least some of the Microsoft LifeCam series of webcams exhibit a
> behavior which requires a 'quirk' to be handled properly. When
> configuring the absolute exposure value of the image, there are only a
> handful of values which will result in a consistent change to the image
> exposure, while all other values appear to result in a maximum
> exposure.
> The valid values appear to follow an exponential pattern from the
> maximum value (10000) down to the minimum, yielding less than 15
> possible values depending on the device's reported minimum.

FTR, I have not tested patch (yet), but I checked

  idVendor           0x045e Microsoft Corp.
  idProduct          0x0810 LifeCam HD-3000
  bcdDevice            1.08
  iManufacturer           1 
  iProduct                2 
  iSerial                 0 

and it exhibit same behavior (only (1e4>>i) works, other values
interpreted as max), so you may want to add chunk below

> Signed-off-by: Scott K Logan <logans@cottsay.net>
> ---
>  drivers/media/usb/uvc/uvc_ctrl.c   | 41 ++++++++++++++++++++++++++++++
>  drivers/media/usb/uvc/uvc_driver.c | 18 +++++++++++++
>  drivers/media/usb/uvc/uvcvideo.h   |  1 +
>  3 files changed, 60 insertions(+)
>
> diff --git a/drivers/media/usb/uvc/uvc_ctrl.c b/drivers/media/usb/uvc/uvc_ctrl.c
> index 30bfe9069a1f..2dfc70597858 100644
> --- a/drivers/media/usb/uvc/uvc_ctrl.c
> +++ b/drivers/media/usb/uvc/uvc_ctrl.c
> @@ -2142,6 +2142,40 @@ int uvc_ctrl_restore_values(struct uvc_device *dev)
>  	return 0;
>  }
>  
> +/* --------------------------------------------------------------------------
> + * Quirks
> + */
> +
> +static s32 uvc_ctrl_get_abs_exposure_exponential(
> +	struct uvc_control_mapping *mapping, u8 query, const u8 *data)
> +{
> +	s32 i;
> +	s32 value = uvc_get_le_value(mapping, query, data);
> +
> +	switch (query) {
> +	case UVC_GET_CUR:
> +	case UVC_GET_MIN:
> +	case UVC_GET_MAX:
> +	case UVC_GET_DEF:
> +		for (i = 0; i < 14; ++i) {
> +			if (10000 >> i <= value)
> +				break;
> +		}
> +		return 14 - i;
> +	case UVC_GET_RES:
> +		return 1;
> +	default:
> +		return value;
> +	}
> +}
> +
> +static void uvc_ctrl_set_abs_exposure_exponential(
> +	struct uvc_control_mapping *mapping, s32 value, u8 *data)
> +{
> +	value = 10000 >> (14 - value);
> +	uvc_set_le_value(mapping, value, data);
> +}
> +
>  /* --------------------------------------------------------------------------
>   * Control and mapping handling
>   */
> @@ -2210,6 +2244,13 @@ static int __uvc_ctrl_add_mapping(struct uvc_video_chain *chain,
>  		}
>  	}
>  
> +	if ((chain->dev->quirks & UVC_QUIRK_EXPONENTIAL_EXPOSURE) &&
> +	    ctrl->info.selector == UVC_CT_EXPOSURE_TIME_ABSOLUTE_CONTROL) {
> +		uvc_dbg(chain->dev, CONTROL, "Applying exponential exposure quirk\n");
> +		map->get = uvc_ctrl_get_abs_exposure_exponential;
> +		map->set = uvc_ctrl_set_abs_exposure_exponential;
> +	}
> +
>  	list_add_tail(&map->list, &ctrl->info.mappings);
>  	uvc_dbg(chain->dev, CONTROL, "Adding mapping '%s' to control %pUl/%u\n",
>  		uvc_map_get_name(map), ctrl->info.entity,
> diff --git a/drivers/media/usb/uvc/uvc_driver.c b/drivers/media/usb/uvc/uvc_driver.c
> index 7c007426e082..fa34802dfb33 100644
> --- a/drivers/media/usb/uvc/uvc_driver.c
> +++ b/drivers/media/usb/uvc/uvc_driver.c
> @@ -2718,6 +2718,24 @@ static const struct usb_device_id uvc_ids[] = {
>  	  .bInterfaceSubClass	= 1,
>  	  .bInterfaceProtocol	= 0,
>  	  .driver_info		= (kernel_ulong_t)&uvc_quirk_probe_minmax },
> +	/* Microsoft Lifecam HD-5000 */
> +	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
> +				| USB_DEVICE_ID_MATCH_INT_INFO,
> +	  .idVendor		= 0x045e,
> +	  .idProduct		= 0x076d,
> +	  .bInterfaceClass	= USB_CLASS_VIDEO,
> +	  .bInterfaceSubClass	= 1,
> +	  .bInterfaceProtocol	= 0,
> +	  .driver_info		= UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },

+	/* Microsoft Lifecam HD-3000 */
+	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
+				| USB_DEVICE_ID_MATCH_INT_INFO,
+	  .idVendor		= 0x045e,
+	  .idProduct		= 0x0810,
+	  .bInterfaceClass	= USB_CLASS_VIDEO,
+	  .bInterfaceSubClass	= 1,
+	  .bInterfaceProtocol	= 0,
+	  .driver_info		= UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },

> +	/* Microsoft Lifecam Studio */
> +	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
> +				| USB_DEVICE_ID_MATCH_INT_INFO,
> +	  .idVendor		= 0x045e,
> +	  .idProduct		= 0x0772,
> +	  .bInterfaceClass	= USB_CLASS_VIDEO,
> +	  .bInterfaceSubClass	= 1,
> +	  .bInterfaceProtocol	= 0,
> +	  .driver_info		= UVC_INFO_QUIRK(UVC_QUIRK_EXPONENTIAL_EXPOSURE) },
>  	/* Logitech Quickcam Fusion */
>  	{ .match_flags		= USB_DEVICE_ID_MATCH_DEVICE
>  				| USB_DEVICE_ID_MATCH_INT_INFO,
> diff --git a/drivers/media/usb/uvc/uvcvideo.h b/drivers/media/usb/uvc/uvcvideo.h
> index 2e5366143b81..b6d5ae0b1c90 100644
> --- a/drivers/media/usb/uvc/uvcvideo.h
> +++ b/drivers/media/usb/uvc/uvcvideo.h
> @@ -209,6 +209,7 @@
>  #define UVC_QUIRK_RESTORE_CTRLS_ON_INIT	0x00000400
>  #define UVC_QUIRK_FORCE_Y8		0x00000800
>  #define UVC_QUIRK_FORCE_BPP		0x00001000
> +#define UVC_QUIRK_EXPONENTIAL_EXPOSURE	0x00002000
>  
>  /* Format flags */
>  #define UVC_FMT_FLAG_COMPRESSED		0x00000001
> -- 
>
> 2.31.1


_______________________________________________
Linux-uvc-devel mailing list
Linux-uvc-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-uvc-devel
