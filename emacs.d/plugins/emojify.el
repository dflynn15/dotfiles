(use-package emojify
  :ensure t
  :init
    (progn
      (add-hook 'after-init-hook #'global-emojify-mode)
    )
)
