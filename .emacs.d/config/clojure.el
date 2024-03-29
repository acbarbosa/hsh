(use-package clojure-mode
  :hook ((clojure-mode-hook . display-line-numbers-mode)
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
