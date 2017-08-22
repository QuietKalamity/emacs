(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-dabbrev-downcase nil)

(provide 'setup-company)
