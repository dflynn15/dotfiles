(use-package helm-ag
  :ensure t
  :diminish ""
  :config(progn
    (setq helm-ag-base-command "rg --vimgrep --no-heading --smart-case")
  )
)
