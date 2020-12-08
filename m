Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 676B12D2FB7
	for <lists+legousb-devel@lfdr.de>; Tue,  8 Dec 2020 17:31:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1kmftF-0001dT-5p
	for lists+legousb-devel@lfdr.de; Tue, 08 Dec 2020 16:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stern+5fdd9852@netrider.rowland.org>)
 id 1kmftD-0001dL-L9
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 16:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AU19cnUdXg1kqmJf/MKSVOCNIq1841q7NQjfBN9GerU=; b=LaHQ7sqQs/aXmwv2EyTDCa/FNz
 QmvT9WX3w7MiKtg4i6y2wqKyG0WOZWsrbI3TTuixqhXf/yjuQTw4p5VFo+6N3edZPy+QZSdcNNTm1
 OUMJTsYSpXlrXXBDmEvbaEkw+PuB3fN/CEqh/lFxAL0dqiM/l7VkoZRJJ8zGW9vgLMcc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AU19cnUdXg1kqmJf/MKSVOCNIq1841q7NQjfBN9GerU=; b=CAu1fcAK6Ghf4SyP9ChwNvAV9G
 pXDrzqkVXF2LeUZrynX/vvCVrtAUAL0xQUBeLJ27SNb4irqJfyujke0H7exNqd9xO8vtdiLfTIPhp
 4hqsj7CSYerbPDinUyms9tNtkpoYpyZRmqt1eoCDN5+KdQeq3qdkqsAxqWrYLl8WmrQE=;
Received: from netrider.rowland.org ([192.131.102.5])
 by sfi-mx-3.v28.lw.sourceforge.com with smtp (Exim 4.92.2)
 id 1kmft9-006muh-Bs
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 16:30:59 +0000
Received: (qmail 1301383 invoked by uid 1000); 8 Dec 2020 11:30:42 -0500
Date: Tue, 8 Dec 2020 11:30:42 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <greg@kroah.com>
Message-ID: <20201208163042.GD1298255@rowland.harvard.edu>
References: <20201208160703.GB1298255@rowland.harvard.edu>
 <000000000000f0fb0d05b5f65e64@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000f0fb0d05b5f65e64@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: harvard.edu]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1kmft9-006muh-Bs
Subject: [Legousb-devel] [PATCH] USB: legotower: fix logical error in recent
 commit
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
Cc: andreyknvl@google.com, legousb-devel@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-usb@vger.kernel.org,
 starblue@users.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: legousb-devel-bounces@lists.sourceforge.net

Commit d9f0d82f06c6 ("USB: legousbtower: use usb_control_msg_recv()")
contained an elementary logical error.  The check of the return code
from the new usb_control_msg_recv() function was inverted.

Reported-and-tested-by: syzbot+9be25235b7a69b24d117@syzkaller.appspotmail.com
Signed-off-by: Alan Stern <stern@rowland.harvard.edu>

---


[as1950]


 drivers/usb/misc/legousbtower.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: usb-devel/drivers/usb/misc/legousbtower.c
===================================================================
--- usb-devel.orig/drivers/usb/misc/legousbtower.c
+++ usb-devel/drivers/usb/misc/legousbtower.c
@@ -797,7 +797,7 @@ static int tower_probe(struct usb_interf
 				      &get_version_reply,
 				      sizeof(get_version_reply),
 				      1000, GFP_KERNEL);
-	if (!result) {
+	if (result) {
 		dev_err(idev, "get version request failed: %d\n", result);
 		retval = result;
 		goto error;


_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
