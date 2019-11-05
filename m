Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C6EF104C
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003ZM-6U
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPx-0004rJ-Qz
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+y8cUxoGzN6GT+mRGiWu/EU5YAXI4AEu0RK/ayv8Mzo=; b=OcQx6QUKNYR/pk9qs46yIjKiJz
 24S8pbB106YzvVj5FbANTr2sglPNa/kW9jHAp/8n9Ir3n2CnQx1siUeS08mWkltNGdjPvM2BUM1+t
 6lGvczYhGuNVdGRSqC701azxOWeGwTKpFJqe63g+wFgo1+I1vXLWlqyyr0uGc9Q5ak+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+y8cUxoGzN6GT+mRGiWu/EU5YAXI4AEu0RK/ayv8Mzo=; b=e6iRdIYkWGnD9zco92buf7flPK
 Isb6q/6RB7To5mZI/4mTthxd/fxHcuAcdRRQoEhm7q6TZr0sR9MsG/hlRJ1lZBT77mRJ6AWEDhSH2
 ftboEFJZmBrB2aWI9HEiqtLKqN1t3qwmKlij2c4byl6rzo19l2hNxrhrWdGaDw5TB+98=;
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPw-000fV8-PD
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:25 +0000
Received: by mail-lf1-f65.google.com with SMTP id y127so14440106lfc.0
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+y8cUxoGzN6GT+mRGiWu/EU5YAXI4AEu0RK/ayv8Mzo=;
 b=RU+/MW5fF3i5E5rNKOnSOLoTNbiVFQmw2g4RLyd2hVVIf4Eb27FsATW7zjIGtMev8/
 cc2D7Uj9O/ljufbzBwKdrLwtZaw/4Ox6EH8XRn6pRzu28BPUnKLobkqlql9zOSqfjDs7
 GGOzyGD8m6kARehrdcjOWtI2MEmo8JSnibFSgMyh2TzzB/4wBLXoiNptkFskaAJxl78X
 F7MykK1e1k3IkjpvnoYu5tAf4Qjb5qjfP7UcwwtYjoqCgZGslyUUTfoMAjsW3S6cbhIa
 xT26fwEnkYSEZXqTILzQgRJ3BAZLiNbfLQOLBjlvqY/y/jUHMLWnYeoQBzZp6K1v7q3h
 dRZw==
X-Gm-Message-State: APjAAAVfIq+rpugePrXhskgH4kW/5BvD78gT2M5VtmN3wcVmTpOKpzUK
 rvNoMlfJjziITJU/wb93ur0=
X-Google-Smtp-Source: APXvYqw+/uLoaa+YyTOAY/EWNxbzIl84fDJlAXanBGZYbfmO549ozVBy6Qvfz9xutpXHFpm1SZYyEQ==
X-Received: by 2002:a19:7511:: with SMTP id y17mr20371577lfe.19.1572943338023; 
 Tue, 05 Nov 2019 00:42:18 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id f30sm7766470ljp.66.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004Gt-Kr; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:43 +0100
Message-Id: <20191105084152.16322-6-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPw-000fV8-PD
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 05/14] USB: legousbtower: drop noisy
 disconnect messages
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

User space already sees -ENODEV in case it tries to do I/O post
disconnect, no need to spam the logs with printk messages that don't
even include any device-id information.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 1626a0d2b12b..937bce23adf0 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -540,7 +540,6 @@ static ssize_t tower_read (struct file *file, char __user *buffer, size_t count,
 	/* verify that the device wasn't unplugged */
 	if (dev->disconnected) {
 		retval = -ENODEV;
-		pr_err("No device or device unplugged %d\n", retval);
 		goto unlock_exit;
 	}
 
@@ -626,7 +625,6 @@ static ssize_t tower_write (struct file *file, const char __user *buffer, size_t
 	/* verify that the device wasn't unplugged */
 	if (dev->disconnected) {
 		retval = -ENODEV;
-		pr_err("No device or device unplugged %d\n", retval);
 		goto unlock_exit;
 	}
 
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
