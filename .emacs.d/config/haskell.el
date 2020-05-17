(use-package haskell-mode
  :ensure t
  :hook ((haskel-mode-hook . turn-on-haskell-doc-mode)
         (haskel-mode-hook . turn-on-haskell-indentation)))
