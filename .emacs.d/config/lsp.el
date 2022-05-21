(use-package company)

(use-package which-key
  :config
  (which-key-mode))
  
(use-package lsp-mode
  :after (company which-key)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)
