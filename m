Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1162D2F66
	for <lists+legousb-devel@lfdr.de>; Tue,  8 Dec 2020 17:24:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1kmfmg-0004jL-GJ
	for lists+legousb-devel@lfdr.de; Tue, 08 Dec 2020 16:24:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3oqjPXwkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kmfme-0004jD-W0
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 16:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HSyExJl7cd4xIkyp8toEOPl4ozCtm+NQv2BdcFpoEZc=; b=isBPwxNu8QHc9G53Cgdrxvonqs
 yAjVIFhDBBgw1KnwklG8kaotpjHyAuXFebCj2SI+7FD/oELwUxyg5UOwBaCGSNUQdRMx50UEHkla0
 FGorYPzXMwlVTGh09AEnwmEmmicC1i4AO8W3WPAGF+guTkYroFJeoYdNTM6vL4oidYAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HSyExJl7cd4xIkyp8toEOPl4ozCtm+NQv2BdcFpoEZc=; b=F
 dcbpKC4fqPAMKhsyLf7AfloPR1JlQTnKiM9YusS13HTshuNR2DPJPDS6rL7cVDAtTjq02yvE7P2Ep
 mssmbW09pqmDMvQDLr30ULZEx5kiU5Yxi2wuZpHhcvoVtODnIZl6kl5eQzewgIdc1lKG2z4jyINaf
 2S7yuzq0oZzSvt2M=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kmfma-003k5Q-IQ
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 16:24:12 +0000
Received: by mail-io1-f71.google.com with SMTP id j25so1070222iog.22
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 08 Dec 2020 08:24:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=HSyExJl7cd4xIkyp8toEOPl4ozCtm+NQv2BdcFpoEZc=;
 b=gFyZ6SQhgWk5/Yw4+aKK5mgi0pEyQjbvLa7IfQyFqQFqIHU8oyaa5K0MUk0Clsgpxx
 d2CBj2hSE7mWprkza0S7Kr/iWVQvSV+Y6vj72nyaXce3vtuwC1/wRVxUXNovkdPAlH1S
 bX28a1ESRDZ4nFhkS6DH8vhHQSVP5BB3mspwg4TRg9c2b4onJfpsYx7sK3ElX6WZpOC6
 N1xtJp0dGegieBjGtRIcu/SAyD/HDpnpHSrJwXZsfL6mPjP64jW0h60/YcMXNqIGvpe7
 PTSITO/zCo7tCuucmUevObrAPewlEpVkr7SjeUUAqRvKY5Rwx/QgZ5e/ibwO4UHdwu4k
 yamg==
X-Gm-Message-State: AOAM5310+vW2Y6ScG2XG8a2CuO/a+E+QIXG8JY4kKRlsjRh6ixrigL+Q
 CvrwWAXCcm19aQ5CRN666UqY2kurJNM7JsR2RsJ+fUZeDqxX
X-Google-Smtp-Source: ABdhPJxHYoyiUqUwwYS9+jZI0SJfT9+SzZyPXCYnkfWgYNGZwBVj7ggFtyKt4Au1zc2qCeZTaib8l2L8pQvOMKodUzTGs2Vl/kQM
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2b01:: with SMTP id
 p1mr17378546iov.156.1607444642985; 
 Tue, 08 Dec 2020 08:24:02 -0800 (PST)
Date: Tue, 08 Dec 2020 08:24:02 -0800
In-Reply-To: <20201208160703.GB1298255@rowland.harvard.edu>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f0fb0d05b5f65e64@google.com>
From: syzbot <syzbot+9be25235b7a69b24d117@syzkaller.appspotmail.com>
To: andreyknvl@google.com, gregkh@linuxfoundation.org, 
 legousb-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, starblue@users.sourceforge.net, 
 stern@rowland.harvard.edu, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1kmfma-003k5Q-IQ
Subject: Re: [Legousb-devel] general protection fault in tower_disconnect
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: legousb-devel-bounces@lists.sourceforge.net

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+9be25235b7a69b24d117@syzkaller.appspotmail.com

Tested on:

commit:         08a02f95 USB: add RESET_RESUME quirk for Snapscan 1212
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
kernel config:  https://syzkaller.appspot.com/x/.config?x=d24ee9ecd7ce968e
dashboard link: https://syzkaller.appspot.com/bug?extid=9be25235b7a69b24d117
compiler:       gcc (GCC) 10.1.0-syz 20200507
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1406a80f500000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
