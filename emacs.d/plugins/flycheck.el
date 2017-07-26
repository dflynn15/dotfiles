(use-package flycheck
  :ensure t
  :diminish ""
  :init (progn
    (global-flycheck-mode)
  )
  :config (progn
    (setq-default flycheck-disabled-checkers (list 'javascript-jshint 'emacs-lisp-checkdoc 'emacs-lisp ))
  )
)
