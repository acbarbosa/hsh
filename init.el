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

;; Configurating windmove
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; Activating line numbering
(global-linum-mode 1)

;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

;; Load other configuration files
(load "~/.emacs.d/magit-init")
(load "~/.emacs.d/projectile-init")
(load "~/.emacs.d/copypaste")

