[RFC 3749](https://tools.ietf.org/html/rfc3749) Transport Layer Security Protocol Compression Methods
: Supported. Disabled by default due to security issues.

[RFC 4162](https://tools.ietf.org/html/rfc4162) Addition of SEED Cipher Suites to Transport Layer Security (TLS)
: Supported. Disabled by default at compile time.

[RFC 4279](https://tools.ietf.org/html/rfc4279) Pre-Shared Key Ciphersuites for Transport Layer Security (TLS)
: Supported:
: `TLS_DHE_PSK_WITH_AES_256_CBC_SHA`
: `TLS_DHE_PSK_WITH_AES_128_CBC_SHA`
: `TLS_PSK_WITH_AES_256_CBC_SHA`
: `TLS_PSK_WITH_AES_128_CBC_SHA`

[RFC 4492](https://tools.ietf.org/html/rfc4492) Elliptic Curve Cryptography (ECC) Cipher Suites for Transport Layer Security (TLS)
: Supported:
: `TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA`
: `TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA`
: `TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA`
: `TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA`
: `TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA`
: `TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA`
: `TLS_ECDH_RSA_WITH_AES_256_CBC_SHA`
: `TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA`
: `TLS_ECDH_RSA_WITH_AES_128_CBC_SHA`
: Supported Elliptic Curves:
: `secp192r1`, `secp224r1`, `secp256r1`, `secp384r1`, `secp521r1`
: Supported Point Formats:
: `uncompressed`

[RFC5077](https://tools.ietf.org/html/rfc5077) Transport Layer Security (TLS) Session Resumption without Server-Side State
: Supported (Session Tickets).

[RFC5246](https://tools.ietf.org/html/rfc5081) The Transport Layer Security (TLS) Protocol Version 1.2.
: Supported, including TLS 1.1 and 1.0.

[RFC 5288](https://tools.ietf.org/html/rfc5288) AES Galois Counter Mode (GCM) Cipher Suites for TLS
: Supported:
: `TLS_RSA_WITH_AES_256_GCM_SHA384`
: `TLS_RSA_WITH_AES_128_GCM_SHA256`

[RFC 5289](https://tools.ietf.org/html/rfc5289) TLS Elliptic Curve Cipher Suites with SHA-256/384 and AES Galois Counter Mode (GCM)
: Supported:
: `TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384`
: `TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384`
: `TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384`
: `TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256`
: `TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256`
: `TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384`
: `TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384`
: `TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256`
: `TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256`

[RFC 5430](https://tools.ietf.org/html/rfc5430) Suite B Profile for Transport Layer Security (TLS)
: Supported via compile time configuration.

[RFC 5469](https://tools.ietf.org/html/rfc5469) DES and IDEA Cipher Suites for Transport Layer Security (TLS)
: These ciphers are removed per spec:
: "...the single-DES cipher suites SHOULD NOT be implemented by TLS libraries ...the IDEA cipher suite SHOULD NOT be implemented by TLS libraries and SHOULD be removed from existing implementations."

[RFC 5487](https://tools.ietf.org/html/rfc5487) Pre-Shared Key Cipher Suites for TLS with SHA-256/384 and AES Galois Counter Mode
: Supported:
: `TLS_PSK_WITH_AES_256_CBC_SHA384`
: `TLS_PSK_WITH_AES_128_CBC_SHA256`

[RFC 5652](https://tools.ietf.org/html/rfc5652) Cryptographic Message Syntax (CMS)
: Supported with commercial license:

[RFC 5746](https://tools.ietf.org/html/rfc5746) Transport Layer Security (TLS) Renegotiation Indication Extension
: Supported. Extension required by compile time default.

[RFC 6066](https://tools.ietf.org/html/rfc6066) Transport Layer Security (TLS) Extensions: Extension Definitions
: `server_name` Server Name Indication Supported
: `max_fragment_length` Supported
: `client_certificate_url` Unsupported
: `trusted_ca_keys` Unsupported
: `truncated_hmac` Supported
: `status_request` OCSP Client Supported

[RFC 6176](https://tools.ietf.org/html/rfc6176) Prohibiting Secure Sockets Layer (SSL) Version 2.0
: Supported. SSL 2.0 (including ClientHello) deprecated.

[RFC 6347](https://tools.ietf.org/html/rfc6347) Datagram Transport Layer Security Version 1.2
: Supported, including DTLS 1.0.

[RFC 7027](https://tools.ietf.org/html/rfc7027) Elliptic Curve Cryptography (ECC) Brainpool Curves for Transport Layer Security (TLS)
: Supported Curves:
: `brainpoolP224r1`, `brainpoolP256r1`, `brainpoolP384r1`, `brainpoolP512r1`

[RFC 7301](https://tools.ietf.org/html/rfc7301) Transport Layer Security (TLS) Application-Layer Protocol Negotiation Extension
: Supported

[RFC 7457](https://tools.ietf.org/html/rfc7457) Summarizing Known Attacks on Transport Layer Security (TLS) and Datagram TLS (DTLS)
: Supported.

[RFC 7465](https://tools.ietf.org/html/rfc7465) Prohibiting RC4 Cipher Suites
: Supported. RC4 ciphers are disabled by default at compile time.

[RFC 7525](https://tools.ietf.org/html/rfc7525) Recommendations for Secure Use of Transport Layer Security (TLS) and Datagram Transport Layer Security (DTLS)
: Supported.

[RFC 7568](https://tools.ietf.org/html/rfc7568) Deprecating Secure Sockets Layer Version 3.0
: Supported. SSL 3.0 is disabled by default at compile time.

[RFC 7627](https://tools.ietf.org/html/rfc7627) Transport Layer Security (TLS) Session Hash and Extended Master Secret Extension
: Supported

[RFC 7925](https://tools.ietf.org/html/rfc7925) TLS/DTLS Profiles for the Internet of Things
: Supported via compile time configuration.

[RFC 7905](https://tools.ietf.org/html/rfc7905) ChaCha20-Poly1305 Cipher Suites for Transport Layer Security (TLS)
: Supported:
: `TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256`
: `TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256`

[RFC 7918](https://tools.ietf.org/html/rfc7918) Transport Layer Security (TLS) False Start
: Supported. Disabled by default due to security concerns.

