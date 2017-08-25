;;; setup-elm.el --- Summary
;;;
;;; Filename: setup-elm.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Commentary:

(require 'company)
(require 'elm-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Code:

(defun elm-mode-setup ()
  "Perform the elm-mode environment setup."

  ;; Setup elm-format
  (setq elm-format-on-save t)
  (setq elm-format-elm-version "0.18")

  ;; Setup company backend
  (setq company-backends '(company-elm))

  ;; Setup flycheck
  (flycheck-elm-setup)
  
  ;; Setup local key bindings
  (local-set-key (kbd "M-p") 'elm-compile-buffer)

  (elm-oracle-setup-completion)

  )

(add-hook 'elm-mode-hook 'elm-mode-setup)

(provide 'setup-elm)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setup-elm.el ends here
