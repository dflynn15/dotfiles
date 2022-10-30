(use-package prettier-js
  :ensure t
  :init (progn
    (add-hook 'web-mode-hook 'prettier-js-mode)
  )
)
