(require 'helm)
(require 'helm-config)

(helm-mode 1)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

(helm-autoresize-mode t)

;; (eval-after-load 'flycheck
;;   '(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck))

(provide 'setup-helm)
