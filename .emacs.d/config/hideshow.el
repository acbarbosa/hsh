(use-package hideshow
  :straight (:type built-in)
  :bind (("C-c -" . 'hs-hide-all)
         ("C-c +" . 'hs-show-all)
         ("C-c t" . 'hs-toggle-hiding)))
