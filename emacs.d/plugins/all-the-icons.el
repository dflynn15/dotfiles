(use-package all-the-icons
  :ensure t
  :diminish ""
  :init (progn
    (setq inhibit-compacting-font-caches t)
  )
)

(use-package all-the-icons-dired-mode 
  :ensure t
  :diminish ""
  :init (progn
    (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
  )
)
