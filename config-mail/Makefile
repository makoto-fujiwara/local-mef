# $NetBSD: Makefile,v 1.20 2006/07/18 05:43:28 makoto Exp $
# $Id: Makefile,v 1.34 2012/08/22 07:07:37 makoto Exp $

DISTNAME=       config-mail-0.3
CATEGORIES=     meta-pkg
MASTER_SITES=   
DISTFILES=      # empty

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/ 
COMMENT=        Meta Package for Mail server

.include "../config-base/Makefile.common"

DEPENDS += sendmail>=1:../../mail/sendmail
DEPENDS += smtpfeed>=1:../../mail/smtpfeed
DEPENDS += cyrus-imapd>=2:../../mail/cyrus-imapd24
DEPENDS += cyrus-saslauthd>=2:../../security/cyrus-saslauthd

#EPENDS+= cy2-anonymous-[0-9]*:../../security/cy2-anonymous
DEPENDS+= cy2-crammd5-[0-9]*:../../security/cy2-crammd5
DEPENDS+= cy2-digestmd5-[0-9]*:../../security/cy2-digestmd5
DEPENDS+= cy2-gssapi-[0-9]*:../../security/cy2-gssapi
#EPENDS+= cy2-ldapdb-[0-9]*:../../security/cy2-ldapdb
DEPENDS+= cy2-login-[0-9]*:../../security/cy2-login
#EPENDS+= cy2-ntlm-[0-9]*:../../security/cy2-ntlm
#EPENDS+= cy2-otp-[0-9]*:../../security/cy2-otp
DEPENDS+= cy2-plain-[0-9]*:../../security/cy2-plain
#EPENDS+= cy2-saml-[0-9]*:../../security/cy2-saml
#EPENDS+= cy2-scram-[0-9]*:../../security/cy2-scram
#EPENDS+= cy2-sql-[0-9]*:../../security/cy2-sql         

DEPENDS += net-snmp>=1:../../net/net-snmp
DEPENDS += mgetty>1:../../comms/mgetty+sendfax
DEPENDS += mrtg>1:../../net/mrtg
#EPENDS += qpopper>4:../../mail/qpopper
DEPENDS += procmail>=1:../../mail/procmail
#EPENDS += bogofilter>1:../../mail/bogofilter
#
DEPENDS += bind>=9.2.3nb1:../../net/bind914

DEPENDS += spamassassin>=3.0:../../mail/spamassassin/
DEPENDS += spamass-milter>=0.3:../../mail/spamass-milter/

META_PACKAGE=	yes
.include "../../mk/bsd.pkg.mk"
