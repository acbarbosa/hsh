(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (show-paren-mode)
            (setq show-paren-style 'expression)
            (rainbow-delimiters-mode)
            (eldoc-mode)))
(add-hook 'emacs-lisp-mode-hook 'linum-mode)
