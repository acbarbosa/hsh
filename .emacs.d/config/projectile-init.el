(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'ido)
  :bind ("C-c pf" . 'projectile-find-file))
