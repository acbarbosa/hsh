(use-package clojure-mode
  :ensure t
  :bind (:map clojure-mode-map
              ("C-c -" . hs-hide-all)
              ("C-c +" . hs-show-all)
              ("C-c t" . hs-toggle-hiding))
  :hook ((clojure-mode-hook . linum-mode)
         (clojure-mode-hook . show-paren-mode)
         (clojure-mode-hook . electric-pair-mode)
         (clojure-mode-hook . hs-minor-mode))
  :init
  (setq show-paren-style 'mixed)
  (setq electric-pair-preserve-balance t)
  (setq electric-pair-delete-adjacent-pairs t))

(use-package cider
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :hook (clojure-mode-hook . rainbow-delimiters-mode))

(use-package clj-refactor
  :ensure t
  :hook (clojure-mode-hook . clj-refactor-mode))
