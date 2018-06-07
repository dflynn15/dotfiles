(use-package prettier-eslint
  :ensure t
  :diminish ""
  :init (progn
    (add-hook 'js2-mode-hook (lambda () (add-hook 'after-save-hook 'prettier-eslint nil t)))
    (add-hook 'web-mode-hook (lambda () (add-hook 'after-save-hook 'prettier-eslint nil t)))
  )
)
