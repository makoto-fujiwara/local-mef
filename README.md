# local-mef

Meta package for configuring various (my) local hosts.
To be cloned at /usr/pkgsrc. Will result as /usr/pkgsrc/local-mef.

1. meta packages

config-set: meta-pkg for whole set of Desktop, which includes some 800 packages

You'll see following lines in its Makefile

- DEPENDS+=	config-desktop-[0-9]*:../../local-mef/config-desktop
- DEPENDS+=	config-cad-[0-9]*:../../local-mef/config-cad
- DEPENDS+=	config-devel-[0-9]*:../../local-mef/config-devel
- DEPENDS+=	config-monitor-[0-9]*:../../local-mef/config-monitor
- DEPENDS+=	config-more-[0-9]*:../../local-mef/config-more
- DEPENDS+=	config-latex-[0-9]*:../../local-mef/config-latex
- DEPENDS+=	config-graphics-[0-9]*:../../local-mef/config-graphics
- DEPENDS+=	config-R2021-[0-9]*:../../local-mef/config-R2021
- DEPENDS+=	config-R2022-[0-9]*:../../local-mef/config-R2022
- DEPENDS+=	config-R2023-[0-9]*:../../local-mef/config-R2023

2. something before wip or testing, with the name of

  test-*
  