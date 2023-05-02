(use-package web-mode
  :mode (("\\.html\\'" . web-mode)
         ("\\.css\\'" . web-mode)
         ("\\.scss\\'" . web-mode)
         ("\\.tsx\\'" . web-mode))
  :hook (web-mode-hook . lsp)
  :commands lsp)
