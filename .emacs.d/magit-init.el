(unless (package-installed-p 'magit)
  (package-install 'magit))

;; Turning on global-magit-file-buffer-mode
;;(global-magit-file-buffer-mode)

;; Shortcuts
(global-set-key (kbd "C-x g") 'magit-status)

