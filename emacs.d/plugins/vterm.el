(use-package vterm
  :load-path "~/Projects/emacs-libvterm"
  :defer 1
  :config (progn
    (setq vterm-shell "/bin/zsh")
    (global-set-key (kbd "C-SPC v n") 'vterm)
  )
  :ensure nil)
