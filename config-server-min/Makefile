# $NetBSD$

DISTNAME=       config-server-minimum-0.02
CATEGORIES=     meta-pkgs

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Meta package for monitoring machine

META_PACKAGE=   yes

DEPENDS+= sysmon-[0-9]*:../../net/sysmon
DEPENDS+= ipmitool-[0-9]*:../../sysutils/ipmitool
#EPENDS+= net-snmp-[0-9]*:../../net/net-snmp
#EPENDS+= samba>=4.0:../../net/samba4
DEPENDS+= samba>=3.6:../../net/samba
DEPENDS+= namazu-[0-9]*:../../local-mef/namazu-mef
DEPENDS+= git-base-[0-9]*:../../devel/git-base

DEPENDS+= check-update-prerequisite-[0-9]*:../../local-mef/check-update-prerequisite
DEPENDS+= emacs-desktop-[0-9]*:../../local-mef/emacs-desktop
DEPENDS+= fvwm-[0-9]*:../../wm/fvwm

DEPENDS+= sudo-[0-9]*:../../security/sudo
DEPENDS+= rsync-[0-9]*:../../net/rsync
DEPENDS+= zsh-[0-9]*:../../shells/zsh
DEPENDS+= wget-[0-9]*:../../net/wget
DEPENDS+= screen-[0-9]*:../../misc/screen
DEPENDS+= sendmail-[0-9]*:../../mail/sendmail
DEPENDS+= exif-[0-9]*:../../graphics/exif

DEPENDS+= checkperms-[0-9]*:../../sysutils/checkperms
DEPENDS+= revbump-[0-9]*:../../pkgtools/revbump
DEPENDS+= pkglint-[0-9]*:../../pkgtools/pkglint

.include "../../mk/bsd.pkg.mk"
