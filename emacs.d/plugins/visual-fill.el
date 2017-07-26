(use-package visual-fill-column
  :ensure t
  :config (progn
    (add-hook 'visual-line-mode-hook 'visual-fill-column-mode)
    (setq-default visual-fill-column-width 160)
  )
)
