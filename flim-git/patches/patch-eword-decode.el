--- /tmp/wip/flim/work/flim-1.14.9/./eword-decode.el	2005-12-25 19:45:52.000000000 +0900
+++ ././eword-decode.el	2020-09-05 16:02:39.898948422 +0900
@@ -1,4 +1,4 @@
-;;; eword-decode.el --- RFC 2047 based encoded-word decoder for GNU Emacs
+;;; eword-decode.el --- RFC 2047 based encoded-word decoder for GNU Emacs  -*- lexical-binding: t -*-
 
 ;; Copyright (C) 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2003, 2004,
 ;;   2005 Free Software Foundation, Inc.
@@ -36,8 +36,7 @@
 (require 'mime-def)
 (require 'mel)
 (require 'std11)
-
-(eval-when-compile (require 'cl))	; list*, pop
+(require 'cl-lib)
 
 
 ;;; @ Variables
@@ -70,8 +69,7 @@
 	      "\\("
 	      eword-encoded-text-regexp	; 4
 	      "\\)"
-	      (regexp-quote "?="))))
-  )
+	      (regexp-quote "?=")))))
 
 
 ;;; @ for string
@@ -87,7 +85,10 @@
 
 If MUST-UNFOLD is non-nil, it unfolds and eliminates line-breaks even
 if there are in decoded encoded-words (generated by bad manner MUA
-such as a version of Net$cape)."
+such as a version of Net$cape).
+
+The language informations specified in the encoded words, if any, are
+put to the decoded text as the `mime-language' text property."
   (setq string (std11-unfold-string string))
   (let ((regexp (concat "[\n\t ]*\\(" eword-encoded-word-regexp "\\)"))
 	(next 0)
@@ -98,7 +99,11 @@
       (while match
 	(setq next (match-end 0))
 	(push (list (match-string 2 string) ;; charset
-		    (match-string 3 string) ;; language
+		    (when (match-beginning 3) ;; language
+		      (intern
+		       (downcase
+			(substring string
+				   (1+ (match-beginning 3)) (match-end 3)))))
 		    (match-string 4 string) ;; encoding
 		    (match-string 5 string) ;; encoded-text
 		    (match-string 1 string)) ;; encoded-word
@@ -112,23 +117,19 @@
 	    next (+ start (length words)))))
   string)
 
-(defun eword-decode-structured-field-body (string
-					   &optional start-column max-column
-					   start)
+(defun eword-decode-structured-field-body
+    (string &optional _start-column _max-column start)
   (let ((tokens (eword-lexical-analyze string start 'must-unfold))
-	(result "")
+	result
 	token)
     (while tokens
       (setq token (car tokens))
-      (setq result (concat result (eword-decode-token token)))
+      (setq result (cons (eword-decode-token token) result))
       (setq tokens (cdr tokens)))
-    result))
+    (apply 'concat (nreverse result))))
 
-(defun eword-decode-and-unfold-structured-field-body (string
-						      &optional
-						      start-column
-						      max-column
-						      start)
+(defun eword-decode-and-unfold-structured-field-body
+    (string &optional _start-column _max-column start)
   "Decode and unfold STRING as structured field body.
 It decodes non us-ascii characters in FULL-NAME encoded as
 encoded-words or invalid \"raw\" string.  \"Raw\" non us-ascii
@@ -137,17 +138,17 @@
 If an encoded-word is broken or your emacs implementation can not
 decode the charset included in it, it is not decoded."
   (let ((tokens (eword-lexical-analyze string start 'must-unfold))
-	(result ""))
+	result)
     (while tokens
       (let* ((token (car tokens))
 	     (type (car token)))
 	(setq tokens (cdr tokens))
 	(setq result
-	      (if (eq type 'spaces)
-		  (concat result " ")
-		(concat result (eword-decode-token token))
-		))))
-    result))
+	      (cons (if (eq type 'spaces)
+			" "
+		      (eword-decode-token token))
+		    result))))
+    (apply 'concat (nreverse result))))
 
 (defun eword-decode-and-fold-structured-field-body (string
 						    start-column
@@ -160,7 +161,7 @@
 	(setq max-column fill-column))
     (let ((c start-column)
 	  (tokens (eword-lexical-analyze string start 'must-unfold))
-	  (result "")
+	  result
 	  token)
       (while (and (setq token (car tokens))
 		  (setq tokens (cdr tokens)))
@@ -171,38 +172,34 @@
 		     (next-len (string-width next-str))
 		     (next-c (+ c next-len 1)))
 		(if (< next-c max-column)
-		    (setq result (concat result " " next-str)
+		    (setq result (cons next-str (cons " " result))
 			  c next-c)
-		  (setq result (concat result "\n " next-str)
+		  (setq result (cons next-str (cons "\n " result))
 			c (1+ next-len)))
-		(setq tokens (cdr tokens))
-		)
+		(setq tokens (cdr tokens)))
 	    (let* ((str (eword-decode-token token)))
-	      (setq result (concat result str)
-		    c (+ c (string-width str)))
-	      ))))
-      (if token
-	  (concat result (eword-decode-token token))
-	result))))
+	      (setq result (cons str result)
+		    c (+ c (string-width str)))))))
+      (apply 'concat (nreverse
+		      (cons (when token (eword-decode-token token))
+			    result))))))
 
-(defun eword-decode-unstructured-field-body (string &optional start-column
-						    max-column)
+(defun eword-decode-unstructured-field-body
+    (string &optional _start-column _max-column)
   (eword-decode-string
-   (decode-mime-charset-string string default-mime-charset)))
+   (mime-charset-decode-string string default-mime-charset)))
 
-(defun eword-decode-and-unfold-unstructured-field-body (string
-							&optional start-column
-							max-column)
+(defun eword-decode-and-unfold-unstructured-field-body
+    (string &optional _start-column _max-column)
   (eword-decode-string
-   (decode-mime-charset-string (std11-unfold-string string)
+   (mime-charset-decode-string (std11-unfold-string string)
 			       default-mime-charset)
    'must-unfold))
 
-(defun eword-decode-unfolded-unstructured-field-body (string
-						      &optional start-column
-						      max-column)
+(defun eword-decode-unfolded-unstructured-field-body
+    (string &optional _start-column _max-column)
   (eword-decode-string
-   (decode-mime-charset-string string default-mime-charset)
+   (mime-charset-decode-string string default-mime-charset)
    'must-unfold))
 
 
@@ -216,7 +213,10 @@
 
 If MUST-UNFOLD is non-nil, it unfolds and eliminates line-breaks even
 if there are in decoded encoded-words (generated by bad manner MUA
-such as a version of Net$cape)."
+such as a version of Net$cape).
+
+The language informations specified in the encoded words, if any, are
+put to the decoded text as the `mime-language' text property."
   (interactive "*r")
   (save-excursion
     (save-restriction
@@ -232,7 +232,11 @@
 	  (while match
 	    (goto-char (setq end (match-end 0)))
 	    (push (list (match-string 2) ;; charset
-			(match-string 3) ;; language
+			(when (match-beginning 3) ;; language
+			  (intern
+			   (downcase
+			    (buffer-substring (1+ (match-beginning 3))
+					      (match-end 3)))))
 			(match-string 4) ;; encoding
 			(match-string 5) ;; encoded-text
 			(match-string 1)) ;; encoded-word
@@ -253,11 +257,8 @@
           (save-restriction
             (narrow-to-region (goto-char beg) end)
             (while (re-search-forward "\n\\([ \t]\\)" nil t)
-              (replace-match (match-string 1))
-              )
-	    (goto-char (point-max))
-	    ))
-      )))
+              (replace-match (match-string 1)))
+	    (goto-char (point-max)))))))
 
 
 ;;; @ for message header
