(setq evil-want-C-u-scroll t)

(require 'evil)

(evil-mode 1)

;; Evil-mode attempts to bind to C-z which should be reserved
;; for suspending a terminal application.
(define-key evil-motion-state-map "\C-z" nil)

(provide 'setup-evil)
