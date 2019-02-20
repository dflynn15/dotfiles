(use-package eyebrowse
  :ensure t
  :config (progn
    (eyebrowse-mode t)
    (setq eyebrowse-wrap-around t)
    (setq eyebrowse-new-workspace t)
    (setq eyebrowse-mode-line-style nil)
    (setq eyebrowse-keymap-prefix (kbd "C-SPC s"))
    (global-set-key (kbd "C-SPC s c") 'eyebrowse-create-window-config)
    (global-set-key (kbd "C-SPC s n") 'eyebrowse-next-window-config)
    (global-set-key (kbd "C-SPC s p") 'eyebrowse-last-window-config)
    (global-set-key (kbd "C-SPC s k") 'eyebrowse-close-window-config)
    (global-set-key (kbd "C-SPC s j") 'eyebrowse-switch-to-window-config)
  )
)
