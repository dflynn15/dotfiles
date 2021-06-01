(use-package evil-org
  :ensure t
  :after org
  :hook (org-mode . (lambda () evil-org-mode))
  :config 
    (require 'evil-org-agenda)
    (evil-org-agenda-set-keys)
)
