---
layout: post
title: "MatrixSSL 1.0 Beta 2"
date: 2004-03-02 10:00:00
author: Admin
categories:
- blog
- releases
image:
thumb:
---
We have just released a second beta version of MatrixSSL for download.  Final release is just around the corner, but we wanted to get our client side SSL implementation some beta time.
<p />
Release Notes:
<ul>
<li>RC4-MD5 and RC4-SHA are now enabled by default.</li>
<li><i>httpClient</i> and <i>httpReflector</i> must be "Set As StartUp Project" project in their respective VisualStudio solutions in order to run automatically in the debugger in Windows.</li>
<li>Certificate validation currently checks only that the certificate was signed by the root CA, and that other internals are consistent.  User level checks of the distinguished name will be added in final release.</li>
</ul>
<p />
Change Log:
<ul>
<li>Added client side SSL support</li>
<li>Added X.509 certificate parsing and basic validation</li>
<li>Added <i>httpClient</i> example</li>
<li>Added several new APIs for client side SSL</li>
<li>Enhanced client and reflector example with support for pipelined requests</li>
<li>Fixed length check in record parsing that could lead to a comparison beyond memory boundaries.</li>
<li>Fixed SSL record version check that could allow invalid record versions to be sent.  As only SSLv3 was supported, this did not cause a security concern.</li>
<li>Added workaround for bug in Microsoft Internet Explorer, where negotiated version is sent in the encrypted premaster secret, rather than the requested version as per specification.</li>
<li>Minor updates to cryptography code suggested by Tom St. Denis.</li>
</ul>
<p />
