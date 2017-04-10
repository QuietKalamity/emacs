(when (memq window-system '(mac ns))
  (exec-path-from-shell-copy-env "GOPATH")
  (exec-path-from-shell-initialize))

(provide 'setup-exec-path-from-shell)
