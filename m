Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDF525FC6E
	for <lists+legousb-devel@lfdr.de>; Mon,  7 Sep 2020 16:58:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1kFIbc-0005Kr-Jc
	for lists+legousb-devel@lfdr.de; Mon, 07 Sep 2020 14:58:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1kFIUa-0003pQ-AC
 for legousb-devel@lists.sourceforge.net; Mon, 07 Sep 2020 14:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F0bX/CD5ImP5rDca/rDjjk0dhqxiSYg74J44sbPi308=; b=a6Zg3Wl9sMZe3mZMYXEGrEreEL
 fYrVnX3JMZXVYtZ2JyDsGkLuajKL/MKvKOXwhGWg3fVRYBnfcr5wRVdEx0s0rM/8PXgT/9u/u8sjx
 POFSxq4KJ8hFj1q0yyBKEubZ0XI1EQg8Jbta2cXhjBZFSjSdslTNe2Mq2Ui/fvKJbZtc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F0bX/CD5ImP5rDca/rDjjk0dhqxiSYg74J44sbPi308=; b=Pr8ZyvjyiEMSI+rjSluF7Y8mbl
 svLV3fztjfSheWzdQ55eMiT+osjRB9CncwefvJY3RpXiT7ewF3PRcxlYb96jUylNmwRCtdd9npUmF
 vipEIDRLUHVrDB7ilVFtHXariW94o13UyumNIXAlBeK8XwNVqbwjr5cRoRwy5koD6OpQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFIUW-00FbLe-95
 for legousb-devel@lists.sourceforge.net; Mon, 07 Sep 2020 14:51:36 +0000
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02F9621924;
 Mon,  7 Sep 2020 14:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599490279;
 bh=bOtNvPKd1buomuDeBpZzqGRO3R6GMfbAEg8/sDVnLbg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1MHmCQfOr4X3wWjX6IQ3rwja05HHJTOw+UvuGXj0aN6axRPVil/jBk5r/UJEAR4aO
 Ssbim/0ObmcFTIK+FT6ffbI0q1Xr0aQYGv6PpRiWAJcwz7wCDbppmvBgjycqVqWR4J
 V5iFfXj0xM9h7kuUXf4PoM2CFpwjAufNO9gR0z9k=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: himadrispandya@gmail.com,
	dvyukov@google.com,
	linux-usb@vger.kernel.org
Date: Mon,  7 Sep 2020 16:51:02 +0200
Message-Id: <20200907145108.3766613-6-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907145108.3766613-1-gregkh@linuxfoundation.org>
References: <20200907145108.3766613-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFIUW-00FbLe-95
X-Mailman-Approved-At: Mon, 07 Sep 2020 14:58:51 +0000
Subject: [Legousb-devel] [PATCH v2 05/11] USB: legousbtower: use
 usb_control_msg_recv()
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
Cc: alsa-devel@alsa-project.org,
 Juergen Stuber <starblue@users.sourceforge.net>, johan.hedberg@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, marcel@holtmann.org,
 legousb-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 tiwai@suse.com, stern@rowland.harvard.ed, linux-bluetooth@vger.kernel.org,
 perex@perex.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: legousb-devel-bounces@lists.sourceforge.net

The usb_control_msg_recv() function can handle data on the stack, as
well as properly detecting short reads, so move to use that function
instead of the older usb_control_msg() call.  This ends up removing a
lot of extra lines in the driver.

Cc: Juergen Stuber <starblue@users.sourceforge.net>
Cc: legousb-devel@lists.sourceforge.net
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:
 - no change from v1

 drivers/usb/misc/legousbtower.c | 60 +++++++++++----------------------
 1 file changed, 19 insertions(+), 41 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index f922544056de..c3583df4c324 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -308,15 +308,9 @@ static int tower_open(struct inode *inode, struct file *file)
 	int subminor;
 	int retval = 0;
 	struct usb_interface *interface;
-	struct tower_reset_reply *reset_reply;
+	struct tower_reset_reply reset_reply;
 	int result;
 
