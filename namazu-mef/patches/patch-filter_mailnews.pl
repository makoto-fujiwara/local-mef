$NetBSD$

Tweak for adding 'jeedosaquin'

--- work/namazu-2.0.20/filter/mailnews.pl.orig	2010-04-28 22:22:04.000000000 +0900
+++ filter/mailnews.pl	2010-04-28 22:31:10.000000000 +0900
@@ -444,7 +444,8 @@
 
     my ($kanji, $mtype) = mknmz::apply_filter(\$filename, $bodyref,
 			$weighted_str, \$headings, \%fields,
-			$dummy_shelterfname, $mmtype);
+			$dummy_shelterfname,
+ 			undef, $mmtype, undef, undef);
     if ($mtype =~ /; x-system=unsupported$/) {
 	$$bodyref = "";
         $err = $mtype;
