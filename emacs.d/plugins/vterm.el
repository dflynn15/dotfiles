(use-package vterm
  :load-path "~/github/emacs-libvterm"
  :defer 1
  :config (progn
    (global-set-key (kbd "C-SPC v n") 'vterm)
  )
  :ensure nil)
