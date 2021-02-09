(use-package js2-mode
  :ensure t
  :diminish ""
  :init (progn
    (add-hook 'js-mode-hook 'js2-minor-mode)
  )
)
