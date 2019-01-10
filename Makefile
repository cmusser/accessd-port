# $FreeBSD$

PORTNAME=	accessd
DISTVERSION=	3.0.1
CATEGORIES=	security

MAINTAINER=	cmusser@sonic.net
COMMENT=	Grant temporary access to host
USE_RC_SUBR=    accessd

USES=		cargo
USE_GITHUB=	yes
GH_ACCOUNT=	cmusser

CARGO_CRATES=	ansi_term-0.9.0 \
		argon2rs-0.2.5 \
		arrayvec-0.4.10 \
		atty-0.2.2 \
		autocfg-0.1.1 \
		backtrace-0.3.13 \
		backtrace-sys-0.1.28 \
		bitflags-0.9.1 \
		bitflags-1.0.4 \
		blake2-rfc-0.2.18 \
		byteorder-1.0.0 \
		bytes-0.4.4 \
		cc-1.0.28 \
		cfg-if-0.1.6 \
		clap-2.25.0 \
		constant_time_eq-0.1.3 \
		daemonize-0.3.0 \
		data-encoding-1.2.0 \
		dirs-1.0.4 \
		failure-0.1.5 \
		failure_derive-0.1.5 \
		fuchsia-zircon-0.3.3 \
		fuchsia-zircon-sys-0.3.3 \
		futures-0.1.14 \
		iovec-0.1.0 \
		kernel32-sys-0.2.2 \
		lazycell-0.4.0 \
		libc-0.2.46 \
		libsodium-sys-0.0.15 \
		linked-hash-map-0.3.0 \
		linked-hash-map-0.4.2 \
		log-0.3.8 \
		mio-0.6.9 \
		mio-named-pipes-0.1.5 \
		mio-uds-0.6.4 \
		miow-0.2.1 \
		net2-0.2.29 \
		nodrop-0.1.13 \
		num-traits-0.1.40 \
		pkg-config-0.3.9 \
		proc-macro2-0.4.24 \
		quote-0.3.15 \
		quote-0.6.10 \
		rand-0.4.3 \
		redox_syscall-0.1.50 \
		redox_users-0.2.0 \
		rustc-demangle-0.1.13 \
		scoped-tls-0.1.0 \
		scoped_threadpool-0.1.9 \
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
		syn-0.15.24 \
		synom-0.11.3 \
		synstructure-0.10.1 \
		term_size-0.3.0 \
		textwrap-0.6.0 \
		tokio-core-0.1.8 \
		tokio-io-0.1.2 \
		tokio-process-0.1.3 \
		tokio-signal-0.1.2 \
		unicode-segmentation-1.1.0 \
		unicode-width-0.1.4 \
		unicode-xid-0.0.4 \
		unicode-xid-0.1.0 \
		vec_map-0.8.0 \
		winapi-0.2.8 \
		winapi-0.3.6 \
		winapi-build-0.1.1 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		ws2_32-sys-0.2.1 \
		yaml-rust-0.3.5

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ipfw-ssh.sh ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
