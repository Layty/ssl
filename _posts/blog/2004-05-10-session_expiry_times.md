---
layout: post
title: "Session Expiry Times"
date: 2004-05-10 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
<p><b>Update: Fixed in 1.1</b></p>
<p><b>Background</b><br />
SSL session resumption allows session keys to be cached after a session is closed.  Future sessions can be negotiated much more quickly, without an expensive private key operation with this functionality.  MatrixSSL does not automatically flush cached session information based on a fixed time period.</p>
<p><b>Solution</b><br />
Sessions are deleted based on their age in the session cache; once it is full, the oldest unused session data is deleted and must be re-negotiated by a client reconnecting.  Cache entries are also cleared if there was an error on the SSL connection of any kind, or if the SSL server process is restarted.  ARC4 cipher data throughput is also monitored to force re-keying after a maximum safe amount of data is encrypted (MatrixSSL block ciphers do not require this restriction).  A future MatrixSSL release will prevent the lookup of sessions that are "stale" by a predetermined period (several days) time.</p>
<p><b>Workaround</b><br />
The session cache may be periodically flushed manually if desired by the calling application.</p>
