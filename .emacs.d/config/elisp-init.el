(use-package rainbow-delimiters
  :ensure t
  :hook (emacs-lisp-mode-hook . rainbow-delimiters-mode))

(use-package parinfer
  :ensure t
  :hook   (emacs-lisp-mode-hook . parinfer-mode))

(use-package paredit
  :ensure t
  :hook   (emacs-lisp-mode-hook . paredit-mode)
  :bind   (:map paredit-mode-map
                ("M-)" . paredit-forward-slurp-sexp)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (show-paren-mode)
            (setq show-paren-style 'expression)
            (eldoc-mode)
            (display-line-numbers-mode)))
  
