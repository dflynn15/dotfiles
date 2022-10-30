(use-package projectile
  :ensure t
  :init
    (projectile-mode +1)
  :config
    (setq projectile-completion-system 'default)
    (setq projectile-enable-caching t)
)
