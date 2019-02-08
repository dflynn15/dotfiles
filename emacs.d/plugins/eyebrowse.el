(use-package eyebrowse
  :ensure t
  :config (progn
    (eyebrowse-mode t)
    (setq eyebrowse-mode-line-style nil)
    (setq eyebrowse-keymap-prefix (kbd "C-SPC s"))
    (global-set-key (kbd "C-SPC s n") 'eyebrowse-next-window-config)
    (global-set-key (kbd "C-SPC s p") 'eyebrowse-last-window-config)
    (global-set-key (kbd "C-SPC s k") 'eyebrowse-close-window-config)
  )
)
