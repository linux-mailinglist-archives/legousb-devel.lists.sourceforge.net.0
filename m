Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB46BF1047
	for <lists+legousb-devel@lfdr.de>; Wed,  6 Nov 2019 08:31:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1iSFnI-0003Yp-PD
	for lists+legousb-devel@lfdr.de; Wed, 06 Nov 2019 07:31:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhovold@gmail.com>) id 1iRuPu-0004fJ-IS
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3hw05ePdq7yTQi83DwqWiRaXs9EGG+0kE5BtsB3c9q0=; b=cwl2GTEHgOCHoUteZDa+rQmkQX
 j23dNtZ61TqtQVovpB1gxZYPap+HbvAcxx6THwGt9UzWkzBuvKtcQkxB+6ujFbS5Z0MdBdp503fVb
 UdWoZcoYt3ESNdY7Emb0yq6qNl10xl9UCJoRtA2rchzVGMh98FdYgdNwQxg1zGBLxuNw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3hw05ePdq7yTQi83DwqWiRaXs9EGG+0kE5BtsB3c9q0=; b=l
 Y3LWBOL5YDGcSOVRHT6uBRWtCxDu3qG868GlXGRR0fS2B4EERWbmA3QiOz6rzf7HPLSZyCEODq7nU
 9hId6Bs/9u6GSHyKw93onK1qfQ4IyA4kvB8TT0SK6FbWL6JJ9/FS9LqI5x1Ul7IvP9VcSiels4BLz
 jkUvB0A83KcgwySs=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iRuPt-000dLb-9E
 for legousb-devel@lists.sourceforge.net; Tue, 05 Nov 2019 08:42:22 +0000
Received: by mail-lf1-f51.google.com with SMTP id f4so14437832lfk.7
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 05 Nov 2019 00:42:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3hw05ePdq7yTQi83DwqWiRaXs9EGG+0kE5BtsB3c9q0=;
 b=VesuvAw7bJ7qqHfQ6/4EgZfKzwIDI6Z8g15kfQQRwc8879Ks2d5f9DKRkKju5YcCtb
 kYbmQM0WGZ1bmVxxQ/qm+bXPKTdLosXlSL9ay6jD2XHjlDkTvydUEF+sgPBxHuAYWfXM
 LLroq/6sAt5yw+RRo9FqcLIjT+NF2ikejY1rkz9Cei5/gn4JCKY1Dt6R8o2yHx7Q5dKo
 Nx02OHwnxqK2souJ0r0T6uxh5JS4WKoXCUVuGaecE5AQu4IOLE0EeA/KP74NNlWGUfcl
 lXrQWHwqqi7cQxs7KUdxdrs2+2feD71eL1Mr28H573SZRUdNc7lbsEPUOVsd1w73Sfb9
 rGLQ==
X-Gm-Message-State: APjAAAV7vDrSSEzesKf55nhnNbAF9ipMrSammbFmx0j7UpJbubNtdw3d
 Twlwvfu4dLxiN57lqe9FJEA=
X-Google-Smtp-Source: APXvYqxocEXh/F+9cXLz2dBx6nB6IQEnOHgxlPomJvcLW6ZDDg93SeEom2JUg698fLrSv1KuvFT9pg==
X-Received: by 2002:ac2:5dc1:: with SMTP id x1mr19305233lfq.177.1572943334373; 
 Tue, 05 Nov 2019 00:42:14 -0800 (PST)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id r22sm7935893ljk.31.2019.11.05.00.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 00:42:13 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iRuPl-0004GW-6U; Tue, 05 Nov 2019 09:42:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue,  5 Nov 2019 09:41:38 +0100
Message-Id: <20191105084152.16322-1-johan@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jhovold[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iRuPt-000dLb-9E
X-Mailman-Approved-At: Wed, 06 Nov 2019 07:31:54 +0000
Subject: [Legousb-devel] [PATCH 00/14] USB: legousbtower: misc cleanups
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

Here's a bunch of clean ups to the legousbtower driver as a promised
follow up to the earlier set of fixes.

Johan


Johan Hovold (14):
  USB: legousbtower: drop redundant MODULE_LICENSE ifdef
  USB: legousbtower: drop redundant NULL check
  USB: legousbtower: zero driver data at allocation
  USB: legousbtower: drop redundant open_count check
  USB: legousbtower: drop noisy disconnect messages
  USB: legousbtower: drop redundant interrupt-in running flag
  USB: legousbtower: stop interrupt-out URB unconditionally
  USB: legousbtower: remove tower_abort_transfers()
  USB: legousbtower: clean up pointer declarations in driver data
  USB: legousbtower: drop unnecessary packed attributes
  USB: legousbtower: drop redundant endianness comments
  USB: legousbtower: clean up runaway white space
  USB: legousbtower: drop superfluous brackets
  USB: legousbtower: drop superfluous newlines

 drivers/usb/misc/legousbtower.c | 303 +++++++++++++-------------------
 1 file changed, 118 insertions(+), 185 deletions(-)

-- 
2.23.0



_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
