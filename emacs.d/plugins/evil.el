;; (evil-define-key 'normal evil-quit (kbd ":q")
;; (setq evil-quit (lambda () (interactive) (evil-quit) (balance-windows)))
(use-package evil
  :ensure t
  :diminish ""
  :config (progn
    (evil-mode 1)
  )
)
