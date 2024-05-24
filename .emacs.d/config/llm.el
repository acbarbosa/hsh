(use-package gptel
  :ensure t
  :config (setq gptel-api-key (auth-source-pick-first-password :host "api.openai.com")
                gptel-model "gpt-4o"))
