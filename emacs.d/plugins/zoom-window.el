(use-package zoom-window 
  :ensure t
  :init (progn
    (global-set-key (kbd "C-SPC z") 'zoom-window-zoom)
    (evil-leader/set-key "z" 'zoom-window-zoom)
    (custom-set-variables
      '(zoom-window-mode-line-color "base16-atelier-seaside-light"))
  )
)
