Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8BDF104E
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003Zb-BG
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPz-0002xZ-CQ
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WVWQPUbkIxY8XxpQYbclm3TtPtetfRjLFXAjnV3l8xA=; b=M9JAW825gyhZvMDwmRSSHtFY3+
 pe5F5sk66CUec3oKtULY+u7PslvpJciulJy11jVxW7gxWmWFbeIaI9RLW9KBZcCefFVEgH5pCKq/O
 TCt8GaUltdRssb4plyswUJ/P5FMWIPOmxDeHqrWVYr4NtNTqyMWNW8fyM0bIttt7afMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WVWQPUbkIxY8XxpQYbclm3TtPtetfRjLFXAjnV3l8xA=; b=XU+Fe6S26GGUSWkHED1BN4jkTR
 Yat+E6HwzWxqg9f8X4/10P4opzlb65CLCcWOv2BT3duuvkAgRpGPCpVxi+zUPt4ljvydigAe8aATg
 ei8AuOKG4oTDvardSbTZA/JFA0VZnbKuvCKm8jST7BPNN3T3AGWoy0EnwBPKLDO+5RD4=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPy-000fVA-7E
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:27 +0000
Received: by mail-lj1-f194.google.com with SMTP id t5so20831507ljk.0
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WVWQPUbkIxY8XxpQYbclm3TtPtetfRjLFXAjnV3l8xA=;
 b=ShrXmBg04NwrxiiPCibKbkBnfcxc3cEc0zoN1AgjA2YDYG9kC97DsWhZFHS5TM44im
 cJS3y9/e5LKnCyYe8v3lhzB5ABvI8zBzOLRG+UT9y/ewqNFrr/BocHz5i/LUsYP3SmAw
 y2BUq+6hJJ+M/BAFekmeIEDxURHID+ZButoClWs3EZWjnfY0VsOd8nBY1iaNlq1OTQbn
 06S4LbcpDcGAjntFdg5A8cQfotS3yTFOXl/gcfWoECNGtlznq6/fU8CkaF10eaqEzbm7
 mzvO2SFqrW9RiBbxP1fyEvEOYvsjMySdTc8FXGr4EwTppiQ0ZnyDOu8+PutZK15gXndy
 nHmA==
X-Gm-Message-State: APjAAAVI5R4mZ+F/Jx8EmXVEnXFzujttJJj1DdnCEZFDMTLe+gqO9m+I
 LMVKjj17GU6CCwwBYMLfWz8U2hme
X-Google-Smtp-Source: APXvYqyXrlV+M4k0NCRvY46xl69aK07r0Xvm9EdOFtFon/LangEVdycZ2ad3+0gkN4kpTgj/30U32A==
X-Received: by 2002:a2e:82cd:: with SMTP id n13mr21640691ljh.116.1572943339331; 
 Tue, 05 Nov 2019 00:42:19 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id 30sm8784026lju.52.2019.11.05.00.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004H8-TQ; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:46 +0100
Message-Id: <20191105084152.16322-9-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -1.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPy-000fVA-7E
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 08/14] USB: legousbtower: remove
 tower_abort_transfers()
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

Drop the tower_abort_transfers() function which is now only called from
release and instead explicitly kill the two URBs.

This incidentally also fixes the outdated comment about freeing memory.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 3e409dfe172c..f85b6ed2fb8b 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -226,7 +226,6 @@ static int tower_release	(struct inode *inode, struct file *file);
 static __poll_t tower_poll	(struct file *file, poll_table *wait);
 static loff_t tower_llseek	(struct file *file, loff_t off, int whence);
 
-static void tower_abort_transfers (struct lego_usb_tower *dev);
 static void tower_check_for_read_packet (struct lego_usb_tower *dev);
 static void tower_interrupt_in_callback (struct urb *urb);
 static void tower_interrupt_out_callback (struct urb *urb);
@@ -431,7 +430,11 @@ static int tower_release (struct inode *inode, struct file *file)
 	if (dev->interrupt_out_busy) {
 		wait_event_interruptible_timeout (dev->write_wait, !dev->interrupt_out_busy, 2 * HZ);
 	}
-	tower_abort_transfers (dev);
+
+	/* shutdown transfers */
+	usb_kill_urb(dev->interrupt_in_urb);
+	usb_kill_urb(dev->interrupt_out_urb);
+
 	dev->open_count = 0;
 
 	mutex_unlock(&dev->lock);
@@ -439,19 +442,6 @@ static int tower_release (struct inode *inode, struct file *file)
 	return retval;
 }
 
-
-/**
- *	tower_abort_transfers
- *      aborts transfers and frees associated data structures
- */
-static void tower_abort_transfers (struct lego_usb_tower *dev)
-{
-	/* shutdown transfer */
-	usb_kill_urb(dev->interrupt_in_urb);
-	usb_kill_urb(dev->interrupt_out_urb);
-}
-
-
 /**
  *	tower_check_for_read_packet
  *
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
