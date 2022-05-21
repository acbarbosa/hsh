(use-package typescript-mode
  :hook ((typescript-mode-hook . lsp)
         (typescript-mode-hook . linum-mode)))

(use-package web-mode
  :hook (web-mode-hook . typescript-mode)
  :mode ("\\.tsx\\'" . web-mode))