@@ -286,16 +287,13 @@
 		  (setcdr cell (put-alist field function (cdr cell)))
 		(setq mime-field-decoder-alist
 		      (cons (cons mode (list (cons field function)))
-			    mime-field-decoder-alist))
-		))
-	    (apply (function mime-set-field-decoder) field specs)
-	    )
+			    mime-field-decoder-alist))))
+	    (apply (function mime-set-field-decoder) field specs))
 	(mime-set-field-decoder field
 				'plain function
 				'wide function
 				'summary function
-				'nov function)
-	))))
+				'nov function)))))
 
 ;;;###autoload
 (defmacro mime-find-field-presentation-method (name)
@@ -303,20 +301,17 @@
 NAME must be `plain', `wide', `summary' or `nov'."
   (cond ((eq name nil)
 	 `(or (assq 'summary mime-field-decoder-cache)
-	      '(summary))
-	 )
+	      '(summary)))
 	((and (consp name)
 	      (car name)
 	      (consp (cdr name))
 	      (symbolp (car (cdr name)))
 	      (null (cdr (cdr name))))
 	 `(or (assq ,name mime-field-decoder-cache)
-	      (cons ,name nil))
-	 )
+	      (cons ,name nil)))
 	(t
 	 `(or (assq (or ,name 'summary) mime-field-decoder-cache)
-	      (cons (or ,name 'summary) nil))
-	 )))
+	      (cons (or ,name 'summary) nil)))))
 
 (defun mime-find-field-decoder-internal (field &optional mode)
   "Return function to decode field-body of FIELD in MODE.
@@ -326,8 +321,7 @@
 	       (funcall mime-update-field-decoder-cache
 			field (car mode))
 	     (setcdr mode
-		     (cdr (assq (car mode) mime-field-decoder-cache)))
-	     ))))
+		     (cdr (assq (car mode) mime-field-decoder-cache)))))))
 
 ;;;###autoload
 (defun mime-find-field-decoder (field &optional mode)
@@ -342,21 +336,18 @@
 	    (cdr p)
 	  (cdr (funcall mime-update-field-decoder-cache
 			field (or mode 'summary)))))
-    (inline (mime-find-field-decoder-internal field mode))
-    ))
+    (inline (mime-find-field-decoder-internal field mode))))
 
 ;;;###autoload
 (defun mime-update-field-decoder-cache (field mode &optional function)
   "Update field decoder cache `mime-field-decoder-cache'."
   (cond ((eq function 'identity)
-	 (setq function nil)
-	 )
+	 (setq function nil))
 	((null function)
 	 (let ((decoder-alist
 		(cdr (assq (or mode 'summary) mime-field-decoder-alist))))
 	   (setq function (cdr (or (assq field decoder-alist)
-				   (assq t decoder-alist)))))
-	 ))
+				   (assq t decoder-alist)))))))
   (let ((cell (assq mode mime-field-decoder-cache))
         ret)
     (if cell
@@ -407,8 +398,7 @@
      'plain	#'eword-decode-structured-field-body
      'wide	#'eword-decode-and-fold-structured-field-body
      'summary	#'eword-decode-and-unfold-structured-field-body
-     'nov	#'eword-decode-and-unfold-structured-field-body)
-    ))
+     'nov	#'eword-decode-and-unfold-structured-field-body)))
 
 ;; unstructured fields (default)
 (mime-set-field-decoder
@@ -442,8 +432,7 @@
       ;; Don't decode
       (if (eq mode 'summary)
 	  (std11-unfold-string field-body)
-	field-body)
-      )))
+	field-body))))
 
 ;;;###autoload
 (defun mime-decode-header-in-region (start end
@@ -480,11 +469,8 @@
 		  (let ((body (buffer-substring p end))
 			(default-mime-charset default-charset))
 		    (delete-region p end)
-		    (insert (funcall field-decoder body (1+ len)))
-		    ))
-		))
-	  (eword-decode-region (point-min) (point-max) t)
-	  )))))
+		    (insert (funcall field-decoder body (1+ len)))))))
+	  (eword-decode-region (point-min) (point-max) t))))))
 
 ;;;###autoload
 (defun mime-decode-header-in-buffer (&optional code-conversion separator)
@@ -503,12 +489,12 @@
 	  (concat "^\\(" (regexp-quote (or separator "")) "\\)?$")
 	  nil t)
 	 (match-beginning 0)
