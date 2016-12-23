$NetBSD$

more hnf (nikki) adjust 

--- filter/hnf.pl.orig	2011-08-02 15:28:04.000000000 +0900
+++ filter/hnf.pl	2011-08-02 16:14:17.000000000 +0900
@@ -75,6 +75,7 @@
     $mark = "¢£" if util::islang("ja");
     $end  = "¢§" if util::islang("ja");
 
+    $fields -> {'test'} = "test string"; # dummy
     get_uri($cfile, $fields);
     hnf_filter($contref, $weighted_str, $fields, $headings, $cfile,
 	$mark, $end);
@@ -243,6 +244,7 @@
       else {
         $uri = '?%year%month%hiday#%year%month%day0'; # for hns-1.x
       }
+      $uri = '/%year/%month/%day/#%year%month%day'; # for hns-1.x
       $uri =~ s/%%/\34/g;
       $uri =~ s/%{?([a-z]+)}?/$param{$1}/g;
       $uri =~ s/\34/%/g;
