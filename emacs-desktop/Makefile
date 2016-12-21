# $NetBSD: Makefile,v 1.3 2011/01/28 05:15:04 makoto Exp $
# $Id: Makefile,v 1.21 2016/03/27 13:32:46 makoto Exp $

DISTNAME=       emacs-desktop-${EMACS_TYPE:C/emacs//}em0.991
CATEGORIES=     personal-pkgsrc
MASTER_SITES=   http://cvsweb.ki.nu/mef/personal-pkgsrc
DISTFILES=      # empty

PKG_DESTDIR_SUPPORT=    user-destdir    # really meaningless for meta-pkg
MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Emacs for Desktop

DEPENDS += compface-[0-9]*:../../graphics/compface
DEPENDS += libXaw3d-[0-9]*:../../x11/libXaw3d
#EPENDS += xpm-3.4k:../../graphics/xpm/
DEPENDS += emacs26-[0-9]*:../../wip/emacs-git
#EPENDS += emacs25-[0-9]*:../../wip/emacs-snapshot

# To avoid depending to MesaLib-7.4.4
#DEPENDS += MesaLib-[0-9]*:../../wip/MesaLib

# to avoid devel/apel for oldstye backquote issue
DEPENDS += apel-[0-9]*:../../wip/apel-git
#DEPENDS += apel-[0-9]*:../../devel/apel
#DEPENDS += emacs-w3m-[0-9]*:../../wip/emacs-w3m-current
DEPENDS += wl-[0-9]*:../../wip/wl-git
DEPENDS += gnupg-[0-9]*:../../security/gnupg
DEPENDS += gnutls-[0-9]*:../../security/gnutls
DEPENDS += im-[0-9]*:../../mail/im
DEPENDS += auctex-[0-9]*:../../print/auctex
DEPENDS += tc-[0-9]*:../../wip/tc-git
DEPENDS += twittering-mode-[0-9]*:../../wip/twittering-mode-git
DEPENDS += x-face-e21-[0-9]*:../../local-mef/x-face-el
DEPENDS += mu-cite-[0-9]*:../../wip/mu-cite
DEPENDS += elscreen-[0-9]*:../../misc/elscreen
DEPENDS += umefont-ttf-[0-9]*:../../fonts/umefont-ttf
#DEPENDS += magit-[0-9]*:../../devel/magit
DEPENDS += anthy-[0-9]*:../../inputmethod/anthy
DEPENDS += tamago-tsunagi-[0-9]*:../../wip/tamago-tsunagi
DEPENDS += php-mode-[0-9]*:../../devel/php-mode
DEPENDS += riece-[0-9]*:../../chat/riece

META_PACKAGE=   yes

do-install:
	# empty

.include "../../mk/bsd.pkg.mk"
