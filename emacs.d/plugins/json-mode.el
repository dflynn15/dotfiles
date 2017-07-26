(use-package json-mode
  :ensure t
  :diminish ""
  :config (progn
    (add-to-list 'auto-mode-alist '("\\.json?\\'" . json-mode))
  )
)
