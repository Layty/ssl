---
layout: post
title: "Mozilla Cipher Suites"
date: 2004-02-18 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
<p><b>Update: Fixed in Beta2 R2</b><br />
Mozilla 1.2, which ships with RedHat Linux 9.0 does not contain support for the default cipher suite built with MatrixSSL.  When trying to access a server running MatrixSSL through https, Mozilla will display the following error: "Mozilla and 'host' cannot communicate because they have no common encryption algorithms."  It appears this version of Mozilla has support for the other two built in MatrixSSL cipher suites (ARC4-MD5 and 3DES-SHA).   A workaround is to enable one of the other supported cipher suites in <i>matrixssl/src/matrixConfig.h</i> and recompile MatrixSSL.  Alternatively, upgrading to Mozilla 1.5 or 1.6 will fix the incompatibility.</p>
<p>Future releases of MatrixSSL will come with more cipher suites enabled by default to provide additional compatibility.  Support for export ciphers is not planned, however.  This means that browsers supporting only export level encryption will need to be updated to communicate with MatrixSSL.<br />
</p>
