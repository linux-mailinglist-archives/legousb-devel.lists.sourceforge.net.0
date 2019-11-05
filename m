Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F715F1049
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnI-0003Z0-Sx
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPv-0002xB-I3
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tknfyCUeU7j5xp3rtcyYp9kRvyPf5+IPfN/u9AabkZo=; b=OlCzPVVutlFsBLQTwamPR0zmZu
 jrufXcbq0CeMx9OvwX0CJ4dMTXC2gs/cFWYU+oWc0dMLsFuyrvMafky8nENzazhU9RzC/M9lDjOoi
 OUWVFn1o0xrCam2lQy3sx4XD2U7M2peZhtnZbrVMOFN0ODHf2WoYFtYeLAnqaU2oWyXI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tknfyCUeU7j5xp3rtcyYp9kRvyPf5+IPfN/u9AabkZo=; b=XPuox8LxOmQH1loYWXaUhKlSJr
 dEytfHqVGnag+2D8oQIqa2KjPSiPZ46MOhtWl0aBQCIJcgso3PcDcjwi1/2z3uBT23/Eb5YXWivpY
 5YVTYma8uy+KZaROJqufpr5BgO70ba+s0h6Eh3UUJe1/kLY++hlBH65jlgz2rHmaPils=;
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPu-000vpM-DM
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:23 +0000
Received: by mail-lf1-f65.google.com with SMTP id j5so14430430lfh.10
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tknfyCUeU7j5xp3rtcyYp9kRvyPf5+IPfN/u9AabkZo=;
 b=NlmfkCSgQav7AOIjDkDlaH3mEHhC7v+1RjzCA8RvNWSZBHMiLTJepgdl1uZCjR7zIu
 CtzMkWrcw1cxdqpRkEfNxWtHRGQ0QMNa1OSxwonEmicGWdoknUlRNdq2DibBnp4MU9oF
 WKPA8VuJKCbg5u8XRM3szzIlIBZuNYL8qmreibN0LtI/p3oquJfZ9bcT05pfk+64FPEp
 n/NFqjxKPr+Q8pFwKJfAzdRr69nmvvO64cv0ayC1DUNZ76DfSr/xtuWfBVzFn/3SUQlE
 XLTSSpYQnMgr3Oz+F/2kKUWG+He1ynRw7qLUFEk6TLYEzTjyDDubaZ1gCzKxaAM/b+6p
 DquQ==
X-Gm-Message-State: APjAAAW+FKOtnfpue0lOZv2op5jF5y3L5pM1wdGAhlomzqXqG0PgkZRp
 G/efJyjgGfA5on4SsEb6W7g=
X-Google-Smtp-Source: APXvYqzDfuYpWclhM02n8v/BgK/e1l6Tdyl4yGmktuzWSbocDiI4S4imIU8MTWh1rtBz0K0u4tkDKw==
X-Received: by 2002:a19:8b54:: with SMTP id n81mr12710499lfd.114.1572943335639; 
 Tue, 05 Nov 2019 00:42:15 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id r9sm797985ljm.7.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:13 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004Ge-Cn; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:40 +0100
Message-Id: <20191105084152.16322-3-johan@kernel.org>
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPu-000vpM-DM
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 02/14] USB: legousbtower: drop redundant
 NULL check
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

Drop redundant NULL check from tower_abort_transfers(), which is never
called with a NULL argument.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 1be84dc13067..a3ae843e0a3a 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -457,9 +457,6 @@ static int tower_release (struct inode *inode, struct file *file)
  */
 static void tower_abort_transfers (struct lego_usb_tower *dev)
 {
-	if (dev == NULL)
-		return;
-
 	/* shutdown transfer */
 	if (dev->interrupt_in_running) {
 		dev->interrupt_in_running = 0;
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
