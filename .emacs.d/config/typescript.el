(use-package typescript-mode
  :ensure t
  :hook ((typescript-mode-hook . lsp)
         (typescript-mode-hook . linum-mode)))

(use-package web-mode
  :ensure t
  :hook (web-mode-hook . typescript-mode)
  :mode ("\\.tsx\\'" . web-mode))
