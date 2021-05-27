(use-package css-mode
  :ensure t
  :config (progn
    (add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
  )
)
