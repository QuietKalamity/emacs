(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

(provide 'setup-web-mode)
