# $NetBSD$

DISTNAME=       config-office-0.01
CATEGORIES=     local-mef
MASTER_SITES=   http://cvsweb.ki.nu/mef/personal-pkgsrc
DISTFILES=      # empty

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Set for Office work

META_PACKAGE=	yes

DEPENDS+=	emacs-desktop-[0-9]*:../../local-mef/emacs-desktop
DEPENDS+=	firefox-[0-9]*:../../www/firefox
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp
DEPENDS+=	libreoffice-[0-9]*:../../misc/libreoffice

DEPENDS+=	sudo-[0-9]*:../../security/sudo
DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	screen-[0-9]*:../../misc/screen
DEPENDS+=	zsh-[0-9]*:../../shells/zsh
DEPENDS+=	perl-[0-9]*:../../lang/perl5
DEPENDS+=	sendmail-[0-9]*:../../mail/sendmail

DEPENDS+=	git-base-[0-9]*:../../devel/git-base

DEPENDS+=	klayout-[0-9]*:../../cad/klayout
DEPENDS+=	p5-gds2-[0-9]*:../../cad/p5-gds2
DEPENDS+=	py[0-9]*-gdsCAD-[0-9]*:../../wip/py-gdscad

DEPENDS+=	pgstudio-[0-9]*:../../wip/pgstudio
DEPENDS+=	demime-[0-9]*:../../mail/demime
DEPENDS+=	ripmime-[0-9]*:../../mail/ripmime
DEPENDS+=	wget-[0-9]*:../../net/wget
DEPENDS+=	samba-[0-9]*:../../net/samba
DEPENDS+=	ja-a2ps-[0-9]*:../../print/ja-a2ps
DEPENDS+=	url2pkg-[0-9]*:../../pkgtools/url2pkg
DEPENDS+=	pkgin-[0-9]*:../../pkgtools/pkgin
DEPENDS+=	revbump-[0-9]*:../../pkgtools/revbump
DEPENDS+=	checkperms-[0-9]*:../../sysutils/checkperms
DEPENDS+=	xlockmore-[0-9]*:../../x11/xlockmore

DEPENDS+=	tex-platex-[0-9]*:../../print/tex-platex
DEPENDS+=	ghostscript-cidfonts-ryumin-[0-9]*:../../fonts/ghostscript-cidfonts-ryumin
DEPENDS+=	namazu-[0-9]*:../../local-mef/namazu-mef
DEPENDS+=	gnuplot-[0-9]*:../../graphics/gnuplot
DEPENDS+=	p5-Jcode-[0-9]*:../../converters/p5-Jcode
DEPENDS+=	apache-[0-9]*:../../www/apache24

#do-install:
#        # empty

.include "../../mk/bsd.pkg.mk"