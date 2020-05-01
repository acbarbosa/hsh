(use-package rainbow-delimiters
  :ensure t
  :hook (emacs-lisp-mode-hook . rainbow-delimiters-mode))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (show-paren-mode)
            (setq show-paren-style 'expression)
            (eldoc-mode)
            (linum-mode)))
