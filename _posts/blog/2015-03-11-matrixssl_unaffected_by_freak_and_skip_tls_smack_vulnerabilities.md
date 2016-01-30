---
layout: post
title: "MatrixSSL Unaffected by FREAK and SKIP-TLS (SMACK) Vulnerabilities"
date: 2015-03-11 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
<b>Security Measures</b>
<ul>
<li><b>Factoring RSA Export Keys (FREAK)</b> - <a href="https://en.wikipedia.org/wiki/FREAK" target=_new>An attack that allowed a man-in-the-middle to force the use of deprecated weak export keys</a> does not affect MatrixSSL. Since MatrixSSL development began in 2002, export ciphers were never implemented and cannot be negotiated to. In addition, MatrixSSL has compile time defines for minimum key length supported for RSA, ECC and DH keys
(default 1024 bit, 256 bit and 1024 bit), so it is not possible for a weak key to be used, regardless.
</li>
<li><b>SKIP-TLS</b> - <a href="https://www.smacktls.com/" target=_new>An attack that exploited the complex SSL/TLS statemachine</a> does not affect MatrixSSL. The method of handling messages in MatrixSSL depends on 
the current state of the connection, the expected message type(s) and the actual incoming message type.
</li>
</ul>
<br/>
