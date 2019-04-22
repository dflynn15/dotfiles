(use-package ruby-electric
  :ensure t
  :diminish ""
  :init (progn
    (add-hook 'ruby-mode-hook #'ruby-electric-mode)
  )
)
