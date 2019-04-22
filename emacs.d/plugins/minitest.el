(use-package minitest
  :ensure t
  :diminish ""
  :init (progn
    (add-hook 'ruby-mode-hook #'minitest-mode)
  )
)
