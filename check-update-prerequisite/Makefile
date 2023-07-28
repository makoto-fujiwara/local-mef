# $NetBSD: Makefile,v 1.3 2011/01/28 05:15:04 makoto Exp $
# $Id: Makefile,v 1.21 2016/03/27 13:32:46 makoto Exp $

DISTNAME=       check-update-prerequisite-0.2
CATEGORIES=     local-mef
META_PACKAGE=   yes

MAINTAINER=     mef@NetBSD
HOMEPAGE=       https://github.com/makoto-fujiwara/check-update/
COMMENT=        Providing environment to execute check-update
LICENSE=	2-clause-bsd

DEPENDS+=	httping-[0-9]*:../../net/httping
DEPENDS+=	curl-[0-9]*:../../www/curl
DEPENDS+=	git-base-[0-9]*:../../devel/git-base
DEPENDS+=	p5-Net-DNS-[0-9]*:../../net/p5-Net-DNS
DEPENDS+=	p5-Algorithm-Diff-[0-9]*:../../devel/p5-Algorithm-Diff
DEPENDS+=	mozilla-rootcerts-[0-9]*:../../security/mozilla-rootcerts
DEPENDS+=	ruby-[0-9]*:../../lang/ruby
DEPENDS+=	w3m-[0-9]*:../../www/w3m
DEPENDS+=	py[0-9]*-pip-[[0-9]*:../../devel/py-pip
DEPENDS+=	wget-[0-9]*:../../net/wget

.include "../../mk/bsd.pkg.mk"
