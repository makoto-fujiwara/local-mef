# $NetBSD$

DISTNAME=       owncloud-apache-0.1
CATEGORIES=     meta-pkgs

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://github.com/makoto-fujiwara/local-mef/${PKGBASE}
COMMENT=        Owncloud with apache

DEPENDS+=	php-owncloud-[0-9]*:../../wip/php-owncloud
DEPENDS+=	apache[0-9]*-[0-9]*:../../www/apache24
DEPENDS+=	ap[0-9]*-php-[0-9]*:../../www/ap-php
DEPENDS+=	php[0-9]*-intl-[0-9]*:../../textproc/php-intl

META_PACKAGE=   yes

# This version of ownCloud is not compatible with PHP 7.2
# You are currently running 7.2.1.
PHP_VERSION_DEFAULT?=              56

.include "../../mk/bsd.pkg.mk"
