---
layout: post
title: "Test Scenarios"
date: 2004-06-01 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
<b>Test environments as of 1.1</b><br/>
<b>SSL Servers</b>
<ul>
<li>PeerSec httpsReflector (All platforms)</li>
<li>Mbedthis AppWeb (Linux, Windows)</li>
<li>OpenSSL s_server</li>
</ul>
<b>SSL Clients</b>
<ul>
<li>PeerSec httpsClient (All platforms)</li>
<li>Microsoft IE 6 (Windows 2K, XP)</li>
<li>Mozilla/Firefox 1.6 (Linux, Windows, MacOS X)</li>
<li>Opera 7 (Windows)</li>
<li>MacOS Safari (MacOS X)</li>
<li>Camino (MacOS X)</li>
<li>OpenSSL s_client 0.9.7c (Linux, Windows)</li>
<li>OpenSSL s_time 0.9.7c (Linux, Windows)</li>
<li>GnuTLS gnutls-cli-debug (Linux)</li>
</ul>
<b>Build Environment</b>
<ul>
<li>Linux (RedHat 9, All Debian platforms, gcc 3.2.2)</li>
<li>uClinux (gcc MIPS cross compiler)</li>
<li>VxWorks (Tornado 5.4, i386 BSP)</li>
<li>Windows CE (Embedded Visual C 3.0, PocketPC environment)</li>
<li>Microsoft Windows (2K & XP, Visual Studio .NET)</li>
<li>MacOS X (10.1.5, gcc 2.95.2)</li>
<li>Debug and Release builds</li>
<li>Enabled various optional feature combinations in matrixConfig.h</li>
</ul>
<b>Certificates</b>
<ul>
<li>OpenSSL generated certificates and private keys.</li>
<li>3DES encrypted private keys.</li>
<li>1024 and 2048 bit RSA keys.</li>
<li>Multiple certificates in a single file are not supported</li>
<li>Various X.509 certificate format and contents validation checks</li>
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
<li>All tests run under <a href="http://valgrind.kde.org/" target='_new'>Valgrind</a> to detect memory leaks and overruns</li>
<li>Verification of zero memory growth during longevity testing</li>
<li>Used the following for longevity testing:<br /><span style="font-size:small;font-family:courier">openssl s_time -connect 'ip':4433 -www / -time 'seconds' -cipher 'cipher' -ssl3</span></li>
</ul>
<b>Architecture Testing</b>
<ul>
<li>IA32</li>
<li>PowerPC</li>
<li>Mips32</li>
</ul>
