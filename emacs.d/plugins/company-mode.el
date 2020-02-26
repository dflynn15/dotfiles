(use-package company
  :ensure t
  :diminish ""
  :config (progn
    (add-hook 'after-init-hook 'global-company-mode)
  )
)
