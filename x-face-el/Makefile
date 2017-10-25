# $NetBSD: Makefile,v 1.2 2011/01/19 03:49:34 makoto Exp $
#

DISTNAME=       x-face-e21
PKGNAME=	x-face-e21-0.1
MASTER_SITES=   http://www.jpl.org/ftp/pub/elisp/
CATEGORIES=     misc
EXTRACT_SUFX=   .el.gz

MAINTAINER=     pkgsrc-users@NetBSD.org
HOMEPAGE=       http://permalink.gmane.org/gmane.emacs.gnus.semi.japanese/2769
COMMENT=	Display x-face on mail header with emacs

PKG_DESTDIR_SUPPORT=    user-destdir

WRKSRC=	         ${WRKDIR}
USE_LANGUAGES=  # none

INSTALLATION_DIRS=      share/emacs/site-lisp/a-files
.include "../../wip/emacs-git/modules.mk"

do-build:
	pwd
	emacs -batch -f batch-byte-compile ${WRKSRC}/x-face-e21.el

do-install:
	${INSTALL_DATA}   ${WRKSRC}/x-face-e21.el   ${DESTDIR}${PREFIX}/${INSTALLATION_DIRS}
	${INSTALL_DATA}   ${WRKSRC}/x-face-e21.elc  ${DESTDIR}${PREFIX}/${INSTALLATION_DIRS}

.include "../../mk/bsd.pkg.mk"

