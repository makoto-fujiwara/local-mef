# $NetBSD$

DISTNAME=       test-libical-0.01
CATEGORIES=     meta-pkgs

MAINTAINER=     packages@ki.nu
HOMEPAGE=       http://www.ki.nu/OHP/
COMMENT=        

META_PACKAGE=   yes

PKG_OPTIONS_VAR=        PKG_OPTIONS.test-libical
PKG_SUPPORTED_OPTIONS=  wip
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.options.mk"

BUILD_DEPENDS+=	empathy-[0-9]*:../../chat/empathy
BUILD_DEPENDS+=	gnomeicu-[0-9]*:../../chat/gnomeicu
BUILD_DEPENDS+=	gnome-pilot-[0-9]*:../../comms/gnome-pilot
BUILD_DEPENDS+=	libopensync-plugin-evolution2-[0-9]*:../../comms/libopensync-plugin-evolution2
BUILD_DEPENDS+=	compizconfig-backend-gconf-[0-9]*:../../devel/compizconfig-backend-gconf
BUILD_DEPENDS+=	frama-c-[0-9]*:../../devel/frama-c
BUILD_DEPENDS+=	libcompizconfig-[0-9]*:../../devel/libcompizconfig
BUILD_DEPENDS+=	libgail-gnome-[0-9]*:../../devel/libgail-gnome
BUILD_DEPENDS+=	mono-tools-[0-9]*:../../devel/mono-tools
BUILD_DEPENDS+=	monotone-viz-[0-9]*:../../devel/monotone-viz
BUILD_DEPENDS+=	ocamlgraph-[0-9]*:../../devel/ocamlgraph
BUILD_DEPENDS+=	py-compizconfig-[0-9]*:../../devel/py-compizconfig
BUILD_DEPENDS+=	abiword-plugins-[0-9]*:../../editors/abiword-plugins
BUILD_DEPENDS+=	abiword-[0-9]*:../../editors/abiword
BUILD_DEPENDS+=	tomboy-[0-9]*:../../editors/tomboy
BUILD_DEPENDS+=	camlimages-[0-9]*:../../graphics/camlimages
BUILD_DEPENDS+=	cheese-[0-9]*:../../graphics/cheese
BUILD_DEPENDS+=	f-spot-[0-9]*:../../graphics/f-spot
BUILD_DEPENDS+=	im-ja-[0-9]*:../../inputmethod/im-ja
BUILD_DEPENDS+=	imhangul_status_applet-[0-9]*:../../inputmethod/imhangul_status_applet
BUILD_DEPENDS+=	uim-[0-9]*:../../inputmethod/uim
BUILD_DEPENDS+=	coq-[0-9]*:../../lang/coq
BUILD_DEPENDS+=	claws-mail-vcalendar-[0-9]*:../../mail/claws-mail-vcalendar
BUILD_DEPENDS+=	evolution-data-server-[0-9]*:../../mail/evolution-data-server
BUILD_DEPENDS+=	evolution-exchange-[0-9]*:../../mail/evolution-exchange
BUILD_DEPENDS+=	evolution-[0-9]*:../../mail/evolution
BUILD_DEPENDS+=	deskbar-applet-[0-9]*:../../misc/deskbar-applet
BUILD_DEPENDS+=	gnome-utils-[0-9]*:../../misc/gnome-utils
BUILD_DEPENDS+=	kdepimlibs4-[0-9]*:../../misc/kdepimlibs4
BUILD_DEPENDS+=	mousetweaks-[0-9]*:../../misc/mousetweaks
BUILD_DEPENDS+=	bug-buddy-[0-9]*:../../net/bug-buddy
BUILD_DEPENDS+=	ekiga-[0-9]*:../../net/ekiga
BUILD_DEPENDS+=	gnome-netstatus-[0-9]*:../../net/gnome-netstatus
BUILD_DEPENDS+=	mldonkey-gui-[0-9]*:../../net/mldonkey-gui
BUILD_DEPENDS+=	ocamlnet-[0-9]*:../../net/ocamlnet
BUILD_DEPENDS+=	tsclient-[0-9]*:../../net/tsclient
BUILD_DEPENDS+=	unison-[0-9]*:../../net/unison
BUILD_DEPENDS+=	unison2.32-[0-9]*:../../net/unison2.32
BUILD_DEPENDS+=	unison2.40-[0-9]*:../../net/unison2.40
BUILD_DEPENDS+=	vinagre-[0-9]*:../../net/vinagre
BUILD_DEPENDS+=	advi-[0-9]*:../../print/advi
BUILD_DEPENDS+=	glabels-[0-9]*:../../print/glabels
BUILD_DEPENDS+=	seahorse-plugins-[0-9]*:../../security/seahorse-plugins
BUILD_DEPENDS+=	gnome-power-manager-[0-9]*:../../sysutils/gnome-power-manager
BUILD_DEPENDS+=	nautilus-sendto-[0-9]*:../../sysutils/nautilus-sendto
BUILD_DEPENDS+=	evolution-webcal-[0-9]*:../../time/evolution-webcal
BUILD_DEPENDS+=	gtodo-applet-[0-9]*:../../time/gtodo-applet
BUILD_DEPENDS+=	xfce4-orage-[0-9]*:../../time/xfce4-orage

