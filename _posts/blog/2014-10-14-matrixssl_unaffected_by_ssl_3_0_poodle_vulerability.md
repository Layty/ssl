---
layout: post
title: "MatrixSSL Unaffected by SSL 3.0 POODLE Vulnerability"
date: 2014-10-14 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
<b>Security Measures</b>
<ul>
<li><b>POODLE Vulnerability in SSL 3.0</b> - <a href="https://www.imperialviolet.org/2014/10/14/poodle.html" target=_new>An attack against the SSL 3.0 random padding method for block ciphers</a> was proven to be feasible. This was a known weakness and fixed in TLS 1.0 (SSL version 3.1), but only recently was attack code produced. MatrixSSL is not affected by the POODLE vulnerability: SSL 3.0 is disabled by default since version 3.3.1 on July 16, 2012. We recommend deprecating use of SSL 3.0 and moving directly to TLS 1.2.
</li>
</ul>
<br/>
