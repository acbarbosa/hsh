(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

;; Configure shellcheck to run on sh files
(require 'flycheck)
(flycheck-define-checker sh-shellcheck
  "A shell script syntax using Shellcheck"
  :command ("shellcheck" "-f" "checkstyle"
            "-s" (eval (symbol-name sh-shell))
            source)
  :modes sh-mode
  :error-parser flycheck-parse-checkstyle)
(add-hook 'sh-mode-hook 'flycheck-mode)
