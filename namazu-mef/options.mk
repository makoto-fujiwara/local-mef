# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.namazu
PKG_SUPPORTED_OPTIONS=	ja-lang kakasi chasen mecab
#			ja-lang is not currently supported yet
PKG_SUGGESTED_OPTIONS=  kakasi chasen mecab

.include "../../mk/bsd.options.mk"

.  if !empty(PKG_OPTIONS:Mkakasi)
CONFIGURE_ENV+=		KAKASI="module_kakasi"
CONFIGURE_ENV+=		ac_cv_path_KAKASI="module_kakasi"
DEPENDS+=		p5-Text-Kakasi>=1.04:../../textproc/p5-Text-Kakasi
.  endif

.  if !empty(PKG_OPTIONS:Mchasen)
CONFIGURE_ENV+=		CHASEN="module_chasen"
CONFIGURE_ENV+=		ac_cv_path_CHASEN="module_chasen"
DEPENDS+=		p5-Text-ChaSen>=1.0:../../textproc/p5-Text-ChaSen
.  endif

.  if !empty(PKG_OPTIONS:Mmecab)
CONFIGURE_ENV+=		MECAB="module_mecab"
CONFIGURE_ENV+=		ac_cv_path_MECAB="module_mecab"
DEPENDS+=		p5-mecab-[0-9]*:../../textproc/p5-mecab
.  endif

.  if empty(PKG_OPTIONS:Mkakasi) && empty(PKG_OPTIONS:Mchasen) && empty(PKG_OPTIONS:Mmecab)
SUBST_CLASSES+=		wakati
SUBST_STAGE.wakati=	pre-configure
SUBST_FILES.wakati=	pl/conf.pl.in
SUBST_SED.wakati=	-e 's|@OPT_WAKATI_DEFAULT@|none|'
.  endif
