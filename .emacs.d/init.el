;; Setting up Marmalade repo
(require 'package)
(add-to-list 'package-archives
    '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Configuring required packages
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (cider markdown-mode projectile magit flycheck editorconfig))))
(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Setting up default theme
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/themes"))
(load-theme 'acbarbosa t t)
(enable-theme 'acbarbosa)

;; Deactivate menu bar
(menu-bar-mode -1)

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
(load "~/.emacs.d/markdown-init")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
