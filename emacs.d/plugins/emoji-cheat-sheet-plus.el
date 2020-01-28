(use-package emoji-cheat-sheet-plus
  :ensure t
  :init
    (progn
      ;; enabled emoji in buffer
      (add-hook 'org-mode-hook 'emoji-cheat-sheet-plus-display-mode)
      ;; insert emoji with helm
      (global-set-key (kbd "C-SPC e") 'emoji-cheat-sheet-plus-insert)
    )
)
