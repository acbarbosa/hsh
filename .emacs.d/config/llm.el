(use-package gptel
  :ensure t
  :config
  (setq gptel-api-key (auth-source-pick-first-password :host "api.openai.com")
        gptel-model "gpt-4o")
  (add-to-list 'gptel-directives '(spanish-helper . "You're a spanish teacher that will help me to write better texts in Spanish. Please correct my grammar and ortographic mistakes, suggests better ways to write the sentences, focusing on clarity and also to use more common words and expressions. Please, highlight the changes and please explain to me each one of the suggestions.")))

