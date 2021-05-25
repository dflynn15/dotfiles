;; (evil-define-key 'normal evil-quit (kbd ":q")
;; (setq evil-quit (lambda () (interactive) (evil-quit) (balance-windows)))
(use-package evil
  :ensure t
  :diminish ""
  :init
    (setq evil-want-keybinding nil)
  :config (progn
    (evil-mode 1)
		(define-key evil-normal-state-map (kbd "RET") 'save-buffer)
  )
)
