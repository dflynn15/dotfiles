(use-package multi-vterm
  :ensure t
  :after vterm
  :config
    (global-set-key (kbd "C-SPC v n") 'multi-vterm)
    (global-set-key (kbd "C-SPC v p") 'multi-vterm-projectile)
)
