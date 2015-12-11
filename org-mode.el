(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-agenda-files (list "~/Documents/org-agenda/tw"
                             "~/Documents/org-agenda/personal.org"))
(setq org-log-done t)
