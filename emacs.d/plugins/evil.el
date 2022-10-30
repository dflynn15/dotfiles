(use-package evil
  :ensure t
  :after zoom-window
  :init
    (setq evil-want-keybinding nil)
  :config (progn
    (evil-mode 1)

    (define-key evil-normal-state-map (kbd "RET") 'save-buffer)

    (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
    (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
    (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
    (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

    ;;
    (define-key evil-normal-state-map (kbd ", b") 'consult-project-buffer)

    ; file searching
    (define-key evil-normal-state-map (kbd ", t") 'projectile-find-file)
    (define-key evil-normal-state-map (kbd ", r") 'projectile-replace)
    (define-key evil-normal-state-map (kbd ", s") 'find-file)
    (define-key evil-normal-state-map (kbd ", ag") 'consult-ripgrep)

    ; windows
    (define-key evil-normal-state-map (kbd ", hs") (lambda () (interactive) (split-window-vertically) (balance-windows)))
    (define-key evil-normal-state-map (kbd ", vs") (lambda () (interactive) (split-window-horizontally) (balance-windows)))

    ;magit
    (define-key evil-normal-state-map (kbd ", gs") 'magit-status)

    ; comment
    (define-key evil-normal-state-map (kbd ", cc") 'comment-line)

    (define-key evil-normal-state-map (kbd ", z") 'zoom-window-zoom)
  )
)

(use-package evil-collection
  :after evil
  :ensure t
  :custom (evil-collection-setup-minibuffer t)
  :config
  (evil-collection-init))
