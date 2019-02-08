(use-package exec-path-from-shell
  :ensure t
  :config (progn
    (when (memq window-system '(mac ns))
      (exec-path-from-shell-initialize))
  )
)
