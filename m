Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFAEF1053
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003aA-MP
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuQ4-0004tV-O9
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ERFUKff5h8q5nbebLz28a5tfExWrZYctDruZlj5SbFM=; b=b2NJkqO+mvRx3opivY3Ui85Drv
 JZtelA/oF666JGJTsMWYlzACH5VFz28aIImkaTGfe2T4hq3S6GD+kSJVyqIdvKaVQAvbB6sEmSalF
 5k6IOWdXTGD9sKBBizV4jU60TeZvVGk/rjO0FwNWUVmkHlJ+g3KVDmHWQGh9Ytr6qv84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ERFUKff5h8q5nbebLz28a5tfExWrZYctDruZlj5SbFM=; b=JYiaMgG7xjnIi/+oyp5BB7/d54
 SyWk1X2gCKPebbezasQuKkVYCuyUoR4Jyf2Cpx7Cq7fEucCj0T8fLJ5NYeHBskG2VqfbIaeQP0a/t
 6zJH/a8db6FXpIrSdkinVjsL+HXk6VndQBS+T64hZq4I6XNcJ7EDy/npNNMIk1PjrXN0=;
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuQ0-000vpg-75
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:32 +0000
Received: by mail-lj1-f195.google.com with SMTP id y23so9888025ljh.10
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ERFUKff5h8q5nbebLz28a5tfExWrZYctDruZlj5SbFM=;
 b=JUq1isnc+N+Jzv+kQtz5Wz6cwN1FjxrWrO/5n77s0Zb4MfUogb49oNknDFuBOW5Gej
 QG0h1AJW0B7ARdb0vCiWLXijncDdyVc53lIui7Oi21I536st+mp5ImXg7jtBz4B5JLDl
 eKMCqpVWitzbrpA4yp1KQYep0niPf5hLr4QbbBiWJF6OhPkWFaQgKOrllvBZcsQY1H18
 ivOYBuaPGNR9umJas2rW7+SrSnEsPeJVMRJ3WQLQ9W3a3gPZRfQnWkytgHYYI/7JTnBx
 Gocw7RX20f/bctmPAxW56wpYs4nnI/2jXGaGKXQO96RguShzLRrMjIcvmBNq9esaSbXL
 XG1w==
X-Gm-Message-State: APjAAAV+NDddc9yW8Yekm+Tu4FvWJfaS73RJEIL9514F/8y2o0kVJKdM
 8yoBDv/prOwbU2P4+kGt1Ez6KMXp
X-Google-Smtp-Source: APXvYqxNwQSNgQ+zs+1jA+5HRNQNAJ3dSHGNHq5cYi7X7agKKs139a3yRrZj7QSNnSxnYwYIZ8MTEg==
X-Received: by 2002:a2e:8694:: with SMTP id l20mr22053739lji.64.1572943341401; 
 Tue, 05 Nov 2019 00:42:21 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id v6sm13894861ljd.15.2019.11.05.00.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPm-0004HD-0M; Tue, 05 Nov 2019 09:42:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:47 +0100
Message-Id: <20191105084152.16322-10-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuQ0-000vpg-75
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 09/14] USB: legousbtower: clean up pointer
 declarations in driver data
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

Clean up the pointer declarations in the driver data, whose style wasn't
even consistent with the rest of the driver.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index f85b6ed2fb8b..c8ed8792b931 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -186,13 +186,13 @@ MODULE_DEVICE_TABLE (usb, tower_table);
 /* Structure to hold all of our device specific stuff */
 struct lego_usb_tower {
 	struct mutex		lock;		/* locks this structure */
-	struct usb_device*	udev;		/* save off the usb device pointer */
+	struct usb_device	*udev;		/* save off the usb device pointer */
 	unsigned char		minor;		/* the starting minor number for this device */
 
 	int			open_count;	/* number of times this port has been opened */
 	unsigned long		disconnected:1;
 
-	char*			read_buffer;
+	char			*read_buffer;
 	size_t			read_buffer_length; /* this much came in */
 	size_t			read_packet_length; /* this much will be returned on read */
 	spinlock_t		read_buffer_lock;
@@ -202,15 +202,15 @@ struct lego_usb_tower {
 	wait_queue_head_t	read_wait;
 	wait_queue_head_t	write_wait;
 
-	char*			interrupt_in_buffer;
-	struct usb_endpoint_descriptor* interrupt_in_endpoint;
-	struct urb*		interrupt_in_urb;
+	char			*interrupt_in_buffer;
+	struct usb_endpoint_descriptor *interrupt_in_endpoint;
+	struct urb		*interrupt_in_urb;
 	int			interrupt_in_interval;
 	int			interrupt_in_done;
 
-	char*			interrupt_out_buffer;
-	struct usb_endpoint_descriptor* interrupt_out_endpoint;
-	struct urb*		interrupt_out_urb;
+	char			*interrupt_out_buffer;
+	struct usb_endpoint_descriptor *interrupt_out_endpoint;
+	struct urb		*interrupt_out_urb;
 	int			interrupt_out_interval;
 	int			interrupt_out_busy;
 
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
