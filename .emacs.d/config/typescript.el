(use-package typescript-mode
  :hook ((typescript-mode-hook . lsp)
         (typescript-mode-hook . display-line-numbers-mode)
         (typescript-mode-hook . web-mode)))
