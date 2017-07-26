(use-package evil-magit
  :ensure t
  :diminish ""
  :config (progn
    (setq magit-commit-show-diff nil)
    (setq magit-refresh-status-buffer nil)

    (remove-hook 'server-switch-hook 'magit-commit-diff)
  )
)
