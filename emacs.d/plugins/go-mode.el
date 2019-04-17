(use-package go-mode
  :ensure t
  :diminish "go"
  :config (progn
    (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
    (add-to-list 'auto-mode-alist '("\\.wasm\\'" . go-mode))
  )
)

(use-package golint
  :ensure t
  :diminish "go"
  :config (progn
    (add-to-list 'load-path "~/.go/src/github.com/golang/lint/misc/emacs")
  )
)
