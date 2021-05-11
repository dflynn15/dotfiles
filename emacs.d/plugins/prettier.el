(use-package prettier-js
  :ensure t
  :init (progn
    (add-hook 'js-mode-hook 'prettier-js-mode)
  )
)
