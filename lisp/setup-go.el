(require 'go-guru)
(require 'go-mode)
(require 'go-rename)

(defun my-go-mode-hook ()

  ;; Setup eldoc support
  (go-eldoc-setup)
  
  ;; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  
  ;; Call goimports before saving
  (add-hook 'before-save-hook 'gofmt-before-save)

  ;; Customize compile command
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -race -v && go test -race -v -ginkgo.noColor -ginkgo.noisyPendings=false && go vet"))
  ;;       "go build -v && go test -v && go vet"))

  ;; Guru settings
  (go-guru-hl-identifier-mode)

  ;; Setup company backend
  (add-to-list 'company-backends 'company-go)
  
  ;; Setup local key bindings
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  (local-set-key (kbd "M-p") 'compile)
  (local-set-key (kbd "M-P") 'recompile)
  (local-set-key (kbd "M-]") 'next-error)
  (local-set-key (kbd "M-[") 'previous-error)

  )

(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'setup-go)
