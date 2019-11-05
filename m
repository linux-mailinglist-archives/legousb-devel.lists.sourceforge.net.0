Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72293F104D
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003ZS-7h
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPy-0004rh-8D
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=afgTwGT7brsAeSuOhWRZ7IqDVxGWSNG4jsxiRPhaQaE=; b=iwJVpyuDKf7YD/ZRUva/V10/yn
 OfdGq8SE1QTVHwbRm/Jl3WEO+IuAneL5PJDjbFD38G1ABR5+PH6DnIRV12NBljrObVbNE/EVeOu91
 lwi0xmTwtzZzLaw2J1D9t6MfpGFYKy5//Lq0KPWj+Tpufrn4PwD3ncaJEa7vg/fa/ogw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=afgTwGT7brsAeSuOhWRZ7IqDVxGWSNG4jsxiRPhaQaE=; b=GxouSto4OLKIR+Cm6aXI6FX1Wu
 hUtzh+KBwWKkt9MQ73/l/epSj4UJ8F7HRMIQ4CLefLs1AT/QBGnSfHu4aGvUpA+Q0RLG/MOspm256
 TVPrl/Ta3cwZKJZl00F0juiQo+0+rqnsH36cZGESTgHL1dWyXedMptr3jULTq1T7s66I=;
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPx-000fV9-6X
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:26 +0000
Received: by mail-lf1-f67.google.com with SMTP id b20so14447566lfp.4
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=afgTwGT7brsAeSuOhWRZ7IqDVxGWSNG4jsxiRPhaQaE=;
 b=IaGk+ewz2olvVtJiTjghaHcE3y8LRBgzufN0TQPwJ8STwesByrWNfVbJ55kxsrQXs6
 dXQ3yIA4J5VTJ1vVFe26WrRNKpjHpDgcCVQteEruy1NhZr1E1iCF5UtrV30r822ujDgA
 LuzehtAnziSWrGcXnextx87WA2zmolOlMkLkOc9z8l09JGaaIHzrbE+GE0Or8X7qBQLW
 w9eFP7KuEOL138kxLUdPkCtfzmRrepHLr3ohSarC4iXaIS3McRFAAcA532ZvfbuUM6TI
 oSpvg/1HrrMATKJRFHI8R6Q8kZgALhwXzZNkBfdx+w0Ri/78Giugcq2ZvpQ5lsTLlBcC
 0Nuw==
X-Gm-Message-State: APjAAAUS6WF+E1q83Xa4GNbq/UEzuqbAvZnvBQuBFvi2nXMPeNEiCA2H
 8kyiha9qNs6eMl8W4k+zhQQ=
X-Google-Smtp-Source: APXvYqz6voU62owE/+PeCh7//o9mb3l6X8QWXCzgYNJwXxxh+IiFGiA9+k55ftLmaPqgrjx+zLe2Yw==
X-Received: by 2002:a19:c6d6:: with SMTP id w205mr18235575lff.17.1572943338396; 
 Tue, 05 Nov 2019 00:42:18 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id r9sm798017ljm.7.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004H3-QJ; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:45 +0100
Message-Id: <20191105084152.16322-8-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPx-000fV9-6X
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 07/14] USB: legousbtower: stop interrupt-out
 URB unconditionally
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

Stop also the interrupt-out URB unconditionally in
tower_abort_transfers() which is called from release() (for connected
devices). Calling usb_kill_urb() for an idle URB is perfectly fine.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 33533faa019e..3e409dfe172c 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -448,8 +448,7 @@ static void tower_abort_transfers (struct lego_usb_tower *dev)
 {
 	/* shutdown transfer */
 	usb_kill_urb(dev->interrupt_in_urb);
-	if (dev->interrupt_out_busy)
-		usb_kill_urb(dev->interrupt_out_urb);
+	usb_kill_urb(dev->interrupt_out_urb);
 }
 
 
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
