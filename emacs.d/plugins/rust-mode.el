(use-package rust-mode
  :ensure t
  :diminish "📦"
  :init (progn
    (setq rust-format-on-save t)
    (add-hook 'rust-mode-hook
      (lambda () (setq indent-tabs-mode nil))
    )
    (setq company-tooltip-align-annotations t)
  )
)
