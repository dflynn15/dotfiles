(use-package evil-collection
  :defer 1
  :after (:all magit evil evil-leader)
  :ensure t
  :init (progn
    (evil-collection-init)
  )
)
