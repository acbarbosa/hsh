(deftheme acbarbosa
  "acbarbosa theme")

(custom-theme-set-faces
 'acbarbosa

 ;; Standard faces (https://www.gnu.org/software/emacs/manual/html_node/emacs/Standard-Faces.html)
 '(default ((t (:background "#202020" :foreground "#D0D0D0"))))
 '(bold ((t (:bold t))))
 '(italic ((t (:italic t))))
 '(bold-italic ((t (:italic t :bold t))))
 '(underline ((t (:underline t))))
 '(mode-line ((t (:background "#0000CD" :foreground "#D0D0D0"))))
 '(mode-line-inactive ((t (:background "#D0D0D0" :foreground "#202020"))))
 '(vertical-border ((t (:background "#D0D0D0" :foreground "#D0D0D0"))))
 '(header-line ((t (:background "red" :foreground "gray70"))))
 '(region ((t (:background "#4876ff"))))
 '(isearch ((t (:bold t :background "#0000CDu" :foreground "#D0D0D0"))))
 '(query-replace ((t (:bold t :background "#0000CD" :foreground "#D0D0D0"))))
 '(lazy-highlight ((t (:background "#4876FF" :foreground "#D0D0D0"))))
 
 ;; Font Lock Faces (https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html)
 '(font-lock-warning-face ((t (:bold t :background "#EE7600" :foreground "#D0D0D0"))))
 '(font-lock-function-name-face ((t (:bold t :foreground "#698B22"))))
 '(font-lock-variable-name-face ((t (:bold t :foreground "gold"))))
 '(font-lock-keyword-face ((t (:foreground "gold"))))
 '(font-lock-comment-face ((t (:foreground "#606060"))))
 '(font-lock-doc-face ((t (:foreground "#606060"))))
 '(font-lock-type-face ((t (:foreground "#EE7600" :bold t))))
 '(font-lock-constant-face ((t (:foreground "#EE7600"))))
 '(font-lock-builtin-face ((t (:foreground "gold"))))
 '(font-lock-string-face ((t (:foreground "pale goldenrod"))))

 '(highlight ((t (:background "dark slate blue"))))
 '(info-menu-5 ((t (:underline t))))
 '(info-node ((t (:bold t))))
 '(info-xref ((t (:bold t :foreground "pale goldenrod"))))

 ;; Faces for org-mode
 '(org-level-1 ((t (:bold t :foreground "red"))))

 ;; Rainbow Delimiters Faces
 '(rainbow-delimiters-depth-1-face ((t (:bold t :foreground "#FF0000"))))
 '(rainbow-delimiters-depth-2-face ((t (:bold t :foreground "#00FFFF"))))
 '(rainbow-delimiters-depth-3-face ((t (:bold t :foreground "#FF8000"))))
 '(rainbow-delimiters-depth-4-face ((t (:bold t :foreground "#0080FF"))))
 '(rainbow-delimiters-depth-5-face ((t (:bold t :foreground "#FFFF00"))))
 '(rainbow-delimiters-depth-6-face ((t (:bold t :foreground "#0000FF"))))
 '(rainbow-delimiters-depth-7-face ((t (:bold t :foreground "#80FF00"))))
 '(rainbow-delimiters-depth-8-face ((t (:bold t :foreground "#8000FF"))))
 '(rainbow-delimiters-depth-9-face ((t (:bold t :foreground "#00FF00"))))

 ;; Line Numbering face
 '(linum ((t (:background "#202020" :foreground "#00CD00")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'acbarbosa)
