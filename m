Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C09EBF1051
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003Zv-IU
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuQ0-0002xg-Mn
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9FGG4dglC3msTlS8STfdQNYtPuiJ0zY4sPHcmwh6jRs=; b=LgKWhGZrfl01QBvADWvPeEETvg
 yag8EMZLSNHTzWWXPsXrL+DiT6z4ubqALapSPAkoznWtNuwblb7esWBw2NhMhUgzmwncRZPRyxG/y
 9TJtz0sn6gEb1NRd/zyN5P/UMN8/byy7hVz9npqFaYRlE9SQt8Elya+XPZu7jN0Zylss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9FGG4dglC3msTlS8STfdQNYtPuiJ0zY4sPHcmwh6jRs=; b=Mth5mvGcbB8vIMYJ4d5hQdKnme
 0xh7NzUVFU0grdCjQTPWDi2RhNEjogaccq+y1Yi8W/YQ3N1PdyIBvv5XedKHqZcMveRVpIRT5wmSr
 t0C8tTIrb8L/UTGUK9Gb0naelT727uTt1Ypb1zjLZc80kaoJ47h0Vd/2HzDfW/5wyrPI=;
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPz-000vpZ-Kc
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:28 +0000
Received: by mail-lj1-f195.google.com with SMTP id y3so20817778ljj.6
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9FGG4dglC3msTlS8STfdQNYtPuiJ0zY4sPHcmwh6jRs=;
 b=WdasrMEy2PFYWninpY1tX/jKOcaMCjWYJYBCaMOZfeBtWYXn8lAakT9KR4BB+R//vm
 YrWuZu75KeVYC9pUhjtatm2rmLH7LQoCB105DGFkeDs8rhiLiIMJodzCX1waA7b4T1Pj
 TULjFPhRXQAWPjtLRxM1i9q8v4dmgriqj74yjZgxTZ/Tw4pKDaQh6G8QqSJF9W4lCDtr
 63NHJLmpm0GeAUIivQLoALtVFv7y+mUtcO/lKBMyVcAMLoaXCj/RAXkNbjs6FtLEBfE8
 eI4vP7ZBDFgMzCXl0trnqAY12QYf0dFSBGM6gJl9BlerdPi0NslquAWK4sD1gwlc43A+
 3NRA==
X-Gm-Message-State: APjAAAW4DwHmxVLaYC7BfSSQKj3qAcZsBxBFD/B1DR8WOhKcGgyLBkoP
 qCP1zq6x+2LLmoEjWbA4NpKUzr7D
X-Google-Smtp-Source: APXvYqygwxb2D1xl43Cz84w4im/t+p33xSopFYwcx//EojMuwkuMfwbG/Jwrs11Y45whh2Kfm+REnA==
X-Received: by 2002:a05:651c:20f:: with SMTP id
 y15mr6896085ljn.31.1572943340828; 
 Tue, 05 Nov 2019 00:42:20 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id v21sm7793111lfi.74.2019.11.05.00.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPm-0004HI-3J; Tue, 05 Nov 2019 09:42:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:48 +0100
Message-Id: <20191105084152.16322-11-johan@kernel.org>
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
X-Headers-End: 1iRuPz-000vpZ-Kc
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 10/14] USB: legousbtower: drop unnecessary
 packed attributes
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

Drop the packed attributes from the two message structs whose fields
are naturally aligned and do not have any padding.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index c8ed8792b931..a9b08468a302 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -160,7 +160,7 @@ struct tower_reset_reply {
 	__le16 size;		/* little-endian */
 	__u8 err_code;
 	__u8 spare;
-} __attribute__ ((packed));
+};
 
 struct tower_get_version_reply {
 	__le16 size;		/* little-endian */
@@ -169,7 +169,7 @@ struct tower_get_version_reply {
 	__u8 major;
 	__u8 minor;
 	__le16 build_no;		/* little-endian */
-} __attribute__ ((packed));
+};
 
 
 /* table of devices that work with this driver */
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
