(require 'org)

;; Configuring task types
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
        (sequence "IN PROGRESS(p)" "|" "CANCELLED(c@/!)" "MEETING(m)")))

;; Configuring agenda files
(setq org-agenda-files (list "~/.org-agenda/lean-engineering.org"))

(setq org-log-done t)

;; Configuring shortcuts
(define-key global-map (kbd "<f12>") 'org-agenda)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map (kbd "<f11>") 'org-capture)
(define-key global-map (kbd "<f9> i") 'org-agenda-clock-in)
(define-key global-map (kbd "<f9> o") 'org-agenda-clock-out)
