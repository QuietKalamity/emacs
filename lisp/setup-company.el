(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(add-to-list 'company-backends 'company-go)

(provide 'setup-company)
