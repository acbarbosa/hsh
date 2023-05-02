(use-package typescript-mode
  :hook ((typescript-mode-hook . lsp)
         (typescript-mode-hook . linum-mode)
         (typescript-mode-hook . web-mode)))
