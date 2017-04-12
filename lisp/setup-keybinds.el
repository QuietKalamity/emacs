
;; avy
(global-set-key (kbd "C-c SPC") 'avy-goto-char)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(provide 'setup-keybinds)
