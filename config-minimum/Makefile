# $NetBSD: Makefile,v 1.3 2011/01/28 05:15:04 makoto Exp $
# $Id: Makefile,v 1.21 2016/03/27 13:32:46 makoto Exp $

DISTNAME=       config-minimum-0.03
CATEGORIES=     local-mef
MASTER_SITES=   http://cvsweb.ki.nu/mef/personal-pkgsrc
DISTFILES=      # empty

PKG_DESTDIR_SUPPORT=    user-destdir    # really meaningless for meta-pkg
MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Emacs for Desktop

DEPENDS+= emacs-desktop-[0-9]*:../../local-mef/emacs-desktop

DEPENDS+= firefox-[0-9]*:../../www/firefox
DEPENDS+= gimp-[0-9]*:../../graphics/gimp
DEPENDS+= libreoffice-[0-9]*:../../misc/libreoffice
DEPENDS+= samba-[0-9]*:../../net/samba

DEPENDS+= rsync-[0-9]*:../../net/rsync
DEPENDS+= screen-[0-9]*:../../misc/screen
DEPENDS+= zsh-[0-9]*:../../shells/zsh
DEPENDS+= perl-[0-9]*:../../lang/perl5
DEPENDS+= pkglint-[0-9]*:../../pkgtools/pkglint

DEPENDS+= fvwm-[0-9]*:../../wm/fvwm
DEPENDS+= sendmail-[0-9]*:../../mail/sendmail
DEPENDS+= ipmitool-[0-9]*:../../sysutils/ipmitool

META_PACKAGE=   yes

do-install:
        # empty

.include "../../mk/bsd.pkg.mk"
