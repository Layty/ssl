---
layout: post
title: "RSA Blinding"
date: 2004-04-30 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
<p><b>Update: Fixed in 1.1</b></p>
<p><b>Background</b><br />
MatrixSSL does not currently support RSA Blinding, a technique used to combat a specific timing attack against the RSA math operations.  Information on the <a href="suif.stanford.edu/ collective/usenixsec03-openssltiming.pdf " target=_new>RSA timing attack is available in this PDF</a>.  The attack works by sending millions of specific handshake messages to an SSL server and measuring the response times.  If network latency variations are low, the time taken to do the RSA operation on each handshake can be used to statistically determine the RSA private key.</p>
<p><b>Solution</b><br />
The most well regarded solution for this issue is to "blind" the operation by including a calculation based on random data for each RSA operation.  This will make it impossible to guess the keys based on timing the operation.  We are looking to provide this solution on a future MatrixSSL release.</p>
<p><b>Workarounds</b><br />
In the short term, a workaround that is suitable for many embedded devices is to throttle the number of SSL connections per second to limit the number of attack messages that can be sent.  Alternately, forcing the response time for the handshake message to, for example, 100ms can provide blinding as well.</p>
