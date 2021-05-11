(use-package magit
  :ensure t
  :defer 1
  :config (progn
    (setq auto-revert-buffer-list-filter nil)
    (put 'magit-clean 'disabled nil)
    (add-hook 'magit-status-sections-hook 'magit-insert-worktrees)
    (remove-hook 'server-switch-hook 'magit-commit-diff)
    (setq magit-commit-show-diff nil)
    (setq magit-log-section-commit-count 0)
    (setq magit-refresh-status-buffer nil)
  )
)

