(package-initialize)

;; platform helpers
(defvar mswindows-p (string-match "windows" (symbol-name system-type)))
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))
(defvar linux-p (string-match "linux" (symbol-name system-type)))

;; platform specific fonts
(when mswindows-p
  (set-face-attribute 'default nil
                      :family "Consolas" :height 100))

(when linux-p
  (set-face-attribute 'default nil
                      :family "Ubuntu Mono" :height 100))

;; custom file
(setq custom-file "~/.emacs.d/custom.el")

;; load path
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/elpa")

;; setup package
(require 'setup-package)

;; install missing extensions
(defun init--install-packages ()
  (packages-install
   (cons 'company melpa)
   (cons 'company-go melpa)
   (cons 'exec-path-from-shell melpa)
   (cons 'go-mode melpa)
   (cons 'helm melpa)
   (cons 'helm-projectile melpa)
   (cons 'nyan-mode melpa)
   (cons 'projectile melpa)
   (cons 'zenburn-theme melpa)))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; setup cusomizations
(require 'setup-defaults)
(require 'setup-clipboard)
(require 'setup-company)
(require 'setup-exec-path-from-shell)
(require 'setup-go)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-theme)
