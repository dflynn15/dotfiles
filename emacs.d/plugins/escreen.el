(use-package escreen
  :ensure t
  :demand t
  :config (progn
    (setq escreen-prefix-char (kbd "C-SPC s"))
    (global-set-key escreen-prefix-char 'escreen-prefix)
    (global-set-key (kbd "C-SPC l") 'escreen-menu)
    ; Start with escreen on init
    (call-interactively 'escreen-create-screen)
  )
)