-       (point-max)
-       ))
+       (point-max)))
    code-conversion))
 
 (defalias 'eword-decode-header 'mime-decode-header-in-buffer)
-(make-obsolete 'eword-decode-header 'mime-decode-header-in-buffer)
+(make-obsolete 'eword-decode-header
+	       'mime-decode-header-in-buffer "28 Oct 1998")
 
 
 ;;; @ encoded-words decoder
@@ -554,39 +540,38 @@
 		  nil)))
 	  (if (and eword-decode-allow-incomplete-encoded-text
 		   rest
-		   (caaar rest)
-		   (string-equal (downcase charset) (downcase (caaar rest)))
-		   (equal language (cdaar rest)))
+		   (cl-caaar rest)
+		   (string-equal (downcase charset) (downcase (cl-caaar rest)))
+		   (equal language (cl-cdaar rest)))
 	      ;; Concatenate text of which the charset is the same.
 	      (setcdr (car rest) (concat (cdar rest) text))
 	    (push (cons (cons charset language) text) rest))
 	;; Don't decode encoded-word.
 	(push (cons (cons nil language) (nth 4 word)) rest)))
     (while rest
-      (setq word (or (and (setq charset (caaar rest))
+      (setq word (or (and (setq charset (cl-caaar rest))
 			  (condition-case err
-			      (decode-mime-charset-string (cdar rest) charset)
+			      (mime-charset-decode-string (cdar rest) charset)
 			    (error
 			     (message "%s" (error-message-string err))
 			     nil)))
-		     (concat (when (cdr rest) " ")
-			     (cdar rest)
-			     (when (and words
-					(not (eq (string-to-char words) ? )))
-			       " "))))
+		     (concat
+		      (when (cdr rest) " ")
+		      (cdar rest)
+		      (when (and words
+				 (not (eq (string-to-char (car words)) ?\s)))
+			" "))))
       (when must-unfold
 	(setq word (mapconcat (lambda (chr)
-				(cond ((eq chr ?\n) "")
-				      ((eq chr ?\r) "")
+				(cond ((memq chr '(?\n ?\r)) nil)
 				      ((eq chr ?\t) " ")
-				      (t (char-to-string chr))))
-			      (std11-unfold-string word)
-			      "")))
-      (when (setq language (cdaar rest))
+				      (t (list chr))))
+			      (std11-unfold-string word) nil)))
+      (when (setq language (cl-cdaar rest))
 	(put-text-property 0 (length word) 'mime-language language word))
-      (setq words (concat word words)
-	    rest (cdr rest)))
-    words))
+      (when (> (length word) 0) (setq words (cons word words)))
+      (setq rest (cdr rest)))
+    (apply 'concat words)))
 
 ;;; @ lexical analyze
 ;;;
@@ -618,11 +603,11 @@
 returns nil, next function is used.  Otherwise the return value will
 be the result.")
 
-(defun eword-analyze-quoted-string (string start &optional must-unfold)
+(defun eword-analyze-quoted-string (string start &optional _must-unfold)
   (let ((p (std11-check-enclosure string ?\" ?\" nil start))
 	ret)
     (when p
-      (setq ret (decode-mime-charset-string
+      (setq ret (mime-charset-decode-string
 		 (std11-strip-quoted-pair
 		  (substring string (1+ start) (1- p)))
 		 default-mime-charset))
@@ -631,7 +616,7 @@
       (cons (cons 'quoted-string ret)
 	    p))))
 
-(defun eword-analyze-domain-literal (string start &optional must-unfold)
+(defun eword-analyze-domain-literal (string start &optional _must-unfold)
   (std11-analyze-domain-literal string start))
 
 (defun eword-analyze-comment (string from &optional must-unfold)
@@ -649,17 +634,16 @@
 	  (cond ((eq chr ?\\)
 		 (setq i (1+ i))
 		 (if (>= i len)
-		     (throw 'tag nil)
-		   )
-		 (setq last-str (concat last-str
-					(substring string from (1- i))
-					(char-to-string (aref string i)))
+		     (throw 'tag nil))
+		 (setq last-str (cons (list (aref string i))
+				      (cons (substring string from (1- i))
+					    last-str))
 		       i (1+ i)
-		       from i)
-		 )
+		       from i))
 		((eq chr ?\))
-		 (setq ret (concat last-str
-				   (substring string from i)))
+		 (setq ret
+		       (apply 'concat
+			      (substring string from i) (nreverse last-str)))
 		 (throw 'tag (cons
 			      (cons 'comment
 				    (nreverse
@@ -667,42 +651,36 @@
 					 dest
 				       (cons
 					(eword-decode-string
-					 (decode-mime-charset-string
+					 (mime-charset-decode-string
 					  ret default-mime-charset)
 					 must-unfold)
-					dest)
-				       )))
-			      (1+ i)))
-		 )
+					dest))))
+			      (1+ i))))
 		((eq chr ?\()
 		 (if (setq ret (eword-analyze-comment string i must-unfold))
 		     (setq last-str
-			   (concat last-str
-				   (substring string from i))
+			   (apply 'concat (substring string from i)
+				  (nreverse last-str))
 			   dest
 			   (if (string= last-str "")
 			       (cons (car ret) dest)
-			     (list* (car ret)
+			     (cl-list* (car ret)
 				    (eword-decode-string
-				     (decode-mime-charset-string
+				     (mime-charset-decode-string
 				      last-str default-mime-charset)
 				     must-unfold)
-				    dest)
-			     )
+				    dest))
 			   i (cdr ret)
 			   from i
-			   last-str "")
-		   (throw 'tag nil)
-		   ))
+			   last-str nil)
+		   (throw 'tag nil)))
 		(t
-		 (setq i (1+ i))
-		 ))
-	  )))))
+		 (setq i (1+ i)))))))))
 
