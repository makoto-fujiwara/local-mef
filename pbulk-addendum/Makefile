# $NetBSD: Makefile,v 1.3 2011/01/28 05:15:04 makoto Exp $
# $Id: Makefile,v 1.21 2016/03/27 13:32:46 makoto Exp $

DISTNAME=       pbulk-addendum-0.1
CATEGORIES=     local-mef
META_PACKAGE=   yes

MAINTAINER=     mef@NetBSD
HOMEPAGE=       https://github.com/makoto-fujiwara/check-update/
COMMENT=        Some additional package for pbulk
LICENSE=	2-clause-bsd

DEPENDS+=	pbulk-[0-9]*:../../pkgtools/pbulk
DEPENDS+=	sendmail-[0-9]*:../../mail/sendmail
DEPENDS+=	libkver-[0-9]*:../../pkgtools/libkver
DEPENDS+=	zsh-[0-9]*:../../shells/zsh
DEPENDS+=	net-snmp-[0-9]*:../../net/net-snmp

.include "../../mk/bsd.pkg.mk"
