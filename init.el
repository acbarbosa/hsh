;; Setting up Marmalade repo
(require 'package)
(add-to-list 'package-archives
    '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


;; Configuring color-theme
(add-to-list 'load-path "~/.emacs.d/packages/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn (color-theme-initialize)
          (color-theme-goldenrod)))

;; Deactivating startup message
(setq inhibit-startup-message t 
 inhibit-startup-echo-area-message t)

;; Deactivating backup files
(setq make-backup-files nil)

;; Activating line numbering
(global-linum-mode 1)

;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

;; Load flycheck
(require 'flycheck)

;; Configuring editorconfig
(load "editorconfig")
(editorconfig-mode 1)

;; Load other configuration files
(load "~/.emacs.d/magit-init")
(load "~/.emacs.d/projectile-init")
(load "~/.emacs.d/copypaste")
(load "~/.emacs.d/shell")
(load "~/.emacs.d/javascript")
(load "~/.emacs.d/org-mode")
(load "~/.emacs.d/windmove")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (projectile magit flycheck editorconfig color-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
