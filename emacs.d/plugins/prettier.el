(use-package prettier
  :ensure t
  :init (progn
    (add-hook 'after-init-hook #'global-prettier-mode)
  )
)
