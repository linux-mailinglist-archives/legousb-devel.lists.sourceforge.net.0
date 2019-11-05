Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA775F1054
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003aG-Nt
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuc9-0007j5-Lg
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:55:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4afoqspkcc5RK9XOk5fmMpLRXrhOEIrMZ5sEh9PN/9Y=; b=ZYYV+pMj3VIcfYj9dhw16rCFqK
 +3od2s3NWBKanLS83F/5CxqeWy4QYI7qUY2v3HXdSJFHpEDA97Lxn/anu8VeRoyu+H5vBIA3uJdyW
 QLWhYo6bMyrYe8sS7VvLAyk8ZieusJVWyK2li0BVkTEM1I+fPElD00YHrcVZi6tFou8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4afoqspkcc5RK9XOk5fmMpLRXrhOEIrMZ5sEh9PN/9Y=; b=JnDKBOSFAJCSyy9cLOfy/ZBmyA
 oeu09qxm8xJCAQiEys99IBYPZBI7brISxffw0yKPJrBACsgH7cog2paEFj3DfuXBQNp2evgtYPLn2
 xNnwi7PBbFmw6znsneQfRmakOao9pMANeo83uLAAXhQ5G5GCBWumP3Psbvod3QI+rh7s=;
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuc8-000fwM-Cf
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:55:01 +0000
Received: by mail-lf1-f65.google.com with SMTP id y127so14468639lfc.0
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:55:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4afoqspkcc5RK9XOk5fmMpLRXrhOEIrMZ5sEh9PN/9Y=;
 b=YHFid/s9h1gQs1tAUKquZEU7M2gmHdy+LGmcw3tcQty9oxNeezQZSpIRjqCvuHu8gR
 9aWrVB++dolTyo3QJAz6SEGyAIIq7rFauGmGmdcKRyN4FpJSga9/DiRQJfK2ztBQ/0oW
 dx09+uIMlHahD2m7pEWDzNQpGcf/vITh1gJyyk/InHBaYqLgyqJOcUe658p3WZJ4iF8E
 9gGeJABuvuho5C5V5aS1FQtWF32UDlH3NpKPlRnh3CA+LPpd2dCvRoQQPhQZ2CMW6xqn
 pR/n03WwUriuZ4uVkADkh56KoheAa2m89U4bB7KMS3tK/0/z0FjTOSj9cWMmiwV+CFeG
 Xy6w==
X-Gm-Message-State: APjAAAUk4h4sbqLZ56Af8aB9FoWUfxrmKZGpKNJ0jd9B08t/WAKGR5+j
 27AwukzV/vFsz6n+mNiZ0TeL0aDs
X-Google-Smtp-Source: APXvYqy5inEdoGPeJOoHkLb9eiBFVdXaJe6OPaBXWVAVFc7Y8Q1DejKXrD6QVsGByN96uWPmc6NrQQ==
X-Received: by 2002:ac2:4989:: with SMTP id f9mr1706265lfl.42.1572944093536;
 Tue, 05 Nov 2019 00:54:53 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id f3sm2342885lfp.0.2019.11.05.00.54.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:54:52 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPm-0004HX-Cr; Tue, 05 Nov 2019 09:42:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:51 +0100
Message-Id: <20191105084152.16322-14-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuc8-000fwM-Cf
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 13/14] USB: legousbtower: drop superfluous
 brackets
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

Drop superfluous brackets around single-line blocks.

Also add missing white space around operators in a for-expression being
modified.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 6f34b3802332..6b7ea80d5876 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -481,12 +481,10 @@ static __poll_t tower_poll(struct file *file, poll_table *wait)
 	poll_wait(file, &dev->write_wait, wait);
 
 	tower_check_for_read_packet(dev);
-	if (dev->read_packet_length > 0) {
+	if (dev->read_packet_length > 0)
 		mask |= EPOLLIN | EPOLLRDNORM;
-	}
-	if (!dev->interrupt_out_busy) {
+	if (!dev->interrupt_out_busy)
 		mask |= EPOLLOUT | EPOLLWRNORM;
-	}
 
 	return mask;
 }
@@ -532,9 +530,8 @@ static ssize_t tower_read(struct file *file, char __user *buffer, size_t count,
 		goto unlock_exit;
 	}
 
-	if (read_timeout) {
+	if (read_timeout)
 		timeout = jiffies + msecs_to_jiffies(read_timeout);
-	}
 
 	/* wait for data */
 	tower_check_for_read_packet(dev);
@@ -544,9 +541,8 @@ static ssize_t tower_read(struct file *file, char __user *buffer, size_t count,
 			goto unlock_exit;
 		}
 		retval = wait_event_interruptible_timeout(dev->read_wait, dev->interrupt_in_done, dev->packet_timeout_jiffies);
-		if (retval < 0) {
+		if (retval < 0)
 			goto unlock_exit;
-		}
 
 		/* reset read timeout during read or write activity */
 		if (read_timeout
@@ -572,9 +568,8 @@ static ssize_t tower_read(struct file *file, char __user *buffer, size_t count,
 	spin_lock_irq(&dev->read_buffer_lock);
 	dev->read_buffer_length -= bytes_to_read;
 	dev->read_packet_length -= bytes_to_read;
-	for (i=0; i<dev->read_buffer_length; i++) {
+	for (i = 0; i < dev->read_buffer_length; i++)
 		dev->read_buffer[i] = dev->read_buffer[i+bytes_to_read];
-	}
 	spin_unlock_irq(&dev->read_buffer_lock);
 
 	retval = bytes_to_read;
@@ -625,9 +620,8 @@ static ssize_t tower_write(struct file *file, const char __user *buffer, size_t
 		}
 		retval = wait_event_interruptible(dev->write_wait,
 						  !dev->interrupt_out_busy);
-		if (retval) {
+		if (retval)
 			goto unlock_exit;
-		}
 	}
 
 	/* write the data into interrupt_out_buffer from userspace */
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
