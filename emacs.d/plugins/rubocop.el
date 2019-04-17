(use-package rubocopfmt
  :ensure t
  :diminish "✨"
  :init (progn
    (add-hook 'ruby-mode-hook #'rubocopfmt-mode)
  )
)
