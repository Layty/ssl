---
layout: post
title: "Beta Test Plan"
date: 2004-01-27 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
In order simplify the testing that our beta customers do, here is a list of the testing we have done prior to this release.<br/>
<b>SSL Servers</b>
<ul>
<li>PeerSec httpReflector (Linux, Windows)</li>
<li>Mbedthis AppWeb (Linux, Windows)</li>
<li>Blocking and non-blocking sockets tested</li>
</ul>
<b>SSL Clients</b>
<ul>
<li>Microsoft IE 6 (Windows 2K, XP)</li>
<li>Mozilla 1.6 (Linux, Windows)</li>
<li>Opera 7 (Windows)</li>
<li>OpenSSL s_client 0.9.7c (Linux, Windows)</li>
<li>OpenSSL s_time 0.9.7c (Linux, Windows)</li>
</ul>
<b>Build Environment</b>
<ul>
<li>Linux (RedHat 9, gcc 3.2.2)</li>
<li>Microsoft Windows (2K & XP, Visual Studio .NET)</li>
<li>Debug and Release builds</li>
</ul>
<b>Certificates</b>
<ul>
<li>OpenSSL generated certificates and private keys were tested.</li>
<li>3DES encrypted private keys tested.</li>
<li>1024 and 2048 bit RSA keys.</li>
<li>Multiple certificates in a single file are not supported</li>
</ul>
<b>Cipher Suites and Protocol Levels</b>
<ul>
<li>All combinations of cipher suites: RC4-MD5, RC4-SHA and DES-CBC3-SHA</li>
<li>1024 and 2048 bit RSA keys</li>
<li>Tested negotiation to best cipher suite with multiple clients</li>
<li>Verified correct error sent if negotiating to SSLv2 and TLS-only</li>
<li>Successful parsing of SSLv2 ClientHello and negotiating down to SSLv3 from TLS</li>
</ul>
<b>Longevity Testing</b>
<ul>
<li>Overnight testing using OpenSSL s_time SSL tests on Linux and Windows.</li>
<li>Verification of zero memory growth during longevity testing</li>
<li>Used the following for longevity testing:<br /><span style="font-size:small;font-family:courier">openssl s_time -connect 'ip':4433 -www / -time 'seconds' -cipher 'cipher' -ssl3</span></li>
</ul>
<b>Cryptography Provider</b>
<ul>
<li>PeerSec only</li>
</ul>
<b>Architecture Testing</b>
<ul>
<li>IA32 only</li>
</ul>
<br />
