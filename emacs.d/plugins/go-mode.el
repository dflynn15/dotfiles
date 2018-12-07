(use-package go-mode
  :ensure t
  :diminish "go"
  :config (progn
    (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
  )
)