.if !empty(PKG_OPTIONS:Mwip)

BUILD_DEPENDS+=	alt-ergo-[0-9]*:../../wip/alt-ergo
BUILD_DEPENDS+=	bijiben-[0-9]*:../../wip/bijiben
BUILD_DEPENDS+=	cheese-[0-9]*:../../wip/cheese
BUILD_DEPENDS+=	contact-lookup-applet-[0-9]*:../../wip/contact-lookup-applet
BUILD_DEPENDS+=	contacts-[0-9]*:../../wip/contacts
BUILD_DEPENDS+=	dates-[0-9]*:../../wip/dates
BUILD_DEPENDS+=	ekiga-[0-9]*:../../wip/ekiga
BUILD_DEPENDS+=	emerald-[0-9]*:../../wip/emerald
BUILD_DEPENDS+=	empathy-[0-9]*:../../wip/empathy
BUILD_DEPENDS+=	evolution-data-server-[0-9]*:../../wip/evolution-data-server
BUILD_DEPENDS+=	evolution-rss-[0-9]*:../../wip/evolution-rss
BUILD_DEPENDS+=	evolution-tray-[0-9]*:../../wip/evolution-tray
BUILD_DEPENDS+=	giggle-[0-9]*:../../wip/giggle
BUILD_DEPENDS+=	gnokii-[0-9]*:../../wip/gnokii
BUILD_DEPENDS+=	gnome-applets-[0-9]*:../../wip/gnome-applets
BUILD_DEPENDS+=	gnome-control-center-[0-9]*:../../wip/gnome-control-center
BUILD_DEPENDS+=	gnome-do-[0-9]*:../../wip/gnome-do
BUILD_DEPENDS+=	gnome-panel-[0-9]*:../../wip/gnome-panel
BUILD_DEPENDS+=	gnome-todo-[0-9]*:../../wip/gnome-todo
BUILD_DEPENDS+=	kmymoney-git-[0-9]*:../../wip/kmymoney-git
BUILD_DEPENDS+=	kmymoney4-[0-9]*:../../wip/kmymoney4
BUILD_DEPENDS+=	libfolks-[0-9]*:../../wip/libfolks
BUILD_DEPENDS+=	lilyterm-[0-9]*:../../wip/lilyterm
BUILD_DEPENDS+=	linphone-[0-9]*:../../wip/linphone
BUILD_DEPENDS+=	mousetweaks-[0-9]*:../../wip/mousetweaks
BUILD_DEPENDS+=	osmo-[0-9]*:../../wip/osmo
BUILD_DEPENDS+=	pidgin-evolution-[0-9]*:../../wip/pidgin-evolution
BUILD_DEPENDS+=	tasks-[0-9]*:../../wip/tasks
BUILD_DEPENDS+=	why-[0-9]*:../../wip/why
.endif

BUILD_DEPENDS+=	compiz-fusion-plugins-extra-[0-9]*:../../wm/compiz-fusion-plugins-extra
BUILD_DEPENDS+=	compiz-fusion-plugins-main-[0-9]*:../../wm/compiz-fusion-plugins-main
BUILD_DEPENDS+=	compiz-[0-9]*:../../wm/compiz
BUILD_DEPENDS+=	fast-user-switch-applet-[0-9]*:../../x11/fast-user-switch-applet
BUILD_DEPENDS+=	gnome-applets-[0-9]*:../../x11/gnome-applets
BUILD_DEPENDS+=	gnome-control-center-[0-9]*:../../x11/gnome-control-center
BUILD_DEPENDS+=	gnome-desktop-sharp-[0-9]*:../../x11/gnome-desktop-sharp
BUILD_DEPENDS+=	gnome-panel-[0-9]*:../../x11/gnome-panel
BUILD_DEPENDS+=	gnome-session-[0-9]*:../../x11/gnome-session
BUILD_DEPENDS+=	grandr_applet-[0-9]*:../../x11/grandr_applet
BUILD_DEPENDS+=	ocaml-lablgtk-[0-9]*:../../x11/ocaml-lablgtk
BUILD_DEPENDS+=	py-gnome2-desktop-[0-9]*:../../x11/py-gnome2-desktop

.include "../../mk/bsd.pkg.mk"
