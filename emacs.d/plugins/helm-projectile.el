(use-package helm-projectile
  :ensure t
  :diminish ":package:"
  :bind ("C-SPC p" . helm-projectile-switch-project)
  :init (progn
    (helm-projectile-on)
  )
)
