---
layout: post
title: "Certificate Validation Limitations"
date: 2004-03-08 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
<b>Update: Fixed in 1.0</b>
<p/>
Support for certificate validation is limited in the beta release.  Certificates are validated either as self signed or as signed by a single parent root CA if specified in the matrixSslReadKeys() API.
<p />
The certificate contents are parsed but not currently accessible to the client application, so validation on expiration date or certificate name are not supported.
<p />
The next release of MatrixSSL will expose the parsed certificate through an API which will allow application level validation.
<p />
