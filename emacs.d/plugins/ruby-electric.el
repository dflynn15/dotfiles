(use-package ruby-electric
  :ensure t
  :init (progn
    (add-hook 'ruby-mode-hook #'ruby-electric-mode)
  )
)
