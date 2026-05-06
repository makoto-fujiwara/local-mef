# $NetBSD$

DISTNAME=	config-www-0.4
CATEGORIES=	meta-pkgs

MAINTAINER=	packages@ki.nu
HOMEPAGE=	http://www.ki.nu/OHP/
COMMENT=	Meta package for www server

META_PACKAGE=	yes

DEPENDS+=	moodle-[0-9]*:../../www/moodle
DEPENDS+=	postgresql17-server-[0-9]*:../../databases/postgresql17-server
DEPENDS+=	php84-[0-9]*:../../lang/php84
DEPENDS+=	apache-[0-9]*:../../www/apache24
DEPENDS+=	p5-Getopt-Simple-[0-9]*:../../devel/p5-Getopt-Simple

.include "../../mk/bsd.pkg.mk"
