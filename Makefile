# $FreeBSD$

PORTNAME=	accessd
DISTVERSION=	2.0.1
CATEGORIES=	security

MAINTAINER=	cmusser@sonic.net
COMMENT=	Grant temporary access to host
USE_RC_SUBR=    accessd

USES=		cargo
USE_GITHUB=	yes
GH_ACCOUNT=	cmusser

CARGO_CRATES=	ansi_term-0.9.0 \
		atty-0.2.2 \
		bitflags-0.9.1 \
		byteorder-1.0.0 \
		bytes-0.4.4 \
		cfg-if-0.1.2 \
		clap-2.25.0 \
		daemonize-0.3.0 \
		data-encoding-1.2.0 \
		futures-0.1.14 \
		iovec-0.1.0 \
		kernel32-sys-0.2.2 \
		lazycell-0.4.0 \
		libc-0.2.26 \
		libsodium-sys-0.0.15 \
		linked-hash-map-0.3.0 \
		linked-hash-map-0.4.2 \
		log-0.3.8 \
		mio-0.6.9 \
		mio-named-pipes-0.1.5 \
		mio-uds-0.6.4 \
		miow-0.2.1 \
		net2-0.2.29 \
		num-traits-0.1.40 \
		pkg-config-0.3.9 \
		quote-0.3.15 \
		scoped-tls-0.1.0 \
		serde-1.0.11 \
		serde_bytes-0.10.1 \
		serde_cbor-0.6.1 \
		serde_derive-1.0.11 \
		serde_derive_internals-0.15.1 \
		serde_yaml-0.7.1 \
		slab-0.3.0 \
		sodiumoxide-0.0.15 \
		strsim-0.6.0 \
		syn-0.11.11 \
		synom-0.11.3 \
		term_size-0.3.0 \
		textwrap-0.6.0 \
		tokio-core-0.1.8 \
		tokio-io-0.1.2 \
		tokio-process-0.1.3 \
		tokio-signal-0.1.2 \
		unicode-segmentation-1.1.0 \
		unicode-width-0.1.4 \
		unicode-xid-0.0.4 \
		vec_map-0.8.0 \
		winapi-0.2.8 \
		winapi-build-0.1.1 \
		ws2_32-sys-0.2.1 \
		yaml-rust-0.3.5

.include <bsd.port.mk>
