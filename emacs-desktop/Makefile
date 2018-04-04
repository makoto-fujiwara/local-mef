# $NetBSD$

DISTNAME=       emacs-desktop-${EMACS_TYPE:C/emacs//}em0.05
CATEGORIES=     local-mef

PKG_DESTDIR_SUPPORT=    user-destdir    # really meaningless for meta-pkg
MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Emacs for Desktop

DEPENDS += compface-[0-9]*:../../graphics/compface
DEPENDS += libXaw3d-[0-9]*:../../x11/libXaw3d
#EPENDS += xpm-3.4k:../../graphics/xpm/
#DEPENDS += emacs27-[0-9]*:../../wip/emacs-git
EPENDS += emacs25-[0-9]*:../../editors/emacs25

# To avoid depending to MesaLib-7.4.4
#DEPENDS += MesaLib-[0-9]*:../../wip/MesaLib

# to avoid devel/apel for oldstye backquote issue
DEPENDS += apel-[0-9]*:../../wip/apel-git
DEPENDS += flim-[0-9]*:../../wip/flim

DEPENDS += emacs-w3m-[0-9]*:../../wip/emacs-w3m-cvs
DEPENDS += gnupg-[0-9]*:../../security/gnupg
DEPENDS += gnutls-[0-9]*:../../security/gnutls
DEPENDS += im-[0-9]*:../../mail/im
DEPENDS += mu-cite-[0-9]*:../../wip/mu-cite
DEPENDS += x-face-e21-[0-9]*:../../local-mef/x-face-el

DEPENDS += wl-[0-9]*:../../wip/wl-git

DEPENDS += auctex-[0-9]*:../../print/auctex
DEPENDS += tc-[0-9]*:../../wip/tc-git
DEPENDS += twittering-mode-[0-9]*:../../wip/twittering-mode-git
DEPENDS += elscreen-[0-9]*:../../misc/elscreen
DEPENDS += umefont-ttf-[0-9]*:../../fonts/umefont-ttf
#DEPENDS += magit-[0-9]*:../../devel/magit

DEPENDS += anthy-[0-9]*:../../inputmethod/anthy
DEPENDS += tamago-tsunagi-[0-9]*:../../inputmethod/tamago-tsunagi
DEPENDS += riece-[0-9]*:../../chat/riece

DEPENDS += php-mode-[0-9]*:../../devel/php-mode

META_PACKAGE=   yes

.include "../../mk/bsd.pkg.mk"
