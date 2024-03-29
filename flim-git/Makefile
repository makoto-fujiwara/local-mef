# $NetBSD: Makefile,v 1.38 2016/12/12 11:42:49 hauke Exp $

DISTNAME=	flim-1.14.9
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	4
CATEGORIES=	devel
MASTER_SITES=	http://www.kanji.zinbun.kyoto-u.ac.jp/~tomo/comp/emacsen/lisp/flim/flim-1.14/

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=	http://git.chise.org/elisp/flim/
COMMENT=	Emacs lisp library for message representation/encoding
LICENSE=	gnu-gpl-v2 OR gnu-gpl-v3

BUILD_DEPENDS+=	qkc-[0-9]*:../../converters/qkc

INSTALLATION_DIRS+=	${EMACS_LISPPREFIX:C|^${PREFIX}/||}/flim \
			${EMACS_INFOPREFIX:C|^${PREFIX}/||}

BUILD_TARGET=	${BUILD_TARGET.${EMACS_FLAVOR}}
INSTALL_TARGET=	${INSTALL_TARGET.${EMACS_FLAVOR}}
MAKEFLAGS=	${MAKEFLAGS.${EMACS_FLAVOR}}

USE_TOOLS+=	makeinfo
INFO_FILES=	yes
TEXINFO_REQD=	4.5

BUILD_TARGET.emacs=	elc
BUILD_TARGET.xemacs=	package
INSTALL_TARGET.emacs=	install
INSTALL_TARGET.xemacs=	install-package
MAKEFLAGS.emacs+=	EMACS=${EMACS_BIN}
MAKEFLAGS.xemacs+=	XEMACS=${EMACS_BIN} \
			PACKAGEDIR=${EMACS_LISPPREFIX:C|/lisp$||}

EMACS_MODULES=		base
EMACS_BUILDLINK=	# empty

# string-to-int to string-to-number
#SUBST_CLASSES+=		s2i
#SUBST_MESSAGE.s2i=	string-to-int is an obsolete function; use `string-to-number' instead
#SUBST_STAGE.s2i=	post-patch
#SUBST_FILES.s2i=	mime-parse.el
#SUBST_SED.s2i=		-e s/string-to-int/string-to-number/g

post-patch:
	${RM} -f ${WRKSRC}/hmac-def.el
	${RM} -f ${WRKSRC}/hex-utile.el

post-build:
	cd ${WRKSRC}; for i in mime-en mime-ja; do			\
		${RM} -f $${i}.info*;					\
		${CP} $${i}.texi $${i}.texi.orig;			\
		${PREFIX}/bin/qkc -Oeu $${i}.texi.orig >$${i}.texi;	\
		makeinfo --force --no-validate $${i}.texi;		\
	done

do-install: plist
	cd ${WRKSRC};							\
	grep -v '^@' ${PLIST} | grep -E '/site-(|packages/)lisp/flim/' | \
	while read file; do						\
		file=$$( basename $$file );				\
		${INSTALL_DATA} $$file					\
		    ${DESTDIR}${EMACS_LISPPREFIX}/flim/$$file;		\
	done

post-install:
	cd ${WRKSRC}; for f in mime-*.info mime-*.info-[0-9]*; do	\
		${TEST} ! -f "$$f" ||					\
		${INSTALL_DATA} "$$f" ${DESTDIR}${EMACS_INFOPREFIX};	\
	done

.include "../../editors/emacs/modules.mk"

.if (${EMACS_FLAVOR} != "xemacs")
BUILDLINK_API_DEPENDS.apel+=	apel>=10.8
.include "../../devel/apel/buildlink3.mk"
.endif

.include "../../mk/bsd.pkg.mk"
