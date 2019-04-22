(use-package ruby-end
  :ensure t
  :diminish ""
  :init (progn
    (add-hook 'ruby-mode-hook #'ruby-end-mode)
  )
)
