(use-package counsel
  :ensure t
  :init
    (ivy-mode 1)
  :config
    (setq ivy-use-virtual-buffers t)
    (setq ivy-count-format "(%d/%d) ")
    (define-key counsel-find-file-map (kbd "C-l") 'counsel-up-directory)
)
