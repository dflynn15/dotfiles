(use-package prettier
  :ensure t
  :init (progn
    (add-hook 'web-mode-hook 'prettier-mode)
  )
)
