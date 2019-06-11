(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))

(require 'markdown-mode)
(setq markdown-command "/usr/local/bin/multimarkdown")
