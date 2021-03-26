;; Setting up Marmalade repo
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(setq custom-file null-device)

(custom-set-variables
 '(linum-format "%3d ")
 '(package-selected-packages
   (quote (use-package))))

(package-install-selected-packages)

;; use-package configuration
(require 'use-package)
(setq use-package-hook-name-suffix nil)

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

;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

;; Configuring modeline
(setq-default mode-line-format
      '("%e"
        mode-line-modified
        "  "
        mode-line-buffer-identification
        "  "
        mode-line-position
        "%m"))

;; Load other configuration files
(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/config/")

