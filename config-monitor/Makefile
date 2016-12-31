# $NetBSD$

DISTNAME=       config-monitor-0.01
CATEGORIES=     meta-pkgs

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Meta package for monitoring machine

META_PACKAGE=   yes

DEPENDS+= sysmon-[0-9]*:../../net/sysmon
DEPENDS+= ipmitool-[0-9]*:../../sysutils/ipmitool
DEPENDS+= net-snmp-[0-9]*:../../net/net-snmp

.include "../../mk/bsd.pkg.mk"
