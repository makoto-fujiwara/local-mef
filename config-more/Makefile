# $NetBSD$

DISTNAME=       config-more-0.02
CATEGORIES=     meta-pkgs

PKG_DESTDIR_SUPPORT=    user-destdir    # really meaningless for meta-pkg
MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        More meta-pkgs

DEPENDS+= 	inkscape-[0-9]*:../../graphics/inkscape
DEPENDS+= 	magicpoint-[0-9]*:../../graphics/magicpoint

DEPENDS+=	exif-[0-9]*:../../graphics/exif
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp

DEPENDS+=	ja-ptex-[0-9]*:../../wip/ja-ptex
DEPENDS+=	ghostscript-cidfonts-ryumin-[0-9]*:../../fonts/ghostscript-cidfonts-ryumin

DEPENDS+=	klayout-[0-9]*:../../cad/klayout
DEPENDS+=	p5-gds2-[0-9]*:../../cad/p5-gds2
DEPENDS+=	gdsreader-[0-9]*:../../cad/gdsreader

DEPENDS+=	wpa_gui-[0-9]*:../../net/wpa_gui

DEPENDS+=	cwdiff-[0-9]*:../../textproc/cwdiff
DEPENDS+=	wdiff-[0-9]*:../../textproc/wdiff

META_PACKAGE=   yes

.include "../../mk/bsd.pkg.mk"
