Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0377F1055
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnJ-0003aN-Os
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRucB-0005PK-Ul
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:55:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ic/kEOrz0fwI+otK/llrQ6E9mGG2r2a84ncZkZRXbmk=; b=TJ0uaI8UQZKlm04fisLH5bvaFN
 SJgPoceqWgbBRXlPcrYGq+X65Ua+dG52iZ9XnfORPhsqqNz8U220qHilrTZ1Rxmxn/N5ADJWElx0s
 XlbxvtrgQb1xrXqxPKUaThPeqyVaSVKygNMyUoo9coomgz1GiUh0pKvqCWX1jGIF1OH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ic/kEOrz0fwI+otK/llrQ6E9mGG2r2a84ncZkZRXbmk=; b=N4wmrCu2hLhQBy2EYxQtx5KcWG
 eu7QqmKxpSAEJxl/fue3MTm6xEaxj3YdUNdiQjXjVj2AECIgfPwgS3M5RsjtZuLPKLH7qihp9YLXY
 EhxBKI0pKhNIHY12meY4mmI+dYLvuh4bi5UywL7/+WaZPkTTm8IExQ47DLJjhCHlH15M=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRucA-000dmJ-2W
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:55:03 +0000
Received: by mail-lj1-f194.google.com with SMTP id n5so9832317ljc.9
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:55:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ic/kEOrz0fwI+otK/llrQ6E9mGG2r2a84ncZkZRXbmk=;
 b=aCKRuqdMQ0zLryx5HsIZlHVfoamdp3lh/eSHKY+UuJaziwY0BljkmpCLxgure0mc/z
 wAN/L8nxAVyAtx81rjRqotICUHdw/4d8RvLXXwoYp9wzwyswtDaJ5jASo4AoJzg267Ka
 O47CfID3e1tgzOU19yGCriXSvgy2/8y3v2uJCs86OCFcs4iChdTrskYtlJDBYp3sR4Nv
 8szS5b//7rSNAqSCnFeY05Gc/FLgCyq0N7e3dOzN+mME20kZRjieplW2teyW5tw7KPH5
 Z8Pv4vBvrC5qWzqWrdgcdrzgqkbT+J3wb3bkAdbRhU1cy21jS3VglCvhPkLDJP/Ufc0b
 8phw==
X-Gm-Message-State: APjAAAVe1F/uB6BZtL1VJf6yN4cWGC0gxJre/mkwA6V4y8sP1tlVbhpI
 FjSi32FIJxHXUHC9508WmGg=
X-Google-Smtp-Source: APXvYqy65rRe/KSmzdlPqPAd4rXcX6U7wy/qmp25teCdF5ooOh/mYp0QG0rv40CeGJ5DK3CudgQkuQ==
X-Received: by 2002:a2e:b4ba:: with SMTP id q26mr21996146ljm.60.1572944094925; 
 Tue, 05 Nov 2019 00:54:54 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id q15sm7684540lfb.84.2019.11.05.00.54.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:54:54 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPm-0004HT-9j; Tue, 05 Nov 2019 09:42:14 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:50 +0100
Message-Id: <20191105084152.16322-13-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105084152.16322-1-johan@kernel.org>
References: <20191105084152.16322-1-johan@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
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
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRucA-000dmJ-2W
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:55 +0000
Subject: [Legousb-devel] [PATCH 12/14] USB: legousbtower: clean up runaway
 white space
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

Drop space between function identifiers and opening parenthesis, which
was no longer even used consistently within the driver.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/usb/misc/legousbtower.c | 172 ++++++++++++++++----------------
 1 file changed, 87 insertions(+), 85 deletions(-)

diff --git a/drivers/usb/misc/legousbtower.c b/drivers/usb/misc/legousbtower.c
index 03f6861dfdf0..6f34b3802332 100644
--- a/drivers/usb/misc/legousbtower.c
+++ b/drivers/usb/misc/legousbtower.c
@@ -178,7 +178,7 @@ static const struct usb_device_id tower_table[] = {
 	{ }					/* Terminating entry */
 };
 
