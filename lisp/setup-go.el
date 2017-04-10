(defun my-go-mode-hook ()

  ;; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ;; Call goimports before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  
  ;; Godef jump key bindings
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)

  )

(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'setup-go)
