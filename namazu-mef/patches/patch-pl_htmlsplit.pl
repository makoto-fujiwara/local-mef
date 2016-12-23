$NetBSD$

--- work/namazu-2.0.20/pl/htmlsplit.pl.orig	2008-04-28 03:16:43.000000000 +0900
+++ ./pl/htmlsplit.pl	2010-04-28 22:34:50.000000000 +0900
@@ -27,9 +27,9 @@
 #require "html.pl"; # don't need it because it sould be already loaded by load_filtermodules()
 
 use strict;
+use File::MMagic;
 use File::Copy;
 
-
 my $Header = << 'EOS';
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
         "http://www.w3.org/TR/html4/strict.dtd">
@@ -48,8 +48,8 @@
 </html>
 EOS
 
-sub split ($$) {
-    my ($fname, $base) = @_;
+sub split ($$$) {
+    my ($fname, $base, $Magic) = @_;
 
     my $mtime = (stat($fname))[9];
     my $cont = '';
@@ -84,6 +84,7 @@
 		'names'    => [],
 		);
 
+    my $mtype = $Magic->checktype_magic($cont);
     # <http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.2>
     # 
     # In certain cases, authors may specify the value of an attribute
@@ -106,7 +107,7 @@
              }sgexi;
     write_partial_file($cont, "", "", $id, $mtime, \%info);
 
-    return @{$info{'names'}};
+    return ($mtype,@{$info{'names'}});
 }
 
 sub get_title ($) {
