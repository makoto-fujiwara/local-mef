$NetBSD$

Tweak for adding 'jeedosaquin'

--- work/namazu-2.0.20/filter/macbinary.pl.orig	2010-04-28 22:22:04.000000000 +0900
+++ filter/macbinary.pl	2010-04-28 22:29:38.000000000 +0900
@@ -111,7 +111,8 @@
     my $err = undef;
     my ($kanji, $mtype) = mknmz::apply_filter($orig_cfile, \$datafork,
                         $weighted_str, $headings, $fields,
-                        $dummy_shelterfname, $mmtype);
+                        $dummy_shelterfname, 
+                        $m_cfile, $mmtype, undef, undef);
     if ($mtype =~ /; x-system=unsupported$/) {
         $$contref = "";
         $err = "filter/macbinary.pl gets error from other filter";
