Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05810F1048
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnI-0003Yt-RK
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPv-0004qm-C9
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wZk4Kgf43x0wsTQIaAQzLC6Ozn9yJOh3cGXpmzunqSg=; b=WE5UGQpMpWJC2vnquFwakSSTzw
 G8VVrpUvk8hNX85XsseyAlQPBjG4eU7SBzbSYPCOfhrpXL2A6oRhfh6JWNsffOndAMGhqBHagVaRo
 73Pa8TX8Ho8ZNrrhmPYFW3sttRhjqNOWjHUF1hseNUiJcpZz/09Y2khm5UNE9uuWLFcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wZk4Kgf43x0wsTQIaAQzLC6Ozn9yJOh3cGXpmzunqSg=; b=JFTiMCXlab0mW6baPzWOPOfvkb
 Ie3yVbBzRP+8agZNuqETlQXhetdacrWkRVJrCuFSr/vtCAFsUl3sqm24CJq10w35UJFZjmI4e2qLk
 esvooX/0ZZxuABLUyUsEiX9M9W9LD3Lscbutt2Hf0u6p5YwCMvGf4RISlJ2hysN3B0JI=;
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPt-000dLc-J5
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:23 +0000
Received: by mail-lj1-f196.google.com with SMTP id g3so14671210ljl.11
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wZk4Kgf43x0wsTQIaAQzLC6Ozn9yJOh3cGXpmzunqSg=;
 b=qqUmrkMQ3GT0TDuMVTQ0xxd5zYEv+HEF/OXHPCXYsztAr7sXaJsbCr5UwmR2/v1PCR
 goRBAB8GIhnIWjSF0OluZOs7U0/DbqVe78AGVBFCDzbW6+ng82vRaxQ5p5UX6JfzrDh9
 moRLpDIXM2S/nvrSyfWRs00A1iz4BMl5DHDrmOKlgBc5ED9hv8qK5e+JtumG5YDg2cWb
 w2BEGSYIGBHFiiRqZxeC80jb205+ncF1MiMUrLha+IsXDCkvnyJyPdXa7QFqgLyDuETD
 ZGEgd4lL9YJYy4jkpbiArzd3KzRN2tik9E1QNBZ8z4V6kvq/bO0ElTY27kbyE/ecaCw6
 KysQ==
X-Gm-Message-State: APjAAAW811jXtRRKgY/fFD7eB1LYY8YBrIn4yMqg+zv7GG7M9ObeUHeI
 +9AjC6x7o4iNxHV+djGwfmQ=
X-Google-Smtp-Source: APXvYqwkgpjTBbUBW9617msa+K0Ov9gVWs9cPXw34P8ijnhPEGxJuW0YhYY8AXrsExjxao46sIYPNw==
X-Received: by 2002:a2e:9612:: with SMTP id v18mr21265785ljh.234.1572943334788; 
 Tue, 05 Nov 2019 00:42:14 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id k6sm11739141lfc.72.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:13 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004GZ-A8; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:39 +0100
Message-Id: <20191105084152.16322-2-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPt-000dLc-J5
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 01/14] USB: legousbtower: drop redundant
 MODULE_LICENSE ifdef
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

The MODULE_LICENSE macro is unconditionally defined in module.h, no need
to ifdef its use.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 23061f1526b4..1be84dc13067 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -962,6 +962,4 @@ module_usb_driver(tower_driver);
 
 MODULE_AUTHOR(DRIVER_AUTHOR);
 MODULE_DESCRIPTION(DRIVER_DESC);
-#ifdef MODULE_LICENSE
 MODULE_LICENSE("GPL");
-#endif
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
