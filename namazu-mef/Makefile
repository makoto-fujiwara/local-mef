# $NetBSD: Makefile,v 1.30 2006/03/18 22:22:31 wiz Exp $

DISTNAME=	namazu-2.0.21
MEFREVISION=	2

CATEGORIES=	japanese textproc www
MASTER_SITES=	http://www.namazu.org/stable/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.namazu.org/index.html.en
COMMENT=	Full-text search system intended for easy use
LICENSE=	gnu-gpl-v2

DEPENDS+=	p5-File-MMagic>=1.25:../../misc/p5-File-MMagic
DEPENDS+=	p5-nkf>=1.7:../../converters/p5-nkf
DEPENDS+=	nkf-[0-9]*:../../converters/nkf
DEPENDS+=	ack-[0-9]*:../../converters/ack

BUILD_DEPENDS+= gsed-[0-9]*:../../textproc/gsed

CONFLICTS+=	namazu-[0-9]*

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		perl:run awk csh make perl
GNU_CONFIGURE=		yes
USE_LANGUAGES=		c
USE_LIBTOOL=		yes
TEST_TARGET=		check
PKG_DESTDIR_SUPPORT=	user-destdir
MAKE_ENV+=		LANG=ja_JP.eucJP

CONFIGURE_ARGS+=	--localstatedir=${PREFIX}/${DATADIR} \
			--libexecdir=${PREFIX}/libexec/cgi-bin \
			--sysconfdir=${PKG_SYSCONFBASEDIR}
DATADIR=		libdata
EXAMPLESDIR=		share/examples/namazu
EXAMPLES=		mknmzrc namazurc
INSTALLATION_DIRS+=	${DATADIR}/namazu ${EXAMPLESDIR}

PKGNAME:=		${DISTNAME}mef${MEFREVISION}

.include "../../mk/bsd.prefs.mk"

PKG_SYSCONFSUBDIR=	namazu
.for f in ${EXAMPLES}
CONF_FILES+=		${EXAMPLESDIR}/${f}	${PKG_SYSCONFDIR}/${f}
.endfor
MAKE_DIRS+=		${DATADIR}/namazu/index
OWN_DIRS+=		${PKG_SYSCONFDIR} ${DATADIR}/namazu
MAKE_JOBS_SAFE=		no

pre-build:
	${ECHO} pre-build is running
	env LANG=ja_JP.eucJP csh ${FILESDIR}/japanize.csh ${WRKSRC}
#	cd ${WRKSRC}    && ./make_sjis_po
	cd ${WRKSRC}/po && make update-gmo
post-extract:
	cd ${WRKSRC} && perl ${FILESDIR}/patch-filter
	${CP} ${FILESDIR}/make_sjis_po ${WRKSRC}

post-install:
#	${INSTALL_DATA_DIR} ${DATADIR}/namazu
#	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for f in ${EXAMPLES}
	cd ${WRKSRC}/conf && ${INSTALL_DATA} ${f}-sample \
		${DESTDIR}${PREFIX}/${EXAMPLESDIR}/${f}
.endfor

.include	"options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