-(defun eword-analyze-spaces (string start &optional must-unfold)
+(defun eword-analyze-spaces (string start &optional _must-unfold)
   (std11-analyze-spaces string start))
 
-(defun eword-analyze-special (string start &optional must-unfold)
+(defun eword-analyze-special (string start &optional _must-unfold)
   (std11-analyze-special string start))
 
 (defun eword-analyze-encoded-word (string start &optional must-unfold)
@@ -713,7 +691,11 @@
     (while match
       (setq next (match-end 0))
       (push (list (match-string 2 string) ;; charset
-		  (match-string 3 string) ;; language
+		  (when (match-beginning 3) ;; language
+		    (intern
+		     (downcase
+		      (substring string
+				 (1+ (match-beginning 3)) (match-end 3)))))
 		  (match-string 4 string) ;; encoding
 		  (match-string 5 string) ;; encoded-text
 		  (match-string 1 string)) ;; encoded-word
@@ -721,20 +703,29 @@
       (setq match (and (string-match regexp string next)
 		       (= next (match-beginning 0)))))
     (when words
-      (cons (cons 'atom (eword-decode-encoded-words (nreverse words)
-						    must-unfold))
-	    next))))
+      (setq words (eword-decode-encoded-words (nreverse words) must-unfold))
+      (cons
+       (cons 'atom
+	     (if (and (string-match (eval-when-compile
+				      (concat "[" std11-special-char-list "]"))
+				    words)
+		      (null (eq (cdr (std11-analyze-quoted-string words 0))
+				(length words))))
+		 ;; Docoded words contains non-atom special chars and are
+		 ;; not quoted.
+		 (std11-wrap-as-quoted-string words)
+	       words))
+       next))))
 
