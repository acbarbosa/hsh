(use-package sh-script
  :hook ((sh-mode-hook . lsp)
         (sh-mode-hook . display-line-numbers-mode)))
