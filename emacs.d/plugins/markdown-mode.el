(use-package markdown-mode
  :ensure t
  :mode (
    ("\\.md\\'" . markdown-mode)
  )
  :config (progn
    ;toggle on visual line mode for writing
    (add-hook 'markdown-mode-hook 'visual-line-mode)
    ;toggle on spell-check for writing
    (add-hook 'markdown-mode-hook '(lambda () (flyspell-mode 1)))
  )
)
