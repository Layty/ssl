---
layout: post
title: "BEAST Attack on SSL"
date: 2011-10-07 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
	In Sept. 2011 security researchers demonstrated how a previously known CBC encryption weakness could be used to decrypt HTTP data over SSL. The attack was named BEAST (Browser Exploit Against SSL/TLS).  As with previous man-in-the-middle SSL vulnerabilities, the attack is generally considered a very low risk for individual browsers as it requires the attacker to have control over the network.  Additionally, in this specific exploit they will also have to have a mechanism to elicit known HTTPS responses from the client. Most MatrixSSL users do not fall into the category of vulnerable uses.
<p/>
<b>Solutions</b>
<ol>
<li><b>MatrixSSL 3.2.2</b> - Released on October 7th, version 3.2.2 includes a fix to thwart this attack for client implementations.  The solution has been implemented internally to the library and uses an IV obfuscation technique by breaking up each application data record in two. The first being just a single byte of the plaintext message, the second containing the remainder.  This is the same approach the <a href="http://src.chromium.org/viewvc/chrome?view=rev&revision=97269" target=_new>Chrome team at Google introduced</a> in their solution to the issue. This fix is enabled by default for clients that are using SSLv3 or TLS1.0 coupled with a CBC block cipher.</li>
<li><b>MatrixSSL 3.2.*</b> - This exploit can also be thwarted simply by using TLS protocol version 1.1 or by using a cipher suite that implements a stream cipher such as SSL_RSA_WITH_RC4_128_SHA. TLS 1.1 is enabled by default in MatrixSSL 3.2 and above and will be negotiated to if the peer also supports that version.</li>
<li><b>All MatrixSSL Versions</b> - A zero length record proceeding a data record has been a known fix to this problem for years and MatrixSSL has always supported the encoding and processing of empty records.  Current MatrixSSL users can manually add this fix to existing versions by simply calling matrixSslEncodeWritebuf with a 0 length prior to encoding the actual application data.  It should be noted that some SSL implementations do not handle 0 length records and this is the primary reason this solution did not become widespread.</li>
</ol>
