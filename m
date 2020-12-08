Return-Path: <legousb-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+legousb-devel@lfdr.de
Delivered-To: lists+legousb-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 500532D2F35
	for <lists+legousb-devel@lfdr.de>; Tue,  8 Dec 2020 17:14:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <legousb-devel-bounces@lists.sourceforge.net>)
	id 1kmfdH-0002sS-45
	for lists+legousb-devel@lfdr.de; Tue, 08 Dec 2020 16:14:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3LGnPXwkbAEEv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kmbYt-0005th-8j
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 11:53:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5lIivfIegrOSwEr6lH8WZABgvU+Z1wH05JIi4bOtavM=; b=WuoDBXOXBq1nL1OkMQ0HSvgcHi
 c0pVjfuNgu2gGNGOPhDOd0TsgNDZ5VcOT8SkmV3Smom19oQJHYtufLH61F2bYGbJ1Ou/8SD2FaItK
 qEs2uUt5d5VPX4XIQsohit7EDXZuLkFX5RG443R9LpmIvRP5ZPqRcdHeQgot6Uaac/vY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5lIivfIegrOSwEr6lH8WZABgvU+Z1wH05JIi4bOtavM=; b=c
 Kax1ZUW8BMCzuwWHqkameRz3Zg/XBVgu+xH06c5Lg3eyBPt0/8iymVDRgNwKW0uyjSl2SLlEJ62n0
 1jQ9Ik/Jsgy4txYX7gUmUhUXSNBpkuJDYP9TH/rhW8/QlvClDdNvUdCxuzEuuDzXEpDh+YaxKTk3R
 c0LiZeebZoBRP5tg=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kmbYe-006WcO-MO
 for legousb-devel@lists.sourceforge.net; Tue, 08 Dec 2020 11:53:43 +0000
Received: by mail-il1-f199.google.com with SMTP id r3so15657686ila.3
 for <legousb-devel@lists.sourceforge.net>;
 Tue, 08 Dec 2020 03:53:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=5lIivfIegrOSwEr6lH8WZABgvU+Z1wH05JIi4bOtavM=;
 b=OvgsUg/SPGKSrpdoHMjvtPqydBVs1tyTARtgJ5l1k725abIvs7DaXDvL1jPzqwFAFB
 EZPSSe8RkH65Env9WUpL1HzxiK66OIjw5S3NfflW5eRDDrZc7+WkDXxd+2CMIOvbdaiG
 9+gE370MC966tkAJ3kjJAXvtUEPMU9Sn+kgEV/YFFTkfUQUkobmSplgepXl7tWd8uTE6
 DG7Iy75PWx+3Zg8yUNlSkT5eLPAKyQxf19AwPfgyCqof/o3GiTsJGJ6aKMI1ycs5vjCw
 BLw28ZL8chJvWvRwsdLXfqfPtBaL2Plo7Ljd6N/IzRy1dW7xPqCQUocL3PVt4y7jjRJg
 THsw==
X-Gm-Message-State: AOAM532KbcDhCcfbauXcnzaIjwKchrqlRBfN2WHfKiEj1bWQmMXeGmR6
 z6wiO94u5G+0Aqddh8Wi3CfyiU91s1UCmVsKQbjtCQi3tREE
X-Google-Smtp-Source: ABdhPJxHNbgZIU2Vh7UiPHS5oMJTw0UHCaSW5jJh4mCgIbTxaoIicxGAwcK70UvhNshe8AU3AZ+zr7iIeL4g5q3sANZcDO5EzuF2
MIME-Version: 1.0
X-Received: by 2002:a5e:9612:: with SMTP id a18mr2370150ioq.13.1607428396041; 
 Tue, 08 Dec 2020 03:53:16 -0800 (PST)
Date: Tue, 08 Dec 2020 03:53:16 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008c4f0f05b5f29682@google.com>
From: syzbot <syzbot+9be25235b7a69b24d117@syzkaller.appspotmail.com>
To: andreyknvl@google.com, gregkh@linuxfoundation.org, 
 legousb-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, starblue@users.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1kmbYe-006WcO-MO
X-Mailman-Approved-At: Tue, 08 Dec 2020 16:14:29 +0000
Subject: [Legousb-devel] general protection fault in tower_disconnect
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

