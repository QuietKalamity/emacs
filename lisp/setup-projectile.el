(projectile-global-mode)

(when mswindows-p
  (setq projectile-indexing-method 'alien))

(setq projectile-enable-caching t)

(provide 'setup-projectile)
