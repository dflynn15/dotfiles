(use-package key-chord
  :defer 3
  :ensure t
  :config (progn
    (key-chord-mode 1)
    (setq key-chord-two-keys-delay 0.1)
    (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  )
)