-(defun eword-analyze-atom (string start &optional must-unfold)
+(defun eword-analyze-atom (string start &optional _must-unfold)
   (if (and (string-match std11-atom-regexp string start)
 	   (= (match-beginning 0) start))
       (let ((end (match-end 0)))
-	(cons (cons 'atom (decode-mime-charset-string
+	(cons (cons 'atom (mime-charset-decode-string
 			   (substring string start end)
 			   default-mime-charset))
 	      ;;(substring string end)
-	      end)
-	)))
+	      end))))
 
 (defun eword-lexical-analyze-internal (string start must-unfold)
   (let ((len (length string))
@@ -745,17 +736,13 @@
 		  func r)
 	      (while (and (setq func (car rest))
 			  (null
-			   (setq r (funcall func string start must-unfold)))
-			  )
+			   (setq r (funcall func string start must-unfold))))
 		(setq rest (cdr rest)))
 	      (or r
-		  (cons (cons 'error (substring string start)) (1+ len)))
-	      ))
+		  (cons (cons 'error (substring string start)) (1+ len)))))
       (setq dest (cons (car ret) dest)
-	    start (cdr ret))
-      )
-    (nreverse dest)
-    ))
+	    start (cdr ret)))
+    (nreverse dest)))
 
 (defun eword-lexical-analyze (string &optional start must-unfold)
   "Return lexical analyzed list corresponding STRING.
@@ -783,18 +770,15 @@
     (cond ((eq type 'quoted-string)
 	   (std11-wrap-as-quoted-string value))
 	  ((eq type 'comment)
-	   (let ((dest ""))
+	   (let (dest)
 	     (while value
-	       (setq dest (concat dest
-				  (if (stringp (car value))
-				      (std11-wrap-as-quoted-pairs
-				       (car value) '(?( ?)))
-				    (eword-decode-token (car value))
-				    ))
-		     value (cdr value))
-	       )
-	     (concat "(" dest ")")
-	     ))
+	       (setq dest (cons (if (stringp (car value))
+				    (std11-wrap-as-quoted-pairs
+				     (car value) '(?\( ?\)))
+				  (eword-decode-token (car value)))
+				dest)
+		     value (cdr value)))
+	     (apply 'concat "(" (nreverse (cons ")" dest)))))
 	  (t value))))
 
 (defun eword-extract-address-components (string &optional start)
@@ -809,10 +793,8 @@
 			   (std11-unfold-string string) start
 			   'must-unfold))))
          (phrase  (std11-full-name-string structure))
-         (address (std11-address-string structure))
-         )
-    (list phrase address)
-    ))
+         (address (std11-address-string structure)))
+    (list phrase address)))
 
 
 ;;; @ end
