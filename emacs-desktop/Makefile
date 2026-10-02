# $NetBSD$

DISTNAME=       emacs-desktop-${EMACS_TYPE:C/emacs//}em0.14
CATEGORIES=     local-mef

PKG_DESTDIR_SUPPORT=    user-destdir    # really meaningless for meta-pkg
MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Emacs for Desktop

DEPENDS += compface-[0-9]*:../../graphics/compface
DEPENDS += libXaw3d-[0-9]*:../../x11/libXaw3d
#EPENDS += xpm-3.4k:../../graphics/xpm/
#DEPENDS += emacs27-[0-9]*:../../wip/emacs-git
#EPENDS += emacs29-[0-9]*:../../editors/emacs-snapshot
#EPENDS += emacs26-[0-9]*:../../editors/emacs26
DEPENDS += emacs29-[0-9]*:../../editors/emacs29

# To avoid depending to MesaLib-7.4.4
#DEPENDS += MesaLib-[0-9]*:../../wip/MesaLib

# to avoid devel/apel for oldstye backquote issue
#EPENDS += apel-snapshot-[0-9]*:../../devel/apel-snapshot
DEPENDS += ${EMACS_PKGNAME_PREFIX}flim-[0-9]*:../../devel/flim

#EPENDS += emacs-w3m-[0-9]*:../../www/emacs-w3m-snapshot
DEPENDS += gnupg-[0-9]*:../../security/gnupg
DEPENDS += gnutls-[0-9]*:../../security/gnutls
DEPENDS += im-[0-9]*:../../mail/im
DEPENDS += ${EMACS_PKGNAME_PREFIX}mu-cite-[0-9]*:../../wip/mu-cite
DEPENDS += ${EMACS_PKGNAME_PREFIX}x-face-e21-[0-9]*:../../local-mef/x-face-el

#EPENDS += wl-[0-9]*:../../wip/wl-git
DEPENDS += ${EMACS_PKGNAME_PREFIX}semi-[0-9]*:../../wip/semi
DEPENDS += ${EMACS_PKGNAME_PREFIX}wl-[0-9]*:../../wip/wl-snapshot

DEPENDS += ${EMACS_PKGNAME_PREFIX}auctex-[0-9]*:../../print/auctex
DEPENDS += ${EMACS_PKGNAME_PREFIX}tc-[0-9]*:../../wip/tc
#EPENDS += twittering-mode-[0-9]*:../../wip/twittering-mode-git
DEPENDS += ${EMACS_PKGNAME_PREFIX}elscreen-[0-9]*:../../misc/elscreen
DEPENDS += umefont-ttf-[0-9]*:../../fonts/umefont-ttf
#DEPENDS += magit-[0-9]*:../../devel/magit

DEPENDS += anthy-[0-9]*:../../inputmethod/anthy
DEPENDS += ${EMACS_PKGNAME_PREFIX}tamago-tsunagi-[0-9]*:../../inputmethod/tamago-tsunagi
DEPENDS += ${EMACS_PKGNAME_PREFIX}riece-[0-9]*:../../chat/riece

DEPENDS += ${EMACS_PKGNAME_PREFIX}php-mode-[0-9]*:../../devel/php-mode
DEPENDS += magit-[0-9]*:../../wip/magit-git

META_PACKAGE=   yes

.include "../../mk/bsd.pkg.mk"
