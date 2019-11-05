Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B81F104A
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003Z8-1r
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPv-0004fg-Lh
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBKLGAEBn3bFo9v8fZaHn5v0bK1Fmv0opJnZ/q6PGn4=; b=iMTies5cKIiOcYUQ5o1srzX50C
 UAYFP4NdtERCHh8ll9GP1KSbGIbWGtKx8sev8OkKuC0T82iCD7u5E+qJIN+T7ZRLm5Pi9UyCEOj/I
 2efanWuKT8imdRwZunczT2f+NMhUpkQHlYB/ij7SCAHHtuCp1zBkYjnWCJIilwPa+iFE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pBKLGAEBn3bFo9v8fZaHn5v0bK1Fmv0opJnZ/q6PGn4=; b=dsLjxyV9kafeHEMQoYcaF5RcwV
 DrnjIX6A6SgVee73cVxkcGgNR7qyCO/oJOjfIRz/xuGodyCkycME59oGDL3QSCb3+MVDucblUrm7z
 K3F6fsC+9Ymt2UwE55dfW2WGIc/QdD94K5Ygxepnelum46F38y1FSig2PhDBikAWqZdc=;
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPt-000fV2-Rt
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:23 +0000
Received: by mail-lf1-f66.google.com with SMTP id y127so14440003lfc.0
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pBKLGAEBn3bFo9v8fZaHn5v0bK1Fmv0opJnZ/q6PGn4=;
 b=UjtuWl2AA2eWicxVeZaFOVpIuGuhejc99FnUDGPS27PnTa/TBJNUr3RZwhzvEhkvRK
 Nz+uDQpr5JHKY6UajgGfw/Qq1x8bMynlIrgGFJLOSIbd7P6Ev+ZAH8BVRLjTIDWKV4KT
 34FVNyDLQOjUhgXmljlHN5wcjW/uS7ElcGzwsq+ucxKMFIMstY13ADcoUowpkfiYcXrH
 1FD3p7LYg/xM3/GMV4u7ZfLgKkTGUBcx7nVWt6gpsd7YDGFyJun8jACZ5Z5UDoynxN/P
 xSvHzTtiHfGjj4JEq/4EwWvuZhANK2OxXnHOSh1BEhByfrkq8JPvZ7cfuGL6kvykX6DS
 zB8Q==
X-Gm-Message-State: APjAAAUvVxjQDzNoRUbsoZ4K4lBj18IyGBtFy5uuc+cwClJwHdxJ8cpn
 r23RqySfFV7Wdtr3d2fkT6c=
X-Google-Smtp-Source: APXvYqxFh5G7YO8VnyTtbKEgNIzRKRsL93c+ZWFpTomh31gQzN9EXmXECNSi0Ln8q/1CMOlEXlY09g==
X-Received: by 2002:a19:2356:: with SMTP id j83mr19632749lfj.103.1572943334993; 
 Tue, 05 Nov 2019 00:42:14 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id f1sm7522068ljk.77.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:14 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004Go-Hq; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:42 +0100
Message-Id: <20191105084152.16322-5-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPt-000fV2-Rt
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 04/14] USB: legousbtower: drop redundant
 open_count check
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

Drop redundant open_count check in release; the open count is used as a
flag and is only set to 0 or 1.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index c880d58e8683..1626a0d2b12b 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -421,13 +421,6 @@ static int tower_release (struct inode *inode, struct file *file)
 
 	mutex_lock(&dev->lock);
 
-	if (dev->open_count != 1) {
-		dev_dbg(&dev->udev->dev, "%s: device not opened exactly once\n",
-			__func__);
-		retval = -ENODEV;
-		goto unlock_exit;
-	}
-
 	if (dev->disconnected) {
 		/* the device was unplugged before the file was released */
 
@@ -444,7 +437,6 @@ static int tower_release (struct inode *inode, struct file *file)
 	tower_abort_transfers (dev);
 	dev->open_count = 0;
 
-unlock_exit:
 	mutex_unlock(&dev->lock);
 exit:
 	return retval;
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
