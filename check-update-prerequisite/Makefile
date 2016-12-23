# $NetBSD: Makefile,v 1.3 2011/01/28 05:15:04 makoto Exp $
# $Id: Makefile,v 1.21 2016/03/27 13:32:46 makoto Exp $

DISTNAME=       check-update-prerequisite-0.1
CATEGORIES=     local-mef
META_PACKAGE=   yes

MAINTAINER=     mef@NetBSD
HOMEPAGE=       https://github.com/makoto-fujiwara/check-update/
COMMENT=        Providing environment to execute check-update
LICENSE=	2-clause-bsd

BUILD_DEPENDS+=	httping-[0-9]*:../../net/httping
BUILD_DEPENDS+=	curl-[0-9]*:../../www/curl
BUILD_DEPENDS+=	git-base-[0-9]*:../../devel/git-base
BUILD_DEPENDS+=	p5-Net-DNS-[0-9]*:../../net/p5-Net-DNS
BUILD_DEPENDS+=	p5-Algorithm-Diff-[0-9]*:../../devel/p5-Algorithm-Diff
BUILD_DEPENDS+=	mozilla-rootcerts-[0-9]*:../../security/mozilla-rootcerts
BUILD_DEPENDS+=	ruby-[0-9]*:../../lang/ruby

.include "../../mk/bsd.pkg.mk"
