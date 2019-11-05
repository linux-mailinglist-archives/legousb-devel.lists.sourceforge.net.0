Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A4F1052
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003a2-Jr
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuQ1-0002xx-Vn
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+JzbMSGY3jZ4WIZf1NkEJrGRGPRKMC+8wvHR7emZd58=; b=Kpn6Fdfh40aPIcmC+Ab4RvhH+5
 hkgI6Yyj/EZbmUbKKglHxYURU0p2n8RnTqbe7TzmOO0KIF88+HbrEp4yU6NpaMCJdLlRvnm/h7X7e
 3UzQPdTfYkce5MOQN5FeJml3OI1bTzL6wwsfVti22x2BQ7ZyI2Lvma9Bj9721/eecUTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+JzbMSGY3jZ4WIZf1NkEJrGRGPRKMC+8wvHR7emZd58=; b=lCl9jEPZXQqp5H3KOVPTRUZDor
 WS6dL4tfXIkO+hgx1+gE5TOJblmqkoLw/iERHrcqQ9dRcTET3bpK1362+hI3q1hymR0bjF9gA70cW
 oqvzv3o24MGSEAMED8isRaRUSEasiB58YTZH+X8NKx+xdoXIDT8AmL+XHsKMWcIPaPC0=;
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuQ0-000dM5-Ub
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:29 +0000
Received: by mail-lj1-f193.google.com with SMTP id n21so7179674ljg.12
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+JzbMSGY3jZ4WIZf1NkEJrGRGPRKMC+8wvHR7emZd58=;
 b=b+Qh6X7UhBmnjnx71siWQHQDiXle5b0vRNlu1DVbaJCd5DGiSQQTL6pZIAbrD6ZUuf
 ymU2mmmkk7IKrfLP9/owUIWa/nHoBvYpxFc0rvK1W7c+gwz+NTC5mgK8H3Iatl5VGkFN
 m0D/fNfgsg4rfY1W8wMt+1xAGAJOHVpnhMwteOkUYVfmb7+x/Lj1IIFpgIGGFbZ506qP
 04XUxVZkpDWstoSqjiX//F5eZes50i0EJxDgFYMVtcR48y2HjzZS+WgDTHwNxVq4Rn5m
 MOEkTUQCa5lC7KmvPyILaGt2h6S66i6EAk5/lEdHkAMmcTfHnATnNHFt13rbt1qZkisF
 KiAw==
X-Gm-Message-State: APjAAAUYWfxjBtXPqmghV4+Zl9fZD7vUscjr87kZZsYcuNFnasmzpO/b
 MTyjV8l5Z39TtEMXZEdK6nE=
X-Google-Smtp-Source: APXvYqwHvuM6GHr3OfyUmMNbLhuwGn/OPKX0zqIsMhtM487o2ZzwhtstDihmMsiVj+FPV376CrejSQ==
X-Received: by 2002:a2e:b54d:: with SMTP id a13mr12909864ljn.4.1572943341842; 
 Tue, 05 Nov 2019 00:42:21 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id b4sm8179464ljp.84.2019.11.05.00.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPm-0004HN-6O; Tue, 05 Nov 2019 09:42:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:49 +0100
Message-Id: <20191105084152.16322-12-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuQ0-000dM5-Ub
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 11/14] USB: legousbtower: drop redundant
 endianness comments
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

The endianness is already encoded in the type specifier so drop the
redundant little-endian comments from the message structs.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index a9b08468a302..03f6861dfdf0 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -157,18 +157,18 @@ MODULE_PARM_DESC(interrupt_out_interval, "Interrupt out interval in ms");
 #define LEGO_USB_TOWER_REQUEST_GET_VERSION	0xFD
 
 struct tower_reset_reply {
-	__le16 size;		/* little-endian */
+	__le16 size;
 	__u8 err_code;
 	__u8 spare;
 };
 
 struct tower_get_version_reply {
-	__le16 size;		/* little-endian */
+	__le16 size;
 	__u8 err_code;
 	__u8 spare;
 	__u8 major;
 	__u8 minor;
-	__le16 build_no;		/* little-endian */
+	__le16 build_no;
 };
 
 
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
