(use-package flycheck
  :ensure t
  :hook (sh-mode-hook . flycheck-mode)
  :init
  ;; Configure shellcheck to run on sh files
  (flycheck-define-checker sh-shellcheck
  "A shell script syntax using Shellcheck"
  :command ("shellcheck" "-f" "checkstyle"
            "-s" (eval (symbol-name sh-shell))
            source)
  :modes sh-mode
  :error-parser flycheck-parse-checkstyle))  