-MODULE_DEVICE_TABLE (usb, tower_table);
+MODULE_DEVICE_TABLE(usb, tower_table);
 
 #define LEGO_USB_TOWER_MINOR_BASE	160
 
@@ -218,20 +218,20 @@ struct lego_usb_tower {
 
 
 /* local function prototypes */
-static ssize_t tower_read	(struct file *file, char __user *buffer, size_t count, loff_t *ppos);
-static ssize_t tower_write	(struct file *file, const char __user *buffer, size_t count, loff_t *ppos);
-static inline void tower_delete (struct lego_usb_tower *dev);
-static int tower_open		(struct inode *inode, struct file *file);
-static int tower_release	(struct inode *inode, struct file *file);
-static __poll_t tower_poll	(struct file *file, poll_table *wait);
-static loff_t tower_llseek	(struct file *file, loff_t off, int whence);
+static ssize_t tower_read(struct file *file, char __user *buffer, size_t count, loff_t *ppos);
+static ssize_t tower_write(struct file *file, const char __user *buffer, size_t count, loff_t *ppos);
+static inline void tower_delete(struct lego_usb_tower *dev);
+static int tower_open(struct inode *inode, struct file *file);
+static int tower_release(struct inode *inode, struct file *file);
+static __poll_t tower_poll(struct file *file, poll_table *wait);
+static loff_t tower_llseek(struct file *file, loff_t off, int whence);
 
-static void tower_check_for_read_packet (struct lego_usb_tower *dev);
-static void tower_interrupt_in_callback (struct urb *urb);
-static void tower_interrupt_out_callback (struct urb *urb);
+static void tower_check_for_read_packet(struct lego_usb_tower *dev);
+static void tower_interrupt_in_callback(struct urb *urb);
+static void tower_interrupt_out_callback(struct urb *urb);
 
-static int  tower_probe	(struct usb_interface *interface, const struct usb_device_id *id);
-static void tower_disconnect	(struct usb_interface *interface);
+static int  tower_probe(struct usb_interface *interface, const struct usb_device_id *id);
+static void tower_disconnect(struct usb_interface *interface);
 
 
 /* file operations needed when we register this driver */
@@ -286,23 +286,23 @@ static inline void lego_usb_tower_debug_data(struct device *dev,
 /**
  *	tower_delete
  */
-static inline void tower_delete (struct lego_usb_tower *dev)
+static inline void tower_delete(struct lego_usb_tower *dev)
 {
 	/* free data structures */
 	usb_free_urb(dev->interrupt_in_urb);
 	usb_free_urb(dev->interrupt_out_urb);
-	kfree (dev->read_buffer);
-	kfree (dev->interrupt_in_buffer);
-	kfree (dev->interrupt_out_buffer);
+	kfree(dev->read_buffer);
+	kfree(dev->interrupt_in_buffer);
+	kfree(dev->interrupt_out_buffer);
 	usb_put_dev(dev->udev);
-	kfree (dev);
+	kfree(dev);
 }
 
 
 /**
  *	tower_open
  */
-static int tower_open (struct inode *inode, struct file *file)
+static int tower_open(struct inode *inode, struct file *file)
 {
 	struct lego_usb_tower *dev = NULL;
 	int subminor;
@@ -321,7 +321,7 @@ static int tower_open (struct inode *inode, struct file *file)
 	nonseekable_open(inode, file);
 	subminor = iminor(inode);
 
-	interface = usb_find_interface (&tower_driver, subminor);
+	interface = usb_find_interface(&tower_driver, subminor);
 
 	if (!interface) {
 		pr_err("error, can't find device for minor %d\n", subminor);
@@ -349,15 +349,15 @@ static int tower_open (struct inode *inode, struct file *file)
 	}
 
 	/* reset the tower */
-	result = usb_control_msg (dev->udev,
-				  usb_rcvctrlpipe(dev->udev, 0),
-				  LEGO_USB_TOWER_REQUEST_RESET,
-				  USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
-				  0,
-				  0,
-				  reset_reply,
-				  sizeof(*reset_reply),
-				  1000);
+	result = usb_control_msg(dev->udev,
+				 usb_rcvctrlpipe(dev->udev, 0),
+				 LEGO_USB_TOWER_REQUEST_RESET,
+				 USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
+				 0,
+				 0,
+				 reset_reply,
+				 sizeof(*reset_reply),
+				 1000);
 	if (result < 0) {
 		dev_err(&dev->udev->dev,
 			"LEGO USB Tower reset control request failed\n");
@@ -368,19 +368,19 @@ static int tower_open (struct inode *inode, struct file *file)
 	/* initialize in direction */
 	dev->read_buffer_length = 0;
 	dev->read_packet_length = 0;
-	usb_fill_int_urb (dev->interrupt_in_urb,
-			  dev->udev,
-			  usb_rcvintpipe(dev->udev, dev->interrupt_in_endpoint->bEndpointAddress),
-			  dev->interrupt_in_buffer,
-			  usb_endpoint_maxp(dev->interrupt_in_endpoint),
-			  tower_interrupt_in_callback,
-			  dev,
-			  dev->interrupt_in_interval);
+	usb_fill_int_urb(dev->interrupt_in_urb,
+			 dev->udev,
+			 usb_rcvintpipe(dev->udev, dev->interrupt_in_endpoint->bEndpointAddress),
+			 dev->interrupt_in_buffer,
+			 usb_endpoint_maxp(dev->interrupt_in_endpoint),
+			 tower_interrupt_in_callback,
+			 dev,
+			 dev->interrupt_in_interval);
 
 	dev->interrupt_in_done = 0;
 	mb();
 
-	retval = usb_submit_urb (dev->interrupt_in_urb, GFP_KERNEL);
+	retval = usb_submit_urb(dev->interrupt_in_urb, GFP_KERNEL);
 	if (retval) {
 		dev_err(&dev->udev->dev,
 			"Couldn't submit interrupt_in_urb %d\n", retval);
@@ -403,7 +403,7 @@ static int tower_open (struct inode *inode, struct file *file)
 /**
  *	tower_release
  */
-static int tower_release (struct inode *inode, struct file *file)
+static int tower_release(struct inode *inode, struct file *file)
 {
 	struct lego_usb_tower *dev;
 	int retval = 0;
@@ -422,13 +422,14 @@ static int tower_release (struct inode *inode, struct file *file)
 
 		/* unlock here as tower_delete frees dev */
 		mutex_unlock(&dev->lock);
-		tower_delete (dev);
+		tower_delete(dev);
 		goto exit;
 	}
 
 	/* wait until write transfer is finished */
 	if (dev->interrupt_out_busy) {
-		wait_event_interruptible_timeout (dev->write_wait, !dev->interrupt_out_busy, 2 * HZ);
+		wait_event_interruptible_timeout(dev->write_wait, !dev->interrupt_out_busy,
+						 2 * HZ);
 	}
 
 	/* shutdown transfers */
@@ -450,23 +451,23 @@ static int tower_release (struct inode *inode, struct file *file)
  *      until it has been there unchanged for at least
  *      dev->packet_timeout_jiffies, or until the buffer is full.
  */
-static void tower_check_for_read_packet (struct lego_usb_tower *dev)
+static void tower_check_for_read_packet(struct lego_usb_tower *dev)
 {
-	spin_lock_irq (&dev->read_buffer_lock);
+	spin_lock_irq(&dev->read_buffer_lock);
 	if (!packet_timeout
 	    || time_after(jiffies, dev->read_last_arrival + dev->packet_timeout_jiffies)
 	    || dev->read_buffer_length == read_buffer_size) {
 		dev->read_packet_length = dev->read_buffer_length;
 	}
 	dev->interrupt_in_done = 0;
-	spin_unlock_irq (&dev->read_buffer_lock);
+	spin_unlock_irq(&dev->read_buffer_lock);
 }
 
 
 /**
  *	tower_poll
  */
-static __poll_t tower_poll (struct file *file, poll_table *wait)
+static __poll_t tower_poll(struct file *file, poll_table *wait)
 {
 	struct lego_usb_tower *dev;
 	__poll_t mask = 0;
@@ -494,7 +495,7 @@ static __poll_t tower_poll (struct file *file, poll_table *wait)
 /**
  *	tower_llseek
  */
-static loff_t tower_llseek (struct file *file, loff_t off, int whence)
+static loff_t tower_llseek(struct file *file, loff_t off, int whence)
 {
 	return -ESPIPE;		/* unseekable */
 }
@@ -503,7 +504,7 @@ static loff_t tower_llseek (struct file *file, loff_t off, int whence)
 /**
  *	tower_read
  */
-static ssize_t tower_read (struct file *file, char __user *buffer, size_t count, loff_t *ppos)
+static ssize_t tower_read(struct file *file, char __user *buffer, size_t count, loff_t *ppos)
 {
 	struct lego_usb_tower *dev;
 	size_t bytes_to_read;
@@ -536,7 +537,7 @@ static ssize_t tower_read (struct file *file, char __user *buffer, size_t count,
 	}
 
 	/* wait for data */
-	tower_check_for_read_packet (dev);
+	tower_check_for_read_packet(dev);
 	while (dev->read_packet_length == 0) {
 		if (file->f_flags & O_NONBLOCK) {
 			retval = -EAGAIN;
@@ -553,28 +554,28 @@ static ssize_t tower_read (struct file *file, char __user *buffer, size_t count,
 			timeout = jiffies + msecs_to_jiffies(read_timeout);
 		}
 		/* check for read timeout */
-		if (read_timeout && time_after (jiffies, timeout)) {
+		if (read_timeout && time_after(jiffies, timeout)) {
 			retval = -ETIMEDOUT;
 			goto unlock_exit;
 		}
-		tower_check_for_read_packet (dev);
+		tower_check_for_read_packet(dev);
 	}
 
 	/* copy the data from read_buffer into userspace */
 	bytes_to_read = min(count, dev->read_packet_length);
 
-	if (copy_to_user (buffer, dev->read_buffer, bytes_to_read)) {
+	if (copy_to_user(buffer, dev->read_buffer, bytes_to_read)) {
 		retval = -EFAULT;
 		goto unlock_exit;
 	}
 
-	spin_lock_irq (&dev->read_buffer_lock);
+	spin_lock_irq(&dev->read_buffer_lock);
 	dev->read_buffer_length -= bytes_to_read;
 	dev->read_packet_length -= bytes_to_read;
 	for (i=0; i<dev->read_buffer_length; i++) {
 		dev->read_buffer[i] = dev->read_buffer[i+bytes_to_read];
 	}
-	spin_unlock_irq (&dev->read_buffer_lock);
+	spin_unlock_irq(&dev->read_buffer_lock);
 
 	retval = bytes_to_read;
 
@@ -590,7 +591,7 @@ static ssize_t tower_read (struct file *file, char __user *buffer, size_t count,
 /**
  *	tower_write
  */
-static ssize_t tower_write (struct file *file, const char __user *buffer, size_t count, loff_t *ppos)
+static ssize_t tower_write(struct file *file, const char __user *buffer, size_t count, loff_t *ppos)
 {
 	struct lego_usb_tower *dev;
 	size_t bytes_to_write;
@@ -622,7 +623,8 @@ static ssize_t tower_write (struct file *file, const char __user *buffer, size_t
 			retval = -EAGAIN;
 			goto unlock_exit;
 		}
-		retval = wait_event_interruptible (dev->write_wait, !dev->interrupt_out_busy);
+		retval = wait_event_interruptible(dev->write_wait,
+						  !dev->interrupt_out_busy);
 		if (retval) {
 			goto unlock_exit;
 		}
@@ -633,7 +635,7 @@ static ssize_t tower_write (struct file *file, const char __user *buffer, size_t
 	dev_dbg(&dev->udev->dev, "%s: count = %zd, bytes_to_write = %zd\n",
 		__func__, count, bytes_to_write);
 
-	if (copy_from_user (dev->interrupt_out_buffer, buffer, bytes_to_write)) {
+	if (copy_from_user(dev->interrupt_out_buffer, buffer, bytes_to_write)) {
 		retval = -EFAULT;
 		goto unlock_exit;
 	}
@@ -651,7 +653,7 @@ static ssize_t tower_write (struct file *file, const char __user *buffer, size_t
 	dev->interrupt_out_busy = 1;
 	wmb();
 
-	retval = usb_submit_urb (dev->interrupt_out_urb, GFP_KERNEL);
+	retval = usb_submit_urb(dev->interrupt_out_urb, GFP_KERNEL);
 	if (retval) {
 		dev->interrupt_out_busy = 0;
 		dev_err(&dev->udev->dev,
@@ -672,7 +674,7 @@ static ssize_t tower_write (struct file *file, const char __user *buffer, size_t
 /**
  *	tower_interrupt_in_callback
  */
-static void tower_interrupt_in_callback (struct urb *urb)
+static void tower_interrupt_in_callback(struct urb *urb)
 {
 	struct lego_usb_tower *dev = urb->context;
 	int status = urb->status;
@@ -698,9 +700,9 @@ static void tower_interrupt_in_callback (struct urb *urb)
 	if (urb->actual_length > 0) {
 		spin_lock_irqsave(&dev->read_buffer_lock, flags);
 		if (dev->read_buffer_length + urb->actual_length < read_buffer_size) {
-			memcpy (dev->read_buffer + dev->read_buffer_length,
-				dev->interrupt_in_buffer,
-				urb->actual_length);
+			memcpy(dev->read_buffer + dev->read_buffer_length,
+			       dev->interrupt_in_buffer,
+			       urb->actual_length);
 			dev->read_buffer_length += urb->actual_length;
 			dev->read_last_arrival = jiffies;
 			dev_dbg(&dev->udev->dev, "%s: received %d bytes\n",
@@ -720,14 +722,14 @@ static void tower_interrupt_in_callback (struct urb *urb)
 	}
 exit:
 	dev->interrupt_in_done = 1;
-	wake_up_interruptible (&dev->read_wait);
+	wake_up_interruptible(&dev->read_wait);
 }
 
 
 /**
  *	tower_interrupt_out_callback
  */
-static void tower_interrupt_out_callback (struct urb *urb)
+static void tower_interrupt_out_callback(struct urb *urb)
 {
 	struct lego_usb_tower *dev = urb->context;
 	int status = urb->status;
@@ -755,7 +757,7 @@ static void tower_interrupt_out_callback (struct urb *urb)
  *	Called by the usb core when a new device is connected that it thinks
  *	this driver might be interested in.
  */
-static int tower_probe (struct usb_interface *interface, const struct usb_device_id *id)
+static int tower_probe(struct usb_interface *interface, const struct usb_device_id *id)
 {
 	struct device *idev = &interface->dev;
 	struct usb_device *udev = interface_to_usbdev(interface);
@@ -771,11 +773,11 @@ static int tower_probe (struct usb_interface *interface, const struct usb_device
 
 	mutex_init(&dev->lock);
 	dev->udev = usb_get_dev(udev);
-	spin_lock_init (&dev->read_buffer_lock);
+	spin_lock_init(&dev->read_buffer_lock);
 	dev->packet_timeout_jiffies = msecs_to_jiffies(packet_timeout);
 	dev->read_last_arrival = jiffies;
-	init_waitqueue_head (&dev->read_wait);
-	init_waitqueue_head (&dev->write_wait);
+	init_waitqueue_head(&dev->read_wait);
+	init_waitqueue_head(&dev->write_wait);
 
 	result = usb_find_common_endpoints_reverse(interface->cur_altsetting,
 			NULL, NULL,
@@ -787,16 +789,16 @@ static int tower_probe (struct usb_interface *interface, const struct usb_device
 		goto error;
 	}
 
-	dev->read_buffer = kmalloc (read_buffer_size, GFP_KERNEL);
+	dev->read_buffer = kmalloc(read_buffer_size, GFP_KERNEL);
 	if (!dev->read_buffer)
 		goto error;
-	dev->interrupt_in_buffer = kmalloc (usb_endpoint_maxp(dev->interrupt_in_endpoint), GFP_KERNEL);
+	dev->interrupt_in_buffer = kmalloc(usb_endpoint_maxp(dev->interrupt_in_endpoint), GFP_KERNEL);
 	if (!dev->interrupt_in_buffer)
 		goto error;
 	dev->interrupt_in_urb = usb_alloc_urb(0, GFP_KERNEL);
 	if (!dev->interrupt_in_urb)
 		goto error;
-	dev->interrupt_out_buffer = kmalloc (write_buffer_size, GFP_KERNEL);
+	dev->interrupt_out_buffer = kmalloc(write_buffer_size, GFP_KERNEL);
 	if (!dev->interrupt_out_buffer)
 		goto error;
 	dev->interrupt_out_urb = usb_alloc_urb(0, GFP_KERNEL);
@@ -813,15 +815,15 @@ static int tower_probe (struct usb_interface *interface, const struct usb_device
 	}
 
 	/* get the firmware version and log it */
-	result = usb_control_msg (udev,
-				  usb_rcvctrlpipe(udev, 0),
-				  LEGO_USB_TOWER_REQUEST_GET_VERSION,
-				  USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
-				  0,
-				  0,
-				  get_version_reply,
-				  sizeof(*get_version_reply),
-				  1000);
+	result = usb_control_msg(udev,
+				 usb_rcvctrlpipe(udev, 0),
+				 LEGO_USB_TOWER_REQUEST_GET_VERSION,
+				 USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
+				 0,
+				 0,
+				 get_version_reply,
+				 sizeof(*get_version_reply),
+				 1000);
 	if (result != sizeof(*get_version_reply)) {
 		if (result >= 0)
 			result = -EIO;
@@ -836,9 +838,9 @@ static int tower_probe (struct usb_interface *interface, const struct usb_device
 		 le16_to_cpu(get_version_reply->build_no));
 
 	/* we can register the device now, as it is ready */
-	usb_set_intfdata (interface, dev);
+	usb_set_intfdata(interface, dev);
 
-	retval = usb_register_dev (interface, &tower_class);
+	retval = usb_register_dev(interface, &tower_class);
 
 	if (retval) {
 		/* something prevented us from registering this driver */
@@ -868,17 +870,17 @@ static int tower_probe (struct usb_interface *interface, const struct usb_device
  *
  *	Called by the usb core when the device is removed from the system.
  */
-static void tower_disconnect (struct usb_interface *interface)
+static void tower_disconnect(struct usb_interface *interface)
 {
 	struct lego_usb_tower *dev;
 	int minor;
 
-	dev = usb_get_intfdata (interface);
+	dev = usb_get_intfdata(interface);
 
 	minor = dev->minor;
 
 	/* give back our minor and prevent further open() */
-	usb_deregister_dev (interface, &tower_class);
+	usb_deregister_dev(interface, &tower_class);
 
 	/* stop I/O */
 	usb_poison_urb(dev->interrupt_in_urb);
@@ -889,7 +891,7 @@ static void tower_disconnect (struct usb_interface *interface)
 	/* if the device is not opened, then we clean up right now */
 	if (!dev->open_count) {
 		mutex_unlock(&dev->lock);
-		tower_delete (dev);
+		tower_delete(dev);
 	} else {
 		dev->disconnected = 1;
 		/* wake up pollers */
-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
