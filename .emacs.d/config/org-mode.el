(use-package org
  :hook (org-mode-hook . visual-line-mode)
  :mode ("\\.org" . org-mode)
  :bind (([f12]  . org-agenda)
         ("C-c c" . org-capture)
         ("<f9> i" . org-clock-in)
         ("<f9> o" . org-clock-out))
  :config
  (progn
    ;; Configuring task types
    (setq org-todo-keywords
          '((sequence "TODO(t)" "|" "DONE(d)")
            (sequence "IN PROGRESS(p)" "|" "CANCELLED(c@/!)" "MEETING(m)")))
    ;; Configuring agenda files
    (setq org-agenda-files (list "~/.org-agenda/lean-engineering.org"))
    (setq org-log-done t)))
