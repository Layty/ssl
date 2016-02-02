---
layout: post
title: "MatrixSSL OS Calls"
date: 2004-02-06 10:00:00
author: Admin
categories:
- blog
- news
image:
thumb:
---
The following operating system calls are used within MatrixSSL.  Justification and alternatives for each set of calls is given.

<table class="table">
<tr><th>Memory&nbsp;Allocation</th><th></th>
<tr><td>
malloc()<br />
realloc()<br />
free()<br />
calloc()
</td><td>Memory allocation is done with pre-determined buffer sizes in most cases.  The RSA code uses various memory sizes however, so arbitrary block allocation must be supported in a custom implementation of these routines. Any suitable library replacement for standard memory allocation semantics can be used with MatrixSSL.  Example implementations of these functions are included in matrixssl/src/os/malloc.c
</td></tr>
<tr><th>Memory&nbsp;Operations</th><th></th>
<tr><td>
memcmp()<br />
memcpy()<br />
memset()<br />
strstr()<br />
strlen()
<td>
These functions can easily be replaced with custom implementations, should they not be present in the standard platform library.
</td></tr>
<tr><th>File&nbsp;Access</th><th></th>
<tr><td>
stat()<br />
fopen()<br />
fclose()<br />
fgets()
<td>
File access functions are used only to read certificate and private key files.  If a filesystem is not supported, the matrixSslReadKeysMem() API, defined in matrixInternal.h can be used to parse certificates and keys from memory buffers, allowing operation without a filesystem.  Disable the USE_FILE_SYSTEM define in matrixConfig.h to disable the file system calls on systems that do not support them.
</td></tr>
<tr><th>Time</th><th></th>
<tr><td>
time()
<td>
The time() routine is used to check expiration of the session cache, and to provide the first four bytes of the ServerRandom value.  Any known-scale time value such as clock ticks since startup can be used for the first value.  The ServerRandom value should have a monotonically increasing value that is preserved across machine restarts to help prevent replay based attacks.  Intel platforms use a processor dependant high resolution timer rather than the time() system call.
</td></tr>
<tr><th>Debugging</th><th></th>
<tr><td>
printf()<br />
abort()
<br />
</td><td>These functions are used only for debugging and can easily be replaced by other mechanisms of error reporting.
</td></tr>
<tr><th>Multithreading</th><th></th>
<tr><td>
Mutex APIs<br />
<td>
Mutex locks are used only to protect the session cache if multiple threads have simultaneous sessions open.  Systems without mutex support typically also lack threading support so these functions should not need to be ported. Disabling the USE_MULTITHREADING define in matrixConfig.h will disable all mutex code.  The abstraction layer for thread synchronization is in the OS specific directories under matrixssl/src/os.
</td></tr>
<tr><th>Forked Processing</th><th></th>
<tr><td>
&nbsp;<br />
<td>
Applications using fork() to handle new connections are common on Unix based platforms.  Because the MatrixSSL session cache is located in the process data space, a forked process will not be able to update the master session cache, thereby preventing future sessions from being able to take advantage of this speed improvement.  In order to support session resumption in forked servers, a file or shared memory based session cache must be implemented.  Please <a href="support.html">contact us</a> for additional help in this area. 
</td></tr>
<tr><th>Networking</th><th></th>
<tr><td>
Sockets APIs<br />
<td>
MatrixSSL operates independently from the network layer.  Existing socket code tuned to your platform can continue to send and receive data that is encoded and decoded by MatrixSSL in memory.
</td></tr>
<tr><th>Entropy&nbsp;Gathering</th><th></th>
<tr><td>
Random Data
<td>
In order to create a secure SSL connection, <b>it is critical to have a source of good random data on each platform</b>.  Ports of MatrixSSL to any platform <b>must</b> support the gathering of cryptographically random entropy bytes.  Operating systems typically provide this data through kernel level timers, random keyboard events, etc.  Embedded systems are much more predictable in terms of user and kernel timings, so drivers for hardware based entropy are usually used in this case.  The built in entropy gathering API, sslGetEntropy() is implemented in the OS specific directories under matrixssl/src/os.
</td></tr>
</table>
