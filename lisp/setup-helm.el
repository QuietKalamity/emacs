(require 'helm)
(require 'helm-config)

(helm-mode 1)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

(helm-autoresize-mode t)

;; (eval-after-load 'flycheck
;;   '(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(provide 'setup-helm)
