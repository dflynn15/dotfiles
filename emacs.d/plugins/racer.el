(use-package racer
  :ensure t
  :diminish "🏎"
  :config (progn
    (add-hook 'rust-mode-hook 'racer-mode)
    (add-hook 'racer-mode-hook 'company-mode)
  )
)
