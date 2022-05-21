(use-package sh-script
  :hook ((sh-mode-hook . lsp)
         (sh-mode-hook . linum-mode)))
