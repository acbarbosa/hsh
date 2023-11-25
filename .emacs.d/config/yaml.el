(use-package yaml-mode
  :hook ((yaml-mode-hook . lsp)
         (yaml-mode-hook . display-line-numbers-mode)))
