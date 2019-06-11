(unless (package-installed-p 'projectile)
  (package-install 'projectile))

(global-set-key (kbd "C-c pf") 'projectile-find-file)
