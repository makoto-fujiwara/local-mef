# $NetBSD$

DISTNAME=	config-R2024-0.7
CATEGORIES=	local-mef

MAINTAINER=	packages@ki.nu
HOMEPAGE=	http://www.ki.nu/OHP/
COMMENT=	Meta package for 2023

META_PACKAGE=	yes

DEPENDS+=	opendkim-[0-9]*:../../mail/opendkim
DEPENDS+=	${PYPKGPREFIX}-pypi-cli-[0-9]*:../../devel/py-pypi-cli
DEPENDS+=	minicom-[0-9]*:../../comms/minicom
DEPENDS+=	bython-[0-9]*:../../lang/bython

.include "../../lang/python/pyversion.mk"
.include "../../mk/bsd.pkg.mk"
