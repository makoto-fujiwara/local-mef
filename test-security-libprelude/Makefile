# $NetBSD$

DISTNAME=       test-libprelude-0.01
CATEGORIES=     meta-pkgs

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        Meta package for packaging test of libprelude*

META_PACKAGE=   yes

BUILD_DEPENDS+=libprelude-[0-9]*:../../security/libprelude          
BUILD_DEPENDS+=libprelude-lua-[0-9]*:../../security/libprelude-lua          
BUILD_DEPENDS+=libprelude-perl-[0-9]*:../../security/libprelude-perl         
BUILD_DEPENDS+=libprelude-python-[0-9]*:../../security/libprelude-python   
BUILD_DEPENDS+=libprelude-ruby-[0-9]*:../../security/libprelude-ruby         

BUILD_DEPENDS+=libpreludedb-[0-9]*:../../security/libpreludedb            
BUILD_DEPENDS+=libpreludedb-mysql-[0-9]*:../../security/libpreludedb-mysql  
BUILD_DEPENDS+=libpreludedb-perl-[0-9]*:../../security/libpreludedb-perl   
BUILD_DEPENDS+=libpreludedb-pgsql-[0-9]*:../../security/libpreludedb-pgsql  
BUILD_DEPENDS+=libpreludedb-python-[0-9]*:../../security/libpreludedb-python 
BUILD_DEPENDS+=libpreludedb-sqlite3-[0-9]*:../../security/libpreludedb-sqlite3

.include "../../mk/bsd.pkg.mk"
