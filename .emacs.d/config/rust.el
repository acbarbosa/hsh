(use-package rustic
  :ensure t
  :hook ((rustic-mode-hook . display-line-numbers-mode)
         (rustic-mode-hook . hs-minor-mode)
         (rustic-mode-hook . lsp)))
