(use-package company
  :ensure t)


(use-package tide
  :ensure t
  :after  (typescript-mode company flycheck)
  :hook   ((typescript-mode-hook . tide-setup)
           (typescript-mode-hook . tide-hl-identifier-mode)
           (typescript-mode-hook . linum-mode)
           (before-save-hook . tide-format-before-save)))

(use-package web-mode
  :ensure t
  :mode   ("\\.tsx\\'" . web-mode)
  :hook   (web-mode-hook . typescript-mode))
