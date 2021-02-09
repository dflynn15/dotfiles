(use-package evil-magit
  :defer 1
  :after (:all magit evil)
  :ensure t
  :config (progn
    (setq magit-commit-show-diff nil)
    (setq magit-refresh-status-buffer nil)

    (remove-hook 'server-switch-hook 'magit-commit-diff)
  )
)
