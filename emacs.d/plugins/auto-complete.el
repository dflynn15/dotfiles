(use-package auto-complete
  :ensure t
  :diminish ""
  :config (progn
    (ac-config-default)
    ;this prevents the stupid behavior in scss where &:before {___ autocompletes
    ;lang!
    (defconst ac-css-pseudo-classes nil)
  )
)