-	reset_reply = kmalloc(sizeof(*reset_reply), GFP_KERNEL);
-	if (!reset_reply) {
-		retval = -ENOMEM;
-		goto exit;
-	}
-
 	nonseekable_open(inode, file);
 	subminor = iminor(inode);
 
@@ -347,15 +341,11 @@ static int tower_open(struct inode *inode, struct file *file)
 	}
 
 	/* reset the tower */
-	result = usb_control_msg(dev->udev,
-				 usb_rcvctrlpipe(dev->udev, 0),
-				 LEGO_USB_TOWER_REQUEST_RESET,
-				 USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
-				 0,
-				 0,
-				 reset_reply,
-				 sizeof(*reset_reply),
-				 1000);
+	result = usb_control_msg_recv(dev->udev, 0,
+				      LEGO_USB_TOWER_REQUEST_RESET,
+				      USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
+				      0, 0,
+				      &reset_reply, sizeof(reset_reply), 1000);
 	if (result < 0) {
 		dev_err(&dev->udev->dev,
 			"LEGO USB Tower reset control request failed\n");
@@ -394,7 +384,6 @@ static int tower_open(struct inode *inode, struct file *file)
 	mutex_unlock(&dev->lock);
 
 exit:
-	kfree(reset_reply);
 	return retval;
 }
 
@@ -753,7 +742,7 @@ static int tower_probe(struct usb_interface *interface, const struct usb_device_
 	struct device *idev = &interface->dev;
 	struct usb_device *udev = interface_to_usbdev(interface);
 	struct lego_usb_tower *dev;
-	struct tower_get_version_reply *get_version_reply = NULL;
+	struct tower_get_version_reply get_version_reply;
 	int retval = -ENOMEM;
 	int result;
 
@@ -798,34 +787,25 @@ static int tower_probe(struct usb_interface *interface, const struct usb_device_
 	dev->interrupt_in_interval = interrupt_in_interval ? interrupt_in_interval : dev->interrupt_in_endpoint->bInterval;
 	dev->interrupt_out_interval = interrupt_out_interval ? interrupt_out_interval : dev->interrupt_out_endpoint->bInterval;
 
-	get_version_reply = kmalloc(sizeof(*get_version_reply), GFP_KERNEL);
-	if (!get_version_reply) {
-		retval = -ENOMEM;
-		goto error;
-	}
-
 	/* get the firmware version and log it */
-	result = usb_control_msg(udev,
-				 usb_rcvctrlpipe(udev, 0),
-				 LEGO_USB_TOWER_REQUEST_GET_VERSION,
-				 USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
-				 0,
-				 0,
-				 get_version_reply,
-				 sizeof(*get_version_reply),
-				 1000);
-	if (result != sizeof(*get_version_reply)) {
-		if (result >= 0)
-			result = -EIO;
+	result = usb_control_msg_recv(udev, 0,
+				      LEGO_USB_TOWER_REQUEST_GET_VERSION,
+				      USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
+				      0,
+				      0,
+				      &get_version_reply,
+				      sizeof(get_version_reply),
+				      1000);
+	if (!result) {
 		dev_err(idev, "get version request failed: %d\n", result);
 		retval = result;
 		goto error;
 	}
 	dev_info(&interface->dev,
 		 "LEGO USB Tower firmware version is %d.%d build %d\n",
-		 get_version_reply->major,
-		 get_version_reply->minor,
-		 le16_to_cpu(get_version_reply->build_no));
+		 get_version_reply.major,
+		 get_version_reply.minor,
+		 le16_to_cpu(get_version_reply.build_no));
 
 	/* we can register the device now, as it is ready */
 	usb_set_intfdata(interface, dev);
@@ -844,11 +824,9 @@ static int tower_probe(struct usb_interface *interface, const struct usb_device_
 		 USB_MAJOR, dev->minor);
 
 exit:
-	kfree(get_version_reply);
 	return retval;
 
 error:
-	kfree(get_version_reply);
 	tower_delete(dev);
 	return retval;
 }
-- 
2.28.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
