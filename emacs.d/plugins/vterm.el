(use-package vterm
  :load-path "~/Projects/emacs-libvterm"
  :defer 1
  :config (progn
    (global-set-key (kbd "C-SPC v n") 'vterm)
  )
  :ensure nil)
