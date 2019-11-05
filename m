Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 577D1F104B
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003ZF-3h
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPw-0004g9-Mp
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Bog8rvlkwSMxmIHFiC0pn9jqybkql/feL3YCFo2leg=; b=Z3CzFEmk/3E8UhpuEK+D3gnH0/
 AfR1yYF/9mY/vfsfkRLJSgZQfqKuMuTX14o6VQx77/WfsXyO7LUtB2Klm5z3EKgmW/NhjhkTdkVJ6
 EeHuv0ix9EH90LsePEzWRMZF7FZHoA+qRI98CJC94scpx949YrC4I753HAEmRGhLY1/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Bog8rvlkwSMxmIHFiC0pn9jqybkql/feL3YCFo2leg=; b=FOofmrE5JW1T5qYCTCli7GFQ5D
 XN5+arqBuUB13NEwEp7T8R2mSasjWgYEz21OEbmObjRZdQHlcyeX5+OZFug3tz1LSH2O7RMde/Y9+
 EAmDyN/Ad9IHnWqIDmDfPOO0f7B85bxRK9XygrSwy2H9OIUt/cHcNs18mVQrM8oBdFBI=;
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPu-000fV5-SR
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:24 +0000
Received: by mail-lf1-f67.google.com with SMTP id 19so9280690lft.13
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6Bog8rvlkwSMxmIHFiC0pn9jqybkql/feL3YCFo2leg=;
 b=fag9NcnKvDFqJ67Rpr7h9depRUS4D9CTtG0ZZHeKbpRJZ+e8mTXdckkTd8NEd/G9oL
 JMCV+cVorxru2EA19ujL/EIZabeXVicYuHZ7MEZuvAjqwVswwj663yCRPBAJjAgPqxmZ
 B7RZuP9TiNJpvHmMEHARgwvxhDiW09NlF8Hy38trhHI1e5HIHfUgRobQTFlc8mPEvZRh
 Q36XHLgUwPs+sqZ0qe1WzPGFOCrytEMb1kv3KOTstJ1+H4ALOFX9OjXZTUAMZZ2JQgv3
 9e28elFjFIEVyG8NOycf1W4z2+YM6JO004nGa+OYdtIrIF7X5QfDKkzoRmR0R9l/amcR
 wB9Q==
X-Gm-Message-State: APjAAAXF4eb+SRGG3S2Lb2k+8J2fGNGahdKqGkX0r1WbOEhC/N4ofMr8
 B/Swva+eDi9+CzbtsrQHsNw=
X-Google-Smtp-Source: APXvYqwI95lW70LQuZ75a8lOv4FAoISt7q+C0cNE78q1xt1MJQZv/cvFEpgbRy/y1tFBg6jrEF8E4w==
X-Received: by 2002:ac2:41d4:: with SMTP id d20mr3209854lfi.24.1572943336133; 
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id 77sm12083227lfj.41.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:13 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004Gj-FM; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:41 +0100
Message-Id: <20191105084152.16322-4-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPu-000fV5-SR
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 03/14] USB: legousbtower: zero driver data
 at allocation
X-BeenThere: legousb-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <legousb-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/legousb-devel>, 
 <mailto:legousb-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=legousb-devel>
List-Post: <mailto:legousb-devel@lists.sourceforge.net>
List-Help: <mailto:legousb-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/legousb-devel>, 
 <mailto:legousb-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: legousb-devel@lists.sourceforge.net,
 Juergen Stuber <starblue@users.sourceforge.net>, linux-usb@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: legousb-devel-bounces@lists.sourceforge.net

Zero the driver data at allocation rather than depend on explicit
zeroing, which easy to miss.

Also drop an unnecessary driver-data pointer initialisation.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 25 ++-----------------------
 1 file changed, 2 insertions(+), 23 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index a3ae843e0a3a..c880d58e8683 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -791,45 +791,24 @@ static int tower_probe (struct usb_interface *interface, const struct usb_device
 {
 	struct device *idev = &interface->dev;
 	struct usb_device *udev = interface_to_usbdev(interface);
-	struct lego_usb_tower *dev = NULL;
+	struct lego_usb_tower *dev;
 	struct tower_get_version_reply *get_version_reply = NULL;
 	int retval = -ENOMEM;
 	int result;
 
 	/* allocate memory for our device state and initialize it */
-
-	dev = kmalloc (sizeof(struct lego_usb_tower), GFP_KERNEL);
-
+	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 	if (!dev)
 		goto exit;
 
 	mutex_init(&dev->lock);
-
 	dev->udev = usb_get_dev(udev);
-	dev->open_count = 0;
-	dev->disconnected = 0;
-
-	dev->read_buffer = NULL;
-	dev->read_buffer_length = 0;
-	dev->read_packet_length = 0;
 	spin_lock_init (&dev->read_buffer_lock);
 	dev->packet_timeout_jiffies = msecs_to_jiffies(packet_timeout);
 	dev->read_last_arrival = jiffies;
-
 	init_waitqueue_head (&dev->read_wait);
 	init_waitqueue_head (&dev->write_wait);
 
-	dev->interrupt_in_buffer = NULL;
-	dev->interrupt_in_endpoint = NULL;
-	dev->interrupt_in_urb = NULL;
-	dev->interrupt_in_running = 0;
-	dev->interrupt_in_done = 0;
-
-	dev->interrupt_out_buffer = NULL;
-	dev->interrupt_out_endpoint = NULL;
-	dev->interrupt_out_urb = NULL;
-	dev->interrupt_out_busy = 0;
-
 	result = usb_find_common_endpoints_reverse(interface->cur_altsetting,
 			NULL, NULL,
 			&dev->interrupt_in_endpoint,
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
