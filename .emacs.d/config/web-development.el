(use-package css-mode
  :straight (:type built-in)
  :hook ((css-mode-hook . lsp)
         (css-mode-hook . display-line-numbers-mode)
         (css-mode-hook . hs-minor-mode)
         (css-mode-hook . electric-pair-mode))
  :commands lsp)

(add-to-list 'lsp-language-id-configuration '("\\.scss\\'" . "scss"))


(use-package web-mode
  :mode ("\\.html\\'" "\\.tsx\\'")
  :hook ((web-mode-hook . lsp)
         (web-mode-hook . display-line-numbers-mode))
  :config
  (setq web-mode-auto-close-style 2)
  :commands lsp)


