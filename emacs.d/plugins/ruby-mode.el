(use-package ruby-mode
  :ensure t
  :diminish "💎"
  :init (progn
    (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  )
)
