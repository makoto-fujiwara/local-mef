# $NetBSD: Makefile,v 1.3 2011/01/28 05:15:04 makoto Exp $
# $Id: Makefile,v 1.21 2016/03/27 13:32:46 makoto Exp $

DISTNAME=       config-more-0.01
CATEGORIES=     local-mef
MASTER_SITES=   http://cvsweb.ki.nu/mef/personal-pkgsrc
DISTFILES=      # empty

PKG_DESTDIR_SUPPORT=    user-destdir    # really meaningless for meta-pkg
MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Emacs for Desktop

DEPENDS+= 	inkscape-[0-9]*:../../graphics/inkscape
DEPENDS+= 	magicpoint-[0-9]*:../../graphics/magicpoint
DEPENDS+=	ja-ptex-[0-9]*:../../wip/ja-ptex
DEPENDS+=	klayout-[0-9]*:../../cad/klayout
DEPENDS+=	GDS2-[0-9]*:../../cad/p5-gds2
DEPENDS+=	gdsreader-[0-9]*:../../cad/gdsreader
DEPENDS+=	exif-[0-9]*:../../graphics/exif
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp


DEPENDS+=	cwdiff-[0-9]*:../../textproc/cwdiff
DEPENDS+=	wdiff-[0-9]*:../../textproc/wdiff
META_PACKAGE=   yes

do-install:
        # empty

.include "../../mk/bsd.pkg.mk"
