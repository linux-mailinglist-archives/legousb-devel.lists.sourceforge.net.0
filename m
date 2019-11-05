Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F08F1050
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003Zh-CR
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPz-0004hX-Q9
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KzD2kRMqXBk5Yohy1WZyW20m/TFgSNbBGXd2XRm4RLc=; b=CbCwucCY/EHbBcOVLT6x4NaCkf
 919h+zNXvr5BH/bmN9o1mJMFVKHXbQJyM8Zb5/qKQvSNDOAfVq7twATCL4a3xp0o56vj6vG5O4mDa
 M5nYDYBAG/9WccnONYhNzjDPwV4ejhJBsWZoAhRRmBJFQ5k2f2omQLRfJ6bXjYFF70co=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KzD2kRMqXBk5Yohy1WZyW20m/TFgSNbBGXd2XRm4RLc=; b=jtZYtHDLYAJWP+1xzkPE5TFqPY
 dAbGrnA+Q2/t3IopSGpn7WDOCZCbYLxpe7fOJQ230rHx/9AnaJgxTvmt+00wddjZItwEV1bhmgM5s
 g4V26S9Lp9Q6hKUTohSEYBIFcwyQpBmBA7hLNznu15hWiTXet+npqMKWjOkptzDtCYEg=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPy-000vpW-Lw
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:27 +0000
Received: by mail-lj1-f194.google.com with SMTP id r7so12112399ljg.2
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KzD2kRMqXBk5Yohy1WZyW20m/TFgSNbBGXd2XRm4RLc=;
 b=GOXXZqy6ZNqxDo+3Epy9/zjkOGYvIuesYYynmDBxcG49dHWo1kU8JBzpi66w/WpLcO
 XeZ2nfp4JW9TULo6K4DIFj704R1CT3N2eXKWLWvfs0Z4sP2HW7GgmqGQXPRJs3PzDUrO
 NXPFeBGTaaX/3X7M0UMVX611DMSYbHuH7GgNenH8xDD5tHNwfME8xHXkGcABCeZ6/wI2
 sGWobj9a+EZ3aTk1maFX4536sFy2NVFoH3QpB9PGseiuhjhlk9nd3CTDbi+mu20/wJlt
 Pc7ircsXdKzcrvgVx/FrIHCRteZoyPBFgCerQ4tIpLWoBn9j4+F3Gfpq3ErixfTvAEjE
 LXVw==
X-Gm-Message-State: APjAAAUyV6MfufMud8hJvjMsxWbxJPn7GKE6x5VVHiixMY+3GC7+pFJh
 +4f9vgrqFJsK7QGNKsNjUUc=
X-Google-Smtp-Source: APXvYqz/Tf/zHFQUZBgQpN4ukW+wBjTaq52O80nCjCrse6r6pgdXd/roW482mpw8wruO4jF68kn7GA==
X-Received: by 2002:a05:651c:28a:: with SMTP id
 b10mr3113831ljo.124.1572943339825; 
 Tue, 05 Nov 2019 00:42:19 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id e22sm10521721ljg.73.2019.11.05.00.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:16 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPm-0004Hc-G4; Tue, 05 Nov 2019 09:42:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:52 +0100
Message-Id: <20191105084152.16322-15-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRuPy-000vpW-Lw
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 14/14] USB: legousbtower: drop superfluous
 newlines
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

Drop some superfluous newlines before conditionals which made the code
harder to read.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 6b7ea80d5876..ab4b98b04115 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -312,7 +312,6 @@ static int tower_open(struct inode *inode, struct file *file)
 	int result;
 
 	reset_reply = kmalloc(sizeof(*reset_reply), GFP_KERNEL);
-
 	if (!reset_reply) {
 		retval = -ENOMEM;
 		goto exit;
@@ -322,7 +321,6 @@ static int tower_open(struct inode *inode, struct file *file)
 	subminor = iminor(inode);
 
 	interface = usb_find_interface(&tower_driver, subminor);
-
 	if (!interface) {
 		pr_err("error, can't find device for minor %d\n", subminor);
 		retval = -ENODEV;
@@ -409,7 +407,6 @@ static int tower_release(struct inode *inode, struct file *file)
 	int retval = 0;
 
 	dev = file->private_data;
-
 	if (dev == NULL) {
 		retval = -ENODEV;
 		goto exit;
@@ -802,7 +799,6 @@ static int tower_probe(struct usb_interface *interface, const struct usb_device_
 	dev->interrupt_out_interval = interrupt_out_interval ? interrupt_out_interval : dev->interrupt_out_endpoint->bInterval;
 
 	get_version_reply = kmalloc(sizeof(*get_version_reply), GFP_KERNEL);
-
 	if (!get_version_reply) {
 		retval = -ENOMEM;
 		goto error;
@@ -835,7 +831,6 @@ static int tower_probe(struct usb_interface *interface, const struct usb_device_
 	usb_set_intfdata(interface, dev);
 
 	retval = usb_register_dev(interface, &tower_class);
-
 	if (retval) {
 		/* something prevented us from registering this driver */
 		dev_err(idev, "Not able to get a minor for this device.\n");
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
