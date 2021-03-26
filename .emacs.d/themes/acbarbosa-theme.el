(deftheme acbarbosa
  "acbarbosa theme")

(let ((base-03 "#1C1C1C")
      (base-02 "#262626")
      (base-01 "#585858")
      (base-00 "#626262")
      (base-0  "#808080")
      (base-1  "#8A8A8A")
      (base-2  "#E4E4E4")
      (base-3  "#FFFFD7")
      (yellow  "#AF8700")
      (orange  "#D75F00")
      (red     "#D70000")
      (magenta "#AF005F")
      (violet  "#5F5FAF")
      (blue    "#0087FF")
      (cyan    "#00AFAF")
      (green   "#5F8700"))

  (custom-theme-set-faces
   'acbarbosa

   ;; Standard faces (https://www.gnu.org/software/emacs/manual/html_node/emacs/Standard-Faces.html)
   `(default ((t (:background ,base-03 :foreground ,base-0))))
   `(bold ((t (:bold t))))
   `(italic ((t (:italic t))))
   `(bold-italic ((t (:italic t :bold t))))
   `(underline ((t (:underline t))))
   `(mode-line ((t (:background ,base-3 :foreground ,base-01))))
   `(mode-line-inactive ((t (:background ,base-02 :foreground ,base-1))))
   `(vertical-border ((t (:background ,base-01 :foreground ,base-1))))
   `(header-line ((t (:background ,base-02 : foreground ,base-1))))
   `(region ((t (:background ,base-3))))
   `(isearch ((t (:bold t :background ,base-2 :foreground ,base-01))))
   `(query-replace ((t (:bold t :background ,base-02 :foreground ,base-1))))
   `(lazy-highlight ((t (:background ,base-01 :foreground ,base-2))))
   
   ;; Font Lock Faces (https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html)
   `(font-lock-warning-face ((t (:bold t :foreground ,red))))
   `(font-lock-function-name-face ((t (:bold t :foreground ,orange))))
   `(font-lock-variable-name-face ((t (:bold t :foreground ,yellow))))
   `(font-lock-keyword-face ((t (:foreground ,yellow))))
   `(font-lock-comment-face ((t (:foreground ,base-01))))
   `(font-lock-doc-face ((t (:foreground ,base-01))))
   `(font-lock-type-face ((t (:foreground ,orange :bold t))))
   `(font-lock-constant-face ((t (:foreground ,magenta))))
   `(font-lock-builtin-face ((t (:foreground ,yellow))))
   `(font-lock-string-face ((t (:foreground ,cyan))))

   `(highlight ((t (:background ,base-3))))
   `(show-paren-match ((t (:background ,base-2))))
   `(info-menu-5 ((t (:underline t))))
   `(info-node ((t (:bold t))))
   `(info-xref ((t (:bold t :foreground ,yellow))))

   ;; Rainbow Delimiters Faces
   `(rainbow-delimiters-depth-1-face ((t (:bold t :foreground ,red))))
   `(rainbow-delimiters-depth-2-face ((t (:bold t :foreground ,magenta))))
   `(rainbow-delimiters-depth-3-face ((t (:bold t :foreground ,violet))))
   `(rainbow-delimiters-depth-4-face ((t (:bold t :foreground ,blue))))
   `(rainbow-delimiters-depth-5-face ((t (:bold t :foreground ,cyan))))
   `(rainbow-delimiters-depth-6-face ((t (:bold t :foreground ,green))))
   `(rainbow-delimiters-depth-7-face ((t (:bold t :foreground ,yellow))))
   `(rainbow-delimiters-depth-8-face ((t (:bold t :foreground ,orange))))
   `(rainbow-delimiters-depth-9-face ((t (:bold t :foreground ,green))))

   ;; Line Numbering face
   `(linum ((t (:background ,base-02 :foreground ,base-1))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'acbarbosa)
