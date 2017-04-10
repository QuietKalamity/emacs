;; no menu/tool/scroll bars
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; disable splash screen
(setq inhibit-splash-screen t)

;; disable startup message
(setq inhibit-startup-message t)

;; make the initial scratch buffer empty
(setq initial-scratch-message "")

;; only require 'y' and 'n', not 'yes' and 'no'
(fset 'yes-or-no-p 'y-or-n-p)

;; highlight matching parentheses
(show-paren-mode t)

;; highlight the cursor line
(global-hl-line-mode t)

;; tab settings
(setq-default c-basic-offset 4)     ; indents 4 chars
(setq-default tab-width 4)          ; and 4 char wide for TAB
(setq-default indent-tabs-mode nil) ; and force use of spaces

;; auto-refresh files when changed
(global-auto-revert-mode t)

;; backups
(setq backup-by-copying t)
(setq backup-directory-alist `(("." . "~/.emacs.backups/")))

;; auto-saves
(setq auto-save-list-file-prefix "~/.emacs.backups/")
(setq auto-save-file-name-transforms `((".*" "~/.emacs.backups/" t)))

;; interlocks
(setq create-lockfiles nil)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

(provide 'setup-defaults)
