;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

;; Installs straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use-package
(straight-use-package 'use-package)
(setq use-package-hook-name-suffix nil)
(setq debug-on-error t)

;; Configures use-package to always use straight.el
(use-package straight
	     :custom (straight-use-package-by-default t))

(setq custom-file null-device)

;; Setting up default theme
(add-to-list 'custom-theme-load-path
             (file-name-as-directory (concat user-emacs-directory "themes")))
(load-theme 'acbarbosa-dark t nil)
(load-theme 'acbarbosa-light t t)

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

;; Adds svg to list of supported image formats
;;(add-to-list 'image-types 'svg)

;; Load other configuration files
(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/config/")

