(use-package css-mode
  :ensure t
  :diminish ""
  :config (progn
    (add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
  )
)
