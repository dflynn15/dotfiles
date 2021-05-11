(use-package add-node-modules-path
  :ensure t
  :config (progn
    (add-hook 'js-mode-hook #'add-node-modules-path)
  )
)
