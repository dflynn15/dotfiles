(use-package magit
  :ensure t
  :defer 1
  :config (progn
    (put 'magit-clean 'disabled nil)
    (add-hook 'magit-status-sections-hook 'magit-insert-worktrees)
    (setq magit-commit-show-diff nil)
  )
)
