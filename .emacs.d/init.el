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

;; Load other configuration files
(load "~/.emacs.d/magit-init")
(load "~/.emacs.d/projectile-init")
(load "~/.emacs.d/copypaste")
(load "~/.emacs.d/shell")
(load "~/.emacs.d/javascript")
(load "~/.emacs.d/editorconfig")
(load "~/.emacs.d/org-mode")
(load "~/.emacs.d/windmove")
(load "~/.emacs.d/markdown-init")
(load "~/.emacs.d/elisp-init")
(load "~/.emacs.d/clojure")
(load "~/.emacs.d/haskell")
(load "~/.emacs.d/typescript")
(load "~/.emacs.d/wakatime")

(custom-set-variables
 '(linum-format "%3d ")
 '(package-selected-packages
   (quote
    (wakatime-mode web-mode tide terraform-mode rainbow-delimiters projectile markdown-mode magit editorconfig company clj-refactor))))
