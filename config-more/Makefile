# $NetBSD$

DISTNAME=       config-more-2021.09
CATEGORIES=     meta-pkgs

PKG_DESTDIR_SUPPORT=    user-destdir    # really meaningless for meta-pkg
MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        More meta-pkgs

DEPENDS+= 	inkscape-[0-9]*:../../graphics/inkscape
DEPENDS+= 	magicpoint-[0-9]*:../../graphics/magicpoint

DEPENDS+=	exif-[0-9]*:../../graphics/exif
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp

#EPENDS+=	ja-ptex-[0-9]*:../../wip/ja-ptex
DEPENDS+=	ghostscript-cidfonts-ryumin-[0-9]*:../../fonts/ghostscript-cidfonts-ryumin

#EPENDS+=	klayout-[0-9]*:../../cad/klayout
DEPENDS+=	p5-gds2-[0-9]*:../../cad/p5-gds2
DEPENDS+=	gdsreader-[0-9]*:../../wip/gdsreader

DEPENDS+=	wpa_gui-[0-9]*:../../net/wpa_gui
DEPENDS+=	xenvstat-[0-9]*:../../sysutils/xenvstat

DEPENDS+=	cwdiff-[0-9]*:../../textproc/cwdiff
DEPENDS+=	wdiff-[0-9]*:../../textproc/wdiff
DEPENDS+=	ja-a2ps-[0-9]*:../../print/ja-a2ps

DEPENDS+=	openconnect-[0-9]*:../../net/openconnect
DEPENDS+=	nmap-[0-9]*:../../net/nmap
DEPENDS+=	libzip-[0-9]*:../../archivers/libzip
#EPENDS+=	xv-[0-9]*:../../graphics/xv
DEPENDS+=	p5-CGI-[0-9]*:../../www/p5-CGI
DEPENDS+=	p5-CGI-Session-[0-9]*:../../www/p5-CGI-Session
DEPENDS+=	qrencode-[0-9]*:../../converters/qrencode
DEPENDS+=	p5-Syntax-Highlight-Perl-Improved-[0-9]*:../../wip/p5-Syntax-Highlight-Perl-Improved
#EPENDS+=	nagios-base-[0-9]*:../../net/nagios-base
DEPENDS+=	kbuild-[0-9]*:../../devel/kbuild
DEPENDS+=	ssh-askpass-[0-9]*:../../security/ssh-askpass
DEPENDS+=	p5-Math-Bezier-[0-9]*:../../math/p5-Math-Bezier
DEPENDS+=	fontforge-[0-9]*:../../fonts/fontforge
DEPENDS+=	ripmime-[0-9]*:../../mail/ripmime

META_PACKAGE=   yes

.include "../../mk/bsd.pkg.mk"
