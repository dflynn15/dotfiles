(use-package key-chord
  :ensure t
  :diminish ""
  :init (progn
    (setq key-chord-two-keys-delay 0.2)
  )
  :config (progn
    (key-chord-mode 1)
    (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  )
)
