Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0752D2F36
	for <lists+legousb-devel@lfdr.de>; Tue,  8 Dec 2020 17:14:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1kmfdH-0002sX-4s
	for lists+legousb-devel@lfdr.de; Tue, 08 Dec 2020 16:14:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3C6TPXwkbAJYIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kmfTh-0000HJ-Le
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 16:04:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 In-Reply-To:Date:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JSyWoWyBEFIPX2b1ZTI+QDTg+k85MwyzaBHUirvFa+4=; b=HM75dPlha9mqIqjtZggsmBoMY7
 o9fTOiVWedNYvMVhddp2NwG3WmX4639HDVILVqNBCCBYAJ0vuho+QtqNTY6Dfk4MMI+1mNghCU9NF
 WLXSzKOyeiA2njo/jBNZoyySyeUtPH9zH+j9eUyPJies4WU+Rhyj473kSR95J2UG1v4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JSyWoWyBEFIPX2b1ZTI+QDTg+k85MwyzaBHUirvFa+4=; b=f
 NCsqRH/eHEE3oEzrgrBKGrnvsKyxyg5dDfKcGpR4F+uMXDCtlAL5w6TSWGbPWrHsm0osExaeNZR30
 TETQxneemimCZiEEKIdB0dTAd2U+6P1rKY3nlKpuo4nnK2OwHvSrSXe2tdybIaMRyJsN4g9CjJ5mI
 oUWYe7sJgGbKoFxE=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kmfTd-006lW9-6u
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 16:04:37 +0000
Received: by mail-il1-f200.google.com with SMTP id j18so16274913ilc.9
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 08 Dec 2020 08:04:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to:cc;
 bh=JSyWoWyBEFIPX2b1ZTI+QDTg+k85MwyzaBHUirvFa+4=;
 b=KKhgk+h+7u4XoJkyarlyTJmgk8tQSP3AqDBG4b/igmOrrjYnRxBhUTL8rBR4ZqklG/
 1KExEBeCT7ZpnNMHtIXb+NKC9EY0EvTvSDo3LPYq1sWw1dHkv03csn+f015aNsdnS6q9
 EkPgO9wyTzgGchC+qGyPHHEmCqBX82zk0sLw+2MO+QXIhp5/9XtH500hJsvjojjoivQB
 sgXJsnFx/Eb7XRPTKlOgATJYW8uYkAH6aJs6Ni/XCBBYlkON755qLVuQUYoBRW8dvmy7
 9yX78gcwlEwSn6QlRItw9fqqQ0dqyfUyVjNd5EmwbaFeUzzRvzYCsMvfRSkI447bm2a3
 wQWg==
X-Gm-Message-State: AOAM533nS2gf7Cs8is0ls8ctq3ELRBQ5g3zNaU5X6ZjMf0Aq3FyxPxo+
 LWZdp5xR8/byLUhukFxfwnF7cW27N1GWej8EGQN6WCknm6Wn
X-Google-Smtp-Source: ABdhPJzDWsnwO7MsPjoVC+BbCyQXOJg057+CSMvkBaOba4jVO/pQejUY3pAwlZ7mY7R/WoYvVxh0GYdyWfjyPUXS8zMIN1tr1CGs
MIME-Version: 1.0
X-Received: by 2002:a92:d34c:: with SMTP id a12mr13210746ilh.188.1607443467716; 
 Tue, 08 Dec 2020 08:04:27 -0800 (PST)
Date: Tue, 08 Dec 2020 08:04:27 -0800
In-Reply-To: <20201208160425.GA1298255@rowland.harvard.edu>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e3cf4905b5f618e1@google.com>
From: syzbot <syzbot+9be25235b7a69b24d117@syzkaller.appspotmail.com>
To: Alan Stern <stern@rowland.harvard.edu>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.200 listed in list.dnswl.org]
X-Headers-End: 1kmfTd-006lW9-6u
X-Mailman-Approved-At: Tue, 08 Dec 2020 16:14:29 +0000
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
Cc: starblue@users.sourceforge.net, andreyknvl@google.com,
 legousb-devel@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 stern@rowland.harvard.edu, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: legousb-devel-bounces@lists.sourceforge.net

