(use-package company
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))
  
(use-package lsp-mode
  :ensure t
  :after (company which-key)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)