syzbot found the following issue on:

HEAD commit:    08a02f95 USB: add RESET_RESUME quirk for Snapscan 1212
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
console output: https://syzkaller.appspot.com/x/log.txt?x=1435927b500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d24ee9ecd7ce968e
dashboard link: https://syzkaller.appspot.com/bug?extid=9be25235b7a69b24d117
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15145f07500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16b99413500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9be25235b7a69b24d117@syzkaller.appspotmail.com

usb 1-1: USB disconnect, device number 2
general protection fault, probably for non-canonical address 0xdffffc0000000013: 0000 [#1] SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000098-0x000000000000009f]
CPU: 0 PID: 7 Comm: kworker/0:1 Not tainted 5.10.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: usb_hub_wq hub_event
RIP: 0010:tower_disconnect+0x53/0x360 drivers/usb/misc/legousbtower.c:848
Code: 03 80 3c 02 00 0f 85 15 03 00 00 48 8b ab a8 00 00 00 48 b8 00 00 00 00 00 fc ff df 48 8d bd 98 00 00 00 48 89 fa 48 c1 ea 03 <0f> b6 04 02 84 c0 74 06 0f 8e 7b 02 00 00 48 c7 c6 40 07 bb 87 48
RSP: 0018:ffffc9000007f7c0 EFLAGS: 00010202
RAX: dffffc0000000000 RBX: ffff888117ec0000 RCX: ffffffff8381f807
RDX: 0000000000000013 RSI: ffffffff83bab792 RDI: 0000000000000098
RBP: 0000000000000000 R08: 0000000000000001 R09: ffffffff898cc4ef
R10: 0000000000000002 R11: 0000000000000000 R12: ffff888117ec0090
R13: ffff888117ec0078 R14: ffff888117ec0030 R15: ffff888117ec0098
FS:  0000000000000000(0000) GS:ffff8881f6a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f557af47550 CR3: 00000001090f3000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 usb_unbind_interface+0x1d8/0x8d0 drivers/usb/core/driver.c:458
 __device_release_driver+0x3bd/0x6f0 drivers/base/dd.c:1154
 device_release_driver_internal drivers/base/dd.c:1185 [inline]
 device_release_driver+0x26/0x40 drivers/base/dd.c:1208
 bus_remove_device+0x2eb/0x5a0 drivers/base/bus.c:533
 device_del+0x502/0xec0 drivers/base/core.c:3115
 usb_disable_device+0x35b/0x7b0 drivers/usb/core/message.c:1413
 usb_disconnect.cold+0x27d/0x780 drivers/usb/core/hub.c:2218
 hub_port_connect drivers/usb/core/hub.c:5074 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x1c8a/0x42d0 drivers/usb/core/hub.c:5591
 process_one_work+0x933/0x1520 kernel/workqueue.c:2272
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2418
 kthread+0x38c/0x460 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296
Modules linked in:
---[ end trace 5aeb1d199be5d5f2 ]---
RIP: 0010:tower_disconnect+0x53/0x360 drivers/usb/misc/legousbtower.c:848
Code: 03 80 3c 02 00 0f 85 15 03 00 00 48 8b ab a8 00 00 00 48 b8 00 00 00 00 00 fc ff df 48 8d bd 98 00 00 00 48 89 fa 48 c1 ea 03 <0f> b6 04 02 84 c0 74 06 0f 8e 7b 02 00 00 48 c7 c6 40 07 bb 87 48
RSP: 0018:ffffc9000007f7c0 EFLAGS: 00010202
RAX: dffffc0000000000 RBX: ffff888117ec0000 RCX: ffffffff8381f807
RDX: 0000000000000013 RSI: ffffffff83bab792 RDI: 0000000000000098
RBP: 0000000000000000 R08: 0000000000000001 R09: ffffffff898cc4ef
R10: 0000000000000002 R11: 0000000000000000 R12: ffff888117ec0090
R13: ffff888117ec0078 R14: ffff888117ec0030 R15: ffff888117ec0098
FS:  0000000000000000(0000) GS:ffff8881f6a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f557af47550 CR3: 00000001090f3000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Legousb-devel mailing list
Legousb-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/legousb-devel
