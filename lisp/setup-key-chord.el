(require 'key-chord)
(key-chord-mode 1)

(setq-default key-chord-two-keys-delay 0.5)

(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

(provide 'setup-key-chord)
