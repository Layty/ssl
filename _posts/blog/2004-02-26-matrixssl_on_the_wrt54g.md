---
layout: post
title: "MatrixSSL on the WRT54G"
date: 2004-02-26 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
We've built MatrixSSL for the <a href="http://www.linksys.com/products/product.asp?grid=33&scid=35&prid=601" target=_new>Linksys WRT54G</a> wireless router.  This is a linux based router that has open firmware available directly from the manufacturer.  Here are the specs:
<ul>
<li>uClinux 2.4.20 kernel</li>
<li>200Mhz MIPS32 processor</li>
<li>4 MB Flash Memory</li>
<li>16 MB RAM</li>
<li>5 100Mbit ethernet ports</li>
</ul>
Developing for this platform is very straightforward and shows how easy it is to port Linux applications to embedded Linux.  No changes to MatrixSSL code are required for embedded Linux, just point the Makefile at the relevant cross compiler and you're good to go.  Here are some performance numbers running our https server on the WRT54G:
<ul>
<li>110 SSL connections opened/closed per second (SSL resumption handshake + closure alert)</li>
<li>500 keepalive HTTP request/responses over an SSL connection using RC4-SHA cipher suite.</li>
</ul>
