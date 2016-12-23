$NetBSD$

Add argument for jeedosaquin filter

--- work/namazu-2.0.20/filter/zip.pl.orig	2010-04-28 22:22:04.000000000 +0900
+++ filter/zip.pl	2010-04-28 22:32:59.000000000 +0900
@@ -289,11 +289,12 @@
     my $headings = "";
     my %fields;
     my $mmtype = undef;
+    my $m_cfile = undef;
 
     my ($kanji, $mtype) = mknmz::apply_filter(\$filename, $contref,
                         $weighted_str, \$headings, \%fields,
-                        $dummy_shelterfname, $mmtype);
-
+                        $dummy_shelterfname,
+                        $m_cfile, $mmtype, undef, undef);
     if ($mtype =~ /; x-system=unsupported$/) {
         $$contref = "";
         $err = $mtype;
