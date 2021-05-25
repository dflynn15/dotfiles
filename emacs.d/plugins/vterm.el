(use-package vterm
  :ensure t
  :config (progn
    (setq vterm-shell "/bin/zsh")
    (global-set-key (kbd "C-SPC v n") 'vterm)
  )
)
