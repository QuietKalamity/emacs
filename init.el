;;; init.el --- Summary
;;;
;;; Filename: init.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Commentary:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Code:

(package-initialize)

;; load path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/elpa")

;; custom file
(setq custom-file "~/.emacs.d/lisp/custom.el")
(when (file-exists-p "~/.emacs.d/lisp/custom.el")
     (load custom-file))

;; platform helpers
(defvar mswindows-p (string-match "windows" (symbol-name system-type)))
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))
(defvar linux-p (string-match "linux" (symbol-name system-type)))

;; platform specific fonts
(when mswindows-p
  (set-face-attribute 'default nil
                      :family "Consolas" :height 120))

(when linux-p
  (set-face-attribute 'default nil
                      :family "Ubuntu Mono" :height 100))

(when macosx-p
  (set-face-attribute 'default nil
                      :family "Menlo" :height 140))

;; load package initialization
(require 'setup-package)

;; install missing extensions
(defun init--install-packages ()
  "Perform the package install."
  
  (packages-install
   (cons 'avy melpa)
   (cons 'base16-theme melpa)
   (cons 'company melpa)
   (cons 'company-go melpa)
   (cons 'elm-mode melpa)
   (cons 'exec-path-from-shell melpa)
   (cons 'evil melpa)
   (cons 'flycheck melpa)
   (cons 'flycheck-elm melpa)
   (cons 'go-eldoc melpa)
   (cons 'go-guru melpa)
   (cons 'go-mode melpa)
   (cons 'go-rename melpa)
   (cons 'gotest melpa)
   (cons 'helm melpa)
   (cons 'helm-projectile melpa)
   (cons 'key-chord melpa)
   (cons 'magit melpa)
   (cons 'nyan-mode melpa)
   (cons 'projectile melpa)
   (cons 'web-mode melpa)
   (cons 'yasnippet melpa)
   (cons 'zenburn-theme melpa)))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; setup cusomizations
(require 'setup-defaults)
(require 'setup-clipboard)
(require 'setup-keybinds)
(require 'setup-company)
(require 'setup-elm)
(require 'setup-evil)
(require 'setup-exec-path-from-shell)
(require 'setup-flycheck)
(require 'setup-go)
(require 'setup-helm)
(require 'setup-key-chord)
(require 'setup-projectile)
(require 'setup-theme)
(require 'setup-web-mode)
(require 'setup-yasnippet)

(provide 'init)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
