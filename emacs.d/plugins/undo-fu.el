(use-package undo-fu
  :ensure t
  :after evil
  :config (progn
    (define-key evil-normal-state-map "u" 'undo-fu-only-undo)
    (define-key evil-normal-state-map "\C-r" 'undo-fu-only-redo)
  )
)
