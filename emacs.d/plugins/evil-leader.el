(use-package evil-leader
  :ensure t
  :diminish "😈"
  :after zoom-window
  :init (progn
    (global-evil-leader-mode)
    (evil-leader/set-leader ",")
  )
  :config (progn
		(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
		(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
		(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
		(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

    ; helm
    (evil-leader/set-key "b" 'helm-projectile-switch-to-buffer)

    ; helm-projectile
    (evil-leader/set-key "t" 'helm-projectile-find-file)
    (evil-leader/set-key "ag" 'helm-projectile-ag)
    (evil-leader/set-key "rg" 'helm-projectile-rg)

    ; windows
    (evil-leader/set-key "hs" (lambda () (interactive) (split-window-vertically) (balance-windows)))
    (evil-leader/set-key "vs" (lambda () (interactive) (split-window-horizontally) (balance-windows)))

    ;magit
    (evil-leader/set-key "gs" 'magit-status)

    ; comment
    (evil-leader/set-key "cc" 'comment-line)

    (evil-leader/set-key "z" 'zoom-window-zoom)
  )
)
