(use-package company)

(use-package which-key
  :config
  (which-key-mode))
  
(use-package yasnippet)

(use-package lsp-mode
  :after (company which-key)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((lsp-mode-hook . lsp-enable-which-key-integration)
         (lsp-mode-hook . yas-minor-mode))
  :commands lsp)

(use-package lsp-ui)

(use-package lsp-treemacs)
