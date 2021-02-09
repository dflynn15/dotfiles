(use-package magit
  :ensure t
  :defer 1
  :config (progn
    (setq auto-revert-buffer-list-filter nil)
    (put 'magit-clean 'disabled nil)
    (add-hook 'magit-status-sections-hook 'magit-insert-worktrees)
    (setq magit-commit-show-diff nil)
    (setq magit-log-section-commit-count 0)
  )
)

