(use-package js2-mode
  :ensure t
  :diminish ""
  :bind ("C-c s" . js2-mode-show-element)
  :init (progn
    (add-to-list 'auto-mode-alist '("\\.js?\\'" . js2-mode))
    (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
    (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
  )
  :config (progn
    (setq js2-bounce-indent-p t)
    (setq js2-basic-offset 2)
    (setq js2-highlight-level 3)
    (setq js2-bounce-indent-p t)
  )
)
