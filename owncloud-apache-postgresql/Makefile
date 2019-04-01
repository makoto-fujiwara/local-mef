# $NetBSD$

DISTNAME=       owncloud-apache-pgsql-0.1
CATEGORIES=     meta-pkgs

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://github.com/makoto-fujiwara/local-mef/${PKGBASE}
COMMENT=        Owncloud with apache and postgres

DEPENDS+=	php[0-9]*-owncloud-[0-9]*:../../www/php-owncloud
DEPENDS+=	apache-[0-9]*:../../www/apache24
DEPENDS+=	ap[0-9]*-php[0-9]*-[0-9]*:../../www/ap-php
DEPENDS+=	php[0-9]*-intl-[0-9]*:../../textproc/php-intl
DEPENDS+=	postgresql96-[0-9]*:../../databases/postgresql96
DEPENDS+=	php[0-9]*-pdo_pgsql-[0-9]*:../../databases/php-pdo_pgsql

META_PACKAGE=   yes

.include "../../mk/bsd.pkg.mk"
