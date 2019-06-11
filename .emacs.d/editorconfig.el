(unless (package-installed-p 'editorconfig)
  (package-install 'editorconfig))

(load "editorconfig")
(editorconfig-mode 1)
