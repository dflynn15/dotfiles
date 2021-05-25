(use-package yafolding
  :ensure t
  :init (progn
    (global-set-key (kbd "C-SPC f f") 'yafolding-toggle-element)
    (global-set-key (kbd "C-SPC f a") 'yafolding-toggle-all)
    (lambda () (yafolding-mode))
  )
)