> On Tue, Dec 08, 2020 at 03:53:16AM -0800, syzbot wrote:
>> Hello,
>> 
>> syzbot found the following issue on:
>> 
>> HEAD commit:    08a02f95 USB: add RESET_RESUME quirk for Snapscan 1212
>> git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
>> console output: https://syzkaller.appspot.com/x/log.txt?x=1435927b500000
>> kernel config:  https://syzkaller.appspot.com/x/.config?x=d24ee9ecd7ce968e
>> dashboard link: https://syzkaller.appspot.com/bug?extid=9be25235b7a69b24d117
>> compiler:       gcc (GCC) 10.1.0-syz 20200507
>> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15145f07500000
>> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16b99413500000
>> 
>> IMPORTANT: if you fix the issue, please add the following tag to the commit:
>> Reported-by: syzbot+9be25235b7a69b24d117@syzkaller.appspotmail.com
>> 
>> usb 1-1: USB disconnect, device number 2
>> general protection fault, probably for non-canonical address 0xdffffc0000000013: 0000 [#1] SMP KASAN
>> KASAN: null-ptr-deref in range [0x0000000000000098-0x000000000000009f]
>> CPU: 0 PID: 7 Comm: kworker/0:1 Not tainted 5.10.0-rc7-syzkaller #0
>> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
>> Workqueue: usb_hub_wq hub_event
>> RIP: 0010:tower_disconnect+0x53/0x360 drivers/usb/misc/legousbtower.c:848
>> Code: 03 80 3c 02 00 0f 85 15 03 00 00 48 8b ab a8 00 00 00 48 b8 00 00 00 00 00 fc ff df 48 8d bd 98 00 00 00 48 89 fa 48 c1 ea 03 <0f> b6 04 02 84 c0 74 06 0f 8e 7b 02 00 00 48 c7 c6 40 07 bb 87 48
>> RSP: 0018:ffffc9000007f7c0 EFLAGS: 00010202
>> RAX: dffffc0000000000 RBX: ffff888117ec0000 RCX: ffffffff8381f807
>> RDX: 0000000000000013 RSI: ffffffff83bab792 RDI: 0000000000000098
>> RBP: 0000000000000000 R08: 0000000000000001 R09: ffffffff898cc4ef
>> R10: 0000000000000002 R11: 0000000000000000 R12: ffff888117ec0090
>> R13: ffff888117ec0078 R14: ffff888117ec0030 R15: ffff888117ec0098
>> FS:  0000000000000000(0000) GS:ffff8881f6a00000(0000) knlGS:0000000000000000
>> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> CR2: 00007f557af47550 CR3: 00000001090f3000 CR4: 00000000001506f0
>> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>> Call Trace:
>>  usb_unbind_interface+0x1d8/0x8d0 drivers/usb/core/driver.c:458
>>  __device_release_driver+0x3bd/0x6f0 drivers/base/dd.c:1154
>>  device_release_driver_internal drivers/base/dd.c:1185 [inline]
>>  device_release_driver+0x26/0x40 drivers/base/dd.c:1208
>>  bus_remove_device+0x2eb/0x5a0 drivers/base/bus.c:533
>>  device_del+0x502/0xec0 drivers/base/core.c:3115
>>  usb_disable_device+0x35b/0x7b0 drivers/usb/core/message.c:1413
>>  usb_disconnect.cold+0x27d/0x780 drivers/usb/core/hub.c:2218
>>  hub_port_connect drivers/usb/core/hub.c:5074 [inline]
>>  hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
>>  port_event drivers/usb/core/hub.c:5509 [inline]
>>  hub_event+0x1c8a/0x42d0 drivers/usb/core/hub.c:5591
>>  process_one_work+0x933/0x1520 kernel/workqueue.c:2272
>>  worker_thread+0x64c/0x1120 kernel/workqueue.c:2418
>>  kthread+0x38c/0x460 kernel/kthread.c:292
>>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296
>> Modules linked in:
>> ---[ end trace 5aeb1d199be5d5f2 ]---
>> RIP: 0010:tower_disconnect+0x53/0x360 drivers/usb/misc/legousbtower.c:848
>> Code: 03 80 3c 02 00 0f 85 15 03 00 00 48 8b ab a8 00 00 00 48 b8 00 00 00 00 00 fc ff df 48 8d bd 98 00 00 00 48 89 fa 48 c1 ea 03 <0f> b6 04 02 84 c0 74 06 0f 8e 7b 02 00 00 48 c7 c6 40 07 bb 87 48
>> RSP: 0018:ffffc9000007f7c0 EFLAGS: 00010202
>> RAX: dffffc0000000000 RBX: ffff888117ec0000 RCX: ffffffff8381f807
>> RDX: 0000000000000013 RSI: ffffffff83bab792 RDI: 0000000000000098
>> RBP: 0000000000000000 R08: 0000000000000001 R09: ffffffff898cc4ef
>> R10: 0000000000000002 R11: 0000000000000000 R12: ffff888117ec0090
>> R13: ffff888117ec0078 R14: ffff888117ec0030 R15: ffff888117ec0098
>> FS:  0000000000000000(0000) GS:ffff8881f6a00000(0000) knlGS:0000000000000000
>> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> CR2: 00007f557af47550 CR3: 00000001090f3000 CR4: 00000000001506f0
>> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>
> This is a simple thinko.
>
> Alan Stern
>
> #syz test: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing 08a02f95

want 2 args (repo, branch), got 3

>
> Index: usb-devel/drivers/usb/misc/legousbtower.c
> ===================================================================
> --- usb-devel.orig/drivers/usb/misc/legousbtower.c
> +++ usb-devel/drivers/usb/misc/legousbtower.c
> @@ -797,7 +797,7 @@ static int tower_probe(struct usb_interf
>  				      &get_version_reply,
>  				      sizeof(get_version_reply),
>  				      1000, GFP_KERNEL);
> -	if (!result) {
> +	if (result) {
>  		dev_err(idev, "get version request failed: %d\n", result);
>  		retval = result;
>  		goto error;
>


_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
