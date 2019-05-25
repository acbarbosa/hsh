(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook
          (lambda ()
            ;; Paren minor mode
            (show-paren-mode)
            (setq show-paren-style 'mixed)

            ;; ElectricPair minor-mode
            (electric-pair-mode)
            (setq electric-pair-preserve-balance t)
            (setq electric-pair-delete-adjacen-pairs t)

            ;; HideShow minor mode
            (hs-minor-mode)
            (define-key clojure-mode-map (kbd "\C-c-") 'hs-hide-all)
            (define-key clojure-mode-map (kbd "\C-c+") 'hs-show-all)
            (define-key clojure-mode-map (kbd "\C-ct") 'hs-toggle-hiding)

            ;; CljRefactor minor mode
(clj-refactor-mode t)))
