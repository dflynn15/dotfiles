(use-package emmet-mode
  :ensure t
  :diminish (emmet-mode . " e")
  :init (progn
    (setq emmet-move-cursor-between-quotes t) ;; default nil
    (add-hook 'web-mode-hook 'emmet-mode)
  )
)
