;;; setup-web-mode.el --- Summary
;;;
;;; Filename: setup-web-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Commentary:

(require 'company)
(require 'flycheck)
(require 'web-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Code:

(defun web-mode-setup ()
  "Perform the web-mode environment setup."

  ;; Setup the web-mode offsets
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)

  ;; Use html-tidy for flycheck
  (flycheck-add-mode 'html-tidy 'web-mode)
  
  )

(add-hook 'web-mode-hook 'web-mode-setup)

(provide 'setup-web-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setup-web-mode.el ends here
