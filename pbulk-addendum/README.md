# pbulk addendum

## following packages will be installed

   pbulk
   sendmail
   libkver
   zsh
   net-snmp

# how to do
1. bootstrap

cd /usr/pkgsrc/bootstrap
./bootstrap --prefix=/usr/pkg_bulk --pkgdbdir=/usr/pkbulk/.pkgdbdir

2.

 cd /usr/pkgsrc/local-mef/pbulk-addendum
 env PATH=/usr/pkg_bulk/bin:/usr/pkg_bulk/sbin:${PATH} bmake package-install
