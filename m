Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BD1F104F
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003Zn-DF
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuQ0-0004sf-Cb
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nHDduFicuwITdkRhyKQcLW+FICHjtimOFQjrgu0AoZ0=; b=fCnIE83gPV/YCoKMVJJxrb5mQF
 U4xN+Sxxv5mHQiNDBkakQfvFIpXrLVBJSYBVVwcw3hyRbbwWy5l96aOLz4CYk8jLa0X1G9Jil9itA
 EjR1fmfs1W2+dQid/qO+es0g8Nz19INStWXFgujntz9zQPOQwetF615plBUbMt3wCUpc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nHDduFicuwITdkRhyKQcLW+FICHjtimOFQjrgu0AoZ0=; b=BghksTbtIhJjeATxsbGKca2gMh
 8yK4p4LeBTVs9PeGmLJ1l498Ire7ADs0YL/tEr3iNGpw7B+unmxIS07T3F1hn1TkzxF8/3wKM7/YE
 ibBOYPkLMitxH6nFMAObCG9TFWZ9doZ2+vXG4vY26Jz9AN6fus/xHu4XMt2c49cAsZUs=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPz-000fVE-77
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:28 +0000
Received: by mail-lj1-f194.google.com with SMTP id y3so20817742ljj.6
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nHDduFicuwITdkRhyKQcLW+FICHjtimOFQjrgu0AoZ0=;
 b=g9qoiI99SycamxF7KZMhR4df0Yb2BrCAKSJexUs2ul7KQEBooe6kkmIbrVnWaqnK2C
 9YEFzCilPDZgTYpcOfij+nEZMiZbJVzkn3/nD2TV6501d1QNm0FpxAh/VXPFfYm0lUhj
 rSPw/iHoWSDd9ILskkgefhZqxx7JxgOJIxPkUoFIk2t/Y1lHrR+gLsRxZm+K1NW2eKY1
 Kbe886To51LTzSmqp726VmoWE6vwtHY6ZQBPvUZw8GO/mbnzsLDvE9KLdKsgmbzWAwkm
 92uwnCMn9XQflMV3M6+GSwORSUl7oErMshOxBR56YopJmWFNA5widApcBI06rvxwbpTV
 sXlA==
X-Gm-Message-State: APjAAAXUuOSo1HuwXJf+DZqHOGLSaJZXpmAUg5+pQk/ZKBXUDUTX7ATS
 fvcyej8iLODzsFOdEgFpdrA=
X-Google-Smtp-Source: APXvYqyFv6t7qRnt3va/sH9X3CisMyp6F4FS9Up1CvI00Sm8nEmKybgptCUYBOPrXJq6yTlQ6Df/+A==
X-Received: by 2002:a2e:2e10:: with SMTP id u16mr18614154lju.51.1572943340390; 
 Tue, 05 Nov 2019 00:42:20 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id g2sm7648633lfc.37.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004Gz-Nq; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:44 +0100
Message-Id: <20191105084152.16322-7-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPz-000fVE-77
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 06/14] USB: legousbtower: drop redundant
 interrupt-in running flag
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

Drop the redundant interrupt-in-running flag, which tried to keep track
of when the interrupt-in URB was in flight. This isn't needed since we
can stop the URB unconditionally in tower_abort_transfers() and the URB
can not be submitted while usb_kill_urb() is running anyway.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 937bce23adf0..33533faa019e 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -206,7 +206,6 @@ struct lego_usb_tower {
 	struct usb_endpoint_descriptor* interrupt_in_endpoint;
 	struct urb*		interrupt_in_urb;
 	int			interrupt_in_interval;
-	int			interrupt_in_running;
 	int			interrupt_in_done;
 
 	char*			interrupt_out_buffer;
@@ -379,7 +378,6 @@ static int tower_open (struct inode *inode, struct file *file)
 			  dev,
 			  dev->interrupt_in_interval);
 
-	dev->interrupt_in_running = 1;
 	dev->interrupt_in_done = 0;
 	mb();
 
@@ -387,7 +385,6 @@ static int tower_open (struct inode *inode, struct file *file)
 	if (retval) {
 		dev_err(&dev->udev->dev,
 			"Couldn't submit interrupt_in_urb %d\n", retval);
-		dev->interrupt_in_running = 0;
 		goto unlock_exit;
 	}
 
@@ -450,11 +447,7 @@ static int tower_release (struct inode *inode, struct file *file)
 static void tower_abort_transfers (struct lego_usb_tower *dev)
 {
 	/* shutdown transfer */
-	if (dev->interrupt_in_running) {
-		dev->interrupt_in_running = 0;
-		mb();
-		usb_kill_urb(dev->interrupt_in_urb);
-	}
+	usb_kill_urb(dev->interrupt_in_urb);
 	if (dev->interrupt_out_busy)
 		usb_kill_urb(dev->interrupt_out_urb);
 }
@@ -731,15 +724,11 @@ static void tower_interrupt_in_callback (struct urb *urb)
 	}
 
 resubmit:
-	/* resubmit if we're still running */
-	if (dev->interrupt_in_running) {
-		retval = usb_submit_urb (dev->interrupt_in_urb, GFP_ATOMIC);
-		if (retval)
-			dev_err(&dev->udev->dev,
-				"%s: usb_submit_urb failed (%d)\n",
-				__func__, retval);
+	retval = usb_submit_urb(dev->interrupt_in_urb, GFP_ATOMIC);
+	if (retval) {
+		dev_err(&dev->udev->dev, "%s: usb_submit_urb failed (%d)\n",
+			__func__, retval);
 	}
-
 exit:
 	dev->interrupt_in_done = 1;
 	wake_up_interruptible (&dev->read_wait);
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
