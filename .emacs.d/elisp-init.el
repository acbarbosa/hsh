(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (show-paren-mode)
            (setq show-paren-style 'expression)
            (rainbow-delimiters-mode)
            (eldoc-mode)))
