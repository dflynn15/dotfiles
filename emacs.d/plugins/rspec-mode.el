(use-package rspec-mode
  :ensure t
  :diminish ""
  :init (progn
    (add-hook 'after-init-hook 'inf-ruby-switch-setup)
    (defadvice rspec-compile (around rspec-compile-around)
      "Use ZSH shell for running the specs because of ZSH issues."
      (let ((shell-file-name "/bin/zsh"))
        ad-do-it))
    (ad-activate 'rspec-compile)
  )
)
